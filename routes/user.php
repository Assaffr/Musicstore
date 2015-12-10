<?php

$app->post('/register', function() use ($app, $user){
	$data = json_decode( $app->request->getBody(), true );
	$register = $user->addUser($data);
	
	echo json_encode( $register );
});

$app->get('/checkemail/:email', function($email) use ($user){
	$results = $user->checkEmail($email);
	
	echo $results;
});

$app->post('/matchlogin', function() use ($app, $user){
	$details = json_decode( $app->request->getBody(), true );
	$results = $user->matchLogin($details);
	$session = $user->buildSession($results);
	
	echo json_encode( $session );
});