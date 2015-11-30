SearchModule.factory( 'SearchService', ['$http', function($http) {
	var SearchService = {};
	
	
	SearchService.search = function( $data ){
		return  $http.get( "api/search/"  + $data  );
	}

	return SearchService;
	
	
	
}]);