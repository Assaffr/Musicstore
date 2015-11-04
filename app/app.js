var app = angular.module('musicstore', ['Albums', 'ngRoute']);

 // app.config(['$routeProvider',
        // function($routeProvider) {
            // $routeProvider.
                // when('/1', {
                   // templateUrl: 'app/album/TEMP.html'
                // })
              
        // }]);


app.controller( 'MainController', function( $scope, $http, AlbumsService, $routeParams ) {

	$scope.getAlbums = function() {

	AlbumsService.getAll()
		.success( function( albums ) {
			$scope.albums = albums;
		});
	};
	
	$scope.getAlbums();
});