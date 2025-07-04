import mysql.connector

alx_book_store = mysql.connector.connect(
host = 'localhost',
user = 'root',
password = 'Emmanuella2009',
database = 'alx_book_store'
)

cursor = alx_book_store.cursor()

cursor.execute ("""
    CREATE TABLE IF NOT EXISTS Authors(
        author_id INT AUTO_INCREMENT PRIMARY KEY,
        author_name VARCHAR(215)
    )
""")

cursor.execute ("""
    CREATE TABLE IF NOT EXISTS Books(
        book_id INT AUTO_INCREMENT PRIMARY KEY,
        title VARCHAR(130),
        author_id INT,
        price DOUBLE,
        publication_date DATE,
        FOREIGN KEY (author_id) REFERENCES Authors (authors_id)
    )
""")

cursor.execute ("""
    CREATE TABLE IF NOT EXISTS Customers(
        customer_id INT AUTO INCREMENT PRIMARY KEY,
        customer_name VARCHAR(215) NOT NULL,
        email VARCHAR(215) NOT NULL UNIQUE,
        address TEXT)
""")

cursor.execute ("""
    CREATE TABLE IF NOT EXISTS Orders(
        order_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_id INT,
        order_date DATE,
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
   )
""")

cursor.execute ("""
    CREATE TABLE IF NOT EXISTS Order_Details(
        orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
        order_id INT,
        book_id INT,
        quantity DOUBLE,
        FOREIGN KEY (book_id) REFERENCES Books(book_id),
        FOREIGN KEY (order_id) REFERENCES Orders(order_id)
    )
""")

cursor.close()
alx_book_store.close()
