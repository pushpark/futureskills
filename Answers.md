1. Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.
       In the above diagram the "Product" table represents individual item details and
       the "Product_Category" represents categorization.
       Each product may belong to one are more ctegories and
       Each category may contain multiple products.
       We can say the relationship between these two enities like "many-to-many" relationship
       We can do required operations on these entities by combining them with cotegory_id

2. How could you ensure that each product in the "Product" table has a valid category assigned to it?
       We can ensure that each product in the "Product" table has a valid category assigned to it using many approaches.
       example:
           Foreign Key Constraint
                 -Create a foreign key constraint establishes a relationship between the "Product" table and the "Product_Category" table.
                 -If we try to insert or update a product record with a category ID that does not exist in the "Product_Category" table
                   will result in a constraint violation error
