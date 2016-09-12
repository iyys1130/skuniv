package kr.capa.acip.dao.attraction;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import kr.capa.acip.dao.attraction.AttractionDAO;
import kr.capa.acip.vo.attraction.AttractionVO;

@RunWith(SpringJUnit4ClassRunner.class)
@WebAppConfiguration
@ContextConfiguration({ "classpath:/spring/applicationContext.xml" }) 
// 위의 두줄로 공장을 대신만들수잇음
// applicontext가 만들어ㅜㅈㅁ..

public class AttractionDAOImplTest {
	@Autowired
	private AttractionDAO attractionDAO;
/*
	public void selectAttraction() throws Exception {
		int anum = 1;
		AttractionVO attraction = attractionDAO.selectAttraction(attr);
		assertNotNull(attraction);
	}*/

	public void insertAttraction() throws Exception {
		AttractionVO attraction = new AttractionVO();
		attraction.setAnum(22);
		attraction.setAname("얍");
		attraction.setAlocation("out");
		attraction.setAadmitnum(12);
		attraction.setAruntime(3);
		attraction.setLnum(3);
		int count = attractionDAO.insertAttraction(attraction);
		assertEquals(1, count);
	}

	// @Test
	public void updateWaitnum() throws Exception {
		AttractionVO attraction = new AttractionVO();
		attraction.setAnum(22);
		attraction.setAwaitnum(100);
		int count = attractionDAO.updateWaitnum(attraction);
		assertEquals(1, count);
	}

	// @Test
	public void updateWaittime() throws Exception {
		AttractionVO attraction = new AttractionVO();
		attraction.setAnum(22);
		attraction.setAwaittime(60);
		int count = attractionDAO.updateWaittime(attraction);
		assertEquals(1, count);
	}

	@Test
	public void selectALL() throws Exception {
		List<AttractionVO> volist = new ArrayList<>();
		volist = attractionDAO.selectAll();
		for (int i = 0; i < volist.size(); i++) {
			AttractionVO vo = volist.get(i);
			System.out.println(vo);
		}
		assertNotNull(volist);
	}
}
