USE alx_book_store;

SELECT * FROM informaton_schema.columns
WHERE table_schema = 'alx_book_store'
    AND table_name = 'Books';
