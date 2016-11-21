package action;

import java.util.List;




import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;
import org.apache.struts2.components.Date;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.IAllContentService;
import service.INavService;
import vo.AllContent;
import vo.Nav;
@Controller
@Scope("request")
public class QueryThirdPageAction implements SessionAware{
	private HttpServletRequest request = ServletActionContext.getRequest();
	 Map<String, Object> session;
	    @Resource
	    INavService NavService;
	    @Resource
	    IAllContentService AllContentService;
	    List<Nav> NavList;
	    List<Nav> NavListTwo;
	    List<AllContent>AllContentList;
	    AllContent AllContent;
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
					NavListTwo=NavService.findtwo();//级联
					AllContentList=AllContentService.queryone(id);
					AllContent=AllContentList.get(0);
					
					//访问次数+1
					if(session.get("add")==null){
						session.put("add", AllContent.getTitle());
						AllContent.setVisitedtime(AllContentList.get(0).getVisitedtime()+1);
						AllContentService.update(AllContent);
						System.out.println("+++++++++++++++++++++++=1了"+AllContent.getVisitedtime());
					}
					//访问另一篇文章或者再次访问自己都不加
					else{
						if( !session.get("add").equals(AllContent.getTitle())){
							session.put("add", AllContent.getTitle());
							AllContent.setVisitedtime(AllContentList.get(0).getVisitedtime()+1);
							AllContentService.update(AllContent);
							System.out.println("+++++++++++++++++++++++=1了"+AllContent.getVisitedtime());
						}
					}
					
					
					
				return "querythirdsuccess";
			} catch (Exception e) {
				e.printStackTrace();
				return "error";
			}

		}


		public AllContent getAllContent() {
			return AllContent;
		}


		public void setAllContent(AllContent allContent) {
			AllContent = allContent;
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


		public List<Nav> getNavListTwo() {
			return NavListTwo;
		}


		public void setNavListTwo(List<Nav> navListTwo) {
			NavListTwo = navListTwo;
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


		@Override
		public void setSession(Map<String, Object> arg0) {
			// TODO Auto-generated method stub
			this.session=arg0;
		}
		
		
}
