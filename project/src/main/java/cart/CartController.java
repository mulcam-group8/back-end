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
		// �α��� ���� üũ - ���ǿ� ����� ���̵� Ȯ��
		String memberid = (String) session.getAttribute("memberId");
		if (memberid == null) {

			return "login";
		}
		dto.setMemberId(memberid);
		cartService.insert(dto); //��ٱ��� ���̺� �����
		return "redirect:/cart"; // ��ٱ��� ������� �̵�

	}
	@RequestMapping("deleteAll.do")
    public String deleteAll(HttpSession session) {
        String userid=(String)session.getAttribute("memberId");
        if(userid!=null) {
            cartService.deleteAll(userid);
        }
        return "buy";
    }

	// cart�������� ���εǴ� �޼ҵ�
	@RequestMapping("/cart")
        public ModelAndView list(HttpSession session, ModelAndView mv) {

		Map<String, Object> map=new HashMap<>();
        	
        	String memberid=(String)session.getAttribute("memberId");
        	//�α��� ������ �� ����  
        	if(memberid!=null) { 
        		List<CartDTO> list=cartService.listCart(memberid);//��ٱ��� ���
                int sumMoney=cartService.sumMoney(memberid);//�ݾ� �հ�
        		 
                map.put("sum", sumMoney);
                map.put("fee", 2500);
                map.put("totalsum", sumMoney+2500);
                map.put("list", list); //��ٱ��� ���
                map.put("count", list.size()); //���ڵ� ����                
                mv.setViewName("cart"); //�̵��� �������� �̸�
                mv.addObject("map", map); //������ ����
                
                return mv;
        	}else{ // �α������� ���� ����
        		return new ModelAndView("login", "", null);
        		//�α����� ���� �ʾ����� �α��� �������� �̵���Ų��.
        	}// mv end
	}// string end
	
}// class end
