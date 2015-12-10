LoginModule.factory( 'LoginFactory', ['$http', function($http) {
	
	var LoginFactory = {};
	
	LoginFactory.matchLogin = function( details ){
		return  $http.post( "api/matchlogin", details );
	}
	
	return LoginFactory;
	
}]);