<?php
	class DB{
		public static $mysqli = NULL;
		
		private function __construct(){}
		private function __clone(){}
		
		public static function getResource(){
			if (self::$mysqli == NULL){
				$mysqli = new mysqli('localhost', 'root', '');
				$mysqli->select_db("musicstore");
				return $mysqli;
			}
		}
}