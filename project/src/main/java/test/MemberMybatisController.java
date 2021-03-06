package test;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberMybatisController {
	
	@Autowired
	@Qualifier("mybatisservice")
	MemberService service;
	
//service memberlist 메소드 전체회원 조회 결과 모델, mybatis/memberlist.jsp 뷰
	
	@RequestMapping("/membermybatislist")
	public ModelAndView memberlist(HttpServletRequest request) {
		HttpSession session = request.getSession();
		ModelAndView mv = new ModelAndView();
		
		String s = (String)session.getAttribute("memberId");
		System.out.println(s);
		mv.addObject("memberlist",s);
		mv.setViewName("mybatis/memberlist");
		
		return mv;
	}
	
	@RequestMapping("/membermybatispaginglist")
	public ModelAndView memberlist(int page) {
		ModelAndView mv = new ModelAndView();
		int[] paging = new int[2];
		paging[0] = (page-1)*5;
		paging[1] = 5;
		List<MemberDTO> list = service.memberlist(paging);
		mv.addObject("memberlist",list);
		mv.addObject("name","페이징처리리스트");
		mv.setViewName("mybatis/memberlist");
		
		return mv;
	}
	
	@RequestMapping("/membermybatissearchlist")
	public ModelAndView memberlist(String address[]) {
		ModelAndView mv = new ModelAndView();
		List<String> list_id = service.memberaddresssearch(address);
		String[] l = list_id.toArray(new String[list_id.size()]);
		List<MemberDTO> list = service.memberlist(l);
		mv.addObject("memberlist",list);
		mv.addObject("name","주소검색리스트");
		mv.setViewName("mybatis/memberlist");
		
		return mv;
	}
	
	@GetMapping("/membermybatisinsert")
	public String insertform() {
		return "mybatis/insertform";
	}
	
	@PostMapping("/membermybatisinsert")
	public ModelAndView insertresult(MemberDTO dto) {
		ModelAndView mv = new ModelAndView();
		int insertrow = service.insertmember(dto);
		mv.addObject("insertrow",insertrow);
		mv.setViewName("mybatis/insertresult");
		return mv;
	}
	
	@GetMapping("/membermybatisupdate")
	public String updateform(String id) {
		return "mybatis/updateform";
	}
	
	@PostMapping("/membermybatisupdate")
	public ModelAndView updateresult(MemberDTO dto) {
		ModelAndView mv = new ModelAndView();
		int updaterow = service.updatemember(dto);
		mv.addObject("updaterow",updaterow);
		mv.setViewName("mybatis/updateresult");
		return mv;
	}
	
	@RequestMapping("/membermybatisdelete")
	public ModelAndView deleteresult(String id) {
		int result = service.deletemember(id);
		List<MemberDTO> list = null;
		if(result == 1) {
			list = service.memberlist();
		}
		ModelAndView mv = new ModelAndView();
		mv.addObject("memberlist",list);
		mv.setViewName("mybatis/memberlist");
		
		return mv;
	}
}
