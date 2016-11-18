var myApp = angular.module('myApp', [
	'ui.router','myCtrls','myServices','myDirectives','ui.bootstrap'
]);
myApp.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/index/indexconfig/welcome');
    $stateProvider
        .state('index', {
            url: '/index',
            views: {
                '': {
                    templateUrl: 'tpls/index.jsp'
                },
                'topbar@index': {
                    templateUrl: 'tpls/topbar.jsp'
                },
                'main@index': {
                    templateUrl: 'tpls/indexconfig.jsp'
                },
            }
        })
		.state('index.indexconfig', {
            url: '/indexconfig',
            views: {
                'main@index': {
                    templateUrl: 'tpls/indexconfig.jsp'
                }
            }
        })
        
        
        .state('index.manager', {
            url: '/indexmanager',
            views: {
                'main@index': {
                    templateUrl: 'tpls/index.manager.jsp'
                }
            }
        })
        
       
         
         //通知公告
          .state('index.manager.changepsw', {
            url: '/changepsw',
            templateUrl: 'tpls/index.changepsw.jsp'
        })
        
        
        .state('index.write', {
            url: '/write',
            views: {
                'main@index': {
                    templateUrl: 'tpls/content.write.jsp'
                }
            }
        })
         .state('index.load', {
            url: '/load',
            views: {
                'main@index': {
                    templateUrl: 'tpls/content.articlelist.jsp'
                }
            }
        })
		//首页管理-欢迎光临
        .state('index.indexconfig.welcome', {
            url: '/welcome',
            templateUrl: 'tpls/welcome.jsp'
        })
        
        //学院动态
          .state('index.indexconfig.xueyuannews', {
            url: '/xueyuannews',
            templateUrl: 'tpls/indexconfig.xueyuannews.jsp'
        })
        
         
        //通知公告
          .state('index.indexconfig.inform', {
            url: '/inform',
            templateUrl: 'tpls/indexconfig.inform.jsp'
        })
        
        //学生工作
          .state('index.indexconfig.studentwork', {
            url: '/studentwork',
            templateUrl: 'tpls/indexconfig.studentwork.jsp'
        })
        
        
         //就业工作
          .state('index.indexconfig.work', {
            url: '/work',
            templateUrl: 'tpls/indexconfig.work.jsp'
        })
        
        //学术动态
          .state('index.indexconfig.xueshunews', {
            url: '/xueshunews',
            templateUrl: 'tpls/indexconfig.xueshunews.jsp'
//            	
        })
        //学术动态
          .state('index.indexconfig.pic', {
            url: '/pic',
            templateUrl: 'tpls/indexconfig.pic.jsp'
//            	
        })
        
        
        
        
         //编辑
          .state('index.indexconfig.rewrite', {
        	url: '/rewrite/:id',
            templateUrl: 'tpls/content.rewrite.jsp'
        })
        
//		//首页管理-图片轮播
//        .state('index.indexconfig.picturecarousel', {
//            url: '/picturecarousel',
//            templateUrl: 'tpls/picturecarousel.jsp'
//        })
//		//首页管理-新闻头条
//        .state('index.indexconfig.headline', {
//            url: '/headline',
//            templateUrl: 'tpls/headline.jsp'
//        })
//		//首页管理-虫业通讯刊物
//        .state('index.indexconfig.journal', {
//            url: '/journal',
//            templateUrl: 'tpls/journal.jsp'
//        })
//		//写虫业刊物
//        .state('index.indexconfig.writejournal', {
//            url: '/writejournal',
//            templateUrl:'tpls/writejournal.jsp'
//        })
//		//首页管理-理事会成员
//        .state('index.indexconfig.council', {
//            url: '/council',
//            templateUrl: 'tpls/council.jsp'
//        })
//		//首页管理-常务理事单位
//        .state('index.indexconfig.managingdirector', {
//            url: '/managingdirector',
//            templateUrl: 'tpls/managingdirector.jsp'
//        })
//		//首页管理-各地虫协
//        .state('index.indexconfig.insectsociety', {
//            url: '/insectsociety',
//            templateUrl: 'tpls/insectsociety.jsp'
//        })
//		//文章发布		
//        .state('index.articles', {
//            url: '/articles',
//			views: {
//                'main@index': {
//                    templateUrl: 'tpls/articlelist.jsp'
//                }
//            }
//        })
//		//管理员设置
//        .state('index.adminsetting', {
//            url: '/adminsetting',
//            views: {
//                'main@index': {
//                    template: '这里是管理员设置'
//                }
//            }
//        })
//		//会员管理
//        .state('index.user', {
//            url: '/user',
//            views: {
//                'main@index': {
//                    template: '这里是会员管理'
//                }
//            }
//        })
//		//系统设置
//        .state('index.settings', {
//            url: '/settings',
//            views: {
//                'main@index': {
//                    template: '这里是系统设置'
//                }
//            }
//        })
//		//文章发布
//        .state('index.write', {
//            url: '/write',
//            views: {
//                'main@index': {
//                    templateUrl: 'tpls/write.jsp'
//                }
//            }
//        })
//		//文章编辑
//        .state('index.rewrite', {
//            url: '/{articleId:[0-9]{1,4}}',
//            views: {
//                'main@index': {
//                    templateUrl: 'tpls/rewrite.jsp'
//                }
//            }
//        })
});
  