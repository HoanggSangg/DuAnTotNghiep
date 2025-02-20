app.controller("ctrl", function($scope, $http) {
	$scope.load = function() {
		$http.get("/rest/authorities").then(resp => {
			$scope.db = resp.data;
		})
	}
	$scope.load();

	$scope.index_of = function(username, role) {
		return $scope.db.authorities
			.findIndex(a => a.account.username == username && a.role.id == role);
	}

	$scope.update = function(username, role) {
		var index = $scope.index_of(username, role);
		if (index >= 0) {
			var id = $scope.db.authorities[index].id;
			var username = $scope.db.authorities[index].account.username;
			if (username == $scope.db.user) {
				alert("Không được xóa quyền chính mình" + $scope.db.user)
				$scope.load();
			}else{
				$http.delete(`/rest/authorities/${id}`).then(resp => {
					$scope.db.authorities.splice(index, 0);
					alert("Xóa quyền " + $scope.db.authorities[index].role.name + 
					" của tài khoản " + $scope.db.authorities[index].account.username + " thành công.");
				})
			}
		} else {
			var authority = {
				account: { username: username },
				role: { id: role }
			};
			$http.post('/rest/authority', authority).then(resp => {
				$scope.db.authorities.push(resp.data);
				alert("Thêm quyền thành công");
			});
		}
	}
});