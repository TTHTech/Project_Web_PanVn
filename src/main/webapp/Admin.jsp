<%--
  Created by IntelliJ IDEA.
  User: DEll
  Date: 11/28/2023
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!--Import css bootrap-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <!--end import css bootrap-->
    <!-- import fontawesome-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
          integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <!-- end import fontawesome-->
    <!--import my css-->
    <link rel="stylesheet" type="text/css" href="css/admin-style.css">
    <!--end import my css-->
    <!--import page css-->
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <!--End import page css-->
    <!--import page css-->
    <link rel="stylesheet" type="text/css" href="css/report.css">
    <!--End import page css-->
    <!--import reponsive-->
    <link rel="stylesheet" type="text/css" href="css/responsive-index.css">
    <!--End import reponsive-->
    <!--import menu component-->
    <link rel="stylesheet" type="text/css" href="css/component-menu-admin.css">
    <!--end import menu component-->
    <!--import component report card-->
    <link rel="stylesheet" type="text/css" href="css/component-report-card.css">
    <!--End import component report card-->
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" />

    <!-- google font -->
    <title>Trang quản lý</title>
</head>

<body>
<!--Thẻ lớn nhất chứa cả trang web-->

<div class="container-fluid table h-100">
    <!--Chia ra từng hàng-->
    <div class="row table-row h-100">
        <!--Thêm vào để text fixed-->
        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top
     d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu-temp">

        </div>
        <!--End Thêm vào để text fixed-->


        <!--slide menu-->
        <div class="col-2 col-sm-1 col-md-1 col-lg-2 col-xl-2 table-cell float-none align-top h-100 fixed-top
   d-none d-sm-none d-md-block d-lg-block d-xl-block" id="side-menu">
            <div class="top-menu d-none d-lg-block"><span class="logo"><h2>Hello, Admin</h2></span></div>
            <!-- <h4 class="d-none d-sm-none d-md-none d-lg-block d-xl-block">Trang quản trị</h4> -->
            <ul>
                <li class="link ads-button">
                    <a href="admin">
                        <span class="fas fa-home"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Trang chủ</span>
                    </a>
                </li>

                <li class="link">
                    <a href="customer">
                        <span class="fas fa-users"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Khách hàng</span>
                    </a>
                </li>

                <li class="link">
                    <a href="order-list.jsp">
                        <span class="fas fa-shopping-cart"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Đơn hàng</span>
                        <span class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline">40</span>
                    </a>
                </li>

                <!--Menu sản phẩm-->
                <!--collape-->
                <li class="link">
                    <a href="products">
                        <span class="fas fa-tags"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Sản phẩm</span>
                        <span class="badge badge-success d-none d-sm-none d-md-none d-lg-inline d-xl-inline">20</span>
                    </a>
                </li>

                <li class="link">
                    <a href="add-product.jsp">
                        <span class="fas fa-plus-circle"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Thêm mới</span>
                    </a>
                </li>

                <!-- <li class="link">
                    <a href="index.html">
                        <span class="fas fa-user"></span>
                        <span class="d-none d-sm-none d-md-none d-lg-inline d-xl-inline ml-2">Nhân viên</span>
                    </a>
                  </li> -->
            </ul>
        </div>
        <!--End slide menu-->

        <!--Nội dung-->
        <!--Mặc định padding -15 của col-->
        <div class="col-12 col-sm-12 col-md-11 col-lg-10 col-xl-10 table-cell float-none align-top p-0" id="col-content">

            <header class="nav-header row m-0">
                <!--mặc định bị padding-->
                <!-- <div class="row m-0 pt-4 pb-3"> -->
                <div class="content-left col-2 col-sm-6 col-md-7 col-lg-3 col-xl-4 pr-0 d-flex align-items-center">
                    <nav class="navbar-default d-block d-sm-block d-md-none d-lg-none d-xl-none d-none">
                        <button class="navbar-toggler collapsed p-0" type="button" data-toggle="offcanvas" data-target="#side-menu">
                            <span class="fas fa-bars"></span>
                        </button>
                    </nav>
                    <input class="header-search-field d-none d-md-block ml-3" type="text" placeholder="Tìm kiếm">
                </div>

                <div class="content-right row ml-0 mr-0 col-10 col-sm-6 col-md-5 col-lg-9 col-xl-8 d-flex align-items-center">
                    <!-- <ul class="list-unstyled row ml-0 mr-0"> -->
                    <div class="col-0 col-lg-6 text-right d-none d-lg-block">Chào mừng đến trang quản lý</div>
                    <div class="col-12 col-lg-6 text-right">
                        <a href="#" class="mr-4">
                            <span class="fas fa-bell"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="mr-5">
                            <span class="fas fa-envelope"></span>
                            <span class="badge badge-success label-message">3</span>
                        </a>
                        <a href="#" class="logout">
                            <span class="fas fa-sign-out-alt"></span>
                            &nbsp;Đăng xuất
                        </a>
                    </div>
                    <!-- </ul> -->
                </div>
                <!-- </div> -->
            </header>


            <!--Nội dung trang index-->
            <div class="dashboard-con" id="dashboard-con">

                <!--Row hiển thị biểu đồ-->
                <!--Hàng chứa nội dung lượt tương tác trong ngày-->

                <div class="row">

                    <div class="col-12 col-sm-4">

                        <!--Thẻ chứa lượt view trong ngày-->
                        <div class="report-content-con report-view">
                            <div>
                                <i class="fas fa-eye"></i>
                                <h6 class="d-inline">Lượt xem trong ngày</h6>
                            </div>

                            <div class="d-flex flex-column mt-1">
                                <span></span>
                                <b>40</b>
                                <span></span>
                            </div>
                        </div>
                        <!--End Thẻ chứa lượt view trong ngày-->

                    </div>

                    <div class="col-12 col-sm-4">

                        <!--Thẻ chứa lượt view trong ngày-->
                        <div class="report-content-con report-view">
                            <div>
                                <i class="fas fa-shopping-cart"></i>
                                <h6 class="d-inline">Lượt mua trong ngày</h6>
                            </div>

                            <div class="d-flex flex-column mt-1">
                                <span></span>
                                <b>60</b>
                                <span></span>
                            </div>
                        </div>

                        <!--End Thẻ chứa lượt view trong ngày-->

                    </div>

                    <div class="col-12 col-sm-4">

                        <!--Thẻ chứa lượt view trong ngày-->
                        <div class="report-content-con report-view">
                            <div>
                                <i class="fas fa-money-check-alt"></i>
                                <h6 class="d-inline">Doanh thu trong ngày</h6>
                            </div>

                            <div class="d-flex flex-column mt-1">
                                <span></span>
                                <b>5.000.000đ</b>
                                <span></span>
                            </div>
                        </div>
                        <!--End Thẻ chứa lượt view trong ngày-->

                    </div>

                </div>


                <!--Row 1-->
                <div class="row">
                    <div class="col-12">
                        <div class="admin-content-con">
                            <header>
                                <h5>Danh sách khách hàng</h5>
                            </header>

                            <table class="table table-responsive-sm">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Tên người dùng</th>
                                    <th>Tên tài khoản</th>
                                    <th>Email</th>
                                    <th>Ngày tạo</th>
                                    <th class="text-center">Tác vụ</th>
                                </tr>
                                </thead>

                                <tbody>
                                <c:forEach items="${listUser}" var="user" >
                                    <tr>
                                        <td>${user.userID}</td>
                                        <td>${user.fullName}</td>
                                        <td>${user.userName}</td>
                                        <td>${user.accountemail}</td>
                                        <td>${user.createdAt}</td>
                                        <td align="center"><a href="#" class="badge badge-pill badge-danger">
                                            Xóa
                                        </a>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--End row 1-->

                <!--Trạng thái đơn hàng-->
                <div class="row">
                    <div class="col-12">
                        <div class="admin-content-con">
                            <header>
                                <h5>Đơn hàng vừa nhận</h5>
                            </header>

                            <table class="table table-responsive-md">
                                <thead>
                                <tr>
                                    <th>STT</th>
                                    <th>Thời gian</th>
                                    <th>Tài khoản</th>
                                    <th>Số tiền</th>
                                    <th class="text-center">Trạng thái</th>
                                    <th class="text-center">Tác vụ</th>
                                </tr>
                                </thead>

                                <tbody>

                                <!--Nội dung một hàng-->
                                <tr>
                                    <td>1</td>
                                    <td>13/4/2023</td>
                                    <td>manhdz@gmail.com</td>
                                    <td>23.000.000đ</td>
                                    <td align="center"><a href="#" class="badge badge-light">
                                        Chưa thanh toán
                                    </a></td>
                                    <td align="center">
                                        <a class="btn btn-primary btn-sm" href="#" role="button">
                                            Xem
                                        </a>
                                        <a class="btn btn-success btn-sm" href="#" role="button">
                                            Duyệt
                                        </a>
                                        <a class="btn btn-danger btn-sm" href="#" role="button">
                                            Xóa
                                        </a>
                                    </td>
                                </tr>
                                <!--End Nội dung một hàng-->

                                <!--Nội dung một hàng-->
                                <tr>
                                    <td>2</td>
                                    <td>13/4/2023</td>
                                    <td>manhdz@gmail.com</td>
                                    <td>23.000.000đ</td>
                                    <td align="center"><a href="#" class="badge badge-light">
                                        Chưa thanh toán
                                    </a></td>
                                    <td align="center">
                                        <a class="btn btn-primary btn-sm" href="#" role="button">
                                            Xem
                                        </a>
                                        <a class="btn btn-success btn-sm" href="#" role="button">
                                            Duyệt
                                        </a>
                                        <a class="btn btn-danger btn-sm" href="#" role="button">
                                            Xóa
                                        </a>
                                    </td>
                                </tr>
                                <!--End Nội dung một hàng-->

                                <!--Nội dung một hàng-->
                                <tr>
                                    <td>3</td>
                                    <td>13/4/2023</td>
                                    <td>manhdz@gmail.com</td>
                                    <td>23.000.000đ</td>
                                    <td align="center"><a href="#" class="badge badge-info">
                                        Đã thanh toán
                                    </a></td>
                                    <td align="center">
                                        <a class="btn btn-primary btn-sm" href="#" role="button">
                                            Xem
                                        </a>
                                        <a class="btn btn-success btn-sm" href="#" role="button">
                                            Duyệt
                                        </a>
                                        <a class="btn btn-danger btn-sm" href="#" role="button">
                                            Xóa
                                        </a>
                                    </td>
                                </tr>
                                <!--End Nội dung một hàng-->



                                </tbody>
                            </table>

                            <div class="clearfix">
                                <a href="order-list.html" class="float-right text-link">Xem tất cả đơn hàng</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End Trạng thái đơn hàng-->

            </div>
            <!--End Nội dung trang index-->

            <!--footer-->
            <footer id="admin-footer">



            </footer>
            <!--end footer-->
        </div>
    </div>
</div>
</div>

<!--import script bootrap-->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<!--end import sript bootrap-->

<!--Import chart.js-->
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<!--End chart.js-->

<!--Import my chart script-->
<script src="../js/reportchartscript.js"></script>
<!--End import my chart script-->
<!--import nav-bar-side-menu script-->
<script src="../js/nav-bar-side-menu.js"></script>
<!--End import nav-bar-side-menu script-->
</body>

</html>