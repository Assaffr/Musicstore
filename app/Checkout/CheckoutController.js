app.controller( 'CheckoutController', function( $scope, CheckoutFactory, $window, $routeParams) {
	$scope.checkout = {};
	

	
	$scope.completeCheckout = function( total ){
		$scope.checkout["cart"] = angular.fromJson($window.localStorage.getItem( 'cart-storage' ));
		$scope.checkout["total"] = total.toFixed( 1 );
		console.log( $scope.checkout );
		CheckoutFactory.checkout( $scope.checkout )
			.success( function( result ) {
				
			});
	}

	$scope.checkCurrentStep = function ( step ){
		return ($routeParams.currentStep == step );
		
	};
	
	$scope.goTo = function ( path ){
		
		window.location.assign( path )
		
	};



});