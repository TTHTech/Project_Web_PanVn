package entity;

public class Product {
    private int productID;
    private String title;
    private double price;
    private String description;
    private int brandID;
    private String color;
    private int productDetailID;

    // Constructor mặc định
    public Product() {
    }

    // Constructor với tất cả các thuộc tính
    public Product(int productID, String title, double price, String description, int brandID, String color, int productDetailID) {
        this.productID = productID;
        this.title = title;
        this.price = price;
        this.description = description;
        this.brandID = brandID;
        this.color = color;
        this.productDetailID = productDetailID;
    }

    // Getter và Setter cho productID
    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    // Getter và Setter cho title
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    // Getter và Setter cho price
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    // Getter và Setter cho description
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    // Getter và Setter cho brandID
    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

    // Getter và Setter cho color
    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    // Getter và Setter cho productDetailID
    public int getProductDetailID() {
        return productDetailID;
    }

    public void setProductDetailID(int productDetailID) {
        this.productDetailID = productDetailID;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", title='" + title + '\'' +
                ", price=" + price +
                ", description='" + description + '\'' +
                ", brandID=" + brandID +
                ", color='" + color + '\'' +
                ", productDetailID=" + productDetailID +
                '}';
    }
}
