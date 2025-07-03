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
	author_id INT AUTO_INCREMENT PRIMARY KEY, author_name VARCHAR(215)
)
""")

cursor.close()
alx_book_store.close()

