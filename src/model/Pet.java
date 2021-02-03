package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Size;
@Entity
@Table(name="pet")
public class Pet {
	@Id
	@Column
	@Size(min = 1, message ="Enter Valid Pet_id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int pet_id;
	@Column
	@Size(min = 3, message ="Enter Valid Pet Category")
	private String pet_categ;
	@Column
	@Size(min = 3, message ="Enter Valid Pet Breed")
	private String breed;
	@Column
	@Size(min = 1, message ="Enter Valid Pet Weight")
	private float weight;
	@Column
	@Size(min = 1, message ="Enter Valid Pet Height")
	private float height;
	@Column
	@Size(min = 1, message ="Enter Valid Pet Age")
	private int age;
	@Column
	@Size(min = 3, message ="Enter Valid Pet Colour")
	private String colour;
	@Column
	@Size(min = 1, message ="Enter Valid Pet Cost")
	private float cost;
	@Column
	private String user;
	public Pet(int pet_id, String pet_categ, String breed, float weight, float height, int age, String colour,
			float cost, String user) {
		this.pet_id = pet_id;
		this.pet_categ = pet_categ;
		this.breed = breed;
		this.weight = weight;
		this.height = height;
		this.age = age;
		this.colour = colour;
		this.cost = cost;
		this.user = user;
	}
	public Pet() {
		// TODO Auto-generated constructor stub
	}
	public int getPet_id() {
		return pet_id;
	}
	public void setPet_id(int pet_id) {
		this.pet_id = pet_id;
	}
	public String getPet_categ() {
		return pet_categ;
	}
	public void setPet_categ(String pet_categ) {
		this.pet_categ = pet_categ;
	}
	public String getBreed() {
		return breed;
	}
	public void setBreed(String breed) {
		this.breed = breed;
	}
	public float getWeight() {
		return weight;
	}
	public void setWeight(float weight) {
		this.weight = weight;
	}
	public float getHeight() {
		return height;
	}
	public void setHeight(float height) {
		this.height = height;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getColour() {
		return colour;
	}
	public void setColour(String colour) {
		this.colour = colour;
	}
	public float getCost() {
		return cost;
	}
	public void setCost(float cost) {
		this.cost = cost;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user= user;
	}
	@Override
	public String toString() {
		return "Pet [pet_id=" + pet_id + ", pet_categ=" + pet_categ + ", breed=" + breed + ", weight=" + weight
				+ ", height=" + height + ", age=" + age + ", colour=" + colour + ", cost=" + cost + ", user=" + user
				+ "]";
	}
	
}