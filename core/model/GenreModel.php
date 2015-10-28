<?php
require_once 'Model.php';
class GenreModel extends Model {
	protected $_database;
	public function __construct(){
		parent::__construct();
	}
	
	//DOES QUERY, RETURNS RESULT OR NULL
	
	public function getAllGenres() {
		$result = $this->_database->query("
					SELECT * FROM `genres`
				");
		$genres = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$genres[] = $row;
		
		if ( !$result )
			return null;
		return $genres;
	}
	
	public function getAlbumByGenre( $id ) {
		$result = $this->_database->query("
					
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$albums )
			return null;
		return $albums;
	}		
	

}