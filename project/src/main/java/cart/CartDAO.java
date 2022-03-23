package cart;

import java.util.List;

public interface CartDAO {
    
    List<CartDTO> cartMoney();
    void insert(CartDTO dto); //장바구니 추가
    List<CartDTO> listCart(String memberId); //장바구니 목록
    //void delete(int cartId); //장바구니 개별 삭제
    //void deleteAll(String memberId); //장바구니 비우기
    void update(int cartId); 
    int sumMoney(String memberId); //장바구니 금액 합계
    int countCart(String memberId, int productId); //장바구니 상품 갯수
    void updateCart(CartDTO dto); //장바구니 수정 
    void modifyCart(CartDTO dto);

}
