package com.evelynvalles.zookeeper;

public class Bat extends Mammal {

//	constructor
	public Bat() {
		setEnergyLevel(300);
	}
	
//	methods
	public void fly() {
		setEnergyLevel(getEnergyLevel() - 50);
		System.out.println("Squeak squeak " + getEnergyLevel());
	}
	
	public void eatHumans() {
		setEnergyLevel(getEnergyLevel() + 25);
		System.out.println(getEnergyLevel());
	}
	
	public void attackTown() {
		setEnergyLevel(getEnergyLevel() - 100);
		System.out.println("Ahhh helpp! " + getEnergyLevel());
		
	}
}
