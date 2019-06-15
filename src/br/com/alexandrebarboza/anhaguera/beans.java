package br.com.alexandrebarboza.anhaguera;

import java.util.*;

public class beans {
	private ArrayList<Map<String, String>> dogs;
	private int counter;
	private void addMapTo(Map<String, String> map) {
		this.dogs.add(map);
	}
	public beans() {
		this.dogs = new ArrayList<Map<String, String>>();
		this.counter = 0; 
	}
	public void setDogs(ArrayList<Map<String, String>> dogs) {
		this.dogs = dogs;
		this.counter = this.dogs.size();
	}
	public ArrayList<Map<String, String>>getDogs() {
		return this.dogs;
	}
	public int getCounter() {
		return this.counter;
	}
	public Map<String, String> getMapFor(String name, String age, String dog) {
		Map<String,String> map = new LinkedHashMap<>();
	    map.put("nome", name);
	    map.put("idade", age);
	    map.put("cachorro", dog);
	    this.addMapTo(map);
	    this.counter++;
	    return map;
	}
	
}
