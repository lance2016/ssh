package action;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.IUserService;
import sun.misc.BASE64Encoder;
import vo.User;

import com.opensymphony.xwork2.ActionSupport;
@SuppressWarnings("serial")
@Controller
@Scope("request")
public class UserAction extends ActionSupport implements SessionAware {
	
	 @Resource
	 IUserService UserService;
	 
	 List<User> UserList;
	 User User;
	 private String result;
	 Map<String, Object> session;
	 private HttpServletRequest request = ServletActionContext.getRequest();
	
	public IUserService getUserService() {
		return UserService;
	}
	public void setUserService(IUserService userService) {
		UserService = userService;
	}
	
	 public String changepsw(){
		 Map<String,Object> map = new HashMap<String,Object>();
		 int id=Integer.parseInt(request.getParameter("id"));
		 String p=request.getParameter("p");
		 String p1=request.getParameter("p1");
		 String p2=request.getParameter("p2");
		 System.out.println(id+" "+p+" "+p1+"  "+p2);
		
		 UserList=UserService.check(id,p);
		
			if(UserList.size()==1) {
				if(p1.equals(p2)){
					UserService.update(id, p1);
					 result="success";
				}
				else result="not equal";
			}
			else
				result="wrong password";
			
			   map.put("result", result);         
			      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
			        result = json.toString();//给result赋值，传递给页
	
		return "success";
	 }
	public String login(){
	
		UserList=UserService.query(User.getId());
		if(UserList.size()==1){
			System.out.println("md5密码："+UserService.MD5("20143679"));
			if(UserService.MD5(User.getPassword()).equals(UserList.get(0).getPassword())) 
				{
					session.put("user", UserList.get(0).getName());
					HttpSession s = request.getSession();
					s.setAttribute("login", "1");
				return "success";
				}
			else 
				return "error";
		}
		else
			return "error";
	}
	
	
	public List<User> getUserList() {
		return UserList;
	}
	public void setUserList(List<User> userList) {
		UserList = userList;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	public User getUser() {
		return User;
	}
	public void setUser(User user) {
		User = user;
	}
	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		this.session=arg0;
	}
	
	 public String islogin()
	  {
	    HttpSession session = request.getSession();
	    if (session.getAttribute("login") == null) {
	      this.result = "0";
	    }
	    else {
	      this.result = "1";
	    }
	    return "success";
	  }
	 
	  public String logoff() {
	    HttpServletRequest request = ServletActionContext.getRequest();
	    HttpSession session = request.getSession();
	    session.removeAttribute("login");
	    return "success";
	  }
	  
	  
	 
	

}
