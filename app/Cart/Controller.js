app.controller( 'CartController', function( $scope, CartFactory, $window) {
	$scope.addToCart = function(id, quant){
		var product = {'id' : id, 'quantity' : quant};
		CartFactory.putItem(angular.toJson(product));
	}
	
	$scope.lowerQuantity = function(){
		if ($scope.quantity != 0)
			$scope.quantity = $scope.quantity - 1;
	}


});