app.controller("info-ctrl", function($scope, $http) {
	$scope.items = [];
	
	$scope.initialize = function() {
		$http.get("/rest/accounts/user").then(resp => {
			var user = resp.data.user;
			alert(user)
			$http.get("/rest/store/find/" + user).then(resp => {
				console.log(resp.data.tencuahang)
				$scope.items = resp.data;
				$scope.items.forEach(item => {
					item.createDate = new Date(item.createDate)
				})
			})
		})
	}
	$scope.initialize();
});