<?php
include "conn.php";//连接数据库文件格式要设置成utf-8无bom格式，不知道什么鬼
//2.通过action的值做地应操作
$pdo->query("SET NAMES utf8");
switch($_GET['action']){
//登录验证 
	 case "login":
		$username=$_GET['user'];
		$password=$_GET['password'];
		$sql="select * from admin where id='".$username."'";
		$stmt = $pdo->query($sql);
			$row=$stmt->fetch();
				$pwd=$row['password'];
		if(!empty($stmt) AND $stmt->rowCount() >0&&password_verify($password,$pwd)){
			session_start();
			$_SESSION['user']=$username;
			date_default_timezone_set("Asia/Shanghai");
			$nowtime=gmdate('H:i:s:ms',time()); 
			$_SESSION['session_id']=$username.$nowtime;
			/* 多账号同时登录 */
			$sql1="update  admin set session_id='".$username.$nowtime."' where id='".$username."'";
			$rw = $pdo->exec($sql1);
			
			echo '登陆成功';
		}
		else 
			echo "用户名或密码错误".$stmt;
			$pdo=null;
	 break;
	 case "zhuxiao":
	 	session_start();
	 	unset($_SESSION['user']);
		echo '<script>location.href="../#/index/main/welcome"</script>';
			$pdo=null;
	 break;
	 
//addbook操作
	case "addbook":
	$bookid = $_GET['bookid'];
	$bookname = $_GET['bookname'];
	$author = $_GET['author'];
	$press = $_GET['press'];
	$price = $_GET['price'];
	$memo = $_GET['memo'];
		$sql = "insert into book values('".$bookid."',  '".$bookname."',  '".$author."',  '".$press."', '".$price."', '".$memo."')";
		$rw = $pdo->exec($sql);
		if($rw>0){
				echo ('增加成功');
		}else{
			echo ('增加失败');
		} 
			$pdo=null;
		
	break;
	 
	 

	  
	 
	case "del": //删除操作
		
		$title = $_GET['title'];
		$src = $_GET['src'];
		$sql = "delete from img where src='".$src."'";
		$pdo->exec($sql);
		 unlink('../../'.$src);
		 // echo '<script>location.href="../#/index/main/welcome"</script>';
		// echo $sql;
		 	$pdo=null;
	break;
	
	
	
	case "show"://展示书籍
		$pageNo=$_GET['pageNo'];
		$pageSize=$_GET['pageSize'];
		$sql = "select * from img order by shunxu desc limit ".$pageNo.",".$pageSize;		
		$data=$pdo->query($sql)->fetchAll();
		$paodata = json_encode($data);
		 echo $paodata;
		 	$pdo=null;
		
	break;
	
	
	
	case "showTotal"://计数
		$sql = "select count(*) num from img";
		$q = $pdo->query($sql);
		$rows = $q->fetch();
		$rowCount = $rows[0];
				echo	$rowCount; 
					$pdo=null;

	break;
	
	
	
	
	case "search"://搜索
		$select = $_GET['select'];
		$keywords = $_GET['keywords'];
	 	$sql = "select * from img where ".$select." like '%".$keywords."%'";
		  $stmt = $pdo->query($sql);
			if(!empty($stmt) AND $stmt->rowCount() > 0){
				 $datas=$pdo->query($sql)->fetchAll();
				$paodata = json_encode($datas);
				echo $paodata; 
			 }
			 else{
				echo ("失败");
			}    
				$pdo=null;
	break;
	
	
//编辑书籍	
	case "editbook":
		$pdo->query("SET NAMES utf8");
		 $title = $_GET['title'];
		 $sql = "select * from img where title='".$title."'";
		 $data=$pdo->query($sql)->fetchAll();
		  $paodata = json_encode($data);
		  echo $paodata;		
			$pdo=null;
	break;
	
	case "update":
		$pdo->query("SET NAMES utf8");
		$shunxu=$_GET['shunxu'];
		$src = $_GET['src'];
		$title = $_GET['title'];
		$author = $_GET['author'];
		$press = $_GET['press'];
		$date = $_GET['date'];
		$intro = $_GET['intro'];
		$content= $_GET['content'];
		$catalog= $_GET['catalog'];
		$id = $_GET['id'];
 $sql = "update img set title='".$title."',author='".$author."',press='".$press."',date='".$date."' ,intro='".$intro."' ,content='".$content."',catalog='".$catalog."',shunxu='".$shunxu."' where title='".$id."'"; 
		 $rw = $pdo->exec($sql);
		 if($rw>0){
				 echo ('更新成功');
		 }else{
			 echo ('更新失败');
		 } 
	$pdo=null;



}

