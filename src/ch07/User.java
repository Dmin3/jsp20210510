package ch07;

public class User {
	private String name;
	private int age;
	private String address;
	
	
	
	public User(String name, int age, String address) {
		this.name = name;
		this.address = address;
		this.age = age;
	}
	
	public String getName() {
		return name;
	}
	public int getAge() {
		return age;
	}
	public String getAddress() {
		return address;
	}
}
