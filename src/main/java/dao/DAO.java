package dao;
import context.DBContext;
import entity.Brand;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAO {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    //lấy dữ liệu product từ database
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    // lấy dữ liệu brand từ database
    public List<Brand> getAllBrand() {
        List<Brand> list = new ArrayList<>();
        String query = "select * from Brand";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Brand(rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    //lấy 5 sản phẩm mới nhất từ category
    public List<Product> getfiveLast() {
        List<Product> products = new ArrayList<>();
        // Giả sử 'releaseDate' là cột mà bạn sử dụng để xác định sản phẩm mới nhất
        // Hoặc thay 'releaseDate' bằng cột ID nếu bạn muốn sử dụng ID để sắp xếp
        String query = "SELECT * FROM Product ORDER BY productID DESC LIMIT 5;";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                products.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ ở đây
        }
        return products;
    }
    //lấy product theo Brand tương ứng
    public List<Product> getProductByBrand(String brandID) {
        List<Product> list = new ArrayList<>();
        String query = "select * from Product\n"
                + "where brandID=?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1,brandID);
            rs = ps.executeQuery();
            while (rs.next()){
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    public Product getProductByID(String productID) {
        String query = "select * from Product\n" + "where productID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, productID);
            rs = ps.executeQuery();
            while (rs.next()){
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getString(4),
                        rs.getInt(5),
                        rs.getString(6),
                        rs.getInt(7));
            }
        } catch (Exception e) {

        }
        return null;
    }
    public static void main(String[] args){
        DAO dao = new DAO();
        String productID = "5"; // Thay đổi giá trị này tùy theo ID sản phẩm bạn muốn kiểm tra
        Product product = dao.getProductByID(productID);
        if (product != null) {
            System.out.println(product);
        } else {
            System.out.println("Không tìm thấy sản phẩm với ID: " + productID);
        }
//        List<Product> lists = dao.getAllProduct();
//        for (Product o : lists){
//            System.out.println(o);
//        }
    }

}
