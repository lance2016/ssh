package service;

import java.util.List;

import vo.AllContent;
public interface IAllContentService {
	public abstract void add(AllContent AllContent);
	public abstract void delete(int id);
	public abstract void deletebyparentid(String parentid);//删除相同父节点
	public abstract void update(AllContent AllContent) ;
	public abstract List<AllContent> query() ;
	public abstract List<AllContent> queryone(int id);
	public abstract List<AllContent> querybyparentid(String id);
	public abstract List<AllContent> list(String table,String id,int start,int size);
	public abstract int getnum(String table,String id);
	public abstract List<AllContent>search(String keywords);
}
