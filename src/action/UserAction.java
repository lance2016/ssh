package action;

import java.util.List;
import javax.annotation.Resource;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import service.IUserService;
import vo.User;
@Controller
@Scope("request")
public class UserAction {
    @Resource
	IUserService UserService;
	User User;
	int id;
	List<User> UserList;

	public User getUser() {
		return User;
	}

	public void setUser(User User) {
		this.User = User;
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

	public String query() {

		try {
			UserList = UserService.query();
			return "querysuccess";
		} catch (Exception e) {
			e.printStackTrace();
			return "error";
		}

	}
}
