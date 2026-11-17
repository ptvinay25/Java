package sms;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("sms")
public class Config {

	@Bean
	EntityManager getEntityManager() {
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("dev"); 
		EntityManager em = emf.createEntityManager();
		return em;
	}
	
}
