package cart;

import java.util.List;

import login.MemberDTO;

public interface CartDAO {
    
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); // ��ٱ��Ͽ� ������ �߰�
    List<CartDTO> listCart(String memberId); // ��ٱ��� ���� ��� ���캸�� 
    void delete(int cartId); // ��ٱ��Ͽ��� ����
    void deleteAll(String memberId); // memberId�� �ش��ϴ� ��ٱ��� ���� ��� ����
    void update(int cartId);   //��ٱ��� ��ǰ ���� ����
    int sumMoney(String memberId); 
    int countCart(String memberId, int productId);
   /* void updateCart(CartDTO dto); // ��ٱ��� ���̺� ����
    void modifyCart(CartDTO dto);
    */

}