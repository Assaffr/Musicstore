<?php
require '/../application/REST/Slim/Slim.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();

require '/../application/controllers/AlbumController.php';
require '/../application/controllers/ArtistController.php';
require '/../application/controllers/GenreController.php';
$album = new AlbumController();
$artist = new ArtistController();
$genre = new GenreController();

//GOES TO PATH TO DO SOMETHING, RETURN RESULT

require_once '/../routes/album.php';
require_once '/../routes/artist.php';
require_once '/../routes/genre.php';


$app->run();