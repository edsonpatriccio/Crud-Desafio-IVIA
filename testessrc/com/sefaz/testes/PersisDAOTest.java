package com.sefaz.testes;

import static org.junit.Assert.fail;

import org.apache.commons.dbcp2.BasicDataSource;
import org.junit.Test;

import com.sefaz.dao.PersisDAO;

public class PersisDAOTest {

	private BasicDataSource dataSource;
	private PersisDAO persisDao;
	
	@Test
	public void testInclude() {
		dataSource = new BasicDataSource();
		dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
		dataSource.setUsername("root");
		dataSource.setPassword("root");
		dataSource.setUrl("jdbc:mysql://localhost:3306/crud?useTimezone=true&serverTimezone=UTC&useSSL = false");
		
		persisDao = new PersisDAO();
	}

	@Test
	public void testEdit() {
		fail("Not yet implemented");
	}

	@Test
	public void testDelete() {
		fail("Not yet implemented");
	}

	@Test
	public void testArrayUsuarios() {
		fail("Not yet implemented");
	}

	@Test
	public void testGetUsuario() {
		fail("Not yet implemented");
	}

	@Test
	public void testAutentication() {
		fail("Not yet implemented");
	}

}
