package cart;

public class CartDTO {
	
	private int cartId;
    private String memberId;
    private String memberName;
    private int productId;
    private String productName;
    private int productPrice;
    private int money;
    private int productCount;
    

	





	public int getCartId() {
		return cartId;
	}





	public void setCartId(int cartId) {
		this.cartId = cartId;
	}





	public String getMemberId() {
		return memberId;
	}





	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}





	public String getMemberName() {
		return memberName;
	}





	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}





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





	public int getMoney() {
		return money;
	}





	public void setMoney(int money) {
		this.money = money;
	}





	public int getProductCount() {
		return productCount;
	}





	public void setProductCount(int productCount) {
		this.productCount = productCount;
	}





	@Override
	public String toString() {
		return "CartDTO [cartId=" + cartId + ", memberId=" + memberId+ ", productName=" + productName + ", productId=" + productId
                + ", productName=" + productName + ", productPrice=" + productPrice + ", money=" + money + ", productCount=" + productCount + "]";
	}
    
    
}
