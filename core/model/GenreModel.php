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
					SELECT albums.album_id, albums.album_name FROM albums INNER JOIN genres_to_albums ON genres_to_albums.album_id = albums.album_id WHERE genres_to_albums.genre_id = ". $id ."
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$albums )
			return null;
		return $albums;
	}		
	

}