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

import login.MemberDTO;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartservice")
    CartService cartService;

	@RequestMapping("/insert")
	public String insert(@ModelAttribute CartDTO dto, HttpSession session) {
		// 사용자 id를 받아옴
		String memberid = (String) session.getAttribute("memberId");
		if (memberid == null) {

			return "login";
		}
		dto.setMemberId(memberid);
		cartService.insert(dto); // cart 테이블에 데이터 추가
		return "redirect:/cart"; // cart RequestMapping 부분 호출

	}
	@RequestMapping("deleteAll.do")
    public String deleteAll(HttpSession session) {
        String userid=(String)session.getAttribute("memberId");
        if(userid!=null) {
            cartService.deleteAll(userid);
        }
        return "buy";
    }

	// cart정보 조회
	@RequestMapping("/cart")
        public ModelAndView list(HttpSession session, ModelAndView mv) {

		Map<String, Object> map=new HashMap<>();
        	
        	String memberid=(String)session.getAttribute("memberId");
        	//세션에 저장된 아이디가 있다면 
        	if(memberid!=null) { 
        		List<CartDTO> list=cartService.listCart(memberid);//
                int sumMoney=cartService.sumMoney(memberid);// 총 금액
        		 
                map.put("sum", sumMoney);
                map.put("fee", 2500);
                map.put("totalsum", sumMoney+2500);
                map.put("list", list); //장바구니 내역
                map.put("count", list.size()); //장바구니에 있는 상품 개수                
                mv.setViewName("cart"); // 장바구니 view로 이동
                mv.addObject("map", map); // map 정보를 장바구니 view로 넘겨줌
                
                return mv;
        	}else{ // 세션에 저장된 아이디가 없다면
        		return new ModelAndView("login", "", null);
        		//로그인페이지로 이동
        	}// mv end
	}// string end
	
}// class end
