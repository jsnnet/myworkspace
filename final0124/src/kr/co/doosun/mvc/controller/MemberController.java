package kr.co.doosun.mvc.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import kr.co.doosun.mvc.dao.MemberDAO;
import kr.co.doosun.mvc.dto.MemberVO;
//import kr.co.doosun.mvc.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	private MemberDAO memberDao;

//	@Autowired
//	private MemberService memberService;

	@GetMapping("/signin")
	public String signForm() {
		return "doo_signin3";
	}

	@PostMapping("/signin_completed")
	public String myMemberJoin(Model m, MemberVO vo) {
		System.out.println(vo.getMemid());
		memberDao.signIn(vo);
		return "doo_loginPage2";
	}

	@GetMapping("/chkid")
	public String idCheck(Model m, @RequestParam("memid") String memid) {
		int cnt = memberDao.idChk(memid);
		String msg = "�̹� ������� ���̵� �Դϴ�.";
		if (cnt == 0) {
			msg = "��� ������ ���̵� �Դϴ�.";
		}
		m.addAttribute("cnt", cnt);
		return "doo_chkid";
	}

	@RequestMapping(value = "/loginPage")
	public String loginPage() {
		return "doo_loginPage2";

	}

	// spring�ΰ�� HttpSession ����,
	// @RequestHeader ��û�� �Ѿ���� �ش����� ���� �� �ִ� ������̼�
	@RequestMapping("/trylogin")
	public ModelAndView loginProcess(HttpSession session,
			HttpServletRequest request, MemberVO vo, 
			@RequestHeader("User-Agent") String userAgent) {
		// boolean result = memberService.loginChk(vo, session);
		MemberVO map = memberDao.loginChk(vo);
		ModelAndView mav = new ModelAndView();
		if (map == null) {
			mav.setViewName("error");

		} else { // �α��� ����
			session.setAttribute("unum", map.getMemnum());
			session.setAttribute("uname", map.getMemname());
			session.setAttribute("uid", map.getMemid());

			System.out.println(session.getAttribute("unum"));
			System.out.println(session.getAttribute("uname"));
			System.out.println(session.getAttribute("uid"));
			mav.setViewName("doo_slideshow3");
		}
		return mav;
	}

	@GetMapping("/logout")
	public ModelAndView loginfoutProcess(HttpSession session, HttpServletRequest request) {
		session.removeAttribute("umum");
		session.removeAttribute("uname");
		session.removeAttribute("uid"); // �α����� ������� ���� ����
		session.invalidate();
		ModelAndView mav = new ModelAndView();
		mav.setViewName("doo_logout");
		
		return mav;
	}

	@RequestMapping("/error")
	public String error() {
		System.out.println("����");
		return "error";
	}

}
