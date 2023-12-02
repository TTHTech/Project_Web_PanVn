package entity;

public class Item {
    private int cartItemID;

    private Product product;
    private int quantity;
    private double price;
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Item() {
    }

    public Item(Product product, int quantity , double price) {
        this.product = product;
        this.quantity = quantity;
        this.price = price;
    }

    // Getters and Setters
    public int getCartItemID() {
        return cartItemID;
    }

    public void setCartItemID(int cartItemID) {
        this.cartItemID = cartItemID;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Item{" +
                "cartItemID=" + cartItemID +
                ", product=" + product +
                ", quantity=" + quantity +
                '}';
    }
}
