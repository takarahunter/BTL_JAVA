<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>Danh sách sản phẩm</title>

    <jsp:include page="./module/link-css.jsp" />
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <jsp:include page="./module/header-mobile.jsp">
        <jsp:param name="activePage" value="shop-grid" />
    </jsp:include>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <jsp:include page="./module/header.jsp">
        <jsp:param name="activePage" value="shop-grid" />
    </jsp:include>
    <!-- Header Section End -->

    <!-- Search bar Begin -->
    <jsp:include page="./module/search-bar.jsp">
        <jsp:param name="showBanner" value="false" />
    </jsp:include>

    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg"
        data-setbg="<c:url value = '/resources/user/img/breadcrumb.jpg' />">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Organi Shop</h2>
                        <div class="breadcrumb__option">
                            <a href="<c:url value ='/trang-chu' />">Trang Chủ</a>
                            <span>Shop</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Product Section Begin -->
    <section class="product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-5">
                    <div class="sidebar">
                        <div class="sidebar__item">
                            <h4>Loại Thiết Bị</h4>
                            <ul>
                                <c:forEach var="loaiSp" items="${dsLoaiSanPham}">
                                    <li><a href="#">${loaiSp.tenLSP}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                        <div class="sidebar__item">
                            <h4>Giá</h4>
                            <div class="price-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                    data-min="0" data-max="1000">
                                    <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                    <span tabindex="0"
                                        class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                    <span tabindex="0"
                                        class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                </div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <input type="text" id="minamount" />
                                        <input type="text" id="maxamount" />
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="sidebar__item">
                            <div class="latest-product__text">
                                <h4>Sản Phẩm Mới</h4>
                                <div class="latest-product__slider owl-carousel">
                                    <div class="latest-prdouct__slider__item">
                                        <c:forEach var="sanPham" items="${dsSanPham}" begin="0" end="2">
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="<c:url value = '${sanPham.hinhAnh}'/>"
                                                    alt="" />
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>${sanPham.tenSp}</h6>
                                                    <span>${sanPham.giaSP}</span>
                                                </div>
                                            </a>
                                        </c:forEach>
                                    </div>
                                    <div class="latest-prdouct__slider__item">
                                        <c:forEach var="sanPham" items="${dsSanPham}" begin="3" end="6">
                                            <a href="#" class="latest-product__item">
                                                <div class="latest-product__item__pic">
                                                    <img src="<c:url value = '${sanPham.hinhAnh}'/>"
                                                    alt="" />
                                                </div>
                                                <div class="latest-product__item__text">
                                                    <h6>${sanPham.tenSp}</h6>
                                                    <span>${sanPham.giaSP}</span>
                                                </div>
                                            </a>
                                        </c:forEach>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-7">
                    <div class="product__discount">
                        <div class="section-title product__discount__title">
                            <h2>Giảm Giá</h2>
                        </div>
                        <div class="row">
                            <div class="product__discount__slider owl-carousel">
                                <c:forEach var="sanPham" items="${dsSanPham}" begin="0" end="2">
                                    <div class="col-lg-4">
                                        <div class="product__discount__item">
                                            <div class="product__discount__item__pic set-bg"
                                                data-setbg="<c:url value = '${sanPham.hinhAnh}' />">
                                                <div class="product__discount__percent">-${sanPham.giamGia}</div>
                                                <ul class="product__item__pic__hover">
                                                    <li>
                                                        <a href="#"><i class="fa fa-heart"></i></a>
                                                    </li>
                                                    <li>
                                                        <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                                    </li>
                                                </ul>
                                            </div>
                                            <div class="product__discount__item__text">
                                                <h5><a href="#">${sanPham.tenSp}</a></h5>
                                                <div class="product__item__price">
                                                    <span>${sanPham.giaSP}</span>
                                                    <br />
                                                    <span>${sanPham.giaSP * (100 - sanPham.giamGia)}</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <div class="filter__item">
                        <div class="row">
                            <div class="col-lg-4 col-md-5">
                                <div class="filter__sort">
                                    <span>Sắp xếp</span>
                                    <select>
                                        <option value="0">Giá: Thấp đến Cao</option>
                                        <option value="1">Giá: Cao đến Thấp</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-4">
                                <div class="filter__found">
                                    <h6>Tìm thấy <span>16</span> sản phẩm</h6>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-3">
                                <!-- <div class="filter__option">
                                    <span class="icon_grid-2x2"></span>
                                    <span class="icon_ul"></span>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-4 col-md-6 col-sm-6">
                            <div class="product__item">
                                <div class="product__item__pic set-bg"
                                    data-setbg="<c:url value = '/resources/user/img/product/loa1.webp' />">
                                    <ul class="product__item__pic__hover">
                                        <li>
                                            <a href="#"><i class="fa fa-heart"></i></a>
                                        </li>
                                        <li>
                                            <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product__item__text">
                                    <h6><a href="#">Loa sieu to khong lo</a></h6>
                                    <h5>300000 VND</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="product__pagination">
                        <a href="#">1</a>
                        <a href="#">2</a>
                        <a href="#">3</a>
                        <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Section End -->

    <!-- Footer Section Begin -->
    <jsp:include page="./module/footer.jsp" />
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <jsp:include page="./module/link-js.jsp" />
</body>

</html>