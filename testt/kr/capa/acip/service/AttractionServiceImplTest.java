package kr.capa.acip.service;

import static org.junit.Assert.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:/Spring/applicationContext.xml"})
public class AttractionServiceImplTest {
	@Autowired
	AttractionService AttractionService;
	
	@Test
	public void GiantsUpdate() throws Exception{
		int lnum=3;
		int anum=21;
		int awaitnum=222;
		System.out.println(lnum);
		assertEquals(1,AttractionService.AttractionUpdate(3, 21, 222));
	}
}
