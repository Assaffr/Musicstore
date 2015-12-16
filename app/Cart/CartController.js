app.controller( 'CartController', function( $scope, CartFactory, $window, AlbumsService, $routeParams) {
	
	/**
	*	addToCart
	*
	*	checks if this album is in the cart - if not, make a cart object with the album id and quantity
	*	in it, and put it in the local storage.
	*	if the album exists, check if the quantity changed - if it has, change it.
	*
	*	@param (number) (id) id of the album
	*	@param (number) (quant) quantity of albums the user wants to buy
	*	@return (type) (name) -- none
	*/
	$scope.addToCart = function(id, quant){
		if (!$scope.checkIfExistsInCart(id)){
			var product = {};
			cart = [];
			product.id = id;
			product.quantity = quant;
			cart.push(product);
			CartFactory.putItem(angular.toJson(cart));
		}
		var oldquant = $scope.checkQuantity();
			if (oldquant !== quant){
				$scope.changeQuantity(id, quant);
			}
	}
	
	
	/**
	*	lowerQuantity
	*
	*	lowers the quantity in the product page - but only if the quantity isn't 0.
	*	this function exists and not raiseQuantity because of the 'if' to ensure it doesn't go below 0.
	*	
	*	@param (type) (name) -- none
	*	@return (type) (name) -- none
	*	@return (type) (name) -- none
	*/
	$scope.lowerQuantity = function(){
		if ($scope.quantity != 0)
			$scope.quantity = $scope.quantity - 1;
	}

	/**
	*	checkIfExistsInCart
	*
	*	checks the local storage for the cart exists, sets var exists to false, 
	*	then runs on a for loop on the cart to find the album, if it finds - set exists to true.
	*	
	*
	*	@param (number) (id) id of the album
	*	@param (number) (quant) quantity of albums the user wants to buy
	*	@return (boolean) (true) - the album exists
	*	@return (boolean) (false) - the album doesn't exists
	*/
	$scope.checkIfExistsInCart = function(id){
		if ($window.localStorage.getItem('cart-storage')){
			var exists = false;
			var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
			for (i = 0; i < cart.length; i++){
				if (cart[i][0].id == id){
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
	
	
	/**
	*	changeQuantity
	*
	*	goes on a for loop to find the index of the album in the object,
	*	then changes the quantity in it to the new quantity desired.
	*	
	*
	*	@param (number) (id) id of the album
	*	@param (number) (quant) quantity of albums the user wants to buy
	*	@return (type) (name) -- none
	*/
	$scope.changeQuantity = function(id, quant){
		if (quant){
			var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
			for (i = 0; i < cart.length; i++){
				if (cart[i][0].id == id){
					cart[i][0].quantity = quant;
				}
			}
			CartFactory.replaceStorage(angular.toJson(cart));
		}
		
	}
	/**
	*	checkQuantity
	*
	*	checks the quantity of the album and returns it.
	*	
	*
	*	@param (type) (name) none
	*	@return (type) (name) none
	*	@return (0) (0) the function couldn't find a quantity - return 0
	*	@return (quantity) (number) the quantity the function found
	*/
	$scope.checkQuantity = function(){
		cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
		var id = $routeParams.album;
		if (cart != null){
			for (i = 0; i < cart.length; i++){
				if (cart[i][0].id == id){
					var quantity = cart[i][0].quantity;
				}
			}
			if (quantity)
				return quantity
			return 1;
			}
		else
			return 1;
	}
	/**
	*	getCartObject
	*
	*	makes an object from the cart, then attaches the proper album data to each one
	*	it then runs a for loop on the object in order to add the quantity to it, and also calculates the total
	*
	*	@param (type) (name) none
	*	@return (type) (name) none
	*/
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
				}
				
			});
		}
		
	};
	
	
	
	
	/**
	*	removeFromCart
	*
	*	runs a for loop on the cart and finds the album, and then deletes it.
	*	it then uses the deleteNullFromJson function to replace the storage with a functioning json
	*
	*	@param (number) (id) id of the album
	*	@return (boolean) (false) no cart found - return false;
	*/
	$scope.removeFromCart = function(id){
		if ($window.localStorage.getItem('cart-storage')){
			var cart = angular.fromJson($window.localStorage.getItem('cart-storage'));
			for (i = 0; i < cart.length; i++){
				if (cart[i][0].id == id){
					delete cart[i];
					CartFactory.replaceStorage($scope.deleteNullFromJson(angular.toJson(cart)));
				}
			}
		}
		else
			return false;
	}
	
	/**
	*	deleteNullFromJson
	*
	*	when an album is deleted from the cart, the resulting json will have a null in the middle of it with commas
	*	depending on which point of the object it was deleted - this function
	*	locates the 'null' from the json string and deletes it in order to return
	*	a functioning json string.
	*
	*	@param (json) (json) the json of the cart
	*	@return (json) (string) the new json, without nulls.
	*/
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

	$scope.cart = angular.fromJson($window.localStorage.getItem('cart-storage'));


	
});