//package control;
//
//import dao.productDAO;
//import entity.Cart;
//import entity.Item;
//import entity.Product;
//
//import javax.servlet.ServletContext;
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.util.List;
//
//public class CartSevlet {
//    protected void doPost(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        response.setContentType("text/html");
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        String url = "/Detail.jsp";
//        productDAO dao = new productDAO();
//        List<Product> list = dao.getAllProduct();
//        String action = request.getParameter("action");
//        if (action == null) {
//            action = "cart";
//        }
//
//        if (action.equals("shop")) {
//            url = "/Detail.jsp";
//        }
//        else if (action.equals("cart")) {
//            String productCode = request.getParameter("productID");
//            String quantityString = request.getParameter("quantity");
//
//            HttpSession session = request.getSession();
//            Cart cart = (Cart) session.getAttribute("cart");
//            if (cart == null) {
//                cart = new Cart();
//            }
//
//            int quantity;
//            try {
//                quantity = Integer.parseInt(quantityString);
//                if (quantity < 0) {
//                    quantity = 1;
//                }
//            } catch (NumberFormatException nfe) {
//                quantity = 1;
//            }
//
//
////            boolean isNewItem = true;
////            for (Item item : cart.getItems()) {
////                if (item.getProduct().getProductID().equals(product.)) {
////
////                    item.setQuantity(item.getQuantity() + 1);
////                    isNewItem = false;
////                    break;
////                }
////            }
//
////            if (isNewItem) {
////                LineItem lineItem = new LineItem();
////                lineItem.setProduct(product);
////                lineItem.setQuantity(quantity);
////                cart.addItem(lineItem);
////            }
//
//            session.setAttribute("cart", cart);
//            url = "/Cart.jsp";
//        }
//        else if (action.equals("remove")) {
//
//            String productCode = request.getParameter("productCode");
//
//            HttpSession session = request.getSession();
//            Cart cart = (Cart) session.getAttribute("cart");
//
//            if (cart != null) {
//                cart.removeItem(productCode);
//            }
//
//            session.setAttribute("cart", cart);
//            url = "/cart.jsp";
//        }
//
//        else if (action.equals("checkout")) {
//            url = "/checkout.jsp";
//        }
//
//
//    }
//
//    @Override
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        doPost(request, response);
//    }
//}
