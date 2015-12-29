app.controller( 'CheckoutController', function( $scope, CheckoutFactory, $window, $routeParams) {
	$scope.checkout = {};
	
	

	
	$scope.completeCheckout = function( total ){
		$scope.checkout["cart"] = angular.fromJson($window.localStorage.getItem( 'cart-storage' ));
		$scope.checkout["total"] = total.toFixed( 1 );
		console.log( $scope.checkout );
		CheckoutFactory.checkout( $scope.checkout )
			.success( function( result ) {
				
			});
	};
	
	$scope.saveCheckoutInfo = function( info ){
		CheckoutFactory.setCheckoutInfo( info )
	}
	
	$scope.getCheckoutInfo = function(  ){
		return CheckoutFactory.getCheckoutInfo(  );
		
	};

	$scope.checkCurrentStep = function ( step ){
		return ($routeParams.currentStep == step );
		
	};
	
	$scope.goTo = function ( path ){
		
		window.location.assign( path )
		
	};
	
	if( $scope.getCheckoutInfo() !=null ){
		if( $scope.checkCurrentStep( 'Step2' ) && Object.keys( $scope.getCheckoutInfo() ).length < 4 ){
			$scope.goTo("#/checkout/Step1");
		}else if ( $scope.checkCurrentStep( 'Step3' ) && Object.keys( $scope.getCheckoutInfo() ).length < 5 )
			$scope.goTo("#/checkout/Step2")
	}else if($scope.checkCurrentStep( 'Step2' ) || $scope.checkCurrentStep( 'Step3' ))
		$scope.goTo("#/checkout/Step1");
	
	$scope.checkout = $scope.getCheckoutInfo( )
	

});