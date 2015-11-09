<?php

//IDK WHERE THIS FOLDER NEEDS TO GO SO IT'S GONNA BE HERE FOR NOW....???

//get a list of all genres including subgenres
//NOTE- i'm not exactly sure how to organize these results, ask assaf!!!
$app->get('/genre', function() use ($app, $genre){
	$genres = $genre->getGenresWithSubCount();
	
	echo json_encode( $genres );
});

//get all albums by genre
$app->get('/genre/:id', function( $id ) use ($genre){
	$albums = $genre->getAlbumByGenre( $id );
	
	echo json_encode( $albums );
});

//search genre
$app->get('/search/:data', function( $data ) use ($genre){
	$genre = $genre->searchgenre( $data );
	
	var_dump($genre);
});

//delete genre
$app->delete('/genre/:id', function( $id ) use ($genre){
	$genre = $genre->deletegenre( $id );
	
	echo $genre;
});

// insert new genre
//this is all behind the scenes so......just enter info here i guess?? then use postman lol
$app->post('/genre', function() use ($app, $genre){
	$info = '{
		"genre_name":"",
		"genre_genre":"",
		"genre_duration":"DURATION",
		"genre_release_year":"RELEASEYEAR",
		"genre_description":"DESC",
		"genre_long_description":"LONGDESC",
		"genre_price":"1"
		}';
	
	$success = $genre->insertNewgenre( json_decode ($info, true) );
	
	if ($success)
		echo "Inserted";
	else
		echo "Not inserted";
});
