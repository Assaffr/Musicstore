GenresModule.factory( 'GenresService', ['$http', function($http) {
	var GenresService = {};
	
	
	GenresService.getList = function(){
		return  $http.get( "api/genre" );
	}
	
	GenresService.getSubGenreList = function($id){
		return  $http.get( "api/subgenre/" + $id );
	}

	GenresService.turnNameToID = function($name){
		return  $http.get( "api/genre/turntoid/"  + $name );
	}
	
	GenresService.getAlbumsByGenre = function($id){
		return  $http.get( "api/genre/" + $id );
	}

	return GenresService;
	
	
	
}]);