package com.claim.service;

import java.util.ArrayList;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.claim.entity.Person;
import com.claim.repository.PersonRepository;

@Service
public class PersonService {
	
	@PersistenceContext
	private	EntityManager entityManager;
	
	@Autowired
 private PersonRepository personRepository;
	
	private static final String loginSql="select P.* from Person P where P.email=:email and P.password=:password";
	private static final String findSql="select P.* from Person P where P.email=:email";
	
	@Transactional	
	public Person login(String email,String password) {
		return (Person) entityManager.createNativeQuery(loginSql,Person.class)
				.setParameter("email", email)
				.setParameter("password", password)
				.getSingleResult();
		
	}
	@Transactional
		public Person login2(String email,String password) {
			return this.personRepository.login(email,password);
	}
    @Transactional
    	public Person signUp(Person person) {
    	return this.personRepository.save(person);
    }
  
    @Transactional	
	public Person find(String email) {
		return (Person) entityManager.createNativeQuery(findSql,Person.class)
				.setParameter("email", email)				
				.getSingleResult();
		
	}
    
    
    
    @SuppressWarnings("unchecked")
	@Transactional	
	public ArrayList<Person> search(String instrument, String city) {    	
    	String qryString = "select P.* from Person P where P."+instrument+"=1 and P.city=:city";
		return (ArrayList<Person>) entityManager.createNativeQuery(qryString,Person.class)
				.setParameter("city", city)				
				.getResultList();
		
	}
    
     
}
