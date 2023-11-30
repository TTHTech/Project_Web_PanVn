

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<jsp:include page="Header.jsp"></jsp:include>
<%--3--%>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

</head>


<section class="h-100 gradient-custom">

    <div class="container py-5">
        <div class="row d-flex justify-content-center my-4">
            <div class="col-md-8">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Cart - 2 items</h5>
                    </div>
                    <div class="card-body">
<%--                        <jsp:useBean id="Cart" scope="request" type="entity.Cart"/>--%>
                        <c:forEach items="${cart.items}" var="item">
                            <div class="row">
                                <div class="col-lg-3 col-md-12 mb-4 mb-lg-0">
                                    <img src="${item.product.url1}" class="w-100" alt="${item.product.title}" />
                                </div>
                                <div class="col-lg-5 col-md-6 mb-4 mb-lg-0">
                                    <p><strong>${item.product.title}</strong></p>
                                    <p>Color: ${item.product.color}</p>
                                    <p>Size: M</p>
                                    <button type="button" class="btn btn-primary btn-sm me-1 mb-2">
                                        <i class="fas fa-trash"></i>
                                    </button>
                                    <button type="button" class="btn btn-danger btn-sm mb-2">
                                        <i class="fas fa-heart"></i>
                                    </button>
                                </div>
                                <div class="col-lg-4 col-md-6 mb-4 mb-lg-0">
                                    <div class="d-flex mb-4" style="max-width: 300px">
                                        <input id="form${item.product.productID}" min="0" name="quantity" value="${item.quantity}" type="number" class="form-control" />
                                    </div>
                                    <p class="text-start text-md-center">
                                        <strong>$<c:out value="${item.product.price}"/></strong>
                                    </p>
                                </div>
                            </div>
<%--                            <c:if test="${!fn:last(cart.items)}">--%>
<%--                                <hr class="my-4" />--%>
<%--                            </c:if>--%>
                        </c:forEach>
                    </div>
                </div>
                <div class="card mb-4">
                    <div class="card-body">
                        <p><strong>Expected shipping delivery</strong></p>
                        <p class="mb-0">12.10.2020 - 14.10.2020</p>
                    </div>
                </div>
                <div class="card mb-4 mb-lg-0">
                    <div class="card-body">
                        <p><strong>We accept</strong></p>
                        <img class="me-2" width="45px"
                             src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/visa.svg"
                             alt="Visa" />
                        <img class="me-2" width="45px"
                             src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/amex.svg"
                             alt="American Express" />
                        <img class="me-2" width="45px"
                             src="https://mdbcdn.b-cdn.net/wp-content/plugins/woocommerce-gateway-stripe/assets/images/mastercard.svg"
                             alt="Mastercard" />

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card mb-4">
                    <div class="card-header py-3">
                        <h5 class="mb-0">Summary</h5>
                    </div>
                    <div class="card-body">
                        <ul class="list-group list-group-flush">
                            <li
                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 pb-0">
                                Products
                                <span>$53.98</span>
                            </li>
                            <li class="list-group-item d-flex justify-content-between align-items-center px-0">
                                Shipping
                                <span>Gratis</span>
                            </li>
                            <li
                                    class="list-group-item d-flex justify-content-between align-items-center border-0 px-0 mb-3">
                                <div>
                                    <strong>Total amount</strong>
                                    <strong>
                                        <p class="mb-0">(including VAT)</p>
                                    </strong>
                                </div>
                                <span><strong>$53.98</strong></span>
                            </li>
                        </ul>

                        <button type="button" class="btn btn-primary btn-lg btn-block">
                            Go to checkout
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- =============================footer============================================ -->
<jsp:include page="Footer.jsp"></jsp:include>