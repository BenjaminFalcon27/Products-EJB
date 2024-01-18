package com.example.services;

import com.example.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductService {
    private static final List<Product> products = new ArrayList<>();

    // DB free hosted but can replace with a local database
    private static final String JDBC_URL = "jdbc:mysql://sql8.freemysqlhosting.net/sql8677863";
    private static final String JDBC_USER = "sql8677863";
    private static final String JDBC_PASSWORD = "mRC2rmRIx5";

    private static final String COLUMN_ID = "id";
    private static final String COLUMN_NAME = "name";
    private static final String COLUMN_PRICE = "price";
    private static final String COLUMN_DESCRIPTION = "description";
    private static final String COLUMN_QUANTITY = "quantity";
    private static final String COLUMN_CATEGORY = "category";

    private static final String SQL_SELECT_ALL_PRODUCTS = "SELECT * FROM products ORDER BY id DESC";
    private static final String SQL_INSERT_PRODUCT = "INSERT INTO products (name, price, description, quantity, category) VALUES (?, ?, ?, ?, ?)";
    private static final String SQL_UPDATE_PRODUCT = "UPDATE products SET name = ?, price = ?, description = ?, quantity = ?, category = ? WHERE id = ?";
    private static final String SQL_DELETE_PRODUCT = "DELETE FROM products WHERE id = ?";
    private static final String SQL_SELECT_PRODUCT_BY_ID = "SELECT * FROM products WHERE id = ?";

    public List<Product> getAllProducts() {
        products.clear();

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SQL_SELECT_ALL_PRODUCTS);
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                int id = resultSet.getInt(COLUMN_ID);
                String name = resultSet.getString(COLUMN_NAME);
                double price = resultSet.getDouble(COLUMN_PRICE);
                String description = resultSet.getString(COLUMN_DESCRIPTION);
                int quantity = resultSet.getInt(COLUMN_QUANTITY);
                String category = resultSet.getString(COLUMN_CATEGORY);

                Product product = new Product(id, name, price, description, quantity, category);
                products.add(product);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return products;
    }

    public void addProduct(Product product) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SQL_INSERT_PRODUCT, Statement.RETURN_GENERATED_KEYS)) {

            statement.setString(1, product.getName());
            statement.setDouble(2, product.getPrice());
            statement.setString(3, product.getDescription());
            statement.setInt(4, product.getQuantity());
            statement.setString(5, product.getCategory());

            int affectedRows = statement.executeUpdate();

            if (affectedRows == 0) {
                throw new SQLException("Insert Failed.");
            }

            try (ResultSet generatedKeys = statement.getGeneratedKeys()) {
                if (generatedKeys.next()) {
                    int productId = generatedKeys.getInt(1);
                    product.setId(productId);
                } else {
                    throw new SQLException("Can't fetch product");
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateProduct(Product updatedProduct) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SQL_UPDATE_PRODUCT)) {

            statement.setString(1, updatedProduct.getName());
            statement.setDouble(2, updatedProduct.getPrice());
            statement.setString(3, updatedProduct.getDescription());
            statement.setInt(4, updatedProduct.getQuantity());
            statement.setString(5, updatedProduct.getCategory());
            statement.setInt(6, updatedProduct.getId());

            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteProduct(int productId) {
        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SQL_DELETE_PRODUCT)) {

            statement.setInt(1, productId);
            statement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        products.removeIf(product -> product.getId() == productId);
    }

    public Product getProductById(int productId) {
        Product product = null;

        try (Connection connection = getConnection();
             PreparedStatement statement = connection.prepareStatement(SQL_SELECT_PRODUCT_BY_ID)) {

            statement.setInt(1, productId);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    int id = resultSet.getInt(COLUMN_ID);
                    String name = resultSet.getString(COLUMN_NAME);
                    double price = resultSet.getDouble(COLUMN_PRICE);
                    String description = resultSet.getString(COLUMN_DESCRIPTION);
                    int quantity = resultSet.getInt(COLUMN_QUANTITY);
                    String category = resultSet.getString(COLUMN_CATEGORY);

                    product = new Product(id, name, price, description, quantity, category);
                }
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return product;
    }

    private Connection getConnection() throws SQLException {
        return DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
    }
}
