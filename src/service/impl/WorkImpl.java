package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import service.IWorkService;
import vo.Work;

@Service
@Transactional
public class WorkImpl implements IWorkService {

	@Resource
	SessionFactory sessionFactory;
	public void add(Work Work)   {
		sessionFactory.getCurrentSession().save(Work);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(Work.class, id));
	}

	
	public void update(Work Work)  {
		sessionFactory.getCurrentSession().update(Work);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Work> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Work");
		 return  query.list();
	}


}
