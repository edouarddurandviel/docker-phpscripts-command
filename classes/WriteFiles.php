<?php

class WriteFileService {

    private String $outputDir;
    private String $prefix;
    private array $users;

    public function __construct(String $outputDir, String $prefix, array $users) {
        $this->outputDir = $outputDir;
        $this->prefix = $prefix;
        $this->users = $users;
    }

    private function date() {
        return date("m.d.y");
    }

    public function extention() {
        return $this->name() . ".txt";
    }

    public function name() {
        return $this->prefix . $this->date();
    }

     public function filePath() {
        return $this->outputDir . "/" . $this->extention();
    }


    public function generate(){

        if(!is_dir($this->outputDir)){
            mkdir($this->outputDir, 0755, true);
        }

        $f = fopen($this->filePath(), 'w');
        foreach ($this->users as $user){
            fwrite($f, "Company: " . $user->id . " Email: " . $user->email . PHP_EOL);
        }
        fclose($f);
    }



}