package action;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;



import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;




import service.IAllContentService;
import service.INavService;
import vo.AllContent;
import vo.Nav;

@Controller
@Scope("request")
public class QuerySecondPageAction {
	
	private HttpServletRequest request = ServletActionContext.getRequest();
	   @Resource
	    INavService NavService;
	   @Resource
	   	IAllContentService AllContentService;
	   List<Nav> NavList;
	   List<Nav>NavLeftList;
	   List<Nav>NavListTwo;
	   List<Nav> LocationList;
	   
	   List<AllContent>AllContentList;
	   private static String id;
	   Nav Nav;
	   String leftid;
	   private String result;
	   private Map<String, Object> dataMap;  
	   

		public String query() {
			HttpSession s = request.getSession();
			 id=request.getParameter("id");
			 int pagesize=2;
			 int pagenum=Integer.parseInt(request.getParameter("pagenum"));
			try {
				
				NavLeftList=NavService.querybyparentid(id);
				
				NavList = NavService.query();//导航栏
				NavListTwo=NavService.findtwo();
				LocationList=NavService.queryone(NavLeftList.get(0).getId());//查询位置
				
				
				AllContentList=AllContentService.list("AllContent", NavLeftList.get(0).getId(), (pagenum-1)*pagesize, pagesize);//最初加载左侧第一个的内容
				if(AllContentList.size()==0){
					AllContentList=null;
				}
				
				int totalNum=AllContentService.getnum("AllContent", NavLeftList.get(0).getId());//总条数
				int pageCount=(totalNum+1)/2;//总页数
				int pageNo=pagenum;//当前页
				s.setAttribute("pageCount",pageCount);//leftid
				s.setAttribute("pageNo", pageNo);
				s.setAttribute("totalNum",totalNum);
				
				return "querysecondsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}
		
		public String changequery() {
		
			int pagesize=2;//每页两条
			NavListTwo=NavService.findtwo();
			HttpSession s = request.getSession();
			leftid=request.getParameter("leftid");//左侧选择的id
			int pagenum=Integer.parseInt(request.getParameter("pagenum"));
			try {
					NavList = NavService.query();//导航栏
					id= leftid.substring(0,1);
					NavLeftList=NavService.querybyparentid(id);
					
					LocationList=NavService.queryone(leftid);
					
					AllContentList=AllContentService.list("AllContent",leftid,(pagenum-1)*pagesize,pagesize);
					if(AllContentList.size()==0){
						AllContentList=null;
					}
					int totalNum=AllContentService.getnum("AllContent", leftid);//总条数
					int pageCount=(totalNum+1)/2;//总页数
					int pageNo=pagenum;//当前页
					s.setAttribute("pageCount",pageCount);//leftid
					s.setAttribute("pageNo", pageNo);
					s.setAttribute("totalNum",totalNum);
					//2条记录每页
				
					
				return "querysecondsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}
		

		

		public List<Nav> getNavListTwo() {
			return NavListTwo;
		}

		public void setNavListTwo(List<Nav> navListTwo) {
			NavListTwo = navListTwo;
		}

		public String getResult() {
			return result;
		}

		public void setResult(String result) {
			this.result = result;
		}

		public HttpServletRequest getRequest() {
			return request;
		}

		public void setRequest(HttpServletRequest request) {
			this.request = request;
		}

		public Map<String, Object> getDataMap() {
			return dataMap;
		}

		public void setDataMap(Map<String, Object> dataMap) {
			this.dataMap = dataMap;
		}

		public Nav getNav() {
			return Nav;
		}

		public void setNav(Nav nav) {
			Nav = nav;
		}

		public String getLeftid() {
			return leftid;
		}

		public void setLeftid(String leftid) {
			this.leftid = leftid;
		}

		public List<Nav> getLocationList() {
			return LocationList;
		}

		public void setLocationList(List<Nav> locationList) {
			LocationList = locationList;
		}

		public static String getId() {
			return id;
		}

		public static void setId(String id) {
			QuerySecondPageAction.id = id;
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


		public List<Nav> getNavLeftList() {
			return NavLeftList;
		}


		public void setNavLeftList(List<Nav> navLeftList) {
			NavLeftList = navLeftList;
		}


		public List<AllContent> getAllContentList() {
			return AllContentList;
		}


		public void setAllContentList(List<AllContent> allContentList) {
			AllContentList = allContentList;
		}
		
		
		
	
}
