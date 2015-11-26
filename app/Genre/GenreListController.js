app.controller( 'genreList', function( $scope, GenresService, $routeParams) {
	$scope.getGenreList = function() {
		GenresService.getList()
			.success( function( genres ) {
				$scope.genres = genres;
			});
		};

	$scope.getGenreList();
	

	$scope.checkIfCurrentGenre = function(genre){
		if (genre == $routeParams.genre)
			return true
	}

	
});