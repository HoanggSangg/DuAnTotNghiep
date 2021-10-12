const app = angular.module("shopping-cart-app", []);
app.controller("shopping-cart-ctrl", function($scope, $http, $location) {

	$scope.cart = {
		items: [],
		add(id) {
			var item = this.items.find(item => item.id == id);
			if (item) {
				item.qty++;
				this.saveToLocalStorage();
			} else {
				$http.get(`/rest/products/${id}`).then(resp => {
					resp.data.qty = 1;
					this.items.push(resp.data);
					this.saveToLocalStorage();
				})
			}
		},
		remove(id) {
			var index = this.items.findIndex(item => item.id == id);
			var item = this.items.find(item => item.id == id);
			if (item.qty > 1) {
				item.qty--;
				this.saveToLocalStorage();
			} else {
				this.items.splice(index, 1);
				this.saveToLocalStorage();
			}
		},
		clear() {
			this.items = []
			this.saveToLocalStorage();
		},
		get count() {
			return this.items
				.map(item => item.qty)
				.reduce((total, qty) => total += qty, 0);
		},
		get amount() {
			return this.items
				.map(item => item.qty * item.price)
				.reduce((total, qty) => total += qty, 0)
		},
		saveToLocalStorage() {
			var json = JSON.stringify(angular.copy(this.items));
			localStorage.setItem("cart", json);
		},
		loadFromLocalStorage() {
			var json = localStorage.getItem("cart");
			this.items = json ? JSON.parse(json) : [];
			var kytu = Math.random().toString(36).substr(2, 6);
			alert(kytu)
		}
	}
	$scope.cart.loadFromLocalStorage();

	$scope.accounts = {};
	$scope.account = function() {
		var username = $("#username").text();
		if (username != "") {
			$http.get(`/rest/accounts/${username}`).then(resp => {
				$scope.accounts = resp.data;
			})
		}
	}
	$scope.account();

	$scope.order = {
		createDate: new Date(),
		address: "",
		account: { username: $("#username").text() },
		get orderDetails() {
			return $scope.cart.items.map(item => {
				return {
					product: { id: item.id },
					price: item.price,
					quantity: item.qty
				}
			});
		},
		purchase() {
			var order = angular.copy(this);
			$http.post("/rest/orders", order).then(resp => {
				alert("Đặt hàng thành công");
				$scope.cart.clear();
				location.href = "/order/detail/" + resp.data.id;
			}).catch(error => {
				alert("Đặt hàng lỗi")
				console.log(error)
			})
		}
	}
	$scope.form = {};
	$scope.imageChanged = function(files) {
		var data = new FormData();
		data.append('file', files[0]);
		$http.post('/rest/upload/images', data, {
			transformRequest: angular.indentity,
			headers: { 'Content-Type': undefined }
		}).then(resp => {
			$scope.form.photo = resp.data.name;
		}).catch(error => {
			alert("Lỗi upload hình ảnh");
			console.log("Error", error);
		})
	}
	$scope.dangky = function() {
		var item = angular.copy($scope.form);
		$http.post(`/rest/accounts`, item).then(resp => {
			alert("Thêm mới thành công");
		}).catch(error => {
			alert("Lỗi thêm mới tài khoản");
			console.log("Error", error);
		});
	}
	$scope.doimk = function() {
		var item = angular.copy($scope.form);
		var username = $("#username").text();
		$http.get(`/rest/accounts/${username}`).then(resp => {
			item = resp.data;
			if (item.password == $scope.form.password) {
				if ($scope.form.newPass == $scope.form.confirm) {
					item.password = $scope.form.newPass;
					$http.put(`/rest/accounts/${username}`, item).then(resp => {
						alert("Mật khẩu mới là: " + item.password)
					})
					$location.href = '/logoff';
				} else {
					alert("Nhập lại mật khẩu không đúng")
				}
			} else {
				alert("Sai mật khẩu hoặc tài khoản")
			}
			$scope.form = {};
		})
	}
	$scope.quenmk = function() {
		var item = angular.copy($scope.form);
		$http.get(`/rest/accounts/${item.username}`).then(resp => {
			item = resp.data;
			//từ 100000-999999
			var a = Math.floor(Math.random() * (1000000 - 100000)) + 100000;
			item.password = a;
			$http.put(`/rest/accounts/${item.username}`, item).then(resp => {
				alert("Mật khẩu mới là: " + item.password)
			})
			$scope.form = {};
		})
	}
})