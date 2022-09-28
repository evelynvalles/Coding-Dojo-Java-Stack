package com.evelynvalles.zookeeper;

public class Gorilla extends Mammal {
	
//	Methods
	public void throwSomething() {
		setEnergyLevel(getEnergyLevel() - 5);
		System.out.println("Gorilla has thrown something, Energy Level: " + getEnergyLevel());
	}
	
	public void eatBananas() {
		setEnergyLevel(getEnergyLevel() + 10);
		System.out.println("Gorilla is eating a banana, Energy Level: " + getEnergyLevel());
	}
	
	public void climb() {
		setEnergyLevel(getEnergyLevel() - 10);
		System.out.println("Gorilla is climbing, Energy Level: " + getEnergyLevel());
	}
}
