<?php

//IDK WHERE THIS FOLDER NEEDS TO GO SO IT'S GONNA BE HERE FOR NOW....???

//get list of all artists
$app->get('/artist', function() use ($app, $artist){
	$artists = $artist->getAllArtists();
	
	echo json_encode( $artists );
});

//get all albums by artist
$app->get('/artist/:name', function( $name ) use ($artist){
	$artist = $artist->getAlbumsByArtist( $name );
	
	echo json_encode( $artist );
});
