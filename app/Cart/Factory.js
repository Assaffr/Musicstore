CartModule.factory( 'Cart', function CartFectory( $window, $rootScope ) {
	return {
		putItem: function( itemId ) {
			 $window.localStorage && $window.localStorage.setItem('cart-storage', itemId );
			 return this;
		},
		getAllCart: function () {
			return $window.localStorage && $window.localStorage.getItem('cart-storage');
			
		}
		
	}
	
	
	
}]);