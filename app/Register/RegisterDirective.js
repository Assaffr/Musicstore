RegisterModule.directive("passwordVerify", function() {
   return {
      require: "ngModel",
      scope: {
        passwordVerify: '='
      },
      link: function(scope, element, attrs, RegisterController) {
        scope.$watch(function() {
            var combined;

            if (scope.passwordVerify || RegisterController.$viewValue) {
               combined = scope.passwordVerify + '_' + RegisterController.$viewValue; 
            }                    
            return combined;
            
        },
        
	        function (value) {
	            if (value) {
	                RegisterController.$parsers.unshift(function(viewValue) {
	                    var origin = scope.passwordVerify;
	                    if (origin !== viewValue) {
	                        RegisterController.$setValidity("passwordVerify", false);
	                        return undefined;
	                    } else {
	                        RegisterController.$setValidity("passwordVerify", true);
	                        return viewValue;
	                    }
	                });
	            }
	        }
        );
     }
   };
});