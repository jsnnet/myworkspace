//package kr.co.doosun.mvc.service;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import kr.co.doosun.mvc.dao.LoginDAO;
//import kr.co.doosun.mvc.dto.MemberVO;
//
//@Service
//public class MeberServiceImple implements MemberService {
//	
//	@Autowired
//	private LoginDAO loginDao;
//
//	@Override
//	public boolean loginChk(MemberVO vo, HttpSession session) {
//		boolean result = loginDao.loginCheck(vo);
//		if (result) {
//			MemberVO mvo = viewMember(vo);
//			session.setAttribute("uid", mvo.getMemid());
//			session.setAttribute("uname", mvo.getMemname());	
//		}
//		return result;
//	}
//
//	@Override
//	public MemberVO viewMember(MemberVO vo) {
//		return loginDao.viewMember(vo);
//	}
//
//	@Override
//	public void logOut(HttpSession session) {
//		session.invalidate();
//	}
//}
