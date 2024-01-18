<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Product</title>

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
        }

        .form-label {
            color: #fff;
        }

        .form-control {
            background-color: #dae0e5; /* Light gray background for form controls */
            color: #000; /* Text color for better visibility */
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
    <h2>Edit Product</h2>
    <form action="<c:url value='/updateProduct'/>" method="post">
        <input type="hidden" name="id" value="${productToEdit.id}"/>

        <div class="mb-3">
            <label for="name" class="form-label">Name:</label>
            <input type="text" class="form-control" placeholder="ex: HP ENVY 4455" id="name" name="name" value="${productToEdit.name}" required>
        </div>

        <div class="mb-3">
            <label for="category" class="form-label">Category:</label>
            <input type="text" class="form-control" id="category" placeholder="ex: Printers" name="category" value="${productToEdit.category}" required>
        </div>

        <div class="mb-3">
            <label for="price" class="form-label">Price:</label>
            <input type="number" step="0.01" class="form-control" id="price" placeholder="ex: 75.99" name="price" value="${productToEdit.price}" required>
        </div>

        <div class="mb-3">
            <label for="quantity" class="form-label">Quantity:</label>
            <input type="number" class="form-control" id="quantity" name="quantity" placeholder="ex: 3" value="${productToEdit.quantity}" required>
        </div>

        <div class="mb-3">
            <label for="description" class="form-label">Description:</label>
            <textarea class="form-control" id="description" name="description"  placeholder="ex: Printer for personal use" rows="3" required>${productToEdit.description}</textarea>
        </div>

        <button type="submit" class="btn btn-success">Save Changes</button>
    </form>
</div>
</body>
</html>
