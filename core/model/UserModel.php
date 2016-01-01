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
		
		$results = $this->_database->query($query);
		return $results;
	}
	
	public function checkEmail( $email ) {
	$query = "
		SELECT * FROM users WHERE user_email = '$email'
		";		
	$results = $this->_database->query($query);
	
	return $results->num_rows;
	}
	
	public function matchLogin( $details ) {
	$query = "
		SELECT user_id, user_firstname, user_lastname FROM users WHERE user_email = '".$details['user_email']."' AND `user_password` = '" . md5( $details['user_password'] ) . "'
		";		
		
	$resultSet = $this->_database->query($query);
	$result = array();
	while ($row = mysqli_fetch_assoc ($resultSet))
		$result[] = $row;

	return $result;
	}
	
	

}