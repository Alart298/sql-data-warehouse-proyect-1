-- ==============================
-- INIT DATABASE
-- ==============================

DROP DATABASE IF EXISTS datawarehouse;
CREATE DATABASE datawarehouse;
USE datawarehouse;

-- ==============================
-- BRONZE TABLES
-- ==============================

CREATE TABLE bronze_crm_cust_info (
  cst_id INT,
  cst_key VARCHAR(50),
  cst_firstname VARCHAR(50),
  cst_lastname VARCHAR(50),
  cst_marital_status VARCHAR(50),
  cst_gender VARCHAR(10),
  cst_create_date VARCHAR(50)
);

CREATE TABLE bronze_crm_prd_info (
  prd_id INT,
  prd_key VARCHAR(50),
  prd_nm VARCHAR(50),
  prd_cost INT,
  prd_line VARCHAR(50),
  prd_start_dt VARCHAR(50),
  prd_end_dt VARCHAR(50)
);

CREATE TABLE bronze_crm_sales_details (
  sls_ord_num VARCHAR(50),
  sls_prd_key VARCHAR(50),
  sls_cust_id INT,
  sls_order_dt INT,
  sls_ship_dt INT,
  sls_due_dt INT,
  sls_sales INT,
  sls_quantity INT,
  sls_price VARCHAR(50)
);

-- ==============================
-- ETL LOG
-- ==============================

CREATE TABLE etl_log (
  id INT AUTO_INCREMENT PRIMARY KEY,
  process_name VARCHAR(100),
  table_name VARCHAR(100),
  issue_type VARCHAR(100),
  issue_count INT,
  log_date DATETIME DEFAULT NOW()
);

