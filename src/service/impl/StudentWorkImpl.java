package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import service.IStudentWorkService;
import vo.StudentWork;

@Service
@Transactional
public class StudentWorkImpl implements IStudentWorkService {

	@Resource
	SessionFactory sessionFactory;
	public void add(StudentWork StudentWork)   {
		sessionFactory.getCurrentSession().save(StudentWork);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(StudentWork.class, id));
	}

	
	public void update(StudentWork StudentWork)  {
		sessionFactory.getCurrentSession().update(StudentWork);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<StudentWork> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from StudentWork");
		 return  query.list();
	}


}
