app.controller("code-ctrl", function($scope, $http) {
	$scope.items = [];
	var user;
	var idStore;
	const codeRamdom = Math.floor(((Math.random() * 8999999999) + 1000000000));

	$scope.initialize = function() {
		$http.get("/rest/accounts/user").then(resp => {
			 user = resp.data.user;
			$http.get("/rest/store/find/" + user).then(resp => {
				idStore = resp.data;
			})
			
			$http.get("/rest/code/" + user).then(resp => {
				$scope.items = resp.data;
			})
		})
	}
	$scope.initialize();
	
	$scope.edit = function(item) {
		$scope.form = angular.copy(item);
		$(".nav-tabs a:eq(0)").tab('show')
	}
	
	$scope.create = function() {
		var itemCode = angular.copy($scope.form);
		
		itemCode.cuahang = idStore;
		itemCode.trangthai = true;
		itemCode.code = codeRamdom;
		
		$http.post(`/rest/code`, itemCode).then(resp => {
			$scope.items.push(resp.data);
			alert("Thêm mới thành công");
			window.location.href = '/store/indexStore.html#!/code';
		}).catch(error => {
			alert("Lỗi thêm mới sản phẩm");
			console.log("Error", error);
		});
	}
	$scope.delete = function(item) {
		$http.delete(`/rest/code/${item.id}`).then(resp => {
			var index = $scope.items.findIndex(p => p.id == item.id);
			$scope.items.splice(index, 1);
			$scope.initialize();
			alert("Xóa thành công");
		}).catch(error => {
			alert("Lỗi xóa sản phẩm");
			console.log("Error", error);
		});
	}
	$scope.pager = {
		page: 0,
		size: 10,
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
});