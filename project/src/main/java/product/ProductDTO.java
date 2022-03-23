package product;

public class ProductDTO {
	
	    private int productId;
	    private String productName;
	    private int productPrice;
	    private String productContents;
	    private String productImg;
	    private String productImg2;
	    
		public int getProductId() {
			return productId;
		}
		public void setProductId(int productId) {
			this.productId = productId;
		}
		public String getProductName() {
			return productName;
		}
		public void setProductName(String productName) {
			this.productName = productName;
		}
		public int getProductPrice() {
			return productPrice;
		}
		public void setProductPrice(int productPrice) {
			this.productPrice = productPrice;
		}
		public String getProductContents() {
			return productContents;
		}
		public void setProductContents(String productContents) {
			this.productContents = productContents;
		}
		public String getProductImg() {
			return productImg;
		}
		public void setProductImg(String productImg) {
			this.productImg = productImg;
		}
		public String getProductImg2() {
			return productImg2;
		}
		public void setProductImg2(String productImg2) {
			this.productImg2 = productImg2;
		}
		@Override
		public String toString() {
			return "ProductDTO [productId=" + productId + ", productName=" + productName + ", productPrice="
					+ productPrice + ", productContents=" + productContents + ", productImg=" + productImg
					+ ", productImg2=" + productImg2 + "]";
		}
	
	    
	    
}
