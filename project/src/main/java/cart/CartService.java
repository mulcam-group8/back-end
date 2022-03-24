package cart;

import java.util.List;

import login.MemberDTO;

public interface CartService {
	 List<CartDTO> cartMoney();
	    void insert(CartDTO dto); //��ٱ��� �߰�
	    List<CartDTO> listCart(String memberId); //��ٱ��� ���
	    //void delete(int cartId); //��ٱ��� ���� ����
	    void deleteAll(String memberId); //��ٱ��� ����
	    void update(int cartId); 
	    int sumMoney(String memberId); //��ٱ��� �ݾ� �հ�
	    int countCart(String memberId, int productId); //��ٱ��� ��ǰ ����
	    void updateCart(CartDTO dto); //��ٱ��� ���� 
	    void modifyCart(CartDTO dto);
	    
}
