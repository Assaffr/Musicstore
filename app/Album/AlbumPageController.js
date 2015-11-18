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
				$scope.main_image_path = images[0].image_path;
				$scope.main_image_name = $scope.main_image_path.split("\\")[3];
				$scope.main_image = "/../Musicstore/CoverArt/" + $scope.main_image_name;
			});
	};
	
	
	$scope.getByID();
	$scope.getImages();
	
});