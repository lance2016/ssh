package action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.IInformService;
import service.INavService;
import service.IUserService;
import service.IXueYuanNewsService;
import vo.Inform;
import vo.Nav;
import vo.User;
import vo.XueYuanNews;
@Controller
@Scope("request")
public class InitAction {
    @Resource
    IUserService UserService;
    @Resource
    INavService NavService;
    @Resource
    IXueYuanNewsService XueYuanNewsService;
    @Resource
    IInformService InformService;
    List<Nav> NavList;
    List<User> UserList;
    List<XueYuanNews> XueYuanNewsList;
    List<Inform>InformList;
    Nav Nav;
	User User;
	int id;
	public Nav getNav() {
		return Nav;
	}

	public void setNav(Nav nav) {
		Nav = nav;
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

	public User getUser() {
		return User;
	}

	public void setUser(User User) {
		this.User = User;
	}

	

	public IXueYuanNewsService getXueYuanNewsService() {
		return XueYuanNewsService;
	}

	public void setXueYuanNewsService(IXueYuanNewsService xueYuanNewsService) {
		XueYuanNewsService = xueYuanNewsService;
	}

	public List<XueYuanNews> getXueYuanNewsList() {
		return XueYuanNewsList;
	}

	public void setXueYuanNewsList(List<XueYuanNews> xueYuanNewsList) {
		XueYuanNewsList = xueYuanNewsList;
	}

	public IUserService getUserService() {
		return UserService;
	}

	public void setUserService(IUserService UserService) {
		this.UserService = UserService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<User> getUserList() {
		return UserList;
	}

	public void setUserList(List<User> UserList) {
		this.UserList = UserList;
	}

	
	public List<Inform> getInformList() {
		return InformList;
	}

	public void setInformList(List<Inform> informList) {
		InformList = informList;
	}

	public String add() {

		try {
			UserService.add(User);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String update() {

		try {
			UserService.update(User);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String delete() {

		try {
			UserService.delete(id);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}
	}

	public String initindex() {

		try {
			//UserList = UserService.query();
			NavList=NavService.query();//导航栏
			XueYuanNewsList = XueYuanNewsService.query();//学院动态
			InformList=InformService.query();//通知公告
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
