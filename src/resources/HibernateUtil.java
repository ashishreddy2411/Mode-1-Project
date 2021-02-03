package resources;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
public class HibernateUtil {
	private static Session session;
		public static Session getSession() {
			try {
				session=new Configuration().configure("/resources/hibernate.cfg.xml").buildSessionFactory().getCurrentSession();
			}catch(HibernateException e)
			{
				e.printStackTrace();
				session=null;
			}
			return session;
		}
}
