1. Explain the relationship between the "Product" and "Product_Category" entities: In the given database schema:
The "Product" table has a foreign key category_id that references the primary key id in the "Product_Category" table. This establishes a many-to-one relationship between "Product" and "Product_Category," meaning that each product can belong to only one category, but a category can have multiple products.

2. How to ensure each product in the "Product" table has a valid category assigned:
Use a foreign key constraint: Add a foreign key constraint on the category_id column in the "Product" table, referencing the id column in the "Product_Category" table. This ensures that every value in the category_id column of the "Product" table must exist as a primary key in the "Product_Category" table.
