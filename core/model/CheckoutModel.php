<?php
require_once 'Model.php';
class CheckoutModel extends Model {
	protected $_database;
	public function __construct(){
		parent::__construct();
	}
	
	public function finishCheckout( $data ) {
		$query = "INSERT INTO `musicstore`.`orders` 
		(`order_id`, `user_id`, `order_created`, `order_shipping_address`, `order_shipping_city`, `order_shipping_zipcode`, 
		`order_shipping_phone`, `order_payment_method`, `order_total`) 
		VALUES (NULL, '".$_SESSION['user_id']."', NOW(), '".$data['address']."', '".$data['city']."',
		'".$data['zipcode']."', '".$data['phone']."', '".$data['pay_method']."', '".$data['total']."');";
		
		
		$results = $this->_database->query($query);
		return $results;
	}
	

}