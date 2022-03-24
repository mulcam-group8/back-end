package cart;

import java.util.List;

import login.MemberDTO;

public interface CartDAO {
    
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); // 장바구니에 데이터 추가
    List<CartDTO> listCart(String memberId); // 장바구니 내역 모두 살펴보기 
    void delete(int cartId); // 장바구니에서 삭제
    void deleteAll(String memberId); // memberId에 해당하는 장바구니 내역 모두 삭제
    void update(int cartId);   
    int sumMoney(String memberId); 
    int countCart(String memberId, int productId);
   
    /* void updateCart(CartDTO dto); // ��ٱ��� ���̺� ����
    void modifyCart(CartDTO dto);
    */

}