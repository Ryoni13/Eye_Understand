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

import EyeUnderstand.model.FavoriteVO;
import EyeUnderstand.model.MemberDAO;
import EyeUnderstand.model.MemberVO;

@Controller
public class EyeUnderstandController {
	@Autowired
	private MemberDAO dao;

	/*@RequestMapping("/list.do")
	public String list(Model model) {
		String[] list3 = dao.getTestList();
		model.addAttribute("testlist", list3);
		return "EyeUnderstand/Autocomplete";
	}*/
	
	@RequestMapping("/list.do")
	public String wordlist(Model model, FavoriteVO f_vo, HttpSession session) {
		String[] list3 = dao.getTestList();
		MemberVO vo = (MemberVO)session.getAttribute("vo");
		List<FavoriteVO> list4 = dao.favoriteSelect(vo);
		if (list4 == null) {
			System.out.println("List Null");
		}else {
			System.out.println("ListListListListListListListListListList" + list4);
		}
		model.addAttribute("testlist", list3);
		model.addAttribute("wordlist", list4);
		
		return "EyeUnderstand/Autocomplete";
	}
	
	@RequestMapping("/favorite_insert.do")
	public String favorite_insert(HttpServletRequest request , HttpSession session, RedirectAttributes rttr, Model model) {
		String favoriteword = request.getParameter("favoriteword");
		MemberVO vo = (MemberVO) session.getAttribute("vo");
		
		System.out.println("ID >>>>>>>>>>>>> " + vo.getId());
		String id = vo.getId();
		FavoriteVO f_vo = new FavoriteVO(id, favoriteword, 1);
		
		System.out.println("id >>>>>>>>>>>>>>>> " + id);
		System.out.println("favoriteword >>>>>> "+ favoriteword);
		
		dao.favoriteInsert(f_vo);
		session.setAttribute("vo", vo);
		
//		model.addAttribute("vo", f_vo);
		
		return "redirect:list.do";
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


	@RequestMapping("/emoticon.do")
	public String emoticon() {
		return "EyeUnderstand/emoticon";
	}

	@RequestMapping("/request.do")
	public String request() {
		return "EyeUnderstand/request";
	}
	
}
