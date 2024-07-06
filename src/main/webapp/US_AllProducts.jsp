<%-- 
    Document   : ViewCategory
    Created on : Jun 1, 2024, 8:14:43 AM
    Author     : jojo
--%>

<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashSet"%>
<%@page import="com.mycompany.isp392.product.ProductDetailsDTO"%>
<%@page import="com.mycompany.isp392.product.ProductDTO"%>
<%@page import="com.mycompany.isp392.brand.BrandDTO"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>All Product Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .price-button {
                display: flex;
                padding: 5px 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                text-align: center;
                font-size: 13px;
                color: #333;
                background-color: #fff;
                margin: 10px 0;
                text-decoration: none;
                width: 150px; /* Adjust the width as needed */
                margin: 5px auto; /* Center the box horizontally */
                transition: background-color 0.3s ease;
            }
            .price-button:hover {
                background-color: #f0f0f0;
            }
            .button-container {
                display: flex;
                flex-direction: column;
                align-items: center;
            }
            a{
                text-decoration: none;
                color: #000;
            }
            a:hover{
                color: #c53337;
                text-decoration: none;
            }
            .product-card {
                border: 1px solid #eee;
                border-radius: 5px;
                padding: 10px;
                text-align: center;
                margin-bottom: 20px;
            }
            .product-card img {
                max-width: 100%;
                height: auto;
            }
            .container-fluid-a{
                background: #1E1E27;
                color: #fff;
            }

            .product-grid{
                font-family: 'Poppins', sans-serif;
                text-align: center;
            }
            .product-grid .product-image{
                overflow: hidden;
                position: relative;
                z-index: 1;
            }
            .product-grid .product-image a.image{
                display: block;
            }
            .product-grid .product-image img{
                width: 100%;
                height: auto;
            }
            .product-grid .product-discount-label{
                color: #fff;
                background: #c53337;
                font-size: 13px;
                font-weight: 600;
                line-height: 25px;
                padding: 0 20px;
                position: absolute;
                top: 10px;
                left: 0;
            }
            .product-grid .product-links{
                padding: 0;
                margin: 0;
                list-style: none;
                position: absolute;
                top: 10px;
                right: -50px;
                transition: all .5s ease 0s;
            }
            .product-grid:hover .product-links{
                right: 10px;
            }
            .product-grid .product-links li a{
                color: #333;
                background: transparent;
                font-size: 17px;
                line-height: 38px;
                width: 38px;
                height: 38px;
                /*                border: 1px solid #333;*/
                /*                border-bottom: none;*/
                display: block;
                transition: all 0.3s;
            }
            .product-grid .product-links li:last-child a{
                /*                border-bottom: 1px solid #333;*/
            }
            .product-grid .product-links li a:hover{
                color: #c53337;
                /*                background: #333;*/
            }
            .product-grid .add-to-cart{
                background: black;
                color: #fff;
                font-size: 16px;
                text-transform: uppercase;
                letter-spacing: 2px;
                width: 100%;
                padding: 10px 26px;
                position: absolute;
                left: 0;
                bottom: -60px;
                transition: all 0.3s ease 0s;
            }

            .sidebar-links a:hover {
                color: red;
            }

            .product-grid:hover .add-to-cart{
                bottom: 0;
            }
            .product-grid .add-to-cart:hover{
                /*                text-shadow: 4px 4px rgba(0,0,0,0.2);*/
                background: rgb(199, 30, 61);
            }
            .product-grid .product-content{
                background: #fff;
                padding: 15px;
                /*box-shadow: 0 0 0 5px rgba(0,0,0,0.1) inset;*/
            }
            .product-grid .title{
                font-size: 16px;
                font-weight: 600;
                text-transform: capitalize;
                margin: 0 0 7px;
            }
            .product-grid .title a{
                color: black;
                transition: all 0.3s ease 0s;
                text-decoration: none;
            }
            .product-grid .title a:hover{
                color: #a5ba8d;
            }
            .product-grid .price{
                color: #c53337;
                font-size: 14px;
                font-weight: 600;
            }
            .product-grid .price span{
                color: #888;
                font-size: 13px;
                font-weight: 400;
                text-decoration: line-through;
            }
            .pagination .page-link {
                border-radius: 20px;
                color: #c53337;

            }

            .pagination .page-item.active .page-link {
                background-color: #c53337;
                border-color: #c53337;
            }

            .pagination .page-link:focus,
            .pagination .page-link:hover {
                background-color: #c53337;
                border-color: #c53337;
                color: #fff;
            }

            .pagination .page-item:first-child .page-link {
                border-top-left-radius: 15px;
                border-bottom-left-radius: 15px;
            }

            .pagination .page-item:last-child .page-link {
                border-top-right-radius: 15px;
                border-bottom-right-radius: 15px;
            }
            @media screen and (max-width: 990px){
                .product-grid{
                    margin-bottom: 30px;
                }
            }

            a.btn {
                padding: 5px 10px;
                font-size: 15px;
                border: 1px solid;
                border-radius: 5px;
                cursor: pointer;
                margin-right: 10px;
                width: 70px;
                height: 30px;
                text-align: center;
                /* Căn giữa nội dung ngang */
                justify-content: center;
                /* Căn giữa nội dung dọc */
                align-items: center;
            }
            a.btn:hover{
                background-color: #c53337;
                color: #fff;
            }
            a.btn:active{
                background-color: #c53337;
                color: #fff;
            }
            .gender {
                display: flex;
            }
            /* CSS để điều chỉnh màu sắc khi liên kết được chọn */
            .list-unstyled li a.selected {
                color: red; /* Chỉnh màu chữ khi liên kết được chọn */
                font-weight: bold; /* Chỉnh kiểu chữ khi liên kết được chọn */
            }

            .list-unstyled li.selected {
                background-color: #f0f0f0; /* Chỉnh màu nền của li khi liên kết được chọn */
            }

            .list-unstyled li a {
                color: black; /* Thiết lập màu chữ đen cho tất cả các liên kết */
            }
        </style>
    </head>
    <body>

        <%@include file="US_header.jsp" %>
        <div class="container-fluid-a p-3 mt-5">
            <h2 style="color: #fff; padding-left: 40px;">All Products</h2>
            <p style="padding-left: 40px; color: #fff">Buy and Sell items for all people on ISP392. Every item is ISP392 Verified. </p>
        </div>
        <div class="gender">
            <div class="row-md-6 text-md-right col-md-10 mt-5">
                <a href="US_Men.jsp" class="btn">Men</a><a href="US_Women.jsp" class="btn">Women</a>
            </div>
        </div>
        <div class="container mt-5 mb-5">
            <div class="row">
                <!-- Sidebar -->
                <div class="col-md-3">
                    <!--                    <h3 class="mb-2" style="color: #c53337">FILTER</h3>-->
                    <hr>
                    <div>
                        <h4 style="color: #c53337">FILTER</h4>
                        <ul class="list-unstyled" style="text-decoration: none; ">
                            <li><a href="#" style="color: #000;">Sneakers</a></li>
                            <li><a href="#" style="color: #000;">Clothes</a></li>
                            <li><a href="#" style="color: #000;">Accessories</a></li>
                        </ul>
                    </div>
                    <hr>

                    <div>
                        <h4 style="color: #c53337">BRANDS</h4>
                        <ul class="list-unstyled">
                            <% List<BrandDTO> brands = (List<BrandDTO>) request.getAttribute("brands");
                                Integer selectedBrandID = (Integer) request.getAttribute("brandID");
                                if (brands != null) {
                                    for (BrandDTO brand : brands) {
                                        boolean isSelected = selectedBrandID != null && selectedBrandID.equals(brand.getBrandID());
                            %>
                            <li class="<%= isSelected ? "selected" : ""%>">
                                <a href="MainController?action=Get_product_by_brand&brandID=<%= brand.getBrandID()%>" class="<%= isSelected ? "selected" : ""%>"><%= brand.getBrandName()%></a>
                            </li>
                            <%    }
                                }%>
                        </ul>
                    </div>


                    <hr>
                    <div>

                        <h4 style="color: #c53337">FILTER BY PRICE</h4>

                        <ul class="list-unstyled">
                            <li><a href="MainController?action=Get_product_by_price&priceRange=0-100" class="<%= request.getParameter("priceRange") != null && request.getParameter("priceRange").equals("0-100") ? "selected" : ""%>">Below $100</a></li>
                            <li><a href="MainController?action=Get_product_by_price&priceRange=100-200" class="<%= request.getParameter("priceRange") != null && request.getParameter("priceRange").equals("100-200") ? "selected" : ""%>">From $100 to $200</a></li>
                            <li><a href="MainController?action=Get_product_by_price&priceRange=200plus" class="<%= request.getParameter("priceRange") != null && request.getParameter("priceRange").equals("200plus") ? "selected" : ""%>">Above $200</a></li>
                        </ul>
                    </div>

                    <hr>
                    <button onclick="location.href = 'ViewAllProductController'" class="btn btn-outline-secondary reset-button mt-3">Reset</button>

                </div>

                <!-- Main Content -->
                <div class="col-md-9">
                    <h5 style="color: grey;">
                        <a style="color: grey; text-decoration: none" href="US_index.jsp">Home ></a>
                        <a style="color: grey; text-decoration: none" href="AllProducts.jsp">All Products</a>
                    </h5>

                    <div class="row" id="products-container">
                        <%
                            List<ProductDTO> products = (List<ProductDTO>) request.getAttribute("products");
                            List<ProductDetailsDTO> productDetails = (List<ProductDetailsDTO>) request.getAttribute("productDetails");
                            Set<String> seenImages = new HashSet<>(); // Create a HashSet to track unique images

                            for (ProductDTO product : products) {
                                for (ProductDetailsDTO productDetail : productDetails) {
                                    if (product.getProductID() == productDetail.getProductID()) {
                                        String image = productDetail.getImage();
                                        if (!seenImages.contains(image)) {
                                            seenImages.add(image);
                        %>
                        <div class="col-md-3 col-sm-6">
                            <div class="product-grid">
                                <div class="product-image">
                                    <a href="MainController?action=Get_product_detail&productID=<%= product.getProductID()%>" class="image">
                                        <img src="images/newImage/<%= image%>" alt="<%= product.getProductName()%>">
                                    </a>
                                    <ul class="product-links">
                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                    </ul>
                                    <a href="" class="add-to-cart">Add to Cart</a>
                                </div>
                                <div class="product-content">
                                    <h3 class="title"><a href="MainController?action=Get_product_detail&productID=<%= product.getProductID()%>"><%= product.getProductName()%></a></h3>
                                    <div class="price"><%= productDetail.getPrice()%> <span></span></div>
                                </div>
                            </div>
                        </div>
                        <%
                                        }
                                    }
                                }
                            }
                        %>
                    </div>

                </div>

                <div id="pagination-container" class="mt-3">
                    <%
                        int currentPage = (int) request.getAttribute("currentPage");
                    %>
                    <nav aria-label="Page navigation">
                        <ul class="pagination justify-content-center mt-3">
                            <li class="page-item <%= currentPage == 1 ? "disabled" : ""%>">
                                <a class="page-link" href="?page=<%= currentPage - 1%>" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <%
                                int totalPages = (Integer) request.getAttribute("totalPages");
                                for (int i = 1; i <= totalPages; i++) {
                            %>
                            <li class="page-item <%= currentPage == i ? "active" : ""%>"><a class="page-link" href="?page=<%= i%>"><%= i%></a></li>
                                <%
                                    }
                                %>
                            <li class="page-item <%= currentPage == totalPages ? "disabled" : ""%>">
                                <a class="page-link" href="?page=<%= currentPage + 1%>" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>


            </div>
        </div>
    </div>
    <jsp:include page="US_footer.jsp" />
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script type="text/javascript">
                        $(document).ready(function () {
                            // Function to handle pagination link clicks
                            $('body').on('click', '.pagination a.page-link', function (e) {
                                e.preventDefault();
                                // Prevent default link behavior
                                var url = $(this).attr('href');
                                // Get the URL from the pagination link

                                $.ajax({
                                    url: url, // Corrected: Use the URL from pagination link
                                    type: 'GET',
                                    success: function (data) {
                                        // Update products container with new data
                                        $('#products-container').html($(data).find('#products-container').html());
                                        // Update pagination container with new pagination links
                                        $('#pagination-container').html($(data).find('#pagination-container').html());
                                    }
                                    ,
                                    error: function () {
                                        alert('Error loading page. Please try again.');
                                    }
                                }
                                );
                            }
                            );
                        }
                        );
                        s
    </script>


</body>
</html>
