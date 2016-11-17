<?php 
try{
	$pdo = new PDO("mysql:host=localhost;dbname=read;","root","");
}catch(PDOException $e){
	die("数据库连接失败".$e->getMessage());
}
?>