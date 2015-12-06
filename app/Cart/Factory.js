CartModule.factory( 'CartFactory', ['$window', '$rootScope' , function($window, $rootScope) {
	var CartFactory = {};
	
	
	CartFactory.putItem = function( itemId ){
		if ($window.localStorage.getItem('cart-storage')){
				$window.localStorage && $window.localStorage.setItem('cart-storage', $window.localStorage.getItem('cart-storage') + itemId );
		}
		else {
			$window.localStorage && $window.localStorage.setItem('cart-storage', itemId );
		}
		return this;
	}
	
	CartFactory.getAllCart = function(){
		return $window.localStorage && $window.localStorage.getItem('cart-storage');
	}


	
	return CartFactory;
	
}]);