package login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	@Autowired
	@Qualifier("loginservice")
	LoginService service;
	
	@GetMapping("/login")
	public String loginform() {
		return "login";
	}
	
	@PostMapping("/login")
	public ModelAndView loginresult(@RequestParam("id") String memberId,@RequestParam("pw") String memberPw) {
		String answer;
		ModelAndView mv = new ModelAndView();
		if(memberId==null) {
			answer="noid";
		}else if(memberPw == null) {
			answer="nopw";
		}else {	
			boolean resultid = service.loginid(memberId);
			
			if(resultid) {
				boolean resultpw = service.loginpw(memberId, memberPw);
				if(resultpw) {
					answer = "success";
				}else {
					answer = "nopw";
				}
			}else {
				answer = "noid";
			}
			mv.addObject("loginresult",answer);
		}
		
		if(answer.equals("success")) {
			mv.setViewName("main");
		}else {			
			mv.setViewName("login");
		}
		
		return mv;
		
	}
}
