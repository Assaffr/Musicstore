CheckoutModule.factory( 'CheckoutFactory', ['$window', '$rootScope', '$http', function( $window, $rootScope, $http ) {
	var CheckoutFactory = {};
	
	CheckoutFactory.checkout = function( details ){
		return  $http.post( "api/checkout", details );
	}
	
	
	return CheckoutFactory;
	
}]);