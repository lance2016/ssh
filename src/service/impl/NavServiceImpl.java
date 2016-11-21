package service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
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
	
	public void add(String id,String name,String link,String parentid)   {
		 Session session =  sessionFactory.getCurrentSession();
		 String sql="insert into nav values(?,?,?,?)";
		 SQLQuery sqlQuery=session.createSQLQuery(sql);
		 sqlQuery.setParameter(0, id);
		 sqlQuery.setParameter(1, name);
		 sqlQuery.setParameter(2, parentid);
		 sqlQuery.setParameter(3, link);
		
		 int f=sqlQuery.executeUpdate();
		System.out.println("++++++++++++++++++++++++++++++++"+f);
		
	}

	public void update(Nav Nav)  {
		sessionFactory.getCurrentSession().update(Nav);
	}

	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid='0'");
		 return  query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> findtwo()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid!='0'");
		 return  query.list();
	}
	
	

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> querybyparentid(String id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid='"+id+"'");
		 return  query.list();
	}




	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> queryone(String id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where Id='"+id+"'");
		 return  query.list();
	}
	
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> findnav()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid!='0' and link='#' order by Id asc");
		 return  query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> findstaticnav()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid!='0' and parentid!='-2' and parentid!='-1' and link='static' order by Id asc");
		 return  query.list();
	}
	
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> findall()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav where parentid!='0' and link!='static' order by Id asc");
		 return  query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<Nav> loadall()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from Nav  order by Id asc");
		 return  query.list();
	}

	@Override
	public void delete(String id) {
		
			 Session s =  sessionFactory.getCurrentSession();
			 s.delete(s.load(Nav.class, id));
		
		
	}

	@Override
	public void deletenavbyparentid(String parentid) {
		 Session session =  sessionFactory.getCurrentSession();
			String hql = "delete from Nav t where t.parentid='"+parentid+"'";
			session.createQuery(hql).executeUpdate();
		
	}

	

	
}
