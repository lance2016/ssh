package service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import service.IUserService;
import vo.User;

@Service
@Transactional
public class UserServiceImpl implements IUserService {

	@Resource
	SessionFactory sessionFactory;
	public void add(User User)   {
		sessionFactory.getCurrentSession().save(User);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(User.class, id));
	}

	
	public void update(User User)  {
		sessionFactory.getCurrentSession().update(User);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<User> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from User");
		 return  query.list();
	}


}
