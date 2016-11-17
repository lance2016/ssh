package action;

import java.util.List;



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
public class QueryThirdPageAction {
	private HttpServletRequest request = ServletActionContext.getRequest();
	 
	    @Resource
	    INavService NavService;
	    @Resource
	    IAllContentService AllContentService;
	    List<Nav> NavList;
	    List<AllContent>AllContentList;
	    Nav Nav;
		int id;
		String add;
		String leftid;
		public String query() {
			int id=Integer.parseInt(request.getParameter("id"));
			leftid=request.getParameter("leftid");
			add=request.getParameter("add");
			try {
			
					NavList=NavService.query();//导航栏
					AllContentList=AllContentService.queryone(id);
					
				return "querythirdsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}


		public String getLeftid() {
			return leftid;
		}


		public void setLeftid(String leftid) {
			this.leftid = leftid;
		}


		public String getAdd() {
			return add;
		}


		public void setAdd(String add) {
			this.add = add;
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


		public Nav getNav() {
			return Nav;
		}


		public void setNav(Nav nav) {
			Nav = nav;
		}


		public int getId() {
			return id;
		}


		public void setId(int id) {
			this.id = id;
		}
		
		
}
