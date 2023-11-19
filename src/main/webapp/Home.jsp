<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/54f0cb7e4a.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="themify-icons/themify-icons.css">
    <link rel="stylesheet" href="font/fontawesome-free-5.15.4-web">
    <link rel="stylesheet" href="font/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.min.css">
    <link rel="stylesheet" href="link" rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
          integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==">
    <title>Bán Phụ Kiện Điện Tử</title>
</head>
<body>
<header>
    <img src="image/anh3.png" alt="">
</header>
<nav>
    <div class="container">
        <ul>
            <li><a href=""><img style = "width: 150px;" src="image/logoPan6.png" alt=""></a></li>
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
                        <select name="" >
                            <option value="#">--Chọn Quận Huyện</option>
                            <option value="#">--Thủ Đức</option>
                        </select>
                        <select name="" >
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
<!------------------------Section and slider--------------------------->
<section class="slider">
    <div class="container-var">
        <div class="slider-content">
            <div class="slider-content-ad-left">
                <li><a href=""><img src="image/ad1.png" alt=""></a></li>
            </div>
            <div class="slider-container-section">
                <section class="menu-bar">
                    <div class="container">
                        <div class="menu-bar-content">
                            <ul>
                                <c:forEach var="o" items="${listB}">
                                    <li><a href="Brand?bid=${o.brandID}"><i class="ti-github"></i>${o.brandName}<i class="ti-angle-double-right"></i></a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </section>
            </div>
            <div class="slider-content-left">
                <div class="slider-content-left-top-contianer">
                    <div class="slider-content-left-top">
                        <a href=""><img src="image/slide1.png" alt=""></a>
                        <a href=""><img src="image/slide2.png" alt=""></a>
                        <a href=""><img src="image/slide3.png" alt=""></a>
                        <a href=""><img src="image/slide4.png" alt=""></a>
                        <a href=""><img src="image/slide5.png" alt=""></a>
                    </div>
                    <div class="slider-content-left-top-btn">
                        <i class="ti-angle-left"></i>
                        <i class="ti-angle-right"></i>
                    </div>
                </div>
                <div class="slider-content-left-bottom">
                    <li class="active">ASUS RTX 4000</li>
                    <li>PC GAMING</li>
                    <li>SALE</li>
                    <li>HALLOWEEN</li>
                    <li>GAME</li>
                </div>
                <div class="slider-content-left-bottom-ad">
                    <li><a href=""><img src="image/img1.jpg" alt=""></a></li>
                    <li><a href=""><img src="image/img2.jpg" alt=""></a></li>
                </div>
            </div>
            <div class="slider-content-right">
                <li><a href=""><img src="image/img5.jpg" alt=""></a></li>
                <li><a href=""><img src="image/img4.jpg" alt=""></a></li>
                <li><a href=""><img src="image/img3.jpg" alt=""></a></li>
                <!-- <li><a href=""><img src="image/img4.jpg" alt=""></a></li> -->
            </div>
            <div class="slider-content-ad-right">
                <li><a href=""><img src="image/ad2.png" alt=""></a></li>
            </div>
        </div>
    </div>
</section>
<section class="banner-one">
    <div class="container">
        <li><a href=""><img src="image/banner1.png" alt=""></a></li>
        <li><a href=""><img src="image/banner2.png" alt=""></a></li>
        <li><a href=""><img src="image/banner3.png" alt=""></a></li>
        <li><a href=""><img src="image/banner4.png" alt=""></a></li>
    </div>
</section>
<!-- ===============================slider product========================= -->
<section class="slider-product-one">
    <div class="container-var">
        <div class="slider-product-one-content">
            <div class="slider-product-one-content-title">
                <h2>GIỜ VÀNG DEAL SỐC</h2>
            </div>
            <div class="slider-product-one-content-container">
                <div class="slider-product-one-content-items-content">
                    ...
                    <div class="slider-product-one-content-items">
                        <c:forEach items="${five}" var="o" >
                            <div class="slider-product-one-content-item">
                                <img src="image/product4.jpg" alt="">
                                <ul class="slider-product-one-content-item-text">
                                    <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                    <li><a href="detail?pID=${o.productID}" title="View Product"></a>${o.title}</li>
                                    <li><a href="">${o.price}<sup>đ</sup></a><span>${o.price}</span></li>
                                    <li>${o.price} <sup>đ</sup></li>
                                    <li>
                                        <i class="ti-github"></i>
                                        <i class="ti-github"></i>
                                        <i class="ti-github"></i>
                                        <i class="ti-github"></i>
                                        <i class="ti-github"></i>
                                    </li>
                                </ul>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- =======================product gallery============== -->
<section class="product gallery-one">
    <div class="container-product">
        <div class="product-gallery-one-content">
            <div class="product-gallery-one-content-title">
                <h2>Laptop gaming bán chạy</h2>
                <ul>
                    <li><a href="" class="">ASUS TUF GAMING</a></li>
                    <li><a href="" class="">HP VICTUS</a></li>
                    <li><a href="" class="">LENOVO MOD</a></li>
                    <li><a href="" class="">XEM TẤT CẢ</a></li>
                </ul>
            </div>
            <div class="product-gallery-one-content-product">
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="#">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item" >
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- product gallery two -->
<section class="product-gallery-two">
    <div class="container-product">
        <div class="product-gallery-two-content">
            <div class="product-gallery-two-content-right">
                <img src="image/pgleft.jpg" alt="">
            </div>
            <div class="product-gallery-two-content-left">
                <div class="product-gallery-two-content-left-top">
                    <h2>Màn Hình Gaming Lenovo giảm tới 38%</h2>
                    <li><a href="">Xem tất cả</a><i class = "ti-angle-right"></i></li>
                </div>
                <div class="product-gallery-two-content-left-bottom">
                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="image/pg3.jpg" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>
                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="image/pg4.jpg" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>

                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="image/pg3.jpg" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>

                    <div class="product-gallery-two-content-left-bottom-item">
                        <img src="image/pg4.jpg" alt="">
                        <div class="product-gallery-two-content-left-bottom-item-text">
                            <li>HP VICTUS</li>
                            <li>Hàng Sắp Về</li>
                            <li>25.000.000 <sup>đ</sup></li>
                            <li>Ưu đãi khủng</li>
                        </div>
                    </div>


                </div>
            </div>
        </div>
    </div>
</section>
<!--==========================section product top footer======================== -->
<section class="product gallery-one">
    <div class="container-product">
        <div class="product-gallery-one-content">
            <div class="product-gallery-one-content-title">
                <h2>Màn Hình ASUS Chính hãng</h2>
                <ul>
                    <li><a href="" class="">ASUS TUF GAMING</a></li>
                    <li><a href="" class="">HP VICTUS</a></li>
                    <li><a href="" class="">LENOVO MOD</a></li>
                    <li><a href="" class="">XEM TẤT CẢ</a></li>
                </ul>
            </div>
            <div class="product-gallery-one-content-product">
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item" >
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
                <div class="product-gallery-one-content-product-item">
                    <img src="image/product14.jpg" alt="">
                    <div class="product-gallery-one-content-product-item-text">
                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                        <li>Chuột Logitech G102 LightSync Black</li>

                        <li><a href="">350000<sup>đ</sup></a><span>-6%</span></li>
                        <li>100000 <sup>đ</sup></li>

                        <li>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                            <i class="ti-github"></i>
                        </li>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- =============================footer============================================ -->
<div class="footer">
    <div class="footer_header">
        <ul class="footer_header-ul">
            <li><h4>VỀ NHÓM</h4></li>
            <li><a href="">NHÓM 5</a></li>
            <li><a href="">Xây dựng website bán phụ kiện điện tử</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>CÁC THÀNH VIÊN</h4></li>
            <li><a class="footer_header-link" href="">Từ Thanh Hoài </a></li>
            <li><a class="footer_header-link" href="">Hành Phúc Công</a></li>
            <li><a class="footer_header-link" href="">Hoàng Công Mạnh</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>MSSV</h4></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
            <li><a class="footer_header-link" href="">2132334344</a></li>
        </ul>
        <ul class="footer_header-ul">
            <li><h4>Liên Hệ Nhóm</h4></li>
            <li><span class="footer_header-span">Số điện thoại:  <a class="footer_header-link-1" href="">1800.6975</a>(8.00-21.00)</span></li>
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
            <h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
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
</div>
<script src ="javascript/index.js">
</script>
</body>
</html>
