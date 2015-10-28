<?php
require_once 'Model.php';
class ArtistModel extends Model {
	protected $_database;
	public function __construct(){
		parent::__construct();
	}
	
	//DOES QUERY, RETURNS RESULT OR NULL
	
	public function getAllArtists() {
		$result = $this->_database->query("
					SELECT DISTINCT `album_artist` from albums;
				");
		$artists = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$artists[] = $row;
		
		if ( !$result )
			return null;
		return $artists;
	}
	
	public function getAlbumsByArtist( $name ) {
		$result = $this->_database->query("
					SELECT * FROM `albums` WHERE `album_artist` = '".$name."'
				");
		$albums = array();
		while ($row = mysqli_fetch_assoc ($result) )
			$albums[] = $row;
		
		if ( !$albums )
			return null;
		return $albums;
	}		
	

}