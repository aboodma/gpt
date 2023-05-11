-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 11:46 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_tables`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `tbl_name` varchar(150) NOT NULL,
  `tbl_column` varchar(150) NOT NULL,
  `tbl_section` varchar(150) NOT NULL,
  `item_id` int(11) NOT NULL,
  `old_data` text DEFAULT NULL,
  `new_data` text DEFAULT NULL,
  `type` varchar(100) NOT NULL,
  `ip_address` varchar(150) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `after_sale_details`
--

CREATE TABLE `after_sale_details` (
  `id` int(11) NOT NULL,
  `enq_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `support_manager_id` int(11) DEFAULT NULL,
  `sales_details_project_name` varchar(500) DEFAULT NULL,
  `sales_details_sale_price` varchar(200) DEFAULT NULL,
  `sales_details_price_currancy_id` int(11) DEFAULT NULL,
  `sales_details_reservation_date` date DEFAULT NULL,
  `sales_details_reservation_deposit_taken` varchar(100) DEFAULT NULL,
  `sales_details_reservation_deposit_taken_currancy_id` int(11) DEFAULT NULL,
  `sales_details_commission` int(3) DEFAULT NULL,
  `sales_details_notes` text DEFAULT NULL,
  `unit_details_types_and_numbers_of_flats` text DEFAULT NULL,
  `unit_details_blocks_purchased_in` text DEFAULT NULL,
  `unit_details_floors_purchased_in` text DEFAULT NULL,
  `unit_details_units_number_purchased` text DEFAULT NULL,
  `unit_details_notes` text DEFAULT NULL,
  `payment_details_down_payment_date` date DEFAULT NULL,
  `payment_details_down_payment_amount` varchar(100) DEFAULT NULL,
  `payment_details_down_payment_currancy_id` int(11) DEFAULT NULL,
  `payment_details_instalment_plan_agreed` text DEFAULT NULL,
  `payment_details_notes` text DEFAULT NULL,
  `after_sales_form_POA` tinyint(1) DEFAULT NULL,
  `after_sales_form_contract_signed` tinyint(1) DEFAULT NULL,
  `after_sales_deliver_date` date DEFAULT NULL,
  `after_sales_keys_obtained` int(2) DEFAULT NULL,
  `after_sales_subscriptions` tinyint(1) DEFAULT NULL,
  `after_sales_title_deed_delivered` int(2) DEFAULT NULL,
  `after_sales_notes` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agency_detail`
--

CREATE TABLE `agency_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `current_work_sector` varchar(1000) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `partner_entity` enum('individual','company') DEFAULT NULL,
  `has_experience_with_sale` tinyint(1) DEFAULT NULL,
  `has_realestate_experince` tinyint(1) DEFAULT NULL,
  `type_of_other_business_experience` varchar(455) DEFAULT NULL,
  `years_of_exp_in_realestate` int(10) UNSIGNED DEFAULT NULL,
  `realestate_sales_scale` enum('international','domestic') DEFAULT NULL,
  `has_worked_as_agent_before` tinyint(1) DEFAULT NULL,
  `work_sector` varchar(455) DEFAULT NULL,
  `has_partnership_with_any_turkish_company` tinyint(1) DEFAULT NULL,
  `partnership_business_sector` varchar(455) DEFAULT NULL,
  `source_of_leads_id` int(11) DEFAULT NULL,
  `leads_type` varchar(455) DEFAULT NULL,
  `stage` enum('pending','waiting for meeting','rejected','accepted') NOT NULL,
  `signed_contract_file` varchar(400) DEFAULT NULL,
  `commission_rate` varchar(100) DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `contract_start_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `agency_detailcol` varchar(45) DEFAULT NULL,
  `contract_sent` tinyint(4) DEFAULT NULL,
  `contract_signed` tinyint(4) DEFAULT NULL,
  `success_ratio` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `agency_notes`
--

CREATE TABLE `agency_notes` (
  `id` int(11) NOT NULL,
  `agency_id` int(11) NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `boo_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `arr_date` date DEFAULT NULL,
  `arr_airport` varchar(300) DEFAULT NULL,
  `arr_time` varchar(100) DEFAULT NULL,
  `people_attending` int(11) DEFAULT NULL,
  `place_stay` text DEFAULT NULL,
  `app_date` date NOT NULL,
  `app_time` varchar(100) NOT NULL,
  `app_place` text NOT NULL,
  `ret_date` date DEFAULT NULL,
  `notes` longtext NOT NULL,
  `properties` text DEFAULT NULL,
  `status_id` int(11) NOT NULL DEFAULT 4,
  `status_note` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `special_notes_re_appointment` text DEFAULT NULL,
  `purchase_reason` int(11) DEFAULT NULL,
  `client_age` int(11) DEFAULT NULL,
  `martial_status` varchar(100) DEFAULT NULL,
  `number_of_children` int(11) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `client_know_the_city` varchar(255) DEFAULT NULL,
  `bought_before` varchar(100) DEFAULT NULL,
  `decision_maker` varchar(255) DEFAULT NULL,
  `who_is_decision_make` varchar(255) DEFAULT NULL,
  `character_profile` text DEFAULT NULL,
  `property_type` int(11) DEFAULT NULL,
  `other_property_type` varchar(450) DEFAULT NULL,
  `numbers_of_bedrooms` int(11) DEFAULT NULL,
  `complex_preference` int(11) DEFAULT NULL,
  `bias_options` text DEFAULT NULL,
  `proximity_to_centre` varchar(455) DEFAULT NULL,
  `public_transport` varchar(100) DEFAULT NULL,
  `areas_by_client` varchar(455) DEFAULT NULL,
  `other_relevant_info` text DEFAULT NULL,
  `payment_terms` int(11) DEFAULT NULL,
  `maximum_budget` varchar(400) DEFAULT NULL,
  `maximum_deposit` varchar(400) DEFAULT NULL,
  `maximum_monthly_payment` varchar(500) DEFAULT NULL,
  `mortgage_needed` varchar(400) DEFAULT NULL,
  `attached_rea` text DEFAULT NULL,
  `notes_on_client` varchar(400) DEFAULT NULL,
  `field_sales_email` varchar(500) DEFAULT NULL,
  `access_code` varchar(500) DEFAULT NULL,
  `pending_counter` int(11) DEFAULT 1,
  `field_agent_id` int(11) DEFAULT NULL,
  `is_appointment_confirmed` tinyint(1) DEFAULT 0,
  `appointment_end_date` date DEFAULT NULL,
  `appointment_end_time` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_comments`
--

CREATE TABLE `booking_comments` (
  `id` int(11) NOT NULL,
  `boo_id` int(11) NOT NULL,
  `comment` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_fields`
--

CREATE TABLE `booking_fields` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `booking_status_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_fields_meta`
--

CREATE TABLE `booking_fields_meta` (
  `id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `booking_field_id` int(11) DEFAULT NULL,
  `field_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_officers`
--

CREATE TABLE `booking_officers` (
  `id` int(11) NOT NULL,
  `officer_id` int(11) NOT NULL,
  `boo_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_status_log`
--

CREATE TABLE `booking_status_log` (
  `id` int(11) NOT NULL,
  `boo_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `notes` text NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_v2`
--

CREATE TABLE `booking_v2` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `enq_id` int(11) DEFAULT NULL,
  `source_of_inquiry` text DEFAULT NULL,
  `finance_in_place` tinyint(1) DEFAULT 0,
  `all_cash_payment` tinyint(1) DEFAULT 0,
  `available_down_payment` text NOT NULL,
  `installments_monthly_capability` text NOT NULL,
  `is_decision_maker_present` tinyint(1) NOT NULL DEFAULT 0,
  `ready_to_buy_now` tinyint(1) NOT NULL DEFAULT 0,
  `notes` text NOT NULL,
  `user_phone_numbers` text NOT NULL,
  `client_emails` text NOT NULL,
  `budget` text NOT NULL,
  `budget_id` int(11) DEFAULT NULL,
  `place_of_stay` text NOT NULL,
  `date_of_arrival` date NOT NULL,
  `date_of_departure` date DEFAULT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` varchar(50) NOT NULL,
  `meeting_place` text NOT NULL,
  `customer_profiling` text NOT NULL,
  `requirements` text NOT NULL,
  `number_of_bedrooms` int(11) NOT NULL DEFAULT 0,
  `most_important_requirement` text NOT NULL,
  `purpose_of_purchase` tinyint(1) NOT NULL,
  `suggested_route_strategy` text NOT NULL,
  `ideal_prospects` text NOT NULL,
  `other_notes` text NOT NULL,
  `send_to` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calls_track`
--

CREATE TABLE `calls_track` (
  `id` int(11) NOT NULL,
  `enq_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `has_called` tinyint(1) DEFAULT 0,
  `has_spoken` tinyint(1) DEFAULT 0,
  `called_at` datetime DEFAULT NULL,
  `spoken_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_budget`
--

CREATE TABLE `cl_budget` (
  `bud_id` int(11) NOT NULL,
  `bud_budgetValue` decimal(10,0) NOT NULL,
  `bud_budgetLabel` varchar(50) NOT NULL,
  `bud_created` datetime DEFAULT NULL,
  `bud_created_by` int(11) NOT NULL DEFAULT 0,
  `bud_lastUpdate` datetime DEFAULT NULL,
  `bud_lastUpdate_by` int(11) NOT NULL DEFAULT 0,
  `bud_deleted` datetime DEFAULT NULL,
  `bud_deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_category`
--

CREATE TABLE `cl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_name_ru` varchar(255) DEFAULT NULL,
  `cat_name_ar` varchar(255) NOT NULL,
  `cat_name_tr` varchar(255) DEFAULT NULL,
  `cat_name_gr` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `cat_name_zh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_contacts`
--

CREATE TABLE `cl_contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(300) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender_agent` varchar(64) NOT NULL DEFAULT '',
  `sender_ip` varchar(32) NOT NULL DEFAULT '',
  `sender_os` varchar(32) NOT NULL DEFAULT '',
  `sent_at` int(11) NOT NULL DEFAULT 0,
  `attachments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_email_templates`
--

CREATE TABLE `cl_email_templates` (
  `id` int(11) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `lang` varchar(2) DEFAULT NULL,
  `is_default` int(1) NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_enquires`
--

CREATE TABLE `cl_enquires` (
  `enq_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `enq_message` longtext DEFAULT NULL,
  `enq_lastPage` varchar(250) DEFAULT NULL,
  `enq_segment` varchar(500) DEFAULT NULL,
  `enq_SE_keywords` text DEFAULT NULL,
  `enq_SE_host` varchar(100) DEFAULT NULL,
  `enq_fromIndex` tinyint(1) NOT NULL DEFAULT 0,
  `enq_externalPage` tinyint(1) NOT NULL DEFAULT 0,
  `enq_created_at` timestamp NULL DEFAULT current_timestamp(),
  `enq_ip_address` varchar(20) DEFAULT NULL,
  `way_id` int(11) DEFAULT NULL,
  `hcw_id` int(11) DEFAULT NULL,
  `rea_id` int(11) DEFAULT NULL,
  `pass` varchar(250) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `enq_tagged` tinyint(1) NOT NULL DEFAULT 0,
  `enq_section` enum('/','end','listing','pdf','static','sell','tellFriendSender','tellFriendReceiver','admin','landing') NOT NULL,
  `sellPropertyPlace` varchar(300) DEFAULT NULL,
  `enq_assignDate` datetime DEFAULT NULL,
  `enq_saleUpdate` tinyint(1) NOT NULL DEFAULT 0,
  `enq_freshClient` tinyint(1) NOT NULL DEFAULT 1,
  `is_fresh_for_support_manager` tinyint(1) DEFAULT 0,
  `is_reallocated` int(11) DEFAULT 0,
  `reallocated_at` datetime DEFAULT NULL,
  `called` tinyint(1) DEFAULT 0,
  `spoken` tinyint(1) DEFAULT 0,
  `called_at` datetime DEFAULT NULL,
  `spoken_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Triggers `cl_enquires`
--
DELIMITER $$
CREATE TRIGGER `cl_enquires_insert` AFTER INSERT ON `cl_enquires` FOR EACH ROW UPDATE profiles  set profiles.last_enquiry_id = new.enq_id where profiles.user_id = new.user_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `patch_profiles_upon_insert_enquire` AFTER INSERT ON `cl_enquires` FOR EACH ROW UPDATE profiles SET
                        profiles.user_email = (select email from users where users.id = NEW.user_id ),
						profiles.new_user_id = (select users.id from users where users.id =  NEW.user_id),
                        profiles.deleted_at = (select deleted_at from users where users.id = NEW.user_id ),
                        profiles.sou_name = (select sou_name from cl_source where profiles.sou_id = cl_source.sou_id  ),
                        profiles.bud_budgetLabel = (select bud_budgetLabel from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                        profiles.bud_budgetValue = (select bud_budgetValue from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                        profiles.enq_created_at = (select created_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_freshClient = (select enq_freshClient from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.is_reallocated = (select is_reallocated from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_saleUpdate = (select enq_saleUpdate from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.reallocated_at = (select reallocated_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_ip_address = (select enq_ip_address from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.rea_id = (select rea_id from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.is_fresh_for_support_manager = (select is_fresh_for_support_manager from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.sales_details_project_name = (select sales_details_project_name from after_sale_details where after_sale_details.enq_id = profiles.last_enquiry_id group by after_sale_details.user_id )

    WHERE profiles.user_id = NEW.user_id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `patch_profiles_upon_update_enquire` AFTER UPDATE ON `cl_enquires` FOR EACH ROW UPDATE profiles SET
                        profiles.user_email = (select email from users where users.id = NEW.user_id ),
						profiles.new_user_id = (select users.id from users where users.id =  NEW.user_id),
                        profiles.deleted_at = (select deleted_at from users where users.id = NEW.user_id ),
                        profiles.sou_name = (select sou_name from cl_source where profiles.sou_id = cl_source.sou_id  ),
                        profiles.bud_budgetLabel = (select bud_budgetLabel from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                        profiles.bud_budgetValue = (select bud_budgetValue from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                        profiles.enq_created_at = (select created_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_freshClient = (select enq_freshClient from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.is_reallocated = (select is_reallocated from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_saleUpdate = (select enq_saleUpdate from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.reallocated_at = (select reallocated_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.enq_ip_address = (select enq_ip_address from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.rea_id = (select rea_id from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.is_fresh_for_support_manager = (select is_fresh_for_support_manager from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                        profiles.sales_details_project_name = (select sales_details_project_name from after_sale_details where after_sale_details.enq_id = profiles.last_enquiry_id group by after_sale_details.user_id )

    WHERE profiles.user_id = NEW.user_id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Stand-in structure for view `cl_enquires_sort`
-- (See below for the actual view)
--
CREATE TABLE `cl_enquires_sort` (
`enq_id` int(10) unsigned
,`user_id` int(10) unsigned
,`enq_message` longtext
,`enq_lastPage` varchar(250)
,`enq_segment` varchar(500)
,`enq_SE_keywords` text
,`enq_SE_host` varchar(100)
,`enq_fromIndex` tinyint(1)
,`enq_externalPage` tinyint(1)
,`enq_created_at` timestamp
,`enq_ip_address` varchar(20)
,`way_id` int(11)
,`hcw_id` int(11)
,`rea_id` int(11)
,`pass` varchar(250)
,`enq_tagged` tinyint(1)
,`enq_section` enum('/','end','listing','pdf','static','sell','tellFriendSender','tellFriendReceiver','admin','landing')
,`sellPropertyPlace` varchar(300)
,`enq_assignDate` datetime
,`enq_saleUpdate` tinyint(1)
,`enq_freshClient` tinyint(1)
,`is_fresh_for_support_manager` tinyint(1)
,`is_reallocated` int(11)
,`reallocated_at` datetime
,`called` tinyint(1)
,`spoken` tinyint(1)
,`called_at` datetime
,`spoken_at` datetime
);

-- --------------------------------------------------------

--
-- Table structure for table `cl_hcwhy`
--

CREATE TABLE `cl_hcwhy` (
  `hcw_id` int(10) UNSIGNED NOT NULL,
  `hcw_option` varchar(250) NOT NULL,
  `hcw_option_fa` varchar(250) DEFAULT NULL,
  `hcw_option_ru` varchar(400) DEFAULT NULL,
  `hcw_option_ar` varchar(400) NOT NULL,
  `hcw_option_tr` varchar(400) DEFAULT NULL,
  `hcw_option_gr` varchar(400) DEFAULT NULL,
  `hcw_created` datetime DEFAULT NULL,
  `hcw_created_by` int(11) NOT NULL DEFAULT 0,
  `hcw_lastUpdate` datetime DEFAULT NULL,
  `hcw_lastUpdate_by` int(11) NOT NULL DEFAULT 0,
  `hcw_deleted` datetime DEFAULT NULL,
  `hcw_deleted_by` int(11) NOT NULL DEFAULT 0,
  `hcw_option_zh` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_quotationmails`
--

CREATE TABLE `cl_quotationmails` (
  `quo_id` int(10) UNSIGNED NOT NULL,
  `rea_id` text DEFAULT NULL,
  `quo_toEmail` varchar(200) DEFAULT NULL,
  `quo_ccEmail` varchar(200) DEFAULT NULL,
  `quo_bccEmail` varchar(200) DEFAULT NULL,
  `quo_subject` varchar(250) DEFAULT NULL,
  `quo_sentHTML` longtext DEFAULT NULL,
  `quo_lastSentDate` datetime DEFAULT NULL,
  `quo_createDate` datetime DEFAULT NULL,
  `quo_message` longtext DEFAULT NULL,
  `quo_salutation` varchar(500) DEFAULT NULL,
  `quo_footer` text DEFAULT NULL,
  `tem_slug` varchar(200) DEFAULT NULL,
  `quo_read` tinyint(1) NOT NULL DEFAULT 0,
  `quo_click` tinyint(1) NOT NULL DEFAULT 0,
  `unique_id` varchar(200) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sent_times` int(11) NOT NULL DEFAULT 0,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_salesnote`
--

CREATE TABLE `cl_salesnote` (
  `sal_id` int(10) UNSIGNED NOT NULL,
  `sal_note` text DEFAULT NULL,
  `enq_id` int(11) NOT NULL DEFAULT 0,
  `client_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sal_insertedDate` timestamp NULL DEFAULT current_timestamp(),
  `rea_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sal_created_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_source`
--

CREATE TABLE `cl_source` (
  `sou_id` int(10) UNSIGNED NOT NULL,
  `sou_name` varchar(400) NOT NULL,
  `sou_created` datetime DEFAULT NULL,
  `sou_created_by` int(11) NOT NULL DEFAULT 0,
  `sou_lastUpdate` datetime DEFAULT NULL,
  `sou_lastUpdate_by` int(11) NOT NULL DEFAULT 0,
  `sou_deleted` datetime DEFAULT NULL,
  `sou_deleted_by` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_status`
--

CREATE TABLE `cl_status` (
  `sta_id` int(11) NOT NULL,
  `sta_name` varchar(255) NOT NULL,
  `sta_name_ru` varchar(255) DEFAULT NULL,
  `sta_name_tr` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cl_wayptb`
--

CREATE TABLE `cl_wayptb` (
  `way_id` int(10) UNSIGNED NOT NULL,
  `way_option` varchar(250) NOT NULL,
  `way_option_fa` varchar(250) DEFAULT NULL,
  `way_option_ru` varchar(400) DEFAULT NULL,
  `way_option_ar` varchar(400) NOT NULL,
  `way_option_tr` varchar(400) DEFAULT NULL,
  `way_option_gr` varchar(400) DEFAULT NULL,
  `way_created` datetime DEFAULT NULL,
  `way_created_by` int(11) NOT NULL DEFAULT 0,
  `way_lastUpdate` datetime DEFAULT NULL,
  `way_lastUpdate_by` int(11) NOT NULL DEFAULT 0,
  `way_deleted` datetime DEFAULT NULL,
  `way_deleted_by` int(11) NOT NULL DEFAULT 0,
  `way_option_zh` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `new_leads_tracker`
--

CREATE TABLE `new_leads_tracker` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL,
  `enq_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_terms`
--

CREATE TABLE `payment_terms` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(9) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `ordering_count` int(11) DEFAULT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `display_name` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `bio` text DEFAULT NULL,
  `dob` varchar(50) DEFAULT NULL,
  `gender` set('m','f','') DEFAULT NULL,
  `phone` varchar(200) DEFAULT NULL,
  `mobile` varchar(200) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `address_line3` varchar(255) DEFAULT NULL,
  `postcode` varchar(20) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `updated_on` int(11) UNSIGNED DEFAULT NULL,
  `booking_status` varchar(255) DEFAULT '3',
  `category` varchar(255) DEFAULT NULL,
  `booking_date` date DEFAULT NULL,
  `next_call_date` date DEFAULT NULL,
  `support_manager_next_call_date` date DEFAULT NULL,
  `next_snooze_time` time DEFAULT NULL,
  `secondry_email_1` varchar(255) DEFAULT NULL,
  `secondry_email_2` varchar(255) DEFAULT NULL,
  `client_status` varchar(255) DEFAULT NULL,
  `verified` varchar(255) DEFAULT NULL,
  `maximum_budget` varchar(255) DEFAULT NULL,
  `finance_required` varchar(255) DEFAULT NULL,
  `newsletter_subscribed` varchar(255) DEFAULT NULL,
  `source_of_enquiry` varchar(255) DEFAULT NULL,
  `property_ref` longtext DEFAULT NULL,
  `referred_to` varchar(255) DEFAULT NULL,
  `origin_country` int(11) DEFAULT NULL,
  `cou_id` int(10) UNSIGNED DEFAULT NULL,
  `cit_id` int(10) UNSIGNED DEFAULT NULL,
  `are_id` int(10) UNSIGNED DEFAULT NULL,
  `sales_id` int(11) DEFAULT 0,
  `support_manager_id` int(11) DEFAULT NULL,
  `legal_manager_id` int(11) DEFAULT NULL,
  `priority` varchar(255) DEFAULT '2',
  `reg_id` int(11) DEFAULT NULL,
  `translator_language` text DEFAULT NULL,
  `email_signature` longtext DEFAULT NULL,
  `client_category` varchar(255) DEFAULT '1',
  `bud_id` int(11) DEFAULT NULL,
  `sou_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT 1,
  `sta_id` int(11) DEFAULT 3,
  `tag` tinyint(1) DEFAULT 0,
  `stop_leads` tinyint(1) DEFAULT 0,
  `email_me` enum('never','weekly','monthly') NOT NULL DEFAULT 'never',
  `last_enquiry_id` int(10) UNSIGNED DEFAULT NULL,
  `enq_assignDate` datetime DEFAULT NULL,
  `enq_saleUpdate` tinyint(1) DEFAULT 0,
  `reallocated_at` datetime DEFAULT NULL,
  `enq_ip_address` varchar(20) DEFAULT NULL,
  `rea_id` int(10) UNSIGNED DEFAULT NULL,
  `is_fresh_for_support_manager` tinyint(1) DEFAULT 0,
  `sales_details_project_name` varchar(500) DEFAULT NULL,
  `user_email` varchar(400) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `sou_name` varchar(400) DEFAULT NULL,
  `bud_budgetLabel` varchar(400) DEFAULT NULL,
  `bud_budgetValue` varchar(400) DEFAULT NULL,
  `enq_created_at` datetime DEFAULT NULL,
  `enq_freshClient` tinyint(1) DEFAULT 1,
  `is_reallocated` tinyint(1) DEFAULT 0,
  `priority_int` int(11) DEFAULT 2,
  `new_user_id` int(11) DEFAULT NULL,
  `is_junk` tinyint(1) NOT NULL DEFAULT 0,
  `junk_by` varchar(1000) DEFAULT NULL,
  `is_pending_reallocations` tinyint(4) NOT NULL DEFAULT 0,
  `reallocated_by` int(11) DEFAULT NULL,
  `decline_note` text DEFAULT NULL,
  `pool_flag` tinyint(1) NOT NULL,
  `agency_id` int(11) DEFAULT NULL,
  `reallocated_to_farsi` tinyint(4) DEFAULT 0,
  `sorting_session` varchar(255) DEFAULT NULL,
  `reallocated_to_russian` tinyint(4) NOT NULL DEFAULT 0,
  `reallocated_to_russian_at` datetime DEFAULT NULL,
  `access_to_farsi_pool` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reason_of_purchase`
--

CREATE TABLE `reason_of_purchase` (
  `id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `slug` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `registration_source`
--

CREATE TABLE `registration_source` (
  `reg_id` int(11) NOT NULL,
  `reg_name` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reports_name`
--

CREATE TABLE `reports_name` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `report_details`
--

CREATE TABLE `report_details` (
  `id` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `report_data` text NOT NULL,
  `user_agent` text DEFAULT NULL,
  `user_ip` text DEFAULT NULL,
  `user_ref` text DEFAULT NULL,
  `is_link` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `rul_id` int(10) UNSIGNED NOT NULL,
  `rul_name` varchar(100) NOT NULL,
  `rul_slug` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(60) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `salt` varchar(6) NOT NULL DEFAULT '',
  `group_id` int(11) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `last_activation_sent` date DEFAULT NULL,
  `show_sales` tinyint(1) DEFAULT 0,
  `show_seo_btn` tinyint(1) NOT NULL DEFAULT 0,
  `show_devDetails` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `last_login` int(11) NOT NULL,
  `last_login_ip` varchar(250) DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_by` int(11) NOT NULL DEFAULT 0,
  `updated_at` datetime DEFAULT NULL,
  `updated_by` int(11) NOT NULL DEFAULT 0,
  `last_activity` varchar(50) DEFAULT NULL,
  `notification_email` text DEFAULT NULL,
  `supervisor_over` text DEFAULT NULL,
  `regional_controller_id` int(11) DEFAULT NULL,
  `access_to_reallocated` tinyint(1) DEFAULT 0,
  `access_to_priority_pool` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_priority_pool2` tinyint(1) DEFAULT 0,
  `access_to_client_pool` tinyint(1) DEFAULT 0,
  `access_kpis` tinyint(1) DEFAULT 0,
  `deleted_at` datetime DEFAULT NULL,
  `deleted_by` int(11) DEFAULT NULL,
  `leads_cap` int(11) DEFAULT NULL,
  `access_to_junk_pool` tinyint(4) NOT NULL DEFAULT 0,
  `access_to_urgent_pool` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_pool_1` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_pool_2` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_russian_pool` tinyint(4) NOT NULL DEFAULT 0,
  `send_to_russian_pool` tinyint(4) NOT NULL DEFAULT 0,
  `access_all_hours` tinyint(4) NOT NULL DEFAULT 0,
  `access_to_fresh_farsi_clients` tinyint(1) NOT NULL DEFAULT 0,
  `access_to_farsi_pool` tinyint(4) NOT NULL DEFAULT 0,
  `send_to_farsi_pool` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Registered User Information';

--
-- Triggers `users`
--
DELIMITER $$
CREATE TRIGGER `patch_user_email_in_profiles` AFTER UPDATE ON `users` FOR EACH ROW UPDATE profiles SET
                    profiles.user_email = NEW.email,
                    profiles.deleted_at = NEW.deleted_at,
                                        profiles.new_user_id = (select users.id from users where users.id =  NEW.id),
                    profiles.sou_name = (select sou_name from cl_source where profiles.sou_id = cl_source.sou_id ),
                    profiles.bud_budgetLabel = (select bud_budgetLabel from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                    profiles.bud_budgetValue = (select bud_budgetValue from cl_budget where profiles.bud_id = cl_budget.bud_id ),
                    profiles.enq_created_at = (select created_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.enq_freshClient = (select enq_freshClient from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.is_reallocated = (select is_reallocated from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.enq_saleUpdate = (select enq_saleUpdate from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.reallocated_at = (select reallocated_at from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.enq_ip_address = (select enq_ip_address from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.rea_id = (select rea_id from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.is_fresh_for_support_manager = (select is_fresh_for_support_manager from cl_enquires where profiles.last_enquiry_id = cl_enquires.enq_id ),
                    profiles.sales_details_project_name = (select sales_details_project_name from after_sale_details where after_sale_details.enq_id = profiles.last_enquiry_id group by after_sale_details.user_id )

WHERE profiles.user_id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user_tracking`
--

CREATE TABLE `user_tracking` (
  `id` int(11) NOT NULL,
  `page_url` varchar(500) DEFAULT NULL,
  `page_time` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `enq_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Structure for view `cl_enquires_sort`
--
DROP TABLE IF EXISTS `cl_enquires_sort`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cl_enquires_sort`  AS SELECT `cl_enquires`.`enq_id` AS `enq_id`, `cl_enquires`.`user_id` AS `user_id`, `cl_enquires`.`enq_message` AS `enq_message`, `cl_enquires`.`enq_lastPage` AS `enq_lastPage`, `cl_enquires`.`enq_segment` AS `enq_segment`, `cl_enquires`.`enq_SE_keywords` AS `enq_SE_keywords`, `cl_enquires`.`enq_SE_host` AS `enq_SE_host`, `cl_enquires`.`enq_fromIndex` AS `enq_fromIndex`, `cl_enquires`.`enq_externalPage` AS `enq_externalPage`, `cl_enquires`.`enq_created_at` AS `enq_created_at`, `cl_enquires`.`enq_ip_address` AS `enq_ip_address`, `cl_enquires`.`way_id` AS `way_id`, `cl_enquires`.`hcw_id` AS `hcw_id`, `cl_enquires`.`rea_id` AS `rea_id`, `cl_enquires`.`pass` AS `pass`, `cl_enquires`.`enq_tagged` AS `enq_tagged`, `cl_enquires`.`enq_section` AS `enq_section`, `cl_enquires`.`sellPropertyPlace` AS `sellPropertyPlace`, `cl_enquires`.`enq_assignDate` AS `enq_assignDate`, `cl_enquires`.`enq_saleUpdate` AS `enq_saleUpdate`, `cl_enquires`.`enq_freshClient` AS `enq_freshClient`, `cl_enquires`.`is_fresh_for_support_manager` AS `is_fresh_for_support_manager`, `cl_enquires`.`is_reallocated` AS `is_reallocated`, `cl_enquires`.`reallocated_at` AS `reallocated_at`, `cl_enquires`.`called` AS `called`, `cl_enquires`.`spoken` AS `spoken`, `cl_enquires`.`called_at` AS `called_at`, `cl_enquires`.`spoken_at` AS `spoken_at` FROM `cl_enquires` ORDER BY `cl_enquires`.`enq_id` DESC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `after_sale_details`
--
ALTER TABLE `after_sale_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `enq_id` (`enq_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `support_manager_id` (`support_manager_id`);

--
-- Indexes for table `agency_detail`
--
ALTER TABLE `agency_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `agency_notes`
--
ALTER TABLE `agency_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`boo_id`);

--
-- Indexes for table `booking_comments`
--
ALTER TABLE `booking_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_fields`
--
ALTER TABLE `booking_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_fields_meta`
--
ALTER TABLE `booking_fields_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_officers`
--
ALTER TABLE `booking_officers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status_log`
--
ALTER TABLE `booking_status_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_v2`
--
ALTER TABLE `booking_v2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`enq_id`);

--
-- Indexes for table `calls_track`
--
ALTER TABLE `calls_track`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `called_at` (`called_at`),
  ADD KEY `spoken_at` (`spoken_at`),
  ADD KEY `has_spoken` (`has_spoken`),
  ADD KEY `has_called` (`has_called`);

--
-- Indexes for table `cl_budget`
--
ALTER TABLE `cl_budget`
  ADD PRIMARY KEY (`bud_id`),
  ADD KEY `bud_id` (`bud_id`,`bud_budgetValue`,`bud_budgetLabel`);

--
-- Indexes for table `cl_category`
--
ALTER TABLE `cl_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cl_contacts`
--
ALTER TABLE `cl_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cl_email_templates`
--
ALTER TABLE `cl_email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug_lang` (`slug`,`lang`);

--
-- Indexes for table `cl_enquires`
--
ALTER TABLE `cl_enquires`
  ADD PRIMARY KEY (`enq_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `enq_created_at` (`enq_created_at`,`way_id`,`hcw_id`,`rea_id`,`enq_saleUpdate`,`enq_freshClient`),
  ADD KEY `is_reallocated` (`is_reallocated`),
  ADD KEY `cl_enquires_index` (`enq_created_at`,`enq_ip_address`),
  ADD KEY `enq_assignDate` (`enq_assignDate`);

--
-- Indexes for table `cl_hcwhy`
--
ALTER TABLE `cl_hcwhy`
  ADD PRIMARY KEY (`hcw_id`);

--
-- Indexes for table `cl_quotationmails`
--
ALTER TABLE `cl_quotationmails`
  ADD PRIMARY KEY (`quo_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `cl_salesnote`
--
ALTER TABLE `cl_salesnote`
  ADD PRIMARY KEY (`sal_id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `sal_created_by` (`sal_created_by`),
  ADD KEY `sal_created_by_2` (`sal_created_by`),
  ADD KEY `sal_created_by_3` (`sal_created_by`);

--
-- Indexes for table `cl_source`
--
ALTER TABLE `cl_source`
  ADD PRIMARY KEY (`sou_id`),
  ADD KEY `sou_id` (`sou_id`);

--
-- Indexes for table `cl_status`
--
ALTER TABLE `cl_status`
  ADD PRIMARY KEY (`sta_id`);

--
-- Indexes for table `cl_wayptb`
--
ALTER TABLE `cl_wayptb`
  ADD PRIMARY KEY (`way_id`);

--
-- Indexes for table `new_leads_tracker`
--
ALTER TABLE `new_leads_tracker`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indexes for table `payment_terms`
--
ALTER TABLE `payment_terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `reg_id` (`reg_id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `bud_id` (`bud_id`),
  ADD KEY `next_call_date` (`sales_id`,`next_call_date`),
  ADD KEY `tag` (`tag`),
  ADD KEY `sou_id` (`sou_id`),
  ADD KEY `user_id_3` (`user_id`,`display_name`,`sales_id`,`bud_id`,`sou_id`),
  ADD KEY `last_enquiry_id` (`last_enquiry_id`),
  ADD KEY `enq_assignDate` (`enq_assignDate`),
  ADD KEY `bud_id_2` (`enq_assignDate`,`bud_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `priority_int` (`priority_int`),
  ADD KEY `new_user_id` (`new_user_id`),
  ADD KEY `is_reallocated` (`is_reallocated`),
  ADD KEY `enq_freshClient` (`enq_freshClient`),
  ADD KEY `enq_created_at` (`enq_created_at`),
  ADD KEY `next_snooze_time` (`next_snooze_time`),
  ADD KEY `next_call_date_2` (`next_call_date`,`sales_id`,`last_enquiry_id`,`is_reallocated`,`new_user_id`,`deleted_at`),
  ADD KEY `deleted_at` (`deleted_at`),
  ADD KEY `is_fresh_for_support_manager` (`is_fresh_for_support_manager`),
  ADD KEY `enq_saleUpdate` (`enq_saleUpdate`),
  ADD KEY `priority_2` (`priority`,`bud_id`),
  ADD KEY `bud_id_3` (`bud_id`,`enq_assignDate`),
  ADD KEY `next_call_date_3` (`next_call_date`),
  ADD KEY `junk` (`is_junk`),
  ADD KEY `is_pending_reallocations_index` (`is_pending_reallocations`),
  ADD KEY `pool_flag` (`pool_flag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
