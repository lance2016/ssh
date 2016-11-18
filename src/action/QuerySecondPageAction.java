package action;


import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;



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
	   List<Nav> LocationList;
	   List<AllContent>AllContentList;
	   private static String id;
	   Nav Nav;
	   String leftid;
	   private String result;
	   private Map<String, Object> dataMap;  
		public String query() {
			 id=request.getParameter("id");
			// System.out.println("id="+id);
			try {
				NavLeftList=NavService.querybyparentid(id);
				NavList = NavService.query();//导航栏
				LocationList=NavService.queryone(NavLeftList.get(0).getId());
				AllContentList=AllContentService.querybyparentid(NavLeftList.get(0).getId());//最初加载左侧第一个
				return "querysecondsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}
		
		public String changequery() {
			leftid=request.getParameter("leftid");//左侧选择的id
			try {
					NavList = NavService.query();//导航栏
					NavLeftList=NavService.querybyparentid(id);
					LocationList=NavService.queryone(leftid);
					AllContentList=AllContentService.list("AllContent",leftid,0,10);
					
				return "querysecondsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

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
