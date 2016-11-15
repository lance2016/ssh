package service;

import java.util.List;
import vo.XueShuNews;
public interface IXueShuNewsService {
	public abstract void add(XueShuNews XueShuNews);
	public abstract void delete(int id);
	public abstract void update(XueShuNews XueShuNews) ;
	public abstract List<XueShuNews> query() ;
}
