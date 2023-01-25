INSERT INTO `customers` (`id`, `name`, `vip`, `active`) VALUES (316, 'Location_A', b'1', b'1'), (312, 'Location_B', b'1', b'1'), (307, 'Location_C', b'1', b'1');

INSERT INTO `customersApiKeys` (`id`, `cid`, `name`, `apiKey`) VALUES (103, 316, 'Location_A', 'uuid-Location_A'), (99, 312, 'Location_B', 'uuid-Location_B'), (94, 307, 'Location_C', 'uuid-Location_C');

INSERT INTO `systemsApiKeys` (`id`, `name`, `apiKey`) VALUES (199, 'Measurements', 'uuid-Measurements');

INSERT INTO `systems` (`sid`, `origin`, `lat`, `lon`, `region`, `timezone`, `brand`, `freq`, `qual`, `lag`, `created`, `autoupdate`, `polarity`, `measurements_customer_api_key_id`) VALUES ('Location_C_System_1', 'ems',53.201, 5.8,  NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:11', 1, -1, 199), ('Location_C_System_2', 'ems', 53.201,5.8,  NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:11', 1, -1, 199), ('Location_A_System_1', 'ems',  51.813, 5.837,NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:07', 1, 1, 199), ('Location_A_System_2', 'ems',51.813, 5.837,  NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:11', 1, 1, 199), ('Location_B_System_1', 'ems',  52.067,5.894, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:11', 1, -1, 199), ('Location_B_System_2', 'ems',   52.067, 5.894, NULL, NULL, NULL, NULL, NULL, NULL, '2019-08-22 11:26:12', 1, -1, 199);

INSERT INTO `predictions` (`id`, `name`, `forecast_type`, `model`, `created`, `active`, `horizon_minutes`, `resolution_minutes`, `train_components`,
`ean`) VALUES
(459, 'Location_A', 'demand', 'xgb_quantile', '2019-05-16 14:55:34', 1, 2880, 15, b'1', '000000000000000002'), (321, 'Location_B', 'demand', 'xgb', '2019-05-16 14:56:15', 1, 2880, 15, b'1', '000000000000000001'), (317, 'Location_A', 'demand', 'xgb', '2019-05-16 14:55:34', 1, 2880, 15, b'1', '000000000000000002'), (313, 'Location_C', 'demand', 'xgb', '2019-05-16 14:53:38', 1, 2880, 15, b'1', '000000000000000003');

INSERT INTO `quantile_sets` (`id`,`quantiles`,`description`) VALUES (1, '[0.05,0.1,0.3,0.5,0.7,0.9,0.95]', 'Default quantile set');

INSERT INTO `energy_split_coefs` (`id`, `pid`, `date_start`, `date_end`, `created`, `coef_name`, `coef_value`) VALUES (1136774, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'MAE', 5.43466), (1136762, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'wind_ref', 61.9371), (1136763, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'pv_ref', 7.96404), (1136764, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E1A', 0), (1136765, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E1B', 0), (1136766, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E1C', 0), (1136767, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E2A', 0), (1136768, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E2B', 93490.5), (1136769, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E3A', 46882.8), (1136770, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E3B', 0), (1136771, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E3C', 0), (1136772, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E3D', 457336), (1136773, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:35:03', 'sjv_E4A', 25410.6), (1136717, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E3A', 46830.2), (1136710, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'wind_ref', 61.9339), (1136711, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'pv_ref', 7.96138), (1136712, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E1A', 0), (1136713, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E1B', 0), (1136714, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E1C', 0), (1136715, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E2A', 0), (1136718, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E3B', 0), (1136719, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E3C', 0), (1136720, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E3D', 457430), (1136721, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E4A', 25438.5), (1136722, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'MAE', 5.43458), (1136716, 317, '2020-12-22', '2021-03-22', '2021-03-22 10:22:30', 'sjv_E2B', 93373.5), (1136330, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E3D', 457806), (1136321, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'pv_ref', 6.52087), (1136322, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E1A', 0), (1136323, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E1B', 0), (1136324, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E1C', 0), (1136325, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E2A', 0), (1136326, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E2B', 99386.6), (1136327, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E3A', 39672.6), (1136328, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E3B', 0), (1136329, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E3C', 0), (1136331, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'sjv_E4A', 26994.3), (1136332, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'MAE', 5.30905), (1136320, 317, '2020-12-15', '2021-03-15', '2021-03-15 10:05:27', 'wind_ref', 60.7769), (1136098, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'MAE', 11.6559), (1136086, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'wind_ref', 0), (1136087, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'pv_ref', 62.8949), (1136088, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E1A', 3.61863), (1136089, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E1B', 0.310123), (1136090, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E1C', 295224), (1136091, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E2A', 17.7436), (1136092, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E2B', 78.2667), (1136093, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E3A', 1.61552), (1136094, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E3B', 285996), (1136095, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E3C', 4.83026), (1136096, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E3D', 152276), (1136097, 321, '2020-12-08', '2021-03-08', '2021-03-08 10:26:21', 'sjv_E4A', 178645), (1135365, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E3A', 0), (1135358, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'wind_ref', 5.59792), (1135359, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'pv_ref', 12.4626), (1135360, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E1A', 330169), (1135361, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E1B', 0), (1135362, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E1C', 0), (1135363, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E2A', 0), (1135366, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E3B', 262214), (1135367, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E3C', 126.64), (1135368, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E3D', 498382), (1135369, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E4A', 0), (1135370, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'MAE', 3.02624), (1135364, 313, '2020-12-08', '2021-03-08', '2021-03-08 10:15:57', 'sjv_E2B', 0), (1135303, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E3D', 447903), (1135294, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'pv_ref', 6.06868), (1135295, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E1A', 0), (1135296, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E1B', 0), (1135297, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E1C', 0), (1135298, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E2A', 0), (1135299, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E2B', 118599), (1135300, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E3A', 31397.4), (1135301, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E3B', 0), (1135302, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E3C', 0), (1135304, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'sjv_E4A', 26460), (1135305, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'MAE', 5.03747), (1135293, 317, '2020-12-08', '2021-03-08', '2021-03-08 10:14:19', 'wind_ref', 52.6867);


INSERT INTO `genericpowercurves` (`name`, `cut_in`, `cut_off`, `kind`, `manufacturer`, `peak_capacity`, `rated_power`, `slope_center`,
`steepness`) VALUES
('Enercon E101', 3, 25, 'onshore', 'Enercon', 3040270, 3000000, 7.91, 0.76), ('Enercon E126', 3, 25, 'onshore', 'Enercon', 7738960, 7580000, 10.1, 0.561), ('Enercon E82', 3, 25, 'onshore', 'Enercon', 2136280, 2000000, 8.66, 0.681), ('Lagerwey L100', 3, 25, 'onshore', 'Lagerwey', 2260050, 2500000, 8.07, 0.664), ('Neg Micon 48', 3, 25, 'onshore', 'Neg Micon', 760215, 750000, 9.24, 0.615), ('Nordex N100', 3, 25, 'onshore', 'Nordex', 2533490, 2500000, 8.1, 0.8), ('Nordtank NTK600 43', 3, 25, 'onshore', 'Nordtank', 600000, 600000, 9.3, 0.615), ('rescaled_Lagerwey L100', 3, 25, 'onshore', 'Lagerwey', 2.26005, 2.5, 8.07, 0.664), ('Siemens SWT4.0', 3, 25, 'offshore', 'Siemens', 4047380, 4000000, 7.78, 0.825), ('Vestas V112', 3, 25, 'onshore', 'Vestas', 3115990, 3000000, 8.15, 0.807), ('Vestas V90', 3, 25, 'onshore', 'Vestas', 2031320, 2000000, 8.29, 0.667);


INSERT INTO `hyper_params` (`id`, `name`, `model`) VALUES (1, 'subsample', 'xgb'), (2, 'min_child_weight', 'xgb'), (3, 'max_depth', 'xgb'), (4, 'gamma', 'xgb'), (5, 'colsample_bytree', 'xgb'), (6, 'silent', 'xgb'), (7, 'objective', 'xgb'), (8, 'eta', 'xgb'), (9, 'featureset_name', 'xgb'), (10, 'training_period_days', 'xgb'), (11, 'subsample', 'xgb_quantile'), (12, 'min_child_weight', 'xgb_quantile'), (13, 'max_depth', 'xgb_quantile'), (14, 'gamma', 'xgb_quantile'), (15, 'colsample_bytree', 'xgb_quantile'), (16, 'silent', 'xgb_quantile'), (17, 'objective', 'xgb_quantile'), (18, 'eta', 'xgb_quantile'), (19, 'featureset_name', 'xgb_quantile'), (20, 'training_period_days', 'xgb_quantile');



INSERT INTO `hyper_param_values` (`id`, `prediction_id`, `hyper_params_id`, `value`, `created`) VALUES (6447, 313, 10, '120', '2021-04-30 13:04:00'), (4247, 321, 10, '120', '2021-04-30 07:49:00'), (3106, 317, 10, '150', '2021-05-28 10:42:00'), (6446, 313, 9, 'C', '2021-04-30 13:04:00'), (4246, 321, 9, 'B', '2021-04-30 07:49:00'), (3105, 317, 9, 'F', '2021-05-28 10:42:00'), (6445, 313, 8, '0.05089302512028686', '2021-04-30 13:04:00'), (4245, 321, 8, '0.03572350089539172', '2021-04-30 07:49:00'), (3107, 317, 8, '0.055672151948137294', '2021-05-28 10:42:00'), (163, 313, 5, '0.7325001584033698', '2021-04-30 13:04:00'), (191, 317, 5, '0.9461907770583404', '2021-05-28 10:42:00'), (219, 321, 5, '0.9318479017921697', '2021-04-30 07:49:00'), (162, 313, 4, '0.6297169620289531', '2021-04-30 13:04:00'), (190, 317, 4, '0.20375461404310277', '2021-05-28 10:42:00'), (218, 321, 4, '0.2737174200672636', '2021-04-30 07:49:00'), (217, 321, 3, '3', '2021-04-30 07:49:00'), (189, 317, 3, '6', '2021-05-28 10:42:00'), (161, 313, 3, '10', '2021-04-30 13:04:00'), (216, 321, 2, '2', '2021-04-30 07:49:00'), (188, 317, 2, '3', '2021-05-28 10:42:00'), (160, 313, 2, '1', '2021-04-30 13:04:00'), (159, 313, 1, '0.9110858946357699', '2021-04-30 13:04:00'), (215, 321, 1, '0.7517060380641509', '2021-04-30 07:49:00'), (187, 317, 1, '0.9907384039640708', '2021-05-28 10:42:00');


INSERT INTO `NameToLatLon` (`regionInput`, `lon`, `lat`) VALUES
('Leeuwarden', '5.800', '53.201'),
('Nijmegen', '5.837', '51.813'),
('Deelen', '5.894', '52.067');

INSERT INTO `weatherforecastlocations` (`created`, `input_city`, `lat`, `lon`, `country`, `active`) VALUES (CURRENT_TIMESTAMP, 'Deelen', '52.067', '5.894', 'NL', '1'),(CURRENT_TIMESTAMP, 'Nijmegen', '5.837', '51.813', 'NL', '1'),(CURRENT_TIMESTAMP, 'Leeuwarden', '5.800', '53.201','NL', '1');

INSERT INTO `customers_predictions` (`customer_id`, `prediction_id`) VALUES
(316, 321),
(312, 317),
(312, 459),
(307, 313);

INSERT INTO `predictions_quantile_sets` (`id`, `prediction_id`, 
`quantile_set_id`) VALUES
(140, 459, 1),
(29, 321, 1),
(26, 317, 1),
(22, 313, 1);

INSERT INTO `predictions_systems` (`prediction_id`, `system_id`) VALUES
(459, 'Location_A_System_1'),
(459, 'Location_A_System_2'),
(321, 'Location_B_System_1'),
(321, 'Location_B_System_2'),
(317, 'Location_A_System_1'),
(317, 'Location_A_System_2'),
(313, 'Location_C_System_1'),
(313, 'Location_C_System_2');

--
-- Create database for mlflow
--
CREATE DATABASE mlflow;

USE mlflow;

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jan 25, 2023 at 02:45 PM
-- Server version: 5.7.41
-- PHP Version: 8.0.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mlflow`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('97727af70f4d');

-- --------------------------------------------------------

--
-- Table structure for table `experiments`
--

CREATE TABLE `experiments` (
  `experiment_id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `artifact_location` varchar(256) DEFAULT NULL,
  `lifecycle_stage` varchar(32) DEFAULT NULL,
  `creation_time` bigint(20) DEFAULT NULL,
  `last_update_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `experiments`
--

INSERT INTO `experiments` (`experiment_id`, `name`, `artifact_location`, `lifecycle_stage`, `creation_time`, `last_update_time`) VALUES
(0, 'Default', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/0', 'active', 1674655085380, 1674655085380),
(1, '459', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/1', 'active', 1674655103145, 1674655103145),
(2, '317', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/2', 'active', 1674655178885, 1674655178885),
(3, '313', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/3', 'active', 1674655229484, 1674655229484);

-- --------------------------------------------------------

--
-- Table structure for table `experiment_tags`
--

CREATE TABLE `experiment_tags` (
  `key` varchar(250) NOT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `experiment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `latest_metrics`
--

CREATE TABLE `latest_metrics` (
  `key` varchar(250) NOT NULL,
  `value` double NOT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `step` bigint(20) NOT NULL,
  `is_nan` tinyint(1) NOT NULL,
  `run_uuid` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latest_metrics`
--

INSERT INTO `latest_metrics` (`key`, `value`, `timestamp`, `step`, `is_nan`, `run_uuid`) VALUES
('bias', 0.18564713413110565, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('bias', -0.10585446188299462, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('bias', -0.07142679511223463, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('explained_variance', 0.7170494011259607, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('explained_variance', 0.8453953713633763, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('explained_variance', 0.8065911175832854, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('MAE', 0.5075962313214468, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('MAE', 1.3125166487362647, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('MAE', 0.4687608736366936, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('MSE', 0.6257875222331651, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('MSE', 4.077389115274338, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('MSE', 0.5237570521095049, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('NSME', 0.7005578087616566, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('NSME', 0.8449693279968022, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('NSME', 0.8046886382292786, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('r2', 0.7005578087616573, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('r2', 0.844969327996802, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('r2', 0.8046886382292785, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('RMSE', 0.7910673310364708, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('RMSE', 2.019254593971334, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('RMSE', 0.7237106135117163, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('R_MAE', 0.058543777213494526, 1674655104381, 0, 0, '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('R_MAE', 0.05555316624190028, 1674655230314, 0, 0, '67fa42898635471e8c789c78180ab7a8'),
('R_MAE', 0.053291654627810305, 1674655180376, 0, 0, 'bf4efe2b515141a6bf7b3be59aaa8e4c');

-- --------------------------------------------------------

--
-- Table structure for table `metrics`
--

CREATE TABLE `metrics` (
  `key` varchar(250) NOT NULL,
  `value` double NOT NULL,
  `timestamp` bigint(20) NOT NULL,
  `run_uuid` varchar(32) NOT NULL,
  `step` bigint(20) NOT NULL DEFAULT '0',
  `is_nan` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `metrics`
--

INSERT INTO `metrics` (`key`, `value`, `timestamp`, `run_uuid`, `step`, `is_nan`) VALUES
('bias', 0.18564713413110565, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('explained_variance', 0.7170494011259607, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('MAE', 0.5075962313214468, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('MSE', 0.6257875222331651, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('NSME', 0.7005578087616566, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('r2', 0.7005578087616573, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('RMSE', 0.7910673310364708, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('R_MAE', 0.058543777213494526, 1674655104381, '0d7f0c76684a4cd781a68fc55ddd5f7e', 0, 0),
('bias', -0.10585446188299462, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('explained_variance', 0.8453953713633763, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('MAE', 1.3125166487362647, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('MSE', 4.077389115274338, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('NSME', 0.8449693279968022, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('r2', 0.844969327996802, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('RMSE', 2.019254593971334, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('R_MAE', 0.05555316624190028, 1674655230314, '67fa42898635471e8c789c78180ab7a8', 0, 0),
('bias', -0.07142679511223463, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('explained_variance', 0.8065911175832854, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('MAE', 0.4687608736366936, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('MSE', 0.5237570521095049, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('NSME', 0.8046886382292786, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('r2', 0.8046886382292785, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('RMSE', 0.7237106135117163, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0),
('R_MAE', 0.053291654627810305, 1674655180376, 'bf4efe2b515141a6bf7b3be59aaa8e4c', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `model_versions`
--

CREATE TABLE `model_versions` (
  `name` varchar(256) NOT NULL,
  `version` int(11) NOT NULL,
  `creation_time` bigint(20) DEFAULT NULL,
  `last_updated_time` bigint(20) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL,
  `user_id` varchar(256) DEFAULT NULL,
  `current_stage` varchar(20) DEFAULT NULL,
  `source` varchar(500) DEFAULT NULL,
  `run_id` varchar(32) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `status_message` varchar(500) DEFAULT NULL,
  `run_link` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `model_version_tags`
--

CREATE TABLE `model_version_tags` (
  `key` varchar(250) NOT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `name` varchar(256) NOT NULL,
  `version` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `params`
--

CREATE TABLE `params` (
  `key` varchar(250) NOT NULL,
  `value` varchar(500) NOT NULL,
  `run_uuid` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `params`
--

INSERT INTO `params` (`key`, `value`, `run_uuid`) VALUES
('alpha', '0.0', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('base_score', 'None', '67fa42898635471e8c789c78180ab7a8'),
('base_score', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('booster', 'None', '67fa42898635471e8c789c78180ab7a8'),
('booster', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('callbacks', 'None', '67fa42898635471e8c789c78180ab7a8'),
('callbacks', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('colsample_bylevel', 'None', '67fa42898635471e8c789c78180ab7a8'),
('colsample_bylevel', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('colsample_bynode', 'None', '67fa42898635471e8c789c78180ab7a8'),
('colsample_bynode', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('colsample_bytree', '1.0', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('colsample_bytree', 'None', '67fa42898635471e8c789c78180ab7a8'),
('colsample_bytree', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('early_stopping_rounds', '10', '67fa42898635471e8c789c78180ab7a8'),
('early_stopping_rounds', '10', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('enable_categorical', 'False', '67fa42898635471e8c789c78180ab7a8'),
('enable_categorical', 'False', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('eval_metric', 'None', '67fa42898635471e8c789c78180ab7a8'),
('eval_metric', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('feature_types', 'None', '67fa42898635471e8c789c78180ab7a8'),
('feature_types', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('gamma', '0.0', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('gamma', 'None', '67fa42898635471e8c789c78180ab7a8'),
('gamma', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('gpu_id', 'None', '67fa42898635471e8c789c78180ab7a8'),
('gpu_id', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('grow_policy', 'None', '67fa42898635471e8c789c78180ab7a8'),
('grow_policy', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('importance_type', 'weight', '67fa42898635471e8c789c78180ab7a8'),
('importance_type', 'weight', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('interaction_constraints', 'None', '67fa42898635471e8c789c78180ab7a8'),
('interaction_constraints', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('learning_rate', '0.3', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('learning_rate', 'None', '67fa42898635471e8c789c78180ab7a8'),
('learning_rate', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_bin', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_bin', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_cat_threshold', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_cat_threshold', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_cat_to_onehot', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_cat_to_onehot', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_delta_step', '0', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('max_delta_step', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_delta_step', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_depth', '6', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('max_depth', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_depth', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('max_leaves', 'None', '67fa42898635471e8c789c78180ab7a8'),
('max_leaves', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('min_child_weight', '1', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('min_child_weight', 'None', '67fa42898635471e8c789c78180ab7a8'),
('min_child_weight', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('missing', 'nan', '67fa42898635471e8c789c78180ab7a8'),
('missing', 'nan', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('monotone_constraints', 'None', '67fa42898635471e8c789c78180ab7a8'),
('monotone_constraints', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('num_parallel_tree', 'None', '67fa42898635471e8c789c78180ab7a8'),
('num_parallel_tree', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('n_estimators', '100', '67fa42898635471e8c789c78180ab7a8'),
('n_estimators', '100', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('n_jobs', 'None', '67fa42898635471e8c789c78180ab7a8'),
('n_jobs', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('objective', 'reg:squarederror', '67fa42898635471e8c789c78180ab7a8'),
('objective', 'reg:squarederror', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('predictor', 'None', '67fa42898635471e8c789c78180ab7a8'),
('predictor', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('quantiles', '[0.05, 0.1, 0.3, 0.5, 0.7, 0.9, 0.95]', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('random_state', 'None', '67fa42898635471e8c789c78180ab7a8'),
('random_state', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('reg_alpha', 'None', '67fa42898635471e8c789c78180ab7a8'),
('reg_alpha', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('reg_lambda', 'None', '67fa42898635471e8c789c78180ab7a8'),
('reg_lambda', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('sampling_method', 'None', '67fa42898635471e8c789c78180ab7a8'),
('sampling_method', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('scale_pos_weight', 'None', '67fa42898635471e8c789c78180ab7a8'),
('scale_pos_weight', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('subsample', '1.0', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('subsample', 'None', '67fa42898635471e8c789c78180ab7a8'),
('subsample', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('tree_method', 'None', '67fa42898635471e8c789c78180ab7a8'),
('tree_method', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('validate_parameters', 'None', '67fa42898635471e8c789c78180ab7a8'),
('validate_parameters', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('verbosity', 'None', '67fa42898635471e8c789c78180ab7a8'),
('verbosity', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c');

-- --------------------------------------------------------

--
-- Table structure for table `registered_models`
--

CREATE TABLE `registered_models` (
  `name` varchar(256) NOT NULL,
  `creation_time` bigint(20) DEFAULT NULL,
  `last_updated_time` bigint(20) DEFAULT NULL,
  `description` varchar(5000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registered_model_tags`
--

CREATE TABLE `registered_model_tags` (
  `key` varchar(250) NOT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `name` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `runs`
--

CREATE TABLE `runs` (
  `run_uuid` varchar(32) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `source_type` varchar(20) DEFAULT NULL,
  `source_name` varchar(500) DEFAULT NULL,
  `entry_point_name` varchar(50) DEFAULT NULL,
  `user_id` varchar(256) DEFAULT NULL,
  `status` varchar(9) DEFAULT NULL,
  `start_time` bigint(20) DEFAULT NULL,
  `end_time` bigint(20) DEFAULT NULL,
  `source_version` varchar(50) DEFAULT NULL,
  `lifecycle_stage` varchar(20) DEFAULT NULL,
  `artifact_uri` varchar(200) DEFAULT NULL,
  `experiment_id` int(11) DEFAULT NULL,
  `deleted_time` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `runs`
--

INSERT INTO `runs` (`run_uuid`, `name`, `source_type`, `source_name`, `entry_point_name`, `user_id`, `status`, `start_time`, `end_time`, `source_version`, `lifecycle_stage`, `artifact_uri`, `experiment_id`, `deleted_time`) VALUES
('0d7f0c76684a4cd781a68fc55ddd5f7e', '459', 'UNKNOWN', '', '', 'janmaarten', 'RUNNING', 1674655103873, NULL, '', 'active', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/1/0d7f0c76684a4cd781a68fc55ddd5f7e/artifacts', 1, NULL),
('67fa42898635471e8c789c78180ab7a8', '313', 'UNKNOWN', '', '', 'janmaarten', 'FINISHED', 1674655229585, 1674655238498, '', 'active', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/3/67fa42898635471e8c789c78180ab7a8/artifacts', 3, NULL),
('bf4efe2b515141a6bf7b3be59aaa8e4c', '317', 'UNKNOWN', '', '', 'janmaarten', 'FINISHED', 1674655179705, 1674655191761, '', 'active', './nginx/volumes/data/icarus/visuals/trained_models/mlruns/2/bf4efe2b515141a6bf7b3be59aaa8e4c/artifacts', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `key` varchar(250) NOT NULL,
  `value` varchar(5000) DEFAULT NULL,
  `run_uuid` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`key`, `value`, `run_uuid`) VALUES
('feature_modules', '[]', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('feature_modules', '[]', '67fa42898635471e8c789c78180ab7a8'),
('feature_modules', '[]', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('feature_names', '[\'APX\', \'IsSunday\', \'IsWeekDay\', \'IsWeekendDay\', \'Month\', \'Quarter\', \'T-1020min\', \'T-1080min\', \'T-10d\', \'T-1140min\', \'T-11d\', \'T-1200min\', \'T-120min\', \'T-1260min\', \'T-12d\', \'T-1320min\', \'T-1380min\', \'T-13d\', \'T-14d\', \'T-15min\', \'T-180min\', \'T-1d\', \'T-240min\', \'T-2d\', \'T-300min\', \'T-30min\', \'T-360min\', \'T-3d\', \'T-420min\', \'T-45min\', \'T-480min\', \'T-4d\', \'T-540min\', \'T-5d\', \'T-600min\', \'T-60min\', \'T-660min\', \'T-6d\', \'T-720min\', \'T-780min\', \'T-7d\', \'T-840min\', \'T-8d\', \'T-900min\', \'T-960min\', \'T-9d\', \'dni\', \'gti\', \'is_bouwvakmidden\', \'is_bouwvaknoord\', \'is_bouwvakzuid\', \'is_bridgeday\', \'is_bridgedayhemelvaart\', \'is_bridgedaykoningsdag\', \'is_eerste_kerstdag\', \'is_eerste_paasdag\', \'is_eerste_pinksterdag\', \'is_goede_vrijdag\', \'is_hemelvaart\', \'is_herfstvakantiemidden\', \'is_herfstvakantienoord\', \'is_herfstvakantiezuid\', \'is_kerstvakantie\', \'is_koningsdag\', \'is_meivakantie\', \'is_national_holiday\', \'is_nieuwjaarsdag\', \'is_schoolholiday\', \'is_tweede_kerstdag\', \'is_tweede_paasdag\', \'is_tweede_pinksterdag\', \'is_voorjaarsvakantiemidden\', \'is_voorjaarsvakantienoord\', \'is_voorjaarsvakantiezuid\', \'is_zomervakantiemidden\', \'is_zomervakantienoord\', \'is_zomervakantiezuid\', \'pressure\', \'radiation\', \'temp\', \'windPowerFit_extrapolated\', \'windspeed\', \'windspeed_100mExtrapolated\', \'horizon\']', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('feature_names', '[\'APX\', \'IsSunday\', \'IsWeekDay\', \'IsWeekendDay\', \'Month\', \'Quarter\', \'T-1020min\', \'T-1080min\', \'T-10d\', \'T-1140min\', \'T-11d\', \'T-1200min\', \'T-120min\', \'T-1260min\', \'T-12d\', \'T-1320min\', \'T-1380min\', \'T-13d\', \'T-14d\', \'T-15min\', \'T-180min\', \'T-1d\', \'T-240min\', \'T-2d\', \'T-300min\', \'T-30min\', \'T-360min\', \'T-3d\', \'T-420min\', \'T-45min\', \'T-480min\', \'T-4d\', \'T-540min\', \'T-5d\', \'T-600min\', \'T-60min\', \'T-660min\', \'T-6d\', \'T-720min\', \'T-780min\', \'T-7d\', \'T-840min\', \'T-8d\', \'T-900min\', \'T-960min\', \'T-9d\', \'dni\', \'gti\', \'is_bouwvakmidden\', \'is_bouwvaknoord\', \'is_bouwvakzuid\', \'is_bridgeday\', \'is_bridgedayhemelvaart\', \'is_bridgedaykoningsdag\', \'is_eerste_kerstdag\', \'is_eerste_paasdag\', \'is_eerste_pinksterdag\', \'is_goede_vrijdag\', \'is_hemelvaart\', \'is_herfstvakantiemidden\', \'is_herfstvakantienoord\', \'is_herfstvakantiezuid\', \'is_kerstvakantie\', \'is_koningsdag\', \'is_meivakantie\', \'is_national_holiday\', \'is_nieuwjaarsdag\', \'is_schoolholiday\', \'is_tweede_kerstdag\', \'is_tweede_paasdag\', \'is_tweede_pinksterdag\', \'is_voorjaarsvakantiemidden\', \'is_voorjaarsvakantienoord\', \'is_voorjaarsvakantiezuid\', \'is_zomervakantiemidden\', \'is_zomervakantienoord\', \'is_zomervakantiezuid\', \'pressure\', \'radiation\', \'temp\', \'windPowerFit_extrapolated\', \'windspeed\', \'windspeed_100mExtrapolated\', \'horizon\']', '67fa42898635471e8c789c78180ab7a8'),
('feature_names', '[\'APX\', \'IsSunday\', \'IsWeekDay\', \'IsWeekendDay\', \'Month\', \'Quarter\', \'T-1020min\', \'T-1080min\', \'T-10d\', \'T-1140min\', \'T-11d\', \'T-1200min\', \'T-120min\', \'T-1260min\', \'T-12d\', \'T-1320min\', \'T-1380min\', \'T-13d\', \'T-14d\', \'T-15min\', \'T-180min\', \'T-1d\', \'T-240min\', \'T-2d\', \'T-300min\', \'T-30min\', \'T-360min\', \'T-3d\', \'T-420min\', \'T-45min\', \'T-480min\', \'T-4d\', \'T-540min\', \'T-5d\', \'T-600min\', \'T-60min\', \'T-660min\', \'T-6d\', \'T-720min\', \'T-780min\', \'T-7d\', \'T-840min\', \'T-8d\', \'T-900min\', \'T-960min\', \'T-9d\', \'dni\', \'gti\', \'is_bouwvakmidden\', \'is_bouwvaknoord\', \'is_bouwvakzuid\', \'is_bridgeday\', \'is_bridgedayhemelvaart\', \'is_bridgedaykoningsdag\', \'is_eerste_kerstdag\', \'is_eerste_paasdag\', \'is_eerste_pinksterdag\', \'is_goede_vrijdag\', \'is_hemelvaart\', \'is_herfstvakantiemidden\', \'is_herfstvakantienoord\', \'is_herfstvakantiezuid\', \'is_kerstvakantie\', \'is_koningsdag\', \'is_meivakantie\', \'is_national_holiday\', \'is_nieuwjaarsdag\', \'is_schoolholiday\', \'is_tweede_kerstdag\', \'is_tweede_paasdag\', \'is_tweede_pinksterdag\', \'is_voorjaarsvakantiemidden\', \'is_voorjaarsvakantienoord\', \'is_voorjaarsvakantiezuid\', \'is_zomervakantiemidden\', \'is_zomervakantienoord\', \'is_zomervakantiezuid\', \'pressure\', \'radiation\', \'temp\', \'windPowerFit_extrapolated\', \'windspeed\', \'windspeed_100mExtrapolated\', \'horizon\']', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.log-model.history', '[{\"run_id\": \"67fa42898635471e8c789c78180ab7a8\", \"artifact_path\": \"model\", \"utc_time_created\": \"2023-01-25 14:00:30.485094\", \"flavors\": {\"python_function\": {\"model_path\": \"model.pkl\", \"predict_fn\": \"predict\", \"loader_module\": \"mlflow.sklearn\", \"python_version\": \"3.9.13\", \"env\": {\"conda\": \"conda.yaml\", \"virtualenv\": \"python_env.yaml\"}}, \"sklearn\": {\"pickled_model\": \"model.pkl\", \"sklearn_version\": \"1.2.0\", \"serialization_format\": \"cloudpickle\", \"code\": null}}, \"model_uuid\": \"2d28d26deab14ed78842aa3a207c24e6\", \"mlflow_version\": \"2.1.1\", \"signature\": {\"inputs\": \"[{\\\"name\\\": \\\"APX\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"IsSunday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"IsWeekDay\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"IsWeekendDay\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"Month\\\", \\\"type\\\": \\\"long\\\"}, {\\\"name\\\": \\\"Quarter\\\", \\\"type\\\": \\\"long\\\"}, {\\\"name\\\": \\\"T-1020min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1080min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-10d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1140min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-11d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1200min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-120min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1260min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-12d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1320min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1380min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-13d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-14d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-15min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-180min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-240min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-2d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-300min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-30min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-360min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-3d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-420min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-45min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-480min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-4d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-540min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-5d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-600min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-60min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-660min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-6d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-720min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-780min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-7d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-840min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-8d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-900min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-960min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-9d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"dni\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"gti\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"is_bouwvakmidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bouwvaknoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bouwvakzuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgeday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgedayhemelvaart\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgedaykoningsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_kerstdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_paasdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_pinksterdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_goede_vrijdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_hemelvaart\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_kerstvakantie\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_koningsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_meivakantie\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_national_holiday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_nieuwjaarsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_schoolholiday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_kerstdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_paasdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_pinksterdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"pressure\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"radiation\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"temp\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windPowerFit_extrapolated\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windspeed\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windspeed_100mExtrapolated\\\", \\\"type\\\": \\\"double\\\"}]\", \"outputs\": \"[{\\\"name\\\": \\\"load\\\", \\\"type\\\": \\\"double\\\"}]\"}}]', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.log-model.history', '[{\"run_id\": \"bf4efe2b515141a6bf7b3be59aaa8e4c\", \"artifact_path\": \"model\", \"utc_time_created\": \"2023-01-25 13:59:40.514841\", \"flavors\": {\"python_function\": {\"model_path\": \"model.pkl\", \"predict_fn\": \"predict\", \"loader_module\": \"mlflow.sklearn\", \"python_version\": \"3.9.13\", \"env\": {\"conda\": \"conda.yaml\", \"virtualenv\": \"python_env.yaml\"}}, \"sklearn\": {\"pickled_model\": \"model.pkl\", \"sklearn_version\": \"1.2.0\", \"serialization_format\": \"cloudpickle\", \"code\": null}}, \"model_uuid\": \"639951ba1d334f05a82ceadcf6448278\", \"mlflow_version\": \"2.1.1\", \"signature\": {\"inputs\": \"[{\\\"name\\\": \\\"APX\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"IsSunday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"IsWeekDay\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"IsWeekendDay\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"Month\\\", \\\"type\\\": \\\"long\\\"}, {\\\"name\\\": \\\"Quarter\\\", \\\"type\\\": \\\"long\\\"}, {\\\"name\\\": \\\"T-1020min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1080min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-10d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1140min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-11d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1200min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-120min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1260min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-12d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1320min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1380min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-13d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-14d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-15min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-180min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-1d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-240min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-2d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-300min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-30min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-360min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-3d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-420min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-45min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-480min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-4d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-540min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-5d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-600min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-60min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-660min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-6d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-720min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-780min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-7d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-840min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-8d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-900min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-960min\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"T-9d\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"dni\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"gti\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"is_bouwvakmidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bouwvaknoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bouwvakzuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgeday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgedayhemelvaart\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_bridgedaykoningsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_kerstdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_paasdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_eerste_pinksterdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_goede_vrijdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_hemelvaart\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_herfstvakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_kerstvakantie\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_koningsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_meivakantie\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_national_holiday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_nieuwjaarsdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_schoolholiday\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_kerstdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_paasdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_tweede_pinksterdag\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_voorjaarsvakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantiemidden\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantienoord\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"is_zomervakantiezuid\\\", \\\"type\\\": \\\"boolean\\\"}, {\\\"name\\\": \\\"pressure\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"radiation\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"temp\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windPowerFit_extrapolated\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windspeed\\\", \\\"type\\\": \\\"double\\\"}, {\\\"name\\\": \\\"windspeed_100mExtrapolated\\\", \\\"type\\\": \\\"double\\\"}]\", \"outputs\": \"[{\\\"name\\\": \\\"load\\\", \\\"type\\\": \\\"double\\\"}]\"}}]', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.runName', '459', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('mlflow.runName', '313', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.runName', '317', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.source.git.commit', '53eeada1ba0616f9bdfbbed3795ccdd44261245f', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('mlflow.source.git.commit', '53eeada1ba0616f9bdfbbed3795ccdd44261245f', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.source.git.commit', '53eeada1ba0616f9bdfbbed3795ccdd44261245f', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.source.name', '/mnt/c/repos/openstef-reference/openstef_example_tasks/train_model.py', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('mlflow.source.name', '/mnt/c/repos/openstef-reference/openstef_example_tasks/train_model.py', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.source.name', '/mnt/c/repos/openstef-reference/openstef_example_tasks/train_model.py', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.source.type', 'LOCAL', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('mlflow.source.type', 'LOCAL', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.source.type', 'LOCAL', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('mlflow.user', 'janmaarten', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('mlflow.user', 'janmaarten', '67fa42898635471e8c789c78180ab7a8'),
('mlflow.user', 'janmaarten', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('model_type', 'xgb_quantile', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('model_type', 'xgb', '67fa42898635471e8c789c78180ab7a8'),
('model_type', 'xgb', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('phase', 'training', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('phase', 'training', '67fa42898635471e8c789c78180ab7a8'),
('phase', 'training', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('prediction_job', '459', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('prediction_job', '313', '67fa42898635471e8c789c78180ab7a8'),
('prediction_job', '317', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('Previous_version_id', 'None', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('Previous_version_id', 'None', '67fa42898635471e8c789c78180ab7a8'),
('Previous_version_id', 'None', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('run_id', '0d7f0c76684a4cd781a68fc55ddd5f7e', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('run_id', '67fa42898635471e8c789c78180ab7a8', '67fa42898635471e8c789c78180ab7a8'),
('run_id', 'bf4efe2b515141a6bf7b3be59aaa8e4c', 'bf4efe2b515141a6bf7b3be59aaa8e4c'),
('target', 'load', '0d7f0c76684a4cd781a68fc55ddd5f7e'),
('target', 'load', '67fa42898635471e8c789c78180ab7a8'),
('target', 'load', 'bf4efe2b515141a6bf7b3be59aaa8e4c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alembic_version`
--
ALTER TABLE `alembic_version`
  ADD PRIMARY KEY (`version_num`);

--
-- Indexes for table `experiments`
--
ALTER TABLE `experiments`
  ADD PRIMARY KEY (`experiment_id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `experiment_tags`
--
ALTER TABLE `experiment_tags`
  ADD PRIMARY KEY (`key`,`experiment_id`),
  ADD KEY `experiment_id` (`experiment_id`);

--
-- Indexes for table `latest_metrics`
--
ALTER TABLE `latest_metrics`
  ADD PRIMARY KEY (`key`,`run_uuid`),
  ADD KEY `index_latest_metrics_run_uuid` (`run_uuid`);

--
-- Indexes for table `metrics`
--
ALTER TABLE `metrics`
  ADD PRIMARY KEY (`key`,`timestamp`,`step`,`run_uuid`,`value`,`is_nan`),
  ADD KEY `index_metrics_run_uuid` (`run_uuid`);

--
-- Indexes for table `model_versions`
--
ALTER TABLE `model_versions`
  ADD PRIMARY KEY (`name`,`version`);

--
-- Indexes for table `model_version_tags`
--
ALTER TABLE `model_version_tags`
  ADD PRIMARY KEY (`key`,`name`,`version`),
  ADD KEY `name` (`name`,`version`);

--
-- Indexes for table `params`
--
ALTER TABLE `params`
  ADD PRIMARY KEY (`key`,`run_uuid`),
  ADD KEY `index_params_run_uuid` (`run_uuid`);

--
-- Indexes for table `registered_models`
--
ALTER TABLE `registered_models`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `registered_model_tags`
--
ALTER TABLE `registered_model_tags`
  ADD PRIMARY KEY (`key`,`name`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `runs`
--
ALTER TABLE `runs`
  ADD PRIMARY KEY (`run_uuid`),
  ADD KEY `experiment_id` (`experiment_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`key`,`run_uuid`),
  ADD KEY `index_tags_run_uuid` (`run_uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `experiments`
--
ALTER TABLE `experiments`
  MODIFY `experiment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `experiment_tags`
--
ALTER TABLE `experiment_tags`
  ADD CONSTRAINT `experiment_tags_ibfk_1` FOREIGN KEY (`experiment_id`) REFERENCES `experiments` (`experiment_id`);

--
-- Constraints for table `latest_metrics`
--
ALTER TABLE `latest_metrics`
  ADD CONSTRAINT `latest_metrics_ibfk_1` FOREIGN KEY (`run_uuid`) REFERENCES `runs` (`run_uuid`);

--
-- Constraints for table `metrics`
--
ALTER TABLE `metrics`
  ADD CONSTRAINT `metrics_ibfk_1` FOREIGN KEY (`run_uuid`) REFERENCES `runs` (`run_uuid`);

--
-- Constraints for table `model_versions`
--
ALTER TABLE `model_versions`
  ADD CONSTRAINT `model_versions_ibfk_1` FOREIGN KEY (`name`) REFERENCES `registered_models` (`name`) ON UPDATE CASCADE;

--
-- Constraints for table `model_version_tags`
--
ALTER TABLE `model_version_tags`
  ADD CONSTRAINT `model_version_tags_ibfk_1` FOREIGN KEY (`name`,`version`) REFERENCES `model_versions` (`name`, `version`) ON UPDATE CASCADE;

--
-- Constraints for table `params`
--
ALTER TABLE `params`
  ADD CONSTRAINT `params_ibfk_1` FOREIGN KEY (`run_uuid`) REFERENCES `runs` (`run_uuid`);

--
-- Constraints for table `registered_model_tags`
--
ALTER TABLE `registered_model_tags`
  ADD CONSTRAINT `registered_model_tags_ibfk_1` FOREIGN KEY (`name`) REFERENCES `registered_models` (`name`) ON UPDATE CASCADE;

--
-- Constraints for table `runs`
--
ALTER TABLE `runs`
  ADD CONSTRAINT `runs_ibfk_1` FOREIGN KEY (`experiment_id`) REFERENCES `experiments` (`experiment_id`);

--
-- Constraints for table `tags`
--
ALTER TABLE `tags`
  ADD CONSTRAINT `tags_ibfk_1` FOREIGN KEY (`run_uuid`) REFERENCES `runs` (`run_uuid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
