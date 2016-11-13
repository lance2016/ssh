var myCtrls = angular.module('myCtrls',[]);

//加载新闻头条设置面板
myCtrls.controller('LoadHeadline',['$scope','$http','msgBox',
	function($scope,$http,msgBox){
		var saveData = ''; //用于保存所有的新闻信息，便于加载更多
		//请求新闻列表
		$http({
			method:'GET',
			url:'/sdiia/ajax/listNews.action',
			params: {id:10}
		}).success(function(data,status,headers,config){
			data = eval("("+data+")"); 
			data = angular.fromJson(data);
			saveData = data;
			if(data.length > 10);
				data = data.slice(0,10);
			$scope.news = data; 
		}).error(function(data,status,headers,config){
			
		});
		//取得当前头条（刷新）
		$scope.getTopNew = function(){
			$http({
				method:'GET',
				url:"/sdiia/ajax/topNew.action"
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);	
				$scope.topNew = data.title;
				$scope.topNewTime = data.time;
			}).error(function(){

			}); 
		}
		$scope.getTopNew();
		//设置头条
		$scope.setTopNews = function(id){
			var url = "/sdiia/ajax/SetTopNews.action"; 
			$http({
				method:'GET',
				url:url,
				params: {aid:id}
			}).success(function(){
				msgBox.msg('操作成功');
				$scope.getTopNew();
			}).error(function(){
				msgBox.msg('操作失败');
			}); 
		}
		//加载更多
		$scope.loadMoreNews = function(){
			$scope.news = saveData; 
		}
	}
]);

//虫业通讯刊物
myCtrls.controller('LoadJournal',['$scope','$http','$window',
	function($scope,$http,$window){
		$scope.load = function(){
 			$http({
				method:'GET',
				url:'/sdiia/ajax/listArticle.action?id=20',
			}).success(function(data,status,headers,config){

				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data;
			}).error(function(data,status,headers,config){
			}); 
		}
		$scope.load();
		//删除刊物
		$scope.DeleteArticle = function(id){
			reset();
			var r = alertify.confirm("确定要删除吗?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/sdiia/ajax/deleteArticle.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						alertify.success("删除成功");
						$scope.load();
						
					}).error(function(data,status,headers,config){
						alertify.error("删除失败,请检查网络连接");
					});						
				} else {
					alertify.error("操作取消");
				}
			}); 			
		}
	}
]);

//理事会成员管理
myCtrls.controller('EditCouncil',['$scope','$http','msgBox',
	function($scope,$http,msgBox){
		//初始化理事会成员
		$scope.load = function(){
			$http({
				method:'GET',
				url:'/sdiia/ajax/listArticle.action?id=21', //21是常务理事会成员的栏目名
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data;
				
				CKEDITOR.replace('CouncilEditor');
				CKEDITOR.instances.CouncilEditor.setData(data[0].content);

			}).error(function(data,status,headers,config){
			});						
		}
		$scope.load();
		//理事会成员提交
		$scope.Submit = function(){			
			//转换JSON的方法
			var transform = function(data){
				return $.param(data);
			}
			//取得文本编辑器的值
			$scope.content = $('.cke_wysiwyg_frame').contents().find('.cke_editable').html();

			$http.post("/sdiia/ajax/updateArticle.action",
				{title:'理事会',author:'haha',mid:'21',content:$scope.content,id:$scope.articles[0].id}, 
				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
				transformRequest: transform
			}).success(function(data,status,headers,config){

				msgBox.msg(data);
				$scope.load();
			}).error(function(data,status,headers,config){
			}); 
		}

	}
]);

//编辑常务理事单位
myCtrls.controller('EditManager',['$scope','$http','msgBox',
		function($scope,$http,msgBox){
		//加载常务理事单位
		$scope.load = function(){
			$http({
				method:'GET',
				url:'/sdiia/ajax/listArticle.action?id=17', //17是常务理事单位的栏目名
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data;
			}).error(function(data,status,headers,config){
				
			});						
		}
		$scope.load();		
		//添加常务理事单位
		$scope.add = function(){
			//转换JSON的方法
			var transform = function(data){
				return $.param(data);
			} 		
			$http.post("/sdiia/ajax/saveArticle.action",
				{title:$scope.postArticle,author:'1',mid:'17',content:'1'}, 
				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
				transformRequest: transform
			}).success(function(data,status,headers,config){

				msgBox.msg(data);
				$scope.postArticle = '';
				$scope.load();
			}).error(function(data,status,headers,config){
				msgBox.msg("服务器繁忙");
			}); 			
		}
		//删除常务理事单位
		$scope.remove = function(idx,id){
			 $scope.articles.splice(idx,1);
			$http({
				method:'GET',
				url:"/sdiia/ajax/deleteArticle.action",
				params: {id:id},
			}).success(function(data,status,headers,config){
				msgBox.msg(data);
				$scope.load();
			}).error(function(data,status,headers,config){
			}); 			
		}		
	}
]);

//各地虫协
myCtrls.controller('EditInset',['$scope','$http','msgBox',
		function($scope,$http,msgBox){
		//加载各地虫协
		$scope.load = function(){
			$http({
				method:'GET',
				url:'/sdiia/ajax/listArticle.action?id=18', //18是各地虫协
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data;
			}).error(function(data,status,headers,config){
			});						
		}
		$scope.load();		
		//添加各地虫协
		$scope.add = function(){
			//转换JSON的方法
			var transform = function(data){
				return $.param(data);
			} 		
			$http.post("/sdiia/ajax/saveArticle.action",
				{title:$scope.postArticle,author:'1',mid:'18',content:'1'}, 
				{headers: { 'Content-Type': 'application/x-www-form-urlencoded; charset=UTF-8'},
				transformRequest: transform
			}).success(function(data,status,headers,config){
				msgBox.msg(data);
				$scope.postArticle = '';
				$scope.load();
			}).error(function(data,status,headers,config){
				msgBox.msg("服务器繁忙");
			}); 			
		}
		//删除各地虫协
		$scope.remove = function(idx,id){
			 $scope.articles.splice(idx,1);
			$http({
				method:'GET',
				url:"/sdiia/ajax/deleteArticle.action",
				params: {id:id},
			}).success(function(data,status,headers,config){
				msgBox.msg(data);
				$scope.load();
			}).error(function(data,status,headers,config){
			}); 			
		}		
	}
]);

//加载图片轮播设置
myCtrls.controller('LoadPictureCarousel',['$scope','$http','msgBox',
	function($scope,$http,msgBox){
		$scope.load = function(){
			$http({
				method:'GET',
				url:'json/pic.json'
			}).success(function(data,status,headers,config){
				data = angular.fromJson(data);
				$scope.pics = data; 
			}).error(function(data,status,headers,config){
			});
		}	
		$scope.load();	
		$scope.Submit = function(id){
			document.getElementById(id).contentWindow.Submit();
			$scope.load();	
		}
	}
]);

//加载文章发布板块
myCtrls.controller('LoadArticle',['$scope','$http','$window',
	function($scope,$http,$window){
		//默认设置
        $scope.value = '10';
		$scope.LoadById = function(id){		
			//向后台请求是否包括头条的参数
			var flag = 1;
			$scope.value = id;
			$http({
				method:'GET',
				url:'/sdiia/ajax/listArticle.action',
				params: {id:id,flag:flag}
			}).success(function(data,status,headers,config){
				data = eval("("+data+")"); 
				data = angular.fromJson(data);
				$scope.articles = data; 
			}).error(function(data,status,headers,config){
			}); 
		}
		$scope.LoadById($scope.value);
		//删除文章
		$scope.DeleteArticle = function(id){
			reset();
			var r = alertify.confirm("确定要删除吗?",function (e){
				if (e) {
					$http({
						method:'GET',
						url:'/sdiia/ajax/deleteArticle.action',
						params: {id:id}
					}).success(function(data,status,headers,config){
						alertify.success("删除成功");
						$scope.LoadById($scope.value);
					}).error(function(data,status,headers,config){
						alertify.error("删除失败,请检查网络连接");
					});						
				} else {
					alertify.error("操作取消");
				}
			}); 			
		}
	}
]);

//写文章
myCtrls.controller('WriteArticle',['$scope','$http','$state','msgBox',
	function($scope,$http,$state,msgBox){
		
		CKEDITOR.replace('WriteArticleEditor');	
		//文章提交
		$scope.Submit = function(title,author,mid){			
			//转换JSON的方法
			var transform = function(data){
				return $.param(data);
			};
			//取得文本编辑器的值
			$scope.content = $('.cke_wysiwyg_frame').contents().find('.cke_editable').html();
			$http.post("/sdiia/ajax/saveArticle.action",
				{title:title,author:author,mid:mid,content:$scope.content}, 
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
 
