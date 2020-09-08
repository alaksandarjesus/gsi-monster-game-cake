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
class RegisterController extends AppController
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
                'message' => 'Invalid method',
            ];
            return $this->output($response);
        }

        $data = $this->request->input('json_decode');
        $name = isset($data->name) && !empty($data->name) ? $data->name : null;
        $email = isset($data->email) && !empty($data->email) ? $data->email : null;
        $password = isset($data->password) && !empty($data->password) ? $data->password : null;

        if (empty($name) || empty($email) || empty($password)) {
            $response = [
                'success' => false,
                'message' => 'Invalid inputs',
            ];
            return $this->output($response);
        }

        // $response['decoded'] = $jwtCtrl->decode($response['jwt']);
        $this->loadModel('User');
        $user_count = $this->User->find('count', array('conditions' => array('User.email' => $email)));
        if ($user_count) {
            $response = [
                'success' => false,
                'message' => 'Email Registered Already',
            ];
            return $this->output($response);
        }
        $password_hasher = new SimplePasswordHasher();
        $this->User->set(array(
            'email' => $email,
            'name' => $name,
            'password' => $password_hasher->hash($password),
        ));

        if ($this->User->save()) {
            $response['success'] = true;
            $jwtCtrl = new JWTController;
            $payload = array(
                "name" => $name,
                "email" => $email,
            );
            $response['token'] = $jwtCtrl->generate($payload);
        } else {
            $response = [
                'success' => false,
                'message' => 'Unable to store data',
            ];
        };
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
