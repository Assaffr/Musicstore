app.controller( 'RegisterController', function( $scope, RegisterFactory, LoginFactory, $location ) {
	
	$scope.loading = false;
	
	$scope.register_form = function(){
			RegisterFactory.registerUser($scope.register)
			.success( function( result ) {
				if (result = true){
					LoginFactory.matchLogin($scope.register)
						.success( function( result ) {
							if (result = true){
								$location.path('/');
							}
						});
				}
			});
		
	};
	$scope.checkEmail = function(email){
		RegisterFactory.checkMailAvail(email)
			.success( function( result ) {
				// result 0 = the mail is available, result 1 = it is taken
				console.log(result);
                if ( result == 0 ) {
                	$scope.regForm.user_email.$setValidity("availability", true);
                    return undefined;
                } else {
                	$scope.regForm.user_email.$setValidity("availability", false);
                    return undefined;
                }
				
				
			})
	};
});