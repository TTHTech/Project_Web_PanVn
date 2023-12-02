<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="Header.jsp"></jsp:include>
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
                                    <li><a href="brand?brandID=${o.brandID}"><i class="ti-github"></i>${o.brandName}<i class="ti-angle-double-right"></i></a></li>
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
                    <div class="slider-product-one-content-items" >
                        <c:forEach items="${five}" var="o" >
                            <div class="slider-product-one-content-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                                <img src="${o.url1}" alt="">
                                <div class="slider-product-one-content-item-text">
                                    <ul>
                                        <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                        <li><a href="#" title="View Product"></a>${o.title}</li>
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
                <c:forEach items="${listP}" var="o">
                    <div class="product-gallery-one-content-product-item" onclick="location.href='detail?pid=${o.productID}';" style="cursor: pointer;">
                        <img src="${o.url1}" alt="">
                        <div class="product-gallery-one-content-product-item-text">
                            <ul>
                                <li><img src="image/icon1.png" alt=""><p>Sale giá sốc</p></li>
                                <li><a href="#" title="View Product"></a>${o.title}</li>
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
                    </div>
                </c:forEach>
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
<jsp:include page="Footer.jsp"></jsp:include>
</div>
<script src ="javascript/index.js">
</script>
</body>
</html>
