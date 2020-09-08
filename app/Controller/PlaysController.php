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
App::uses('UserController', 'Controller');


/**
 * Static content controller
 *
 * Override this controller by placing a copy in controllers directory of an application
 *
 * @package       app.Controller
 * @link https://book.cakephp.org/2.0/en/controllers/pages-controller.html
 */
class PlaysController extends AppController
{

/**
 * Displays a view
 *
 * @return CakeResponse|null
 * @throws ForbiddenException When a directory traversal attempt.
 * @throws NotFoundException When the view file could not be found
 *   or MissingViewException in debug mode.
 */

    public function index(){
        $this->layout = false;
        $response = [
            'success' => false
        ];
        $token  = $this->request->header('Authorization');
        if(!$token){
            $response['message'] = "Unauthorized access";

            return $this->output($response);
        }
        $userCtrl = new UserController();
        $user = $userCtrl->identify_by_token($token);
        if(!$user || !isset($user['id']) || empty($user['id'])){
            $response['message'] = "Unauthorized access";
            return $this->output($response);
        }
        $this->loadModel('Game');
        $games = $this->Game->find('all', array(
            'conditions' => ['Game.user_id' => $user['id']],
            'order' => ['(Game.created_at)' => 'DESC']
        ));
        $plays = $this->prepareData($games);
        $response = [
            "success" => true,
            "plays" => $plays,
            "user" => $user['id']
        ];
        return $this->output($response);
    }

    public function attempt()
    {
        $this->layout = false;
        $response = [
            'success' => false
        ];
        $token  = $this->request->header('Authorization');
        if(!$token){
            $response['message'] = "Unauthorized access";
            return $this->output($response);
        }
        $userCtrl = new UserController();
        $user = $userCtrl->identify_by_token($token);
        if(!$user || !isset($user['id']) || empty($user['id'])){
            $response['message'] = "Unauthorized access";

            return $this->output($response);
        }
        $this->loadModel('Game');
      

        
        $data = $this->request->input('json_decode');
        $logs = isset($data->logs) && !empty($data->logs)?$data->logs:[];
        $result = isset($data->result) && !empty($data->result)?$data->result:'No Result';
        $this->loadModel('Game');
     

        $this->Game->set(array(
            'logs' => serialize($logs),
            'result' => $result,
            'user_id' => $user['id'],
            'created_at' => date('Y-m-d H:i:s')
        ));
        $this->Game->save();
        $games = $this->Game->find('all', array(
            'conditions' => ['Game.user_id' => $user['id']],
            'order' => ['(Game.created_at)' => 'DESC']
        ));
        $plays = $this->prepareData($games);
        $response = [
            "success" => true,
            "plays" => $plays
        ];
        return $this->output($response);
    }

    private function prepareData($games){
        $result = [];
        foreach($games as $index => $game){
            $row = (object)$game['Game'];
            $result[$index] = [];
            $result[$index]['logs'] = unserialize($row->logs);
            $result[$index]['result'] = $row->result;
            $result[$index]['created_at'] = $row->created_at;
        }
        return $result;
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
