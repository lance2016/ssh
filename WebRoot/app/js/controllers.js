var myCtrls = angular.module('myCtrls',[]);


myApp.controller('manage_id',['$scope','$http','$state',
	function ($scope, $http, $state,$route) {
		$scope.id="20141223";
  
  $scope.change = function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/changepsw.action",
			params:{
					id:$scope.id,
					p:$scope.psw,
					p1:$scope.psw1,
					p2:$scope.psw2}
		}).success(function(data,status,headers,config){
			
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			alertify.success(data.result);
			saveData = data;
		}).error(function(){

		}); 
	}	
}]);







//学院动态

myApp.controller('xueyuannews',['$scope','$http','$state',
	function ($scope, $http, $state,$route) {
		var num=6;
		 $scope.maxSize = 7;    // 显示最大页数
		  $scope.totalItems = 10000; // 总条数
		  $scope.currentPage = 1;//当前页取值
		  $scope.bigTotalItems = 20;
		  $scope.bigCurrentPage = 1;
  
  $scope.getnum = function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/getNum.action",
			params:{table:"AllContent",id:"Z0"}
		}).success(function(data,status,headers,config){

			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
			num=data.num;
			$scope.n=num;
		}).error(function(){

		}); 
	}

	$scope.getnum();
		$scope.getAll = function(){
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:"Z0",start:($scope.bigCurrentPage-1)*5,size:5}
			}).success(function(data,status,headers,config){
				
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;

				$scope.news =data.AllContentList;
				$scope.bigTotalItems = (num/5)*10;//默认每页10条，此处转换为每页4条		
		
			}).error(function(){

			}); 
		}
		$scope.getAll();
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
				setTimeout(function(){$scope.getAll();},500);
});
	

		
		
	
		$scope.Delete=function(id){
			var r = alertify.confirm("delete <strong>"+id+"</strong> ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.load();
						alertify.success("success");						
					}).error(function(data,status,headers,config){
						alertify.error("error,请检查网络连接");
				});						
				} else {					
					alertify.error("canceled");
				}
			}); 	
		}

		
}]);

                             
                            

//通知公告
myApp.controller('inform',['$scope','$http','$state',
	function ($scope, $http, $state,$route) {
		var num=6;
		 $scope.maxSize = 7;    // 显示最大页数
  $scope.totalItems = 10000; // 总条数
  $scope.currentPage = 1;//当前页取值
  $scope.bigTotalItems = 20;
  $scope.bigCurrentPage = 1;
  $scope.getnum = function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/getNum.action",
			params:{table:"AllContent",id:"Z1"}
		}).success(function(data,status,headers,config){

			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
			num=data.num;
			$scope.n=num;
		}).error(function(){

		}); 
	}

	$scope.getnum();
		$scope.getAll = function(){
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:"Z1",start:($scope.bigCurrentPage-1)*10,size:10}
			}).success(function(data,status,headers,config){
				
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				$scope.news =data.AllContentList;
				$scope.bigTotalItems = (num/10)*10;//默认每页10条，此处转换为每页4条		
			}).error(function(){

			}); 
		}
		$scope.getAll();
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
				setTimeout(function(){$scope.getAll();},500);
});
	

		
		
	
		$scope.Delete=function(id){
			var r = alertify.confirm("Delete <strong>"+id+"</strong> ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.load();
						alertify.success("success");						
					}).error(function(data,status,headers,config){
						alertify.error("error,请检查网络连接");
				});						
				} else {					
					alertify.error("canceled");
				}
			}); 	
		}

		
}]);












//学生工作
myApp.controller('studentwork',['$scope','$http','$state',
	function ($scope, $http, $state,$route) {
		var num;
		 $scope.maxSize = 7;    // 显示最大页数
$scope.totalItems = 10000; // 总条数
$scope.currentPage = 1;//当前页取值
$scope.bigTotalItems = 20;
$scope.bigCurrentPage = 1;

$scope.getnum = function(){
	$http({
		method:'POST',
		url:"/ssh/ajax/getNum.action",
		params:{table:"AllContent",id:"Z2"}
	}).success(function(data,status,headers,config){

		data = eval("("+data+")"); 
		data = angular.fromJson(data);
		saveData = data;
		num=data.num;
		$scope.n=num;
	}).error(function(){

	}); 
}

$scope.getnum();

		$scope.getAll = function(){
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:"Z2",start:($scope.bigCurrentPage-1)*10,size:10}
			}).success(function(data,status,headers,config){
				
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				$scope.news =data.AllContentList;
				$scope.bigTotalItems = (num/10)*10;//默认每页10条，此处转换为每页4条		
		
			}).error(function(){

			}); 
		}
		$scope.getAll();
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
				setTimeout(function(){$scope.getAll();},500);
});
	

		
		
	
		$scope.Delete=function(id){
			var r = alertify.confirm("Delete <strong>"+id+"</strong> ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.load();
						alertify.success("success");						
					}).error(function(data,status,headers,config){
						alertify.error("error,请检查网络连接");
				});						
				} else {					
					alertify.error("canceled");
				}
			}); 	
		}

		
}]);



//就业工作
myApp.controller('work',['$scope','$http','$state',
	function ($scope, $http, $state,$route) {
		var num=6;
		 $scope.maxSize = 7;    // 显示最大页数
		$scope.totalItems = 10000; // 总条数
		$scope.currentPage = 1;//当前页取值
		$scope.bigTotalItems = 20;
		$scope.bigCurrentPage = 1;
		$scope.getnum = function(){
			$http({
				method:'POST',
				url:"/ssh/ajax/getNum.action",
				params:{table:"AllContent",id:"Z3"}
			}).success(function(data,status,headers,config){
		
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				num=data.num;
				$scope.n=num;
			}).error(function(){
		
			}); 
		}

$scope.getnum();
		$scope.getAll = function(){
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:"Z3",start:($scope.bigCurrentPage-1)*10,size:10}
			}).success(function(data,status,headers,config){
				
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
		
				$scope.news =data.AllContentList;
				$scope.bigTotalItems = (num/10)*10;//默认每页10条，此处转换为每页4条		
	
			}).error(function(){

			}); 
		}
		$scope.getAll();
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
				setTimeout(function(){$scope.getAll();},500);
});
	

		
		
	
		$scope.Delete=function(id){
			var r = alertify.confirm("Delete <strong>"+id+"</strong> ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.load();
						alertify.success("success");						
					}).error(function(data,status,headers,config){
						alertify.error("error,请检查网络连接");
				});						
				} else {					
					alertify.error("canceled");
				}
			}); 	
		}

		
}]);

///学术动态
myApp.controller('xueshunews',['$scope','$http','$state',
                               function ($scope, $http, $state,$route) {
	var num=6;
	 $scope.maxSize = 7;    // 显示最大页数
$scope.totalItems = 10000; // 总条数
$scope.currentPage = 1;//当前页取值
$scope.bigTotalItems = 20;
$scope.bigCurrentPage = 1;
$scope.getnum = function(){
	$http({
		method:'POST',
		url:"/ssh/ajax/getNum.action",
		params:{table:"AllContent",id:"Z4"}
	}).success(function(data,status,headers,config){

		data = eval("("+data+")"); 
		data = angular.fromJson(data);
		saveData = data;
		num=data.num;
		$scope.n=num;
	}).error(function(){

	}); 
}

$scope.getnum();
	$scope.getAll = function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/listpage.action",
			params:{table:"AllContent",id:"Z4",start:($scope.bigCurrentPage-1)*10,size:10}
		}).success(function(data,status,headers,config){
			
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
//			if(data.length > 10);
//				data = data.slice(0,10);		
			$scope.news =data.AllContentList;
			$scope.bigTotalItems = (num/10)*10;//默认每页10条，此处转换为每页4条		
		//	saveData=data;
				//data = data.slice(($scope.bigCurrentPage-1)*4,$scope.bigCurrentPage*4);//每页显示4条
				
				
		}).error(function(){

		}); 
	}
	$scope.getAll();
	var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
			setTimeout(function(){$scope.getAll();},500);
});



	$scope.Delete=function(id){
		var r = alertify.confirm("Delete <strong>"+id+"</strong> ?",function (e){
			if (e) {
				$http({
					method:'GET',
					url:'/ssh/ajax/delete.action',
					params: {id:id}
				}).success(function(data,status,headers,config){
					$scope.load();
					alertify.success("success");						
				}).error(function(data,status,headers,config){
					alertify.error("error,请检查网络连接");
			});						
			} else {					
				alertify.error("canceled");
			}
		}); 	
	}                         	

                            		
                            }]);



//编辑文章
myCtrls.controller('Edit',['$stateParams','$scope','$http','$state','msgBox',
	function($stateParams,$scope,$http,$state,msgBox){
	
			$http({
				method:'POST',
				url:"/ssh/ajax/queryContent",
				params: {id:$stateParams.id}//
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				
				$scope.articles = data.AllContentList;

					if(data=="error")
						alertify.error("Error");
					else{
						var a=CKEDITOR.replace('WriteArticleEditor');
						$scope.oldid=$scope.articles[0].id;
						$scope.id=$scope.articles[0].id;
						a.setData($scope.articles[0].content);
						$scope.title=$scope.articles[0].title;
						$scope.important=$scope.articles[0].important;
						$scope.visitedtime=$scope.articles[0].visitedtime;
						$scope.time=$scope.articles[0].time;
						$scope.link=$scope.articles[0].link;
						$scope.parentid=$scope.articles[0].parentid;
						alertify.success("load success");
				}

			}).error(function(){
		
			}); 
					

		 $scope.Submit = function(id,title,content,link,time,visitedtime,important,parentid){	
			$scope.content = CKEDITOR.instances.WriteArticleEditor.getData();	
			$http({
				method:'POST',
				url:"/ssh/ajax/update.action",
				params: {
					id:id,
					title:title,
					content:$scope.content,
					link:link,
					time:time,
					visitedtime:visitedtime,
					important:important,
					parentid:parentid
					}
			}).success(function(data,status,headers,config){
					if(data!="1")
						alertify.success("SUCCESS");
					else{
						alertify.error("ERROR");
					}
			}).error(function(){
				alert(status);
			}); 
				
		//setTimeout(function(){$state.go('index.indexconfig.inform')},500);
		}

	}
]);


//加载文章发布板块
myCtrls.controller('LoadArticle',['$scope','$http','$window',
	function($scope,$http,$window){
		//默认设置
      $scope.value = 'Z1';
		$scope.LoadById = function(id){		
			//向后台请求是否包括头条的参数
			//var flag = 1;
			$scope.value = id;
			$http({
				method:'GET',
				url:"/ssh/ajax/list.action",
				params:{id:$scope.value}
			}).success(function(data,status,headers,config){
				alertify.success("success");
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data.AllContentList; 
			}).error(function(data,status,headers,config){
			}); 
		}
		$scope.LoadById($scope.value);
		//删除文章
		$scope.Delete = function(id){
			
			var r = alertify.confirm("Delete "+id+" ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/sdiia/ajax/deleteArticle.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						alertify.success("success");
						$scope.LoadById($scope.value);
					}).error(function(data,status,headers,config){
						alertify.error("error");
					});						
				} else {
					alertify.error("canceled");
				}
			}); 			
		}
	}
]);


//写文章
myCtrls.controller('write',['$stateParams','$scope','$http','$state','msgBox',
      function($stateParams,$scope,$http,$state,msgBox){
	CKEDITOR.replace('WriteArticleEditor');	
	 $scope.Submit = function(title,content,time,important,parentid){	
			$scope.content = CKEDITOR.instances.WriteArticleEditor.getData();	
			alert($scope.content);
			$http({
				method:'POST',
				url:"/ssh/ajax/add.action",
				params: {
					title:title,
					content:$scope.content,
					time:time,
					important:important,
					parentid:parentid
					}
			}).success(function(data,status,headers,config){
					if(data!="error")
						{
							alertify.success("SUCCESS");
							setTimeout(function(){$state.go('index.load')},500);
						}
					else{
						alertify.error("ERROR");
					}
			}).error(function(){
			
			}); 
				
}}
]);
	
//
////虫业通讯刊物
//myCtrls.controller('LoadJournal',['$scope','$http','$window',
//	function($scope,$http,$window){
//		$scope.load = function(){
// 			$http({
//				method:'GET',
//				url:'/sdiia/ajax/listArticle.action?id=20',
//			}).success(function(data,status,headers,config){
//
//				data = eval("("+data+")"); 
//				data = angular.fromJson(data);
//				$scope.articles = data;
//			}).error(function(data,status,headers,config){
//			}); 
//		}
//		$scope.load();
//		//删除刊物
//		$scope.DeleteArticle = function(id){
//			reset();
//			var r = alertify.confirm("确定要删除?",function (e){
//				if (e) {
//					$http({
//						method:'GET',
//						url:'/sdiia/ajax/deleteArticle.action',
//						params: {id:id}
//					}).success(function(data,status,headers,config){
//						alertify.success("success");
//						$scope.load();
//						
//					}).error(function(data,status,headers,config){
//						alertify.error("error,请检查网络连接");
//					});						
//				} else {
//					alertify.error("canceled");
//				}
//			}); 			
//		}
//	}
//]);
//
////理事会成员管理
//myCtrls.controller('EditCouncil',['$scope','$http','msgBox',
//	function($scope,$http,msgBox){
//		//初始化理事会成员
//		$scope.load = function(){
//			$http({
//				method:'GET',
//				url:'/sdiia/ajax/listArticle.action?id=21', //21是常务理事会成员的栏目名
//			}).success(function(data,status,headers,config){
//				data = eval("("+data+")"); 
//				data = angular.fromJson(data);
//				$scope.articles = data;
//				
//				CKEDITOR.replace('CouncilEditor');
//				CKEDITOR.instances.CouncilEditor.setData(data[0].content);
//
//			}).error(function(data,status,headers,config){
//			});						
//		}
//		$scope.load();
//		//理事会成员提交
//		$scope.Submit = function(){			
//			//转换JSON的方法
//			var transform = function(data){
//				return $.param(data);
//			}
//			//取得文本编辑器的值
//			$scope.content = $('.cke_wysiwyg_frame').contents().find('.cke_editable').html();
//
//			$http.post("/sdiia/ajax/updateArticle.action",
//				{title:'理事会',author:'haha',mid:'21',content:$scope.content,id:$scope.articles[0].id}, 
//				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
//				transformRequest: transform
//			}).success(function(data,status,headers,config){
//
//				msgBox.msg(data);
//				$scope.load();
//			}).error(function(data,status,headers,config){
//			}); 
//		}
//
//	}
//]);
//
////编辑常务理事单位
//myCtrls.controller('EditManager',['$scope','$http','msgBox',
//		function($scope,$http,msgBox){
//		//加载常务理事单位
//		$scope.load = function(){
//			$http({
//				method:'GET',
//				url:'/sdiia/ajax/listArticle.action?id=17', //17是常务理事单位的栏目名
//			}).success(function(data,status,headers,config){
//				data = eval("("+data+")"); 
//				data = angular.fromJson(data);
//				$scope.articles = data;
//			}).error(function(data,status,headers,config){
//				
//			});						
//		}
//		$scope.load();		
//		//添加常务理事单位
//		$scope.add = function(){
//			//转换JSON的方法
//			var transform = function(data){
//				return $.param(data);
//			} 		
//			$http.post("/sdiia/ajax/saveArticle.action",
//				{title:$scope.postArticle,author:'1',mid:'17',content:'1'}, 
//				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
//				transformRequest: transform
//			}).success(function(data,status,headers,config){
//
//				msgBox.msg(data);
//				$scope.postArticle = '';
//				$scope.load();
//			}).error(function(data,status,headers,config){
//				msgBox.msg("服务器繁忙");
//			}); 			
//		}
//		//删除常务理事单位
//		$scope.remove = function(idx,id){
//			 $scope.articles.splice(idx,1);
//			$http({
//				method:'GET',
//				url:"/sdiia/ajax/deleteArticle.action",
//				params: {id:id},
//			}).success(function(data,status,headers,config){
//				msgBox.msg(data);
//				$scope.load();
//			}).error(function(data,status,headers,config){
//			}); 			
//		}		
//	}
//]);
//
////各地虫协
//myCtrls.controller('EditInset',['$scope','$http','msgBox',
//		function($scope,$http,msgBox){
//		//加载各地虫协
//		$scope.load = function(){
//			$http({
//				method:'GET',
//				url:'/sdiia/ajax/listArticle.action?id=18', //18是各地虫协
//			}).success(function(data,status,headers,config){
//				data = eval("("+data+")"); 
//				data = angular.fromJson(data);
//				$scope.articles = data;
//			}).error(function(data,status,headers,config){
//			});						
//		}
//		$scope.load();		
//		//添加各地虫协
//		$scope.add = function(){
//			//转换JSON的方法
//			var transform = function(data){
//				return $.param(data);
//			} 		
//			$http.post("/sdiia/ajax/saveArticle.action",
//				{title:$scope.postArticle,author:'1',mid:'18',content:'1'}, 
//				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
//				transformRequest: transform
//			}).success(function(data,status,headers,config){
//				msgBox.msg(data);
//				$scope.postArticle = '';
//				$scope.load();
//			}).error(function(data,status,headers,config){
//				msgBox.msg("服务器繁忙");
//			}); 			
//		}
//		//删除各地虫协
//		$scope.remove = function(idx,id){
//			 $scope.articles.splice(idx,1);
//			$http({
//				method:'GET',
//				url:"/sdiia/ajax/deleteArticle.action",
//				params: {id:id},
//			}).success(function(data,status,headers,config){
//				msgBox.msg(data);
//				$scope.load();
//			}).error(function(data,status,headers,config){
//			}); 			
//		}		
//	}
//]);
//
////加载图片轮播设置
//myCtrls.controller('LoadPictureCarousel',['$scope','$http','msgBox',
//	function($scope,$http,msgBox){
//		$scope.load = function(){
//			$http({
//				method:'GET',
//				url:'json/pic.json'
//			}).success(function(data,status,headers,config){
//				data = angular.fromJson(data);
//				$scope.pics = data; 
//			}).error(function(data,status,headers,config){
//			});
//		}	
//		$scope.load();	
//		$scope.Submit = function(id){
//			document.getElementById(id).contentWindow.Submit();
//			$scope.load();	
//		}
//	}
//]);
//
////加载文章发布板块
//myCtrls.controller('LoadArticle',['$scope','$http','$window',
//	function($scope,$http,$window){
//		//默认设置
//        $scope.value = '10';
//		$scope.LoadById = function(id){		
//			//向后台请求是否包括头条的参数
//			var flag = 1;
//			$scope.value = id;
//			$http({
//				method:'GET',
//				url:'/sdiia/ajax/listArticle.action',
//				params: {id:id,flag:flag}
//			}).success(function(data,status,headers,config){
//				data = eval("("+data+")"); 
//				data = angular.fromJson(data);
//				$scope.articles = data; 
//			}).error(function(data,status,headers,config){
//			}); 
//		}
//		$scope.LoadById($scope.value);
//		//删除文章
//		$scope.DeleteArticle = function(id){
//			reset();
//			var r = alertify.confirm("确定要删除?",function (e){
//				if (e) {
//					$http({
//						method:'GET',
//						url:'/sdiia/ajax/deleteArticle.action',
//						params: {id:id}
//					}).success(function(data,status,headers,config){
//						alertify.success("success");
//						$scope.LoadById($scope.value);
//					}).error(function(data,status,headers,config){
//						alertify.error("error,请检查网络连接");
//					});						
//				} else {
//					alertify.error("canceled");
//				}
//			}); 			
//		}
//	}
//]);
//
////写文章
//myCtrls.controller('WriteArticle',['$scope','$http','$state','msgBox',
//	function($scope,$http,$state,msgBox){
//		
//		CKEDITOR.replace('WriteArticleEditor');	
//		//文章提交
//		$scope.Submit = function(title,author,mid){			
//			//转换JSON的方法
//			var transform = function(data){
//				return $.param(data);
//			};
//			//取得文本编辑器的值
//			$scope.content = $('.cke_wysiwyg_frame').contents().find('.cke_editable').html();
//			$http.post("/sdiia/ajax/saveArticle.action",
//				{title:title,author:author,mid:mid,content:$scope.content}, 
//				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
//				transformRequest: transform
//			}).success(function(data,status,headers,config){
//				msgBox.msg(data);
//				setTimeout(function(){$state.go('index.articles')},1500);
//			}).error(function(data,status,headers,config){
//			}); 
//		}
//
//	}
//]);

//编辑文章
myCtrls.controller('ReWriteArticle',['$stateParams','$scope','$http','$state','msgBox',
	function($stateParams,$scope,$http,$state,msgBox){
		$http({
				method:'GET',
				url:'/sdiia/ajax/getArticle.action',
				params: {id:$stateParams.articleId}
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.id = data.id;
				$scope.title = data.title; 
				$scope.author = data.author; 
				$scope.mid = data.menu_id;  			
				$scope.content = data.content;
				
				CKEDITOR.replace('ReWriteArticleEditor');
				CKEDITOR.instances.ReWriteArticleEditor.setData(data.content);	
									
			}).error(function(data,status,headers,config){
			});				

		//文章提交(编辑后进行更新)
		$scope.Submit = function(title,author,mid){			
			//转换JSON的方法
			var transform = function(data){
				return $.param(data);
			}
			//取得文本编辑器的值
			var content = $('.cke_wysiwyg_frame').contents().find('.cke_editable').html();
			$http.post("/sdiia/ajax/updateArticle.action",
				{id:$scope.id,title:$scope.title,author:$scope.author,mid:$scope.mid,content:content}, 
				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
				transformRequest: transform
			}).success(function(data,status,headers,config){
				msgBox.msg(data);
				setTimeout(function(){$state.go('index.articles')},1500);
			}).error(function(data,status,headers,config){
			}); 
		}

	}
]);

//改变a标签的颜色(仅用于本项目，由于bootstrap的样式冲突，所以很捉急-_-!)
myCtrls.controller('changeColor',['$scope',
	function($scope){
		$scope.change = function($event){
			$($event.target).parent().siblings().find('a').removeClass("a-color-active");
			$($event.target).parent().siblings().find('a').addClass("a-color");
			$($event.target).addClass("a-color-active");
		}
	}
]);
//改变a标签的背景颜色(仅用于本项目，由于bootstrap的样式冲突，所以很捉急-_-!)
myCtrls.controller('changeBgColor',['$scope',
	function($scope){
		$scope.change = function($event){
			$($event.target).siblings().removeClass("a-bgcolor-active");
			$($event.target).siblings().addClass("a-bgcolor");
			$($event.target).addClass("a-bgcolor-active");
		}	
	}
]); 
 
