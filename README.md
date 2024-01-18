# Project Name

Description of your project.

## Technologies Used

- Java
- Servlets
- JSP
- MySQL
- Maven
- Other relevant technologies

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

3. Configure the database settings in the `ProductService.java` (or equivalent) file.


```properties
# Database Configuration
db.url=jdbc:mysql://localhost:3306/your_database
db.username=your_username
db.password=your_password

#Then use the catalog_products.sql to fill your database
```

### You can also keep the default configuration with an online database.

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


