package action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import service.IInformService;
import service.INavService;
import service.IStudentWorkService;
import service.IUserService;
import service.IWorkService;
import service.IXueShuNewsService;
import service.IXueYuanNewsService;
import vo.Inform;
import vo.Nav;
import vo.StudentWork;
import vo.User;
import vo.Work;
import vo.XueShuNews;
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
    @Resource
    IStudentWorkService StudentWorkService;
    @Resource
    IWorkService WorkService;
    @Resource
    IXueShuNewsService XueShuNewsService;
    
    List<Nav> NavList;
    List<User> UserList;
    List<XueYuanNews> XueYuanNewsList;
    List<Inform>InformList;
    List<StudentWork>StudentWorkList;
    List<Work>WorkList;
    List<XueShuNews>XueShuNewsList;
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

	public IInformService getInformService() {
		return InformService;
	}

	public void setInformService(IInformService informService) {
		InformService = informService;
	}

	public IStudentWorkService getStudentWorkService() {
		return StudentWorkService;
	}

	public void setStudentWorkService(IStudentWorkService studentWorkService) {
		StudentWorkService = studentWorkService;
	}

	public List<StudentWork> getStudentWorkList() {
		return StudentWorkList;
	}

	public void setStudentWorkList(List<StudentWork> studentWorkList) {
		StudentWorkList = studentWorkList;
	}

	public IWorkService getWorkService() {
		return WorkService;
	}

	public void setWorkService(IWorkService workService) {
		WorkService = workService;
	}

	public List<Work> getWorkList() {
		return WorkList;
	}

	public void setWorkList(List<Work> workList) {
		WorkList = workList;
	}

	
	public IXueShuNewsService getXueShuNewsService() {
		return XueShuNewsService;
	}

	public void setXueShuNewsService(IXueShuNewsService xueShuNewsService) {
		XueShuNewsService = xueShuNewsService;
	}

	public List<XueShuNews> getXueShuNewsList() {
		return XueShuNewsList;
	}

	public void setXueShuNewsList(List<XueShuNews> xueShuNewsList) {
		XueShuNewsList = xueShuNewsList;
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
			UserList = UserService.query();
			NavList=NavService.query();//导航栏
			XueYuanNewsList = XueYuanNewsService.query();//学院动态
			InformList=InformService.query();//通知公告
			StudentWorkList=StudentWorkService.query();//学生工作
			WorkList=WorkService.query();//就业工作
			XueShuNewsList=XueShuNewsService.query();//学术动态
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
