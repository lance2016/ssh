<%@ page  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html >
<head>

<title>图书信息管理</title>
<style>
  body{
      text-align:center;
  }
  th,td{
  border:2px solid gray;
  text-align:center;
  padding:3px 10px;
  }
  table{
  border-collapse:collapse; 
  margin:0 auto;
  }
 </style>
 <script language="javascript">
  function update(id,username,nickname,password){
	  
   var updateuser= document.getElementById("updateuserForm");
   updateuser.id.value=id;
   updateuser.password.value=password; 
  updateuser.username.value=username;
  updateuser.nickname.value=nickname; 
 }
  </script>
</head>

<body>
 <h2>图书信息管理</h2>
  <table >
   <tr><th>ID</th><th>账户</th><th>昵称</th><th>密码</th><th>修改</th><th>删除</th></tr>
 <c:forEach items="${userList}" var="user">
 <tr>
        <td>${user.id}</td>
        <td>${user.username}</td>
        <td>${user.nickname}</td>
        <td>${user.password}</td>
        <td><a href="javascript:update('${user.id}','${user.username}','${user.nickname}','${user.password }');">修改</a> </td>
        <td><a href="user_delete.action?id=${user.id}" onclick="return confirm('确实要删除该 记录吗？')">删除</a> </td> 
  </tr>
 </c:forEach>
 </table>
 
 <br/>
 <table>
 <tr><td>
<form action="user_add.action" method="post"  >
    <table>
      <tr><td>ID</td><td><input type="text" name="user.id"  /></td></tr>
    <tr><td>账户</td><td><input type="text" name="user.username" /></td></tr>
     <tr><td>昵称</td><td><input type="text" name="user.nickname"  /></td></tr>
     <tr><td>密码</td><td><input type="password" name="user.password"  /></td></tr>
     <tr><td><input type="submit" value="添加"/>
     </td><td><input type="reset" value="重置"/></td></tr>
     
    </table>
    </form>    
    </td>
    
    <td>
    <form action="user_update.action" method="post" id="updateuserForm">
   <table>
 
    <tr><td>账户</td><td><input type="text" name="user.username"  id="username"/></td></tr>
     <tr><td>昵称</td><td><input type="text" name="user.nickname" id="nickname" /></td></tr>
       <tr><td>密码</td><td><input type="text" name="user.password" id="password" /></td></tr>
     <tr><td><input type="submit" value="更新"/></td><td><input type="reset" value="重置"/></td></tr>
   
    </table>
     <input type="hidden" name="user.id" id="id" />
    </form>
    </td>
    </tr>
    </table>
 
  
</body>
</html>
