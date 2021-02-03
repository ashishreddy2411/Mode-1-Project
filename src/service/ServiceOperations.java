package service;

import java.util.List;

import dao.PetAppOp;
import model.Pet;
import model.User;

public class ServiceOperations implements IService{
	private PetAppOp petopp;
	
	public PetAppOp getPetopp() {
		return petopp;
	}

	public void setPetopp(PetAppOp petopp) {
		this.petopp = petopp;
	}

	@Override
	public boolean authenticate(String name, String pass) {
		return petopp.login(name, pass);
	}

	@Override
	public boolean register(User user) {
		return petopp.newUser(user);
	}

	@Override
	public List<Pet> viewAllPets() {
		return petopp.viewAllPets();
	}

	@Override
	public List<Pet> viewMypets(String name) {
		return petopp.viewMypets(name);
	}

	@Override
	public boolean addPet(Pet pet) {
		return petopp.addPet(pet);
	}
	@Override
	public boolean buyPet(String name,int pet_id) {
		return petopp.buyPet(name,pet_id);
	}
}
