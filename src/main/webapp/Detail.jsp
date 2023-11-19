<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/17/2023
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product Card/Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/SanPham.css">
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
</head>
<body>
<header>
    <img src="SanPham_images/anh3.png" alt="">
</header>
<jsp:include page="Header.jsp"></jsp:include>
<!-- =============================Header============================================ -->
<div class = "card-wrapper" style="background-color: white">
    <div class="vertical-line"></div>
    <div class = "card" style="background-color: white; margin-top: 40px">
        <div class = "product-imgs">
            <div class = "img-display">
                <div class = "img-showcase">
                    <img src = "image/laptop81.jpg" alt = "Laptop">
                    <img src = "image/laptop82.jpg" alt = "Laptop">
                    <img src = "images/laptop83.jpg" alt = "Laptop">
                    <img src = "image/laptop84.jpg" alt = "Laptop">
                </div>
            </div>
            <div class = "img-select">
                <div class = "img-item">
                    <a href = "#" data-id = "1">
                        <img src = "image/laptop81.jpg" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "2">
                        <img src = "image/laptop82.jpg" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "3">
                        <img src = "image/laptop83.jpg" alt = "Laptop">
                    </a>
                </div>
                <div class = "img-item">
                    <a href = "#" data-id = "4">
                        <img src = "image/laptop84.jpg" alt = "Laptop">
                    </a>
                </div>
            </div>
        </div>
        <div class = "product-content">
            <h2>${detail.title}</h2>
            <div class = "product-detail">
                <table>
                    <h1>Thông tin cơ bản</h1>
                    <tr>Nổi tiếng với sự đẳng cấp, sang trọng mà mình mang lại, Asus ZenBook OLED UP3404VA KN038W vẫn sở hữu thiết kế mỏng nhẹ, cứng cáp thường thấy. </tr>
                    <tr>Tuy là một chiếc laptop ultrabook với card đồ họa Intel Iris Xe Graphics (dòng card onboard mạnh mẽ nhất hiện nay của nhà Intel) cùng CPU Intel Core i5-1340P, laptop Asus ZenBook Flip OLED UP3404VA KN038W sở hữu một hiệu năng vô cùng ấn tượng mà ít dòng ultrabook nào trong tầm giá có được.</tr>
                    <h1>Thông số kỹ thuật</h1>
                    <tr>
                        <td>CPU</td>
                        <td>:          |</td>
                        <td>Điền vào CPU</td>
                    </tr>
                    <tr>
                        <td>RAM</td>
                        <td>:          |</td>
                        <td> điền vào RAM</td>
                    </tr>
                    <tr>
                        <td>Ổ cứng</td>
                        <td>:          |</td>
                        <td>Điền cào dung lượng ổ cứng</td>
                    </tr>
                    <tr>
                        <td>Card đồ họa</td>
                        <td>:          |</td>
                        <td>Điền vào thông tin card đồ họa</td>
                    </tr>
                    <tr>
                        <td>Màng hình</td>
                        <td>:          |</td>
                        <td>Điền vào thông tin màng hình</td>
                    </tr>
                </table>
            </div>
            <div class = "product-price">
                <p class = "last-price">Giá cũ: <span>7.599.000</span></p>
                <p class = "new-price">Giá mới: <span>5.999.999</span></p>
            </div>
            <div class = "purchase-info">
                <input type = "number" min = "0" value = "1">
                <a href="GioHang?productCode=sanpham8">
                    <button type = "button" class = "btn">
                        Thêm vào giỏ hàng <i class = "fas fa-shopping-cart"></i>
                    </button>
                </a>
                <button type = "button" class = "btn">Mua ngay</button>
            </div>
        </div>
    </div>
</div>
<!-- =============================footer============================================ -->
<jsp:include page="Footer.jsp"></jsp:include>
<script src="SanPham.js"></script>
</body>
</html>