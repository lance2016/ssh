package action;

import java.io.IOException;
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
	 @Resource
	    INavService NavService;
	  @Resource
	  	IAllContentService AllContentService;
		private HttpServletRequest request = ServletActionContext.getRequest();
	    List<Nav> NavList;
	    List<AllContent>AllContentList;
	    private AllContent AllContent=new AllContent();
	    String result;
	    
	    
	    public String list() throws IOException{
	    	String id=request.getParameter("id");
			  Map<String,Object> map = new HashMap<String,Object>();
			  try {
					AllContentList= AllContentService.querybyparentid(id);//导航栏
				} catch (Exception e) {
						e.printStackTrace();	
				}
			     map.put("AllContentList", AllContentList);         
		      JSONObject json = JSONObject.fromObject(map);//将map对象转换成json类型数据
		        result = json.toString();//给result赋值，传递给页
		        System.out.println(result);
		
		
		return "success";
		}
	    
	    public String getNum(){
	    	result="10";
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
				String link=request.getParameter("link");
				String time=request.getParameter("time");
				int important=Integer.parseInt(request.getParameter("important"));
				int visitedtime=Integer.parseInt(request.getParameter("visitedtime"));
				String parentid=request.getParameter("parentid");
				
				
				AllContent.setTitle(title);
				AllContent.setContent(content);
				AllContent.setImportant(important);
				AllContent.setLink(link);
				AllContent.setParentid(parentid);
				AllContent.setTime(time);
				AllContent.setVisitedtime(visitedtime);
				
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
				System.out.println(AllContent.getContent());
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


	

	    
	    
}
