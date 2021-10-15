const app = angular.module("shopping-cart-app", []);
app.controller("shopping-cart-ctrl", function($scope, $http) {

	//------------------------------------Code JS Cart----------------------------
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
			/*var kytu = Math.random().toString(36).substr(2, 6);
			alert(kytu)*/
		}
	}
	$scope.cart.loadFromLocalStorage();

	//----------------------------------Code JS Order-----------------------------
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

	//-----------------------------Code JS Accounts------------------------------
	$scope.accounts = {
		loadtk() {
			var username = $("#username").text();
			if (username != "") {
				$http.get(`/rest/accounts/${username}`).then(resp => {
					$scope.accounts = resp.data;
				})
			}
		},
		imageChanged(files) {
			var data = new FormData();
			data.append('file', files[0]);
			$http.post('/rest/upload/images', data, {
				transformRequest: angular.indentity,
				headers: { 'Content-Type': undefined }
			}).then(resp => {
				this.photo = resp.data.name;
			}).catch(error => {
				alert("Lỗi upload hình ảnh");
				console.log("Error", error);
			})
		},
		dangky() {
			var accounts = angular.copy(this);
			$http.post(`/rest/accounts`, accounts).then(resp => {
				alert("Thêm mới thành công");
				location.href = '/security/login';
			}).catch(error => {
				alert("Lỗi thêm mới tài khoản");
				console.log("Error", error);
			});
		},
		doimk() {
			var accounts = angular.copy(this);
			var username = $("#username").text();
			$http.get(`/rest/accounts/${username}`).then(resp => {
				accounts = resp.data;
				if (accounts.password == this.password) {
					if (this.newPass == this.confirm) {
						accounts.password = this.newPass;
						$http.put(`/rest/accounts/${username}`, accounts).then(resp => {
							alert("Mật khẩu mới là: " + accounts.password)
						})
						location.href = '/security/logoff';
					} else {
						alert("Nhập lại mật khẩu không đúng")
					}
				} else {
					alert("Sai mật khẩu hoặc tài khoản")
				}
			})
		},
		quenmk() {
			var accounts = angular.copy(this);
			$http.get(`/rest/accounts/${accounts.username}`).then(resp => {
				accounts = resp.data;
				//từ 100000-999999
				var a = Math.floor(Math.random() * (1000000 - 100000)) + 100000;
				accounts.password = a;
				$http.put(`/rest/accounts/${accounts.username}`, accounts).then(resp => {
					alert("Mật khẩu mới là: " + accounts.password)
					location.href = "/security/login";
				})
			})
		}
	}
	$scope.accounts.loadtk();
	
	//---------------------------Code JS Products--------------------------
	$scope.products = {
		load() {
			
		}
	}
	$scope.products.load();
	
	//-------------------------Code JS Comments---------------------------
	$scope.comments = {
		load() {
			
		}
	}
	$scope.comments.load();
})