package ca.danib.sample;

import static org.junit.Assert.assertNotNull;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.security.authentication.encoding.MessageDigestPasswordEncoder;

/*
 * Use encoded values to seed the database (populate-db.sql)
 */
public class PasswordEncoderIntTest {

	private MessageDigestPasswordEncoder fixture;
	private ClassPathXmlApplicationContext context;
	
	@Before
	public void setUp() throws Exception {
		context = new ClassPathXmlApplicationContext("/ArchApp-applicationContext-test.xml");
		fixture = (MessageDigestPasswordEncoder) context.getBean("PasswordEncoder");
	}
	
	@After
	public void tearDown() throws Exception {
		context.close();
	}
	
	@Test
	public void testEncodePassword_alice() {
		verify("alicepassword", "alice");
	}
	
	@Test
	public void testEncodePassword_john() {
		verify("johnpassword", "john");
	}
	
	private void verify(String rawPass, String salt) {
		String encodePassword = fixture.encodePassword(rawPass, salt);
		System.out.println(encodePassword);
		assertNotNull(encodePassword);
	}
	
}
