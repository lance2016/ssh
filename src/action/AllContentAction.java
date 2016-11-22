package action;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import service.IAllContentService;
import service.INavService;
import vo.AllContent;
import vo.Nav;

@SuppressWarnings("serial")
@Controller
@Scope("request")
public class AllContentAction extends ActionSupport  {
	private HttpServletRequest request = ServletActionContext.getRequest();
	 @Resource
	    INavService NavService;
	  @Resource
	  	IAllContentService AllContentService;
	  
	    List<Nav> NavList;
	    List<AllContent>AllContentList;
	    private Nav Nav=new Nav();
	    private AllContent AllContent=new AllContent();
	    String result;
	    
	    
	    public String list() throws IOException{
	    	String id=request.getParameter("id");
			
			  try {
					AllContentList= AllContentService.querybyparentid(id);//导航栏
				} catch (Exception e) {
						e.printStackTrace();	
				}
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("AllContentList", AllContentList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
		      //  System.out.println(result);
		
		
		return "success";
		}
	    
	    //ajax 总记录
	    public String getNum(){
	    	String table=request.getParameter("table");
	    	String id=request.getParameter("id");
	    	int a=AllContentService.getnum(table, id);
	    
	    	  Map<String,Object> map = new HashMap<String,Object>();
	    	  map.put("num", a);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
		        
	    	return "success";
	    }
	    
	    public String listpage() throws IOException{
	    	
	    	String id=request.getParameter("id");
	    	String table=request.getParameter("table");
	    	int start=Integer.parseInt(request.getParameter("start"));
	    	int size=Integer.parseInt(request.getParameter("size"));
			  Map<String,Object> map = new HashMap<String,Object>();
			  try {
					AllContentList= AllContentService.list(table, id, start, size);//导航栏
				} catch (Exception e) {
						e.printStackTrace();	
				}
			     map.put("AllContentList", AllContentList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
		
		
		return "success";
		}
	    
	    public String queryContent()throws IOException{
	    	int id=Integer.parseInt(request.getParameter("id"));
		  Map<String,Object> map = new HashMap<String,Object>();
		  try {
				AllContentList= AllContentService.queryone(id);//导航栏
			} catch (Exception e) {
					e.printStackTrace();
			}
		     map.put("AllContentList", AllContentList);         
	      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
	        result = json.toString();//给result赋值，传递给页
	       
	return "success";
	}
	    
	    
	    
	    
	    
	  
	    
	    public String add() {
			try {
				String title=request.getParameter("title");
				String content=request.getParameter("content");
				String time=request.getParameter("time");
				int important=Integer.parseInt(request.getParameter("important"));
				String parentid=request.getParameter("parentid");
				System.out.println(parentid);
				AllContent.setTitle(title);
				AllContent.setContent(content);
				AllContent.setImportant(important);
				AllContent.setLink("1");
				AllContent.setParentid(parentid);
				AllContent.setTime(time);
			
				
				AllContentService.add(AllContent);
				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}
	    
	    
	    
		public String update() {
			try {
				
				int id=Integer.parseInt(request.getParameter("id"));
				String title=request.getParameter("title");
				String content=request.getParameter("content");
				String link=request.getParameter("link");
				String time=request.getParameter("time");
				int important=Integer.parseInt(request.getParameter("important"));
				int visitedtime=Integer.parseInt(request.getParameter("visitedtime"));
				String parentid=request.getParameter("parentid");
				
				AllContent.setId(id);
				AllContent.setTitle(title);
				AllContent.setContent(content);
				AllContent.setImportant(important);
				AllContent.setLink(link);
				AllContent.setParentid(parentid);
				AllContent.setTime(time);
				AllContent.setVisitedtime(visitedtime);
				
				AllContentService.update(AllContent);
				//System.out.println(AllContent.getContent());
				return "success";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}

		
		//updatenav
		public String updatenav() {
			try {
				
				String id=request.getParameter("id");
				String name=request.getParameter("name");
				String parentid=request.getParameter("parentid");
				String link=request.getParameter("link");
			
				Nav.setId(id);
				Nav.setName(name);
				Nav.setParentid(parentid);
				Nav.setLink(link);
				
				NavService.update(Nav);
				return "success";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}

		public String addnav() {
			try {
				
				String id=request.getParameter("id");
				String name=request.getParameter("name");
				String parentid=request.getParameter("parentid");
				String link=request.getParameter("link");
				System.out.println("+++++++++++++++++++++++++++-----------------------"+link);
				System.out.println("+++++++++++++++++++++++++++-----------------------"+link.equals("static"));
				//如果是静态页面，默认生成一个静态内容，便于修改
				if(link.equals("static")){
					AllContent.setLink("#");
					AllContent.setParentid(id);
					AllContent.setTitle(name);
					SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
					System.out.println("+++++++++++++++++++++++++++-----------------------");
					AllContent.setTime(df.format(new Date()));
					AllContentService.add(AllContent);
				}
							
				NavService.add(id,name,link,parentid);
				return "success";
				
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}

		public String delete() {
			int id=Integer.parseInt(request.getParameter("id"));
			try {
				AllContentService.delete(id);
				result="success";
				return "success";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}
		
		
		public String deletenav(){
				String id=request.getParameter("id");
				//System.out.println("++++++++++++++++++"+id);
				try {
					NavService.deletenavbyparentid(id);
					AllContentService.deletebyparentid(id);//删除二级节点的内容
					NavService.delete(id);//删除二级节点的情况
					
					result="success";
					return "success";
				} catch (Exception e) {
					e.printStackTrace();
					return "error";
				}
		}
		
		
		
		public String findnav(){
			NavList=NavService.findnav();
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("NavList", NavList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
			return "success";
			
		}
		
		public String findstaticnav(){
			NavList=NavService.findstaticnav();
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("NavList", NavList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
			return "success";
			
		}
		
		//查找所有导航栏元素
		public String findall(){
			NavList=NavService.findall();
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("NavList", NavList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
			return "success";
		}
		
		
		//加载所有导航栏元素
		public String  loadall(){
			NavList=NavService.loadall();
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("NavList", NavList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
			return "success";
			
		}
		
		//加载一个节点
		public String queryone(){
			String id=request.getParameter("id");
			NavList=NavService.queryone(id);
			  Map<String,Object> map = new HashMap<String,Object>();
			     map.put("NavList", NavList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
		        System.out.println(result);
			return "success";
		}
		
	
		
		//搜索
		public String search(){
			String keywords=request.getParameter("keywords");
			AllContentList=AllContentService.search(keywords);
			 Map<String,Object> map = new HashMap<String,Object>();
		     map.put("AllContentList", AllContentList);         
	      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
	      result = json.toString();//给result赋值，传递给页
		//	System.out.println("+++++++++++++++++++"+keywords);
			
			return "success";
		}
		public INavService getNavService() {
			return NavService;
		}

		public void setNavService(INavService navService) {
			NavService = navService;
		}

		public IAllContentService getAllContentService() {
			return AllContentService;
		}

		public void setAllContentService(IAllContentService allContentService) {
			AllContentService = allContentService;
		}

		public List<Nav> getNavList() {
			return NavList;
		}

		public void setNavList(List<Nav> navList) {
			NavList = navList;
		}

		public List<AllContent> getAllContentList() {
			return AllContentList;
		}

		public void setAllContentList(List<AllContent> allContentList) {
			AllContentList = allContentList;
		}

		public AllContent getAllContent() {
			return AllContent;
		}

		public void setAllContent(AllContent allContent) {
			AllContent = allContent;
		}

		public String getResult() {
			return result;
		}
		

		public void setResult(String result) {
			this.result = result;
		}

		public Nav getNav() {
			return Nav;
		}

		public void setNav(Nav nav) {
			Nav = nav;
		}

	
	    
	    
}
