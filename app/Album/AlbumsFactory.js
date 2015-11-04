AlbumsModule.factory( 'AlbumsService', ['$http', function($http) {
	var AlbumsService = {};
	
	
	AlbumsService.getAll = function(){
		return  $http.get( "api/album" );
	}
	
	AlbumsService.getLatest = function(){
		return  $http.get( "api/album/latest" );
	}
	

	return AlbumsService;
	
	
	
}]);