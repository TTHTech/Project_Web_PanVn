/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;
import entity.Brand;
import entity.Cart;
import entity.Item;
import entity.Product;
import  dao.productDAO;
import dao.brandDAO;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 *
 * @author trinh
 */
@WebServlet(name = "CartControl", urlPatterns = {"/cart"})
public class CartControl extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url = "/Detail.jsp";
        ServletContext sc = getServletContext();

        String action = request.getParameter("action");
        if (action == null) {
            action = "cart";
        }

        if (action.equals("shop")) {
            url = "/Detail.jsp";
        }
        else if (action.equals("cart")) {
            String productID = request.getParameter("productID");
            String quantityString = request.getParameter("quantity");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
            }

            int quantity;
            try {
                quantity = Integer.parseInt(quantityString);
                if (quantity < 0) {
                    quantity = 1;
                }
            } catch (NumberFormatException nfe) {
                quantity = 1;
            }

            String id = request.getParameter("pid");
            productDAO dao = new productDAO();
            Product p = dao.getProductByID(id);

//
//            boolean isNewItem = true;
//            for (Item item : cart.getItems()) {
//                if (item.getProduct().getProductID().equals(product.getProductID())) {
//
//                    item.setQuantity(item.getQuantity() + 1);
//                    isNewItem = false;
//                    break;
//                }
//            }
//
//            if (isNewItem) {
//                Item lineItem = new Item();
//                lineItem.setProduct(product);
//                lineItem.setQuantity(quantity);
//                cart.addItem(lineItem);
//            }

            session.setAttribute("cart", cart);
            url = "/Cart.jsp";
        }
        else if (action.equals("remove")) {

            String productCode = request.getParameter("productCode");

            HttpSession session = request.getSession();
            Cart cart = (Cart) session.getAttribute("cart");

//            if (cart != null) {
//                cart.removeItem(productID);
//            }

            session.setAttribute("cart", cart);
            url = "/Cart.jsp";
        }

        else if (action.equals("checkout")) {
            url = "/checkout.jsp";
        }

        sc.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

}
