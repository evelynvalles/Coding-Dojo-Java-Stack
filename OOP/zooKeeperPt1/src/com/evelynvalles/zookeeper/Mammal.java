package com.evelynvalles.zookeeper;

public class Mammal {
	private int energyLevel;
	
//	Constructor
	public Mammal() {
		this.setEnergyLevel(100);
	}
	
//	Methods
	public void displayEnergyLevel() {
		System.out.println("Energy level: " + getEnergyLevel());
	}
	
//	getter and setter

	public int getEnergyLevel() {
		return energyLevel;
	}

	public void setEnergyLevel(int energyLevel) {
		this.energyLevel = energyLevel;
	}
	
}
