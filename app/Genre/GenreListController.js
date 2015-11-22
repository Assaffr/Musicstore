app.controller( 'genreList', function( $scope, GenresService, $routeParams) {
	$scope.getGenreList = function() {
		GenresService.getList()
			.success( function( genres ) {
				$scope.genres = genres;
			});
		};

	$scope.getGenreList();
	
	$scope.checkSubGenre = function(genre){
		if ($scope.genres[genre].childcount != 0){
			return true
		}
	}
	


	$scope.checkIfCurrentGenre = function(genre){
		if (genre == $routeParams.genre)
			return true
	}

	
});