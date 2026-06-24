<?php

if(!ABSPATH){
define('ABSPATH', realpath(__DIR__ . '/..'));
}
define('TMP_PATH', ABSPATH . '/tmp');

require_once ABSPATH . '/config/config.php';
require_once ABSPATH . '/classes/DBConnection.php';
require_once ABSPATH . '/repositories/UserRepository.php';
require_once ABSPATH . '/classes/WriteFiles.php';
require_once ABSPATH . '/classes/ZipFiles.php';

interface Command
{
    public function execute(array $args): int;
}

class CreatesUserZipCommand implements Command
{
    public function execute(array $args): int
    {
      
        try {

            $db = DB::instance();
            
            if($db) {
                echo "DB Connexion succcessful" . PHP_EOL;
            }
            

            $stmt = $db->query('SELECT 1');
            if((int)$stmt->fetchColumn() === 1){
                echo "DB is responding" . PHP_EOL;
            }


            // find users
            $userRepository = new UserRepository($db);
            $users = $userRepository->findAll();


            // create temp file report
            $ws = new WriteFileService(TMP_PATH, "report_", $users);
            $ws->generate();


            // from tmp repport file, create zipped version
            $zip = new ZipFileService(
                TMP_PATH, 
                $ws->name(), 
                $ws->extention(),
                $ws->filePath()
                );

            $zip->create();


            exit("Success !" . PHP_EOL);
   

        
        } catch(Throwable $e) {
            exit("Errors: " . $e->getMessage() . PHP_EOL);
        }

    }
}
