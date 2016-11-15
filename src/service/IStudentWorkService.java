package service;

import java.util.List;
import vo.StudentWork;
public interface IStudentWorkService {
	public abstract void add(StudentWork StudentWork);
	public abstract void delete(int id);
	public abstract void update(StudentWork StudentWork) ;
	public abstract List<StudentWork> query() ;
}
