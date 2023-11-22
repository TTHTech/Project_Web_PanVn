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
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID";
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
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    //lấy dữu liệu productdetail từ database
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
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID \n" +
                "ORDER BY productID DESC LIMIT 5;";
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
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {
            // Xử lý ngoại lệ ở đây
        }
        return products;
    }
    //lấy product theo Brand tương ứng
    public List<Product> getProductByBrand(String brandID) {
        List<Product> list = new ArrayList<>();
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "    g.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID AND p.brandID =?";
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
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17)));
            }
        } catch (Exception e) {

        }
        return list;
    }
    public Product getProductByID(String productID) {
        String query = "SELECT\n" +
                "    p.productID,\n" +
                "    p.title,\n" +
                "    p.price,\n" +
                "    p.description,\n" +
                "    p.brandID,\n" +
                "    p.color,\n" +
                "    p.productDetailID,\n" +
                "\tg.imageURL1,\n" +
                "    g.imageURL2,\n" +
                "    g.imageURL3,\n" +
                "    g.imageURL4,\n" +
                "    pd.processor,\n" +
                "    pd.ram,\n" +
                "    pd.storage,\n" +
                "    pd.graphicsCard,\n" +
                "    pd.operatingSystem,\n" +
                "    pd.description AS productDetailDescription\n" +
                "FROM\n" +
                "    Product p\n" +
                "JOIN\n" +
                "    ProductDetail pd ON p.productID = pd.productDetailID\n" +
                "JOIN\n" +
                "    Gallery g ON p.productID = g.galleryID AND p.productID = ?";
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
                        rs.getInt(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10),
                        rs.getString(11),
                        rs.getString(12),
                        rs.getString(13),
                        rs.getString(14),
                        rs.getString(15),
                        rs.getString(16),
                        rs.getString(17));
            }
        } catch (Exception e) {

        }
        return null;
    }
    public static void main(String[] args){
        DAO dao = new DAO();
        String detailID = "1"; // Thay đổi giá trị này tùy theo ID sản phẩm bạn muốn kiểm tra
        Product detail = dao.getProductByID(detailID);
        if (detail != null) {
            System.out.println(detail);
        } else {
            System.out.println("Không tìm thấy sản phẩm với ID: " + detailID);
        }
//        List<ProductDetail> lists = dao.getAllProductDetail();
//        for (ProductDetail o : lists){
//            System.out.println(o);
//        }
    }

}
