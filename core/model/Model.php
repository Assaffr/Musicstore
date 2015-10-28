<?php
require_once dirname(__FILE__) . '/../lib/DB.Class.php';
class Model {
	protected $_database;
	public function __construct(){
		$this->_database = DB::getResource();
	}
	
}