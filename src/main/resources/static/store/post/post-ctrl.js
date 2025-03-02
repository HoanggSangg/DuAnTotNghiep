app.controller("post-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.form = {};
	$scope.user = {};
	$scope.deleteId = null;

	$scope.initialize = function() {
		$http.get("/rest/accounts/user").then(resp => {
			$scope.user = resp.data.user;
			$scope.form = {
				account: { username: $scope.user }
			};
			$http.get("/rest/post/" + $scope.user).then(resp => {
				$scope.items = resp.data;
			})
		})
		$scope.reset();
	}

	//--------------- Delete Modal --------------------------------
	$scope.setDeleteId = function(id) {
		$scope.deleteId = id;
	};

	$scope.deleteModal = function() {
		if ($scope.deleteId) {
			$http.delete(`/rest/post/${$scope.deleteId}`)
				.then(() => {
					alert("Xóa thành công!!!");
					$scope.initialize();
				})
				.catch(error => {
					console.error("Lỗi khi xóa:", error);
				});
		}
	};

	$scope.reset = function() {
		$scope.form = {
			createDate: new Date(),
			image: 'cloud-upload.jpg',
			account: { username: $scope.user }
		};
	}

	$scope.backTable = function() {
		$(".nav-tabs a:eq(1)").tab('show')
	}

	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}

	$scope.create = function() {
		var item = angular.copy($scope.form);
		$http.post(`/rest/post`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm !!!");
			console.log("Error", error);
		});
	}
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/post/${item.id}`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			alert("Lỗi cập nhật sản phẩm !!!");
			console.log("Error", error);
		});
	}
	$scope.delete = function(item) {
		$http.delete(`/rest/post/${item.id}`).then(() => {
			$scope.initialize();
			$scope.backTable();
			alert("Xóa thành công !!!");
		}).catch(error => {
			console.log("Error", error);
		});
	}
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.form.image = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh !!!");
			console.log("Error", error);
		})
	}
	$scope.pager = {
		page: 0,
		size: 8,
		get items() {
			var start = this.page * this.size;
			return $scope.items.slice(start, start + this.size);
		},
		get count() {
			return Math.ceil(1.0 * $scope.items.length / this.size);
		},
		first() {
			this.page = 0;
		},
		prev() {
			this.page--;
			if (this.page < 0) {
				this.last();
			}
		},
		next() {
			this.page++;
			if (this.page >= this.count) {
				this.first();
			}
		},
		last() {
			this.page = this.count - 1;
		}
	}
	$scope.initialize();
	$scope.timkiem = function() {
		var item = angular.copy($scope.form);
		if (item.name != null) {
			$http.get(`/rest/post/timkiem/${item.name}`).then(resp => {
				$scope.items = angular.copy(resp.data);
			})
		} else {
			alert("Vui lòng nhập dữ liệu vào thanh tìm kiếm !!!")
		}
	}




});