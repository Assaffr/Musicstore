<?php
require_once 'Model.php';
class AlbumModel extends Model {
	protected $_database;
	public function __construct(){
		parent::__construct();
	}
	
	//DOES QUERY, RETURNS RESULT OR NULL
	public function insertNewAlbum( $info ) {
		$query = "INSERT INTO `musicstore`.`albums` ( `album_name`, `album_artist`, `album_duration`, `album_release_year`, `album_description`, `album_long_description`, `album_created`, `album_price`) 
		VALUES ('".$info['album_name']."', '".$info['album_artist']."', '".$info['album_duration']."', '".$info['album_release_year']."', '".$info['album_description']."', '".$info['album_long_description']."', NOW(), '".$info['album_price']."');";
		
		
		$results = $this->_database->query($query);
		return $results;
	}
	

	public function getAllAlbums() {
		$result = $this->_database->query("
					SELECT * FROM albums;
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$result )
			return null;
		return $albums;
	}
	public function getAlbumByID( $id ) {
		$result = $this->_database->query("
					SELECT * FROM `albums` WHERE `album_id` = ". $id ."
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$result )
			return null;
		return $albums;
	}		
	
	
	public function deleteAlbum( $id ) {
		$results = $this->_database->query("
			DELETE FROM `musicstore`.`albums` WHERE `albums`.`album_id` = ". $id ."
			");
		return $results;	
	}
	
	public function searchAlbum( $data ) {
		$results = $this->_database->query( "(SELECT * FROM `albums` WHERE `album_name` LIKE '%".$data."%') UNION (SELECT * FROM `albums` WHERE `album_artist` LIKE '%".$data."%')" );
		
		if ( $results ) {
			$albums = array();
			while ( $row = $results->fetch_assoc() )
				$albums[] = $row;

			return $albums;
		}
		
		return NULL;
	}	
	

}