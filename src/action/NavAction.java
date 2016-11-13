package action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import service.INavService;
import vo.Nav;
@Controller
@Scope("request")
public class NavAction {
    @Resource
	INavService NavService;
	Nav Nav;
	int id;
	List<Nav> NavList;

	public Nav getNav() {
		return Nav;
	}

	public void setNav(Nav Nav) {
		this.Nav = Nav;
	}

	

	public INavService getNavService() {
		return NavService;
	}

	public void setNavService(INavService NavService) {
		this.NavService = NavService;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public List<Nav> getNavList() {
		return NavList;
	}

	public void setNavList(List<Nav> NavList) {
		this.NavList = NavList;
	}

	public String add() {

		try {
			NavService.add(Nav);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String update() {

		try {
			NavService.update(Nav);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String delete() {

		try {
			NavService.delete(id);
			return "updatesuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}

	public String query() {

		try {
			NavList = NavService.query();
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
