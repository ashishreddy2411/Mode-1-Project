package service;

import java.util.List;
import model.Pet;
import model.User;
public interface IService {
	public boolean authenticate(String name,String pass);
	public boolean register(User user);
	public List<Pet> viewAllPets();
	public List<Pet> viewMypets(String name);
	public boolean addPet(Pet pet);
	boolean buyPet(String name, int pet_id);
}
