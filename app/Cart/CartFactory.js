CartModule.factory( 'CartFactory', ['$window', '$rootScope', '$http', function($window, $rootScope, $http) {
	var CartFactory = {};
	
	
	CartFactory.putItem = function( itemId ){

		if ($window.localStorage.getItem('cart-storage')){
			var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
			var product = angular.fromJson(itemId);
			cart.push(product);
			var cartjson = angular.toJson(cart);
			$window.localStorage && $window.localStorage.setItem('cart-storage', cartjson);
		}
		else {
			var cart = [];
			cart.push(itemId);
			$window.localStorage && $window.localStorage.setItem('cart-storage', "[" +  cart + "]");
		}
		return this;
	}
	
	
	var cartstorage = $window.localStorage.getItem('cart-storage');

	CartFactory.replaceStorage = function( storage ){

		$window.localStorage && $window.localStorage.setItem('cart-storage', storage);
	
	return this;
}

	CartFactory.getInfoByIDs = function( json ){
		return  $http.post( "api/album/cartdata", json );
	}
	
	return CartFactory;
	
}]);