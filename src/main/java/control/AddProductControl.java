package control;
import entity.Brand;
import entity.Product;
import entity.User;
import  dao.productDAO;
import dao.brandDAO;
import dao.userDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(name = "AddProductControl", urlPatterns = {"/addproducts"})

public class AddProductControl extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.getRequestDispatcher("products.jsp").forward(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String url1 = request.getParameter("url1");
        String url2 = request.getParameter("url2");
        String url3 = request.getParameter("url3");
        String url4 = request.getParameter("url4");
        String title = request.getParameter("title");
        String price0 = request.getParameter("price");
        String description = request.getParameter("description");
        String brandID0 = request.getParameter("brandID");
        String color = request.getParameter("color");
        String processor = request.getParameter("processor");
        String ram = request.getParameter("ram");
        String storage = request.getParameter("storage");
        String graphicsCard = request.getParameter("graphicsCard");
        String operatingSystem = request.getParameter("operatingSystem");
        String prdescription = request.getParameter("prdescription");
        String discount0 = request.getParameter("discount");
        int productDetailID0 = 0;

        productDAO daoPro = new productDAO();
        List<Product> listProduct = daoPro.getAllProduct();
        for (Product p : listProduct){
            productDetailID0 += 1;
        }
        productDetailID0 += 1;
        System.out.println(productDetailID0);

        String productDetailID = Double.toString(productDetailID0);
        Double discount = Double.parseDouble(discount0);
        Double price = Double.parseDouble(price0);
        Double brandID = Double.parseDouble(brandID0);

        productDAO dao = new productDAO();
        dao.insertGallery(url1, url2, url3, url4);
        dao.insertProductDetail(processor, ram, storage, graphicsCard, operatingSystem, prdescription, discount);
        dao.insertProduct(title, price, description, brandID, color, productDetailID);
        String url = "/products.jsp";
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
        request.getRequestDispatcher("products").forward(request, response);
    }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
