<?php
/**
 * Static content controller.
 *
 * This file will render views from views/pages/
 *
 * CakePHP(tm) : Rapid Development Framework (https://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (https://cakefoundation.org)
 * @link          https://cakephp.org CakePHP(tm) Project
 * @package       app.Controller
 * @since         CakePHP(tm) v 0.2.9
 * @license       https://opensource.org/licenses/mit-license.php MIT License
 */
App::uses('AppController', 'Controller');
App::uses('JWTController', 'Controller');
App::uses('SimplePasswordHasher', 'Controller/Component/Auth');


/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link https://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class LoginController extends AppController
{

/**
 * Displays a view
 *
 * @return CakeResponse|null
 * @throws ForbiddenException When a directory traversal attempt.
 * @throws NotFoundException When the view file could not be found
 *   or MissingViewException in debug mode.
 */
    public function attempt()
    {
        $this->layout = false;
        $response = [
        ];
        if (!$this->request->is('post')) {
            $response = [
                'success' => false,
            ];
            return $this->output($response);
        }
        $data = $this->request->input('json_decode');
        $username = isset($data->username) && !empty($data->username)?$data->username:NULL;
        $password = isset($data->password) && !empty($data->password)?$data->password:NULL;
       
        if(empty($username) || empty($password)){
            $response = [
                'success' => false,
                'message' => 'Username and Password are required'
            ];
            return $this->output($response);
        }

        $this->loadModel('User');
        $user = $this->User->findByEmail($username);

        if(empty($user)){
            $response = [
                'success' => false,
                'message' => $username. " is not registered with us."
            ];
            return $this->output($response);
        }
        $password_hasher = new SimplePasswordHasher();
        if(!$password_hasher->check($password, $user['User']['password'])){
            $response = [
                'success' => false,
                'message' => "Password does not match"
            ];
            return $this->output($response);
        }

        $response['user'] = $user['User']['password'];
        $response['success'] = true;
        $jwtCtrl = new JWTController;
        $payload = array(
            "name" => $user['User']['name'],
            "email" => $user['User']['email'],
        );
        $response['token'] = $jwtCtrl->generate($payload);
       
        return $this->output($response);
    }

    private function output($response, $statusCode = 200)
    {
        $this->set(array(
            'response' => $response,
            '_serialize' => array('response'),
        ));
        $this->response->type('application/json');
        $this->response->body(json_encode($response));
        return $this->response->send();
    }
}
