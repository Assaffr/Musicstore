<?php
require '/../application/REST/Slim/Slim.php';
\Slim\Slim::registerAutoloader();
$app = new \Slim\Slim();

require '/../application/controllers/AlbumController.php';
require '/../application/controllers/UserController.php';
require '/../application/controllers/ArtistController.php';
require '/../application/controllers/GenreController.php';
$album = new AlbumController();
$artist = new ArtistController();
$genre = new GenreController();
$user = new UserController();

//GOES TO PATH TO DO SOMETHING, RETURN RESULT

require_once '/../routes/album.php';
require_once '/../routes/artist.php';
require_once '/../routes/genre.php';
require_once '/../routes/user.php';


$app->run();