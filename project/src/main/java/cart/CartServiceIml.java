
package cart;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import login.MemberDAO;
import login.MemberDTO;

@Service("cartservice")
public class CartServiceIml implements CartService {
	
	@Autowired
	@Qualifier("cartdao")
    CartDAO cartDao;
	
	 @Override
	    public List<CartDTO> cartMoney() {
	        return null;
	    }
	    @Override
	    public void insert(CartDTO dto) {
	        cartDao.insert(dto);
	    }
	 
	    @Override
	    public List<CartDTO> listCart(String userid) {
	        return cartDao.listCart(userid);
	    }
	    
	 
	   @Override
	    public void delete(int cartId) {
	        cartDao.delete(cartId);
	    }
	  
	    @Override
	    public void deleteAll(String memberId) {
	        cartDao.deleteAll(memberId);
	    } 
	 
	    @Override
	    public void update(int cartId) {
	    	 cartDao.update(cartId);
	    }
	 
	    @Override
	    public int sumMoney(String userid) {
	        return cartDao.sumMoney(userid);
	    }
	 
	    @Override
	    public int countCart(String userid, int product_id) {
	        return 0;
	    }
	 
	  /*
	    @Override
	    public void updateCart(CartDTO dto) {
	 
	    }
	 
	    @Override
	    public void modifyCart(CartDTO dto) {
	        cartDao.modifyCart(dto);
	    }
		
	 */
	  
	
}
