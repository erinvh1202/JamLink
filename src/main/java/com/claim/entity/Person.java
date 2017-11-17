package com.claim.entity;

import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.ColumnDefault;

@Entity//this tells spring to use hibernate and map this class to our database column
@Table(name="person")//this tells hibernate the name of the table in our database
public class Person {
	@Id// Tell hibernate what the primary key is.
	@Column// tell hibernate which column this variable maps to
	private String email;
	
	@Column
	private String firstName;
	@Column
	private String lastName;
	@Column
	private String password;
	@Column
	private byte[] profilePic;
	@Column
	private int age;
	@Column
	private String state;
	@Column
	private String city;
	@Column
	private boolean vocalist;
	@Column
	private boolean electricguitar;
	@Column
	private boolean bass;
	@Column
	private boolean drums;
	@Column
	private boolean keyboards;
	@Column
	private boolean other;
	@Column
	private String othertext;
	@Column
	private String mostavailable;
	@Column
	private String levelofcommitment;
	@Column
	private String seeking;
	@Column
	private byte[] uploadVideo;
	@Column
	private byte[] uploadMusic;
	
	@ColumnDefault("0")
	@Column
	private int rating;
	
	@ColumnDefault("0")
	@Column
	private int noOfRatings;
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public byte[] getProfilePic() {
		return profilePic;
	}
	public void setProfilePic(byte[] profilePic) {
		this.profilePic = profilePic;
	}
	
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public boolean isVocalist() {
		return vocalist;
	}
	public void setVocalist(boolean vocalist) {
		this.vocalist = vocalist;
	}
	public boolean isElectricguitar() {
		return electricguitar;
	}
	public void setElectricguitar(boolean electricguitar) {
		this.electricguitar = electricguitar;
	}
	public boolean isBass() {
		return bass;
	}
	public void setBass(boolean bass) {
		this.bass = bass;
	}
	public boolean isDrums() {
		return drums;
	}
	public void setDrums(boolean drums) {
		this.drums = drums;
	}
	public boolean isKeyboards() {
		return keyboards;
	}
	public void setKeyboards(boolean keyboards) {
		this.keyboards = keyboards;
	}
	public boolean isOther() {
		return other;
	}
	public void setOther(boolean other) {
		this.other = other;
	}
	public String getOthertext() {
		return othertext;
	}
	public void setOthertext(String othertext) {
		this.othertext = othertext;
	}
	public String getMostavailable() {
		return mostavailable;
	}
	public void setMostavailable(String mostavailable) {
		this.mostavailable = mostavailable;
	}
	public String getLevelofcommitment() {
		return levelofcommitment;
	}
	public void setLevelofcommitment(String levelofcommitment) {
		this.levelofcommitment = levelofcommitment;
	}
	public String getSeeking() {
		return seeking;
	}
	public void setSeeking(String seeking) {
		this.seeking = seeking;
	}
	public byte[] getUploadVideo() {
		return uploadVideo;
	}
	public void setUploadVideo(byte[] uploadVideo) {
		this.uploadVideo = uploadVideo;
	}
	public byte[] getUploadMusic() {
		return uploadMusic;
	}
	public void setUploadMusic(byte[] uploadMusic) {
		this.uploadMusic = uploadMusic;
	}
	
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getNoOfRatings() {
		return noOfRatings;
	}
	public void setNoOfRatings(int noOfRatings) {
		this.noOfRatings = noOfRatings;
	}
	
	public String showPicture(){


	    String encoded = "";


	    if(profilePic != null && profilePic.length>0){


	            encoded = Base64.getEncoder().encodeToString(profilePic);


	      }


	     return encoded;




	}
	
	public String showVideo() {
		
		String encoded="";
		
		if(uploadVideo != null && uploadVideo.length>0) {
			
			encoded = Base64.getEncoder().encodeToString(uploadVideo);
		}
		
		return encoded;
	}


	@Override
	public String toString() {
		return "Person [email=" + email + ", firstName=" + firstName + ", lastName=" + lastName + ", password="
				+ password + ", profilePic=" + profilePic + ", age=" + age + ", state=" + state + ", city=" + city
				+ ", vocalist=" + vocalist + ", electricguitar=" + electricguitar + ", bass=" + bass + ", drums="
				+ drums + ", keyboards=" + keyboards + ", other=" + other + ", othertext=" + othertext
				+ ", mostavailable=" + mostavailable + ", levelofcommitment=" + levelofcommitment + ", seeking="
				+ seeking + ", uploadVideo=" + uploadVideo + ", uploadMusic=" + uploadMusic + ", rating=" + rating
				+ ", noOfRatings=" + noOfRatings + "]";
	}
	
	
	

	
	
}


