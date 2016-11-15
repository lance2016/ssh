package service;

import java.util.List;
import vo.Work;
public interface IWorkService {
	public abstract void add(Work Work);
	public abstract void delete(int id);
	public abstract void update(Work Work) ;
	public abstract List<Work> query() ;
}
