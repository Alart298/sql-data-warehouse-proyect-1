# bulk toda la informacion a la tabla pero primero se tiene que truncar toda la info en caso de recargar la tabla
  # recorda despues hacer el proceso de explicacion del codigo
	# para asi no duplicarla
    select '===================================';
    select 'Carga de la capa de bronce';
    select '===================================';
    
    select '------------------------------';
    select 'Carga de tablas CRM';
    select '------------------------------';

    select '>> Truncate tabla: bronze_crm_cust_info';
	Truncate table bronze_crm_cust_info;

    select '>> carga de datos a la tabla: bronze_crm_cust_info';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/cust_info.csv'
	INTO TABLE bronze_crm_cust_info
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS
	(
	  @cst_id,
	  cst_key,
	  cst_firstname,
	  cst_lastname,
	  cst_marital_status,
	  cst_gender,
	  @cst_create_date
	)
	SET
	  cst_id = NULLIF(@cst_id, ''),
	  cst_create_date = NULLIF(@cst_create_date, '');
	
	-- ver todos los datos
	select * from bronze_crm_cust_info;
	-- contar todas las columnas
	select COUNT(*) from bronze_crm_cust_info;
	
    select '>> Truncate tabla: bronze_crm_prd_info';
	Truncate table bronze_crm_prd_info;
	select '>> carga de datos a la tabla: bronze_crm_prd_info';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/prd_info.csv'
	INTO TABLE bronze_crm_prd_info
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS
	(
	  prd_id,
	  prd_key,
	  prd_nm,
	  @prd_cost,
	  prd_line,
	  @prd_start_dt,
	  @prd_end_dt
	)
	SET
	  prd_cost     = NULLIF(@prd_cost, ''),
	  prd_start_dt = NULLIF(@prd_start_dt, ''),
	  prd_end_dt   = NULLIF(@prd_end_dt, '');

	-- ver todos los datos
	select * from bronze_crm_prd_info;
	-- contar todas las columnas
	select COUNT(*) from bronze_crm_prd_info;
	
    select '>> Truncate tabla: bronze_crm_sales_details';
	Truncate table bronze_crm_sales_details;
    select '>> carga de datos a la tabla: bronze_crm_sales_details';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/sales_details.csv'
	INTO TABLE bronze_crm_sales_details
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS
	(
	  sls_ord_num,
	  sls_prd_key,
	  @sls_cust_id,
	  @sls_order_dt,
	  @sls_ship_dt,
	  @sls_due_dt,
	  @sls_sales,
	  @sls_quantity,
	  @sls_price
	)
	SET
	  sls_cust_id  = NULLIF(@sls_cust_id, ''),
	  sls_order_dt = NULLIF(@sls_order_dt, ''),
	  sls_ship_dt  = NULLIF(@sls_ship_dt, ''),
	  sls_due_dt   = NULLIF(@sls_due_dt, ''),
	  sls_sales    = NULLIF(@sls_sales, ''),
	  sls_quantity = NULLIF(@sls_quantity, ''),
	  sls_price    = NULLIF(@sls_price, '');

	-- ver todos los datos
	select * from bronze_crm_sales_details;
	-- contar todas las columnas
	select COUNT(*) from bronze_crm_sales_details;
    
	select '------------------------------';
    select 'Carga de tablas ERP';
    select '------------------------------';
	
    select '>> Truncate tabla: bronze_erp_cust_az12';
    Truncate table bronze_erp_cust_az12;
	select '>> carga de datos a la tabla: bronze_erp_cust_az12';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/CUST_AZ12.csv'
	INTO TABLE bronze_erp_cust_az12
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS
    (
	  cid,
	  @bdate,
	  @gen
	)
	SET
	 bdate = NULLIF(@bdate, ''),
     gen = NULLIF(@gen,'');
	-- ver todos los datos
	select * from bronze_erp_cust_az12;
	-- contar todas las columnas
	select COUNT(*) from bronze_erp_cust_az12;
    
	select '>> Truncate tabla: bronze_erp_loc_a101';
    Truncate table bronze_erp_loc_a101;
	select '>> carga de datos a la tabla: bronze_erp_loc_a101';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/LOC_A101.csv'
	INTO TABLE bronze_erp_loc_a101
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
   
	-- ver todos los datos
	select * from bronze_erp_loc_a101;
	-- contar todas las columnas
	select COUNT(*) from bronze_erp_loc_a101;
    

  select '>> Truncate tabla: bronze_erp_px_cat_g1v2';
  Truncate table bronze_erp_px_cat_g1v2;
  select '>> carga de datos a la tabla: bronze_erp_px_cat_g1v2';
	LOAD DATA INFILE
	'C:/ProgramData/MySQL/MySQL Server 5.7/Uploads/PX_CAT_G1V2.csv'
	INTO TABLE bronze_erp_px_cat_g1v2
	FIELDS TERMINATED BY ','
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
   
	-- ver todos los datos
	select * from bronze_erp_px_cat_g1v2;
	-- contar todas las columnas
	select COUNT(*) from bronze_erp_px_cat_g1v2;  
