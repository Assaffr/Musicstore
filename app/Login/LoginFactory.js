LoginModule.factory( 'LoginFactory', ['$http', function($http) {
	
	var LoginFactory = {};
	
	LoginFactory.matchLogin = function( details ){
		return  $http.post( "api/matchlogin", details );
	};
	
	LoginFactory.checkLoginStatus = function( ){
		return  $http.get( "api/checksession" );
	};
	
	LoginFactory.logOut = function( ){
		return  $http.delete( "api/logout" );
	};
	
	LoginFactory.setLocalSession = function ( params ){
		return sessionStorage.setItem('LocalSession' , angular.toJson( params ) );
		
	};
	
	LoginFactory.getLocalSession = function ( ){
		return  angular.fromJson( sessionStorage.getItem( 'LocalSession') );
		
	};
	
	LoginFactory.destroyLocalSession = function ( ){
		return  sessionStorage.removeItem( 'LocalSession' );
		
	};
	
	return LoginFactory;
	
}]);