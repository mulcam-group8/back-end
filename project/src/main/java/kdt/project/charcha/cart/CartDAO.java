package kdt.project.charcha.cart;

import java.util.List;

public interface CartDAO {
	
//	List<CartDTO> cartMoney();
//    void insert(CartDTO dto); //��ٱ��� �߰�
//    List<CartDTO> listCart(String userid); //��ٱ��� ���
//    void delete(int cart_id); //��ٱ��� ���� ����
//    void deleteAll(String userid); //��ٱ��� ����
//    void update(int cart_id); 
//    int sumMoney(String userid); //��ٱ��� �ݾ� �հ�
//    int countCart(String userid, int product_id); //��ٱ��� ��ǰ ����
//    void updateCart(CartDTO dto); //��ٱ��� ���� 
//    void modifyCart(CartDTO dto);
    
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); //��ٱ��� �߰�
    List<CartDTO> listCart(String memberId); //��ٱ��� ���
    void delete(int cartId); //��ٱ��� ���� ����
    void deleteAll(String memberId); //��ٱ��� ����
    void update(int cartId); 
    int sumMoney(String memberId); //��ٱ��� �ݾ� �հ�
    int countCart(String memberId, int productId); //��ٱ��� ��ǰ ����
    void updateCart(CartDTO dto); //��ٱ��� ���� 
    void modifyCart(CartDTO dto);

}
