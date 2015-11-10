var app = angular.module('musicstore', ['Albums', 'Genres', 'ngRoute']);

 // app.config(['$routeProvider',
        // function($routeProvider) {
            // $routeProvider.
                // when('/genre/:genre', {
                   // templateUrl: '',
				   // controller: ''
                // })
              

        // }]);


app.controller( 'MainController', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	// $scope.genre = $routeParams.genre;


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
	

});

app.controller( 'genrePage', function( $scope, $http, AlbumsService, GenresService, $routeParams ) {
	$scope.genre = $routeParams.genre;

	$scope.getAlbumsByGenre = function() {
		GenresService.getAlbumsByGenre($scope.selected_genre.genre_id)
			.success( function( genres ) {
				$scope.genresalbums = genres;
			});
		};
	
	console.log($scope.genresalbums);
	$scope.getAlbumsByGenre();
	
	
});