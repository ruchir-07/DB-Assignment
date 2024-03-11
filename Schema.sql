CREATE DATABASE DBAssignment;

USE DBAssignment;

CREATE TABLE product {
  id int AUTO_INCREMENT PRIMARY KEY,
  name varchar,
  desc text,
  SKU varchar,
  category_id int NOT NULL,
  inventory_id int NOT NULL,
  price decimal,
  discount_id int NOT NULL,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at timestamp NULL,
  FOREIGN KEY (category_id) REFERENCES product_category(id),
  FOREIGN KEY (inventory_id) REFERENCES product_inventory(id),
  FOREIGN KEY (discount_id) REFERENCES discount(id)
};

CREATE TABLE product_category {
  id int AUTO_INCREMENT PRIMARY KEY,
  name varchar,
  desc text,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at timestamp NULL
};

CREATE TABLE product_inventory {
  id int AUTO_INCREMENT PRIMARY KEY,
  quantity int,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at timestamp NULL
};

CREATE TABLE discount {
  id int AUTO_INCREMENT PRIMARY KEY,
  name varchar,
  desc text,
  discount_percent decimal,
  active boolean DEFAULT true,
  created_at timestamp DEFAULT CURRENT_TIMESTAMP,
  modified_at timestamp DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  deleted_at timestamp NULL
};
