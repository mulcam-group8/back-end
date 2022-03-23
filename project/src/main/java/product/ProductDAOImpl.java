package product;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
 
@Repository("productdao")

public class ProductDAOImpl implements ProductDAO {
    
	@Autowired
    SqlSession session; 
 
    @Override
    public List<ProductDTO> listProduct() {
        return session.selectList("product.list_product"); 
	}

    @Override
    public ProductDTO detailProduct(int productId) { 
        return session.selectOne("product.detail_product",productId);
    }
    
}
