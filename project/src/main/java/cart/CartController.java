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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CartController {
	@Autowired
	@Qualifier("cartservice")
    CartService cartService;

	@RequestMapping("/insert")
	public String insert(@ModelAttribute CartDTO dto, HttpSession session) {
		// ����� id�� �޾ƿ�
		String memberid = (String) session.getAttribute("memberId");
		if (memberid == null) {

			return "login";
		}
		dto.setMemberId(memberid);
		cartService.insert(dto); // cart ���̺� ������ �߰�
		return "redirect:/cart"; // cart RequestMapping �κ� ȣ��

	}
	//��ٱ��� ��� ����(=����)
	@RequestMapping("deleteAll.do")
    public String deleteAll(HttpSession session) {
        String userid=(String)session.getAttribute("memberId");
        if(userid!=null) {
            cartService.deleteAll(userid);
        }
        return "buy";
    }
	
	//��ٱ��� ���� ����
	@RequestMapping("delete.do")
    public String delete(@RequestParam int cartId) {
        cartService.delete(cartId);
        return "redirect:/cart";
    }
	

	// cart���� ��ȸ
	@RequestMapping("/cart")
        public ModelAndView list(HttpSession session, ModelAndView mv) {

		Map<String, Object> map=new HashMap<>();
        	
        	String memberid=(String)session.getAttribute("memberId");
        	//���ǿ� ����� ���̵� �ִٸ� 
        	if(memberid!=null) { 
        		List<CartDTO> list=cartService.listCart(memberid);//
                int sumMoney=cartService.sumMoney(memberid);// �� �ݾ�
        		 
                map.put("sum", sumMoney);//��ǰ�� �ݾ�
                map.put("fee", 2500);//��۷�
                map.put("totalsum", sumMoney+2500);//�� �ݾ�
                map.put("list", list); //��ٱ��� ����
                map.put("count", list.size()); //��ٱ��Ͽ� �ִ� ��ǰ ����                
                mv.setViewName("cart"); // ��ٱ��� view�� �̵�
                mv.addObject("map", map); // map ������ ��ٱ��� view�� �Ѱ���
                
                return mv;
        	}else{ // ���ǿ� ����� ���̵� ���ٸ�
        		return new ModelAndView("login", "", null);
        		//�α����������� �̵�
        	}// mv end
	}// string end
	
}// class end