package air.korea.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import air.korea.model.MemberVO;
import air.korea.model.TimeAirVO;
import air.korea.model.TimeAirDAO;

@Controller
public class TimeAirController {
	@Autowired
	private TimeAirDAO dao;
	
	@RequestMapping("/list.do")
	public String list(Model model) {
		List<TimeAirVO> list = dao.getTimeList();
		model.addAttribute("getTimelist", list);
		return "TimeAir/TimeAirList";
	}
	
	
	@RequestMapping("/timeSearch.do")
	public String timeSearch() {
		return "TimeAir/fly";
	}
	@RequestMapping("/index.do")
	public String index() {
		return "EyeUnderstand/sign-in";
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

	
	@RequestMapping("/getTimeSearch.do")
	public String timeSearch_detail(Model model, HttpServletRequest request) {
		int start = Integer.parseInt(request.getParameter("start"));
		int end = Integer.parseInt(request.getParameter("end"));
		TimeAirVO vo = new TimeAirVO(start, end, null, null);
		TimeAirVO vo1 = dao.getTimeSearch(vo);
		model.addAttribute("timeSearch", vo1);
		return "TimeAir/flyresult";
	}
}
