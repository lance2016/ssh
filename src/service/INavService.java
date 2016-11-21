package service;

import java.util.List;

import vo.Nav;

public interface INavService {
	public abstract void add(String id,String name,String link,String parentid) ;
	public abstract void delete(String id);
	public abstract void deletenavbyparentid(String parentid);//删除相同父节点
	public abstract void update(Nav Nav);
	public abstract List<Nav> query();
	public abstract List<Nav> queryone(String id) ;
	public abstract List<Nav> querybyparentid(String id) ;
	public abstract List<Nav> findnav() ;
	public abstract List<Nav> findstaticnav();
	public abstract List<Nav> findall() ;
	public abstract List<Nav> loadall();
	public abstract List<Nav> findtwo() ;
}
