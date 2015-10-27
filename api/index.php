<?php
require '/../application/REST/Slim/Slim.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();

require '/../application/controllers/AlbumController.php';
$album = new AlbumController();

//GOES TO PATH TO DO SOMETHING, RETURN RESULT

//get all albums
$app->get('/albums', function() use ($app, $album){
	$albums = $album->getAllAlbums();
	
	echo json_encode( $albums );
});

//get specific album
$app->get('/album/:id', function( $id ) use ($album){
	$album = $album->getAlbumByID( $id );
	
	echo json_encode( $album );
});

//delete album
$app->delete('/album/:id', function( $id ) use ($album){
	$album = $album->deleteAlbum( $id );
	
	echo $album;
});

// insert new album
$app->post('/albums', function() use ($app, $album){
	$info = '{
		"album_name":"ALBUMNAME",
		"album_artist":"ARTIST",
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

$app->run();