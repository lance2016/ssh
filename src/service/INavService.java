package service;

import java.util.List;
import vo.Nav;

public interface INavService {
	public abstract void add(Nav Nav) ;

	public abstract void delete(String id) ;

	public abstract void update(Nav Nav) ;

	public abstract List<Nav> query() ;
	public abstract List<Nav> queryone(String id) ;
	public abstract List<Nav> querybyparentid(String id) ;
	
}
