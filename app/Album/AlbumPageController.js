app.controller( 'albumPage', function( $scope, AlbumsService, $routeParams ) {
	$scope.album = $routeParams.album;
	
	/**
	*	getByID
	*
	*	Gets album details based on an id of the album.
	*
	*	@param (number) ($scope.album) - the id of the album we're in - from routeparams.
	*	@return (type) (name) - none
	*/
	$scope.getByID = function() {
		AlbumsService.getByID($scope.album)
			.success( function( albums ) {
				$scope.albums = albums[0];
			});
		};
		
	/**
	*	getImages
	*
	*	Gets all the images of an album.
	*
	*	param (number) ($scope.album) - the id of the album we're in - from routeparams.
	*	@return (type) (name) - none
	*/
	$scope.getImages = function() {
		AlbumsService.getImages($scope.album)
			.success( function( images ) {
				$scope.images = images;
				$scope.image = images[0];
			});
	};
	
	
	$scope.getByID();
	$scope.getImages();
	
	
	/**
	*	changeImage
	*
	*	changes the big picture in an album page
	*
	*	@param (number) (the index of the number of the pic, in the array of images) 
	*	@return (type) (name)
	*/
	$scope.changeImage = function(image) {
		$scope.image = $scope.images[image];
	};
	
	
});