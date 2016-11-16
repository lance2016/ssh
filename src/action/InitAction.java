package action;

import java.util.List;


import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import service.IAllContentService;
import service.INavService;
import vo.AllContent;
import vo.Nav;
@Controller
@Scope("request")
public class InitAction {
  @Resource
    INavService NavService;
  @Resource
  	IAllContentService AllContentService;
    List<Nav> NavList;
    List<Nav> NavTitleList1;
    List<Nav> NavTitleList2;
    List<Nav> NavTitleList3;
    List<Nav> NavTitleList4;
    List<Nav> NavTitleList5;
    List<AllContent>AllContentList1;
    List<AllContent>AllContentList2;
    List<AllContent>AllContentList3;
    List<AllContent>AllContentList4;
    List<AllContent>AllContentList5;
    Nav Nav;
	int id;
	
	
	
	public String initindex() {

		try {
			NavList=NavService.query();//导航栏
			NavTitleList1=NavService.querybyparentid("o");
			NavTitleList2=NavService.querybyparentid("p");
			NavTitleList3=NavService.querybyparentid("q");
			NavTitleList4=NavService.querybyparentid("r");
			NavTitleList5=NavService.querybyparentid("s");
			AllContentList1=AllContentService.querybyparentid("Z0");//学院动态
			AllContentList2=AllContentService.querybyparentid("Z1");//通知公告
			AllContentList3=AllContentService.querybyparentid("Z2");//学生工作
			AllContentList4=AllContentService.querybyparentid("Z3");//就业工作
			AllContentList5=AllContentService.querybyparentid("Z4");//学术动态
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
	

	


	public List<Nav> getNavTitleList1() {
		return NavTitleList1;
	}





	public void setNavTitleList1(List<Nav> navTitleList1) {
		NavTitleList1 = navTitleList1;
	}





	public List<Nav> getNavTitleList2() {
		return NavTitleList2;
	}





	public void setNavTitleList2(List<Nav> navTitleList2) {
		NavTitleList2 = navTitleList2;
	}





	public List<Nav> getNavTitleList3() {
		return NavTitleList3;
	}





	public void setNavTitleList3(List<Nav> navTitleList3) {
		NavTitleList3 = navTitleList3;
	}





	public List<Nav> getNavTitleList4() {
		return NavTitleList4;
	}





	public void setNavTitleList4(List<Nav> navTitleList4) {
		NavTitleList4 = navTitleList4;
	}





	public List<Nav> getNavTitleList5() {
		return NavTitleList5;
	}





	public void setNavTitleList5(List<Nav> navTitleList5) {
		NavTitleList5 = navTitleList5;
	}





	public IAllContentService getAllContentService() {
		return AllContentService;
	}


	public void setAllContentService(IAllContentService allContentService) {
		AllContentService = allContentService;
	}


	public List<AllContent> getAllContentList1() {
		return AllContentList1;
	}


	public void setAllContentList1(List<AllContent> allContentList1) {
		AllContentList1 = allContentList1;
	}


	public List<AllContent> getAllContentList2() {
		return AllContentList2;
	}


	public void setAllContentList2(List<AllContent> allContentList2) {
		AllContentList2 = allContentList2;
	}


	public List<AllContent> getAllContentList3() {
		return AllContentList3;
	}


	public void setAllContentList3(List<AllContent> allContentList3) {
		AllContentList3 = allContentList3;
	}


	public List<AllContent> getAllContentList4() {
		return AllContentList4;
	}


	public void setAllContentList4(List<AllContent> allContentList4) {
		AllContentList4 = allContentList4;
	}


	public List<AllContent> getAllContentList5() {
		return AllContentList5;
	}


	public void setAllContentList5(List<AllContent> allContentList5) {
		AllContentList5 = allContentList5;
	}


	public INavService getNavService() {
		return NavService;
	}


	public void setNavService(INavService navService) {
		NavService = navService;
	}


	public List<Nav> getNavList() {
		return NavList;
	}


	public void setNavList(List<Nav> navList) {
		NavList = navList;
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
