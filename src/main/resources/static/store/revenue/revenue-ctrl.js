app.controller("revenue-ctrl", function($scope, $http) {
	$scope.items = [];

	$scope.initialize = {
		load() {
			$http.get("/rest/orders/").then(resp => {
				$scope.items = resp.data;
				console.log($scope.items)
			})
		}
	}
	$scope.initialize.load();

});