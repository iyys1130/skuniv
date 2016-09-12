package kr.capa.acip.dao.land;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import kr.capa.acip.dao.land.*;
import kr.capa.acip.vo.attraction.AttractionVO;
import kr.capa.acip.vo.land.LandVO;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "classpath:/spring/applicationContext.xml" }) 
// 위의 두줄로 공장을 대신만들수잇음
// applicontext													// 만들어ㅜㅈㅁ..
public class LandDAOImplTest {
	@Autowired
	private LandDAO landDAO;

	public void selectLand() throws Exception {
		int lnum = 1;
		LandVO land = landDAO.selectLand(lnum);
		assertNotNull(land);
	}

	// @Test
	public void insertLand() throws Exception {
		LandVO land = new LandVO();
		land.setLnum(4);
		land.setLname("케파랜드");
		int count = landDAO.insertLand(land);
		assertEquals(1, count);
	}

	@Test
	public void selectAll() throws Exception {
		List<LandVO> volist = new ArrayList<>();
		volist = landDAO.selectAll();
		for (int i = 0; i < volist.size(); i++) {
			LandVO vo = volist.get(i);
			System.out.println(vo);
		}
		assertNotNull(volist);
	}
}
