<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SiderBar</title>
        <!-- Bootstrap CSS -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .logout-btn {
                position: absolute;
                bottom: 20px;
                left: 20px;
                display: flex;
                align-items: center;
                color: #000;
                text-decoration: none;
            }
            .logout-btn i {
                margin-right: 18px;
            }
        </style>
    </head>
    <body>
        <form action="MainController" method="post">
            <ul class="navbar-nav sidebar sidebar-light accordion" id="accordionSidebar" style="background: #C43337">
                <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.jsp" style="background: #FFF">
                    <div class="sidebar-brand-text" style="color: #C43337">ISP392<span style="color: #000">SHOP</span></div>
                </a>
                <hr class="sidebar-divider my-0">
                <hr class="sidebar-divider">

                <div class="sidebar-heading" style="font-size: 15px">
                    Features
                </div>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Product_List">
                        <i class="fas fa-box"></i>
                        <span>Product List</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Categories_List">
                        <i class="fa fa-pie-chart"></i>
                        <span>Categories</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Manage_Brands_Page">
                        <i class="fas fa-tshirt"></i>
                        <span>Brand</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Support_List">
                        <i class="fas fa-comment"></i>
                        <span>Support</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Order_List">
                        <i class="fas fa-cash-register"></i>
                        <span>Order</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Promotion_List">
                        <i class="fas fa-tags"></i>
                        <span>Discount</span>
                    </button>
                </li>

                <li class="nav-item mt-3">
                    <button type="submit" class="nav-link btn btn-link" name="action" value="Statistic_Report">
                        <i class="fa fa-bar-chart"></i>
                        <span>Statistic Report</span>
                    </button>
                </li>

                <hr class="sidebar-divider">

                <button type="submit" class="logout-btn btn btn-link" name="action" value="Logout">
                    <i class="fas fa-sign-out-alt"></i>
                    Log out
                </button>
            </ul>
        </form>

        <!-- jQuery and Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </body>
</html>
