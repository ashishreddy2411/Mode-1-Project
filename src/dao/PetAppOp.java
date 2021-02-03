package dao;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import model.Pet;
import model.User;
import resources.HibernateUtil;
public class PetAppOp implements IPetApp{
	@Override
	public boolean login(String name, String pass) {
		Session session=HibernateUtil.getSession(); 
		session.beginTransaction(); 
		User user=(User)session.get(User.class,name);
		if(user!=null && user.getPass().equals(pass)) {
			return true;
		}
		return false;
	}
	@Override
	public boolean newUser(User user) {
		Session session=HibernateUtil.getSession(); 
		Transaction t=session.beginTransaction(); 
		try {
		session.save(user);
		t.commit();
		return true;
		}catch(Exception e)
		{
		t.rollback();
		return false;
		}
	}
	@Override
	public List<Pet> viewAllPets() {
		Session session=HibernateUtil.getSession(); 
		session.beginTransaction(); 
		List<Pet> list=session.createQuery("from Pet where user is null",Pet.class).getResultList();
		return list;
	}
	@Override
	public List<Pet> viewMypets(String name) {
		Session session=HibernateUtil.getSession(); 
		session.beginTransaction(); 
		@SuppressWarnings("rawtypes")
		Query q=session.createQuery("from Pet where user=:na",Pet.class);
		q.setParameter("na",name);
		@SuppressWarnings("unchecked")
		List<Pet> list=q.getResultList();
		return list;
	}
	@Override
	public boolean addPet(Pet pet) {
		Session session=HibernateUtil.getSession(); 
		Transaction t=session.beginTransaction(); 
		try {
		pet.setUser(null);
		session.save(pet);
		t.commit();
		return true;
		}catch(Exception e)
		{
		t.rollback();
		return false;
		}
	}
	public boolean buyPet(String name, int pet_id) {
		
		Session session=HibernateUtil.getSession(); 
		Transaction t=session.beginTransaction(); 
		try {
		@SuppressWarnings("rawtypes")
		Query q=session.createQuery("update Pet set user=:name where pet_id=:id");
		q.setParameter("name",name);
		q.setParameter("id",pet_id);
		q.executeUpdate();
		t.commit();
		return true;
		}catch(Exception e)
		{
		e.printStackTrace();
		t.rollback();
		return false;
		}
	}
}