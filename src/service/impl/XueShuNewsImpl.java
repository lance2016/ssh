package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



import service.IXueShuNewsService;
import vo.XueShuNews;

@Service
@Transactional
public class XueShuNewsImpl implements IXueShuNewsService {

	@Resource
	SessionFactory sessionFactory;
	public void add(XueShuNews XueShuNews)   {
		sessionFactory.getCurrentSession().save(XueShuNews);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(XueShuNews.class, id));
	}

	
	public void update(XueShuNews XueShuNews)  {
		sessionFactory.getCurrentSession().update(XueShuNews);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<XueShuNews> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from XueShuNews");
		 return  query.list();
	}


}
