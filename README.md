# IT Catalog project

This web application is developed as part of a school project to manage a product catalog effectively. The primary goal is to provide functionalities for creating, editing, deleting, and searching for products within the catalog.

## Technologies Used

- Java
- Servlets
- JSP
- MySQL
- Maven
- Other relevant technologies

## Key Features

#### 1. **Product Creation:**
- Users can effortlessly add new products to the catalog by providing essential details such as name, category, price, quantity, and a detailed description.

#### 2. **Product Listing:**
- The application offers a clear and organized display of all cataloged products, presenting vital information such as name, category, price, quantity, and a concise description.

#### 3. **Product Modification:**
- Existing products can be easily updated through an intuitive "Edit Product" functionality. Users can modify product details, ensuring the catalog stays current and accurate.

#### 4. **Product Deletion:**
- Unnecessary or outdated products can be promptly removed from the catalog using a secure "Delete" option. A confirmation prompt helps prevent accidental deletions.

#### 5. **Real-Time Product Search:**
- The application integrates a dynamic search feature, allowing users to locate specific products instantly based on their name or other attributes.

## Getting Started

These instructions will help you set up and run the project on your local machine.

### Prerequisites

- Java Development Kit (JDK)
- JBoss/WildFly server (27.0 or >)
- Maven
- MySQL database (optional)
- IDE (e.g., IntelliJ IDEA, Eclipse)

### Installation

1. Clone the repository to your local machine.

```bash
git clone https://github.com/BenjaminFalcon27/Products-EJB.git
```

2. Open the project in your preferred IDE.

3. Configure the database or keep existing configuration.


| **Option 1: Keep Default Configuration**                                             | **Option 2: Customize Configuration**                                                                                                                    |
|--------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------|
| Keep the default configuration, which uses an online database with limited capacity. | Modify the database settings in the `ProductService.java` file. You can use the `catalog_products.sql` file to create a new db with some products in it. |


4. Build the project.

```bash
mvn clean install
```

5. Deploy the application to your JBoss/WildFly container

6. Start the servlet container.

7. Open a web browser and navigate to [http://localhost:8080/demo-1.0-SNAPSHOT](http://localhost:8080/demo-1.0-SNAPSHOT).

## Usage

### Home Page

The home page serves as the main entry point to the application.

![Home Page](src/main/resources/images/main_page.png)

<p style="text-align: center; font-style: italic;">Click on the button to access all products</p>

### Read Products

The "All Products" page displays a table containing a list of all available products. You can view product details, including name, category, price, quantity, and description.

![Read Products](src/main/resources/images/all_products_page.png)

<p style="text-align: center; font-style: italic;">On this page you can see all products, edit or delete existing. You can also create a new product by clicking the creation button</p>


### Create Product

To add a new product, navigate to the "Create New Product" page. Here, you can input details such as product name, category, price, quantity, and description.

![Create Product](src/main/resources/images/create_page.png)

<p style="text-align: center; font-style: italic;">Fill the blanks and submit the form</p>


### Update Product

To modify an existing product, navigate to the "Edit Product" page by clicking the "Edit" button next to the respective product on the "All Products" page. Update the necessary information and click "Save Changes" to apply the modifications.

![Update Product](src/main/resources/images/edit_page.png)

<p style="text-align: center; font-style: italic;">Edit the existing data and submit the form</p>


### Delete Product

Deleting a product can be done from the "All Products" page. Click the "Delete" button next to the product you want to remove. A confirmation prompt will appear before permanently removing the product.

![Delete Product](src/main/resources/images/delete_page.png)


