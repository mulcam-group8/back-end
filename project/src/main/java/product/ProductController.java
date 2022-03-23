package product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller 

public class ProductController {
 
	@Autowired
	@Qualifier("productservice")
    ProductService productService;
    
    @RequestMapping("/product") 
    public ModelAndView list(ModelAndView mav) {
        mav.setViewName("product");
        mav.addObject("list", productService.listProduct());     
        return mav;  
    }
    
    @RequestMapping("/details/{productId}")
    public ModelAndView details(@PathVariable("productId") int productId, ModelAndView mav) {
        mav.setViewName("details");
        mav.addObject("dto", productService.detailProduct(productId));

        return mav;
    }
}
