package com.capgemini.spring;

public class Address {

    private String city;
    private String state;
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Address [city=" + city + ", state=" + state + ", getCity()=" + getCity() + ", getState()=" + getState()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString()
				+ "]";
	}
	public Address() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Address(String city, String state) {
		super();
		this.city = city;
		this.state = state;
	}
    
	
	
}
