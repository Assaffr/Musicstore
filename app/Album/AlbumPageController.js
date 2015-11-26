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
				$scope.image = images[0];
			});
	};
	
	
	$scope.getByID();
	$scope.getImages();
	
	$scope.changeImage = function(image) {
		$scope.image = $scope.images[image];
	};
	
	
});