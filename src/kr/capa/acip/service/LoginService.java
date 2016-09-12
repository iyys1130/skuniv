package kr.capa.acip.service;

import kr.capa.acip.vo.member.MemberVO;

public interface LoginService {
	public String login(String id,String password);
	public int memberjoin(MemberVO member);
}
