RegisterModule.factory( 'RegisterFactory', ['$http', function($http) {
	
	var RegisterFactory = {};
	
	RegisterFactory.registerUser = function( details ){
		return  $http.post( "api/register", details );
	}
	
	RegisterFactory.checkMailAvail = function( email ){
		return  $http.get( "api/checkmail/" + email );
	}
	
	return RegisterFactory;
	
}]);