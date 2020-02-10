package kr.co.doosun.mvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import kr.co.doosun.mvc.dao.SawonDAO;
import kr.co.doosun.mvc.dto.SawonVO;


@Controller
public class SawonController {
	@Autowired
	private SawonDAO sawonDao;
	
	@RequestMapping(value = "/sawonList")
	public ModelAndView viewAllSawon() {
		ModelAndView mav = new ModelAndView("doo_sawonList");
		List<SawonVO> saList = sawonDao.allSawon();
		mav.addObject("saList", saList);
		return mav;
	} 
}
