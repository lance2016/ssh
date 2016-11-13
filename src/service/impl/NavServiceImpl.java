package service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import service.INavService;
import vo.Nav;

@Service
@Transactional
public class NavServiceImpl implements INavService {

	@Resource
	SessionFactory sessionFactory;
	public void add(Nav Nav)   {
		sessionFactory.getCurrentSession().save(Nav);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(Nav.class, id));
	}

	
	public void update(Nav Nav)  {
		sessionFactory.getCurrentSession().update(Nav);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav");
		 return  query.list();
	}


}
