var myApp = angular.module('myApp', [
	'ui.router','myCtrls','myServices','myDirectives'
]);

myApp.config(function($stateProvider, $urlRouterProvider) {
    $urlRouterProvider.otherwise('/index/indexconfig/welcome');
    $stateProvider
        .state('index', {
            url: '/index',
            views: {
                '': {
                    templateUrl: 'tpls/index.html'
                },
                'topbar@index': {
                    templateUrl: 'tpls/topbar.html'
                },
                'main@index': {
                    templateUrl: 'tpls/indexconfig.html'
                },
            }
        })
		.state('index.indexconfig', {
            url: '/indexconfig',
            views: {
                'main@index': {
                    templateUrl: 'tpls/indexconfig.html'
                }
            }
        })
		//首页管理-欢迎光临
        .state('index.indexconfig.welcome', {
            url: '/welcome',
            templateUrl: 'tpls/welcome.html'
        })
		//首页管理-图片轮播
        .state('index.indexconfig.picturecarousel', {
            url: '/picturecarousel',
            templateUrl: 'tpls/picturecarousel.html'
        })
		//首页管理-新闻头条
        .state('index.indexconfig.headline', {
            url: '/headline',
            templateUrl: 'tpls/headline.html'
        })
		//首页管理-虫业通讯刊物
        .state('index.indexconfig.journal', {
            url: '/journal',
            templateUrl: 'tpls/journal.html'
        })
		//写虫业刊物
        .state('index.indexconfig.writejournal', {
            url: '/writejournal',
            templateUrl:'tpls/writejournal.html'
        })
		//首页管理-理事会成员
        .state('index.indexconfig.council', {
            url: '/council',
            templateUrl: 'tpls/council.html'
        })
		//首页管理-常务理事单位
        .state('index.indexconfig.managingdirector', {
            url: '/managingdirector',
            templateUrl: 'tpls/managingdirector.html'
        })
		//首页管理-各地虫协
        .state('index.indexconfig.insectsociety', {
            url: '/insectsociety',
            templateUrl: 'tpls/insectsociety.html'
        })
		//文章发布		
        .state('index.articles', {
            url: '/articles',
			views: {
                'main@index': {
                    templateUrl: 'tpls/articlelist.html'
                }
            }
        })
		//管理员设置
        .state('index.adminsetting', {
            url: '/adminsetting',
            views: {
                'main@index': {
                    template: '这里是管理员设置'
                }
            }
        })
		//会员管理
        .state('index.user', {
            url: '/user',
            views: {
                'main@index': {
                    template: '这里是会员管理'
                }
            }
        })
		//系统设置
        .state('index.settings', {
            url: '/settings',
            views: {
                'main@index': {
                    template: '这里是系统设置'
                }
            }
        })
		//文章发布
        .state('index.write', {
            url: '/write',
            views: {
                'main@index': {
                    templateUrl: 'tpls/write.html'
                }
            }
        })
		//文章编辑
        .state('index.rewrite', {
            url: '/{articleId:[0-9]{1,4}}',
            views: {
                'main@index': {
                    templateUrl: 'tpls/rewrite.html'
                }
            }
        })
});
  