package kr.capa.acip.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import kr.capa.acip.dao.member.MemberDAO;
import kr.capa.acip.vo.member.MemberVO;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {
	@Autowired
	private MemberDAO dao;
	
	@Override
	public String login(String id,String password) {
		String realpassword= dao.selectMember1(id);
		
		System.out.println("password"+password);
		
		if(password.equals(realpassword)){
	    	  return id;
	      }
	      else{
	    	  return "false";
	      }
	}
	
	@Override
	public int memberjoin(MemberVO member){
		return dao.insertMember(member);
	}
	
}
