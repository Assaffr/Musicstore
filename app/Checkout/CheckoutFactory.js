CheckoutModule.factory( 'CheckoutFactory', ['$window', '$rootScope', '$http', function( $window, $rootScope, $http ) {
	var CheckoutFactory = {};
	
	CheckoutFactory.checkout = function( details ){
		return  $http.post( "api/checkout", details );
	};
	
	CheckoutFactory.setCheckoutInfo = function ( form ){
		console.log( form )
		return sessionStorage.setItem('CheckoutInfo' , angular.toJson( form ) );
		
	};
	
	CheckoutFactory.getCheckoutInfo = function ( ){
		return  angular.fromJson( sessionStorage.getItem( 'CheckoutInfo') );
		
	};
	
	
	
	return CheckoutFactory;
	
}]);