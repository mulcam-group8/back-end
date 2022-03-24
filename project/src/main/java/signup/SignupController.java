package signup;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SignupController {
	@Autowired
	@Qualifier("signupservice")
	SignupService service;
	
	@RequestMapping("/sign")    // 약관동의 페이지 출력
	public String signupform() {
		return "tos";
	}
	
	@GetMapping("/signup")    // 회원가입 페이지 출력
	public String signup() {
		return "signup";
	}
	
	@PostMapping("/signup")    // 입력받은 정보에 따라 회원가입 여부 판단 
	public ModelAndView signresult(@RequestParam("userid") String memberId,@RequestParam("userpw") String memberPw,
			@RequestParam("usernick") String memberName, @RequestParam("useremail") String memberEmail,
			@RequestParam("user_address") String emailAddress) {
		MemberDTO dto = new MemberDTO();
		dto.setMemberId(memberId);
		dto.setMemberName(memberName);
		dto.setMemberPw(memberPw);
		dto.setMemberEmail(memberEmail + "@" + emailAddress);
		ModelAndView mv = new ModelAndView();
		String signupresult = "no";
		
		
		boolean id_check = service.checkid(memberId);
		
		if(id_check) {  // 아이디가 사용가능하다면
			signupresult = "yes";
			service.insertmember(dto);
			mv.setViewName("redirect:/signupend");
		}else {
			signupresult = "no";
			mv.setViewName("signup");
			
		}
		mv.addObject("signupresult",signupresult);
		
		return mv;
	}
	
	@RequestMapping("/signupend")  // 회원가입 완료
	public String signupend() {
		return "signupend";
	}
	
}