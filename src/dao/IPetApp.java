package dao;

import java.util.List;
import model.Pet;
import model.User;
public interface IPetApp {
	public boolean login(String name,String pass);
	public boolean newUser(User user);
	public List<Pet> viewAllPets();
	public List<Pet> viewMypets(String name);
	public boolean addPet(Pet pet);
	public boolean buyPet(String name, int pet_id);
}
