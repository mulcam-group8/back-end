package cart;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import login.MemberDTO;
 

@Repository("cartdao")
public class CartDAOImpl implements CartDAO{
	
	@Autowired
	SqlSession sqlSession;

	   @Override
	    public List<CartDTO> cartMoney() {
	        return null;
	    }
	    // 장바구니에 데이터를 추가함
	    @Override
	    public void insert(CartDTO dto) {
	        sqlSession.insert("cart.insert", dto); 
	    }
	 
	    @Override
	    public List<CartDTO> listCart(String memberId) {
	        return sqlSession.selectList("cart.listCart", memberId);
	    }
	   
	  
	   
	    
	    @Override
	    public void delete(int cartId) {
	        sqlSession.delete("cart.delete", cartId); 
	    }
	 
	    @Override
	    public void deleteAll(String memberId) {
	        sqlSession.delete("cart.deleteAll", memberId);
	    }
	 
	    @Override
	    public void update(int cartId) {
	    	 sqlSession.update("cart.update", cartId); 
	    }
	 
	    @Override
	    public int sumMoney(String memberId) {
	        return sqlSession.selectOne("cart.sumMoney", memberId); 
	    }
	 
	    @Override
	    public int countCart(String memberId, int productId) {
	        return 0;
	    }
	 /*
	    @Override
	    public void updateCart(CartDTO dto) {
	 
	    }
	 
	    @Override
	    public void modifyCart(CartDTO dto) {
	        sqlSession.update("cart.modify", dto);
	    }
	   
	  */
	}