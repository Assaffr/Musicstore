var app = angular.module('musicstore', ['Albums']);

app.controller( 'MainController', function( $scope, $http, AlbumsService ) {

	$scope.getAlbums = function() {

	AlbumsService.getAll()
		.success( function( albums ) {
			$scope.albums = albums;
		});
	};
	
	$scope.getAlbums();
});