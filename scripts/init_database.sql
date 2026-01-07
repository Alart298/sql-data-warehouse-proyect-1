
-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-01-2026 a las 09:19:53
-- Versión del servidor: 5.7.44-log
-- Versión de PHP: 8.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datawarehouse`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_crm_cust_info`
--

CREATE TABLE `bronze_crm_cust_info` (
  `cst_id` int(11) NOT NULL,
  `cst_key` varchar(50) DEFAULT NULL,
  `cst_firstname` varchar(50) DEFAULT NULL,
  `cst_lastname` varchar(50) DEFAULT NULL,
  `cst_marital_status` varchar(50) DEFAULT NULL,
  `cst_gender` varchar(10) DEFAULT NULL,
  `cst_create_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_crm_prd_info`
--

CREATE TABLE `bronze_crm_prd_info` (
  `prd_id` int(11) NOT NULL,
  `prd_key` varchar(50) DEFAULT NULL,
  `prd_nm` varchar(50) DEFAULT NULL,
  `prd_cost` int(11) DEFAULT NULL,
  `prd_line` varchar(50) DEFAULT NULL,
  `prd_start_dt` datetime DEFAULT NULL,
  `prd_end_dt` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_crm_sales_details`
--

CREATE TABLE `bronze_crm_sales_details` (
  `sls_ord_num` varchar(50) DEFAULT NULL,
  `sls_prd_key` varchar(50) DEFAULT NULL,
  `sls_cust_id` int(11) DEFAULT NULL,
  `sls_order_dt` int(11) DEFAULT NULL,
  `sls_ship_dt` int(11) DEFAULT NULL,
  `sls_due_dt` int(11) DEFAULT NULL,
  `sls_sales` int(11) DEFAULT NULL,
  `sls_quantity` int(11) DEFAULT NULL,
  `sls_price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_erp_cust_az12`
--

CREATE TABLE `bronze_erp_cust_az12` (
  `cid` varchar(50) DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `gen` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_erp_loc_a101`
--

CREATE TABLE `bronze_erp_loc_a101` (
  `cid` varchar(50) DEFAULT NULL,
  `cntry` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bronze_erp_px_cat_g1v2`
--

CREATE TABLE `bronze_erp_px_cat_g1v2` (
  `id` varchar(50) DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  `subcat` varchar(50) DEFAULT NULL,
  `maintenance` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bronze_crm_cust_info`
--
ALTER TABLE `bronze_crm_cust_info`
  ADD PRIMARY KEY (`cst_id`);

--
-- Indices de la tabla `bronze_crm_prd_info`
--
ALTER TABLE `bronze_crm_prd_info`
  ADD PRIMARY KEY (`prd_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
