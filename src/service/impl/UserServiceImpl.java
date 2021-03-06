package service.impl;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import javax.annotation.Resource;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import service.IUserService;
import sun.misc.BASE64Encoder;
import vo.User;
@Service
@Transactional
public class UserServiceImpl implements IUserService {
	@Resource
	SessionFactory sessionFactory;
	
	public void add(User User)   {
		sessionFactory.getCurrentSession().save(User);
		
	}

	public void delete(String id)  {
		 Session s =  sessionFactory.getCurrentSession();
		 s.delete(s.load(User.class, id));
	}

	
	public void update(int id,String password)  {
		 Session session =  sessionFactory.getCurrentSession();
		  Query query = session.createQuery("update User set password='"+password+"' where Id="+id+"");
		 query.executeUpdate();

	}

	
	
	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<User> check(int id,String password)  {
		 Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from User where id="+id+" and password='"+password+"'");
		 return  query.list();
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void update(User User) {
		// TODO Auto-generated method stub
		
	}

	@SuppressWarnings("unchecked")
	@Transactional(propagation=Propagation.NOT_SUPPORTED)
	public List<User> query(int id) {
		Session s =  sessionFactory.getCurrentSession();
		 Query query=s.createQuery(" from User where id="+id);
		 return  query.list();
	}
	
	
	 public String MD5(String string) {
    	 byte[]oldBytes=string.getBytes();
    	 MessageDigest md;
    	 try{
    		 md=MessageDigest.getInstance("MD5");
    		 byte[]newBytes=md.digest(oldBytes);
    		 BASE64Encoder encoder=new BASE64Encoder();
    		 String newStr=encoder.encode(newBytes);
    		 return newStr;
    	 }
    	 catch(NoSuchAlgorithmException e)
    	 {
    			return null;
    	 }
  }

	

	
	

	




}
