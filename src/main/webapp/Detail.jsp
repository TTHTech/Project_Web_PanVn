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
<nav>
    <div class="container">
        <ul>
            <li><a href=""><img style = "width: 150px;" src="image/logo8.png" alt=""></a></li>
            <li id = "adress-form"><a href="#">TP.Hồ Chí Minh<i class="fas fa-sort-down"></i></a></li>
            <li><input type="text" placeholder="Bạn tìm gì..."><i class="fas fa-search"></i></li>
            <li><a href=""><button><i class = "fas fa-shopping-cart"> </i>Giỏ hàng</button></a></li>
            <li><a href=""><i class="ti-time"></i>Lịch sử <br> đơn hàng</a></li>
            <li><a href=""><span class = "btn-content"><span class = "btn-top"></span></span>Hotline <br> 0944192393</a></li>
            <li><a href="https://www.facebook.com/hoai.thanh.1813?locale=vi_VN">Hỏi đáp</a></li>
            <li><a href="https://genk.vn/">24h <br> Công Nghệ</a></li>
            <li><a href=""><button><i class="ti-user"></i>Đăng Nhập</button></a></li>
            <div class="adress-form">
                <div class="adress-form-content">
                    <h2>Chọn địa chỉ nhận hàng <span id = "adress-close">X Đóng</span></h2>
                    <form action="">
                        <p>Chọn đầy đủ địa chỉ nhận hàng để biết chính xác thời gian giao</p>
                        <select name="">
                            <option value="#">--Chọn địa điểm</option>
                            <option value="#">--TP.Hồ Chí Minh</option>
                        </select>
                        <select name="">
                            <option value="#">--Chọn Quận Huyện</option>
                            <option value="#">--Thủ Đức</option>
                        </select>
                        <select name="">
                            <option value="#">--Chọn Phường/Xã</option>
                            <option value="#">--Võ Văn Ngân</option>
                        </select>
                        <input type="text" placeholder="Số nhà, Tên đường">
                        <button>Xác nhận</button>
                    </form>
                </div>
            </div>
        </ul>
    </div>
</nav>
<div class = "card-wrapper">
    <div class = "card">
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
            <h2>Laptop Asus ZenBook Flip OLED UP3404VA KN038W</h2>
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
<div class="footer">
    <div class="footer_header">
        <ul class="footer_header-ul">
            <li><h4>VỀ NHÓM</h3></li>
            <li><a href="">NHÓM 5</a></li>
            <li><a href="">Xây dựng website bán phụ kiện điện tử</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>CÁC THÀNH VIÊN</h3></li>
            <li><a class="footer_header-link" href="">Từ Thanh Hoài </a></li>
            <li><a class="footer_header-link" href="">Hành Phúc Công</a></li>
            <li><a class="footer_header-link" href="">Hoàng Công Mạnh</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>MSSV</h3></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>Liên Hệ Nhóm</h3></P></li>
            <li><span class="footer_header-span">Số điện thoại</span>:  <a class="footer_header-link-1" href="">1800.6975</a>(8.00-21.00)</span></li>
            <li><span  class="footer_header-span">Chưa biết: <a style="margin-left: 12px;" class="footer_header-link-1" href="">1800.6173</a>(8:00-21:00)</span></li>
            <li><span class="footer_header-span">Email: <a style="margin-left: 16px;" class="footer_header-link-1" href="">cskh@gearvn.com</a></span></li>
        </ul>
        <!-- <div class="footer_header_driver">
            <h4>ĐƠN VỊ VẬN CHUYỂN</h3>
            <div class="header_header_driver-show">
                <img class="header_show-img" src="image/ghn.webp" alt="">
                <img class="header_show-img" src="image/ems.webp" alt="">
                <img class="header_show-img" src="image/gvn1.webp" alt="">
                <img class="header_show-img" src="image/gvn.webp" alt="">
            </div>
            <h4>CÁCH THỨC THANH TOÁN</h3>
            <div class="header_header_driver-show">
                <img class="header_show-img" src="image/hand.webp" alt="">
                <img class="header_show-img" src="image/jcb.webp" alt="">
                <img class="header_show-img" src="image/master.webp" alt="">
                <img class="header_show-img" src="image/zalopay.webp" alt="">
                <img class="header_show-img" src="image/money.webp" alt="">
                <img class="header_show-img" src="image/tragop.webp" alt="">
                <img class="header_show-img" src="image/visa.webp" alt="">
                <img class="header_show-img" src="image/momo.webp" alt="">
            </div>
        </div> -->
    </div>
    <div class="footer_banner">
        <div class="footer_banner-left">
            <h4>KẾT NỐI VỚI CHÚNG TÔI</h3>
                <a href=""><i class="ti-facebook  footer-icon footer-icon-1"></i></a>
                <a href=""><i class="ti-github footer-icon footer-icon-2"></i></a>
                <a href=""><i class="ti-youtube fa-youtube footer-icon footer-icon-3"></i></a>
                <a href=""><i class="ti-instagram fa-instagram footer-icon footer-icon-4"></i></a>
                <a href=""><i class="ti-twitter fa-twitter footer-icon footer-icon-5"></i></a>
        </div>
        <div class="footer_banner-right">
            <a href=""><img src="image/git.png" alt="" class="footer_banner-right-img"></a>
        </div>
    </div>
</div>

<script src="SanPham.js"></script>
</body>
</html>