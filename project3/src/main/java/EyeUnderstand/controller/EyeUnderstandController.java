package EyeUnderstand.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import EyeUnderstand.model.MemberDAO;
import EyeUnderstand.model.MemberVO;
import EyeUnderstand.model.WordDAO;

@Controller
public class EyeUnderstandController {
	@Autowired
	private MemberDAO dao;

	@RequestMapping("/list.do")
	public String list(Model model) {
		String[] list3 = dao.getTestList();
		model.addAttribute("testlist", list3);
		return "EyeUnderstand/Autocomplete";
	}

	@RequestMapping("/login.do")
	public String login() {
		return "EyeUnderstand/sign-in";
	}

	@RequestMapping("login_check.do")
	public String login_check(MemberVO vo, HttpSession session, RedirectAttributes rttr) {

		MemberVO vo1 = dao.login(vo);
		System.out.println(vo1);
		if (vo1 == null) {
			session.setAttribute("vo", vo1);
			rttr.addFlashAttribute("msg", false);
			return "EyeUnderstand/sign-in";
		} else if (vo.getId().equals(vo1.getId()) && vo.getPw().equals(vo1.getPw())) {
			session.setAttribute("vo", vo1);

			return "redirect:cover.do";
		}
		return "EyeUnderstand/cover";
	}

	@RequestMapping("/cover.do")
	public String cover() {
		return "EyeUnderstand/cover";
	}

	@RequestMapping("/choice.do")
	public String choice() {
		return "EyeUnderstand/choice";
	}

	@RequestMapping("/keyboard.do")
	public String keyboard() {
		return "EyeUnderstand/keyboard";
	}

	@RequestMapping("/emoticon.do")
	public String emoticon() {
		return "EyeUnderstand/emoticon";
	}

	@RequestMapping("/request.do")
	public String request() {
		return "EyeUnderstand/request";
	}
	

//@GetMapping("/")
//public String index(HttpServletRequest request) {
//    logger.debug("###INDEX PAGE###");
//    String rtnPage = "index";
//    String ipAddress = request.getHeader("X-FORWARDED-FOR");
//    if (ipAddress == null) {
//        ipAddress = request.getRemoteAddr();
//    }
//    logger.info(ipAddress + " : " + rtnPage);
//    return rtnPage;
//}

	/*
	 * @RequestMapping("/getTimeSearch.do") public String timeSearch_detail(Model
	 * model, HttpServletRequest request) { int start =
	 * Integer.parseInt(request.getParameter("start")); int end =
	 * Integer.parseInt(request.getParameter("end")); TimeAirVO vo = new
	 * TimeAirVO(start, end, null, null); TimeAirVO vo1 = dao.getTimeSearch(vo);
	 * model.addAttribute("timeSearch", vo1); return "TimeAir/flyresult"; }
	 */
}
