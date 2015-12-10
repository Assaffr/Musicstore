<?php
require_once 'Model.php';
class UserModel extends Model {
	protected $_database;
	public function __construct(){
		parent::__construct();
	}
	
	public function addUser( $info ) {
		$query = "
			INSERT INTO `musicstore`.`users` 
			(`user_id`, `user_email`, `user_password`, `user_firstname`, `user_lastname`) 
			VALUES (NULL, '".$info['user_email']."', '". md5 ( $info['user_password'] ). "', '".$info['user_firstname']."', '".$info['user_lastname']."');
		";		
		var_dump($query);
		$results = $this->_database->query($query);
		return $results;
	}

}