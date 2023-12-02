package dao;

import context.DBContext;
import entity.Item;
import entity.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class cartDAO {
    private Connection getConnection() throws SQLException {
        return new DBContext().getConnection();
    }

    // Thêm một sản phẩm vào giỏ hàng
    public void addProductToCart(int userId, int productId, int quantity) {
        String query = "INSERT INTO Item (cartID, productID, quantity) VALUES (?, ?, ?)";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            // Lấy cartID dựa trên userId
            int cartId = getCartIdByUserId(userId);

            ps.setInt(1, cartId);
            ps.setInt(2, productId);
            ps.setInt(3, quantity);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Lấy cartID dựa trên userID
    private int getCartIdByUserId(int userId) {
        String query = "SELECT cartID FROM Cart WHERE userID = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, userId);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    return rs.getInt("cartID");
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return -1; // Trả về -1 nếu không tìm thấy cartID
    }

    // Cập nhật số lượng của một sản phẩm trong giỏ hàng
    public void updateCartItem(int cartId, int productId, int quantity) {
        String query = "UPDATE Item SET quantity = ? WHERE cartID = ? AND productID = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, quantity);
            ps.setInt(2, cartId);
            ps.setInt(3, productId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Xóa một sản phẩm khỏi giỏ hàng
    public void deleteCartItem(int cartId, int productId) {
        String query = "DELETE FROM Item WHERE cartID = ? AND productID = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, cartId);
            ps.setInt(2, productId);
            ps.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // Lấy danh sách các sản phẩm trong giỏ hàng
    public List<Item> getCartItems(int userId) {
        List<Item> items = new ArrayList<>();
        String query = "SELECT * FROM Item WHERE cartID = ?";
        int cartId = getCartIdByUserId(userId);

        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, cartId);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    Item item = new Item();
                    item.setCartItemID(rs.getInt("cartItemID"));
                    item.setProductID(rs.getInt("productID"));
                    item.setQuantity(rs.getInt("quantity"));
                    items.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return items;
    }

    public boolean productExistsInCart(int userId, int productId) throws SQLException {
        String query = "SELECT COUNT(*) FROM Item WHERE cartID = (SELECT cartID FROM Cart WHERE userID = ?) AND productID = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, userId);
            ps.setInt(2, productId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                return rs.getInt(1) > 0;
            }
        }
        return false;
    }

    // Cập nhật số lượng của sản phẩm trong giỏ hàng
    public void updateProductQuantityInCart(int userId, int productId, int additionalQuantity) throws SQLException {
        String query = "UPDATE Item SET quantity = quantity + ? WHERE cartID = (SELECT cartID FROM Cart WHERE userID = ?) AND productID = ?";
        try (Connection conn = getConnection();
             PreparedStatement ps = conn.prepareStatement(query)) {

            ps.setInt(1, additionalQuantity);
            ps.setInt(2, userId);
            ps.setInt(3, productId);
            ps.executeUpdate();
        }
    }

    public static void main(String[] args) {
        cartDAO cartDAO = new cartDAO();
        productDAO productDAO = new productDAO();

        int userId = 2; // Giả sử đây là ID của người dùng
        List<Item> cartItems = cartDAO.getCartItems(userId);
        List<Product> products = new ArrayList<>();

        for (Item item : cartItems) {
            Product product = productDAO.getProductByID(String.valueOf(item.getProductID()));
            if (product != null) {
                products.add(product);
            }
        }

        System.out.println("Danh sách sản phẩm trong giỏ hàng:");
        for (Product product : products) {
            System.out.println(product);
        }
    }

}
