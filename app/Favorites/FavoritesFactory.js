FavoritesModule.factory( 'FavoritesFactory', ['$window', '$rootScope', '$http', function($window, $rootScope, $http) {
	var FavoritesFactory = {};
	
	
	FavoritesFactory.putItem = function( itemId ){

		if ($window.localStorage.getItem('favorites-storage')){
			var favorites = angular.fromJson($window.localStorage.getItem('favorites-storage'));
			var product = angular.fromJson(itemId);
			favorites.push(product);
			var favoritesjson = angular.toJson(favorites);
			$window.localStorage && $window.localStorage.setItem('favorites-storage', favoritesjson);
		}
		else {
			var favorites = [];
			favorites.push(itemId);
			$window.localStorage && $window.localStorage.setItem('favorites-storage', "[" +  favorites + "]");
		}
		return this;
	}
	
	
	var favoritesstorage = $window.localStorage.getItem('favorites-storage');

	FavoritesFactory.replaceStorage = function( storage ){
		$window.localStorage && $window.localStorage.setItem('favorites-storage', storage);
	return this;
}

	FavoritesFactory.getInfoByIDs = function( json ){
		return  $http.post( "api/album/cartdata", json );
	}
	
	return FavoritesFactory;
	
}]);