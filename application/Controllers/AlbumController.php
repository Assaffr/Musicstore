<?php
require_once dirname( __FILE__ ) . '/../../core/Model/AlbumModel.php';
require_once dirname( __FILE__ ) . '/../../core/Controller/Controller.php';

class AlbumController extends Controller {
	public $model;

	public function __construct() {
		$this->model = new AlbumModel();
    }
	
	//GOES TO ALBUMMODEL FUNCTIONS, CHECKS RESULT AND RETURNS RESULT/ERROR/SUCCESS MSG
	//validation goes here ---- no-  with validation controller

	public function insertNewAlbum( $info ) {
		
		$success = $this->model->insertNewAlbum($info);
		return $success;
	}
	
	public function getAllAlbums() {
		$albums = $this->model->getAllAlbums();
		
		if ( !$albums )
			return null;
		
		return $albums;
	}
	
	public function getLatest18Albums() {
		$albums = $this->model->getLatest18Albums();
		
		if ( !$albums )
			return null;
		
		return $albums;
	}
	
	public function getAlbumByID( $id ) {
		$albums = $this->model->getAlbumByID( $id );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}

	public function searchAlbum( $data ) {
		$albums = $this->model->searchAlbum( $data );
		
		if ( !$albums )
			return null;
		
		return $albums;
	}	
	
	public function deleteAlbum( $id ) {
		$success = $this->model->deleteAlbum($id);
		return $success;
	}
	
	public function searchAlbums(  ) {
		
	}
}