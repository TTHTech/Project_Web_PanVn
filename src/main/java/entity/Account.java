package entity;

public class Account {
    private int accountID;
    private String userName;
    private String email;
    private String password;
    private int role;
    private int userID;

    public Account(int accountID, String userName, String email, String password, int role, int userID) {
        this.accountID = accountID;
        this.userName = userName;
        this.email = email;
        this.password = password;
        this.role = role;
        this.userID = userID;
    }

    // Getters and setters (you can generate these using your IDE)

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    @Override
    public String toString() {
        return "Account{" +
                "accountID=" + accountID +
                ", userName='" + userName + '\'' +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", role=" + role +
                ", userID=" + userID +
                '}';
    }
}
