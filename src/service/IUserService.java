package service;

import java.util.List;
import vo.User;

public interface IUserService {
	public abstract void add(User User);
	public abstract void delete(int id);
	public abstract void update(User User) ;
	public abstract List<User> query() ;
}
