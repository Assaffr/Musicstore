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
			$_SESSION['user_firstname'] = $results[0]['user_firstname'];
			$_SESSION['user_lastname'] = $results[0]['user_lastname'];
			return true;
		}
			

		return false;
	}	
	
	public function checkSession() {
		if ($_SESSION['login'] = true && isset($_SESSION['user_id'])){
			return Array("login" => "true", "user_id" => $_SESSION['user_id'], "user_firstname" => $_SESSION['user_firstname'], "user_lastname" => $_SESSION['user_lastname']);
		}

		return 0;
	}	
	
	public function logOut() {
		return session_destroy();
	}	
	
}