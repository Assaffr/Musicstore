<?php

//IDK WHERE THIS FOLDER NEEDS TO GO SO IT'S GONNA BE HERE FOR NOW....???

//get a list of all genres including subgenres
//NOTE- i'm not exactly sure how to organize these results, ask assaf!!!
$app->get('/genre', function() use ($app, $genre){
	$genres = $genre->getAllGenres();
	
	echo json_encode( $genres );
});

//get all albums by genre
$app->get('/genre/:id', function( $id ) use ($genre){
	$albums = $genre->getAlbumByGenre( $id );
	
	echo json_encode( $albums );
});