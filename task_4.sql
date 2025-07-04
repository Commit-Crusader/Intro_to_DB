USE alx_book_store;

SELECT COLUMN_NAME, COLUMN_TYPE,
FROM informaton_schema.columns
WHERE table_schema = 'alx_book_store'
    AND table_name = 'Books';
