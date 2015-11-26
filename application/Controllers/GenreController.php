<?php
require_once dirname( __FILE__ ) . '/../../core/Model/GenreModel.php';
require_once dirname( __FILE__ ) . '/../../core/Controller/Controller.php';

class GenreController extends Controller {
	public $model;

	public function __construct() {
		$this->model = new GenreModel();
    }
	
	//GOES TO ALBUMMODEL FUNCTIONS, CHECKS RESULT AND RETURNS RESULT/ERROR/SUCCESS MSG
	//validation goes here ---- no-  with validation controller


	public function getAllGenres() {
		$genres = $this->model->getAllGenres();
		
		if ( !$genres )
			return null;
		
		return $genres;
	}
	
	public function getAlbumByGenre( $id ) {
		$albums = $this->model->getAlbumByGenre( $id );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}

	public function getSubGenreByGenre( $id ) {
		$albums = $this->model->getSubGenreByGenre( $id );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}

	
	
	public function turnNameToID( $name ) {
		$albums = $this->model->turnNameToID( $name );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}
	
}