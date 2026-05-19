<?php

class conexaodb{

    private $host;
    private $database;
    private $user;
    private $password;
    private $charset;
    private $dns;
    
    public function __construct()
    {
        $this->host = "";
        $this->database = "";
        $this->user = "";
        $this->password = "";
        $this->charset = "";
        $this->dns = null;
    }

    public function conecta(){
        
        $this->host = "localhost";
        $this->database = "jogomanu";
        $this->user = "root";
        $this->password = "";
        $this->charset = "utf8mb4";
        
        $this->dns = new mysqli($this->host, $this->user, 
        $this->password, $this->database);
        $this->dns->set_charset("utf8mb4");
        return $this->dns;
    }
}