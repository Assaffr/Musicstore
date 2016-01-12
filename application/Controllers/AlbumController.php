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
	
	public function makeCartData($data ){
		foreach ($data as $id){
			$albumdata[] = $this->model->getAlbumByIDwithImage($id);
		}
		return $albumdata;
		
	}
	
	public function getAlbumByIDwithImage($id) {
		$albums = $this->model->getAlbumByIDwithImage($id);
		
		if ( !$albums )
			return null;
		
		return $albums;
}

	
	public function getLatestAlbums() {
		$albums = $this->model->getLatestAlbums();
		
		if ( !$albums )
			return null;
		
		return $albums;
	}
	
	public function getAlbumImages( $id ) {
		$albums = $this->model->getAlbumImages( $id );
		
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