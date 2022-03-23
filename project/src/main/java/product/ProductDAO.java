package product;

import java.util.List;

public interface ProductDAO {
	
	    List<ProductDTO> listProduct();
	    ProductDTO detailProduct(int productId);

}
