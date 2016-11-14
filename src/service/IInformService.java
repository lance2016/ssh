package service;

import java.util.List;
import vo.Inform;
public interface IInformService {
	public abstract void add(Inform Inform);
	public abstract void delete(int id);
	public abstract void update(Inform Inform) ;
	public abstract List<Inform> query() ;
}
