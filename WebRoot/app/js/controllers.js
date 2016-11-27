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
						$scope.getAll();
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
						$scope.getAll();
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
						$scope.getAll();
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
						$scope.getAll();
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
			setTimeout(function(){$scope.getAll();},500);});



	$scope.Delete=function(id){
		var r = alertify.confirm("Delete <strong>"+id+"</strong> ?",function (e){
			if (e) {
				$http({
					method:'GET',
					url:'/ssh/ajax/delete.action',
					params: {id:id}
				}).success(function(data,status,headers,config){
					$scope.getAll();
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
				params: {id:$stateParams.id}
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
						alertify.success("加载成功");
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
						alertify.success("更新成功");
					else{
						alertify.error("更新失败");
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
	var num=6;
	 $scope.maxSize = 10;    // 显示最大页数
$scope.totalItems = 10000; // 总条数
$scope.currentPage = 1;//当前页取值
$scope.bigTotalItems = 20;
$scope.bigCurrentPage = 1;

	
	$scope.find=function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/findnav.action",
		}).success(function(data,status,headers,config){
			
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			$scope.navs=data.NavList;
		}).error(function(){
		
		}); 
	}
	$scope.find();
	
	
	
	
$scope.getnum = function(id){
	$http({
		method:'POST',
		url:"/ssh/ajax/getNum.action",
		params:{table:"AllContent",id:id}
	}).success(function(data,status,headers,config){
		data = eval("("+data+")"); 
		data = angular.fromJson(data);
		saveData = data;
		num=data.num;
		$scope.n=num;
		
	}).error(function(){

	}); 
}

$scope.getnum("C0");

      $scope.value = 'C0';
		$scope.LoadById = function(id){		
			//向后台请求是否包括头条的参数
			//var flag = 1;
			$scope.getnum(id);
			$scope.value = id;
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:id,start:($scope.bigCurrentPage-1)*5,size:5}
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				$scope.articles =data.AllContentList;
				$scope.bigTotalItems = (num/5)*10;//默认每页10条，此处转换为每页4条		
			//	saveData=data;
			}).error(function(data,status,headers,config){
			}); 
		}
		$scope.LoadById($scope.value);
		
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
			setTimeout(function(){$scope.LoadById($scope.value);},500);});

		

		
		//删除文章
		$scope.Delete=function(id){
			var r = alertify.confirm("确认删除 <strong>"+id+"</strong>吗 ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.LoadById($scope.value);
						alertify.success("已删除");						
					}).error(function(data,status,headers,config){
						alertify.error("删除失败,请检查网络连接");
				});						
				} else {					
					alertify.error("已取消");
				}
			}); 	
		}     
	}
]);

//加载文章发布板块
myCtrls.controller('LoadStaticArticle',['$scope','$http','$window',
	function($scope,$http,$window){
		//默认设置
	var num=6;
	 $scope.maxSize = 10;    // 显示最大页数
$scope.totalItems = 10000; // 总条数
$scope.currentPage = 1;//当前页取值
$scope.bigTotalItems = 20;
$scope.bigCurrentPage = 1;

	
	$scope.find=function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/findstaticnav.action",
		}).success(function(data,status,headers,config){
			
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			$scope.navs=data.NavList;
		}).error(function(){
		
		}); 
	}
	$scope.find();
	
	
	
	
$scope.getnum = function(id){
	$http({
		method:'POST',
		url:"/ssh/ajax/getNum.action",
		params:{table:"AllContent",id:id}
	}).success(function(data,status,headers,config){
		data = eval("("+data+")"); 
		data = angular.fromJson(data);
		saveData = data;
		num=data.num;
		$scope.n=num;
		
	}).error(function(){

	}); 
}

$scope.getnum("C0");

      $scope.value = 'C0';
		$scope.LoadById = function(id){		
			//向后台请求是否包括头条的参数
			//var flag = 1;
			$scope.getnum(id);
			$scope.value = id;
			$http({
				method:'POST',
				url:"/ssh/ajax/listpage.action",
				params:{table:"AllContent",id:id,start:($scope.bigCurrentPage-1)*5,size:5}
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				saveData = data;
				$scope.articles =data.AllContentList;
				$scope.bigTotalItems = (num/5)*10;//默认每页10条，此处转换为每页4条		
			//	saveData=data;
			}).error(function(data,status,headers,config){
			}); 
		}
		$scope.LoadById($scope.value);
		
		var watch = $scope.$watch('bigCurrentPage',function(newValue,oldValue, scope){
			setTimeout(function(){$scope.LoadById($scope.value);},500);});

		

		
		//删除文章
		$scope.Delete=function(id){
			var r = alertify.confirm("确认删除 <strong>"+id+"</strong>吗 ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/delete.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						$scope.LoadById($scope.value);
						alertify.success("已删除");						
					}).error(function(data,status,headers,config){
						alertify.error("删除失败,请检查网络连接");
				});						
				} else {					
					alertify.error("已取消");
				}
			}); 	
		}     
	}
]);







//搜索
myApp.controller('SearchCtrl',function SearchCtrl($scope, $http) {
	$scope.url = '/ssh/ajax/search.action'; // The url of our search
	// The function that will be executed on button click (ng-click="search()")
	$scope.search = function(){		
		
		$http({
			method:'POST',
			url:$scope.url,
			params:{keywords:$scope.keywords}
		}).success(function(data,status,headers,config){
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
			$scope.articles =data.AllContentList;
			if($scope.articles.length==0)
				alertify.error("暂无搜索内容");
			//$scope.bigTotalItems = (num/5)*10;//默认每页10条，此处转换为每页4条		
		//	saveData=data;
		}).error(function(data,status,headers,config){
			
		}); 
		
	}
	
	
	//删除文章
	$scope.Delete=function(id){
		var r = alertify.confirm("确认删除 <strong>"+id+"</strong>吗 ?",function (e){
			if (e) {
				$http({
					method:'GET',
					url:'/ssh/ajax/delete.action',
					params: {id:id}
				}).success(function(data,status,headers,config){
					$scope.search();
					alertify.success("已删除");						
				}).error(function(data,status,headers,config){
					alertify.error("删除失败,请检查网络连接");
			});						
			} else {					
				alertify.error("已取消");
			}
		}); 	
	} 
	
	
	
	
});




///节点管理



myCtrls.controller('item',['$scope','$http','$window',
                       
 function($scope,$http,$window){
	
	d = new dTree('d'); //创建树，名称为’d'（注意和树的对象变量名称要一致）

	$scope.load=function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/loadall.action"
		}).success(function(data,status,headers,config){
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
		//	d.add('0','-1','导航栏',"/ssh/app/index.jsp#/index/item/edititem/"); 
			for(var i=0;i<data.NavList.length;i++){
			d.add(  data.NavList[i].id,   data.NavList[i].parentid, data.NavList[i].name, '/ssh/app/index.jsp#/index/item/edititem/'+data.NavList[i].id);
			}
			var x=document.getElementById("tx");
			  x.innerHTML=d;
			
		}).error(function(data,status,headers,config){
		}); 
		
		
	} 

	$scope.load();
}
]);




myCtrls.controller('edititem',['$stateParams','$scope','$state','$http','$window',
 function($stateParams,$scope,$state,$http,$window){
	//alert($stateParams.id.length);通过id长度判断
	$scope.loadson=function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/queryone.action",
			params: {id:$stateParams.id}
		}).success(function(data,status,headers,config){
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;			
			$scope.navs=data.NavList;			
		}).error(function(data,status,headers,config){
		}); 
	}
	$scope.loadson();		
		//删除文章
		$scope.Delete=function(id){
			var r = alertify.confirm("确认删除 <strong>"+id+"</strong>及其子类节点吗 ?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/ssh/ajax/deletenav.action',
						params: {id:$stateParams.id}
					}).success(function(data,status,headers,config){
						alertify.success("已删除");
						setTimeout(function(){history.go(0)},500);
						//http://localhost:8080/ssh/app/index.jsp#/index/item/edititem/A
					}).error(function(data,status,headers,config){
						alertify.error("删除失败,请检查网络连接");
				});						
				} else {					
					alertify.error("已取消");
				}
			}); 	
			
		} 
		
		$scope.Add=function(id){
			if(id.length<2){
				$state.go('index.item.add',{id:id});
			}	
			else
				alertify.error("请到文章管理栏目增加文章");
		}
		
}
]);

myCtrls.controller('addnav',['$stateParams','$scope','$http','$state','msgBox',
  function($stateParams,$scope,$http,$state,msgBox){ 
	$scope.parentid=$stateParams.id;
	
	 $scope.submit = function(){
		// alert($scope.id+" "+$scope.name+" "+$scope.parentid+" "+$scope.link);
			$http({
				method:'POST',
				url:"/ssh/ajax/addnav.action",
				params: {
					id:$scope.id,
					name:$scope.name,
					link:$scope.link,
					parentid:$scope.parentid
					}
			}).success(function(data,status,headers,config){
					if(data!="1"){
						alertify.success("增加成功");
						$state.go("index.item");
					}
						
					else{
						alertify.error("更新失败");
					}
			}).error(function(){
				
			}); 
			
				
		setTimeout(function(){history.go(0)},500);
		}

}
]);


//编辑导航栏
myCtrls.controller('Editnav',['$stateParams','$scope','$http','$state','msgBox',
	function($stateParams,$scope,$http,$state,msgBox){
	$scope.id=$stateParams.id;
	$scope.name=$stateParams.name;
	$scope.type=$stateParams.type;
	$scope.parentid=$stateParams.parentid;

		 $scope.Submit = function(id,name,type,parentid){	
			$http({
				method:'POST',
				url:"/ssh/ajax/updatenav.action",
				params: {
					id:id,
					name:name,
					link:type,
					parentid:parentid
					}
			}).success(function(data,status,headers,config){
					if(data!="1"){
						alertify.success("更新成功");
						$state.go("index.item");

					}
						
					else{
						alertify.error("更新失败");
					}
			}).error(function(){
				
			}); 
			
				
		setTimeout(function(){history.go(0)},500);
		}

	}
]);




//写文章
myCtrls.controller('write',['$stateParams','$scope','$http','$state','msgBox',
      function($stateParams,$scope,$http,$state,msgBox){
	CKEDITOR.replace('WriteArticleEditor');	
	
	$scope.find=function(){
		$http({
			method:'POST',
			url:"/ssh/ajax/findall.action",
		}).success(function(data,status,headers,config){
			
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			$scope.navs=data.NavList;
		}).error(function(){
		
		}); 
	}
	$scope.find();
	$scope.title="";
	$scope.content="";
	$scope.time="";
	$scope.important="0"
	$scope.parentid="C0";
	 $scope.Submit = function(title,content,time,important,parentid){	
		 	
		 if($scope.title=="")  return;
		 
			$scope.content = CKEDITOR.instances.WriteArticleEditor.getData();	
			
			$http({
				method:'POST',
				url:"/ssh/ajax/add.action",
				params: {
					title:$scope.title,
					content:$scope.content,
					time:$scope.time,
					important:$scope.important,
					parentid:$scope.parentid
					}
			}).success(function(data,status,headers,config){
				
					if(data!="error")
						{
							alertify.success("增加成功");
							setTimeout(function(){$state.go('index.load')},500);
						}
					else{
						alertify.error("增加失败");
					}
			}).error(function(){
			
			}); 
				
}}
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
 
