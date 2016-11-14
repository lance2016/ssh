package service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import service.IInformService;
import vo.Inform;

@Service
@Transactional
public class InformImpl implements IInformService {

	@Resource
	SessionFactory sessionFactory;
	public void add(Inform Inform)   {
		sessionFactory.getCurrentSession().save(Inform);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(Inform.class, id));
	}

	
	public void update(Inform Inform)  {
		sessionFactory.getCurrentSession().update(Inform);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Inform> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Inform");
		 return  query.list();
	}


}
