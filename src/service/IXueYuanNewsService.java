package service;

import java.util.List;
import vo.XueYuanNews;

public interface IXueYuanNewsService {
	public abstract void add(XueYuanNews XueYuanNews);
	public abstract void delete(int id);
	public abstract void update(XueYuanNews XueYuanNews) ;
	public abstract List<XueYuanNews> query() ;
}
