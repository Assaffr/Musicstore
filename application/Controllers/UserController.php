<?php
session_start();
require_once dirname( __FILE__ ) . '/../../core/Model/UserModel.php';
require_once dirname( __FILE__ ) . '/../../core/Controller/Controller.php';

class UserController extends Controller {
	public $model;

	public function __construct() {
		$this->model = new UserModel();
    }
	
	public function addUser( $info ) {
		$register = $this->model->addUser( $info );
		
		if ( !$register )
			return null;
		
		return $register;
	}
	
	public function checkEmail( $email ) {
		$check = $this->model->checkEmail( $email );
	
	return $check;
	}
	
	public function matchLogin( $details ) {
		$check = $this->model->matchLogin( $details );
		
		if ( !$check )
			return false;
		
	return $check;
	}

	
	public function buildSession( $results ) {
		if ($results == false){
			$_SESSION['login'] = false;
			unset ($_SESSION['user_id']);
			return $results;
		}
		else{
			$_SESSION['login'] = true;
			$_SESSION['user_id'] = (int)$results[0]['user_id'];
			return true;
		}
			

		return false;
	}	
	
	public function checkSession() {
		if ($_SESSION['login'] = true && isset($_SESSION['user_id'])){
			return 1;
		}

		return 0;
	}	
	
	public function logOut() {
		return session_destroy();
	}	
	
}