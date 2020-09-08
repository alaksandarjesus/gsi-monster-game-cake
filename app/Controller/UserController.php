<?php


App::uses('AppController', 'Controller');
App::uses('JWTController', 'Controller');

class UserController extends AppController{


    public function identify_by_token($token){
        $xplode_token = explode('Bearer ', $token);
        if(empty($xplode_token)|| !isset($xplode_token[1]) || empty($xplode_token[1])){
            return NULL;
        }
        $jwtCtrl = new JWTController();
        $decoded = NULL;
        try{
            $decoded = $jwtCtrl->decode($xplode_token[1]);
        }catch(Exception $e){

        }
        if(empty($decoded) || !isset($decoded->email)){
            return NULL;
        }
        $this->loadModel('User');
        $user = $this->User->findByEmail($decoded->email);
        return $user['User'];
    }


}