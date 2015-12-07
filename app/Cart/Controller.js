app.controller( 'CartController', function( $scope, CartFactory, $window, AlbumsService, $rootScope) {
	$scope.addToCart = function(id, quant){
		if (!$scope.checkIfExistsInCart(id, quant)){
			var product = {};
			cart = [];
			product.id = id;
			product.quantity = quant;
			cart.push(product);
			CartFactory.putItem(angular.toJson(cart));
		}
		
	}
	
	$scope.lowerQuantity = function(){
		if ($scope.quantity != 0)
			$scope.quantity = $scope.quantity - 1;
	}

	$scope.checkIfExistsInCart = function(id, quant){
		if ($window.localStorage.getItem('cart-storage')){
			var exists = false;
			
			var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
			for (i = 0; i < cart.length; i++){
				if (cart[i][0].id == id){
					$scope.changeQuantity(id, quant, i);
					var exists = true;
				}
			}
			if (exists == true)
				return true;
			else
				return false;
		}
		else
			return false;
	}
	
	$scope.changeQuantity = function(id, quant, i){
		var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
		cart[i][0].quantity = quant;
		CartFactory.replaceStorage(angular.toJson(cart));
		
	}
	
	$scope.getCartObject = function() {
		cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
		var object = [];
		if (cart){
			for (i = 0; i < cart.length; i++){
				object.push(cart[i][0].id);
			}
		CartFactory.getInfoByIDs(object)
			.success( function( result ) {
				$scope.total = 0;
				
				
				for (i = 0; i < cart.length; i++){
					result[i][0]["quantity"] = cart[i][0].quantity;
					$scope.cart = result;
					$scope.total +=  parseFloat(result[i][0]["album_price"]) * result[i][0]["quantity"];
					console.log($scope.total);

				}
				
			});
		}
	};
	$scope.getCartObject();
	


	$scope.cart = angular.fromJson($window.localStorage.getItem('cart-storage'));

	

	
});