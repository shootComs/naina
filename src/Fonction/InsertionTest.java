package Fonction;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class InsertionTest {

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void testInsertMembre() throws Exception{
		System.out.println("ok");
        
		MapMembre u = new MapMembre();
        
        u.setNom("Ratikl");
        u.setPrenom("tikl");
        u.setEmail("tikl@gmail.com");
        u.setMdp("Ratikl1234");
        
        boolean expResult = true;
        boolean result = Insertion.insertMembre(u);
        
        assertEquals(expResult, result);
	}
}
