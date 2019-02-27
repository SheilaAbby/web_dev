DROP DATABASE IF EXISTS my_database;
CREATE DATABASE my_database;
\c my_database;
DROP TABLE IF EXISTS customers;
CREATE TABLE customers(customer_id SERIAL PRIMARY KEY,
 customer_name VARCHAR (200) NOT NULL,
 customer_description VARCHAR (200) NULL,
 updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
  );
CREATE INDEX customers_id_names_idx ON customers (customer_id, customer_name);
DROP TABLE IF EXISTS transactions;
CREATE TABLE transactions(transaction_id SERIAL PRIMARY KEY,
    transaction_customer_id SERIAL references customers(customer_id), # Create a constraint on table 2 where a customer_Id must exist in table_1 if it is to be entered in table 2.
    transaction_item VARCHAR (200) NOT NULL,
    transaction_date TIMESTAMP NOT NULL DEFAULT NOW(),
    transaction_created_date TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
     );



