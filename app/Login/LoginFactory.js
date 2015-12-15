LoginModule.factory( 'LoginFactory', ['$http', function($http) {
	
	var LoginFactory = {};
	
	LoginFactory.matchLogin = function( details ){
		return  $http.post( "api/matchlogin", details );
	}
	
	LoginFactory.checkLoginStatus = function( ){
		return  $http.get( "api/checksession" );
	}
	
	LoginFactory.logOut = function( ){
		return  $http.delete( "api/logout" );
	}
	
	return LoginFactory;
	
}]);