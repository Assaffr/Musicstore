var app = angular.module('musicstore', ['Albums', 'Genres', 'ngRoute']);

 app.config(['$routeProvider',
        function($routeProvider) {
            $routeProvider.
                when('/category/:genre', {
                   templateUrl: 'templates/_category.html',
				   controller: 'genrePage'
                })
				
				.when('/product/:album', {
                   templateUrl: 'templates/_product.html',
				   controller: 'albumPage'
                })
              
                .when('/', {
                   templateUrl: 'templates/_index.html',
				   controller: 'MainController'
                })
			
				.otherwise({
					redirectTo : '/'
				})
        }]);


app.controller( 'MainController', function( $scope, AlbumsService, GenresService ) {

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

app.controller( 'genreList', function( $scope, GenresService) {
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

app.controller( 'genrePage', function( $scope, GenresService, $routeParams ) {
	$scope.genre = $routeParams.genre;
	$scope.current_genre = $routeParams.genre;
	
	
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

app.controller( 'albumPage', function( $scope, AlbumsService, $routeParams ) {
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
			});
	};
	
	
	$scope.getByID();
	$scope.getImages();
	
});