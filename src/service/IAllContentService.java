package service;

import java.util.List;
import vo.AllContent;
public interface IAllContentService {
	public abstract void add(AllContent AllContent);
	public abstract void delete(int id);
	public abstract void update(AllContent AllContent) ;
	public abstract List<AllContent> query() ;
	public abstract List<AllContent> queryone(int id);
	public abstract List<AllContent> querybyparentid(String id);
	
}
