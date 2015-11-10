<?php

//IDK WHERE THIS FOLDER NEEDS TO GO SO IT'S GONNA BE HERE FOR NOW....???
//get all albums
$app->get('/album', function() use ($app, $album){
	$albums = $album->getAllAlbums();
	
	echo json_encode( $albums );
});

$app->get('/album/latest', function() use ($app, $album){
	$albums = $album->getLatest18Albums();
	
	echo json_encode( $albums );
});

//get specific album
$app->get('/album/:id', function( $id ) use ($album){
	$album = $album->getAlbumByID( $id );
	
	echo json_encode( $album );
});

$app->get('/album/images/:id', function( $id ) use ($album){
	$album = $album->getAlbumImages( $id );
	
	echo json_encode( $album );
});

//search album
$app->get('/search/:data', function( $data ) use ($album){
	$album = $album->searchAlbum( $data );
	
	var_dump($album);
});

//delete album
$app->delete('/album/:id', function( $id ) use ($album){
	$album = $album->deleteAlbum( $id );
	
	echo $album;
});

// insert new album
//this is all behind the scenes so......just enter info here i guess?? then use postman lol
$app->post('/album', function() use ($app, $album){
	$info = '{
		"album_name":"",
		"album_artist":"",
		"album_duration":"DURATION",
		"album_release_year":"RELEASEYEAR",
		"album_description":"DESC",
		"album_long_description":"LONGDESC",
		"album_price":"1"
		}';
	
	$success = $album->insertNewAlbum( json_decode ($info, true) );
	
	if ($success)
		echo "Inserted";
	else
		echo "Not inserted";
});
