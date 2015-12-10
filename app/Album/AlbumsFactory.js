AlbumsModule.factory( 'AlbumsService', ['$http', function($http) {
	var AlbumsService = {};
	
	/**
	*	getAll
	*
	*	gets all albums
	*
	*	@param (type) (name)
	*	@return (promise) all the albums
	*/
	AlbumsService.getAll = function(){
		return  $http.get( "api/album" );
	}
	
	/**
	*	getByID
	*
	*	gets album by id
	*
	*	@param (number) (id) id
	*	@return (promise) the album
	*/
	AlbumsService.getByID = function( $id ){
		return  $http.get( "api/album/" + $id );
	}
	
	/**
	*	getByIDwithImage
	*
	*	gets album by id, including image
	*
	*	@param (number) (id) id
	*	@return (promise) the album
	*/
	AlbumsService.getByIDwithImage = function( $id ){
		return  $http.get( "api/album/withimage/" + $id );
	}
	
	/**
	*	getLatest
	*
	*	gets the latest albums - for index page
	*
	*	@param (type) (name)
	*	@return (promise) the albums
	*/
	AlbumsService.getLatest = function(){
		return  $http.get( "api/album/latest" );
	}
	
	/**
	*	getImages
	*
	*	gets all the images for an album
	*
	*	@param (number) (id) id
	*	@return (promise) the images
	*/
	AlbumsService.getImages = function( $id ){
		return  $http.get( "api/album/images/" + $id );
	}

	return AlbumsService;
	
	
	
}]);