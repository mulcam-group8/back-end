package cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartservice")
    CartService cartService;

	@RequestMapping("insert.do")
	public String insert(@ModelAttribute CartDTO dto, HttpSession session) {
		// 로그인 여부 체크 - 세션에 저장된 아이디 확인
		String memberid = (String) session.getAttribute("memberId");
		if (memberid == null) {

			return "login";
		}
		dto.setMemberId(memberid);
		cartService.insert(dto); //장바구니 테이블에 저장됨
		return "cart"; // 장바구니 목록으로 이동

	}

	// cart페이지와 맵핑되는 메소드
	@RequestMapping("/cart")
        public ModelAndView list(HttpSession session, ModelAndView mv) {

		Map<String, Object> map=new HashMap<>();
        	
        	String memberid=(String)session.getAttribute("memberId");
        	//로그인 상태일 때 실행  
        	if(memberid!=null) { 
        		List<CartDTO> list=cartService.listCart(memberid);//장바구니 목록
                int sumMoney=cartService.sumMoney(memberid);//금액 합계
        		 
                map.put("sum", sumMoney);
                map.put("fee", 2500);
                map.put("totalsum", sumMoney+2500);
                map.put("list", list); //장바구니 목록
                map.put("count", list.size()); //레코드 갯수
                
                mv.setViewName("cart"); //이동할 페이지의 이름
                mv.addObject("map", map); //데이터 저장
                
                return mv;
        	}else{ // 로그인하지 않은 상태
        		return new ModelAndView("login", "", null);
//로그인을 하지 않았으면 로그인 페이지로 이동시킨다.
}// mv end
}// string end
}// class end
