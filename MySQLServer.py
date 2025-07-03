import mysql.connector

try:
	alx_book_store = mysql.connector.connect(
		host = 'localhost',
		user = 'root',
		password ='Emmanuella2009'
	)

	cursor = alx_book_store.cursor();
	cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store");
	print ("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as err:
	print(f"Error connecting to MYSQL: {err}")

finally:
    if 'cursor' in locals() and cursor:
        cursor.close()
    if 'alx_book_store' in locals() and alx_book_store.is_connected():
        alx_book_store.close()
