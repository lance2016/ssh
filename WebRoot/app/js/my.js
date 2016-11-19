//���õ�����
function reset () {
	$("#toggleCSS").attr("href", "css/alertify.default.css");
	alertify.set({
		labels : {
			ok     : "OK",
			cancel : "Cancel"
		},
		delay : 5000,
		buttonReverse : false,
		buttonFocus   : "ok"
	});
}
reset();
//注销
function Exit(){
	alertify.confirm("确定要注销吗?",function (e){
		if(e){
			$.ajax({
				type: "GET",
		        url: "/ssh/ajax/logoff.action",
		        success: function(data){
		        	alertify.success("注销成功");
		        	setTimeout(function(){window.location = "/ssh/app/login.jsp";},1000);
		        }
			});
		}
		else{
			alertify.error("操作取消");
		}
	});
}
		
		
		
      
//				reset();
//				alertify.confirm("确定要注销吗?",function (e){
//					if (e) {
//						window.location = "/ssh/app/login.jsp";
//					} else {
//						alertify.error("操作取消");
//					}
//				}); 	
//			}
//    });	
//}

$(document).ready(function(){
	$.ajax({

             type: "GET",
             url: "/ssh/ajax/islogin.action",
             success: function(data){
				if(data == '0')
				{
					reset();
					alertify.alert("检测到您未登录，请登录后使用",function(){
						window.location = "/ssh/app/login.jsp";
					});
				}
			 }
         });
});