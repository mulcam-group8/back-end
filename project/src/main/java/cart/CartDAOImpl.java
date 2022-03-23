package cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 

@Repository("cartdao")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	SqlSession sqlSession;

	   @Override
	    public List<CartDTO> cartMoney() {
	        // TODO Auto-generated method stub
	        return null;
	    }
	    //장바구니에 담기
	    @Override
	    public void insert(CartDTO dto) {
	//dto에 저장된 값을 받아서 sql세션에 저장하고 cart.insert로 넘어감 mapper로.
	        sqlSession.insert("cart.insert", dto); 
	    }
	 
	    @Override
	    public List<CartDTO> listCart(String memberId) {
	        return sqlSession.selectList("cart.listCart", memberId);
	    }
	 
	    /*@Override
	    public void delete(int cartId) {
	        sqlSession.delete("cart.delete", cartId); 
	    }*/
	 
	    @Override
	    public void deleteAll(String memberId) {
	        sqlSession.delete("cart.deleteAll", memberId);
	    }
	 
	    @Override
	    public void update(int cartId) {
	        // TODO Auto-generated method stub
	 
	    }
	 
	    @Override
	    public int sumMoney(String memberId) {
	        return sqlSession.selectOne("cart.sumMoney", memberId); 
	    }
	 
	    @Override
	    public int countCart(String memberId, int productId) {
	        // TODO Auto-generated method stub
	        return 0;
	    }
	 
	    @Override
	    public void updateCart(CartDTO dto) {
	        // TODO Auto-generated method stub
	 
	    }
	 
	    @Override
	    public void modifyCart(CartDTO dto) {
	        sqlSession.update("cart.modify", dto);
	    }
	 
	}
