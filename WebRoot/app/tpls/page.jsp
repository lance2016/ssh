<html>
<head>
 <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="http://www.w3cschool.cc/try/angularjs/1.2.5/angular.min.js"></script>
<script src="http://cdn.bootcss.com/angular-ui-bootstrap/0.11.2/ui-bootstrap-tpls.js"></script>
</head>



<body ng-app="myApp" style="background:#4A4A4A; overflow:hidden;" class="row" >
    <div style="color:#fff; font-size:30px; font-weight:bold; text-shadow:3px 3px 3px #ccc;-webkit-text-shadow:3px 3px 3px #ccc; text-align:center; margin-top:30px;">FE-演示平台</div>
    <section class="row">
        <section ng-controller="pageDemo" class="col-md-6" style="margin:40px auto; float:none; background:#fff; padding:30px;">
            <h4>默认：</h4>
           
            <pagination boundary-links="true" total-items="totalItems" ng-model="currentPage" class="pagination-sm" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"> //boundary-links 是否显示首尾按钮  
            </pagination>
            <pagination direction-links="true" boundary-links="true" total-items="totalItems" ng-model="currentPage"></pagination> // direction-links 是否显示上下按钮 
            
            <pre>当前页：{{currentPage}}</pre> //取值
            <hr>
            <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages"></pagination> // max-size  显示最大页数
  
            <pre>当前：{{bigCurrentPage}}/{{numPages}}</pre>
        </section>
  
    </section>
  
</body>


    <div style="color:#fff; font-size:30px; font-weight:bold; text-shadow:3px 3px 3px #ccc;-webkit-text-shadow:3px 3px 3px #ccc; text-align:center; margin-top:30px;">FE-演示平台</div>
    <section class="row">
        <section ng-controller="pageDemo" class="col-md-6" style="margin:40px auto; float:none; background:#fff; padding:30px;">
            <h4>默认：</h4>
            <pagination total-items="totalItems" ng-model="currentPage" ng-change="pageChanged()" previous-text="上一页" next-text="下一页"></pagination>  previous-text 上一页文本, 
            <pagination boundary-links="true" total-items="totalItems" ng-model="currentPage" class="pagination-sm" previous-text="&lsaquo;" next-text="&rsaquo;" first-text="&laquo;" last-text="&raquo;"> //boundary-links 是否显示首尾按钮  
            </pagination>
            <pagination direction-links="true" boundary-links="true" total-items="totalItems" ng-model="currentPage"></pagination> // direction-links 是否显示上下按钮 
            <pagination direction-links="false" total-items="totalItems" ng-model="currentPage" num-pages="smallnumPages"></pagination>  // num-pages 显示总数的可选表达式
            <pre>当前页：{{currentPage}}</pre> //取值
            <hr>
            <pagination total-items="bigTotalItems" ng-model="bigCurrentPage" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages"></pagination> // max-size  显示最大页数
  
            <pre>当前：{{bigCurrentPage}}/{{numPages}}</pre>
        </section>
  
    </section>
  
</body>
<script>
    angular.module('myApp',['ui.bootstrap']).controller('pageDemo',function($scope){  //这段脚本除了声明了依赖关系跟几个值几乎没做什么工作，
        $scope.maxSize = 7;    // 显示最大页数
        $scope.totalItems = 100; // 总条数
        $scope.currentPage = 1;//当前页取值
        $scope.bigTotalItems = 100;
        $scope.bigCurrentPage = 1;
    })
</script>