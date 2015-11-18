app.controller( 'genrePage', function( $scope, GenresService, $routeParams ) {
	$scope.current_genre = $routeParams.genre;
	
	
	$scope.getGenreIDFromName = function() {
		GenresService.turnNameToID($scope.current_genre)
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