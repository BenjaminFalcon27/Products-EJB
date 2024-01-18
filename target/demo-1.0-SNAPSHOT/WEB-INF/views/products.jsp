<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>All Products</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        body {
            background-color: #0F2143;
            color: #fff;
        }

        h2 {
            color: #fff;
            text-align: center;
        }

        .table {
            background-color: #bcd5cf;
            color: #000;
        }

        .table th {
            background-color: #007bff;
            color: #fff;
        }

        .table td {
            background-color: #dae0e5;
        }

        .table tr.filtered {
            display: none;
        }

    </style>
    <script>
        $(document).ready(function () {
            $("#searchInput").on('input', function () {
                var searchText = $(this).val().toLowerCase();

                $(".table tbody tr").removeClass("filtered").show();

                $(".table tbody tr").filter(function () {
                    return $(this).text().toLowerCase().indexOf(searchText) === -1;
                }).addClass("filtered").hide();

                $("#noResultsMessage").toggle($(".table tbody tr:not(.filtered)").length === 0);
            });
        });
    </script>

</head>
<body>
<div class="container">
    <div class="row justify-content-center">
        <h2>All Products</h2>
    </div>
    <div class="row justify-content-center mt-4">
        <div class="col-md-6">
            <div class="input-group mb-3">
                <input type="text" class="form-control" id="searchInput" placeholder="Search for a product">
            </div>
        </div>
        <div class="col-md-6">
            <div class="btn-group d-flex" role="group" aria-label="Product Actions">
                <a href="<c:url value='/newProduct'/>" class="btn btn-success w-50">Create New Product</a>
            </div>
        </div>
    </div>
    <table class="table table-bordered mt-2">
        <thead>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Price</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="product" items="${products}">
            <tr>
                <td>${product.name}</td>
                <td>${product.category}</td>
                <td>${product.price}</td>
                <td>${product.description}</td>
                <td>${product.quantity}</td>
                <td>
                    <div class="btn-group d-flex" role="group" aria-label="Product Actions">
                        <a href="<c:url value='/editProduct?id=${product.id}'/>" class="btn btn-primary btn-sm">Edit</a>
                        <a href="<c:url value='/deleteProduct?id=${product.id}'/>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?')">Delete</a>
                    </div>
                </td>
            </tr>
        </c:forEach>
            <tr id="noResultsMessage" style="display:none;">
                <td colspan="6" class="text-center">No result found.</td>
            </tr>
        </tbody>
    </table>
</div>
</body>
</html>
