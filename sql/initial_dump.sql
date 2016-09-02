-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 01, 2016 at 03:36 
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sugarcrm_core`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `account_type` varchar(50) DEFAULT NULL,
  `industry` varchar(50) DEFAULT NULL,
  `annual_revenue` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `billing_address_street` varchar(150) DEFAULT NULL,
  `billing_address_city` varchar(100) DEFAULT NULL,
  `billing_address_state` varchar(100) DEFAULT NULL,
  `billing_address_postalcode` varchar(20) DEFAULT NULL,
  `billing_address_country` varchar(255) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `phone_office` varchar(100) DEFAULT NULL,
  `phone_alternate` varchar(100) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `ownership` varchar(100) DEFAULT NULL,
  `employees` varchar(10) DEFAULT NULL,
  `ticker_symbol` varchar(10) DEFAULT NULL,
  `shipping_address_street` varchar(150) DEFAULT NULL,
  `shipping_address_city` varchar(100) DEFAULT NULL,
  `shipping_address_state` varchar(100) DEFAULT NULL,
  `shipping_address_postalcode` varchar(20) DEFAULT NULL,
  `shipping_address_country` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `sic_code` varchar(10) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_audit`
--

CREATE TABLE `accounts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_bugs`
--

CREATE TABLE `accounts_bugs` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_cases`
--

CREATE TABLE `accounts_cases` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_contacts`
--

CREATE TABLE `accounts_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts_opportunities`
--

CREATE TABLE `accounts_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_actions`
--

CREATE TABLE `acl_actions` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `acltype` varchar(100) DEFAULT NULL,
  `aclaccess` int(3) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acl_actions`
--

INSERT INTO `acl_actions` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `category`, `acltype`, `aclaccess`, `deleted`) VALUES
('10cd1710-c029-d9d2-08a4-5696034cfbee', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'ProspectLists', 'module', 89, 0),
('11dd053d-91a3-fac3-8c99-569603675ee5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Accounts', 'module', 90, 0),
('1201b30a-6858-ec9a-601d-569603077f5a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Tasks', 'module', 90, 0),
('13220968-a2f1-2bef-3118-5696032cac2c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Opportunities', 'module', 90, 0),
('13c4c8a4-9da7-eb01-c643-5696033abbd6', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Accounts', 'module', 90, 0),
('144ca836-6f86-f6a0-23c4-5696035f4b23', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Bugs', 'module', 90, 0),
('158bb067-1b0d-eb45-e617-576cfec275aa', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'delete', 'la_LoginAudit', 'module', 90, 0),
('15933d80-8481-cac5-c890-5696034f8529', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Prospects', 'module', 90, 0),
('182689f5-a422-9d9e-a769-569603feceda', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Leads', 'module', 90, 0),
('198ac1f9-abd3-4edf-274e-569603fa9fe4', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Emails', 'module', 90, 0),
('1aebfcb5-6a78-4962-376f-56960343e220', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'ProspectLists', 'module', 90, 0),
('1e5ebc6b-f489-2c8c-d255-569603af31dd', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Bugs', 'module', 90, 0),
('1fc82fa4-1ab5-444a-a945-5696032631db', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Prospects', 'module', 90, 0),
('1fdea9c7-f14a-c543-c2d8-56960317813f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'EAPM', 'module', 90, 0),
('21bada82-12f1-d828-48ad-569603f66e31', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Opportunities', 'module', 90, 0),
('21ef9a26-4555-d8fe-eb84-576cfe41eb14', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'import', 'la_LoginAudit', 'module', 90, 0),
('2382a5e0-3b89-56af-ade2-569603f13c3a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'ProjectTask', 'module', 90, 0),
('251d05ad-e2ed-1430-285c-56960350679b', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'ProspectLists', 'module', 90, 0),
('28918838-4c8e-e36e-15d7-569603c6cae7', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Bugs', 'module', 90, 0),
('29fbdcd0-3409-00ec-f205-56960367c902', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Prospects', 'module', 90, 0),
('2a83845c-a4f5-5af2-57ad-569603cc5a5c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Leads', 'module', 90, 0),
('2dfefde4-f1c4-8159-dc16-576cfe2dfb43', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'export', 'la_LoginAudit', 'module', 90, 0),
('2e9c6360-1809-b000-64bf-569603ea8ebe', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Contacts', 'module', 90, 0),
('2f755378-3c7e-3e18-e5e4-569603942b30', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'ProspectLists', 'module', 90, 0),
('32c01dcc-fe6a-dc27-64e2-5696032fbf68', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Bugs', 'module', 90, 0),
('331007c2-33a8-a56f-cec9-5696037ca7c3', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Project', 'module', 90, 0),
('342d6218-3afa-bd4b-63da-56960337210f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Prospects', 'module', 90, 0),
('3487c1ac-d6dc-82bb-faab-569603b9d90c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'ProjectTask', 'module', 90, 0),
('34b4e02b-a4d8-c66b-fe0c-569603200528', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Leads', 'module', 90, 0),
('361804fc-0afb-0fff-4ca6-569603f6daba', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Opportunities', 'module', 90, 0),
('398064d5-b42d-7d8d-afee-5696036ea5d1', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'ProspectLists', 'module', 90, 0),
('3a364e85-76f4-8721-55ca-576cfed34ab4', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'massupdate', 'la_LoginAudit', 'module', 90, 0),
('3d004b04-d2d0-0187-04ba-569603fe04e9', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Bugs', 'module', 90, 0),
('3dd5c153-39d1-aed2-41b9-56960392e6b5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'EAPM', 'module', 90, 0),
('3eb99342-b795-27f4-0876-5696033d0cf1', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'ProjectTask', 'module', 90, 0),
('3ee651e3-526a-5f3d-1fe9-569603a06f45', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Leads', 'module', 90, 0),
('3fb6911b-c8be-05b2-2718-56960388a104', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Campaigns', 'module', 89, 0),
('41db540e-9348-13c1-e3e0-569603bf7fa2', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'EmailMarketing', 'module', 89, 0),
('436a1202-7cbc-73a2-2cf8-5696038c908b', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Emails', 'module', 90, 0),
('43b48203-e687-2388-8a83-569603455d7a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'ProspectLists', 'module', 90, 0),
('45ed7f4a-0263-3204-8f24-5696036f8c39', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Contacts', 'module', 89, 0),
('472bbd9f-b215-4b76-924c-569603bbbde9', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Bugs', 'module', 90, 0),
('48ecbfab-2bec-6cae-f5ab-5696032b9a44', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'ProjectTask', 'module', 90, 0),
('49f50550-f762-e514-2e60-5696030aa4cd', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Campaigns', 'module', 90, 0),
('4c0d165f-4919-ca41-8d5f-56960304e731', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'EmailMarketing', 'module', 90, 0),
('4e0c95c5-6d8c-a146-9e1c-5696033f63df', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'ProspectLists', 'module', 90, 0),
('512e316b-2955-22fe-38fd-5696032bee8e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Leads', 'module', 90, 0),
('515d18ea-da1c-f18e-4eaa-5696035ee87c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Bugs', 'module', 90, 0),
('540edab3-77a4-b67b-340f-569603e28e10', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Campaigns', 'module', 90, 0),
('541b0481-2883-77bf-8a2d-569603837722', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'EAPM', 'module', 90, 0),
('563dbe4c-85ad-c312-0e17-5696030f412a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'EmailMarketing', 'module', 90, 0),
('56fcb9ca-7247-15ef-8c74-569603650a06', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Notes', 'module', 89, 0),
('581ecc3d-abb9-9922-5e63-569603677ffc', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Contacts', 'module', 90, 0),
('582122dd-75ea-2f06-79c1-569603020810', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'ProspectLists', 'module', 90, 0),
('59d9831e-8c94-408e-9aab-56960343555c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Cases', 'module', 89, 0),
('5c59cb0b-149e-fa67-f96b-569603110f2e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'EmailTemplates', 'module', 89, 0),
('5d320561-8b2f-f891-cdeb-569603341530', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Documents', 'module', 89, 0),
('5e5e52b5-a86f-ef41-2302-56960349ff69', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Campaigns', 'module', 90, 0),
('6072ed22-1e57-2283-63fa-56960388ca65', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'EmailMarketing', 'module', 90, 0),
('660c14b3-00c9-943d-78c5-5696037b96c9', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Cases', 'module', 90, 0),
('66bd1f7f-4923-15b8-4fd2-5696033ca734', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'EmailTemplates', 'module', 90, 0),
('6a7a15c8-c7b4-ed8d-1f17-569603b04418', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Campaigns', 'module', 90, 0),
('6aa0ee15-5773-14dc-f4f5-569603166758', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'EmailMarketing', 'module', 90, 0),
('6ab69f48-8abc-eaf1-3fc8-569603f98419', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Leads', 'module', 90, 0),
('6c3ee0e3-c57a-fe86-6d3f-569603051ee5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Emails', 'module', 90, 0),
('6ede596a-85f0-1513-ac0d-56960379e1d7', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Calls', 'module', 89, 0),
('6f8ea92e-5332-0d81-5e0e-56960305f60e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Contacts', 'module', 90, 0),
('70ba0859-0bbe-531d-9d51-5696034c82ab', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'EmailTemplates', 'module', 90, 0),
('70fd65cb-5711-34f9-8b1d-5696033a8840', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Documents', 'module', 90, 0),
('7242417f-bea3-f390-b31e-569603de8a9e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Cases', 'module', 90, 0),
('74abce7e-d3a7-c29e-5e9f-569603836c9a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Campaigns', 'module', 90, 0),
('74d4ffd5-fcf8-27e7-01e9-569603c3c805', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'EmailMarketing', 'module', 90, 0),
('79188372-f58d-4730-f9d1-569603451e0b', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Calls', 'module', 90, 0),
('7a380078-2491-f3a2-2609-5696035befd6', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Tasks', 'module', 90, 0),
('7ae9f4fe-21f1-01b7-bb06-569603eefe7c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'EmailTemplates', 'module', 90, 0),
('7d23feeb-91a9-130b-91c3-56960386d727', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Notes', 'module', 90, 0),
('7e7f05d2-9eb1-86e4-7762-569603397a18', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Cases', 'module', 90, 0),
('7ede4530-6ffe-9242-75b3-569603b85fc3', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Campaigns', 'module', 90, 0),
('7f2fc789-f7f7-7302-1952-569603da1804', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'EmailMarketing', 'module', 90, 0),
('834203a9-0e90-aed2-e918-5696032f5fa8', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Calls', 'module', 90, 0),
('84741b04-05ea-0881-3c69-56960334f09a', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Meetings', 'module', 89, 0),
('852fa17a-834d-9d4c-d405-5696035f853e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'EmailTemplates', 'module', 90, 0),
('85ad0a4e-93c4-fa3d-8eaf-569603200f08', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Emails', 'module', 90, 0),
('892cbcf8-cfe8-85b7-67bd-569603654166', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Campaigns', 'module', 90, 0),
('8b4441fd-067b-a1cb-9bfa-5696032ce8a6', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'EmailMarketing', 'module', 90, 0),
('8b6d5bee-3d77-19d9-68be-569603ec8581', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Documents', 'module', 90, 0),
('8d7bb2b0-59b7-319a-bc19-569603e76641', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Calls', 'module', 90, 0),
('8e5481e0-99fe-9262-f8da-569603697482', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Project', 'module', 89, 0),
('8e982bf1-8205-718a-7694-5696033a599d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Meetings', 'module', 90, 0),
('8f650a66-4ed9-59fd-90d2-56960344d908', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'EmailTemplates', 'module', 90, 0),
('93725308-dfd3-6a50-e03c-569603966fd1', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Notes', 'module', 90, 0),
('94788da0-345c-32ef-48cf-569603bf8a0e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Contacts', 'module', 90, 0),
('94df06f3-674d-12b0-e444-576cfe75bfce', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'edit', 'la_LoginAudit', 'module', 90, 0),
('9578dfd5-392a-f132-b9b8-569603334286', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Emails', 'module', 90, 0),
('95ac0c97-3d47-1715-32c4-5696033eb6c8', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Prospects', 'module', 90, 0),
('97b1020b-7185-c498-30af-569603080c8d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Calls', 'module', 90, 0),
('98798bb3-51d5-e37d-e62d-569603dd5faa', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Project', 'module', 90, 0),
('98ee9a2b-fdee-9c62-74d7-569603c29449', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Meetings', 'module', 90, 0),
('991e0733-29db-0d4b-1666-569603ace0e5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Cases', 'module', 90, 0),
('99878151-95d4-14c6-6350-56960372d159', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'EmailTemplates', 'module', 90, 0),
('9bc40225-3aac-4291-33a5-5696038206d7', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Documents', 'module', 90, 0),
('9e4f0a76-ed85-ff73-cee9-56960302cf5d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Users', 'module', 89, 0),
('9fc40b56-d0ed-1d7e-8704-569603e354ea', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Bugs', 'module', 89, 0),
('a1e493b5-8235-edea-e244-569603904554', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Calls', 'module', 90, 0),
('a2b27be4-f39a-2b74-e1ce-5696033db1b5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Project', 'module', 90, 0),
('a3009065-d6c0-28f8-6ca8-569603ebe259', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Meetings', 'module', 90, 0),
('a3b33f51-ca8b-55e0-48f2-5696038b6ffd', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'EmailTemplates', 'module', 90, 0),
('a6bf8a58-bfc1-2a4c-ff3a-5696030f4272', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Notes', 'module', 90, 0),
('a8800227-b57d-03a3-5104-569603036d8d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Users', 'module', 90, 0),
('ac26cffe-f777-1ab9-fb27-569603f24f11', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Calls', 'module', 90, 0),
('ad31ceba-ed99-2672-7c5a-5696033a30fa', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Meetings', 'module', 90, 0),
('b0a629d4-7436-3851-59ce-569603dd5ebb', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Project', 'module', 90, 0),
('b0e64933-4912-46c9-ced2-569603c21695', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Notes', 'module', 90, 0),
('b1e91e7e-f100-65ee-debb-5696033de558', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Emails', 'module', 89, 0),
('b22a0d76-6bcb-991e-8bc4-569603fdd485', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Documents', 'module', 90, 0),
('b2af7241-61eb-fdff-27ed-569603f76b0e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Users', 'module', 90, 0),
('b39e0154-299c-8639-0d70-5696039de790', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Accounts', 'module', 90, 0),
('b44bba85-769c-8e94-973e-5696032cbf50', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Cases', 'module', 90, 0),
('b5dfc482-39f3-17f6-1901-5696038f289c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'ProjectTask', 'module', 89, 0),
('b64721ef-1b03-9519-7798-56960374cacf', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Calls', 'module', 90, 0),
('b763311d-b2eb-8644-9830-5696036f9580', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Meetings', 'module', 90, 0),
('b81665ba-f717-9fbd-0719-569603a6379f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Opportunities', 'module', 89, 0),
('bb88cf3b-7dc0-1cbc-46ea-5696037fdcd7', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Notes', 'module', 90, 0),
('bc5cd19a-f3c9-b2db-c518-5696030349a8', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Documents', 'module', 90, 0),
('bc8b506c-164e-964e-07f6-569603282a12', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Tasks', 'module', 89, 0),
('bce65944-d01b-0b6d-e751-56960323603c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Users', 'module', 90, 0),
('bf951c04-ee3a-a9ff-99a6-569603aa5879', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Contacts', 'module', 90, 0),
('c19075d6-fe6f-dd2c-d4fe-5696038ef56c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Meetings', 'module', 90, 0),
('c236cd74-278b-ec2d-2c98-56960346208b', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Accounts', 'module', 89, 0),
('c24a1a08-2627-0cd3-089c-569603cc9ead', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Opportunities', 'module', 90, 0),
('c591145e-0978-ad1b-b74e-5696030e5dbe', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Leads', 'module', 89, 0),
('c5bbc30e-bc44-e72f-e25b-569603038309', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Notes', 'module', 90, 0),
('c60ea15d-55dd-28c6-a1de-569603ece5cd', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Cases', 'module', 90, 0),
('c69c4d48-2238-49f8-ba5b-569603a19957', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Documents', 'module', 90, 0),
('c6b88447-186b-7174-7a8a-569603a88ef5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Tasks', 'module', 90, 0),
('c6bcc1fd-9955-013c-f360-569603927315', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'ProjectTask', 'module', 90, 0),
('c7250f65-76a9-a3ab-0bc1-5696035e4416', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Users', 'module', 90, 0),
('c76424a6-8b9e-0f43-b5da-56960394d1e5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Project', 'module', 90, 0),
('cbc43043-afce-42f2-d76b-5696030c1fac', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Meetings', 'module', 90, 0),
('cc62c6a3-25d0-4918-0252-569603d1763c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Accounts', 'module', 90, 0),
('cc80417b-a6d2-6afa-47e3-569603eeab02', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Opportunities', 'module', 90, 0),
('cfeaba3c-6529-42b3-ee0e-5696037f4a10', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Notes', 'module', 90, 0),
('d017519d-3341-d0ad-c9a7-569603095cfa', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'EAPM', 'module', 89, 0),
('d0f13344-3053-34ef-5eea-569603b8624e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Documents', 'module', 90, 0),
('d1719040-8122-31e5-4e25-569603a344b4', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Users', 'module', 90, 0),
('d21a02fc-12e2-66da-8a3a-569603c29a5f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'ProjectTask', 'module', 90, 0),
('d2fe375f-97e4-8652-6648-569603d19fc0', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Tasks', 'module', 90, 0),
('d482b7ac-0ae1-5ef5-d3e1-56960328f15f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Cases', 'module', 90, 0),
('d698ede6-92f8-bbc5-41a0-569603c1a66e', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Accounts', 'module', 90, 0),
('d6afc647-761d-7b79-ffa3-5696037d0bef', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Opportunities', 'module', 90, 0),
('d865a39d-6f4d-292a-2a91-576cfe3de5be', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'access', 'la_LoginAudit', 'module', 89, 0),
('d8d4cff1-714c-a219-f298-5696039e9260', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'access', 'Prospects', 'module', 89, 0),
('da465610-43dd-11c2-3af9-569603e2a2aa', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'EAPM', 'module', 90, 0),
('db82c716-81b5-744c-e2eb-569603ec8ca1', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Users', 'module', 90, 0),
('dd33ee8e-0da2-175a-1ac0-569603cfddde', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Tasks', 'module', 90, 0),
('ddf78420-89e1-62ef-9d2e-569603ecb6a3', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Project', 'module', 90, 0),
('de23041e-3352-48f2-c78d-569603097588', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Contacts', 'module', 90, 0),
('df910632-3b14-5171-a4b7-569603e447f9', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Contacts', 'module', 90, 0),
('e0ae32a4-198b-fe4e-7300-56960308c63c', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Emails', 'module', 90, 0),
('e0c537a0-5f2f-8f99-9096-569603987abb', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'Accounts', 'module', 90, 0),
('e0e35954-3a04-d903-99f8-56960319a381', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Opportunities', 'module', 90, 0),
('e4840a16-cdd2-a589-6926-56960398b856', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'EAPM', 'module', 90, 0),
('e50cf165-a1a5-5887-d08d-569603bf2eae', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Prospects', 'module', 90, 0),
('e524c0a4-677c-d150-9674-576cfed9e819', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'view', 'la_LoginAudit', 'module', 90, 0),
('e5b72b8e-60f8-79b7-b462-569603e3cd54', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'massupdate', 'Users', 'module', 90, 0),
('e74babd1-0f32-8bca-4ccb-56960344263d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'ProjectTask', 'module', 90, 0),
('e768bd0e-7989-2d1e-ca94-569603a04901', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Tasks', 'module', 90, 0),
('ea27e50e-60aa-735c-4813-56960317d4fa', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'export', 'Project', 'module', 90, 0),
('eaf962e7-c9d2-8430-b835-569603eae47f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'delete', 'Accounts', 'module', 90, 0),
('eeb22067-4e74-4513-1224-5696038c3cd5', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'edit', 'EAPM', 'module', 90, 0),
('f137f736-80bf-bc3c-b85a-576cfe76d4fa', '2016-06-24 09:34:08', '2016-06-24 09:34:08', '1', '1', 'list', 'la_LoginAudit', 'module', 90, 0),
('f149025e-8c97-1d15-3ada-569603efe530', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Prospects', 'module', 90, 0),
('f1906c3c-315e-6bd6-0993-56960331cfd2', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'Tasks', 'module', 90, 0),
('f3ea5871-ba55-dff9-2125-56960300d78b', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'view', 'Leads', 'module', 90, 0),
('f58606f6-e193-c0d8-a5d7-56960396bf54', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'import', 'EAPM', 'module', 90, 0),
('f5a00e39-c722-ebd1-064d-5696032f9825', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '', 'list', 'Emails', 'module', 90, 0);

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles`
--

CREATE TABLE `acl_roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_actions`
--

CREATE TABLE `acl_roles_actions` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `action_id` varchar(36) DEFAULT NULL,
  `access_override` int(3) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `acl_roles_users`
--

CREATE TABLE `acl_roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `assigned_user_id` char(36) NOT NULL,
  `bean` varchar(50) DEFAULT NULL,
  `bean_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs`
--

CREATE TABLE `bugs` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `bug_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` varchar(255) DEFAULT NULL,
  `work_log` text,
  `found_in_release` varchar(255) DEFAULT NULL,
  `fixed_in_release` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `bugs_audit`
--

CREATE TABLE `bugs_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `duration_hours` int(2) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `direction` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_contacts`
--

CREATE TABLE `calls_contacts` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_leads`
--

CREATE TABLE `calls_leads` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `calls_users`
--

CREATE TABLE `calls_users` (
  `id` varchar(36) NOT NULL,
  `call_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns`
--

CREATE TABLE `campaigns` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `tracker_count` int(11) DEFAULT '0',
  `refer_url` varchar(255) DEFAULT 'http://',
  `tracker_text` varchar(255) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `impressions` int(11) DEFAULT '0',
  `currency_id` char(36) DEFAULT NULL,
  `budget` double DEFAULT NULL,
  `expected_cost` double DEFAULT NULL,
  `actual_cost` double DEFAULT NULL,
  `expected_revenue` double DEFAULT NULL,
  `campaign_type` varchar(100) DEFAULT NULL,
  `objective` text,
  `content` text,
  `frequency` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaigns_audit`
--

CREATE TABLE `campaigns_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_log`
--

CREATE TABLE `campaign_log` (
  `id` char(36) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `target_tracker_key` varchar(36) DEFAULT NULL,
  `target_id` varchar(36) DEFAULT NULL,
  `target_type` varchar(100) DEFAULT NULL,
  `activity_type` varchar(100) DEFAULT NULL,
  `activity_date` datetime DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL,
  `archived` tinyint(1) DEFAULT '0',
  `hits` int(11) DEFAULT '0',
  `list_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `more_information` varchar(100) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campaign_trkrs`
--

CREATE TABLE `campaign_trkrs` (
  `id` char(36) NOT NULL,
  `tracker_name` varchar(30) DEFAULT NULL,
  `tracker_url` varchar(255) DEFAULT 'http://',
  `tracker_key` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `is_optout` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases`
--

CREATE TABLE `cases` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `case_number` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  `resolution` text,
  `work_log` text,
  `account_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_audit`
--

CREATE TABLE `cases_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cases_bugs`
--

CREATE TABLE `cases_bugs` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `category` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`category`, `name`, `value`) VALUES
('notify', 'fromaddress', 'do_not_reply@example.com'),
('notify', 'fromname', 'SugarCRM'),
('notify', 'send_by_default', '1'),
('notify', 'on', '1'),
('notify', 'send_from_assigning_user', '0'),
('MySettings', 'tab', 'YToxNjp7aTowO3M6NDoiSG9tZSI7aToxO3M6ODoiQWNjb3VudHMiO2k6MjtzOjg6IkNvbnRhY3RzIjtpOjM7czoxMzoiT3Bwb3J0dW5pdGllcyI7aTo0O3M6NToiTGVhZHMiO2k6NTtzOjg6IkNhbGVuZGFyIjtpOjY7czo5OiJEb2N1bWVudHMiO2k6NztzOjY6IkVtYWlscyI7aTo4O3M6OToiQ2FtcGFpZ25zIjtpOjk7czo1OiJDYWxscyI7aToxMDtzOjg6Ik1lZXRpbmdzIjtpOjExO3M6NToiVGFza3MiO2k6MTI7czo1OiJOb3RlcyI7aToxMztzOjU6IkNhc2VzIjtpOjE0O3M6OToiUHJvc3BlY3RzIjtpOjE1O3M6MTM6IlByb3NwZWN0TGlzdHMiO30='),
('portal', 'on', '0'),
('tracker', 'Tracker', '1'),
('system', 'skypeout_on', '1'),
('sugarfeed', 'enabled', '1'),
('sugarfeed', 'module_UserFeed', '1'),
('sugarfeed', 'module_Cases', '1'),
('sugarfeed', 'module_Leads', '1'),
('sugarfeed', 'module_Contacts', '1'),
('sugarfeed', 'module_Opportunities', '1'),
('Update', 'CheckUpdates', 'automatic'),
('system', 'name', 'SugarCRM'),
('license', 'msg_admin', ''),
('license', 'msg_all', ''),
('license', 'last_validation', 'success'),
('license', 'latest_versions', 'YToxOntpOjA7YToyOntzOjc6InZlcnNpb24iO3M6NjoiNi41LjIwIjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNjM6IlRoZSBsYXRlc3QgdmVyc2lvbiBvZiBTdWdhckNSTSBpcyA2LjUuMjAuICBQbGVhc2UgdmlzaXQgPGEgaHJlZj0iaHR0cDovL3N1cHBvcnQuc3VnYXJjcm0uY29tIiB0YXJnZXQ9Il9uZXciPnN1cHBvcnQuc3VnYXJjcm0uY29tPC9hPiB0byBhY3F1aXJlIHRoZSBsYXRlc3QgdmVyc2lvbi4iO319'),
('Update', 'last_check_date', '1470055893'),
('system', 'adminwizard', '1'),
('notify', 'allow_default_outbound', '0'),
('info', 'sugar_version', '6.5.24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `lead_source` varchar(255) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_audit`
--

CREATE TABLE `contacts_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_bugs`
--

CREATE TABLE `contacts_bugs` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_cases`
--

CREATE TABLE `contacts_cases` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `contacts_users`
--

CREATE TABLE `contacts_users` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cron_remove_documents`
--

CREATE TABLE `cron_remove_documents` (
  `id` varchar(36) NOT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `module` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` char(36) NOT NULL,
  `name` varchar(36) DEFAULT NULL,
  `symbol` varchar(36) DEFAULT NULL,
  `iso4217` varchar(3) DEFAULT NULL,
  `conversion_rate` double DEFAULT '0',
  `status` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `bean_id` varchar(36) DEFAULT NULL,
  `set_num` int(11) DEFAULT '0',
  `field0` varchar(255) DEFAULT NULL,
  `field1` varchar(255) DEFAULT NULL,
  `field2` varchar(255) DEFAULT NULL,
  `field3` varchar(255) DEFAULT NULL,
  `field4` varchar(255) DEFAULT NULL,
  `field5` varchar(255) DEFAULT NULL,
  `field6` varchar(255) DEFAULT NULL,
  `field7` varchar(255) DEFAULT NULL,
  `field8` varchar(255) DEFAULT NULL,
  `field9` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dashlet_storage`
--

CREATE TABLE `dashlet_storage` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `document_name` varchar(255) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT 'Sugar',
  `doc_url` varchar(255) DEFAULT NULL,
  `active_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `category_id` varchar(100) DEFAULT NULL,
  `subcategory_id` varchar(100) DEFAULT NULL,
  `status_id` varchar(100) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `related_doc_id` char(36) DEFAULT NULL,
  `related_doc_rev_id` char(36) DEFAULT NULL,
  `is_template` tinyint(1) DEFAULT '0',
  `template_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_accounts`
--

CREATE TABLE `documents_accounts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `account_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_bugs`
--

CREATE TABLE `documents_bugs` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `bug_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_cases`
--

CREATE TABLE `documents_cases` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `case_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_contacts`
--

CREATE TABLE `documents_contacts` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `documents_opportunities`
--

CREATE TABLE `documents_opportunities` (
  `id` varchar(36) NOT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `document_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `document_revisions`
--

CREATE TABLE `document_revisions` (
  `id` varchar(36) NOT NULL,
  `change_log` varchar(255) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `doc_id` varchar(100) DEFAULT NULL,
  `doc_type` varchar(100) DEFAULT NULL,
  `doc_url` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `file_ext` varchar(100) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `revision` varchar(100) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eapm`
--

CREATE TABLE `eapm` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `application` varchar(100) DEFAULT 'webex',
  `api_data` text,
  `consumer_key` varchar(255) DEFAULT NULL,
  `consumer_secret` varchar(255) DEFAULT NULL,
  `oauth_token` varchar(255) DEFAULT NULL,
  `oauth_secret` varchar(255) DEFAULT NULL,
  `validated` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emailman`
--

CREATE TABLE `emailman` (
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `marketing_id` char(36) DEFAULT NULL,
  `list_id` char(36) DEFAULT NULL,
  `send_date_time` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `in_queue` tinyint(1) DEFAULT '0',
  `in_queue_date` datetime DEFAULT NULL,
  `send_attempts` int(11) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0',
  `related_id` char(36) DEFAULT NULL,
  `related_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_sent` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `flagged` tinyint(1) DEFAULT NULL,
  `reply_to_status` tinyint(1) DEFAULT NULL,
  `intent` varchar(100) DEFAULT 'pick',
  `mailbox_id` char(36) DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_beans`
--

CREATE TABLE `emails_beans` (
  `id` char(36) NOT NULL,
  `email_id` char(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `campaign_data` text,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_email_addr_rel`
--

CREATE TABLE `emails_email_addr_rel` (
  `id` char(36) NOT NULL,
  `email_id` char(36) NOT NULL,
  `address_type` varchar(4) DEFAULT NULL,
  `email_address_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `emails_text`
--

CREATE TABLE `emails_text` (
  `email_id` char(36) NOT NULL,
  `from_addr` varchar(255) DEFAULT NULL,
  `reply_to_addr` varchar(255) DEFAULT NULL,
  `to_addrs` text,
  `cc_addrs` text,
  `bcc_addrs` text,
  `description` longtext,
  `description_html` longtext,
  `raw_source` longtext,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_addresses`
--

CREATE TABLE `email_addresses` (
  `id` char(36) NOT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `email_address_caps` varchar(255) DEFAULT NULL,
  `invalid_email` tinyint(1) DEFAULT '0',
  `opt_out` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addresses`
--

INSERT INTO `email_addresses` (`id`, `email_address`, `email_address_caps`, `invalid_email`, `opt_out`, `date_created`, `date_modified`, `deleted`) VALUES
('183bd3d4-ffa9-7b61-fb64-5696063d3616', 'admin@soulware.hu', 'ADMIN@SOULWARE.HU', 0, 0, '2016-01-13 08:12:04', '2016-01-13 08:12:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_addr_bean_rel`
--

CREATE TABLE `email_addr_bean_rel` (
  `id` char(36) NOT NULL,
  `email_address_id` char(36) NOT NULL,
  `bean_id` char(36) NOT NULL,
  `bean_module` varchar(100) DEFAULT NULL,
  `primary_address` tinyint(1) DEFAULT '0',
  `reply_to_address` tinyint(1) DEFAULT '0',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_addr_bean_rel`
--

INSERT INTO `email_addr_bean_rel` (`id`, `email_address_id`, `bean_id`, `bean_module`, `primary_address`, `reply_to_address`, `date_created`, `date_modified`, `deleted`) VALUES
('1829ea75-7d7a-d7a4-ccfd-5696068c8a18', '183bd3d4-ffa9-7b61-fb64-5696063d3616', '1', 'Users', 1, 0, '2016-01-13 08:12:04', '2016-01-13 08:12:04', 0);

-- --------------------------------------------------------

--
-- Table structure for table `email_cache`
--

CREATE TABLE `email_cache` (
  `ie_id` char(36) DEFAULT NULL,
  `mbox` varchar(60) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `fromaddr` varchar(100) DEFAULT NULL,
  `toaddr` varchar(255) DEFAULT NULL,
  `senddate` datetime DEFAULT NULL,
  `message_id` varchar(255) DEFAULT NULL,
  `mailsize` int(10) UNSIGNED DEFAULT NULL,
  `imap_uid` int(10) UNSIGNED DEFAULT NULL,
  `msgno` int(10) UNSIGNED DEFAULT NULL,
  `recent` tinyint(4) DEFAULT NULL,
  `flagged` tinyint(4) DEFAULT NULL,
  `answered` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT NULL,
  `seen` tinyint(4) DEFAULT NULL,
  `draft` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing`
--

CREATE TABLE `email_marketing` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `from_addr` varchar(100) DEFAULT NULL,
  `reply_to_name` varchar(100) DEFAULT NULL,
  `reply_to_addr` varchar(100) DEFAULT NULL,
  `inbound_email_id` varchar(36) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `template_id` char(36) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `all_prospect_lists` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_marketing_prospect_lists`
--

CREATE TABLE `email_marketing_prospect_lists` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `email_marketing_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `published` varchar(3) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `subject` varchar(255) DEFAULT NULL,
  `body` text,
  `body_html` text,
  `deleted` tinyint(1) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `text_only` tinyint(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `published`, `name`, `description`, `subject`, `body`, `body_html`, `deleted`, `assigned_user_id`, `text_only`, `type`) VALUES
('cc7ac234-5e69-fa7f-822b-5696031fa63f', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'off', 'System-generated password email', 'This template is used when the System Administrator sends a new password to a user.', 'New account information', '\nHere is your account username and temporary password:\nUsername : $contact_user_user_name\nPassword : $contact_user_user_hash\n\n$config_site_url\n\nAfter you log in using the above password, you may be required to reset the password to one of your own choice.', '<div><table width="550"><tbody><tr><td><p>Here is your account username and temporary password:</p><p>Username : $contact_user_user_name </p><p>Password : $contact_user_user_hash </p><br /><p>$config_site_url</p><br /><p>After you log in using the above password, you may be required to reset the password to one of your own choice.</p>   </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL),
('edd43189-2b5e-aae3-206d-569603f0a52d', '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'off', 'Forgot Password email', 'This template is used to send a user a link to click to reset the user''s account password.', 'Reset your account password', '\nYou recently requested on $contact_user_pwd_last_changed to be able to reset your account password.\n\nClick on the link below to reset your password:\n\n$contact_user_link_guid', '<div><table width="550"><tbody><tr><td><p>You recently requested on $contact_user_pwd_last_changed to be able to reset your account password. </p><p>Click on the link below to reset your password:</p><p> $contact_user_link_guid </p>  </td>         </tr><tr><td></td>         </tr></tbody></table></div>', 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fields_meta_data`
--

CREATE TABLE `fields_meta_data` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `vname` varchar(255) DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `help` varchar(255) DEFAULT NULL,
  `custom_module` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `len` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `default_value` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `audited` tinyint(1) DEFAULT '0',
  `massupdate` tinyint(1) DEFAULT '0',
  `duplicate_merge` smallint(6) DEFAULT '0',
  `reportable` tinyint(1) DEFAULT '1',
  `importable` varchar(255) DEFAULT NULL,
  `ext1` varchar(255) DEFAULT NULL,
  `ext2` varchar(255) DEFAULT NULL,
  `ext3` varchar(255) DEFAULT NULL,
  `ext4` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `id` char(36) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `folder_type` varchar(25) DEFAULT NULL,
  `parent_folder` char(36) DEFAULT NULL,
  `has_child` tinyint(1) DEFAULT '0',
  `is_group` tinyint(1) DEFAULT '0',
  `is_dynamic` tinyint(1) DEFAULT '0',
  `dynamic_query` text,
  `assign_to_id` char(36) DEFAULT NULL,
  `created_by` char(36) NOT NULL,
  `modified_by` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_rel`
--

CREATE TABLE `folders_rel` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `polymorphic_module` varchar(25) DEFAULT NULL,
  `polymorphic_id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `folders_subscriptions`
--

CREATE TABLE `folders_subscriptions` (
  `id` char(36) NOT NULL,
  `folder_id` char(36) NOT NULL,
  `assigned_user_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `import_maps`
--

CREATE TABLE `import_maps` (
  `id` char(36) NOT NULL,
  `name` varchar(254) DEFAULT NULL,
  `source` varchar(36) DEFAULT NULL,
  `enclosure` varchar(1) DEFAULT ' ',
  `delimiter` varchar(1) DEFAULT ',',
  `module` varchar(36) DEFAULT NULL,
  `content` text,
  `default_values` text,
  `has_header` tinyint(1) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `is_published` varchar(3) DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email`
--

CREATE TABLE `inbound_email` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Active',
  `server_url` varchar(100) DEFAULT NULL,
  `email_user` varchar(100) DEFAULT NULL,
  `email_password` varchar(100) DEFAULT NULL,
  `port` int(5) DEFAULT NULL,
  `service` varchar(50) DEFAULT NULL,
  `mailbox` text,
  `delete_seen` tinyint(1) DEFAULT '0',
  `mailbox_type` varchar(10) DEFAULT NULL,
  `template_id` char(36) DEFAULT NULL,
  `stored_options` text,
  `group_id` char(36) DEFAULT NULL,
  `is_personal` tinyint(1) DEFAULT '0',
  `groupfolder_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_autoreply`
--

CREATE TABLE `inbound_email_autoreply` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `autoreplied_to` varchar(100) DEFAULT NULL,
  `ie_id` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inbound_email_cache_ts`
--

CREATE TABLE `inbound_email_cache_ts` (
  `id` varchar(255) NOT NULL,
  `ie_timestamp` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_queue`
--

CREATE TABLE `job_queue` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `scheduler_id` char(36) DEFAULT NULL,
  `execute_time` datetime DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `resolution` varchar(20) DEFAULT NULL,
  `message` text,
  `target` varchar(255) DEFAULT NULL,
  `data` text,
  `requeue` tinyint(1) DEFAULT '0',
  `retry_count` tinyint(4) DEFAULT NULL,
  `failure_count` tinyint(4) DEFAULT NULL,
  `job_delay` int(11) DEFAULT NULL,
  `client` varchar(255) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `la_loginaudit`
--

CREATE TABLE `la_loginaudit` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `ip_address` varchar(15) DEFAULT NULL,
  `typed_name` varchar(25) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `result` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `la_loginaudit_audit`
--

CREATE TABLE `la_loginaudit_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(100) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `converted` tinyint(1) DEFAULT '0',
  `refered_by` varchar(100) DEFAULT NULL,
  `lead_source` varchar(100) DEFAULT NULL,
  `lead_source_description` text,
  `status` varchar(100) DEFAULT NULL,
  `status_description` text,
  `reports_to_id` char(36) DEFAULT NULL,
  `account_name` varchar(255) DEFAULT NULL,
  `account_description` text,
  `contact_id` char(36) DEFAULT NULL,
  `account_id` char(36) DEFAULT NULL,
  `opportunity_id` char(36) DEFAULT NULL,
  `opportunity_name` varchar(255) DEFAULT NULL,
  `opportunity_amount` varchar(50) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `portal_name` varchar(255) DEFAULT NULL,
  `portal_app` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_audit`
--

CREATE TABLE `leads_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `linked_documents`
--

CREATE TABLE `linked_documents` (
  `id` varchar(36) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  `parent_type` varchar(25) DEFAULT NULL,
  `document_id` varchar(36) DEFAULT NULL,
  `document_revision_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `join_url` varchar(200) DEFAULT NULL,
  `host_url` varchar(400) DEFAULT NULL,
  `displayed_url` varchar(400) DEFAULT NULL,
  `creator` varchar(50) DEFAULT NULL,
  `external_id` varchar(50) DEFAULT NULL,
  `duration_hours` int(3) DEFAULT NULL,
  `duration_minutes` int(2) DEFAULT NULL,
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `parent_type` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Planned',
  `type` varchar(255) DEFAULT 'Sugar',
  `parent_id` char(36) DEFAULT NULL,
  `reminder_time` int(11) DEFAULT '-1',
  `email_reminder_time` int(11) DEFAULT '-1',
  `email_reminder_sent` tinyint(1) DEFAULT '0',
  `outlook_id` varchar(255) DEFAULT NULL,
  `sequence` int(11) DEFAULT '0',
  `repeat_type` varchar(36) DEFAULT NULL,
  `repeat_interval` int(3) DEFAULT '1',
  `repeat_dow` varchar(7) DEFAULT NULL,
  `repeat_until` date DEFAULT NULL,
  `repeat_count` int(7) DEFAULT NULL,
  `repeat_parent_id` char(36) DEFAULT NULL,
  `recurring_source` varchar(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_contacts`
--

CREATE TABLE `meetings_contacts` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_leads`
--

CREATE TABLE `meetings_leads` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `lead_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meetings_users`
--

CREATE TABLE `meetings_users` (
  `id` varchar(36) NOT NULL,
  `meeting_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `required` varchar(1) DEFAULT '1',
  `accept_status` varchar(25) DEFAULT 'none',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_mime_type` varchar(100) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `portal_flag` tinyint(1) DEFAULT NULL,
  `embed_flag` tinyint(1) DEFAULT '0',
  `description` text,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_consumer`
--

CREATE TABLE `oauth_consumer` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `c_key` varchar(255) DEFAULT NULL,
  `c_secret` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_nonce`
--

CREATE TABLE `oauth_nonce` (
  `conskey` varchar(32) NOT NULL,
  `nonce` varchar(32) NOT NULL,
  `nonce_ts` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_tokens`
--

CREATE TABLE `oauth_tokens` (
  `id` char(36) NOT NULL,
  `secret` varchar(32) DEFAULT NULL,
  `tstate` varchar(1) DEFAULT NULL,
  `consumer` char(36) NOT NULL,
  `token_ts` bigint(20) DEFAULT NULL,
  `verify` varchar(32) DEFAULT NULL,
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `callback_url` varchar(255) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities`
--

CREATE TABLE `opportunities` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `opportunity_type` varchar(255) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL,
  `lead_source` varchar(50) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `amount_usdollar` double DEFAULT NULL,
  `currency_id` char(36) DEFAULT NULL,
  `date_closed` date DEFAULT NULL,
  `next_step` varchar(100) DEFAULT NULL,
  `sales_stage` varchar(255) DEFAULT NULL,
  `probability` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_audit`
--

CREATE TABLE `opportunities_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `opportunities_contacts`
--

CREATE TABLE `opportunities_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `contact_role` varchar(50) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `outbound_email`
--

CREATE TABLE `outbound_email` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT 'user',
  `user_id` char(36) NOT NULL,
  `mail_sendtype` varchar(8) DEFAULT 'smtp',
  `mail_smtptype` varchar(20) DEFAULT 'other',
  `mail_smtpserver` varchar(100) DEFAULT NULL,
  `mail_smtpport` int(5) DEFAULT '0',
  `mail_smtpuser` varchar(100) DEFAULT NULL,
  `mail_smtppass` varchar(100) DEFAULT NULL,
  `mail_smtpauth_req` tinyint(1) DEFAULT '0',
  `mail_smtpssl` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `outbound_email`
--

INSERT INTO `outbound_email` (`id`, `name`, `type`, `user_id`, `mail_sendtype`, `mail_smtptype`, `mail_smtpserver`, `mail_smtpport`, `mail_smtpuser`, `mail_smtppass`, `mail_smtpauth_req`, `mail_smtpssl`) VALUES
('33b1cf4c-7d7b-1441-29a9-569605cbebd2', 'system', 'system', '1', 'SMTP', 'other', '', 25, '', '', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `estimated_start_date` date DEFAULT NULL,
  `estimated_end_date` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_accounts`
--

CREATE TABLE `projects_accounts` (
  `id` varchar(36) NOT NULL,
  `account_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_bugs`
--

CREATE TABLE `projects_bugs` (
  `id` varchar(36) NOT NULL,
  `bug_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_cases`
--

CREATE TABLE `projects_cases` (
  `id` varchar(36) NOT NULL,
  `case_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_contacts`
--

CREATE TABLE `projects_contacts` (
  `id` varchar(36) NOT NULL,
  `contact_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_opportunities`
--

CREATE TABLE `projects_opportunities` (
  `id` varchar(36) NOT NULL,
  `opportunity_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `projects_products`
--

CREATE TABLE `projects_products` (
  `id` varchar(36) NOT NULL,
  `product_id` varchar(36) DEFAULT NULL,
  `project_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task`
--

CREATE TABLE `project_task` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `project_id` char(36) NOT NULL,
  `project_task_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `description` text,
  `predecessors` text,
  `date_start` date DEFAULT NULL,
  `time_start` int(11) DEFAULT NULL,
  `time_finish` int(11) DEFAULT NULL,
  `date_finish` date DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` text,
  `actual_duration` int(11) DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `date_due` date DEFAULT NULL,
  `time_due` time DEFAULT NULL,
  `parent_task_id` int(11) DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `milestone_flag` tinyint(1) DEFAULT NULL,
  `order_number` int(11) DEFAULT '1',
  `task_number` int(11) DEFAULT NULL,
  `estimated_effort` int(11) DEFAULT NULL,
  `actual_effort` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `utilization` int(11) DEFAULT '100'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `project_task_audit`
--

CREATE TABLE `project_task_audit` (
  `id` char(36) NOT NULL,
  `parent_id` char(36) NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `field_name` varchar(100) DEFAULT NULL,
  `data_type` varchar(100) DEFAULT NULL,
  `before_value_string` varchar(255) DEFAULT NULL,
  `after_value_string` varchar(255) DEFAULT NULL,
  `before_value_text` text,
  `after_value_text` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospects`
--

CREATE TABLE `prospects` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `salutation` varchar(255) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `do_not_call` tinyint(1) DEFAULT '0',
  `phone_home` varchar(100) DEFAULT NULL,
  `phone_mobile` varchar(100) DEFAULT NULL,
  `phone_work` varchar(100) DEFAULT NULL,
  `phone_other` varchar(100) DEFAULT NULL,
  `phone_fax` varchar(100) DEFAULT NULL,
  `primary_address_street` varchar(150) DEFAULT NULL,
  `primary_address_city` varchar(100) DEFAULT NULL,
  `primary_address_state` varchar(100) DEFAULT NULL,
  `primary_address_postalcode` varchar(20) DEFAULT NULL,
  `primary_address_country` varchar(255) DEFAULT NULL,
  `alt_address_street` varchar(150) DEFAULT NULL,
  `alt_address_city` varchar(100) DEFAULT NULL,
  `alt_address_state` varchar(100) DEFAULT NULL,
  `alt_address_postalcode` varchar(20) DEFAULT NULL,
  `alt_address_country` varchar(255) DEFAULT NULL,
  `assistant` varchar(75) DEFAULT NULL,
  `assistant_phone` varchar(100) DEFAULT NULL,
  `tracker_key` int(11) NOT NULL,
  `birthdate` date DEFAULT NULL,
  `lead_id` char(36) DEFAULT NULL,
  `account_name` varchar(150) DEFAULT NULL,
  `campaign_id` char(36) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists`
--

CREATE TABLE `prospect_lists` (
  `assigned_user_id` char(36) DEFAULT NULL,
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_type` varchar(100) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `description` text,
  `domain_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_lists_prospects`
--

CREATE TABLE `prospect_lists_prospects` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `related_id` varchar(36) DEFAULT NULL,
  `related_type` varchar(25) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `prospect_list_campaigns`
--

CREATE TABLE `prospect_list_campaigns` (
  `id` varchar(36) NOT NULL,
  `prospect_list_id` varchar(36) DEFAULT NULL,
  `campaign_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relationships`
--

CREATE TABLE `relationships` (
  `id` char(36) NOT NULL,
  `relationship_name` varchar(150) DEFAULT NULL,
  `lhs_module` varchar(100) DEFAULT NULL,
  `lhs_table` varchar(64) DEFAULT NULL,
  `lhs_key` varchar(64) DEFAULT NULL,
  `rhs_module` varchar(100) DEFAULT NULL,
  `rhs_table` varchar(64) DEFAULT NULL,
  `rhs_key` varchar(64) DEFAULT NULL,
  `join_table` varchar(128) DEFAULT NULL,
  `join_key_lhs` varchar(128) DEFAULT NULL,
  `join_key_rhs` varchar(128) DEFAULT NULL,
  `relationship_type` varchar(64) DEFAULT NULL,
  `relationship_role_column` varchar(64) DEFAULT NULL,
  `relationship_role_column_value` varchar(50) DEFAULT NULL,
  `reverse` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `relationships`
--

INSERT INTO `relationships` (`id`, `relationship_name`, `lhs_module`, `lhs_table`, `lhs_key`, `rhs_module`, `rhs_table`, `rhs_key`, `join_table`, `join_key_lhs`, `join_key_rhs`, `relationship_type`, `relationship_role_column`, `relationship_role_column_value`, `reverse`, `deleted`) VALUES
('11670afc-91d1-a665-6906-579f4658c654', 'projects_calls', 'Project', 'project', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('11ecc3b4-a616-f6e1-1c08-579f46cee153', 'calls_notes', 'Calls', 'calls', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Calls', 0, 0),
('1202fd95-9659-db19-2530-579f4658466a', 'campaign_accounts', 'Campaigns', 'campaigns', 'id', 'Accounts', 'accounts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('133a8463-578e-c413-cc22-579f462e8c61', 'lead_meetings', 'Leads', 'leads', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('143fb3f6-85c6-a627-f8fa-579f4615fcdb', 'opportunities_modified_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('157ba4b6-686a-2e77-2b01-579f466d477d', 'documents_accounts', 'Documents', 'documents', 'id', 'Accounts', 'accounts', 'id', 'documents_accounts', 'document_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('16dce1f7-8adf-9ce5-dfe9-579f468a456f', 'document_revisions', 'Documents', 'documents', 'id', 'DocumentRevisions', 'document_revisions', 'document_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('16f5ee64-387a-2e15-9d9c-579f46a15c3c', 'emails_prospects_rel', 'Emails', 'emails', 'id', 'Prospects', 'prospects', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('1742221e-9cbb-93ea-5f61-579f464ddb82', 'user_direct_reports', 'Users', 'users', 'id', 'Users', 'users', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1c319aef-5dac-80a5-0d9f-579f4629dbfd', 'campaign_contacts', 'Campaigns', 'campaigns', 'id', 'Contacts', 'contacts', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1d8feb52-d7f3-fccb-ecc4-579f468bacc6', 'lead_calls', 'Leads', 'leads', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('1d9e637c-6c05-0c0b-9335-579f4659a526', 'projects_emails', 'Project', 'project', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('1f70f9dd-6cf9-2e81-4382-579f46188c92', 'emails_assigned_user', 'Users', 'users', 'id', 'Emails', 'emails', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('1f924fbf-2c26-13ec-f145-579f46ab5054', 'documents_contacts', 'Documents', 'documents', 'id', 'Contacts', 'contacts', 'id', 'documents_contacts', 'document_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('206c3172-3eea-ad45-0f46-579f46e45209', 'bugs_created_by', 'Users', 'users', 'id', 'Bugs', 'bugs', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('210efbc8-b3ed-2173-57d7-579f465059ab', 'meetings_contacts', 'Meetings', 'meetings', 'id', 'Contacts', 'contacts', 'id', 'meetings_contacts', 'meeting_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('21aef595-970a-da38-ff16-579f466b62f4', 'revisions_created_by', 'Users', 'users', 'id', 'DocumentRevisions', 'document_revisions', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('21e08888-5314-07cc-223c-579f46777457', 'prospect_emails', 'Prospects', 'prospects', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('228c4838-1c2c-47ae-2655-579f464e3cd7', 'la_loginaudit_created_by', 'Users', 'users', 'id', 'la_LoginAudit', 'la_loginaudit', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('230a13a6-9ad8-8774-95fb-579f460aea6c', 'opportunities_created_by', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('266860d3-30fc-59d5-f152-579f46a2d933', 'campaign_leads', 'Campaigns', 'campaigns', 'id', 'Leads', 'leads', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('27a60082-1549-501c-b736-579f4657df7a', 'emails_project_task_rel', 'Emails', 'emails', 'id', 'ProjectTask', 'project_task', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'ProjectTask', 0, 0),
('27d7f724-ea30-bf4e-3d20-579f463e3153', 'projects_project_tasks', 'Project', 'project', 'id', 'ProjectTask', 'project_task', 'project_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('280309bb-e58d-ad9a-789e-579f466ad99f', 'documents_created_by', 'Users', 'users', 'id', 'Documents', 'documents', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('29c5a983-09f7-ac00-83dc-579f46f95b14', 'documents_opportunities', 'Documents', 'documents', 'id', 'Opportunities', 'opportunities', 'id', 'documents_opportunities', 'document_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('29d47a01-28f2-98bc-7332-579f46c0c099', 'lead_emails', 'Leads', 'leads', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('2ae4b565-aa49-919a-c183-579f46122379', 'la_loginaudit_assigned_user', 'Users', 'users', 'id', 'la_LoginAudit', 'la_loginaudit', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2b47833e-9bd5-94e2-f9ac-579f46106e3a', 'meetings_users', 'Meetings', 'meetings', 'id', 'Users', 'users', 'id', 'meetings_users', 'meeting_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('2ca6211c-fda3-b0c8-f420-579f462b9361', 'emails_modified_user', 'Users', 'users', 'id', 'Emails', 'emails', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2d36a5fb-244f-6dc2-a2bb-579f467dda1e', 'opportunities_assigned_user', 'Users', 'users', 'id', 'Opportunities', 'opportunities', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('2db18460-2bec-317c-541c-579f462da412', 'prospect_campaign_log', 'Prospects', 'prospects', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Prospects', 0, 0),
('2eae7ddd-4be4-565b-6584-579f46e93faf', 'contact_tasks', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('303e6df9-626b-4bce-7708-579f46842b10', 'inbound_email_created_by', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('309768f0-cbaa-0e33-4ff1-579f46670b00', 'campaign_prospects', 'Campaigns', 'campaigns', 'id', 'Prospects', 'prospects', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3203ee97-3888-fc54-462a-579f46d3220e', 'projects_assigned_user', 'Users', 'users', 'id', 'Project', 'project', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('33e459da-101b-bb04-e382-579f464586c6', 'lead_campaign_log', 'Leads', 'leads', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Leads', 0, 0),
('33f707ce-f961-783c-3bd2-579f4679de10', 'documents_cases', 'Documents', 'documents', 'id', 'Cases', 'cases', 'id', 'documents_cases', 'document_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('357abd24-ffea-7496-4320-579f46250095', 'meetings_leads', 'Meetings', 'meetings', 'id', 'Leads', 'leads', 'id', 'meetings_leads', 'meeting_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('36b3f72e-77ea-93bf-64a3-579f46a45c3b', 'emails_created_by', 'Users', 'users', 'id', 'Emails', 'emails', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('36cd2576-bd2e-0dc8-b8ae-579f461f4d56', 'accounts_bugs', 'Accounts', 'accounts', 'id', 'Bugs', 'bugs', 'id', 'accounts_bugs', 'account_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('376c830f-a8be-474d-2a7c-579f461e45b0', 'opportunity_calls', 'Opportunities', 'opportunities', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('386ab424-cb63-b6e3-2393-579f4604e772', 'email_template_email_marketings', 'EmailTemplates', 'email_templates', 'id', 'EmailMarketing', 'email_marketing', 'template_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3acb7b2a-565c-1e29-d1d7-579f463a881e', 'campaign_opportunities', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3ae58e0e-1ac4-9867-e52d-579f46507784', 'bugs_assigned_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3c072209-7a1f-e8ef-539f-579f46f79810', 'users_email_addresses', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('3cd2e99c-640b-b011-9435-579f4699d6e8', 'contact_tasks_parent', 'Contacts', 'contacts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('3e294e14-91a9-edb8-9b31-579f466ef136', 'documents_bugs', 'Documents', 'documents', 'id', 'Bugs', 'bugs', 'id', 'documents_bugs', 'document_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('3e443245-3950-e716-7aa2-579f4665b6cc', 'projects_modified_user', 'Users', 'users', 'id', 'Project', 'project', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3f186230-58e8-1329-b5fe-579f4673f942', 'cases_modified_user', 'Users', 'users', 'id', 'Cases', 'cases', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('3fa6047c-063b-e3c5-2e59-579f46f372d1', 'opportunities_contacts', 'Opportunities', 'opportunities', 'id', 'Contacts', 'contacts', 'id', 'opportunities_contacts', 'opportunity_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('3feca176-4e0e-48fe-2c11-579f46a6a604', 'inbound_email_modified_user_id', 'Users', 'users', 'id', 'InboundEmail', 'inbound_email', 'modified_user_id', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('411564d7-9be9-3d11-8760-579f46d4e45c', 'emails_notes_rel', 'Emails', 'emails', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('41bbd0a7-5f81-fdf4-af4b-579f4687645b', 'opportunity_meetings', 'Opportunities', 'opportunities', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('432e85cf-a0ca-6449-dfa9-579f46a0f0da', 'accounts_contacts', 'Accounts', 'accounts', 'id', 'Contacts', 'contacts', 'id', 'accounts_contacts', 'account_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('44fbc184-728e-d7b8-a818-579f4653ac5c', 'campaign_email_marketing', 'Campaigns', 'campaigns', 'id', 'EmailMarketing', 'email_marketing', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('469c7d8e-fee9-2270-5f15-579f463cb150', 'campaign_campaigntrakers', 'Campaigns', 'campaigns', 'id', 'CampaignTrackers', 'campaign_trkrs', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('470b02eb-9cb0-3166-192b-579f463e228e', 'contact_notes_parent', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Contacts', 0, 0),
('477b0f43-c862-a7e5-0fba-579f46a792bb', 'prospect_calls', 'Prospects', 'prospects', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('49daf9b7-4261-942d-d9ed-579f4686d414', 'prospect_list_campaigns', 'ProspectLists', 'prospect_lists', 'id', 'Campaigns', 'campaigns', 'id', 'prospect_list_campaigns', 'prospect_list_id', 'campaign_id', 'many-to-many', NULL, NULL, 0, 0),
('4a7e67da-e929-2bc8-918c-579f464e195f', 'projects_created_by', 'Users', 'users', 'id', 'Project', 'project', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4a957519-55bb-7637-42c2-579f468817e6', 'saved_search_assigned_user', 'Users', 'users', 'id', 'SavedSearch', 'saved_search', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4b18b37c-d1e6-0a1b-85e8-579f469abd5f', 'emails_contacts_rel', 'Emails', 'emails', 'id', 'Contacts', 'contacts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('4bce0fb6-6bf7-ea87-77d4-579f4616e3bc', 'opportunity_tasks', 'Opportunities', 'opportunities', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('4c6877e8-3b6a-97e9-2f54-579f46c3bc72', 'cases_created_by', 'Users', 'users', 'id', 'Cases', 'cases', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4d64d38c-912f-23b0-9a38-579f465612ca', 'accounts_opportunities', 'Accounts', 'accounts', 'id', 'Opportunities', 'opportunities', 'id', 'accounts_opportunities', 'account_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('4f32ee2e-69a4-cbb8-48f6-579f46eac6b1', 'campaign_emailman', 'Campaigns', 'campaigns', 'id', 'EmailMan', 'emailman', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('4f86599a-c72b-0237-2e9e-579f46de9694', 'bug_tasks', 'Bugs', 'bugs', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('505f6904-0ef5-bc49-04a5-579f46b9d8b5', 'users_email_addresses_primary', 'Users', 'users', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('513b2483-8d01-1abd-c862-579f46293427', 'contact_campaign_log', 'Contacts', 'contacts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Contacts', 0, 0),
('54117f6e-efac-d75d-1461-579f46738978', 'prospect_list_contacts', 'ProspectLists', 'prospect_lists', 'id', 'Contacts', 'contacts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Contacts', 0, 0),
('554bcfd8-d0d1-2db1-d4db-579f465f202f', 'emails_accounts_rel', 'Emails', 'emails', 'id', 'Accounts', 'accounts', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('55ff0c4a-9a78-16a3-b8ae-579f46104945', 'opportunity_notes', 'Opportunities', 'opportunities', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('56ad46d2-e838-3076-f2fa-579f462cfbcb', 'schedulers_created_by_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'created_by', NULL, NULL, NULL, 'one-to-one', NULL, NULL, 0, 0),
('57b09696-72c5-1835-dda4-579f46674208', 'calls_contacts', 'Calls', 'calls', 'id', 'Contacts', 'contacts', 'id', 'calls_contacts', 'call_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('5847c4f4-4ab0-e64c-d05e-579f466c402c', 'project_tasks_notes', 'ProjectTask', 'project_task', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('58db4bf0-5bab-5559-2679-579f46f3e609', 'cases_assigned_user', 'Users', 'users', 'id', 'Cases', 'cases', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('59638aa3-65ec-02af-d644-579f46ec1211', 'sugarfeed_modified_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5965692a-007c-da51-0e09-579f46dd942a', 'campaign_campaignlog', 'Campaigns', 'campaigns', 'id', 'CampaignLog', 'campaign_log', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5aec0ef1-93b1-778c-379e-579f46f9d9b5', 'calls_assigned_user', 'Users', 'users', 'id', 'Calls', 'calls', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5d5373fb-2092-505f-69ec-579f46f83c8c', 'accounts_modified_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('5e41b9b6-6b8b-c359-0c5a-579f46b5ca0c', 'prospect_list_prospects', 'ProspectLists', 'prospect_lists', 'id', 'Prospects', 'prospects', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Prospects', 0, 0),
('5f7dcb13-fb60-06c7-4637-579f46c002d2', 'emails_leads_rel', 'Emails', 'emails', 'id', 'Leads', 'leads', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('602e15ce-4615-1eb5-8646-579f46c498da', 'opportunity_emails', 'Opportunities', 'opportunities', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Opportunities', 0, 0),
('609fcfe2-0388-1c46-3fe5-579f46480b0a', 'bug_meetings', 'Bugs', 'bugs', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('61c2ac73-d438-cfa0-5b82-579f467c0ff7', 'calls_users', 'Calls', 'calls', 'id', 'Users', 'users', 'id', 'calls_users', 'call_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('62e62df6-d113-2a0f-88de-579f467c22b1', 'schedulers_modified_user_id_rel', 'Users', 'users', 'id', 'Schedulers', 'schedulers', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('633f90be-dd0a-ad6e-5fa8-579f46c6a87a', 'case_calls', 'Cases', 'cases', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('63d66b58-109c-7cc7-9300-579f4601de9a', 'campaign_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('65c815ad-387d-dabc-afe1-579f46cbfe11', 'campaignlog_contact', 'CampaignLog', 'campaign_log', 'related_id', 'Contacts', 'contacts', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('66abb958-0498-f44d-fd2b-579f46a373c4', 'sugarfeed_created_by', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6892159f-ff80-1997-d4c3-579f4681f462', 'prospect_list_leads', 'ProspectLists', 'prospect_lists', 'id', 'Leads', 'leads', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Leads', 0, 0),
('6921da7c-1d4d-7a11-4be3-579f46b0a8cc', 'project_tasks_tasks', 'ProjectTask', 'project_task', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('69c10343-bdcb-0c87-b0d4-579f461413c5', 'accounts_created_by', 'Users', 'users', 'id', 'Accounts', 'accounts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6a64b12e-89fe-dbb3-ed43-579f46f17266', 'opportunity_leads', 'Opportunities', 'opportunities', 'id', 'Leads', 'leads', 'opportunity_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6b8b0172-a1b5-b9db-c7c1-579f465d8e3d', 'projects_meetings', 'Project', 'project', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('6bb8622b-9ae1-9844-fd28-579f46560d1f', 'emails_meetings_rel', 'Emails', 'emails', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6beefc8b-8046-47a9-e19f-579f46d1f859', 'calls_leads', 'Calls', 'calls', 'id', 'Leads', 'leads', 'id', 'calls_leads', 'call_id', 'lead_id', 'many-to-many', NULL, NULL, 0, 0),
('6d746d46-35aa-eaa3-5e94-579f462966b6', 'case_tasks', 'Cases', 'cases', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('6dcf09b3-9b42-921d-9308-579f463f6edb', 'campaign_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('6f1cac3f-9230-0962-1135-579f4639f6a0', 'schedulers_jobs_rel', 'Schedulers', 'schedulers', 'id', 'SchedulersJobs', 'job_queue', 'scheduler_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('70d6ca4d-f090-c37c-aad6-579f46af1ffb', 'sugarfeed_assigned_user', 'Users', 'users', 'id', 'SugarFeed', 'sugarfeed', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('729f6eb1-34d7-660d-b4b1-579f46c32abd', 'prospect_list_users', 'ProspectLists', 'prospect_lists', 'id', 'Users', 'users', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Users', 0, 0),
('73f4d951-f701-c7be-4f7b-579f466ac7d7', 'accounts_assigned_user', 'Users', 'users', 'id', 'Accounts', 'accounts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('742c3df8-a7b8-d3d5-a016-579f46506347', 'bug_calls', 'Bugs', 'bugs', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('74988e39-d128-a7ff-82db-579f465e1ff8', 'opportunity_currencies', 'Opportunities', 'opportunities', 'currency_id', 'Currencies', 'currencies', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7699d625-87fc-6c18-d9b3-579f46b109f4', 'campaignlog_lead', 'CampaignLog', 'campaign_log', 'related_id', 'Leads', 'leads', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('77a49220-f0a9-6a00-50ee-579f46524e17', 'case_notes', 'Cases', 'cases', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('7b6ae1b2-7566-beae-118b-579f466deea7', 'project_tasks_meetings', 'ProjectTask', 'project_task', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('7b824cdb-152f-9297-f23a-579f468fdb87', 'cases_bugs', 'Cases', 'cases', 'id', 'Bugs', 'bugs', 'id', 'cases_bugs', 'case_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('7cd00147-702d-4f9a-d158-579f46b11d12', 'campaigns_assigned_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('7d2a5aa3-4356-cee9-9a5e-579f464f030a', 'schedulersjobs_assigned_user', 'Users', 'users', 'id', 'SchedulersJobs', 'schedulersjobs', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('80d5d684-4426-b664-6d66-579f46c4a6e2', 'meetings_modified_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('8189884f-e2c3-62e7-25d4-579f4656b735', 'prospect_list_accounts', 'ProspectLists', 'prospect_lists', 'id', 'Accounts', 'accounts', 'id', 'prospect_lists_prospects', 'prospect_list_id', 'related_id', 'many-to-many', 'related_type', 'Accounts', 0, 0),
('8379dba3-b1b0-ba71-0aee-579f46e5117c', 'eapm_modified_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('87250b47-bee0-a32a-cba7-579f46fc17ce', 'account_campaign_log', 'Accounts', 'accounts', 'id', 'CampaignLog', 'campaign_log', 'target_id', NULL, NULL, NULL, 'one-to-many', 'target_type', 'Accounts', 0, 0),
('8a8a7e3d-00c3-2812-ae44-579f46fd563e', 'prospectlists_assigned_user', 'Users', 'users', 'id', 'prospectlists', 'prospect_lists', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('90a0069f-3678-c4a5-2f6a-579f464828f3', 'lead_notes', 'Leads', 'leads', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('9182a685-367f-622d-d0bd-579f464d7690', 'opportunities_campaign', 'Campaigns', 'campaigns', 'id', 'Opportunities', 'opportunities', 'campaign_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('921f042f-2e65-990c-9791-579f4680e67e', 'bugs_modified_user', 'Users', 'users', 'id', 'Bugs', 'bugs', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('92849eb4-20e8-f931-1ed8-579f4691f7fc', 'accounts_email_addresses', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Accounts', 0, 0),
('94408821-823d-6b37-e1b2-579f46e38c2e', 'contacts_bugs', 'Contacts', 'contacts', 'id', 'Bugs', 'bugs', 'id', 'contacts_bugs', 'contact_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('9847e6c0-fcd0-7a45-91fb-579f46a292bb', 'case_meetings', 'Cases', 'cases', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('98c17342-f2ee-5566-8b1d-579f46ac1013', 'contacts_modified_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9ab1b47f-7118-7bdc-2d7f-579f46e0d98a', 'meetings_created_by', 'Users', 'users', 'id', 'Meetings', 'meetings', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('9c1cd9b0-f2e2-3115-97f0-579f46e459f5', 'project_tasks_calls', 'ProjectTask', 'project_task', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('9c6936d2-9b65-9228-8997-579f46645425', 'roles_users', 'Roles', 'roles', 'id', 'Users', 'users', 'id', 'roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('9fe9a8b8-f174-7c0a-3f9b-579f46de6e03', 'eapm_created_by', 'Users', 'users', 'id', 'EAPM', 'eapm', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a0d1c631-e823-e689-a007-579f461bca6d', 'accounts_email_addresses_primary', 'Accounts', 'accounts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('a1006396-e5cc-6bc9-8e35-579f46c100ee', 'bug_emails', 'Bugs', 'bugs', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('a27e1dd3-3d13-c703-60ea-579f4661bf16', 'prospects_modified_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a4df6a0d-cbc3-410b-b944-579f46254078', 'meetings_assigned_user', 'Users', 'users', 'id', 'Meetings', 'meetings', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a50b31d3-14cf-ab92-9117-579f4664f882', 'contacts_cases', 'Contacts', 'contacts', 'id', 'Cases', 'cases', 'id', 'contacts_cases', 'contact_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('a5676f56-dd73-ca2e-802e-579f466432f3', 'campaignlog_created_opportunities', 'CampaignLog', 'campaign_log', 'related_id', 'Opportunities', 'opportunities', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a7c93c4f-dfb8-93bf-a0fa-579f46c20601', 'emailtemplates_assigned_user', 'Users', 'users', 'id', 'EmailTemplates', 'email_templates', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('a85302cd-7d26-b4c0-c7d2-579f4602f3e2', 'la_loginaudit_modified_user', 'Users', 'users', 'id', 'la_LoginAudit', 'la_loginaudit', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ab076c84-0e06-793f-14c5-579f460c4823', 'member_accounts', 'Accounts', 'accounts', 'id', 'Accounts', 'accounts', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('adccec8a-c9c2-b851-6f3a-579f46928bc3', 'projects_bugs', 'Project', 'project', 'id', 'Bugs', 'bugs', 'id', 'projects_bugs', 'project_id', 'bug_id', 'many-to-many', NULL, NULL, 0, 0),
('ae65e395-9c69-a455-76ed-579f46e36d62', 'contacts_created_by', 'Users', 'users', 'id', 'Contacts', 'contacts', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('af162681-142f-2053-b2e4-579f465d28ea', 'meetings_notes', 'Meetings', 'meetings', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Meetings', 0, 0),
('b13a81b2-db2a-c0ff-e5e0-579f469bb7fd', 'prospects_created_by', 'Users', 'users', 'id', 'Prospects', 'prospects', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b2202d40-7125-ac66-2ac9-579f46936e3f', 'eapm_assigned_user', 'Users', 'users', 'id', 'EAPM', 'eapm', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b28365a8-687c-38ba-a3df-579f46b214ee', 'project_tasks_emails', 'ProjectTask', 'project_task', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'ProjectTask', 0, 0),
('b2e00d0f-2709-e66a-fc82-579f46142a10', 'leads_documents', 'Leads', 'leads', 'id', 'Documents', 'documents', 'id', 'linked_documents', 'parent_id', 'document_id', 'many-to-many', 'parent_type', 'Leads', 0, 0),
('b3972e41-8f0f-60a9-b9c4-579f46f7182a', 'leads_modified_user', 'Users', 'users', 'id', 'Leads', 'leads', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b5363fc9-0f69-1ef9-e5ae-579f463a382a', 'account_cases', 'Accounts', 'accounts', 'id', 'Cases', 'cases', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7392aac-33e9-a6c6-c1b0-579f4696c2e3', 'notes_assigned_user', 'Users', 'users', 'id', 'Notes', 'notes', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7c2d71f-e40d-e7b3-c97f-579f46ade76f', 'campaignlog_targeted_users', 'CampaignLog', 'campaign_log', 'target_id', 'Users', 'users', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('b7f7edfa-c637-c659-f3dc-579f46b212f8', 'projects_cases', 'Project', 'project', 'id', 'Cases', 'cases', 'id', 'projects_cases', 'project_id', 'case_id', 'many-to-many', NULL, NULL, 0, 0),
('b9701e56-4df8-8d52-dde5-579f46e3404f', 'contacts_users', 'Contacts', 'contacts', 'id', 'Users', 'users', 'id', 'contacts_users', 'contact_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('b9778fb3-96b2-ebc0-91c4-579f46ec1971', 'case_emails', 'Cases', 'cases', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Cases', 0, 0),
('babd282d-ef8a-664d-9aa8-579f46f4b64c', 'contacts_assigned_user', 'Users', 'users', 'id', 'Contacts', 'contacts', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bafe386e-9f3e-7d38-a153-579f46694e56', 'tasks_modified_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bba0d8fb-5616-6d12-fd4c-579f46e1e466', 'prospects_assigned_user', 'Users', 'users', 'id', 'Prospects', 'prospects', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bcdff5d5-7b6a-bba1-e9bd-579f46bafc5b', 'oauthkeys_modified_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bd6fe35a-3d82-c32a-138f-579f467604ec', 'bug_notes', 'Bugs', 'bugs', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Bugs', 0, 0),
('beb9bdc7-76ba-e0ab-666d-579f464bfcbe', 'project_tasks_assigned_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('bf649fda-edf9-721b-3a2b-579f4603bcab', 'account_tasks', 'Accounts', 'accounts', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('c01736d6-8605-1176-8142-579f46a5f363', 'leads_created_by', 'Users', 'users', 'id', 'Leads', 'leads', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c1f62a2b-66ae-2ad1-69dd-579f46cc043b', 'campaignlog_sent_emails', 'CampaignLog', 'campaign_log', 'related_id', 'Emails', 'emails', 'id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c22b5888-8b2b-9dc9-c1d5-579f46687ee3', 'projects_accounts', 'Project', 'project', 'id', 'Accounts', 'accounts', 'id', 'projects_accounts', 'project_id', 'account_id', 'many-to-many', NULL, NULL, 0, 0),
('c3b99ab9-587f-81b6-043e-579f464510cd', 'emails_bugs_rel', 'Emails', 'emails', 'id', 'Bugs', 'bugs', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Bugs', 0, 0),
('c4c1d66a-4423-66bb-4f3b-579f463d7594', 'notes_modified_user', 'Users', 'users', 'id', 'Notes', 'notes', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c59c5a6d-831b-155c-e318-579f4696aa9b', 'prospects_email_addresses', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Prospects', 0, 0),
('c6e3ca3d-2594-c2df-58b2-579f46f08455', 'contacts_email_addresses', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Contacts', 0, 0),
('c79fb67a-6dd8-36ae-361d-579f469d1d4c', 'tasks_created_by', 'Users', 'users', 'id', 'Tasks', 'tasks', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('c99986e1-d48d-59e5-5323-579f46f564e6', 'account_notes', 'Accounts', 'accounts', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('ca30c7ee-28d7-2b41-7aa2-579f4669fb2f', 'leads_assigned_user', 'Users', 'users', 'id', 'Leads', 'leads', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('caa909b5-168b-636d-8013-579f46b15f9a', 'emails_projects_rel', 'Emails', 'emails', 'id', 'Project', 'project', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Project', 0, 0),
('caaae25d-17cc-1ccf-7c3e-579f4625b784', 'oauthkeys_created_by', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('caf34a3e-6cb5-96dc-2760-579f46adb10c', 'project_tasks_modified_user', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cb160b90-010a-02f9-54af-579f46d4fa2c', 'documents_assigned_user', 'Users', 'users', 'id', 'Documents', 'documents', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('cc58828b-210f-6367-31db-579f46594ff4', 'projects_contacts', 'Project', 'project', 'id', 'Contacts', 'contacts', 'id', 'projects_contacts', 'project_id', 'contact_id', 'many-to-many', NULL, NULL, 0, 0),
('cdd275e5-cc82-8c0a-5cbb-579f46c50210', 'emails_cases_rel', 'Emails', 'emails', 'id', 'Cases', 'cases', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Cases', 0, 0),
('cfcb03ab-11a9-0894-6402-579f464b87c8', 'prospects_email_addresses_primary', 'Prospects', 'prospects', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d0feb80c-c322-38d6-4fbb-579f46a7f9a2', 'notes_created_by', 'Users', 'users', 'id', 'Notes', 'notes', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d1d37888-6427-7f89-070f-579f4637dbf1', 'tasks_assigned_user', 'Users', 'users', 'id', 'Tasks', 'tasks', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d28ef89c-1bb2-16cf-eab8-579f4609d6a4', 'projects_notes', 'Project', 'project', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('d3226346-66fa-17e2-2792-579f465b6af6', 'contacts_email_addresses_primary', 'Contacts', 'contacts', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('d3ca74d7-266c-0382-83f0-579f4696753e', 'account_meetings', 'Accounts', 'accounts', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('d4610321-a722-e18a-daf0-579f46473b43', 'leads_email_addresses', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'bean_module', 'Leads', 0, 0),
('d4d884e6-7750-e09e-f64e-579f467ce0c8', 'oauthkeys_assigned_user', 'Users', 'users', 'id', 'OAuthKeys', 'oauthkeys', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d6ad20c5-f060-e587-3284-579f465d49c9', 'projects_opportunities', 'Project', 'project', 'id', 'Opportunities', 'opportunities', 'id', 'projects_opportunities', 'project_id', 'opportunity_id', 'many-to-many', NULL, NULL, 0, 0),
('d7359bfb-65a9-4fba-32c9-579f4631a802', 'project_tasks_created_by', 'Users', 'users', 'id', 'ProjectTask', 'project_task', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('d81f4fec-58a7-2dcb-a321-579f46214f6d', 'emails_opportunities_rel', 'Emails', 'emails', 'id', 'Opportunities', 'opportunities', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Opportunities', 0, 0),
('da05f2db-e525-e31d-fce7-579f466719b8', 'prospect_tasks', 'Prospects', 'prospects', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('dbe52675-9b0d-632e-851d-579f46db56d3', 'bugs_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'found_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('dc07904e-73bf-c92c-3ec2-579f4617a42b', 'tasks_notes', 'Tasks', 'tasks', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de01bf52-6388-80e6-f697-579f4655d9ca', 'account_calls', 'Accounts', 'accounts', 'id', 'Calls', 'calls', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('de42322c-5601-6f66-9ae1-579f46e02b35', 'calls_modified_user', 'Users', 'users', 'id', 'Calls', 'calls', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('de983f22-ac47-2738-54eb-579f461b7644', 'leads_email_addresses_primary', 'Leads', 'leads', 'id', 'EmailAddresses', 'email_addresses', 'id', 'email_addr_bean_rel', 'bean_id', 'email_address_id', 'many-to-many', 'primary_address', '1', 0, 0),
('deb90c94-42c1-e69f-4d0b-579f462a1ea2', 'contact_notes', 'Contacts', 'contacts', 'id', 'Notes', 'notes', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df567291-690b-98af-948f-579f46ccba3e', 'contact_direct_reports', 'Contacts', 'contacts', 'id', 'Contacts', 'contacts', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('df7b1515-bcfc-967a-b400-579f467bc1e7', 'consumer_tokens', 'OAuthKeys', 'oauth_consumer', 'id', 'OAuthTokens', 'oauth_tokens', 'consumer', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e0bca079-a175-be72-646e-579f46986cf6', 'acl_roles_actions', 'ACLRoles', 'acl_roles', 'id', 'ACLActions', 'acl_actions', 'id', 'acl_roles_actions', 'role_id', 'action_id', 'many-to-many', NULL, NULL, 0, 0),
('e23837c7-ea2d-894e-6ebd-579f468e1236', 'emails_tasks_rel', 'Emails', 'emails', 'id', 'Tasks', 'tasks', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Tasks', 0, 0),
('e435a6bb-0aec-2f10-a0ba-579f46e9537e', 'prospect_notes', 'Prospects', 'prospects', 'id', 'Notes', 'notes', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('e49a3c40-9345-dd4b-c328-579f46a84ea2', 'campaigns_modified_user', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e680d107-afb1-5c45-0afd-579f46fcd17e', 'projects_tasks', 'Project', 'project', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Project', 0, 0),
('e82e84fd-0339-9490-9ab6-579f4625eab7', 'account_emails', 'Accounts', 'accounts', 'id', 'Emails', 'emails', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Accounts', 0, 0),
('e8c690a4-14cf-9e7f-734e-579f46de921d', 'lead_direct_reports', 'Leads', 'leads', 'id', 'Leads', 'leads', 'reports_to_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('e947a5d6-7db1-c502-41a0-579f463be858', 'documents_modified_user', 'Users', 'users', 'id', 'Documents', 'documents', 'modified_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('eaeb976b-3d83-02fe-e586-579f46dc0493', 'acl_roles_users', 'ACLRoles', 'acl_roles', 'id', 'Users', 'users', 'id', 'acl_roles_users', 'role_id', 'user_id', 'many-to-many', NULL, NULL, 0, 0),
('ecad8e44-f39b-d891-4f93-579f46039d1f', 'emails_users_rel', 'Emails', 'emails', 'id', 'Users', 'users', 'id', 'emails_beans', 'email_id', 'bean_id', 'many-to-many', 'bean_module', 'Users', 0, 0),
('edbf43a1-3c37-9db0-7b93-579f46554f92', 'calls_created_by', 'Users', 'users', 'id', 'Calls', 'calls', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('ee655f32-ab8f-cb72-45fe-579f4662adc8', 'prospect_meetings', 'Prospects', 'prospects', 'id', 'Meetings', 'meetings', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Prospects', 0, 0),
('f051721d-9a02-f87b-bae9-579f464723a8', 'contact_leads', 'Contacts', 'contacts', 'id', 'Leads', 'leads', 'contact_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f0821da9-f17b-8203-605b-579f469855bc', 'bugs_fixed_in_release', 'Releases', 'releases', 'id', 'Bugs', 'bugs', 'fixed_in_release', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1c5c678-ce26-670f-3193-579f464b1a81', 'campaigns_created_by', 'Users', 'users', 'id', 'Campaigns', 'campaigns', 'created_by', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f1e2abc3-ac84-1cea-144b-579f462de4ac', 'oauthtokens_assigned_user', 'Users', 'users', 'id', 'OAuthTokens', 'oauth_tokens', 'assigned_user_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f267abf1-2402-8203-fe05-579f46777e6d', 'account_leads', 'Accounts', 'accounts', 'id', 'Leads', 'leads', 'account_id', NULL, NULL, NULL, 'one-to-many', NULL, NULL, 0, 0),
('f2f850c0-c557-c476-1a67-579f46ac21bd', 'lead_tasks', 'Leads', 'leads', 'id', 'Tasks', 'tasks', 'parent_id', NULL, NULL, NULL, 'one-to-many', 'parent_type', 'Leads', 0, 0),
('fb300e55-1eef-026d-0a14-579f46801023', 'email_marketing_prospect_lists', 'EmailMarketing', 'email_marketing', 'id', 'ProspectLists', 'prospect_lists', 'id', 'email_marketing_prospect_lists', 'email_marketing_id', 'prospect_list_id', 'many-to-many', NULL, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `releases`
--

CREATE TABLE `releases` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `list_order` int(4) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` text,
  `modules` text,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_modules`
--

CREATE TABLE `roles_modules` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `module_id` varchar(36) DEFAULT NULL,
  `allow` tinyint(1) DEFAULT '0',
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` varchar(36) NOT NULL,
  `role_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `saved_search`
--

CREATE TABLE `saved_search` (
  `id` char(36) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `search_module` varchar(150) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `schedulers`
--

CREATE TABLE `schedulers` (
  `id` varchar(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `job` varchar(255) DEFAULT NULL,
  `date_time_start` datetime DEFAULT NULL,
  `date_time_end` datetime DEFAULT NULL,
  `job_interval` varchar(100) DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `last_run` datetime DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `catch_up` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schedulers`
--

INSERT INTO `schedulers` (`id`, `deleted`, `date_entered`, `date_modified`, `created_by`, `modified_user_id`, `name`, `job`, `date_time_start`, `date_time_end`, `job_interval`, `time_from`, `time_to`, `last_run`, `status`, `catch_up`) VALUES
('320ef4f2-d127-58af-cdbf-56960394097a', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Prune Tracker Tables', 'function::trimTracker', '2005-01-01 08:15:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1),
('46ffe83c-cb9b-b12d-d568-5696039790a6', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Check Inbound Mailboxes', 'function::pollMonitoredInboxes', '2005-01-01 12:30:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('60c0f7bf-0d36-b554-1ac3-5696036a108f', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Run Nightly Process Bounced Campaign Emails', 'function::pollMonitoredInboxesForBouncedCampaignEmails', '2005-01-01 06:30:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('83a42b07-fcb8-71e5-9dff-569603f3787a', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Run Nightly Mass Email Campaigns', 'function::runMassEmailCampaign', '2005-01-01 16:15:01', '2020-12-31 23:59:59', '0::2-6::*::*::*', NULL, NULL, NULL, 'Active', 1),
('9dd5d27a-5cfa-c7c4-05e2-5696030df6b7', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Prune Database on 1st of Month', 'function::pruneDatabase', '2005-01-01 13:45:01', '2020-12-31 23:59:59', '0::4::1::*::*', NULL, NULL, NULL, 'Inactive', 0),
('aa11b530-816e-2d0f-19e9-569603afd062', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Run Email Reminder Notifications', 'function::sendEmailReminders', '2008-01-01 10:15:01', '2020-12-31 23:59:59', '*::*::*::*::*', NULL, NULL, NULL, 'Active', 0),
('b65d3319-48fe-96b9-91a4-569603ab8178', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Clean Jobs Queue', 'function::cleanJobQueue', '2012-01-01 19:30:01', '2030-12-31 23:59:59', '0::5::*::*::*', NULL, NULL, NULL, 'Active', 0),
('c2890556-a129-ac41-fe5f-5696033ee8aa', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Removal of documents from filesystem', 'function::removeDocumentsFromFS', '2012-01-01 14:15:01', '2030-12-31 23:59:59', '0::3::1::*::*', NULL, NULL, NULL, 'Active', 0),
('cebdd9f4-f4a4-7ac0-4b63-5696034f8b46', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Prune SugarFeed Tables', 'function::trimSugarFeeds', '2005-01-01 14:45:01', '2020-12-31 23:59:59', '0::2::1::*::*', NULL, NULL, NULL, 'Active', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sugarfeed`
--

CREATE TABLE `sugarfeed` (
  `id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `related_module` varchar(100) DEFAULT NULL,
  `related_id` char(36) DEFAULT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `link_type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` char(36) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `description` text,
  `deleted` tinyint(1) DEFAULT '0',
  `assigned_user_id` char(36) DEFAULT NULL,
  `status` varchar(100) DEFAULT 'Not Started',
  `date_due_flag` tinyint(1) DEFAULT '0',
  `date_due` datetime DEFAULT NULL,
  `date_start_flag` tinyint(1) DEFAULT '0',
  `date_start` datetime DEFAULT NULL,
  `parent_type` varchar(255) DEFAULT NULL,
  `parent_id` char(36) DEFAULT NULL,
  `contact_id` char(36) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `monitor_id` char(36) NOT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(255) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `session_id` varchar(36) DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `upgrade_history`
--

CREATE TABLE `upgrade_history` (
  `id` char(36) NOT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `md5sum` varchar(32) DEFAULT NULL,
  `type` varchar(30) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` varchar(64) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `id_name` varchar(255) DEFAULT NULL,
  `manifest` longtext,
  `date_entered` datetime DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `upgrade_history`
--

INSERT INTO `upgrade_history` (`id`, `filename`, `md5sum`, `type`, `status`, `version`, `name`, `description`, `id_name`, `manifest`, `date_entered`, `enabled`) VALUES
('2de1428d-feec-7860-4546-576954056818', 'upload/upgrades/module/CalendarDomReadyFix.zip', 'aa79afc892185ef7084c5eb92c7d36b7', 'module', 'installed', '1.0.0', 'CalendarDisintegrationPatch', 'In Calendar Replace YAHOO.util.Event.onDOMReady to $(document).ready() because not triggered right time', 'CalendarDisintegrationPatch', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6MTp7aTowO3M6NToiNi41LioiO319czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo0OiJuYW1lIjtzOjI3OiJDYWxlbmRhckRpc2ludGVncmF0aW9uUGF0Y2giO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjEwMzoiSW4gQ2FsZW5kYXIgUmVwbGFjZSBZQUhPTy51dGlsLkV2ZW50Lm9uRE9NUmVhZHkgdG8gJChkb2N1bWVudCkucmVhZHkoKSBiZWNhdXNlIG5vdCB0cmlnZ2VyZWQgcmlnaHQgdGltZSI7czo2OiJhdXRob3IiO3M6Mjc6IkvDs2JvciBac29sdCwgU291bHdhcmUgTHRkLiI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTYvMDIvMTAiO3M6NzoidmVyc2lvbiI7czo1OiIxLjAuMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO31zOjExOiJpbnN0YWxsZGVmcyI7YToyOntzOjI6ImlkIjtzOjI3OiJDYWxlbmRhckRpc2ludGVncmF0aW9uUGF0Y2giO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDg6IjxiYXNlcGF0aD4vY3VzdG9tL21vZHVsZXMvQ2FsZW5kYXIvdHBscy9tYWluLnRwbCI7czoyOiJ0byI7czozNzoiY3VzdG9tL21vZHVsZXMvQ2FsZW5kYXIvdHBscy9tYWluLnRwbCI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2016-06-21 14:52:24', 1),
('3b61c1b4-7cae-c81e-b3d9-579f541b1f48', 'upload/upgrades/module/HungarianNameFormat.zip', '25422d4e813dcadd145fc92bf619a715', 'module', 'installed', '0.9.0', 'SoulwareHungarianNameFormat', 'Switches first and last name fileds in forms.', 'SoulwareHungarianNameFormat', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6Njp7aTowO3M6NToiNS4wLioiO2k6MTtzOjU6IjUuMS4qIjtpOjI7czo1OiI1LjIuKiI7aTozO3M6NToiNS41LioiO2k6NDtzOjU6IjYuNC4qIjtpOjU7czo1OiI2LjUuKiI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjQ6Im5hbWUiO3M6Mjc6IlNvdWx3YXJlSHVuZ2FyaWFuTmFtZUZvcm1hdCI7czoxMToiZGVzY3JpcHRpb24iO3M6NDU6IlN3aXRjaGVzIGZpcnN0IGFuZCBsYXN0IG5hbWUgZmlsZWRzIGluIGZvcm1zLiI7czo2OiJhdXRob3IiO3M6Mjg6IkfDoWJvciBEYXJ2YXMsIFNvdWx3YXJlIEx0ZC4iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE0LzAyLzI1IjtzOjc6InZlcnNpb24iO3M6NToiMC45LjAiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mjp7czoyOiJpZCI7czoyNzoiU291bHdhcmVIdW5nYXJpYW5OYW1lRm9ybWF0IjtzOjQ6ImNvcHkiO2E6MDp7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2016-08-01 13:53:12', 1),
('57b38882-2ea1-a8ee-bfd9-56960e409f11', 'upload/upgrades/module/HungarianAddress.zip', '531b57d5115eb419cc329ab794ca7d6e', 'module', 'installed', '0.9.0', 'SoulwareHungarianAddress', 'Removes state from Address fields, as Hungarian addresses don''t need it.', 'SoulwareHungarianAddress', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6Njp7aTowO3M6NToiNS4wLioiO2k6MTtzOjU6IjUuMS4qIjtpOjI7czo1OiI1LjIuKiI7aTozO3M6NToiNS41LioiO2k6NDtzOjU6IjYuNC4qIjtpOjU7czo1OiI2LjUuKiI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjQ6Im5hbWUiO3M6MjQ6IlNvdWx3YXJlSHVuZ2FyaWFuQWRkcmVzcyI7czoxMToiZGVzY3JpcHRpb24iO3M6NzI6IlJlbW92ZXMgc3RhdGUgZnJvbSBBZGRyZXNzIGZpZWxkcywgYXMgSHVuZ2FyaWFuIGFkZHJlc3NlcyBkb24ndCBuZWVkIGl0LiI7czo2OiJhdXRob3IiO3M6Mjg6IkfDoWJvciBEYXJ2YXMsIFNvdWx3YXJlIEx0ZC4iO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjEwOiIyMDE0LzAyLzI0IjtzOjc6InZlcnNpb24iO3M6NToiMC45LjAiO3M6NDoidHlwZSI7czo2OiJtb2R1bGUiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTt9czoxMToiaW5zdGFsbGRlZnMiO2E6Mjp7czoyOiJpZCI7czoyNDoiU291bHdhcmVIdW5nYXJpYW5BZGRyZXNzIjtzOjQ6ImNvcHkiO2E6Njp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjY3OiI8YmFzZXBhdGg+L2N1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9BZGRyZXNzL0RldGFpbFZpZXcudHBsIjtzOjI6InRvIjtzOjU2OiJjdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvQWRkcmVzcy9EZXRhaWxWaWV3LnRwbCI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo2NToiPGJhc2VwYXRoPi9jdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvQWRkcmVzcy9FZGl0Vmlldy50cGwiO3M6MjoidG8iO3M6NTQ6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9BZGRyZXNzL0VkaXRWaWV3LnRwbCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo3MzoiPGJhc2VwYXRoPi9jdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvQWRkcmVzcy9lbl91cy5EZXRhaWxWaWV3LnRwbCI7czoyOiJ0byI7czo2MjoiY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0FkZHJlc3MvZW5fdXMuRGV0YWlsVmlldy50cGwiO31pOjM7YToyOntzOjQ6ImZyb20iO3M6NzE6IjxiYXNlcGF0aD4vY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0FkZHJlc3MvZW5fdXMuRWRpdFZpZXcudHBsIjtzOjI6InRvIjtzOjYwOiJjdXN0b20vaW5jbHVkZS9TdWdhckZpZWxkcy9GaWVsZHMvQWRkcmVzcy9lbl91cy5FZGl0Vmlldy50cGwiO31pOjQ7YToyOntzOjQ6ImZyb20iO3M6NzM6IjxiYXNlcGF0aD4vY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0FkZHJlc3MvaHVfaHUuRGV0YWlsVmlldy50cGwiO3M6MjoidG8iO3M6NjI6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9BZGRyZXNzL2h1X2h1LkRldGFpbFZpZXcudHBsIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjcxOiI8YmFzZXBhdGg+L2N1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9BZGRyZXNzL2h1X2h1LkVkaXRWaWV3LnRwbCI7czoyOiJ0byI7czo2MDoiY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0FkZHJlc3MvaHVfaHUuRWRpdFZpZXcudHBsIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2016-01-13 08:43:33', 1),
('92860fcd-97da-c6e6-e933-579f6602bb65', 'upload/upgrades/module/SoulwareListViewSummary_v1.0.2.zip', '6c63ec7d2411894e495012531009ea6b', 'module', 'installed', '1.0.2', 'SoulwareListViewSummary', 'Adds an option to LisView Mass Update to sum selected records'' number types fields. Not upgrade safe, please read the readme file before install.', 'SoulwareListViewSummary', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6Njp7aTowO3M6NToiNS4wLioiO2k6MTtzOjU6IjUuMS4qIjtpOjI7czo1OiI1LjIuKiI7aTozO3M6NToiNS41LioiO2k6NDtzOjU6IjYuNC4qIjtpOjU7czo1OiI2LjUuKiI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjQ6Im5hbWUiO3M6MjM6IlNvdWx3YXJlTGlzdFZpZXdTdW1tYXJ5IjtzOjExOiJkZXNjcmlwdGlvbiI7czoxNDU6IkFkZHMgYW4gb3B0aW9uIHRvIExpc1ZpZXcgTWFzcyBVcGRhdGUgdG8gc3VtIHNlbGVjdGVkIHJlY29yZHMnIG51bWJlciB0eXBlcyBmaWVsZHMuIE5vdCB1cGdyYWRlIHNhZmUsIHBsZWFzZSByZWFkIHRoZSByZWFkbWUgZmlsZSBiZWZvcmUgaW5zdGFsbC4iO3M6NjoiYXV0aG9yIjtzOjI5OiJQw6l0ZXIgU3BlbmRlbCwgU291bHdhcmUgTHRkLiI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTQvMTIvMDUiO3M6NzoidmVyc2lvbiI7czo1OiIxLjAuMiI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO31zOjExOiJpbnN0YWxsZGVmcyI7YTo0OntzOjI6ImlkIjtzOjIzOiJTb3Vsd2FyZUxpc3RWaWV3U3VtbWFyeSI7czo0OiJjb3B5IjthOjU6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo2MjoiPGJhc2VwYXRoPi9jdXN0b20vdGhlbWVzL2RlZmF1bHQvanMvY3VzdG9tX3N1bW1hcnlfbGlzdHZpZXcuanMiO3M6MjoidG8iO3M6NTE6ImN1c3RvbS90aGVtZXMvZGVmYXVsdC9qcy9jdXN0b21fc3VtbWFyeV9saXN0dmlldy5qcyI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo1NDoiPGJhc2VwYXRoPi9jdXN0b20vaW5jbHVkZS9MaXN0Vmlldy9MaXN0Vmlld0dlbmVyaWMudHBsIjtzOjI6InRvIjtzOjQzOiJjdXN0b20vaW5jbHVkZS9MaXN0Vmlldy9MaXN0Vmlld0dlbmVyaWMudHBsIjt9aToyO2E6Mjp7czo0OiJmcm9tIjtzOjQzOiI8YmFzZXBhdGg+L2N1c3RvbS9pbmNsdWRlL3N1bW1hcnkuY2xhc3MucGhwIjtzOjI6InRvIjtzOjMyOiJjdXN0b20vaW5jbHVkZS9zdW1tYXJ5LmNsYXNzLnBocCI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo4MjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9FbnRyeVBvaW50UmVnaXN0cnkvTGlzdFZpZXdTdW1tYXJ5LnBocCI7czoyOiJ0byI7czo3MToiY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvRW50cnlQb2ludFJlZ2lzdHJ5L0xpc3RWaWV3U3VtbWFyeS5waHAiO31pOjQ7YToyOntzOjQ6ImZyb20iO3M6MzA6IjxiYXNlcGF0aD4vTGlzdFZpZXdTdW1tYXJ5LnBocCI7czoyOiJ0byI7czoxOToiTGlzdFZpZXdTdW1tYXJ5LnBocCI7fX1zOjg6Imxhbmd1YWdlIjthOjI6e2k6MDthOjM6e3M6NDoiZnJvbSI7czo2NzoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL2FwcGxpY2F0aW9uL0V4dC9MYW5ndWFnZS9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjY3OiI8YmFzZXBhdGg+L2N1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L0xhbmd1YWdlL2h1X2h1LmxhbmcucGhwIjtzOjk6InRvX21vZHVsZSI7czoxMToiYXBwbGljYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiaHVfaHUiO319czoxNDoicG9zdF91bmluc3RhbGwiO2E6MTp7aTowO3M6Mzc6IjxiYXNlcGF0aD4vc2NyaXB0cy9wb3N0X3VuaW5zdGFsbC5waHAiO319czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2016-08-01 15:11:41', 1),
('9807a3a5-2def-52c9-e30b-57694087c369', 'upload/upgrades/module/opacusLA-1.6.5.zip', 'aa02f7a6be264d5af4775d813ca240a2', 'module', 'installed', '1.6.5', 'LoginAudit', 'Module to track logins on the system', 'LoginAudit', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjA6e31zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6Mzp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjt9czo2OiJyZWFkbWUiO3M6MDoiIjtzOjM6ImtleSI7czoyOiJsYSI7czo2OiJhdXRob3IiO3M6Njoib3BhY3VzIjtzOjExOiJkZXNjcmlwdGlvbiI7czozNjoiTW9kdWxlIHRvIHRyYWNrIGxvZ2lucyBvbiB0aGUgc3lzdGVtIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjEwOiJMb2dpbkF1ZGl0IjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxOToiMjAxMS0wMy0yOCAwOTozMDowMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjU6IjEuNi41IjtzOjEzOiJyZW1vdmVfdGFibGVzIjtzOjY6InByb21wdCI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjk6e3M6MjoiaWQiO3M6MTA6IkxvZ2luQXVkaXQiO3M6NToiYmVhbnMiO2E6MTp7aTowO2E6NDp7czo2OiJtb2R1bGUiO3M6MTM6ImxhX0xvZ2luQXVkaXQiO3M6NToiY2xhc3MiO3M6MTM6ImxhX0xvZ2luQXVkaXQiO3M6NDoicGF0aCI7czozOToibW9kdWxlcy9sYV9Mb2dpbkF1ZGl0L2xhX0xvZ2luQXVkaXQucGhwIjtzOjM6InRhYiI7YjowO319czoxMDoibGF5b3V0ZGVmcyI7YTowOnt9czoxMzoicmVsYXRpb25zaGlwcyI7YTowOnt9czo5OiJpbWFnZV9kaXIiO3M6MTY6IjxiYXNlcGF0aD4vaWNvbnMiO3M6NDoiY29weSI7YToxOntpOjA7YToyOntzOjQ6ImZyb20iO3M6NDU6IjxiYXNlcGF0aD4vU3VnYXJNb2R1bGVzL21vZHVsZXMvbGFfTG9naW5BdWRpdCI7czoyOiJ0byI7czoyMToibW9kdWxlcy9sYV9Mb2dpbkF1ZGl0Ijt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjU5OiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6MTE6ImFwcGxpY2F0aW9uIjtzOjg6Imxhbmd1YWdlIjtzOjU6ImVuX3VzIjt9aToxO2E6Mzp7czo0OiJmcm9tIjtzOjcwOiI8YmFzZXBhdGg+L1N1Z2FyTW9kdWxlcy9sYW5ndWFnZS9hcHBsaWNhdGlvbi9lbl91cy5Mb2dpbkF1ZGl0QWRtaW4ucGhwIjtzOjk6InRvX21vZHVsZSI7czoxNDoiQWRtaW5pc3RyYXRpb24iO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO319czoxNDoiYWRtaW5pc3RyYXRpb24iO2E6MTp7aTowO2E6MTp7czo0OiJmcm9tIjtzOjUwOiI8YmFzZXBhdGg+L2FkbWluaXN0cmF0aW9uL0xvZ2luQXVkaXRBZG1pbi5tZW51LnBocCI7fX1zOjExOiJsb2dpY19ob29rcyI7YTozOntpOjA7YTo3OntzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJob29rIjtzOjEyOiJsb2dpbl9mYWlsZWQiO3M6NToib3JkZXIiO2k6OTk7czoxMToiZGVzY3JpcHRpb24iO3M6MTg6IkNoZWNrIExvZ2luIHN0YXR1cyI7czo0OiJmaWxlIjtzOjQwOiJtb2R1bGVzL2xhX0xvZ2luQXVkaXQvaG9va19mdW5jdGlvbnMucGhwIjtzOjU6ImNsYXNzIjtzOjEyOiJsb2dpbkFjdGlvbnMiO3M6ODoiZnVuY3Rpb24iO3M6MTY6InVwZGF0ZUxvZ2luQXVkaXQiO31pOjE7YTo3OntzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJob29rIjtzOjExOiJhZnRlcl9sb2dpbiI7czo1OiJvcmRlciI7aToxMDA7czoxMToiZGVzY3JpcHRpb24iO3M6MTg6IkNoZWNrIExvZ2luIHN0YXR1cyI7czo0OiJmaWxlIjtzOjQwOiJtb2R1bGVzL2xhX0xvZ2luQXVkaXQvaG9va19mdW5jdGlvbnMucGhwIjtzOjU6ImNsYXNzIjtzOjEyOiJsb2dpbkFjdGlvbnMiO3M6ODoiZnVuY3Rpb24iO3M6MTY6InVwZGF0ZUxvZ2luQXVkaXQiO31pOjI7YTo3OntzOjY6Im1vZHVsZSI7czo1OiJVc2VycyI7czo0OiJob29rIjtzOjEzOiJiZWZvcmVfbG9nb3V0IjtzOjU6Im9yZGVyIjtpOjEwMTtzOjExOiJkZXNjcmlwdGlvbiI7czoxODoiQ2hlY2sgTG9naW4gc3RhdHVzIjtzOjQ6ImZpbGUiO3M6NDA6Im1vZHVsZXMvbGFfTG9naW5BdWRpdC9ob29rX2Z1bmN0aW9ucy5waHAiO3M6NToiY2xhc3MiO3M6MTI6ImxvZ2luQWN0aW9ucyI7czo4OiJmdW5jdGlvbiI7czoxNjoidXBkYXRlTG9naW5BdWRpdCI7fX19czoxNjoidXBncmFkZV9tYW5pZmVzdCI7czowOiIiO30=', '2016-06-21 13:26:26', 1),
('9bcec126-e1ef-530e-5fb0-56961a7f0323', 'upload/upgrades/module/JavascriptNumberFormat.zip', '3cffd2a675018b468c5f5ba155d11c05', 'module', 'installed', '0.9.0', 'SoulwareJavascriptNumberFormat', 'Adds realtime number formatting for currency, int and number type fields.', 'SoulwareJavascriptNumberFormat', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6Njp7aTowO3M6NToiNS4wLioiO2k6MTtzOjU6IjUuMS4qIjtpOjI7czo1OiI1LjIuKiI7aTozO3M6NToiNS41LioiO2k6NDtzOjU6IjYuNC4qIjtpOjU7czo1OiI2LjUuKiI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjQ6Im5hbWUiO3M6MzA6IlNvdWx3YXJlSmF2YXNjcmlwdE51bWJlckZvcm1hdCI7czoxMToiZGVzY3JpcHRpb24iO3M6NzM6IkFkZHMgcmVhbHRpbWUgbnVtYmVyIGZvcm1hdHRpbmcgZm9yIGN1cnJlbmN5LCBpbnQgYW5kIG51bWJlciB0eXBlIGZpZWxkcy4iO3M6NjoiYXV0aG9yIjtzOjI4OiJHw6Fib3IgRGFydmFzLCBTb3Vsd2FyZSBMdGQuIjtzOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxNC8wMi8xOSI7czo3OiJ2ZXJzaW9uIjtzOjU6IjAuOS4wIjtzOjQ6InR5cGUiO3M6NjoibW9kdWxlIjtzOjQ6Imljb24iO3M6MDoiIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtiOjE7fXM6MTE6Imluc3RhbGxkZWZzIjthOjI6e3M6MjoiaWQiO3M6MzA6IlNvdWx3YXJlSmF2YXNjcmlwdE51bWJlckZvcm1hdCI7czo0OiJjb3B5IjthOjQ6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1MToiPGJhc2VwYXRoPi9jdXN0b20vdGhlbWVzL1N1Z2FyNS9qcy9udW1iZXJfZm9ybWF0LmpzIjtzOjI6InRvIjtzOjQwOiJjdXN0b20vdGhlbWVzL1N1Z2FyNS9qcy9udW1iZXJfZm9ybWF0LmpzIjt9aToxO2E6Mjp7czo0OiJmcm9tIjtzOjY2OiI8YmFzZXBhdGg+L2N1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9DdXJyZW5jeS9FZGl0Vmlldy50cGwiO3M6MjoidG8iO3M6NTU6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9DdXJyZW5jeS9FZGl0Vmlldy50cGwiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NjE6IjxiYXNlcGF0aD4vY3VzdG9tL2luY2x1ZGUvU3VnYXJGaWVsZHMvRmllbGRzL0ludC9FZGl0Vmlldy50cGwiO3M6MjoidG8iO3M6NTA6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9JbnQvRWRpdFZpZXcudHBsIjt9aTozO2E6Mjp7czo0OiJmcm9tIjtzOjYzOiI8YmFzZXBhdGg+L2N1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9GbG9hdC9FZGl0Vmlldy50cGwiO3M6MjoidG8iO3M6NTI6ImN1c3RvbS9pbmNsdWRlL1N1Z2FyRmllbGRzL0ZpZWxkcy9GbG9hdC9FZGl0Vmlldy50cGwiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2016-01-13 09:36:41', 1),
('a6199699-44ad-af33-81fd-56960703fc6e', 'upload/upgrades/langpack/sugar6_hu_lang-1.2-2013-11-12_09-16.zip', 'cb7472cfc95789cf51c3b85d02ae15f0', 'langpack', 'installed', '1.2', 'Hungarian Language Pack for SugarCRM CE by SOULWARE Ltd.', 'Magyar nyelvi fájl, a SugarCRM CE verzióhoz - <a href="http://soulware.hu">http://soulware.hu</a>', 'hu_HU', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjk6e3M6NDoibmFtZSI7czo1NjoiSHVuZ2FyaWFuIExhbmd1YWdlIFBhY2sgZm9yIFN1Z2FyQ1JNIENFIGJ5IFNPVUxXQVJFIEx0ZC4iO3M6MTE6ImRlc2NyaXB0aW9uIjtzOjExNToiTWFneWFyIG55ZWx2aSBmw6FqbCwgYSBTdWdhckNSTSBDRSB2ZXJ6acOzaG96IC0gPGEgaHJlZj0iaHR0cDovL3NvdWx3YXJlLmh1IiB0YXJnZXQ9Il9ibGFuayI+aHR0cDovL3NvdWx3YXJlLmh1PC9hPiI7czo0OiJ0eXBlIjtzOjg6ImxhbmdwYWNrIjtzOjE2OiJpc191bmluc3RhbGxhYmxlIjtzOjM6IlllcyI7czo3OiJ2ZXJzaW9uIjtzOjM6IjEuMiI7czo2OiJhdXRob3IiO3M6ODoiU09VTFdBUkUiO3M6MjU6ImFjY2VwdGFibGVfc3VnYXJfdmVyc2lvbnMiO2E6MTp7czoxMzoicmVnZXhfbWF0Y2hlcyI7YToxOntpOjA7czoxMDoiNlwuWzItOV0uKiI7fX1zOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6NTp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6MzoiRU5UIjtpOjM7czo0OiJDT1JQIjtpOjQ7czozOiJVTFQiO31zOjE0OiJwdWJsaXNoZWRfZGF0ZSI7czoxMDoiMjAxMi0wNy0wNSI7fXM6MTE6Imluc3RhbGxkZWZzIjthOjM6e3M6MjoiaWQiO3M6NToiaHVfSFUiO3M6OToiaW1hZ2VfZGlyIjtzOjE3OiI8YmFzZXBhdGg+L2ltYWdlcyI7czo0OiJjb3B5IjthOjI6e2k6MDthOjI6e3M6NDoiZnJvbSI7czoxODoiPGJhc2VwYXRoPi9pbmNsdWRlIjtzOjI6InRvIjtzOjc6ImluY2x1ZGUiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6MTg6IjxiYXNlcGF0aD4vbW9kdWxlcyI7czoyOiJ0byI7czo3OiJtb2R1bGVzIjt9fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2016-01-13 08:13:08', 1),
('bc732d77-3ee1-b75e-8839-579f464c97d8', 'upload://upgrades/patch/SugarCE-Upgrade-6.5.x-to-6.5.24.zip', '628facc77b491c2978a77f13fc67b246', 'patch', 'installed', '6.5.24', NULL, NULL, NULL, 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEzOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6MTp7aTowO3M6MjoiQ0UiO31zOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjI6e3M6MTM6ImV4YWN0X21hdGNoZXMiO2E6MjQ6e2k6MDtzOjU6IjYuNS4wIjtpOjE7czo1OiI2LjUuMSI7aToyO3M6NToiNi41LjIiO2k6MztzOjU6IjYuNS4zIjtpOjQ7czo1OiI2LjUuNCI7aTo1O3M6NToiNi41LjUiO2k6NjtzOjU6IjYuNS42IjtpOjc7czo1OiI2LjUuNyI7aTo4O3M6NToiNi41LjgiO2k6OTtzOjU6IjYuNS45IjtpOjEwO3M6NjoiNi41LjEwIjtpOjExO3M6NjoiNi41LjExIjtpOjEyO3M6NjoiNi41LjEyIjtpOjEzO3M6NjoiNi41LjEzIjtpOjE0O3M6NjoiNi41LjE0IjtpOjE1O3M6NjoiNi41LjE1IjtpOjE2O3M6NjoiNi41LjE2IjtpOjE3O3M6NjoiNi41LjE3IjtpOjE4O3M6NjoiNi41LjE4IjtpOjE5O3M6NjoiNi41LjE5IjtpOjIwO3M6NjoiNi41LjIwIjtpOjIxO3M6NjoiNi41LjIxIjtpOjIyO3M6NjoiNi41LjIyIjtpOjIzO3M6NjoiNi41LjIzIjt9czoxMzoicmVnZXhfbWF0Y2hlcyI7YTowOnt9fXM6NjoiYXV0aG9yIjtzOjE0OiJTdWdhckNSTSwgSW5jLiI7czoxMDoiY29weV9maWxlcyI7YTozOntzOjg6ImZyb21fZGlyIjtzOjMxOiJTdWdhckNFLVVwZ3JhZGUtNi41LngtdG8tNi41LjI0IjtzOjY6InRvX2RpciI7czowOiIiO3M6MTA6ImZvcmNlX2NvcHkiO2E6MDp7fX1zOjExOiJkZXNjcmlwdGlvbiI7czowOiIiO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MDtzOjI1OiJvZmZsaW5lX2NsaWVudF9hcHBsaWNhYmxlIjtiOjE7czo0OiJuYW1lIjtzOjc6IlN1Z2FyQ0UiO3M6MTQ6InB1Ymxpc2hlZF9kYXRlIjtzOjE5OiIyMDE2LTA3LTE0IDA2OjE4OjQwIjtzOjQ6InR5cGUiO3M6NToicGF0Y2giO3M6NzoidmVyc2lvbiI7czo2OiI2LjUuMjQiO3M6NjoiZmxhdm9yIjtzOjI6IkNFIjt9czoxMToiaW5zdGFsbGRlZnMiO3M6MDoiIjtzOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2016-08-01 12:52:20', 1),
('c42405f9-8557-82db-493d-576cfeb183fd', 'upload//upgrades/patch/SugarCE-Upgrade-6.5.x-to-6.5.23.zip', '500064cff0d5e064c6cf83b402ddd7ad', 'patch', 'installed', '6.5.23', 'SugarCE-Upgrade-6.5.x-to-6.5.23', 'Silent Upgrade was used to upgrade the instance', NULL, '', '2016-06-24 09:34:06', 1),
('ca9c1f53-7842-524c-1d40-56966bf14db1', 'upload/upgrades/module/DashletHandler-1.0.3.zip', 'b775e677ac3be68aa10df9e741545cb7', 'module', 'installed', '1.0.3', 'SoulwareDashboardHandler', 'Save and restore dahslets order and settings by user.', 'SoulwareDashboardHandler', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI0OiJhY2NlcHRhYmxlX3N1Z2FyX2ZsYXZvcnMiO2E6NTp7aTowO3M6MjoiQ0UiO2k6MTtzOjM6IlBSTyI7aToyO3M6NDoiQ09SUCI7aTozO3M6MzoiRU5UIjtpOjQ7czozOiJVTFQiO31zOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6MTp7aTowO3M6NToiNi41LioiO319czo2OiJhdXRob3IiO3M6MzI6IlN6YWJvbGNzIEhvdmFuZWN6LCBTb3Vsd2FyZSBMdGQuIjtzOjExOiJkZXNjcmlwdGlvbiI7czo1MzoiU2F2ZSBhbmQgcmVzdG9yZSBkYWhzbGV0cyBvcmRlciBhbmQgc2V0dGluZ3MgYnkgdXNlci4iO3M6NDoiaWNvbiI7czowOiIiO3M6MTY6ImlzX3VuaW5zdGFsbGFibGUiO2I6MTtzOjQ6Im5hbWUiO3M6MjQ6IlNvdWx3YXJlRGFzaGJvYXJkSGFuZGxlciI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MjQ6IjIwMTQtMDEtMDEgMjAxNCAxMjowMDowMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo3OiJ2ZXJzaW9uIjtzOjU6IjEuMC4zIjt9czoxMToiaW5zdGFsbGRlZnMiO2E6NDp7czoyOiJpZCI7czoyNDoiU291bHdhcmVEYXNoYm9hcmRIYW5kbGVyIjtzOjQ6ImNvcHkiO2E6MTE6e2k6MDthOjI6e3M6NDoiZnJvbSI7czo1NjoiPGJhc2VwYXRoPi9maWxlcy9jdXN0b20vaW5jbHVkZS9NeVN1Z2FyL3RwbHMvTXlTdWdhci50cGwiO3M6MjoidG8iO3M6Mzk6ImN1c3RvbS9pbmNsdWRlL015U3VnYXIvdHBscy9NeVN1Z2FyLnRwbCI7fWk6MTthOjI6e3M6NDoiZnJvbSI7czo2MToiPGJhc2VwYXRoPi9maWxlcy9jdXN0b20vbW9kdWxlcy9Ib21lL0Rhc2hsZXRTdG9yYWdlLmNsYXNzLnBocCI7czoyOiJ0byI7czo0NDoiY3VzdG9tL21vZHVsZXMvSG9tZS9EYXNobGV0U3RvcmFnZS5jbGFzcy5waHAiO31pOjI7YToyOntzOjQ6ImZyb20iO3M6NTc6IjxiYXNlcGF0aD4vZmlsZXMvY3VzdG9tL21vZHVsZXMvSG9tZS9kYXNobGV0c19oYW5kbGVyLnBocCI7czoyOiJ0byI7czo0MDoiY3VzdG9tL21vZHVsZXMvSG9tZS9kYXNobGV0c19oYW5kbGVyLnBocCI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo2MDoiPGJhc2VwYXRoPi9maWxlcy9jdXN0b20vbW9kdWxlcy9Ib21lL2xhbmd1YWdlL2h1X2h1LmxhbmcucGhwIjtzOjI6InRvIjtzOjQzOiJjdXN0b20vbW9kdWxlcy9Ib21lL2xhbmd1YWdlL2h1X2h1LmxhbmcucGhwIjt9aTo0O2E6Mjp7czo0OiJmcm9tIjtzOjYwOiI8YmFzZXBhdGg+L2ZpbGVzL2N1c3RvbS9tb2R1bGVzL0hvbWUvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6MjoidG8iO3M6NDM6ImN1c3RvbS9tb2R1bGVzL0hvbWUvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO31pOjU7YToyOntzOjQ6ImZyb20iO3M6NDY6IjxiYXNlcGF0aD4vZmlsZXMvY3VzdG9tL21vZHVsZXMvSG9tZS9pbmRleC5waHAiO3M6MjoidG8iO3M6Mjk6ImN1c3RvbS9tb2R1bGVzL0hvbWUvaW5kZXgucGhwIjt9aTo2O2E6Mjp7czo0OiJmcm9tIjtzOjYxOiI8YmFzZXBhdGg+L2ZpbGVzL2N1c3RvbS9tZXRhZGF0YS9kYXNobGV0X3N0b3JhZ2VfbWV0YWRhdGEucGhwIjtzOjI6InRvIjtzOjQ0OiJjdXN0b20vbWV0YWRhdGEvZGFzaGxldF9zdG9yYWdlX21ldGFkYXRhLnBocCI7fWk6NzthOjI6e3M6NDoiZnJvbSI7czoxMDA6IjxiYXNlcGF0aD4vZmlsZXMvY3VzdG9tL0V4dGVuc2lvbi9hcHBsaWNhdGlvbi9FeHQvVGFibGVEaWN0aW9uYXJ5L2Rhc2hsZXRfc3RvcmFnZVRhYmxlRGljdGlvbmFyeS5waHAiO3M6MjoidG8iO3M6ODM6ImN1c3RvbS9FeHRlbnNpb24vYXBwbGljYXRpb24vRXh0L1RhYmxlRGljdGlvbmFyeS9kYXNobGV0X3N0b3JhZ2VUYWJsZURpY3Rpb25hcnkucGhwIjt9aTo4O2E6Mjp7czo0OiJmcm9tIjtzOjQ1OiI8YmFzZXBhdGg+L2ZpbGVzL21vZHVsZXMvQ2FtcGFpZ25zL0NoYXJ0cy5waHAiO3M6MjoidG8iO3M6Mjg6Im1vZHVsZXMvQ2FtcGFpZ25zL0NoYXJ0cy5waHAiO31pOjk7YToyOntzOjQ6ImZyb20iO3M6NjI6IjxiYXNlcGF0aD4vZmlsZXMvbW9kdWxlcy9FbWFpbHMvbWV0YWRhdGEvYWRkaXRpb25hbERldGFpbHMucGhwIjtzOjI6InRvIjtzOjQ1OiJtb2R1bGVzL0VtYWlscy9tZXRhZGF0YS9hZGRpdGlvbmFsRGV0YWlscy5waHAiO31pOjEwO2E6Mjp7czo0OiJmcm9tIjtzOjgzOiI8YmFzZXBhdGg+L2ZpbGVzL2N1c3RvbS9tb2R1bGVzL0VtYWlscy9EYXNobGV0cy9NeUVtYWlsc0Rhc2hsZXQvTXlFbWFpbHNEYXNobGV0LnBocCI7czoyOiJ0byI7czo2NjoiY3VzdG9tL21vZHVsZXMvRW1haWxzL0Rhc2hsZXRzL015RW1haWxzRGFzaGxldC9NeUVtYWlsc0Rhc2hsZXQucGhwIjt9fXM6ODoibGFuZ3VhZ2UiO2E6Mjp7aTowO2E6Mzp7czo0OiJmcm9tIjtzOjYwOiI8YmFzZXBhdGg+L2ZpbGVzL2N1c3RvbS9tb2R1bGVzL0hvbWUvbGFuZ3VhZ2UvZW5fdXMubGFuZy5waHAiO3M6OToidG9fbW9kdWxlIjtzOjQ6IkhvbWUiO3M6ODoibGFuZ3VhZ2UiO3M6NToiZW5fdXMiO31pOjE7YTozOntzOjQ6ImZyb20iO3M6NjA6IjxiYXNlcGF0aD4vZmlsZXMvY3VzdG9tL21vZHVsZXMvSG9tZS9sYW5ndWFnZS9odV9odS5sYW5nLnBocCI7czo5OiJ0b19tb2R1bGUiO3M6NDoiSG9tZSI7czo4OiJsYW5ndWFnZSI7czo1OiJodV9odSI7fX1zOjE0OiJwb3N0X3VuaW5zdGFsbCI7YToxOntpOjA7czozNzoiPGJhc2VwYXRoPi9zY3JpcHRzL3Bvc3RfdW5pbnN0YWxsLnBocCI7fX1zOjE2OiJ1cGdyYWRlX21hbmlmZXN0IjtzOjA6IiI7fQ==', '2016-01-13 15:21:14', 1),
('cd80889d-ec50-6c4c-d42e-576d1b8cbb2e', 'upload/upgrades/module/CalendarAddTaskFeaturePackage_v1.0.0.zip', '0493fe1e59563d4a743d213efcbf8aac', 'module', 'installed', '1.0.0', 'CalendarAddTaskFeature', 'You can add, edit, delete task on Calendar view, and Calendar disintegration patch', 'CalendarAddTaskFeature', 'YTozOntzOjg6Im1hbmlmZXN0IjthOjEwOntzOjI1OiJhY2NlcHRhYmxlX3N1Z2FyX3ZlcnNpb25zIjthOjE6e3M6MTM6InJlZ2V4X21hdGNoZXMiO2E6MTp7aTowO3M6NToiNi41LioiO319czoyNDoiYWNjZXB0YWJsZV9zdWdhcl9mbGF2b3JzIjthOjE6e2k6MDtzOjI6IkNFIjt9czo0OiJuYW1lIjtzOjIyOiJDYWxlbmRhckFkZFRhc2tGZWF0dXJlIjtzOjExOiJkZXNjcmlwdGlvbiI7czo4MjoiWW91IGNhbiBhZGQsIGVkaXQsIGRlbGV0ZSB0YXNrIG9uIENhbGVuZGFyIHZpZXcsIGFuZCBDYWxlbmRhciBkaXNpbnRlZ3JhdGlvbiBwYXRjaCI7czo2OiJhdXRob3IiO3M6Mjc6IkvDs2JvciBac29sdCwgU291bHdhcmUgTHRkLiI7czoxNDoicHVibGlzaGVkX2RhdGUiO3M6MTA6IjIwMTYvMDIvMTIiO3M6NzoidmVyc2lvbiI7czo1OiIxLjAuMCI7czo0OiJ0eXBlIjtzOjY6Im1vZHVsZSI7czo0OiJpY29uIjtzOjA6IiI7czoxNjoiaXNfdW5pbnN0YWxsYWJsZSI7YjoxO31zOjExOiJpbnN0YWxsZGVmcyI7YToyOntzOjI6ImlkIjtzOjIyOiJDYWxlbmRhckFkZFRhc2tGZWF0dXJlIjtzOjQ6ImNvcHkiO2E6Nzp7aTowO2E6Mjp7czo0OiJmcm9tIjtzOjQ4OiI8YmFzZXBhdGg+L2N1c3RvbS9tb2R1bGVzL0NhbGVuZGFyL3RwbHMvbWFpbi50cGwiO3M6MjoidG8iO3M6Mzc6ImN1c3RvbS9tb2R1bGVzL0NhbGVuZGFyL3RwbHMvbWFpbi50cGwiO31pOjE7YToyOntzOjQ6ImZyb20iO3M6NDg6IjxiYXNlcGF0aD4vY3VzdG9tL21vZHVsZXMvQ2FsZW5kYXIvdHBscy9mb3JtLnRwbCI7czoyOiJ0byI7czozNzoiY3VzdG9tL21vZHVsZXMvQ2FsZW5kYXIvdHBscy9mb3JtLnRwbCI7fWk6MjthOjI6e3M6NDoiZnJvbSI7czo0MToiPGJhc2VwYXRoPi9jdXN0b20vbW9kdWxlcy9DYWxlbmRhci9DYWwuanMiO3M6MjoidG8iO3M6MzA6ImN1c3RvbS9tb2R1bGVzL0NhbGVuZGFyL0NhbC5qcyI7fWk6MzthOjI6e3M6NDoiZnJvbSI7czo1NToiPGJhc2VwYXRoPi9jdXN0b20vbW9kdWxlcy9NZWV0aW5ncy9qc2NsYXNzX3NjaGVkdWxlci5qcyI7czoyOiJ0byI7czo0NDoiY3VzdG9tL21vZHVsZXMvTWVldGluZ3MvanNjbGFzc19zY2hlZHVsZXIuanMiO31pOjQ7YToyOntzOjQ6ImZyb20iO3M6NDk6IjxiYXNlcGF0aD4vY3VzdG9tL21vZHVsZXMvQ2FsZW5kYXIvY29udHJvbGxlci5waHAiO3M6MjoidG8iO3M6Mzg6ImN1c3RvbS9tb2R1bGVzL0NhbGVuZGFyL2NvbnRyb2xsZXIucGhwIjt9aTo1O2E6Mjp7czo0OiJmcm9tIjtzOjc2OiI8YmFzZXBhdGg+L2N1c3RvbS9FeHRlbnNpb24vbW9kdWxlcy9DYWxlbmRhci9FeHQvTGFuZ3VhZ2UvZW5fdXMuYWRkX3Rhc2sucGhwIjtzOjI6InRvIjtzOjY1OiJjdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvQ2FsZW5kYXIvRXh0L0xhbmd1YWdlL2VuX3VzLmFkZF90YXNrLnBocCI7fWk6NjthOjI6e3M6NDoiZnJvbSI7czo3NjoiPGJhc2VwYXRoPi9jdXN0b20vRXh0ZW5zaW9uL21vZHVsZXMvQ2FsZW5kYXIvRXh0L0xhbmd1YWdlL2h1X2h1LmFkZF90YXNrLnBocCI7czoyOiJ0byI7czo2NToiY3VzdG9tL0V4dGVuc2lvbi9tb2R1bGVzL0NhbGVuZGFyL0V4dC9MYW5ndWFnZS9odV9odS5hZGRfdGFzay5waHAiO319fXM6MTY6InVwZ3JhZGVfbWFuaWZlc3QiO3M6MDoiIjt9', '2016-06-24 11:36:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` char(36) NOT NULL,
  `user_name` varchar(60) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  `system_generated_password` tinyint(1) DEFAULT NULL,
  `pwd_last_changed` datetime DEFAULT NULL,
  `authenticate_id` varchar(100) DEFAULT NULL,
  `sugar_login` tinyint(1) DEFAULT '1',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `is_admin` tinyint(1) DEFAULT '0',
  `external_auth_only` tinyint(1) DEFAULT '0',
  `receive_notifications` tinyint(1) DEFAULT '1',
  `description` text,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(100) DEFAULT NULL,
  `address_postalcode` varchar(20) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `portal_only` tinyint(1) DEFAULT '0',
  `show_on_employees` tinyint(1) DEFAULT '1',
  `employee_status` varchar(100) DEFAULT NULL,
  `messenger_id` varchar(100) DEFAULT NULL,
  `messenger_type` varchar(100) DEFAULT NULL,
  `reports_to_id` char(36) DEFAULT NULL,
  `is_group` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_hash`, `system_generated_password`, `pwd_last_changed`, `authenticate_id`, `sugar_login`, `first_name`, `last_name`, `is_admin`, `external_auth_only`, `receive_notifications`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `status`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `deleted`, `portal_only`, `show_on_employees`, `employee_status`, `messenger_id`, `messenger_type`, `reports_to_id`, `is_group`) VALUES
('1', 'admin', '$1$Ik.QljMi$Hdz9h3Qm44nXB9GloxXfT/', 0, NULL, NULL, 1, NULL, 'Administrator', 1, 0, 1, NULL, '2016-01-13 07:57:45', '2016-01-13 08:12:04', '1', '', 'Administrator', NULL, NULL, NULL, NULL, NULL, NULL, 'Active', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 'Active', NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users_feeds`
--

CREATE TABLE `users_feeds` (
  `user_id` varchar(36) DEFAULT NULL,
  `feed_id` varchar(36) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_last_import`
--

CREATE TABLE `users_last_import` (
  `id` char(36) NOT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `import_module` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` char(36) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_password_link`
--

CREATE TABLE `users_password_link` (
  `id` char(36) NOT NULL,
  `username` varchar(36) DEFAULT NULL,
  `date_generated` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users_signatures`
--

CREATE TABLE `users_signatures` (
  `id` char(36) NOT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `signature` text,
  `signature_html` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` char(36) NOT NULL,
  `category` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `assigned_user_id` char(36) DEFAULT NULL,
  `contents` longtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `category`, `deleted`, `date_entered`, `date_modified`, `assigned_user_id`, `contents`) VALUES
('1fbd0a02-c6bd-8ca3-de8f-5696038099c6', 'global', 0, '2016-01-13 07:57:45', '2016-01-13 15:13:18', '1', 'YToyODp7czoyMDoiY2FsZW5kYXJfcHVibGlzaF9rZXkiO3M6MzY6IjFmOWQ2YTJhLWU3MjktOTQxMC1jMGFhLTU2OTYwMzAwMWVlYyI7czoxMDoidXNlcl90aGVtZSI7czo2OiJTdWdhcjUiO3M6MTM6InJlbWluZGVyX3RpbWUiO2k6MTgwMDtzOjEyOiJtYWlsbWVyZ2Vfb24iO3M6Mjoib24iO3M6ODoidGltZXpvbmUiO3M6MTM6IkV1cm9wZS9CZXJsaW4iO3M6MTY6InN3YXBfbGFzdF92aWV3ZWQiO3M6MDoiIjtzOjE0OiJzd2FwX3Nob3J0Y3V0cyI7czowOiIiO3M6MTk6Im5hdmlnYXRpb25fcGFyYWRpZ20iO3M6MjoiZ20iO3M6MTM6InN1YnBhbmVsX3RhYnMiO3M6MDoiIjtzOjE0OiJtb2R1bGVfZmF2aWNvbiI7czowOiIiO3M6OToiaGlkZV90YWJzIjthOjA6e31zOjExOiJyZW1vdmVfdGFicyI7YTowOnt9czo3OiJub19vcHBzIjtzOjM6Im9mZiI7czoxOToiZW1haWxfcmVtaW5kZXJfdGltZSI7aTotMTtzOjI6InV0IjtzOjE6IjEiO3M6ODoiY3VycmVuY3kiO3M6MzoiLTk5IjtzOjM1OiJkZWZhdWx0X2N1cnJlbmN5X3NpZ25pZmljYW50X2RpZ2l0cyI7czoxOiIyIjtzOjExOiJudW1fZ3JwX3NlcCI7czoxOiIsIjtzOjc6ImRlY19zZXAiO3M6MToiLiI7czo1OiJkYXRlZiI7czo1OiJZLW0tZCI7czo1OiJ0aW1lZiI7czozOiJIOmkiO3M6MjY6ImRlZmF1bHRfbG9jYWxlX25hbWVfZm9ybWF0IjtzOjU6InMgZiBsIjtzOjE0OiJ1c2VfcmVhbF9uYW1lcyI7czoyOiJvbiI7czoxNzoibWFpbF9zbXRwYXV0aF9yZXEiO3M6MDoiIjtzOjEyOiJtYWlsX3NtdHBzc2wiO2k6MDtzOjE3OiJlbWFpbF9zaG93X2NvdW50cyI7aTowO3M6MTk6InRoZW1lX2N1cnJlbnRfZ3JvdXAiO3M6MzoiQWxsIjtzOjk6IkFjY291bnRzUSI7YTo5OntzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czo2OiJhY3Rpb24iO3M6NToiaW5kZXgiO3M6MTM6InNlYXJjaEZvcm1UYWIiO3M6MTI6ImJhc2ljX3NlYXJjaCI7czo1OiJxdWVyeSI7czo0OiJ0cnVlIjtzOjc6Im9yZGVyQnkiO3M6MDoiIjtzOjk6InNvcnRPcmRlciI7czowOiIiO3M6MTA6Im5hbWVfYmFzaWMiO3M6MDoiIjtzOjIzOiJjdXJyZW50X3VzZXJfb25seV9iYXNpYyI7czoxOiIwIjtzOjY6ImJ1dHRvbiI7czo4OiJLZXJlc8OpcyI7fX0='),
('2b2a1ee0-2a74-4ad9-6616-56960628b1a9', 'Home2_LEAD', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('2e36cb88-b79e-ba49-89e0-5696068809ec', 'ETag', 0, '2016-01-13 08:12:04', '2016-06-24 09:58:14', '1', 'YToxOntzOjEyOiJtYWluTWVudUVUYWciO2k6MTM7fQ=='),
('3555a4f9-c043-5d94-24e4-5696060c41ce', 'Home2_SUGARFEED', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a2500cce-0f44-1857-d0f1-5696454394cf', 'Contacts2_CONTACT', 0, '2016-01-13 12:40:20', '2016-01-13 12:40:20', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('a68fce5c-41d8-f5ff-4f2f-569648f73e20', 'Tasks2_TASK', 0, '2016-01-13 12:53:34', '2016-01-13 12:53:34', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('c98d28df-f35d-03f7-88be-569606546a19', 'Home', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToyOntzOjg6ImRhc2hsZXRzIjthOjg6e3M6MzY6ImFjN2Y2YmVkLWQ1NTgtOGI0NC1hZGQ4LTU2OTYwNjljYmEwZSI7YTo1OntzOjk6ImNsYXNzTmFtZSI7czoxMzoiaUZyYW1lRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NDoiSG9tZSI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTM6Im1vZHVsZXMvSG9tZS9EYXNobGV0cy9pRnJhbWVEYXNobGV0L2lGcmFtZURhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6Mzp7czoxMDoidGl0bGVMYWJlbCI7czozMDoiTEJMX0RBU0hMRVRfRElTQ09WRVJfU1VHQVJfUFJPIjtzOjM6InVybCI7czo0MjoiaHR0cHM6Ly93d3cuc3VnYXJjcm0uY29tL2NybS9wcm9kdWN0L2dvcHJvIjtzOjY6ImhlaWdodCI7aTozMTU7fX1zOjM2OiJhYzgwZGVhZi01ODgyLWYxY2ItMWIzMC01Njk2MDZmYmYzYjYiO2E6NDp7czo5OiJjbGFzc05hbWUiO3M6MTY6IlN1Z2FyRmVlZERhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjk6IlN1Z2FyRmVlZCI7czoxMToiZm9yY2VDb2x1bW4iO2k6MTtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjQ6Im1vZHVsZXMvU3VnYXJGZWVkL0Rhc2hsZXRzL1N1Z2FyRmVlZERhc2hsZXQvU3VnYXJGZWVkRGFzaGxldC5waHAiO31zOjM2OiJhYzgxOWU1MC02MWFmLTY5NTgtYTBmYi01Njk2MDZjMThhNWQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTM6ImlGcmFtZURhc2hsZXQiO3M6NjoibW9kdWxlIjtzOjQ6IkhvbWUiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjE7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjUzOiJtb2R1bGVzL0hvbWUvRGFzaGxldHMvaUZyYW1lRGFzaGxldC9pRnJhbWVEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjM6e3M6MTA6InRpdGxlTGFiZWwiO3M6MjI6IkxCTF9EQVNITEVUX1NVR0FSX05FV1MiO3M6MzoidXJsIjtzOjQxOiJodHRwczovL3d3dy5zdWdhcmNybS5jb20vY3JtL3Byb2R1Y3QvbmV3cyI7czo2OiJoZWlnaHQiO2k6MzE1O319czozNjoiYWZkNTA2NGQtOWI1MS05NzcyLTgxNmUtNTY5NjA2MWVlMGFlIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE0OiJNeUNhbGxzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6NToiQ2FsbHMiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjU2OiJtb2R1bGVzL0NhbGxzL0Rhc2hsZXRzL015Q2FsbHNEYXNobGV0L015Q2FsbHNEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjBhMjRlOWMtMDIzYy02YjU0LWZkNDUtNTY5NjA2MTgyMWJjIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjE3OiJNeU1lZXRpbmdzRGFzaGxldCI7czo2OiJtb2R1bGUiO3M6ODoiTWVldGluZ3MiO3M6MTE6ImZvcmNlQ29sdW1uIjtpOjA7czoxMjoiZmlsZUxvY2F0aW9uIjtzOjY1OiJtb2R1bGVzL01lZXRpbmdzL0Rhc2hsZXRzL015TWVldGluZ3NEYXNobGV0L015TWVldGluZ3NEYXNobGV0LnBocCI7czo3OiJvcHRpb25zIjthOjA6e319czozNjoiYjEzYmVkZTEtZTY4NS02YTIxLTkyNTYtNTY5NjA2YTIyODFiIjthOjU6e3M6OToiY2xhc3NOYW1lIjtzOjIyOiJNeU9wcG9ydHVuaXRpZXNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czoxMzoiT3Bwb3J0dW5pdGllcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6ODA6Im1vZHVsZXMvT3Bwb3J0dW5pdGllcy9EYXNobGV0cy9NeU9wcG9ydHVuaXRpZXNEYXNobGV0L015T3Bwb3J0dW5pdGllc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJiMWVmMThiYy0yNjJjLTc0OTUtZTAwZC01Njk2MDYwOGFmODciO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTc6Ik15QWNjb3VudHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo4OiJBY2NvdW50cyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NjU6Im1vZHVsZXMvQWNjb3VudHMvRGFzaGxldHMvTXlBY2NvdW50c0Rhc2hsZXQvTXlBY2NvdW50c0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX1zOjM2OiJiMmM1NzA1MC01ZDZkLTkyZDgtZTMyNi01Njk2MDZmNTc1ZmQiO2E6NTp7czo5OiJjbGFzc05hbWUiO3M6MTQ6Ik15TGVhZHNEYXNobGV0IjtzOjY6Im1vZHVsZSI7czo1OiJMZWFkcyI7czoxMToiZm9yY2VDb2x1bW4iO2k6MDtzOjEyOiJmaWxlTG9jYXRpb24iO3M6NTY6Im1vZHVsZXMvTGVhZHMvRGFzaGxldHMvTXlMZWFkc0Rhc2hsZXQvTXlMZWFkc0Rhc2hsZXQucGhwIjtzOjc6Im9wdGlvbnMiO2E6MDp7fX19czo1OiJwYWdlcyI7YToxOntpOjA7YTozOntzOjc6ImNvbHVtbnMiO2E6Mjp7aTowO2E6Mjp7czo1OiJ3aWR0aCI7czozOiI2MCUiO3M6ODoiZGFzaGxldHMiO2E6Njp7aTowO3M6MzY6ImFjN2Y2YmVkLWQ1NTgtOGI0NC1hZGQ4LTU2OTYwNjljYmEwZSI7aToxO3M6MzY6ImFmZDUwNjRkLTliNTEtOTc3Mi04MTZlLTU2OTYwNjFlZTBhZSI7aToyO3M6MzY6ImIwYTI0ZTljLTAyM2MtNmI1NC1mZDQ1LTU2OTYwNjE4MjFiYyI7aTozO3M6MzY6ImIxM2JlZGUxLWU2ODUtNmEyMS05MjU2LTU2OTYwNmEyMjgxYiI7aTo0O3M6MzY6ImIxZWYxOGJjLTI2MmMtNzQ5NS1lMDBkLTU2OTYwNjA4YWY4NyI7aTo1O3M6MzY6ImIyYzU3MDUwLTVkNmQtOTJkOC1lMzI2LTU2OTYwNmY1NzVmZCI7fX1pOjE7YToyOntzOjU6IndpZHRoIjtzOjM6IjQwJSI7czo4OiJkYXNobGV0cyI7YToyOntpOjA7czozNjoiYWM4MGRlYWYtNTg4Mi1mMWNiLTFiMzAtNTY5NjA2ZmJmM2I2IjtpOjE7czozNjoiYWM4MTllNTAtNjFhZi02OTU4LWEwZmItNTY5NjA2YzE4YTVkIjt9fX1zOjEwOiJudW1Db2x1bW5zIjtzOjE6IjIiO3M6MTQ6InBhZ2VUaXRsZUxhYmVsIjtzOjIwOiJMQkxfSE9NRV9QQUdFXzFfTkFNRSI7fX19'),
('d5f47aac-3e94-8fc7-b10a-5696063f4d66', 'Home2_CALL', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('e012cc69-d8ee-757e-f58a-569606c12bb5', 'Home2_MEETING', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('eceb7c12-efd3-fdb6-d1b6-56960e507b7b', 'Accounts2_ACCOUNT', 0, '2016-01-13 08:45:18', '2016-01-13 08:45:18', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('ee62f852-c322-85f7-19da-569606939256', 'Home2_OPPORTUNITY', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('f1625c5e-5ead-66d5-1b93-569644a44b92', 'Opportunities2_OPPORTUNITY', 0, '2016-01-13 12:36:36', '2016-01-13 12:36:36', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ=='),
('febc030e-4acd-b551-98c5-569606076dae', 'Home2_ACCOUNT', 0, '2016-01-13 08:12:05', '2016-01-13 08:12:05', '1', 'YToxOntzOjEzOiJsaXN0dmlld09yZGVyIjthOjI6e3M6Nzoib3JkZXJCeSI7czoxMjoiZGF0ZV9lbnRlcmVkIjtzOjk6InNvcnRPcmRlciI7czo0OiJERVNDIjt9fQ==');

-- --------------------------------------------------------

--
-- Table structure for table `vcals`
--

CREATE TABLE `vcals` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `user_id` char(36) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL,
  `content` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

CREATE TABLE `versions` (
  `id` char(36) NOT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `date_entered` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `modified_user_id` char(36) DEFAULT NULL,
  `created_by` char(36) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `file_version` varchar(255) DEFAULT NULL,
  `db_version` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `deleted`, `date_entered`, `date_modified`, `modified_user_id`, `created_by`, `name`, `file_version`, `db_version`) VALUES
('52799b12-80c8-bd2d-456f-579f4673bd31', 0, '2016-08-01 12:53:08', '2016-08-01 12:53:08', '1', '1', 'Rebuild Relationships', '4.0.0', '4.0.0'),
('605d1867-797e-9c00-4d08-5696036cb762', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'Chart Data Cache', '3.5.1', '3.5.1'),
('7331283c-e86c-0c59-d309-579f46029d7a', 0, '2016-08-01 12:53:08', '2016-08-01 12:53:08', '1', '1', 'Rebuild Extensions', '4.0.0', '4.0.0'),
('7ebe4f2d-d64a-4622-6c73-569603cef8f0', 0, '2016-01-13 07:57:45', '2016-01-13 07:57:45', '1', '1', 'htaccess', '3.5.1', '3.5.1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accnt_id_del` (`id`,`deleted`),
  ADD KEY `idx_accnt_name_del` (`name`,`deleted`),
  ADD KEY `idx_accnt_assigned_del` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_accnt_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_audit`
--
ALTER TABLE `accounts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_accounts_parent_id` (`parent_id`);

--
-- Indexes for table `accounts_bugs`
--
ALTER TABLE `accounts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_bug_acc` (`account_id`),
  ADD KEY `idx_acc_bug_bug` (`bug_id`),
  ADD KEY `idx_account_bug` (`account_id`,`bug_id`);

--
-- Indexes for table `accounts_cases`
--
ALTER TABLE `accounts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acc_case_acc` (`account_id`),
  ADD KEY `idx_acc_acc_case` (`case_id`);

--
-- Indexes for table `accounts_contacts`
--
ALTER TABLE `accounts_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_contact` (`account_id`,`contact_id`),
  ADD KEY `idx_contid_del_accid` (`contact_id`,`deleted`,`account_id`);

--
-- Indexes for table `accounts_opportunities`
--
ALTER TABLE `accounts_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_account_opportunity` (`account_id`,`opportunity_id`),
  ADD KEY `idx_oppid_del_accid` (`opportunity_id`,`deleted`,`account_id`);

--
-- Indexes for table `acl_actions`
--
ALTER TABLE `acl_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclaction_id_del` (`id`,`deleted`),
  ADD KEY `idx_category_name` (`category`,`name`);

--
-- Indexes for table `acl_roles`
--
ALTER TABLE `acl_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id_del` (`id`,`deleted`);

--
-- Indexes for table `acl_roles_actions`
--
ALTER TABLE `acl_roles_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_acl_role_id` (`role_id`),
  ADD KEY `idx_acl_action_id` (`action_id`),
  ADD KEY `idx_aclrole_action` (`role_id`,`action_id`);

--
-- Indexes for table `acl_roles_users`
--
ALTER TABLE `acl_roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_aclrole_id` (`role_id`),
  ADD KEY `idx_acluser_id` (`user_id`),
  ADD KEY `idx_aclrole_user` (`role_id`,`user_id`);

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD KEY `ab_user_bean_idx` (`assigned_user_id`,`bean`);

--
-- Indexes for table `bugs`
--
ALTER TABLE `bugs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bugsnumk` (`bug_number`),
  ADD KEY `bug_number` (`bug_number`),
  ADD KEY `idx_bug_name` (`name`),
  ADD KEY `idx_bugs_assigned_user` (`assigned_user_id`);

--
-- Indexes for table `bugs_audit`
--
ALTER TABLE `bugs_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_bugs_parent_id` (`parent_id`);

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_call_name` (`name`),
  ADD KEY `idx_status` (`status`),
  ADD KEY `idx_calls_date_start` (`date_start`),
  ADD KEY `idx_calls_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_calls_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `calls_contacts`
--
ALTER TABLE `calls_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_call_call` (`call_id`),
  ADD KEY `idx_con_call_con` (`contact_id`),
  ADD KEY `idx_call_contact` (`call_id`,`contact_id`);

--
-- Indexes for table `calls_leads`
--
ALTER TABLE `calls_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_call_call` (`call_id`),
  ADD KEY `idx_lead_call_lead` (`lead_id`),
  ADD KEY `idx_call_lead` (`call_id`,`lead_id`);

--
-- Indexes for table `calls_users`
--
ALTER TABLE `calls_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_call_call` (`call_id`),
  ADD KEY `idx_usr_call_usr` (`user_id`),
  ADD KEY `idx_call_users` (`call_id`,`user_id`);

--
-- Indexes for table `campaigns`
--
ALTER TABLE `campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `camp_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_campaign_name` (`name`);

--
-- Indexes for table `campaigns_audit`
--
ALTER TABLE `campaigns_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_campaigns_parent_id` (`parent_id`);

--
-- Indexes for table `campaign_log`
--
ALTER TABLE `campaign_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_camp_tracker` (`target_tracker_key`),
  ADD KEY `idx_camp_campaign_id` (`campaign_id`),
  ADD KEY `idx_camp_more_info` (`more_information`),
  ADD KEY `idx_target_id` (`target_id`),
  ADD KEY `idx_target_id_deleted` (`target_id`,`deleted`);

--
-- Indexes for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `campaign_tracker_key_idx` (`tracker_key`);

--
-- Indexes for table `cases`
--
ALTER TABLE `cases`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `casesnumk` (`case_number`),
  ADD KEY `case_number` (`case_number`),
  ADD KEY `idx_case_name` (`name`),
  ADD KEY `idx_account_id` (`account_id`),
  ADD KEY `idx_cases_stat_del` (`assigned_user_id`,`status`,`deleted`);

--
-- Indexes for table `cases_audit`
--
ALTER TABLE `cases_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cases_parent_id` (`parent_id`);

--
-- Indexes for table `cases_bugs`
--
ALTER TABLE `cases_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cas_bug_cas` (`case_id`),
  ADD KEY `idx_cas_bug_bug` (`bug_id`),
  ADD KEY `idx_case_bug` (`case_id`,`bug_id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD KEY `idx_config_cat` (`category`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cont_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_contacts_del_last` (`deleted`,`last_name`),
  ADD KEY `idx_cont_del_reports` (`deleted`,`reports_to_id`,`last_name`),
  ADD KEY `idx_reports_to_id` (`reports_to_id`),
  ADD KEY `idx_del_id_user` (`deleted`,`id`,`assigned_user_id`),
  ADD KEY `idx_cont_assigned` (`assigned_user_id`);

--
-- Indexes for table `contacts_audit`
--
ALTER TABLE `contacts_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_contacts_parent_id` (`parent_id`);

--
-- Indexes for table `contacts_bugs`
--
ALTER TABLE `contacts_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_bug_con` (`contact_id`),
  ADD KEY `idx_con_bug_bug` (`bug_id`),
  ADD KEY `idx_contact_bug` (`contact_id`,`bug_id`);

--
-- Indexes for table `contacts_cases`
--
ALTER TABLE `contacts_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_case_con` (`contact_id`),
  ADD KEY `idx_con_case_case` (`case_id`),
  ADD KEY `idx_contacts_cases` (`contact_id`,`case_id`);

--
-- Indexes for table `contacts_users`
--
ALTER TABLE `contacts_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_users_con` (`contact_id`),
  ADD KEY `idx_con_users_user` (`user_id`),
  ADD KEY `idx_contacts_users` (`contact_id`,`user_id`);

--
-- Indexes for table `cron_remove_documents`
--
ALTER TABLE `cron_remove_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_cron_remove_document_bean_id` (`bean_id`),
  ADD KEY `idx_cron_remove_document_stamp` (`date_modified`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currency_name` (`name`,`deleted`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD KEY `idx_beanid_set_num` (`bean_id`,`set_num`);

--
-- Indexes for table `dashlet_storage`
--
ALTER TABLE `dashlet_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashlet_storage_idx` (`user_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_doc_cat` (`category_id`,`subcategory_id`);

--
-- Indexes for table `documents_accounts`
--
ALTER TABLE `documents_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_accounts_account_id` (`account_id`,`document_id`),
  ADD KEY `documents_accounts_document_id` (`document_id`,`account_id`);

--
-- Indexes for table `documents_bugs`
--
ALTER TABLE `documents_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_bugs_bug_id` (`bug_id`,`document_id`),
  ADD KEY `documents_bugs_document_id` (`document_id`,`bug_id`);

--
-- Indexes for table `documents_cases`
--
ALTER TABLE `documents_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_cases_case_id` (`case_id`,`document_id`),
  ADD KEY `documents_cases_document_id` (`document_id`,`case_id`);

--
-- Indexes for table `documents_contacts`
--
ALTER TABLE `documents_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documents_contacts_contact_id` (`contact_id`,`document_id`),
  ADD KEY `documents_contacts_document_id` (`document_id`,`contact_id`);

--
-- Indexes for table `documents_opportunities`
--
ALTER TABLE `documents_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_docu_opps_oppo_id` (`opportunity_id`,`document_id`),
  ADD KEY `idx_docu_oppo_docu_id` (`document_id`,`opportunity_id`);

--
-- Indexes for table `document_revisions`
--
ALTER TABLE `document_revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `documentrevision_mimetype` (`file_mime_type`);

--
-- Indexes for table `eapm`
--
ALTER TABLE `eapm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_app_active` (`assigned_user_id`,`application`,`validated`);

--
-- Indexes for table `emailman`
--
ALTER TABLE `emailman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eman_list` (`list_id`,`user_id`,`deleted`),
  ADD KEY `idx_eman_campaign_id` (`campaign_id`),
  ADD KEY `idx_eman_relid_reltype_id` (`related_id`,`related_type`,`campaign_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_name` (`name`),
  ADD KEY `idx_message_id` (`message_id`),
  ADD KEY `idx_email_parent_id` (`parent_id`),
  ADD KEY `idx_email_assigned` (`assigned_user_id`,`type`,`status`);

--
-- Indexes for table `emails_beans`
--
ALTER TABLE `emails_beans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emails_beans_bean_id` (`bean_id`),
  ADD KEY `idx_emails_beans_email_bean` (`email_id`,`bean_id`,`deleted`);

--
-- Indexes for table `emails_email_addr_rel`
--
ALTER TABLE `emails_email_addr_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_eearl_email_id` (`email_id`,`address_type`),
  ADD KEY `idx_eearl_address_id` (`email_address_id`);

--
-- Indexes for table `emails_text`
--
ALTER TABLE `emails_text`
  ADD PRIMARY KEY (`email_id`),
  ADD KEY `emails_textfromaddr` (`from_addr`);

--
-- Indexes for table `email_addresses`
--
ALTER TABLE `email_addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ea_caps_opt_out_invalid` (`email_address_caps`,`opt_out`,`invalid_email`),
  ADD KEY `idx_ea_opt_out_invalid` (`email_address`,`opt_out`,`invalid_email`);

--
-- Indexes for table `email_addr_bean_rel`
--
ALTER TABLE `email_addr_bean_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_address_id` (`email_address_id`),
  ADD KEY `idx_bean_id` (`bean_id`,`bean_module`);

--
-- Indexes for table `email_cache`
--
ALTER TABLE `email_cache`
  ADD KEY `idx_ie_id` (`ie_id`),
  ADD KEY `idx_mail_date` (`ie_id`,`mbox`,`senddate`),
  ADD KEY `idx_mail_from` (`ie_id`,`mbox`,`fromaddr`),
  ADD KEY `idx_mail_subj` (`subject`),
  ADD KEY `idx_mail_to` (`toaddr`);

--
-- Indexes for table `email_marketing`
--
ALTER TABLE `email_marketing`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_emmkt_name` (`name`),
  ADD KEY `idx_emmkit_del` (`deleted`);

--
-- Indexes for table `email_marketing_prospect_lists`
--
ALTER TABLE `email_marketing_prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email_mp_prospects` (`email_marketing_id`,`prospect_list_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_email_template_name` (`name`);

--
-- Indexes for table `fields_meta_data`
--
ALTER TABLE `fields_meta_data`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_meta_id_del` (`id`,`deleted`),
  ADD KEY `idx_meta_cm_del` (`custom_module`,`deleted`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_folder` (`parent_folder`);

--
-- Indexes for table `folders_rel`
--
ALTER TABLE `folders_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_poly_module_poly_id` (`polymorphic_module`,`polymorphic_id`),
  ADD KEY `idx_fr_id_deleted_poly` (`folder_id`,`deleted`,`polymorphic_id`);

--
-- Indexes for table `folders_subscriptions`
--
ALTER TABLE `folders_subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_folder_id_assigned_user_id` (`folder_id`,`assigned_user_id`);

--
-- Indexes for table `import_maps`
--
ALTER TABLE `import_maps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_owner_module_name` (`assigned_user_id`,`module`,`name`,`deleted`);

--
-- Indexes for table `inbound_email`
--
ALTER TABLE `inbound_email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inbound_email_autoreply`
--
ALTER TABLE `inbound_email_autoreply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ie_autoreplied_to` (`autoreplied_to`);

--
-- Indexes for table `inbound_email_cache_ts`
--
ALTER TABLE `inbound_email_cache_ts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_queue`
--
ALTER TABLE `job_queue`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_status_scheduler` (`status`,`scheduler_id`),
  ADD KEY `idx_status_time` (`status`,`execute_time`,`date_entered`),
  ADD KEY `idx_status_entered` (`status`,`date_entered`),
  ADD KEY `idx_status_modified` (`status`,`date_modified`);

--
-- Indexes for table `la_loginaudit`
--
ALTER TABLE `la_loginaudit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `la_loginaudit_audit`
--
ALTER TABLE `la_loginaudit_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_la_loginaudit_parent_id` (`parent_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_acct_name_first` (`account_name`,`deleted`),
  ADD KEY `idx_lead_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_lead_del_stat` (`last_name`,`status`,`deleted`,`first_name`),
  ADD KEY `idx_lead_opp_del` (`opportunity_id`,`deleted`),
  ADD KEY `idx_leads_acct_del` (`account_id`,`deleted`),
  ADD KEY `idx_del_user` (`deleted`,`assigned_user_id`),
  ADD KEY `idx_lead_assigned` (`assigned_user_id`),
  ADD KEY `idx_lead_contact` (`contact_id`),
  ADD KEY `idx_reports_to` (`reports_to_id`),
  ADD KEY `idx_lead_phone_work` (`phone_work`),
  ADD KEY `idx_leads_id_del` (`id`,`deleted`);

--
-- Indexes for table `leads_audit`
--
ALTER TABLE `leads_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_leads_parent_id` (`parent_id`);

--
-- Indexes for table `linked_documents`
--
ALTER TABLE `linked_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_parent_document` (`parent_type`,`parent_id`,`document_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_mtg_name` (`name`),
  ADD KEY `idx_meet_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_meet_stat_del` (`assigned_user_id`,`status`,`deleted`),
  ADD KEY `idx_meet_date_start` (`date_start`);

--
-- Indexes for table `meetings_contacts`
--
ALTER TABLE `meetings_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_con_mtg_con` (`contact_id`),
  ADD KEY `idx_meeting_contact` (`meeting_id`,`contact_id`);

--
-- Indexes for table `meetings_leads`
--
ALTER TABLE `meetings_leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_lead_meeting_meeting` (`meeting_id`),
  ADD KEY `idx_lead_meeting_lead` (`lead_id`),
  ADD KEY `idx_meeting_lead` (`meeting_id`,`lead_id`);

--
-- Indexes for table `meetings_users`
--
ALTER TABLE `meetings_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usr_mtg_mtg` (`meeting_id`),
  ADD KEY `idx_usr_mtg_usr` (`user_id`),
  ADD KEY `idx_meeting_users` (`meeting_id`,`user_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_note_name` (`name`),
  ADD KEY `idx_notes_parent` (`parent_id`,`parent_type`),
  ADD KEY `idx_note_contact` (`contact_id`),
  ADD KEY `idx_notes_assigned_del` (`deleted`,`assigned_user_id`);

--
-- Indexes for table `oauth_consumer`
--
ALTER TABLE `oauth_consumer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ckey` (`c_key`);

--
-- Indexes for table `oauth_nonce`
--
ALTER TABLE `oauth_nonce`
  ADD PRIMARY KEY (`conskey`,`nonce`),
  ADD KEY `oauth_nonce_keyts` (`conskey`,`nonce_ts`);

--
-- Indexes for table `oauth_tokens`
--
ALTER TABLE `oauth_tokens`
  ADD PRIMARY KEY (`id`,`deleted`),
  ADD KEY `oauth_state_ts` (`tstate`,`token_ts`),
  ADD KEY `constoken_key` (`consumer`);

--
-- Indexes for table `opportunities`
--
ALTER TABLE `opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opp_name` (`name`),
  ADD KEY `idx_opp_assigned` (`assigned_user_id`),
  ADD KEY `idx_opp_id_deleted` (`id`,`deleted`);

--
-- Indexes for table `opportunities_audit`
--
ALTER TABLE `opportunities_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_opportunities_parent_id` (`parent_id`);

--
-- Indexes for table `opportunities_contacts`
--
ALTER TABLE `opportunities_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_con_opp_con` (`contact_id`),
  ADD KEY `idx_con_opp_opp` (`opportunity_id`),
  ADD KEY `idx_opportunities_contacts` (`opportunity_id`,`contact_id`);

--
-- Indexes for table `outbound_email`
--
ALTER TABLE `outbound_email`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oe_user_id_idx` (`id`,`user_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects_accounts`
--
ALTER TABLE `projects_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_acct_proj` (`project_id`),
  ADD KEY `idx_proj_acct_acct` (`account_id`),
  ADD KEY `projects_accounts_alt` (`project_id`,`account_id`);

--
-- Indexes for table `projects_bugs`
--
ALTER TABLE `projects_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_bug_proj` (`project_id`),
  ADD KEY `idx_proj_bug_bug` (`bug_id`),
  ADD KEY `projects_bugs_alt` (`project_id`,`bug_id`);

--
-- Indexes for table `projects_cases`
--
ALTER TABLE `projects_cases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_case_proj` (`project_id`),
  ADD KEY `idx_proj_case_case` (`case_id`),
  ADD KEY `projects_cases_alt` (`project_id`,`case_id`);

--
-- Indexes for table `projects_contacts`
--
ALTER TABLE `projects_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_con_proj` (`project_id`),
  ADD KEY `idx_proj_con_con` (`contact_id`),
  ADD KEY `projects_contacts_alt` (`project_id`,`contact_id`);

--
-- Indexes for table `projects_opportunities`
--
ALTER TABLE `projects_opportunities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_opp_proj` (`project_id`),
  ADD KEY `idx_proj_opp_opp` (`opportunity_id`),
  ADD KEY `projects_opportunities_alt` (`project_id`,`opportunity_id`);

--
-- Indexes for table `projects_products`
--
ALTER TABLE `projects_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_proj_prod_project` (`project_id`),
  ADD KEY `idx_proj_prod_product` (`product_id`),
  ADD KEY `projects_products_alt` (`project_id`,`product_id`);

--
-- Indexes for table `project_task`
--
ALTER TABLE `project_task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_task_audit`
--
ALTER TABLE `project_task_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_project_task_parent_id` (`parent_id`);

--
-- Indexes for table `prospects`
--
ALTER TABLE `prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `prospect_auto_tracker_key` (`tracker_key`),
  ADD KEY `idx_prospects_last_first` (`last_name`,`first_name`,`deleted`),
  ADD KEY `idx_prospecs_del_last` (`last_name`,`deleted`),
  ADD KEY `idx_prospects_id_del` (`id`,`deleted`),
  ADD KEY `idx_prospects_assigned` (`assigned_user_id`);

--
-- Indexes for table `prospect_lists`
--
ALTER TABLE `prospect_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_prospect_list_name` (`name`);

--
-- Indexes for table `prospect_lists_prospects`
--
ALTER TABLE `prospect_lists_prospects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_plp_pro_id` (`prospect_list_id`),
  ADD KEY `idx_plp_rel_id` (`related_id`,`related_type`,`prospect_list_id`);

--
-- Indexes for table `prospect_list_campaigns`
--
ALTER TABLE `prospect_list_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_pro_id` (`prospect_list_id`),
  ADD KEY `idx_cam_id` (`campaign_id`),
  ADD KEY `idx_prospect_list_campaigns` (`prospect_list_id`,`campaign_id`);

--
-- Indexes for table `relationships`
--
ALTER TABLE `relationships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_rel_name` (`relationship_name`);

--
-- Indexes for table `releases`
--
ALTER TABLE `releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_releases` (`name`,`deleted`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id_del` (`id`,`deleted`);

--
-- Indexes for table `roles_modules`
--
ALTER TABLE `roles_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_module_id` (`module_id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ru_role_id` (`role_id`),
  ADD KEY `idx_ru_user_id` (`user_id`);

--
-- Indexes for table `saved_search`
--
ALTER TABLE `saved_search`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_desc` (`name`,`deleted`);

--
-- Indexes for table `schedulers`
--
ALTER TABLE `schedulers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_schedule` (`date_time_start`,`deleted`);

--
-- Indexes for table `sugarfeed`
--
ALTER TABLE `sugarfeed`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sgrfeed_date` (`date_entered`,`deleted`),
  ADD KEY `idx_sgrfeed_rmod_rid_date` (`related_module`,`related_id`,`date_entered`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tsk_name` (`name`),
  ADD KEY `idx_task_con_del` (`contact_id`,`deleted`),
  ADD KEY `idx_task_par_del` (`parent_id`,`parent_type`,`deleted`),
  ADD KEY `idx_task_assigned` (`assigned_user_id`),
  ADD KEY `idx_task_status` (`status`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_tracker_iid` (`item_id`),
  ADD KEY `idx_tracker_userid_vis_id` (`user_id`,`visible`,`id`),
  ADD KEY `idx_tracker_userid_itemid_vis` (`user_id`,`item_id`,`visible`),
  ADD KEY `idx_tracker_monitor_id` (`monitor_id`),
  ADD KEY `idx_tracker_date_modified` (`date_modified`);

--
-- Indexes for table `upgrade_history`
--
ALTER TABLE `upgrade_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upgrade_history_md5_uk` (`md5sum`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_name` (`user_name`,`is_group`,`status`,`last_name`,`first_name`,`id`);

--
-- Indexes for table `users_feeds`
--
ALTER TABLE `users_feeds`
  ADD KEY `idx_ud_user_id` (`user_id`,`feed_id`);

--
-- Indexes for table `users_last_import`
--
ALTER TABLE `users_last_import`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`assigned_user_id`);

--
-- Indexes for table `users_password_link`
--
ALTER TABLE `users_password_link`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_username` (`username`);

--
-- Indexes for table `users_signatures`
--
ALTER TABLE `users_signatures`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usersig_uid` (`user_id`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_userprefnamecat` (`assigned_user_id`,`category`);

--
-- Indexes for table `vcals`
--
ALTER TABLE `vcals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_vcal` (`type`,`user_id`);

--
-- Indexes for table `versions`
--
ALTER TABLE `versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_version` (`name`,`deleted`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bugs`
--
ALTER TABLE `bugs`
  MODIFY `bug_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaigns`
--
ALTER TABLE `campaigns`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `campaign_trkrs`
--
ALTER TABLE `campaign_trkrs`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cases`
--
ALTER TABLE `cases`
  MODIFY `case_number` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emailman`
--
ALTER TABLE `emailman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prospects`
--
ALTER TABLE `prospects`
  MODIFY `tracker_key` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
