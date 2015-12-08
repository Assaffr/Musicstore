app.controller( 'FavoritesController', function( $scope, FavoritesFactory, $window, AlbumsService, $rootScope) {
	$scope.addToFavorites = function(id){
		if (!$scope.checkIfExistsInFavs(id)){
			var product = {};
			favorites = [];
			product.id = id;
			favorites.push(product);
			FavoritesFactory.putItem(angular.toJson(favorites));
		}
		
	}
	

	$scope.checkIfExistsInFavs = function(id){
		if ($window.localStorage.getItem('favorites-storage')){
			var exists = false;
			
			var favorites = angular.fromJson($window.localStorage.getItem('favorites-storage'));
			for (i = 0; i < favorites.length; i++){
				if (favorites[i][0].id == id){
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
	

	$scope.getfavoritesObject = function() {
		favorites = angular.fromJson($window.localStorage.getItem('favorites-storage'));
		var object = [];
		if (favorites){
			for (i = 0; i < favorites.length; i++){
				object.push(favorites[i][0].id);
			}
		FavoritesFactory.getInfoByIDs(object)
			.success( function( result ) {
				$scope.total = 0;
				for (i = 0; i < favorites.length; i++){
					$scope.favorites = result;
				}
				
			});
		}
	};
	$scope.getfavoritesObject();
	
	$scope.removeFromFavs = function(id){
		if ($window.localStorage.getItem('favorites-storage')){
			var favorites = angular.fromJson($window.localStorage.getItem('favorites-storage'));
			console.log(favorites);
			for (i = 0; i < favorites.length; i++){
				if (favorites[i][0].id == id){
					console.log(favorites[i][0].id);
					favorites[i] = "";
					console.log(angular.toJson(favorites));
					FavoritesFactory.replaceStorage(angular.toJson(favorites));
				}
			}
		}
		else
			return false;
	}

	

	
});