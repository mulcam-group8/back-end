package product;

import java.util.List;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("productservice")
public class ProductServiceImpl implements ProductService {
 
	@Autowired
	@Qualifier("productdao")
    ProductDAO dao;
    
    
    @Override
    public List<ProductDTO> listProduct() {
        return dao.listProduct(); //��ǰ ����Ʈ ����
    }

	@Override
    public ProductDTO detailProduct(int productId) {
        return dao.detailProduct(productId);    
    }


	
}
