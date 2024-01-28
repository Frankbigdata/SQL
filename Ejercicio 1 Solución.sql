#EJERCICIO 1#

CREATE TABLE `merchants` (
 `merchant_id` VARCHAR(50) NOT NULL,
 `name` VARCHAR(50) NULL);

CREATE TABLE `orders` (
  `order_id` VARCHAR(50) NOT NULL,
  `created_at` DATETIME(50) NOT NULL,
  `status` VARCHAR(50) NULL,
  `amount` FLOAT(50) NULL,
  `merchant_id` VARCHAR(50) NOT NULL,
  `country` VARCHAR(50) NULL);

CREATE TABLE `refunds` (
  `order_id` VARCHAR(50) NOT NULL,
  `refunded_at` DATETIME(50) NULL,
  `amount` FLOAT(50) NULL);


