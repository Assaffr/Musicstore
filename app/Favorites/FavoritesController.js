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
			if (favorites == "[]"){
				for (i = 0; i < favorites.length; i++){
					object.push(favorites[i][0].id);
				}
				console.log(object);
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
			for (i = 0; i < favorites.length; i++){
				if (favorites[i][0].id == id){
					delete favorites[i];
					FavoritesFactory.replaceStorage($scope.deleteNullFromJson(angular.toJson(favorites)));
				}
			}
		}
		else
			return false;
	}

	$scope.deleteNullFromJson = function(json){
		if (json.indexOf(",null,") == -1){
			if (json.indexOf("null,") !== -1 && (json.indexOf(",null") == -1)){
				var split = json.split("null,");
			}
			if (json.indexOf(",null") !== -1 && (json.indexOf("null,") == -1)){
				var split = json.split(",null");
			}
			if (json.indexOf(",null") == -1 && (json.indexOf("null,") == -1)){
				var split = json.split("null");
			}
		}
		else{
			var split = json.split(",null,");
			split[0] = split[0] + ",";
			}
		var string = split[0] + split[1];
		return string;	
	}

	
});