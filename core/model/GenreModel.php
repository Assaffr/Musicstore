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
					SELECT albums.album_id, albums.album_name, albums.album_artist, albums.album_duration, albums.album_release_year, albums.album_description, albums.album_long_description, albums.album_created, albums.album_price, images_to_albums.image_id, images.image_path 
					FROM albums 
					LEFT JOIN images_to_albums 
					ON albums.album_id = images_to_albums.album_id 
					LEFT JOIN images 
					ON images_to_albums.image_id = images.image_id
					INNER JOIN genres_to_albums ON genres_to_albums.album_id = albums.album_id WHERE genres_to_albums.genre_id = ". $id ."
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$albums )
			return null;
		return $albums;
	}		
	

}