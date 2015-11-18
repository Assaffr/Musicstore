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