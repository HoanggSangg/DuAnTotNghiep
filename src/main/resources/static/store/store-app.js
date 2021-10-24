app = angular.module("store-app", ["ngRoute"]);
app.config(function($routeProvider) {
	$routeProvider
		.when("/product", {
			templateUrl: "/store/product/indexProduct.html",
			controller: "product-ctrl"
		})
		.when("/infostore", {
			templateUrl: "/store/info/infostore.html",
			controller: "info-ctrl"
		})
		.when("/authorize", {
			templateUrl: "/admin/authorize/indexAuthority.html",
			controller: "ctrl"
		})
		.otherwise({
			templete: "<h1 class='text-center'> FPT Polytecnich Administration</h1>"
		});
})