package product;

import java.util.List;

public interface ProductService {
	List<ProductDTO> listProduct();
    ProductDTO detailProduct(int productId);
    
}
