package entity;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private int cartID;

    private int userID;

    private List<Item> items;

    // Constructors


    public Cart(int userID) {
        this.userID = userID;
    }

    public int getCartID() {
        return cartID;
    }

    public void setCartID(int cartID) {
        this.cartID = cartID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }
    private Item getItemById(int id)
    {
        for(Item i : items){
            if(i.getProduct().getProductID() == id){
                return i;
            }
        }
        return null;
    }
    public int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    public void addItem(Item t){
        if(getItemById(t.getProduct().getProductID()) != null){
            Item i = getItemById(t.getProduct().getProductID());
            i.setQuantity(i.getQuantity() + t.getQuantity());
        }else
            items.add(t);
    }
//    public int getQuantityById(int id){
//        return getItemById(id).getQuantity();
//    }
    public void removeItem(int id)
    {
        if(getItemById(id) != null){
            items.remove(getItemById(id));
        }
    }
    public  double getTotalMoney(){
        double t = 0;
        for(Item i:items)
            t+=(i.getQuantity() * i.getPrice());
        return t;
    }
    private Product getProductById(int id , List<Product> list){
        for (Product i : list){
            if(i.getProductID() == id){
                return i;
            }
        }
        return null;
    }
    public Cart() {
        items = new ArrayList<>();
    }
    public Cart(List<Item> items){
        this.items = items;
    }
    // toString method for debugging
    @Override
    public String toString() {
        return "Cart{" +
                "cartID=" + cartID +
                ", userID=" + userID +
                '}';
    }
}
