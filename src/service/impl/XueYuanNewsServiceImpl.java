package service.impl;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import service.IXueYuanNewsService;
import vo.XueYuanNews;

@Service
@Transactional
public class XueYuanNewsServiceImpl implements IXueYuanNewsService {

	@Resource
	SessionFactory sessionFactory;
	public void add(XueYuanNews XueYuanNews)   {
		sessionFactory.getCurrentSession().save(XueYuanNews);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(XueYuanNews.class, id));
	}

	
	public void update(XueYuanNews XueYuanNews)  {
		sessionFactory.getCurrentSession().update(XueYuanNews);
	}

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<XueYuanNews> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from XueYuanNews");
		 return  query.list();
	}


}
