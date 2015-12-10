<?php
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
	
}