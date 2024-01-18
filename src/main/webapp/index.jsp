<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Welcome to Our Catalog</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        body {
            background-color: #0F2143;
        }

        .container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .jumbotron {
            color: #fff;
            text-align: center;
        }

        .lead {
            color: #ffffff; /* White text for the lead */
        }

        .btn-primary {
            background-color: #dc3545; /* Bootstrap danger color */
            border-color: #dc3545; /* Bootstrap danger color */
        }
    </style>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1 class="display-4">IT Catalog</h1>
        <p class="lead">Explore our products and manage your catalog with ease.</p>
        <a class="btn btn-primary btn-lg" href="products" role="button">View Products</a>
    </div>
</div>

<!-- Bootstrap JS dependencies (optional, if needed) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
