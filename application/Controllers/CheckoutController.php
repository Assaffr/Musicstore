<?php
require_once dirname( __FILE__ ) . '/../../core/Model/CheckoutModel.php';
require_once dirname( __FILE__ ) . '/../../core/Controller/Controller.php';

class CheckoutController extends Controller {
	public $model;

	public function __construct() {
		$this->model = new CheckoutModel();
    }
	
	public function finishCheckout( $data ) {
		$cart = $this->model->addAlbumCartData($data["cart"]);
		$success = $this->model->finishCheckout( $data );
		return $success;
	}
	
	
}