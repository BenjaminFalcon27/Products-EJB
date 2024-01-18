<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create Product</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <style>
        body {
            background-color: #0F2143;
            color: #fff;
        }

        .jumbotron {
            color: #fff;
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: auto;
        }

        .btn-back {
            position: fixed;
            top: 10px;
            left: 10px;
            z-index: 1000;
        }
    </style>
</head>
<body>
<div class="container">
    <a href="<c:url value='/products'/>" class="btn btn-back btn-info">Back to Products</a>
    <div class="jumbotron">
        <h2>Create Product</h2>
        <form action="<c:url value='/createProduct'/>" method="post">
            <div class="mb-3">
                <label for="name" class="form-label">Name:</label>
                <input type="text" class="form-control" id="name" name="name" placeholder="ex: HP ENVY 4455" required>
            </div>

            <div class="mb-3">
                <label for="category" class="form-label">Category:</label>
                <input type="text" class="form-control" id="category" name="category" placeholder="ex: Printers" required>
            </div>

            <div class="mb-3">
                <label for="price" class="form-label">Price:</label>
                <input type="number" class="form-control" id="price" name="price" min="1" placeholder="ex: 75.99" required>
            </div>

            <div class="mb-3">
                <label for="quantity" class="form-label">Quantity:</label>
                <input type="number" class="form-control" id="quantity" name="quantity" placeholder="ex: 3" required>
            </div>

            <div class="mb-3">
                <label for="description" class="form-label">Description:</label>
                <textarea class="form-control" id="description" name="description" rows="3" placeholder="ex: Printer for personal use" required></textarea>
            </div>

            <button type="submit" class="btn btn-submit btn-success">Create Product</button>
        </form>
    </div>
</div>
</body>
</html>
