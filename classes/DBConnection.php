<?php


class DB {

    private static ?PDO $instance = null;

    public function __construct() {}

    public static function instance(): PDO {
       if(self::$instance === null){

            $string = 'mysql:host=localhost;port=3307;dbname=mydb';
            
            self::$instance = new PDO(
            $string,
            "myuser",
            "mypassword",
            [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            ]
        );
       }
       return self::$instance;
    }
}