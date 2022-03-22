package kdt.project.charcha.cart;

public class CartDTO {
	
	private int cartId;
    private String memberId;
    private String name;
    private int productId;
    private String productName;
    private int price;
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


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
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


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
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
		return "CartDTO [cartId=" + cartId + ", memberId=" + memberId+ ", name=" + name + ", productId=" + productId
                + ", productName=" + productName + ", price=" + price + ", money=" + money + ", productCount=" + productCount + "]";
	}
    
    
}
