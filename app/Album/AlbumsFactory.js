AlbumsModule.factory( 'AlbumsService', ['$http', function($http) {
	var AlbumsService = {};
	
	
	AlbumsService.getAll = function(){
		return  $http.get( "api/album" );
	}
	
	AlbumsService.getByID = function( $id ){
		return  $http.get( "api/album/" + $id );
	}
	
	AlbumsService.getByIDwithImage = function( $id ){
		return  $http.get( "api/album/withimage/" + $id );
	}
	
	AlbumsService.getLatest = function(){
		return  $http.get( "api/album/latest" );
	}
	
	AlbumsService.getImages = function( $id ){
		return  $http.get( "api/album/images/" + $id );
	}

	return AlbumsService;
	
	
	
}]);