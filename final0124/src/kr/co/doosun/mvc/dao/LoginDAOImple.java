//package kr.co.doosun.mvc.dao;
//
//import javax.servlet.http.HttpSession;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Repository;
//
//import kr.co.doosun.mvc.dto.MemberVO;
//
//@Repository
//public class LoginDAOImple implements LoginDAO {
//
//	@Autowired
//	private SqlSession ss;
//	
//	@Override
//	public boolean loginCheck(MemberVO vo) {
//		String name = ss.selectOne("member.loginchk", vo);
//		return (name == null) ? false : true;
//	}
//
//	@Override
//	public MemberVO viewMember(MemberVO vo) {
//		return ss.selectOne("member.viewMember", vo);
//	}
//
//	@Override
//	public void logOut(HttpSession session) {		
//	}
//
//}
