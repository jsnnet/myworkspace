package kr.co.doosun.mvc.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.doosun.mvc.dto.LoginDTO;
import kr.co.doosun.mvc.dto.MemberVO;

@Repository
public class MemberDAO {
	@Autowired
	private SqlSession ss;
	
	public void signIn(MemberVO vo) {
		ss.insert("member.signin", vo);
	}
	
	public int idChk(String memid) {
		return ss.selectOne("member.idchk", memid);
	}
	
	public void loginProgress(LoginDTO dto) {
		ss.insert("member.login",dto);
	}
	
	public MemberVO loginChk(MemberVO vo) {
		return ss.selectOne("member.loginchk", vo);
	}

}
