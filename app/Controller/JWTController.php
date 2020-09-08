<?php

require __DIR__ .'/../../vendors/autoload.php';

use Firebase\JWT\JWT;


class JWTController{

    private $key = "example_key"; 

    public function generate($payload){

        
        $jwt = JWT::encode($payload, $this->key);

        return $jwt;
    }

    public function decode($token){

        
        $payload = JWT::decode($token, $this->key,  array('HS256'));

        return $payload;
    }
}