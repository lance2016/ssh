package service;

import java.util.List;
import vo.User;

public interface IUserService {
	public abstract void add(User User) ;

	public abstract void delete(String id) ;

	public abstract void update(User User) ;
	public abstract void update(int id,String password) ;
	
	public abstract List<User> check(int id,String password) ;
	
	
}
