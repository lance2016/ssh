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
$(document).ready(function(){
	$.ajax({

             type: "GET",
             url: "/sdiia/ajax/islogin.action",
             success: function(data){
				console.log(data);
				if(data == '0')
				{
					reset();
					alertify.alert("检测到您未登录，请登录后使用",function(){
						window.location = "/sdiia/login/login.jsp";
					});
				}
			 }
         });
    });

