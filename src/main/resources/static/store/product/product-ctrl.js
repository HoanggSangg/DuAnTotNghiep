app.controller("product-ctrl", function($scope, $http) {
	$scope.items = [];
	$scope.cates = [];
	$scope.catesmall = [];
	$scope.store = [];
	$scope.form = {};
	var idStore;

	$scope.initialize = function() {
		$http.get("/rest/accounts/user").then(resp => {
			var user = resp.data.user;
			$http.get("/rest/products/find/" + user).then(resp => {
				$scope.items = resp.data;
				$scope.items.forEach(item => {
					item.createDate = new Date(item.createDate)
				})
			})
			$http.get("/rest/store/find/" + user).then(resp => {
				$scope.store = resp.data;
				idStore = resp.data.id;
			})
		})
		$http.get("/rest/categories").then(resp => {
			$scope.cates = resp.data;
		})
		$http.get("/rest/catesmall").then(resp => {
			$scope.catesmall = resp.data;
		})
		$scope.reset();
	}

	$scope.reset = function() {
		$scope.form = {
			cuahang: { id: idStore },
			createDate: new Date(),
			image: 'cloud-upload.jpg',
			available: true,
		};
	}
	
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	
	$scope.backTable = function() {
		$(".nav-tabs a:eq(1)").tab('show')
	};
	
	$scope.create = function() {
		var item = angular.copy($scope.form);
		console.log(item);
		item.cuahang.id = idStore;
		$http.post(`/rest/products`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
			alert("Thêm mới thành công !!!");
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm !!!");
			console.log("Error", error);
		});
	}
	$scope.update = function() {
		var item = angular.copy($scope.form);
		$http.put(`/rest/products/${item.id}`, item).then(() => {
			$scope.initialize();
			$scope.backTable();
		}).catch(error => {
			alert("Lỗi cập nhật sản phẩm !!!");
			console.log("Error", error);
		});
	}
	$scope.delete = function(item) {
		$http.delete(`/rest/products/${item.id}`).then(() => {
			$scope.initialize();
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
			alert("Lỗi upload hình ảnh");
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
		$http.get(`/rest/products/timkiem/${item.name}`).then(resp => {
			$scope.items = angular.copy(resp.data);
		})
	}
});