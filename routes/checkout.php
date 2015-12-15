<?php

$app->post('/checkout', function() use ($app, $checkout){
	$data = json_decode( $app->request->getBody(), true );
	$tryCheckOut = $checkout->finishCheckout($data);
	
	echo json_encode( $tryCheckOut );
});
