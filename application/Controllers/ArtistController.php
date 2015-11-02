<?php
require_once dirname( __FILE__ ) . '/../../core/Model/ArtistModel.php';
require_once dirname( __FILE__ ) . '/../../core/Controller/Controller.php';

class ArtistController extends Controller {
	public $model;

	public function __construct() {
		$this->model = new ArtistModel();
    }
	
	//GOES TO ALBUMMODEL FUNCTIONS, CHECKS RESULT AND RETURNS RESULT/ERROR/SUCCESS MSG
	//validation goes here ---- no-  with validation controller


	public function getAllArtists() {
		$artists = $this->model->getAllArtists();
		
		if ( !$artists )
			return null;
		
		return $artists;
	}
	
	public function getAlbumsByArtist( $name ) {
		$albums = $this->model->getAlbumsByArtist( $name );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}

}