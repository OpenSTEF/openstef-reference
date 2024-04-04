-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: icarus-prd.cfxynab8sqjy.eu-central-1.rds.amazonaws.com:3306
-- Gegenereerd op: 02 jun 2021 om 11:42
-- Serverversie: 5.7.26-log
-- PHP-versie: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tst_icarus`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers`
--

CREATE TABLE `customers` (
  `id` int(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vip` bit(1) DEFAULT b'0',
  `active` bit(1) NOT NULL DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customersApiKeys`
--

CREATE TABLE `customersApiKeys` (
  `id` bigint(20) NOT NULL,
  `cid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `apiKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `customers_predictions`
--

CREATE TABLE `customers_predictions` (
  `customer_id` int(11) NOT NULL,
  `prediction_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `energy_split_coefs`
--

CREATE TABLE `energy_split_coefs` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `coef_name` varchar(15) NOT NULL,
  `coef_value` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `genericpowercurves`
--

CREATE TABLE `genericpowercurves` (
  `name` varchar(255) NOT NULL,
  `cut_in` float DEFAULT NULL,
  `cut_off` float DEFAULT NULL,
  `kind` varchar(255) DEFAULT NULL,
  `manufacturer` varchar(255) DEFAULT NULL,
  `peak_capacity` float DEFAULT NULL,
  `rated_power` float DEFAULT NULL,
  `slope_center` float DEFAULT NULL,
  `steepness` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hyper_params`
--

CREATE TABLE `hyper_params` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `model` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hyper_param_values`
--

CREATE TABLE `hyper_param_values` (
  `id` int(11) NOT NULL,
  `prediction_id` int(11) NOT NULL,
  `hyper_params_id` int(11) NOT NULL,
  `value` varchar(30) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `NameToLatLon`
--

CREATE TABLE `NameToLatLon` (
  `regionInput` varchar(100) DEFAULT NULL,
  `lon` decimal(6,3) DEFAULT NULL,
  `lat` decimal(6,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `predictions`
--

CREATE TABLE `predictions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `forecast_type` varchar(10) NOT NULL DEFAULT 'default',
  `model` varchar(99) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` int(11) NOT NULL DEFAULT '1' COMMENT '0 = off\n1 = on\n2 = automatic (between from en to)',
  `horizon_minutes` int(7) NOT NULL DEFAULT '2880',
  `train_horizons_minutes` json NOT NULL,
  `resolution_minutes` int(7) NOT NULL DEFAULT '15',
  `train_components` bit(1) NOT NULL DEFAULT b'0',
  `ean` varchar(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `predictions_quantile_sets`
--

CREATE TABLE `predictions_quantile_sets` (
  `id` int(11) NOT NULL,
  `prediction_id` int(11) NOT NULL,
  `quantile_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `predictions_systems`
--

CREATE TABLE `predictions_systems` (
  `prediction_id` int(11) NOT NULL,
  `system_id` varchar(100) NOT NULL,
  `factor` 	double NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quantile_sets`
--

CREATE TABLE `quantile_sets` (
  `id` int(11) NOT NULL,
  `quantiles` json NOT NULL,
  `description` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `solarspecs`
--

CREATE TABLE `solarspecs` (
  `pid` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `radius` int(11) DEFAULT NULL,
  `peak_power` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `systems`
--

CREATE TABLE `systems` (
  `sid` varchar(100) NOT NULL DEFAULT '',
  `origin` varchar(32) DEFAULT NULL COMMENT ' 	The origin of the data of this measurement system. 	',
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `timezone` varchar(20) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `freq` int(11) DEFAULT NULL,
  `qual` float DEFAULT NULL,
  `lag` float DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `autoupdate` tinyint(1) DEFAULT '1',
  `polarity` int(11) DEFAULT '0',
  `measurements_customer_api_key_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `systemsApiKeys`
--

CREATE TABLE `systemsApiKeys` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `apiKey` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `todolist`
--

CREATE TABLE `todolist` (
  `id` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `function` varchar(200) NOT NULL,
  `args` varchar(200) NOT NULL,
  `inprogress` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
-- --------------------------------------------------------

--
-- Table structure for table `weatherforecastlocations`
--

CREATE TABLE `weatherforecastlocations` (
  `created` datetime DEFAULT CURRENT_TIMESTAMP,
  `input_city` varchar(25) NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `country` varchar(45) NOT NULL,
  `active` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `windspecs`
--

CREATE TABLE `windspecs` (
  `pid` int(11) NOT NULL,
  `lat` double DEFAULT NULL,
  `lon` double DEFAULT NULL,
  `turbine_type` varchar(45) DEFAULT NULL,
  `n_turbines` int(11) DEFAULT '1',
  `hub_height` int(11) DEFAULT '10'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexen voor tabel `customersApiKeys`
--
ALTER TABLE `customersApiKeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apiKey_UNIQUE` (`apiKey`),
  ADD KEY `customer` (`cid`);

--
-- Indexen voor tabel `customers_predictions`
--
ALTER TABLE `customers_predictions`
  ADD PRIMARY KEY (`customer_id`,`prediction_id`),
  ADD KEY `FKeq69ta8ufmhhtp36clxjx522r` (`prediction_id`);

--
-- Indexen voor tabel `energy_split_coefs`
--
ALTER TABLE `energy_split_coefs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `energy_split_coefs_ibfk_1` (`pid`);

--
-- Indexen voor tabel `genericpowercurves`
--
ALTER TABLE `genericpowercurves`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name_UNIQUE` (`name`);

--
-- Indexen voor tabel `hyper_params`
--
ALTER TABLE `hyper_params`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `hyper_param_values`
--
ALTER TABLE `hyper_param_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hyper_param_values_constr_1` (`prediction_id`,`hyper_params_id`),
  ADD KEY `hyper_param_values_ibfk_2` (`hyper_params_id`);

--
-- Indexen voor tabel `predictions`
--
ALTER TABLE `predictions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forecast_type` (`forecast_type`(1));

--
-- Indexen voor tabel `predictions_quantile_sets`
--
ALTER TABLE `predictions_quantile_sets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prediction_id_fk` (`prediction_id`),
  ADD KEY `quantile_set_id_fk` (`quantile_set_id`);

--
-- Indexen voor tabel `predictions_systems`
--
ALTER TABLE `predictions_systems`
  ADD PRIMARY KEY (`prediction_id`,`system_id`),
  ADD KEY `FK_system_id` (`system_id`);

--
-- Indexen voor tabel `quantile_sets`
--
ALTER TABLE `quantile_sets`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `solarspecs`
--
ALTER TABLE `solarspecs`
  ADD PRIMARY KEY (`pid`);

--
-- Indexen voor tabel `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`sid`),
  ADD KEY `coordinates` (`lat`,`lon`),
  ADD KEY `params` (`freq`,`qual`,`lag`),
  ADD KEY `fk_customer_api_key_id` (`measurements_customer_api_key_id`);

--
-- Indexen voor tabel `systemsApiKeys`
--
ALTER TABLE `systemsApiKeys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `apiKey` (`apiKey`);

--
-- Indexen voor tabel `todolist`
--
ALTER TABLE `todolist`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `ix_uq` (`function`,`args`);

--
-- Indexen voor tabel `windspecs`
--
ALTER TABLE `windspecs`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `turbine_type` (`turbine_type`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `customersApiKeys`
--
ALTER TABLE `customersApiKeys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `energy_split_coefs`
--
ALTER TABLE `energy_split_coefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `hyper_params`
--
ALTER TABLE `hyper_params`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `hyper_param_values`
--
ALTER TABLE `hyper_param_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `predictions`
--
ALTER TABLE `predictions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `predictions_quantile_sets`
--
ALTER TABLE `predictions_quantile_sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `quantile_sets`
--
ALTER TABLE `quantile_sets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `systemsApiKeys`
--
ALTER TABLE `systemsApiKeys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT voor een tabel `todolist`
--
ALTER TABLE `todolist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `customersApiKeys`
--
ALTER TABLE `customersApiKeys`
  ADD CONSTRAINT `customersApiKeys_ibfk_1` FOREIGN KEY (`cid`) REFERENCES `customers` (`id`);

--
-- Beperkingen voor tabel `customers_predictions`
--
ALTER TABLE `customers_predictions`
  ADD CONSTRAINT `FK9kk1k2kurhgyr18h5ctlyf9k` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `FKeq69ta8ufmhhtp36clxjx522r` FOREIGN KEY (`prediction_id`) REFERENCES `predictions` (`id`);

--
-- Beperkingen voor tabel `energy_split_coefs`
--
ALTER TABLE `energy_split_coefs`
  ADD CONSTRAINT `energy_split_coefs_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `predictions` (`id`) ON DELETE CASCADE;

--
-- Beperkingen voor tabel `hyper_param_values`
--
ALTER TABLE `hyper_param_values`
  ADD CONSTRAINT `hyper_param_values_ibfk_1` FOREIGN KEY (`prediction_id`) REFERENCES `predictions` (`id`),
  ADD CONSTRAINT `hyper_param_values_ibfk_2` FOREIGN KEY (`hyper_params_id`) REFERENCES `hyper_params` (`id`);

--
-- Beperkingen voor tabel `predictions_quantile_sets`
--
ALTER TABLE `predictions_quantile_sets`
  ADD CONSTRAINT `prediction_id_fk` FOREIGN KEY (`prediction_id`) REFERENCES `predictions` (`id`),
  ADD CONSTRAINT `quantile_set_id_fk` FOREIGN KEY (`quantile_set_id`) REFERENCES `quantile_sets` (`id`);

--
-- Beperkingen voor tabel `predictions_systems`
--
ALTER TABLE `predictions_systems`
  ADD CONSTRAINT `FK_prediction_id` FOREIGN KEY (`prediction_id`) REFERENCES `predictions` (`id`),
  ADD CONSTRAINT `FK_system_id` FOREIGN KEY (`system_id`) REFERENCES `systems` (`sid`);

--
-- Beperkingen voor tabel `solarspecs`
--
ALTER TABLE `solarspecs`
  ADD CONSTRAINT `solarspecs_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `predictions` (`id`);

--
-- Beperkingen voor tabel `systems`
--
ALTER TABLE `systems`
  ADD CONSTRAINT `fk_customer_api_key_id` FOREIGN KEY (`measurements_customer_api_key_id`) REFERENCES `systemsApiKeys` (`id`);

--
-- Indexes for table `weatherforecastlocations`
--
ALTER TABLE `weatherforecastlocations`
  ADD PRIMARY KEY (`input_city`),
  ADD KEY `country` (`country`);

--
-- Beperkingen voor tabel `windspecs`
--
ALTER TABLE `windspecs`
  ADD CONSTRAINT `windspecs_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `predictions` (`id`),
  ADD CONSTRAINT `windspecs_ibfk_2` FOREIGN KEY (`turbine_type`) REFERENCES `genericpowercurves` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
