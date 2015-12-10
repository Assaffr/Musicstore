<?php

$app->post('/register', function() use ($app, $user){
	$data = json_decode( $app->request->getBody(), true );
	$register = $user->addUser($data);
	
	echo json_encode( $register );
});

