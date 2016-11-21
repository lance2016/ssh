package service.impl;

import java.math.BigDecimal;

import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import service.IAllContentService;
import vo.AllContent;

@Service
@Transactional
public class AllContentServiceImpl implements IAllContentService {

	@Resource
	SessionFactory sessionFactory;
	public void add(AllContent AllContent) {
		sessionFactory.getCurrentSession().save(AllContent);
		
	}

	public void delete(int id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(AllContent.class, id));
	}
	

	
	//删除父节点为parentid的allcontent记录
	public void deletebyparentid(String parentid) {
		// TODO Auto-generated method stub]
		 Session session =  sessionFactory.getCurrentSession();
		String hql = "delete from AllContent t where t.parentid='"+parentid+"'";
		session.createQuery(hql).executeUpdate();
	
		
	}
	
	public void update(AllContent AllContent)  {
		sessionFactory.getCurrentSession().update(AllContent);
	}

	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<AllContent> query()  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from AllContent");
		 return  query.list();
	}
	
	
	

	
	

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<AllContent> queryone(int id) {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from AllContent where Id="+id);
		 return  query.list();
	}
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<AllContent> querybyparentid(String id) {
		int size;
		 Session s =  sessionFactory.getCurrentSession();
		 if(id=="Z0")
			 size=16;
		 else
			 size=10; 
		 Query query=s.createQuery(" from AllContent where parentid='"+id+"' order by id desc");
		 query.setFirstResult(0); //开始记录
		 query.setMaxResults(size); //查询多少条
		 return  query.list();
	}
	

	
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public int getNum(String id) {
		 Session s =  sessionFactory.getCurrentSession();
		 String sql="select count(*) from AllContent  where parentid="+id;  
		 Query query=s.createQuery(sql);
		  BigDecimal a=(BigDecimal) query.uniqueResult();  
	        int number=a.intValue(); 
	            query.setFirstResult(0);  
	           
	            System.out.println("查询到的个数为="+number);  
	            return number;  
	       
	}  
	
	


	@SuppressWarnings("unchecked")
	public List<AllContent> list(String table,String id, int start, int size) {
		Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from "+table+"  where parentid='"+id+"' order by id desc");
		 query.setFirstResult(start); //开始记录
		 query.setMaxResults(size); //查询多少条
		 return  query.list();
	}
	//搜索
	@SuppressWarnings("unchecked")
	public List<AllContent> search(String keywords) {
		Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from AllContent"+"  where title like '%"+keywords+"%' or content like '%"+keywords+"%'");
		 return  query.list();
	}
	
	//查询总数
	public int getnum(String table,String id) {
		Session s =  sessionFactory.getCurrentSession();
		String hql="select count(*) from "+table+" where parentid='"+id+"'";
		Query query=s.createQuery(hql);
		int count=((Long)query.uniqueResult()).intValue();
		 return count;
	}

	
	
	

}
