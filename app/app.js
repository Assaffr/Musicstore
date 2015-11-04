var app = angular.module('musicstore', ['Albums', 'Genres', 'ngRoute']);

 app.config(['$routeProvider',
        function($routeProvider) {
            $routeProvider.
                when('/genre/:genre', {
                   templateUrl: 'app/genre/_genrepage.html',
				   controller: 'genrePage'
                })
				
				. when('/', {
                   templateUrl: 'app/album/_frontpage.html',
				   controller: 'MainController'
                })
              
			  	. when('index.html#', {
                   templateUrl: 'app/album/_frontpage.html',
				   controller: 'MainController'
                })
              

        }]);


app.controller( 'MainController', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	$scope.genre = $routeParams.genre;


	$scope.getAlbumsByGenre = function() {
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
	
	$scope.getGenreList = function() {
		GenresService.getList()
			.success( function( genres ) {
				$scope.genres = genres;
			});
		};

	$scope.getGenreList();

	
	$scope.pickGenre = function(genre){
		$scope.selected_genre = genre;
	}
	
});

app.controller( 'genrePage', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	$scope.genre = $routeParams.genre;


	$scope.getAlbumsByGenre = function() {
		GenresService.getAlbumsByGenre($scope.genre)
			.success( function( genres ) {
				$scope.genresalbums = genres;
			});
		};
	
	
	$scope.getAlbumsByGenre();
});