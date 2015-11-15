var app = angular.module('musicstore', ['Albums', 'Genres', 'ngRoute']);

 app.config(['$routeProvider',
        function($routeProvider) {
            $routeProvider.
                when('/category/:genre', {
                   templateUrl: 'templates/genrealbums.html',
				   controller: 'genrePage'
                })
				.
                when('/album/:album', {
                   templateUrl: 'templates/productalbums.html',
				   controller: 'albumPage'
                })
              
              

        }]);


app.controller( 'MainController', function( $scope, $http, AlbumsService, GenresService, $routeParams, $location ) {

	$scope.getAlbumsByGenre = function() {
		GenresService.getAlbumsByGenre($scope.genre)
			.success( function( genres ) {
				$scope.genresalbums = genres;
			});
		};
	
	$scope.getAlbumImages = function() {
		GenresService.getAlbumsByGenre($scope.genre)
			.success( function( genres ) {
				$scope.genresalbums = genres;
			});
		};
	
	$scope.getAlbums = function() {
		AlbumsService.getLatest()
			.success( function( albums ) {
				$scope.albums = albums;
			});
		};

	$scope.getAlbums();
	


});

app.controller( 'genrePage', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	$scope.genre = $routeParams.genre;
	$scope.current_genre = $routeParams.genre;
	
		$scope.getGenreList = function() {
		GenresService.getList()
			.success( function( genres ) {
				$scope.genres = genres;
			});
		};

	$scope.getGenreList();
	
	$scope.checkSubGenre = function(genre){
		if ($scope.genres[genre].childcount != 0)
			return true
	}
	
	$scope.pickGenre = function(genre){
		$scope.selected_genre = {
			genre_id : genre,
			genre_name : $scope.genres[genre]["genre_name"]
		};
	}
	
	
	$scope.getGenreIDFromName = function() {
		GenresService.turnNameToID($scope.genre)
			.success( function( genres ) {
				$scope.genreID = genres[0].genre_id;
				$scope.getAlbumsByGenre();
			});
		};
		

	$scope.getAlbumsByGenre = function() {
		GenresService.getAlbumsByGenre($scope.genreID)
			.success( function( genres ) {
				$scope.genresalbums = genres;
			});
		};
	
	$scope.getGenreIDFromName();
	
	
	
});

app.controller( 'albumPage', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	$scope.album = $routeParams.album;
	

	$scope.getByID = function() {
		AlbumsService.getByID($scope.album)
			.success( function( albums ) {
				$scope.albums = albums[0];
			});
		};
	
	$scope.getImages = function() {
	AlbumsService.getImages($scope.album)
		.success( function( images ) {
			$scope.images = images;
			$scope.main_image_path = images[0].image_path
			$scope.main_image_name = $scope.main_image_path.split("\\")[3];
			$scope.main_image = "/../Musicstore/CoverArt/" + $scope.main_image_name
			console.log($scope.main_image);
		});
	};
	
	
	$scope.getByID();
	$scope.getImages();
	
});