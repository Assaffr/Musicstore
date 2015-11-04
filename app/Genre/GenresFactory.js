GenresModule.factory( 'GenresService', ['$http', function($http) {
	var GenresService = {};
	
	
	GenresService.getList = function(){
		return  $http.get( "api/genre" );
	}

	GenresService.getAlbumsByGenre = function($id){
		return  $http.get( "api/genre/" + $id );
	}

	return GenresService;
	
	
	
}]);