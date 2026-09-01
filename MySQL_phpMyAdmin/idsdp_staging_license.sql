-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 04, 2024 at 06:59 AM
-- Server version: 8.0.35
-- PHP Version: 8.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `idsdp_staging_license`
--

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_application_inspections`
--

CREATE TABLE `license_s5zyr2p6_application_inspections` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inspection_date` date DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `installation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_application_inspections`
--

INSERT INTO `license_s5zyr2p6_application_inspections` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `title`, `inspection_date`, `details`, `installation_code`, `attachment`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '5c2061c4-b9e2-4d04-a538-97eb95f61f4a', 37, 'App\\Models\\ApplicationELicense', 3, 'You need to do a inspection', '2023-12-20', NULL, NULL, NULL, 1731, 1731, NULL, '2023-12-19 08:48:45', '2023-12-19 08:48:45'),
(2, '08e9efb0-2895-4287-bde9-db01c223234d', 37, 'App\\Models\\ApplicationELicense', 3, 'You need to do a inspection', '2023-12-22', NULL, NULL, NULL, 1731, 1731, NULL, '2023-12-19 08:48:59', '2023-12-19 08:48:59'),
(3, '53af7873-be87-4e0e-9b93-9391d668c4db', 37, 'App\\Models\\ApplicationELicense', 3, 'You need to do a inspection', '2023-12-19', NULL, NULL, NULL, 1731, 1731, NULL, '2023-12-19 08:49:11', '2023-12-19 08:49:11');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_applications`
--

CREATE TABLE `license_s5zyr2p6_class_a_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SYSTEM',
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_group_id` bigint UNSIGNED DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `amendment_type` json DEFAULT NULL,
  `amendment_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correction_type` json DEFAULT NULL,
  `license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activities_purpose_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_step` bigint UNSIGNED DEFAULT NULL,
  `applicant_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_designation_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_designation_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_institute_applicant_address_same` tinyint(1) NOT NULL DEFAULT '0',
  `institute_division_id` bigint UNSIGNED DEFAULT NULL,
  `institute_district_id` bigint UNSIGNED DEFAULT NULL,
  `institute_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `institute_address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_warehouse_address_same` tinyint(1) NOT NULL DEFAULT '0',
  `warehouse_division_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_district_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_dob` date DEFAULT NULL,
  `authorized_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_division_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_district_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `use_purpose_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `use_purpose_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `layout_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maintenance_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quality_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `schedule_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organogram_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `organogram_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_expertise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_recognition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_division_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_district_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specialist_mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_renewal_fee_id` bigint UNSIGNED DEFAULT NULL,
  `materials_extra_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `materials_extra_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_agency_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `calibration_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warehouse_handling_facility` json DEFAULT NULL,
  `warehouse_handling_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waste_storage_disposal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `waste_storage_disposal_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_control_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `radiation_control_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fire_safety_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fire_safety_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_preparation_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_preparation_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tranining_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `training_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_fee` decimal(10,2) DEFAULT NULL,
  `renewal_fee` decimal(10,2) DEFAULT NULL,
  `amendment_fee` decimal(10,2) DEFAULT NULL,
  `vat` decimal(8,2) NOT NULL DEFAULT '0.00',
  `surcharge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `submission_date` date DEFAULT NULL,
  `original_submission_date` date DEFAULT NULL,
  `original_license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_issue_renew_date` date DEFAULT NULL,
  `legacy_expiry_date` date DEFAULT NULL,
  `renewal_years` int DEFAULT NULL,
  `renewal_year_upto` date DEFAULT NULL,
  `is_agreed` tinyint(1) NOT NULL DEFAULT '0',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_applications`
--

INSERT INTO `license_s5zyr2p6_class_a_applications` (`id`, `uuid`, `organization_id`, `organogram_id`, `service_mapping_id`, `application_medium`, `application_type`, `current_active_step`, `tracking_number`, `parent_group_id`, `docketing_number`, `previous_application_id`, `amendment_type`, `amendment_attachment`, `correction_type`, `license_attachment`, `activities_purpose`, `activities_purpose_other`, `application_step`, `applicant_name_en`, `applicant_name_bn`, `applicant_nid`, `applicant_division_id`, `applicant_district_id`, `applicant_upazila_id`, `applicant_address`, `applicant_phone`, `applicant_mobile`, `applicant_email`, `institute_name_en`, `institute_name_bn`, `institute_designation_en`, `institute_designation_bn`, `is_institute_applicant_address_same`, `institute_division_id`, `institute_district_id`, `institute_upazila_id`, `institute_address_en`, `institute_address_bn`, `institute_phone`, `is_warehouse_address_same`, `warehouse_division_id`, `warehouse_district_id`, `warehouse_upazila_id`, `warehouse_address`, `authorized_name`, `authorized_nid`, `authorized_dob`, `authorized_address`, `authorized_division_id`, `authorized_district_id`, `authorized_upazila_id`, `authorized_telephone`, `authorized_fax`, `authorized_mobile`, `authorized_email`, `authorized_designation`, `authorized_signature`, `rco_application_id`, `use_purpose_details`, `use_purpose_attachment`, `layout_details`, `layout_attachment`, `maintenance_details`, `maintenance_attachment`, `quality_details`, `quality_attachment`, `schedule_details`, `schedule_attachment`, `organogram_details`, `organogram_attachment`, `specialist_name`, `specialist_expertise`, `specialist_education`, `specialist_qualification`, `specialist_experience`, `specialist_recognition`, `specialist_division_id`, `specialist_district_id`, `specialist_upazila_id`, `specialist_phone`, `specialist_address`, `specialist_mobile_number`, `specialist_email`, `license_renewal_fee_id`, `materials_extra_details`, `materials_extra_attachment`, `calibration_agency`, `calibration_agency_address`, `calibration_attachment`, `warehouse_handling_facility`, `warehouse_handling_attachment`, `waste_storage_disposal`, `waste_storage_disposal_attachment`, `radiation_control_details`, `radiation_control_attachment`, `fire_safety_details`, `fire_safety_attachment`, `emergency_preparation_details`, `emergency_preparation_attachment`, `tranining_details`, `training_attachment`, `applicant_signature`, `license_fee`, `renewal_fee`, `amendment_fee`, `vat`, `surcharge`, `total_fee`, `submission_date`, `original_submission_date`, `original_license_attachment`, `legacy_license_permit_number`, `legacy_issue_renew_date`, `legacy_expiry_date`, `renewal_years`, `renewal_year_upto`, `is_agreed`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, '00f6b1a1-c291-4d77-8684-0a7cbb40e518', 7, NULL, 67, 'MANUAL', 'NEW', 9, 'A-202312100001', 1, 'BAERA - ENlIistedA - Permit', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Mithu', 'মিথু', NULL, 4, 10, 288, 'ফ', NULL, '01780940522', 'abc@yopmail.com', 'mri', 'হজদেহতি', '্দ', 'দ', 0, 4, 15, 298, 'দ', '্গ', NULL, 0, NULL, NULL, NULL, NULL, 'e', '9829737287', '2023-12-11', NULL, 3, 23, 205, '01780940522', NULL, '01780940522', 'hossainnilufar12@gmail.com', NULL, NULL, 1, 'e', NULL, 'e', NULL, 'e', NULL, 'e', NULL, 'e', NULL, 'e', '6576b76b95166', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-11', '2023-11-29', '6575596ca7083', '112533/29092023', '2022-12-03', '2023-12-30', NULL, NULL, 1, 0, 1668, NULL, NULL, '2023-12-10 06:40:21', '2023-12-11 11:43:14', 'APPROVED'),
(2, 'e8a04329-8433-4e26-9e99-6c29e82aaae7', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312110002', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Nilufar', 'জনু', '2324324232', 5, 13, 406, 'এ', NULL, '01838748676', NULL, 'Nilufar', 'নিলুফার', 'ed', 'দ', 0, 5, 12, 396, 'স', 'স', NULL, 1, NULL, NULL, NULL, NULL, 'মিরেথুইহ', '9829737287', '2019-12-04', NULL, 4, 15, 294, NULL, NULL, '01029309797', NULL, NULL, NULL, 2, 'cf', NULL, 'd', NULL, 'd', NULL, 'd', NULL, 'd', NULL, 's', '657567663d9ae', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, NULL, NULL, 'f', 'w', '6575679626603', '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\"]', '657567a1c30d6', NULL, NULL, NULL, '657567a8d5c25', 'c', '657567ad083d7', NULL, '657567b2a99fa', 'd', NULL, NULL, 200000.00, 0.00, 0.00, 30000.00, 0.00, 230000.00, '2023-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 677, NULL, '2023-12-10 07:05:36', '2023-12-11 06:25:32', 'APPROVED'),
(3, '2b6e0a46-d12f-4c4b-aecd-06767d42a694', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312110003', 11, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'jhjd', 'গবভ্বর', '2324324232', 4, 16, 305, '্বী', NULL, '01298392479', NULL, 's', 'স', 'ed', 'দ', 0, 4, 15, 294, 'ে', 'ী', NULL, 1, NULL, NULL, NULL, NULL, 'এ', '9829737287', '2008-12-17', NULL, 3, 23, 206, NULL, NULL, '01838389834', NULL, NULL, NULL, 2, 'd', NULL, 'd', NULL, 'd', NULL, 'd', NULL, 'd', NULL, 'd', '65769e221dc45', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\"]', '65769e6084b26', NULL, NULL, NULL, '65769e66d652b', 'f', '65769e6a6e583', NULL, '65769e6e660e5', 'f', NULL, NULL, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 1729, NULL, '2023-12-11 05:28:18', '2024-01-02 04:36:44', 'ASSIGNED_FOR_EVALUATION'),
(4, 'ea0d604e-b54d-4111-b6b9-86473162acfd', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312120004', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Nilufar', 'নিলুফার', '2324324232', 5, 12, 397, 'হব০৯', NULL, '01789099892', NULL, 'REB Aid', 'আর দি বি আইদ', 'ed', 'দ', 0, 5, 12, 397, '্দ', 'দ', NULL, 1, NULL, NULL, NULL, NULL, 'মিথুন', '9829737287', '2008-12-04', 'মিরপুর ২', 5, 12, 396, NULL, NULL, '02982983787', NULL, NULL, NULL, 2, 'defefvfg fegergre', NULL, 'retretret ertretre', NULL, 'retrettr', NULL, 'retret', NULL, 'retret', NULL, 'retret', '6576f2e296f77', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\"]', '6577d1037c1e9', NULL, NULL, NULL, '6577d1160da92', 'd', '6577d11c4feaa', NULL, '6577d12231878', 'h', NULL, NULL, 375000.00, 0.00, 0.00, 56250.00, 0.00, 431250.00, '2023-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 1668, NULL, '2023-12-11 11:11:06', '2023-12-21 07:37:36', 'PAYMENT_PENDING'),
(5, '6b7c02a5-85e8-4fae-9514-ae41dc6d62c0', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312120005', 2, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'License A with RCO', 'ঝব্দস', '2324324232', 4, 10, 287, 'দ', '01780940522', '01780940522', 'hossainnilufar12@gmail.com', 'Nilufar Hossain', '্বজ', 'দ', '্দ', 0, 5, 12, 396, '13/', '্দ', '01780940522', 1, NULL, NULL, NULL, NULL, '্দ', '9829737287', '2012-12-08', NULL, 4, 15, 298, NULL, NULL, '01832938274', NULL, NULL, NULL, 3, 't', NULL, 't', NULL, 't', NULL, 't', NULL, 't', NULL, 't', '65781e6b0fcfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, 'g', 'g', '65781ecddec8d', '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\", \"PPE\"]', '65781ea515512', NULL, NULL, NULL, '65781eac59fe5', 'f', '65781eb0cac83', NULL, '65781eb51ce3b', 't', NULL, NULL, 225000.00, 0.00, 0.00, 33750.00, 0.00, 258750.00, '2023-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 1668, NULL, '2023-12-12 08:47:47', '2023-12-12 09:08:56', 'RESUBMITTED'),
(6, 'e1ad72bb-b8cb-4f92-b310-5403623e40ae', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202312120006', 2, NULL, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'we', 'ঝ', NULL, 4, 15, 295, '্ব', NULL, '01293898982', NULL, 'de', 'জিজ', '্দ', 'দ', 0, 5, 12, 397, 'দ', '্দ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-12', '2023-12-11', '6578260e415b1', '112533/2025', '2023-12-12', '2025-12-20', NULL, NULL, 1, 0, 1668, 677, NULL, '2023-12-12 09:22:38', '2023-12-12 09:29:20', 'APPROVED'),
(7, 'ce6abd54-72d1-45c8-8604-b4d69c55eeec', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312190007', NULL, 'this is my docket number', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Mohsin Hossain', 'মহসিন', '34534534535345345', 4, 15, 298, 'hello', NULL, '01888888888', 'chairman@dao.org', 'Mohsin Hossain', 'মহসিদ', 'Velit pariatur Unde', 'মহ', 0, 3, 21, 5158, 'Road #2,\nFactory #3,\nUniverse', 'ঢাকা', '01951851116', 1, NULL, NULL, NULL, NULL, 'Moin Uddin', '1234567890', '2023-12-19', NULL, 4, 15, 298, '01951851116', NULL, '01951851116', NULL, NULL, NULL, 6, 'gr', NULL, 'gr', NULL, 'gr', NULL, 'gr', NULL, 'gr', NULL, 'gr', '658145b0156bc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, 'Equipment Type', 'gr', '658145e5af262', '[\"REMOTE_HANDLING_TOOLS\", \"PPE\", \"WAREHOUSE_RESERVOIER\", \"LAB_PLANT_SMOKE\"]', '658145f1e9a94', NULL, NULL, NULL, '658145fca5afe', 'gr', '65814604da07b', NULL, '6581461202d8b', 'gr', NULL, NULL, 375000.00, 0.00, 0.00, 56250.00, 0.00, 431250.00, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 702, 1729, NULL, '2023-12-19 07:19:05', '2023-12-19 09:19:05', 'APPROVED'),
(8, 'b5d73172-4790-450e-b27c-c0b1bf2906dc', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202312190008', 3, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'd', 'ভগ', NULL, 3, 21, 5158, 'ে', NULL, '02990389849', NULL, 'd', 'ন', '্দ', 'দ', 0, 4, 15, 298, '্দ', 'দ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-19', '2018-12-03', '658171fe8a7ee', '112533/2025', '2023-12-12', '2024-05-25', NULL, NULL, 1, 1, 1668, 1699, NULL, '2023-12-19 10:37:34', '2023-12-19 11:39:11', 'APPROVED'),
(9, '2b3b9e72-0ee0-4d1c-b4f0-a24d55c4f101', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202312190009', NULL, 'BAER-8-102/2021', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স  বায়েরা', NULL, 3, 21, 5173, '1/2 Mirpur Dhaka', NULL, '01011111111', NULL, 'License BAERA IDSDP', 'লাইসেন্স  বায়েরা', 'RCO', 'আরসিও', 0, 3, 21, 5173, '1/2 Mirpur Dhaka', 'ঢাকা', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2023-12-19', '2020-12-08', '658182161c7f9', '8/2021-2022(R-1/2022-2023)/102', '2020-12-31', '2023-06-30', NULL, NULL, 1, 0, 1735, 1700, NULL, '2023-12-19 11:52:56', '2023-12-19 11:54:24', 'APPROVED'),
(16, '1c5ea733-6fe3-4dc4-b9e4-2f13c1833927', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202312210016', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'A', 'আ', '2324324232', 4, 17, 311, 'এ', NULL, '01293987498', NULL, 'e', 'ওদ', 'দ', 'দ', 0, 4, 15, 295, 'ে', 'ী', NULL, 1, NULL, NULL, NULL, NULL, 'এ', '9829737287', '2006-11-27', NULL, 4, 16, 305, NULL, NULL, '02390248928', NULL, NULL, NULL, 3, 'ws', NULL, 's', NULL, 's', NULL, 's', NULL, 's', NULL, 's', '6583af6cd4633', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, '6583af9d480a0', '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\"]', '6583afa41a060', NULL, NULL, NULL, '6583afacf2ebb', 'ed', '6583afb0c45ac', NULL, '6583afb7db4bc', 'd', NULL, NULL, 225000.00, 0.00, 0.00, 33750.00, 0.00, 258750.00, '2023-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 1729, NULL, '2023-12-20 08:56:13', '2023-12-21 04:38:53', 'APPROVED'),
(26, 'ed2c8716-728e-4caf-8690-2fe5489cc83e', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202401010026', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Licence D New', 'ঘ নতুন', '1212122222', 3, 21, 5173, '1/2, Mirpur', NULL, '01444443234', 'abc@yopmail.com', 'License BAERA IDSDP', 'লাইসেন্স', 'RCO', 'আরসিও', 0, 3, 21, 5173, '1/2, Mirpur', 'ঢাকা', NULL, 1, NULL, NULL, NULL, NULL, 'Licence D new1', '1111111211', '1996-05-15', 'Dhaka', 3, 21, 5173, NULL, NULL, '01010111111', NULL, NULL, NULL, 8, 'Given', '6590f6c007c77', 'Given', '6590f6c86157c', 'Yes', NULL, 'Yes', NULL, 'Yes', NULL, 'Given', '6590f6dfb2bb8', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, '[\"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\", \"PPE\"]', '6590f82356ba8', NULL, NULL, 'Given', '6590f830df3ae', 'Given', '6590f8392cc60', 'Given', '6590f84346026', 'Given', '6590f85a395c6', NULL, 45000.00, 0.00, 0.00, 6750.00, 0.00, 51750.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1735, 1735, NULL, '2023-12-31 05:03:42', '2024-01-01 12:55:10', 'SUBMITTED'),
(27, '78303634-4ce5-4b33-b6b7-b7eef6b5f701', 7, NULL, 67, 'SYSTEM', 'NEW', 9, 'A-202401010027', NULL, '4534', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Abdur Rahim', 'আবদুর রহিম', '2356347597865', 3, 21, 5162, 'INMAS, Dhaka', '56789976767', '54567567787', 'sws1234@gmail.com', 'INMAS, Dhaka', 'ইনমাস, ঢাকা', 'Director', 'পরিচালক', 0, 3, 21, 5162, 'INMAS, Dhaka', 'ইনমাস, ঢাকা', '+8801872537983', 1, NULL, NULL, NULL, NULL, 'Kamrul Islam', '6787887856', '1975-12-02', 'Motijheel, Dhaka', 3, 21, 5162, '7689678', NULL, '05678787465', NULL, NULL, NULL, 14, 'fhjkkjkjhkjhj', NULL, 'ghijgijghjjk', NULL, 'jhkjhkjhjjikj', NULL, 'kokjljkokljoklkljok', NULL, 'not applicable', NULL, 'fhhgfhfghgfhgh', '6592548becfa2', 'hjjjjj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 'hkhjkhjkj', NULL, 'jkjkjk', 'jkjkjk', '6592619a2dc0f', '[\"LAB_PLANT_SMOKE\", \"PPE\"]', '6592633a28fa3', NULL, NULL, NULL, '65926349dba88', 'hghghghgh', '65926353ba8d9', NULL, '6592635be0b78', 'hghghg', NULL, NULL, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1091, 1729, NULL, '2023-12-31 07:38:52', '2024-01-01 16:10:54', 'APPROVED'),
(28, '6e7d4c1a-100d-4b2a-a109-ae2f925247ff', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202401010028', 8, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'tre', 'ঝহহ', NULL, 3, 21, 5158, 'হ', NULL, '08978787899', NULL, 'Mr.Abdullah', '্দ', 'fg', 'ে', 0, 4, 10, 287, 'স', '্ব', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2024-01-01', '2004-01-06', '659263490c13e', 'hfbehjb', '2018-02-08', '2025-01-16', NULL, NULL, 1, 1, 1668, 1699, NULL, '2024-01-01 07:05:15', '2024-01-01 11:35:56', 'REJECTED'),
(29, '97f804f5-065c-4687-a806-476333712f08', 7, NULL, 67, 'SYSTEM', 'NEW', 9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'Sima akhter', 'হ', '9028349731', 5, 13, 408, 'r', NULL, '09387497989', NULL, 'Already Approved D', '্বদ', 'CEO', 'এর', 0, 4, 16, 305, 'f', 'ঝ', NULL, 1, NULL, NULL, NULL, NULL, 'Azad khan', '9028349731', '1999-01-14', 'ে', 8, 54, 552, NULL, NULL, '09082394738', NULL, NULL, NULL, 18, 'র', NULL, 'র', NULL, 'র', NULL, 'র', NULL, 'র', NULL, 'র', '659290646ac5b', 'Abdul jopbbaar', 'Radio Active material', 'BSC', 'Chemical Engineer', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 'র', NULL, 'Lab Centre', NULL, NULL, '[\"LAB_PLANT_SMOKE\", \"WAREHOUSE_RESERVOIER\", \"REMOTE_HANDLING_TOOLS\", \"PPE\"]', '659291cc0d408', NULL, NULL, NULL, '659291d228ba2', 'ত', '659291dac42ef', NULL, '659291df66fd4', 'গ', NULL, NULL, 45000.00, 0.00, 0.00, 6750.00, 0.00, 51750.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1668, 1668, NULL, '2024-01-01 10:12:27', '2024-01-01 10:20:47', 'PAYMENT_PENDING'),
(30, '4a465c5e-45c9-44cd-858e-4b8c71add3cb', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202401010030', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'tre', 'ঝহহ', NULL, 5, 12, 397, 's', NULL, '08978787899', NULL, 'Mr.Abdullah', '্দ', 'fg', 'ে', 0, 5, 13, 406, 's', 'জক', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2024-01-01', '2022-01-04', '6592a2d2824a9', 'hfbehjb', '2023-01-02', '2025-02-15', NULL, NULL, 1, 0, 1668, 1699, NULL, '2024-01-01 11:33:42', '2024-01-01 11:34:17', 'REJECTED'),
(31, '72d3e73c-e2f3-485a-b58d-0be183d64345', 7, NULL, 67, 'MANUAL', 'NEW', 2, 'A-202401010031', NULL, '03', NULL, NULL, NULL, NULL, NULL, 'Production', NULL, NULL, 'nill', 'নীল', NULL, 4, 15, 294, 'nill', NULL, '01675897653', NULL, 'Australian National University', 'অস্ট্রেলিয়ান জাতীয় বিশ্ববিদ্যালয়', 'nill', 'নীল', 0, 2, 31, 155, 'nill', 'নীল', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, '2024-01-01', '2023-11-07', '6592a2e0c6604', '5675483', '2023-12-11', '2024-01-01', NULL, NULL, 1, 0, 1758, 1758, NULL, '2024-01-01 11:35:33', '2024-01-01 11:35:33', 'SUBMITTED'),
(32, '4a8f8cab-e2c8-4d0d-ae0a-a5f03301f63d', 7, NULL, 67, 'SYSTEM', 'RENEW', 9, 'A-202401010032', NULL, NULL, 9, NULL, NULL, NULL, NULL, 'Use', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স  বায়েরা', NULL, 3, 21, 5173, '1/2 Mirpur Dhaka', NULL, '01011111111', NULL, 'License BAERA IDSDP', 'লাইসেন্স  বায়েরা', 'RCO', 'আরসিও', 0, 3, 21, 5173, '1/2 Mirpur Dhaka', 'ঢাকা', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 30000.00, 0.00, 5025.00, 3500.00, 38525.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 2, '2025-06-29', 1, 0, 1735, 1735, NULL, '2024-01-01 12:56:09', '2024-01-01 12:56:55', 'SUBMITTED'),
(33, '704a919e-bdf2-4caa-b54e-8447f981383f', 7, NULL, 67, 'SYSTEM', 'NEW', 6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Business', NULL, NULL, 'Sbsb', 'সজসজ', '2737372728282', 5, 12, 396, 'Fjd sjsb', NULL, '01828372772', NULL, 'ABC Hospital', 'এবিসি হসপিটাল', 'Sjshxb', 'ওইএউও', 0, 5, 12, 396, 'Snsj', 'সজদজ', NULL, 1, NULL, NULL, NULL, NULL, 'এক্সনক্সন', '2828282828', '2000-02-09', 'যসজস সজসজ', 5, 12, 396, NULL, NULL, '01733837373', NULL, NULL, NULL, 21, 'shsj', NULL, 'Xnxn', NULL, 'Dndm', NULL, 'Dnckx', NULL, 'Xncn', NULL, 'Xnxn', '6592dd15b4d5c', 'Xndbb', 'Ejdj', 'Ejdj', 'Ejxn', '7', 'Sns', 5, 12, 396, NULL, NULL, NULL, NULL, 23, 'Xnxn', NULL, 'Djs', 'Mcm', '6592de2a172cf', '[\"LAB_PLANT_SMOKE\"]', '6592de452740d', NULL, NULL, NULL, '6592de529a4b1', 'Jdnd', '6592de5baea3f', 'Fxx', '6592de6699a41', 'Xnc', NULL, NULL, 180000.00, 0.00, 0.00, 27000.00, 0.00, 207000.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 1761, 1761, NULL, '2024-01-01 15:37:47', '2024-01-01 16:17:45', 'DRAFT');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_attachments`
--

CREATE TABLE `license_s5zyr2p6_class_a_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attachment_type_mandatory` tinyint(1) DEFAULT '0',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_attachments`
--

INSERT INTO `license_s5zyr2p6_class_a_attachments` (`id`, `uuid`, `application_id`, `attachment_type_id`, `attachment_name`, `attachment_file`, `is_attachment_type_mandatory`, `remarks`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, '986f1658-a62d-4ce0-8a8d-a6d339f0693b', 26, 54, 'Printed Application with necessary Signatures', '6590f8903ac64', 0, NULL, '2023-12-31 05:13:57', '2023-12-31 05:13:57', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_caretaker_experiences`
--

CREATE TABLE `license_s5zyr2p6_class_a_caretaker_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `caretaker_exp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_tenure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_caretaker_experiences`
--

INSERT INTO `license_s5zyr2p6_class_a_caretaker_experiences` (`id`, `uuid`, `application_id`, `caretaker_exp_name`, `caretaker_exp_designation`, `caretaker_exp_institute`, `caretaker_exp_tenure`, `caretaker_exp_experience`, `caretaker_exp_attachment`, `created_at`, `updated_at`) VALUES
(1, '26d36be2-da8b-46e4-b423-914b1da972d5', 7, 'gr', 'gr', 'gr', 'gr', '12', '65814668192f1', '2023-12-19 07:29:46', '2023-12-19 07:29:46'),
(2, '62a1a3a1-29b0-4b52-a180-f8f2ae85ece2', 27, 'dsds', 'sdsd', 'sds', 'sdsd', '1', '659265205a886', '2024-01-01 07:09:34', '2024-01-01 07:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_caretaker_trainings`
--

CREATE TABLE `license_s5zyr2p6_class_a_caretaker_trainings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `caretaker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_caretaker_trainings`
--

INSERT INTO `license_s5zyr2p6_class_a_caretaker_trainings` (`id`, `uuid`, `application_id`, `caretaker_name`, `caretaker_designation`, `caretaker_qualification`, `caretaker_attachment`, `created_at`, `updated_at`) VALUES
(1, '8008bb5f-cf46-456c-8613-6079c4533978', 7, 'gr', 'gr', 'gr', '6581465b67b08', '2023-12-19 07:29:46', '2023-12-19 07:29:46'),
(2, '1c556452-dcbe-4282-8a28-4bb0349865e1', 26, 'Mr. KS', 'RCO2', 'BSc', '6590f86fd3f9f', '2023-12-31 05:13:28', '2023-12-31 05:13:28'),
(3, '7e8f329f-a72d-4f72-b43d-7215a6554d22', 27, 'dsds', 'sdsds', 'dsdsd', '659264f4491a9', '2024-01-01 07:09:34', '2024-01-01 07:09:34');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_measuring_equipments`
--

CREATE TABLE `license_s5zyr2p6_class_a_measuring_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `equipment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiable_radiation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `circumference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_measuring_equipments`
--

INSERT INTO `license_s5zyr2p6_class_a_measuring_equipments` (`id`, `uuid`, `application_id`, `equipment_type`, `equipment_supplier`, `equipment_model`, `equipment_number`, `identifiable_radiation`, `circumference`, `created_at`, `updated_at`) VALUES
(1, '7374cb6e-a6c0-4d47-a2fd-f18e39575064', 2, 'RadioActive', 'CoCo', '2343', '2', 'w', NULL, '2023-12-10 07:24:36', '2023-12-10 07:24:36'),
(2, '45a4e4dc-7209-4f5c-92b0-fb391d039c09', 5, 'RadioActive', 'CoCo', '2343', '2', 'w', NULL, '2023-12-12 08:50:24', '2023-12-12 08:50:24'),
(3, '6ec98421-345d-4411-8065-1649f3704f0a', 7, 'gr', 'gr', 'gr', 'gr', '12', NULL, '2023-12-19 07:28:34', '2023-12-19 07:28:34'),
(4, '89b5c15b-c3f8-4052-b573-6bc36fbfa7d9', 27, 'ghjhgj', 'jhjhj', 'hjhjh', 'j', 'hjhjh', NULL, '2024-01-01 07:02:31', '2024-01-01 07:02:31'),
(5, '9059ebf6-8d13-433d-b795-c22117309a43', 27, 'yuyyu', 'hjh', 'hjhj', 'hjh', 'hjhj', NULL, '2024-01-01 07:02:31', '2024-01-01 07:02:31'),
(10, '827a0697-f2a9-4f69-8158-d5af5ded6ff5', 33, 'Nxj', 'Jsjdk', 'Lsb e', 'Xkskk', 'Jdkcb', NULL, '2024-01-01 15:57:41', '2024-01-01 15:57:41');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_personnel_monitorings`
--

CREATE TABLE `license_s5zyr2p6_class_a_personnel_monitorings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `monitoring_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examining_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examining_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_personnel_monitorings`
--

INSERT INTO `license_s5zyr2p6_class_a_personnel_monitorings` (`id`, `uuid`, `application_id`, `monitoring_type`, `supplier_name`, `examining_agency`, `examining_count`, `attachment`, `created_at`, `updated_at`) VALUES
(1, 'b0be467c-eaa1-4753-b303-0d19879ba376', 7, 'gr', 'Equipment Type', 'Equipment Type', NULL, NULL, '2023-12-19 07:28:34', '2023-12-19 07:28:34'),
(2, 'd1969548-c854-4718-b7e5-17e494628da3', 27, 'fh', 'fhgfh', 'ghgh', NULL, NULL, '2024-01-01 07:02:31', '2024-01-01 07:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_radioactive_materials`
--

CREATE TABLE `license_s5zyr2p6_class_a_radioactive_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `exempt_activity_id` bigint UNSIGNED DEFAULT NULL,
  `chemical_physical_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sealed_source_dynamism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sealed_source_unit_id` bigint UNSIGNED DEFAULT NULL,
  `sealed_source_date` date DEFAULT NULL,
  `unsealed_source_dynamism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsealed_source_unit_id` bigint UNSIGNED DEFAULT NULL,
  `unsealed_source_date` date DEFAULT NULL,
  `desired_usage` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_radioactive_materials`
--

INSERT INTO `license_s5zyr2p6_class_a_radioactive_materials` (`id`, `uuid`, `application_id`, `exempt_activity_id`, `chemical_physical_form`, `manufacturer_name`, `model_number`, `sealed_source_dynamism`, `sealed_source_unit_id`, `sealed_source_date`, `unsealed_source_dynamism`, `unsealed_source_unit_id`, `unsealed_source_date`, `desired_usage`, `created_at`, `updated_at`) VALUES
(1, 'dbb4feac-39f5-4ba9-9ac0-2418bacc84fe', 1, 268, NULL, NULL, NULL, NULL, 645, NULL, NULL, 647, NULL, NULL, '2023-12-10 06:40:22', '2023-12-10 06:40:22'),
(2, '3e338553-891b-46c2-bfcf-8301c5fc4f55', 2, 270, NULL, NULL, NULL, NULL, 646, NULL, NULL, 650, NULL, NULL, '2023-12-10 07:23:46', '2023-12-10 07:23:46'),
(3, 'b6c2c09b-06ac-4960-9562-a6ef50f586a0', 3, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-11 05:29:54', '2023-12-11 05:29:54'),
(6, '7986ceb1-fa75-4a80-8a5f-1291823623a1', 5, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-12 08:49:13', '2023-12-12 08:49:13'),
(7, '5ee83c46-8db8-47eb-b150-d406f70b3a90', 6, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-12 09:22:38', '2023-12-12 09:22:38'),
(9, 'cd9423d4-d275-41f8-9c65-a735b74fbf5f', 7, 268, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19 07:27:09', '2023-12-19 07:27:09'),
(10, '1489143d-d3b4-4b42-8c6d-2019cf88ac96', 8, 268, 'ত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19 10:37:35', '2023-12-19 10:37:35'),
(11, '8503358f-f0a8-4fa5-b978-c1c80fc1870c', 9, 475, 'Solid', 'GE Co', 'P1212', NULL, 648, '2022-12-01', NULL, NULL, NULL, NULL, '2023-12-19 11:52:56', '2023-12-19 11:52:56'),
(19, 'a0ff02f2-a702-4d12-b0aa-9f64013daa8d', 16, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-21 03:22:59', '2023-12-21 03:22:59'),
(23, 'fcb8c5aa-2773-46b3-aede-af3d77c0a7d7', 4, 273, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-21 07:36:35', '2023-12-21 07:36:35'),
(24, '56f73b97-1cae-47d4-a24f-757eb7d710ec', 26, 592, 'solid', 'Polatom', '2GH212d', '101', 648, '2023-12-13', NULL, NULL, NULL, NULL, '2023-12-31 05:11:13', '2023-12-31 05:11:13'),
(26, 'b18e7dfe-bf9f-48b6-9b37-7940e3a1faf1', 27, 270, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-01 06:39:27', '2024-01-01 06:39:27'),
(28, '7844d914-91a1-414b-967b-f162f0b50329', 29, 270, NULL, NULL, NULL, NULL, 646, NULL, NULL, NULL, NULL, NULL, '2024-01-01 10:15:19', '2024-01-01 10:15:19'),
(29, 'c96c9129-c478-4431-a8cd-97308fbca6ae', 28, 272, 'H2', 'Jhonn Smith', '827389', 'null', 645, '2023-02-06', 'null', 648, '2025-01-02', NULL, '2024-01-01 11:03:28', '2024-01-01 11:03:28'),
(30, '3b69fa4a-2f58-4591-9994-df540a3fec3a', 30, 272, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-01 11:33:43', '2024-01-01 11:33:43'),
(31, 'c54fe4c5-dfa3-45fd-8801-7635a91ed3ff', 31, 269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-01 11:35:33', '2024-01-01 11:35:33'),
(32, '71329ebb-83eb-46ea-b5d7-f4f0b2b13605', 32, 475, 'Solid', 'GE Co', 'P1212', NULL, 648, '2022-12-01', NULL, NULL, NULL, NULL, '2024-01-01 12:56:09', '2024-01-01 12:56:09'),
(39, '919e4ab7-e4c4-4afd-8feb-65d8753779d5', 33, 270, 'Jzj', 'Sjdj', 'Ajs sjs', 'Jxjx', 645, '2024-01-31', NULL, NULL, NULL, NULL, '2024-01-01 16:17:45', '2024-01-01 16:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_radioactive_material_users`
--

CREATE TABLE `license_s5zyr2p6_class_a_radioactive_material_users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_dob` date DEFAULT NULL,
  `user_introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_radioactive_material_users`
--

INSERT INTO `license_s5zyr2p6_class_a_radioactive_material_users` (`id`, `uuid`, `application_id`, `user_name`, `user_dob`, `user_introduction`, `created_at`, `updated_at`) VALUES
(1, '8f5b728b-808c-41c2-a3e9-218b090dd254', 26, 'Mr. SFS', '1993-05-19', NULL, '2023-12-31 05:07:50', '2023-12-31 05:07:50'),
(2, '8509c48a-f509-4fb9-a61b-29f4e71d6b6b', 29, 'ররর', '1997-12-18', 'র', '2024-01-01 10:14:46', '2024-01-01 10:14:46'),
(4, '4261e1b1-666e-4eb9-a676-42d48e5f1b1c', 33, 'Znxn', '2000-01-17', NULL, '2024-01-01 15:51:44', '2024-01-01 15:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_safety_equipments`
--

CREATE TABLE `license_s5zyr2p6_class_a_safety_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `benefits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_safety_equipments`
--

INSERT INTO `license_s5zyr2p6_class_a_safety_equipments` (`id`, `uuid`, `application_id`, `benefits`, `supplier`, `model`, `activity`, `count`, `created_at`, `updated_at`) VALUES
(1, '0885ef7b-f949-4dd4-bd3e-e26d51cb56ac', 2, 'd', NULL, NULL, NULL, NULL, '2023-12-10 07:24:52', '2023-12-10 07:24:52'),
(2, '0024c897-9634-4c02-b1c8-ca43bd7f2c6b', 3, 'g', NULL, NULL, NULL, NULL, '2023-12-11 05:30:41', '2023-12-11 05:30:41'),
(3, 'aa3dd2b7-9f31-48cd-bdd4-f3be9b9dc39c', 27, 'sdsdsd', NULL, NULL, NULL, NULL, '2024-01-01 07:18:22', '2024-01-01 07:18:22'),
(4, '052317dc-123b-4ed5-9167-0a0c365a5f49', 27, 'fgfgfg', NULL, NULL, NULL, NULL, '2024-01-01 07:18:22', '2024-01-01 07:18:22');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_source_warehousings`
--

CREATE TABLE `license_s5zyr2p6_class_a_source_warehousings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_reservoir` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_source_warehousings`
--

INSERT INTO `license_s5zyr2p6_class_a_source_warehousings` (`id`, `uuid`, `application_id`, `warehouse_reservoir`, `supplier`, `model_number`, `created_at`, `updated_at`) VALUES
(1, '67e9e08b-a4b6-48e5-92f4-db0868e2ebac', 3, 'e', NULL, NULL, '2023-12-11 05:29:55', '2023-12-11 05:29:55'),
(4, '99bea6da-aebd-4553-9fa6-9738b1d21724', 27, 'fgfffffjhg', NULL, NULL, '2024-01-01 06:39:28', '2024-01-01 06:39:28'),
(5, '80eabdd9-86b2-4e40-af0e-0b902a9db400', 27, 'hgjjjjhgj', NULL, NULL, '2024-01-01 06:39:28', '2024-01-01 06:39:28'),
(6, '98ad0d04-c035-480f-8d50-12618594bc2e', 29, 'র', NULL, NULL, '2024-01-01 10:15:19', '2024-01-01 10:15:19'),
(13, '5bca8a7c-58fc-4b26-9337-752a922927db', 33, 'Cnxn', 'Xndm', 'Kdkdk', '2024-01-01 16:17:45', '2024-01-01 16:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_a_supervisors`
--

CREATE TABLE `license_s5zyr2p6_class_a_supervisors` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `supervisor_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_dob` date DEFAULT NULL,
  `supervisor_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_introduction` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_a_supervisors`
--

INSERT INTO `license_s5zyr2p6_class_a_supervisors` (`id`, `uuid`, `application_id`, `supervisor_name`, `supervisor_dob`, `supervisor_designation`, `supervisor_introduction`, `created_at`, `updated_at`) VALUES
(1, 'f0b03ebe-9740-4272-ab81-342534185056', 7, 'gr', '2023-12-19', 'gr', NULL, '2023-12-19 07:26:48', '2023-12-19 07:26:48'),
(2, 'b4018a11-783d-4df5-a142-c9f7ddd60d0f', 26, 'Mr. XC', '1997-02-19', 'RCO', NULL, '2023-12-31 05:07:16', '2023-12-31 05:07:16'),
(3, 'f87094ee-6593-48e1-9cc8-1f42a946fdf9', 33, 'Dn', '2024-01-30', 'Ejd', 'Xb', '2024-01-01 15:41:15', '2024-01-01 15:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_applications`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SYSTEM',
  `installation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_group_id` bigint UNSIGNED DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amendment_type` json DEFAULT NULL,
  `amendment_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mention_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_phone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_org_designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_org_designation_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_org_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_org_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_org_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_org_address_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_org_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_org_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_org_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_org_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_same_name_address` tinyint(1) DEFAULT NULL,
  `organization_division_id_two` bigint UNSIGNED DEFAULT NULL,
  `organization_district_id_two` bigint UNSIGNED DEFAULT NULL,
  `organization_thana_id_two` bigint UNSIGNED DEFAULT NULL,
  `organization_address_two` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_designated_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_dob` date DEFAULT NULL,
  `authorized_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_personal_divison_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_personal_district_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_personal_thana_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_personal_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `license_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `renewal_fee` decimal(12,2) DEFAULT NULL,
  `amendment_fee` decimal(12,2) DEFAULT NULL,
  `vat` decimal(8,2) NOT NULL DEFAULT '0.00',
  `surcharge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `use_purpose_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `use_purpose_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `layout_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maintenance_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `maintenance_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quality_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `schedule_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `schedule_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organogram_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `organogram_attacment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise_fields` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_edu_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recognition_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_division_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_district_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_thana_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_phone` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specialist_fax` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_renewal_fee_id` bigint UNSIGNED DEFAULT NULL,
  `extra_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `extra_details_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_details` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_certificate_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agency_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `personnel_monitoring_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `layout_plan_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_control_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_layout_room` tinyint(1) DEFAULT NULL,
  `is_layout_floor` tinyint(1) DEFAULT NULL,
  `is_layout_opening` tinyint(1) DEFAULT NULL,
  `is_layout_console` tinyint(1) DEFAULT NULL,
  `is_layout_nearby` tinyint(1) DEFAULT NULL,
  `radiation_control_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fire_safety_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fire_safety_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_preparation_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_preparation_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tranining_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `training_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_personal_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apllicant_declaration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `submission_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `original_submission_date` date DEFAULT NULL,
  `original_license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_issue_renew_date` date DEFAULT NULL,
  `legacy_expiry_date` date DEFAULT NULL,
  `renewal_years` int DEFAULT NULL,
  `renewal_year_upto` date DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_applications`
--

INSERT INTO `license_s5zyr2p6_class_c_license_applications` (`id`, `uuid`, `organization_id`, `organogram_id`, `service_mapping_id`, `application_medium`, `installation_code`, `application_type`, `previous_application_id`, `current_active_step`, `tracking_number`, `parent_group_id`, `docketing_number`, `amendment_type`, `amendment_attachment`, `activities_purpose`, `mention_purpose`, `applicant_name_en`, `applicant_name_bn`, `applicant_nid`, `applicant_address`, `applicant_phone`, `applicant_division_id`, `applicant_district_id`, `applicant_upazila_id`, `mobile_number`, `applicant_org_designation`, `applicant_org_designation_bn`, `email`, `applicant_org_name`, `applicant_org_name_bn`, `applicant_designation`, `applicant_org_address`, `applicant_org_address_bn`, `applicant_org_division_id`, `applicant_org_district_id`, `applicant_org_upazila_id`, `applicant_org_phone`, `is_same_name_address`, `organization_division_id_two`, `organization_district_id_two`, `organization_thana_id_two`, `organization_address_two`, `is_designated_person`, `authorized_personal_name`, `authorized_personal_nid`, `authorized_personal_dob`, `authorized_address`, `authorized_personal_divison_id`, `authorized_personal_district_id`, `authorized_personal_thana_id`, `authorized_personal_telephone`, `authorized_personal_fax`, `authorized_personal_email`, `authorized_personal_mobile`, `rco_application_id`, `license_fee`, `renewal_fee`, `amendment_fee`, `vat`, `surcharge`, `total_fee`, `use_purpose_details`, `use_purpose_attacment`, `layout_details`, `layout_attacment`, `maintenance_details`, `maintenance_attacment`, `quality_details`, `quality_attacment`, `schedule_details`, `schedule_attacment`, `organogram_details`, `organogram_attacment`, `specialist_name`, `expertise_fields`, `specialist_edu_qualification`, `specialist_qualification`, `specialist_experience`, `recognition_no`, `specialist_division_id`, `specialist_district_id`, `specialist_thana_id`, `specialist_phone`, `specialist_address`, `specialist_fax`, `specialist_mobile_number`, `specialist_email`, `license_renewal_fee_id`, `extra_details`, `extra_details_attachment`, `calibration_details`, `calibration_attachment`, `calibration_certificate_attachment`, `agency_name`, `agency_address`, `personnel_monitoring_attachment`, `layout_plan_attachment`, `radiation_control_details`, `is_layout_room`, `is_layout_floor`, `is_layout_opening`, `is_layout_console`, `is_layout_nearby`, `radiation_control_attachment`, `fire_safety_details`, `fire_safety_attachment`, `emergency_preparation_details`, `emergency_preparation_attachment`, `tranining_details`, `training_attachment`, `authorized_personal_designation`, `apllicant_declaration`, `is_agreed`, `is_checked`, `submission_date`, `original_submission_date`, `original_license_attachment`, `legacy_license_permit_number`, `legacy_issue_renew_date`, `legacy_expiry_date`, `renewal_years`, `renewal_year_upto`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, '3c2122fb-1b5b-4815-a1a1-9b7b524cb08d', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312100001', 2, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, 'Use', NULL, 'C from permit', 'ণিলুফার হোসেন', '2324265675', 'd', NULL, 4, 15, 298, '01003989898', 'ytyrt', 'এ', 'abc@yopmail.com', 'hbh', 'হ', NULL, 'হ', 'এ', 5, 12, 396, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2013-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'f', NULL, 's', '65755f5d7914a', 's', NULL, NULL, NULL, NULL, NULL, 's', '65755f651868b', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '657560173b352', 'e', 1, 1, 1, 1, 1, NULL, 'r', NULL, 'r', NULL, 'f', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 677, NULL, '2023-12-10 06:46:23', '2023-12-13 08:58:23', 'APPROVED'),
(2, '63ed2e1d-1e11-49c7-a4ac-74a538379bac', 7, NULL, 38, 'MANUAL', '09932', 'NEW', NULL, 2, 'C-202312120002', NULL, NULL, NULL, NULL, 'Use', NULL, 'Kuddus', 'কুদ্দস', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Medico', 'মেদিকো', NULL, 'ও', '্ব', 3, 23, 204, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-12', '2020-12-02', '6577fa9c41ea9', '82389/2025', '2023-11-28', '2025-12-06', NULL, NULL, 1668, 1668, NULL, '2023-12-12 06:25:43', '2023-12-12 06:25:43', 'SUBMITTED'),
(3, '0f9b9918-f1c6-4b8a-a3fd-0716f8047338', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312190003', NULL, 'this is my docket number', NULL, NULL, 'Use', NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 'h', '01951851116', 4, 15, 298, '01888888888', 'Programmer', 'আফস', 'chairman@dao.org', 'Moin Uddin', 'আফস', NULL, 'Road #2,\nFactory #3,\nUniverse', 'আফস', 3, 21, 5158, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 30000.00, 0.00, 0.00, 4500.00, 0.00, 34500.00, 'আস', NULL, 'াস', '658169111c821', 'াস', NULL, 'াসদ', NULL, NULL, NULL, 'াদ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6581694facfc5', NULL, 1, 1, 1, 1, 1, NULL, 'আচ', NULL, NULL, NULL, 'ওয়েফ', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1729, NULL, '2023-12-19 09:57:11', '2023-12-19 13:29:14', 'APPROVED'),
(4, '337ea5c5-4e3d-47a0-a663-df94cef21c07', 7, NULL, 38, 'MANUAL', '09932', 'NEW', NULL, 2, 'C-202312190004', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, 'Use', NULL, 'Kuddus', 'কুদ্দস', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Medico', 'মেদিকো', NULL, 'এ', 'দ', 4, 10, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', '2023-12-06', '658172a4eda30', '82389/2025', '2023-11-30', '2023-12-14', NULL, NULL, 1668, 1699, NULL, '2023-12-19 10:39:27', '2023-12-19 12:07:23', 'APPROVED'),
(5, '4860e3aa-6b72-4c43-b50c-7b4b4c2e60a1', 7, NULL, 38, 'MANUAL', 'DHA(C)-P-250', 'NEW', NULL, 2, 'C-202312190005', NULL, 'BAER-8-103/2021', NULL, NULL, 'Use', NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, '1/2, Mirpur, Dhaka', '১/২, মিরপুর, ঢাকা', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', '2020-12-04', '658187008124d', '8/2021-2022(R-1/2022-2023)/103', '2020-12-31', '2022-12-31', NULL, NULL, 1735, 1700, NULL, '2023-12-19 12:09:52', '2023-12-19 12:15:12', 'APPROVED'),
(7, '6360033a-ae75-4822-9f79-3fdae34e91ab', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312190007', NULL, 'BAER-DHA-5(1)/2023', NULL, NULL, 'Use', NULL, 'License C New', 'লাইসেন্স', '0101101010', '1/2, Mirpur', NULL, 3, 21, 5173, '01444443234', 'RCO', 'আরসিও', 'abc@yopmail.com', 'License BAERA IDSDP', 'লাইসেন্স', NULL, '1/2, Mirpur', 'মিরপুর', 3, 21, 5173, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '1990-01-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 30000.00, 0.00, 0.00, 4500.00, 0.00, 34500.00, 'Diagnosis', NULL, 'Given', '658193bf9d6dd', 'Yes', NULL, 'Yes', NULL, NULL, NULL, 'Given', '658193dac4a9f', 'Mr. B', 'Diagnosis', 'Honors', 'RCO', '5', NULL, 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6581950a6ac61', '658196707f51f', NULL, 1, 1, 1, 1, 1, NULL, 'Yes', NULL, NULL, NULL, 'Yes', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1735, 1729, NULL, '2023-12-19 12:58:20', '2023-12-19 14:52:40', 'APPROVED'),
(8, '4d18f8eb-bf2a-44bc-a4d4-02c15ca7d51f', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312190008', 4, NULL, NULL, NULL, 'Use', NULL, 'License C New2', 'লাইসেন্স', '0101101010', '1/2, Miprur', NULL, 3, 21, 5173, '01444443234', 'RCO', 'লা', 'abc@yopmail.com', 'License BAERA IDSDP', 'লাইসেন্স', NULL, '1/2, Mirpur', 'লাই', 3, 21, 5173, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2000-04-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'Yes', NULL, 'Given', '6581bbfa1c011', 'Yes', NULL, 'Yes', NULL, 'Yes', NULL, 'Given', '6581bc0724fb4', 'Mr. BX', NULL, NULL, NULL, NULL, NULL, 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6581bcaba3d93', NULL, 1, 1, 1, 1, 1, NULL, 'Yes', NULL, NULL, NULL, 'Given', NULL, NULL, 'PERSONALLY', 1, 1, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1735, 1729, NULL, '2023-12-19 15:50:45', '2023-12-20 05:00:51', 'REVIEWED_AND_ASSESSED'),
(9, 'daad5aaf-bdb0-47dd-a4ce-fefcf27de8ee', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312200009', NULL, 'this is my docket number', NULL, NULL, 'Use', NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 'Hello', '01951851116', 4, 15, 298, '01888888888', 'Nemo sapiente ipsum', 'দফ', 'chairman@dao.org', 'Moin Uddin', 'দফ', NULL, 'Road #2,\nFactory #3,\nUniverse', 'দফ', 3, 21, 5158, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'দফ', NULL, 'দফ', '6582a1e60012d', 'দফ', NULL, NULL, NULL, NULL, NULL, 'দফ', '6582a1f34dd28', NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 298, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6582a27b65d91', NULL, 1, 1, 1, 1, 1, NULL, 'দফ', NULL, NULL, NULL, 'দফ', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1729, NULL, '2023-12-20 08:11:53', '2023-12-20 08:36:35', 'APPROVED'),
(10, '7f8a63d9-ffbc-4591-abee-3831644fe4e0', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312200010', 5, 'this is my docket number', NULL, NULL, 'Use', NULL, 'Camilla Acosta', 'দচ', '34534534535345345', 'Aliquid veniam reru', '01951851116', 4, 15, 298, '01951851116', 'Doloribus velit imp', 'আফ', 'kudi@mailinator.com', 'Moin Uddin', 'সদফ', NULL, 'Voluptatem ut fugit', 'আফ', 3, 21, 5158, '+1 (484) 952-8816', 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'c', NULL, 'as', '6582c7aa9cccb', 's', NULL, NULL, NULL, NULL, NULL, 's', '6582c7b1d6630', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6582c7e99b2d7', NULL, 1, 1, 1, 1, 1, NULL, 'zc', NULL, NULL, NULL, 'asc', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1723, NULL, '2023-12-20 10:52:34', '2023-12-20 11:28:43', 'PERMIT_DRAFTED'),
(11, '76ea63ab-7037-4f8a-b324-132da903ac42', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312210011', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, 'Preparation', NULL, 'g', 'য', '2324265675', 'w', '01780940522', 4, 16, 305, '01780940522', 'ytyrt', 'এ', 'hossainnilufar12@gmail.com', 'Nilufar Hossain', 'স', NULL, '13/14,Ayesha centre,Mirpur13,BRTA ,Dhaka1206,Bangladesh', 'গ', 5, 11, 392, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2000-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'দ', NULL, 'দ', '6583b03d8159d', '্দ', NULL, NULL, NULL, NULL, NULL, 'দ', '6583b0472aa33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6583b0805ba82', 's', 1, 1, 1, 1, 1, NULL, 's', NULL, 's', NULL, 's', NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1731, NULL, '2023-12-21 03:25:25', '2023-12-21 03:55:43', 'APPROVED'),
(17, '9c10a79b-2bb6-40e2-a665-e272feccb6d6', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202312300017', 7, NULL, NULL, NULL, 'Use', NULL, 'Masum Reza', 'মাসুম রেজা', '2324324255', '12,Kallanpur, Dhaka-1215', '62366726', 3, 21, 5173, '01283994949', 'Manager (admin)', 'ম্যানেজার (প্রশাসন)', 'permittest@yopmail.com', 'IBN Sina Hospital', 'ইবনে সিনা হাসপাতাল', NULL, '12,Kallanpur, Dhaka-1215', '12, কাল্লানপুর, ঢাকা-1215', 3, 21, 5173, '6567257', 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2001-12-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 30000.00, 0.00, 0.00, 4500.00, 0.00, 34500.00, 'will be used to diagnosis and medical treatment', NULL, 'Layout in the attached file', '659012cd50254', 'routine maintenance', NULL, NULL, NULL, NULL, NULL, 'please find the attachment', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '659015cbadc1f', '659015f339660', 'jhsghchhj', 1, 1, 1, 1, 1, NULL, 'hbxzjdhjhjcxbhb', NULL, 'hdsukhukhdukshudsh', NULL, 'hdsjkbjkbsdjk hgsdaghj', NULL, NULL, 'PERSONALLY', 1, 1, '2023-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1746, 1700, NULL, '2023-12-30 12:51:50', '2023-12-30 14:51:38', 'SUBMITTED'),
(18, 'fc945cf2-6a55-42c2-ad12-94baea54f8cb', 7, NULL, 38, 'MANUAL', 'DHA(C)-P-111', 'NEW', NULL, 2, 'C-202312300018', NULL, 'BAER-DHA-5(1)/2023', NULL, NULL, 'Use', NULL, 'License C Pre', 'লাইসেন্স', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, '1/2, Mirpur', 'লাইসেন্স', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-30', '2022-11-29', '65901f79ed6f8', '8/2021-2022(R-1/2022-2023)/121', '2021-09-30', '2023-12-31', NULL, NULL, 1735, 1700, NULL, '2023-12-30 13:52:00', '2023-12-30 13:53:01', 'APPROVED'),
(20, 'f013e6fc-c1ab-4d0e-bbb7-09643eb2a9dc', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202401010020', 8, NULL, NULL, NULL, 'Use', NULL, 'Abdul Jobbar', 'ন', '9028349731', 'র', NULL, 4, 10, 287, '76788787899', 'Chief Executive', 'ে', 'abc@yopmail.com', 'DIgital Digonistic Centre', 'ব', NULL, '‍্য', '্যত', 5, 11, 394, NULL, 1, NULL, NULL, NULL, NULL, 'NO', 'g', '01238887799882432', '2024-01-10', '্যত', 3, 26, 216, NULL, NULL, 'kjkh@yopmail.com', '09208392822', 18, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'w', NULL, 'f', '65926554088c0', 'w', NULL, NULL, NULL, NULL, NULL, 'w', '659265636a545', 'দ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65926680bd2ca', NULL, 1, 1, 1, 1, 1, NULL, 'f', NULL, NULL, NULL, 'f', NULL, 'c', 'PERSONALLY', 1, 1, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1700, NULL, '2024-01-01 07:08:37', '2024-01-01 10:51:20', 'SUBMITTED'),
(21, 'c464b4a5-1ec1-42c8-83b4-0b8902403ed9', 7, NULL, 38, 'MANUAL', 'GOP(D)-P-20', 'NEW', NULL, 2, 'C-202401010021', NULL, 'DHA-GOP-8(1001)/2020', NULL, NULL, 'Use', NULL, 'Md. Tushar', 'মো: তুষার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tushar Hospital', 'তুষার হসপিটাল', NULL, 'Hospital Road, Gopalganj', 'হসপিটাল রোড, গোপালগঞ্জ', 3, 27, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', '2021-07-04', '6592655c7211b', '11/2019-2020(R-1/2020-2021)/20', '2019-11-07', '2023-06-30', NULL, NULL, 1760, 1699, NULL, '2024-01-01 07:30:10', '2024-01-01 11:27:00', 'APPROVED'),
(22, 'b1b84bcd-0e20-4fb6-9603-0310019f9619', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, NULL, NULL, NULL, NULL, NULL, 'Business', NULL, 'A BBB CCCC', 'ক খখখখ গগগ', '3265703946', 'cvc vng nkhk', NULL, 4, 15, 298, '01738473131', 'MD', 'ককক খখখ', 'rafiqphy55@gmail.com', 'ABC Hospital', 'এবিসি হসপিটাল', NULL, 'dfd vhf vhfnb', 'খখ খখ খখ', 4, 15, 298, NULL, NULL, 4, 15, 298, 'fgf vb vb', 'YES', NULL, NULL, '2000-05-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, 'tyty hj', NULL, 'thytun yjhn', '65928cc0027a5', 'ty5tu yjh', NULL, 'tyhtjh', NULL, NULL, NULL, 'hthjthn hj', '65928cd0cc447', 'yt', 'tgfgdssdg', 'yhtyty', 'tyty', '5', NULL, 3, 27, 218, NULL, 'yuy jh gh', NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65928dd152734', 'egedfgde', 1, 1, 1, 1, 1, NULL, 'e645yfbv fdgv', NULL, 'erefgdfv rgtr', NULL, '5t4tdf tyb', NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1761, 1761, NULL, '2024-01-01 09:40:59', '2024-01-01 10:03:28', 'DRAFT'),
(23, '84ff6524-7c14-4acf-8669-306775f41114', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202401010023', NULL, NULL, NULL, NULL, 'Use', NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 'Address 2', NULL, 4, 10, 287, '01888888888', 'Chairman', 'চেয়ারম্যান', 'chairman@dao.org', 'Test', 'টেস্ট', NULL, 'Road #2,\nFactory #3,\nUniverse', 'ঠিকানা বাংলায়', 3, 21, 5158, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 30000.00, 0.00, 0.00, 4500.00, 0.00, 34500.00, 'Quaerat proident et', NULL, 'Corporis voluptas te', '65928c550341f', 'Obcaecati voluptas q', NULL, 'Qui animi quisquam', NULL, 'Sunt quidem numquam', NULL, 'Eaque fugit nisi vo', '65928c4d833d0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6592b2b420834', 'Magnam hic minim asp', 1, 1, 1, 1, 1, NULL, 'Et aut vitae similiq', NULL, 'Quia nisi et archite', NULL, 'Error aperiam soluta', NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 702, NULL, '2024-01-01 09:55:54', '2024-01-01 12:47:35', 'PAYMENT_PENDING'),
(24, '7cc48473-52e9-4c79-ad5b-30cfe17ada7d', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202401010024', NULL, NULL, NULL, NULL, 'Processing', NULL, 'Nill', 'নীল', '1882345978932', 'নীল', NULL, 1, 14, 73, '01912456389', 'Nill', 'নীল', 'hridoy@gmail.com', 'Australian National University', 'অস্ট্রেলিয়ান জাতীয় বিশ্ববিদ্যালয়', NULL, 'নীল', 'নীল', 7, 22, 472, NULL, NULL, NULL, NULL, NULL, NULL, 'NO', 'Hridoy', '3456778234', '2000-01-04', NULL, 4, 15, 294, NULL, NULL, 'hridoy@gmail.com', '01987647890', 16, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, 'nill', NULL, 'nill', '65929bf75d486', 'nill', NULL, NULL, NULL, NULL, NULL, 'nill', '65929c058ae23', 'nill', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65929cf793227', 'nill', 1, 1, 1, 1, 1, NULL, 'nill', NULL, 'nill', NULL, 'nill', NULL, 'নীল', 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1758, 1758, NULL, '2024-01-01 11:01:11', '2024-01-01 11:09:12', 'SUBMITTED'),
(26, '3aca379f-2602-4bda-9a8f-3ca619416db9', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202401010026', 10, 'BAER DHA-5(387)/2023', NULL, NULL, 'Use', NULL, 'Md. Lutfur Rahman', 'মোঃ লুৎফুর রহমান', '2324324255', '24/A, Dhanmondi, Dhaka-1205', '6346635', 3, 21, 5160, '01283994948', 'Manager', 'ম্যানেজার', 'permittest4@yopmail.com', 'LabAid Hospital limited, Dhaka', 'ল্যাবএইড হাসপাতাল লিমিটেড, ঢাকা', NULL, '24/A, Dhanmondi, Dhaka-1205', '২৪/এ, ধানমন্ডি, ঢাকা-১২০৬', 3, 21, 5160, '01283994948', 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '1996-01-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 45000.00, 0.00, 0.00, 6750.00, 0.00, 51750.00, 'will be used for the medical diagnosis.', NULL, 'attached', '6592a4e16dcb5', 'baera', NULL, NULL, NULL, NULL, NULL, 'RCO', '6592a4c9bffdd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6592a7f721b1b', NULL, 1, 1, 1, 1, 1, NULL, 'eiuwiuwyiuyeiu', NULL, NULL, NULL, 'ierwjkhfkdjhkj', NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1747, 1729, NULL, '2024-01-01 11:38:20', '2024-01-01 15:41:23', 'APPROVED'),
(27, '6b8992b2-de5f-46ac-81e5-8b585bad19f8', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 4, 9, 'C-202401010027', NULL, NULL, NULL, NULL, 'Use', NULL, 'Kuddus', 'কুদ্দস', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Medico', 'মেদিকো', NULL, 'এ', 'দ', 4, 10, 288, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 0.00, 30000.00, 0.00, 4575.00, 500.00, 35075.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 2, '2025-12-13', 1668, 1668, NULL, '2024-01-01 11:39:35', '2024-01-01 11:42:56', 'SUBMITTED'),
(28, 'f4add6ea-a1e7-4607-8770-9144785fd176', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, NULL, NULL, NULL, NULL, NULL, 'Business', NULL, 'Gshsh shh', 'ফবসজ', '3265739965', 'Dbd hsje', NULL, 5, 12, 396, '01836284938', 'Sh', 'িক', 'rafiqmaphy@gmail.com', 'ABC Hospital', 'এবিসি হসপিটাল', NULL, 'sjs sjsj', 'দজদ সজ', 5, 12, 397, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '1999-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, 'Dhd dheh dje', NULL, 'Sjd sjdj', '6592aec2c6579', 'Dnfj', NULL, 'Hfb fhr', NULL, NULL, NULL, 'Fhej', '6592ae3f9ae03', 'Sbbs', 'Djrn', 'Fjdj', 'Dkdj', '4', '3838', 5, 12, 396, NULL, NULL, NULL, NULL, NULL, 15, 'Xbdb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6592afcb1d5c5', 'Dndb', 1, 1, 1, 1, 1, NULL, 'Fjcj', NULL, 'Cjxn djd', NULL, 'Xncn', NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1761, 1761, NULL, '2024-01-01 12:16:11', '2024-01-01 13:16:14', 'DRAFT'),
(29, '881d3fec-0a89-4e0a-b483-b1423f8dbec3', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 18, 9, 'C-202401010029', NULL, 'BAER-DHA-5(1)/2023', NULL, NULL, 'Use', NULL, 'License C Pre', 'লাইসেন্স', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, '1/2, Mirpur', 'লাইসেন্স', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 0.00, 12000.00, 0.00, 1800.00, 0.00, 13800.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 4, '2027-12-30', 1735, 1729, NULL, '2024-01-01 13:02:24', '2024-01-02 05:36:21', 'ASSIGNED_FOR_EVALUATION'),
(30, '44d93dd8-effb-4d0e-af7a-df9647e71a96', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, NULL, NULL, NULL, NULL, NULL, 'Business', NULL, 'Gshsh shh', 'ফবসজ', '3265739965', 'Shw', NULL, 5, 12, 396, '01836284938', 'Sh', 'িক', 'rafiqmaphy@gmail.com', 'ABC Hospital', 'এবিসি হসপিটাল', NULL, 'Sns sbsb', '্ককক', 5, 12, 396, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '1998-02-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, 'dhdj', NULL, 'X xn', '6592be9705525', 'Dbfn', NULL, 'Cnfk', NULL, NULL, NULL, 'Cndn', NULL, NULL, 'X', 'Dn', 'Dn', '6', NULL, 5, 12, 396, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6592bf8839bf1', 'Xnxn', 0, 0, 0, 0, 0, NULL, 'Xn,', NULL, 'jcnzm', NULL, 'Xnxbb', NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1761, 1761, NULL, '2024-01-01 13:29:57', '2024-01-01 13:56:50', 'DRAFT'),
(31, '37654474-cd72-4798-9f57-fb80180fd7ed', 7, NULL, 38, 'MANUAL', 'BARI(D)-P-200', 'NEW', NULL, 2, 'C-202401020031', NULL, 'BAER-DHA-8 (000)/2023', NULL, NULL, 'Business', NULL, 'Cfcr', 'গভগ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ABC Hospital', 'এবিসি হসপিটাল', NULL, 'bch hvj', 'নো করক', 5, 12, 396, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-02', NULL, '659390989bebf', '67/2021-2022(R-8/2022-2023)/43', '2023-02-03', '2024-01-02', NULL, NULL, 1761, 1761, NULL, '2024-01-02 04:32:18', '2024-01-02 04:32:18', 'SUBMITTED'),
(32, '777c5dfc-2d12-4407-aafc-a868a3f648c7', 7, NULL, 38, 'MANUAL', 'DHA(C)-P-1057', 'NEW', NULL, 2, 'C-202401020032', NULL, 'BAER-DHA-8(4250)/2018', NULL, NULL, 'Use', NULL, 'Senior Manager (Program Operation)', 'ঊর্ধ্বতন ব্যবস্থাপক (প্রোগ্রাম অপারেশন)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMC Niltara Lab', 'এস এম সি নীলতারা ল্যাব', NULL, '30/1, Hazi Dila Mpohammad Avenue, Block-B, Mohammadpur, Dhaka', '30/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', 3, 21, 5158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-02', '2021-12-11', '65939e85c2f36', '5333/2020(R-02/2021-2022)/1191', '2020-01-05', '2023-12-31', NULL, NULL, 1762, 1699, NULL, '2024-01-02 05:59:50', '2024-01-02 07:06:08', 'APPROVED'),
(33, 'fb5e18ac-6d06-426d-abcf-fd024830bfeb', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 32, 9, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, 'Senior Manager (Program Operation)', 'ঊর্ধ্বতন ব্যবস্থাপক (প্রোগ্রাম অপারেশন)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMC Niltara Lab', 'এস এম সি নীলতারা ল্যাব', NULL, '30/1, Hazi Dila Mpohammad Avenue, Block-B, Mohammadpur, Dhaka', '30/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', 3, 21, 5158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 0.00, 18000.00, 0.00, 2700.00, 0.00, 20700.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2028-12-30', 1762, 1762, '2024-01-02 08:38:12', '2024-01-02 07:20:53', '2024-01-02 08:38:12', 'DRAFT'),
(34, '8a0043e9-155f-43b2-8514-09b1d4bb60a9', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 32, 9, 'C-202401020034', NULL, 'BAER-DHA-8(4250)/2018', NULL, NULL, 'Use', NULL, 'Senior Manager (Program Operation)', 'ঊর্ধ্বতন ব্যবস্থাপক (প্রোগ্রাম অপারেশন)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'SMC Niltara Lab', 'এস এম সি নীলতারা ল্যাব', NULL, '30/1, Hazi Dila Mpohammad Avenue, Block-B, Mohammadpur, Dhaka', '30/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', 3, 21, 5158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 0.00, 9000.00, 0.00, 1740.00, 2600.00, 13340.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-02', NULL, NULL, NULL, NULL, NULL, 3, '2025-12-30', 1762, 1729, NULL, '2024-01-02 08:38:30', '2024-01-02 11:07:09', 'APPROVED'),
(35, '864dc0e0-a3fd-49eb-a3f3-c2f13e9d9290', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 9, 9, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 'Hello', '01951851116', 4, 15, 298, '01888888888', 'Nemo sapiente ipsum', 'দফ', 'chairman@dao.org', 'Moin Uddin', 'দফ', NULL, 'Road #2,\nFactory #3,\nUniverse', 'দফ', 3, 21, 5158, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 0.00, 6000.00, 0.00, 930.00, 200.00, 7130.00, 'দফ', NULL, 'দফ', '6582a1e60012d', 'দফ', NULL, NULL, NULL, NULL, NULL, 'দফ', '6582a1f34dd28', NULL, NULL, NULL, NULL, NULL, NULL, 4, 15, 298, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '6582a27b65d91', NULL, 1, 1, 1, 1, 1, NULL, 'দফ', NULL, NULL, NULL, 'দফ', NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 2, '2025-12-19', 702, 702, NULL, '2024-01-02 10:22:31', '2024-01-02 10:22:31', 'DRAFT'),
(36, '70cba53e-813c-4bbb-89d4-97dd00677091', 7, NULL, 38, 'MANUAL', 'DHA(P)-BAER-50', 'NEW', NULL, 2, 'C-202401030036', NULL, NULL, NULL, NULL, 'Use', NULL, 'Fazlul haque', 'ফজলুল হক', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Popular Diagnostic Center, Dhaka', 'পপুলার ডায়াগনস্টিক সেন্টার, ঢাকা', NULL, 'Popular Diagnostic Center, Dhaka', 'পপুলার ডায়াগনস্টিক সেন্টার, ঢাকা', 3, 21, 5162, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-03', '2022-06-15', '65956f870d105', '3/2020-2021(R-2)/12', '2020-07-14', '2021-06-30', NULL, NULL, 1091, 1699, NULL, '2024-01-03 15:13:22', '2024-01-03 16:36:10', 'REJECTED'),
(37, '6a5746ec-40f7-4f15-90e4-cad41e5d32fa', 7, NULL, 38, 'SYSTEM', NULL, 'NEW', NULL, 9, 'C-202401040037', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, 'Use', NULL, 'Abdul Jobbar', 'ন', '9028349731', 'he', NULL, 3, 23, 205, '76788787899', 'Chief Executive', 'ে', 'abc@yopmail.com', 'DIgital Digonistic Centre', 'ব', NULL, 'e', 'জ', 3, 26, 215, NULL, 1, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '2008-01-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 112500.00, 0.00, 0.00, 16875.00, 0.00, 129375.00, 'e', NULL, 'e', '65962d41487bc', 'e', NULL, NULL, NULL, NULL, NULL, 'r', '65962d49115e8', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16, 307, NULL, NULL, NULL, NULL, NULL, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '659636096d248', 'e', 1, 1, 1, 1, 1, NULL, 'e', NULL, 'e', NULL, 'e', NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1729, NULL, '2024-01-04 03:57:47', '2024-01-04 06:31:01', 'DRAFTER_ASSIGNED'),
(38, 'a48aab86-5222-41d1-a26a-0eb35b74c231', 7, NULL, 38, 'MANUAL', 'BARI(D)-P-132', 'NEW', NULL, 2, 'C-202401040038', NULL, 'BAER-BARI-8(5349)/2022', NULL, NULL, 'Use', NULL, 'Mr. Md. Shahidul Islam Sazzat', 'জনাব মোঃ শহীদুল ইসলাম সাজ্জাত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Islam Diagnostic Lab', 'ইসলাম ডায়াগনস্টিক ল্যাব', NULL, 'Jail Road, Hospital Road, Barisal', 'জেলখানা মোড়, হাসপাতাল রোড, বরিশাল', 5, 12, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-04', '2022-04-24', '65963731029fc', '6158/2021-2022', '2022-06-20', '2023-06-30', NULL, NULL, 1765, 1699, NULL, '2024-01-04 05:17:23', '2024-01-04 05:31:59', 'APPROVED'),
(39, '5831ef99-9322-4edf-ab5e-09b4237b35fc', 7, NULL, 38, 'MANUAL', 'DHA(C)-P-987', 'NEW', NULL, 2, 'C-202401040039', NULL, '4534', NULL, NULL, 'Use', NULL, 'Md. Shahjalal Mazumder', 'শাহজালাল মজুমদার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Medical Center, Dhaka', 'ন্যাশনাল মেডিকেল সেন্টার, ঢাকা', NULL, 'National Medical Center, House No.9, Road No.8,  Dhaka-1212', 'ন্যাশনাল মেডিকেল সেন্টার, বাড়ি নং-৯, রোড নং -৮.ঢাকা', 3, 21, 5170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 0.00, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-04', NULL, '65963f5bc57d2', '4986/2018', '2018-10-18', '2023-12-31', NULL, NULL, 1091, 1699, NULL, '2024-01-04 05:29:38', '2024-01-04 05:41:23', 'APPROVED'),
(40, 'b95065ef-510e-4201-ac2e-20b16aac7d1a', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 39, 9, 'C-202401040040', NULL, NULL, NULL, NULL, 'Use', NULL, 'Md. Shahjalal Mazumder', 'শাহজালাল মজুমদার', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'National Medical Center, Dhaka', 'ন্যাশনাল মেডিকেল সেন্টার, ঢাকা', NULL, 'National Medical Center, House No.9, Road No.8,  Dhaka-1212', 'ন্যাশনাল মেডিকেল সেন্টার, বাড়ি নং-৯, রোড নং -৮.ঢাকা', 3, 21, 5170, NULL, NULL, NULL, NULL, NULL, NULL, 'YES', NULL, NULL, '1995-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 0.00, 15000.00, 0.00, 2250.00, 0.00, 17250.00, 'gfdgfgdfgf', NULL, 'fgfgfgdfgdfg', '6596478a0657b', 'jkjghjhh', NULL, 'hjhgjhjghjhgj', NULL, 'jghjghjghjg', NULL, 'gfhgfhgfhgh', '659647c2e8688', 'Md. Shajalal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '65964e2898c80', NULL, 1, 1, 1, 1, 1, NULL, 'fgdfgfdgdfgd', NULL, NULL, NULL, 'gfgjhghgkhghfk', NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-04', NULL, NULL, NULL, NULL, NULL, 5, '2028-12-30', 1091, 1091, NULL, '2024-01-04 05:46:57', '2024-01-04 06:38:27', 'SUBMITTED'),
(41, 'adc11f00-0a32-4a71-a6c3-c07a92b7742d', 7, NULL, 38, 'SYSTEM', NULL, 'RENEW', 38, 9, NULL, NULL, NULL, NULL, NULL, 'Use', NULL, 'Mr. Md. Shahidul Islam Sazzat', 'জনাব মোঃ শহীদুল ইসলাম সাজ্জাত', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Islam Diagnostic Lab', 'ইসলাম ডায়াগনস্টিক ল্যাব', NULL, 'Jail Road, Hospital Road, Barisal', 'জেলখানা মোড়, হাসপাতাল রোড, বরিশাল', 5, 12, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 0.00, 18000.00, 0.00, 2910.00, 1400.00, 22310.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2026-06-29', 1765, 1765, NULL, '2024-01-04 06:22:50', '2024-01-04 06:22:50', 'DRAFT');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_caretaker_experiences`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_caretaker_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `controller_name_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_designation_two` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_tenure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_experience_year` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `controller_experience_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_caretaker_experiences`
--

INSERT INTO `license_s5zyr2p6_class_c_license_caretaker_experiences` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `controller_name_two`, `controller_designation_two`, `controller_organization`, `controller_tenure`, `controller_experience_year`, `controller_experience_attachment`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '43812df7-c2d3-462f-9f2a-7b9eafd1f3b4', NULL, 24, 'nill', NULL, NULL, NULL, NULL, NULL, 1758, 1758, '2024-01-01 11:08:10', '2024-01-01 11:08:10'),
(2, 'fb56b25b-8c41-4890-837f-4bbbd3000157', NULL, 40, 'Md. Shajalal', 'MD', 'National Medical center', NULL, NULL, NULL, 1091, 1091, '2024-01-04 06:31:53', '2024-01-04 06:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_caretaker_tranings`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_caretaker_tranings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `controller_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_qualification_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_caretaker_tranings`
--

INSERT INTO `license_s5zyr2p6_class_c_license_caretaker_tranings` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `controller_name`, `controller_designation`, `controller_qualification`, `controller_qualification_attachment`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '03c2bafd-b842-470d-9adf-c4e5c05554c0', NULL, 8, 'Mr. XS', NULL, NULL, NULL, 1735, 1735, '2023-12-19 15:55:15', '2023-12-19 15:55:15'),
(2, 'f9eafcfe-4d2b-4899-970b-05174de31fca', NULL, 24, 'nill', NULL, NULL, NULL, 1758, 1758, '2024-01-01 11:08:10', '2024-01-01 11:08:10'),
(7, '3f4bcbf4-0ce9-44c1-88de-6163f0fbe553', NULL, 28, 'Jdjxb', 'Rjfj', NULL, NULL, 1761, 1761, '2024-01-01 13:14:48', '2024-01-01 13:14:48'),
(8, '2bf13668-1516-4fb0-840b-b930a794258b', NULL, 40, 'Md. Shajalal', NULL, NULL, NULL, 1091, 1091, '2024-01-04 06:31:53', '2024-01-04 06:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_equipment_details`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_equipment_details` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `equipment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_equipment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_equipment_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_voltage_level` int DEFAULT NULL,
  `new_max_voltage_level` int DEFAULT NULL,
  `max_carent_level` int DEFAULT NULL,
  `new_max_current_level` int DEFAULT NULL,
  `max_power` int DEFAULT '0',
  `control_panel_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_control_panel_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tube_head_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `intended_use` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_intended_use` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_equipment_details`
--

INSERT INTO `license_s5zyr2p6_class_c_license_equipment_details` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `equipment_type`, `new_equipment_type`, `equipment_model`, `new_equipment_model`, `max_voltage_level`, `new_max_voltage_level`, `max_carent_level`, `new_max_current_level`, `max_power`, `control_panel_no`, `new_control_panel_no`, `tube_head_no`, `supplier_name`, `supplier_address`, `intended_use`, `other_intended_use`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'ec157fff-bdbb-4ece-8644-7cbfad0ae59b', NULL, 1, 'Munching MRI', 'w', 'rew32432', 'w', 3455, 214, 354, 213, NULL, NULL, 'w', NULL, 'Mr.FErdouse', 'g', 'INDUSTRIAL_RADIOGRAPHY', NULL, 1668, 675, '2023-12-10 06:50:57', '2023-12-13 08:47:11'),
(2, '85ab6f86-d722-4342-9f67-b6065d41fe83', NULL, 2, 'Munching MRI', NULL, 'rew32432', NULL, 3244, NULL, 23232, NULL, NULL, NULL, NULL, NULL, 'Mr.FErdouse', 'mirpur', 'INDUSTRIAL_RADIOGRAPHY', NULL, 1668, 1668, '2023-12-12 06:25:43', '2023-12-12 06:25:43'),
(3, '3b857035-18a6-48fa-8376-164b9d26f424', NULL, 3, 'dsfcd', NULL, 'scs', NULL, 2, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'Supplier Name', 'দ্বক', 'RELATED_TO_DENTISTRY', NULL, 702, 702, '2023-12-19 09:58:26', '2023-12-19 09:58:26'),
(4, '944eea7d-69c3-4d7c-a5ff-ab99abddac6d', NULL, 3, 'dsfcd', NULL, 'scs', NULL, 2, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'Supplier Name', 'দফব', 'RELATED_TO_DENTISTRY', NULL, 702, 702, '2023-12-19 09:58:26', '2023-12-19 09:58:26'),
(5, 'ddc4e221-2508-48d3-91ad-d5d7e603e701', NULL, 4, 'Munching MRI', NULL, 'rew32432', NULL, 89732847, NULL, 878327874, NULL, NULL, NULL, NULL, NULL, 'Mr.FErdouse', 'd', 'LIVESTOCK_TREATMENT', NULL, 1668, 1668, '2023-12-19 10:39:28', '2023-12-19 10:39:28'),
(6, 'bf278b38-f32a-4f80-b06a-90787af74e50', NULL, 5, 'Fixed X-Ray', NULL, 'Rotanode', NULL, 125, NULL, 500, NULL, 40, 'E7239X', NULL, '22H0661', 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-19 12:09:52', '2023-12-19 12:09:52'),
(7, '06a2f30c-16bf-4f06-b405-7f9fd883d53e', NULL, 5, 'CT-Scan', NULL, 'Siemens', NULL, 140, NULL, 300, NULL, 50, '10nh110', NULL, '221j1j', 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-19 12:09:52', '2023-12-19 12:09:52'),
(10, '1d529752-af0d-48d6-ac11-34caa31752e6', NULL, 7, 'Fixed X-Ray', NULL, 'TR 200B', NULL, 120, NULL, 200, NULL, 40, '12010199211', NULL, NULL, 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-19 13:04:27', '2023-12-19 13:04:27'),
(11, '0ff0f788-9834-450c-9ec6-a7d7928a0c6a', NULL, 7, 'OPG', NULL, 'Dental GRX', NULL, 80, NULL, 10, NULL, 5, '1N112n', NULL, NULL, 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-19 13:04:27', '2023-12-19 13:04:27'),
(12, 'be8f5ef1-99a1-443c-aabb-cc041e049091', NULL, 8, 'X-ray', NULL, 'TR 300A', NULL, 125, NULL, 300, NULL, NULL, 'jnej33j3n', NULL, NULL, 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-19 15:54:07', '2023-12-19 15:54:07'),
(13, '44188271-ea43-46e5-a670-ce84454dccc0', NULL, 9, 'Again new', NULL, 'scs', NULL, 2, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'Supplier Name', 'acs', 'RELATED_TO_DENTISTRY', NULL, 702, 702, '2023-12-20 08:14:30', '2023-12-20 08:14:30'),
(14, 'c070b17b-eabd-42ce-b65d-dbe80a938424', NULL, 10, 'Again new', NULL, 'scs', NULL, 2, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'Supplier Name', 'vzsd', 'RELATED_TO_DENTISTRY', NULL, 702, 702, '2023-12-20 10:54:18', '2023-12-20 10:54:18'),
(15, '32bd842b-097c-4a72-8817-c36540300b14', NULL, 11, 'Munching MRI', NULL, 'rew32432', NULL, 73265, NULL, 238746274, NULL, NULL, NULL, NULL, NULL, 'Mr.FErdouse', 's', 'CHIRO_PRACTIC', NULL, 1668, 1668, '2023-12-21 03:26:47', '2023-12-21 03:26:47'),
(18, '3d3b0ddd-80c9-402e-9adf-af7403a3d700', NULL, 17, 'Fixed X-Ray', NULL, 'Shimadzu', NULL, 150, NULL, 1000, NULL, NULL, '154654561', NULL, '17Lk4162567', 'Shimadzu Corporation', 'Japan', 'MEDICAL_DIAGNOSIS', NULL, 1746, 1746, '2023-12-30 13:04:04', '2023-12-30 13:04:04'),
(19, '4a146022-4567-492b-87ad-134fc2c522cf', NULL, 17, 'Machine', NULL, 'Shimadzu', NULL, 150, NULL, 1000, NULL, NULL, '676782373', NULL, '28789Hhf77', 'Shimadzu corporation', 'Japan', 'X_RAY_ANALYSIS', NULL, 1746, 1746, '2023-12-30 13:04:04', '2023-12-30 13:04:04'),
(20, '70515cd7-77c4-48e5-b36e-6d60cfdb4bc0', NULL, 18, 'Fixed X-Ray', NULL, 'TR 200B', NULL, 120, NULL, 200, NULL, 50, '11818881h1u1', NULL, '1h1h1h22j2', 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2023-12-30 13:52:00', '2023-12-30 13:52:00'),
(22, 'f50b12cc-45e5-4467-9cf7-c00ed2cda094', NULL, 20, 'h', NULL, 'h', NULL, 324, NULL, 324, NULL, 324, NULL, NULL, NULL, '23', 'frre', 'LIVESTOCK_TREATMENT', NULL, 1668, 1668, '2024-01-01 07:11:42', '2024-01-01 07:11:42'),
(23, '1d929ed3-e86d-404d-94ee-3391013b8184', NULL, 21, 'Fixed X-ray', NULL, 'TR 200 B', NULL, 120, NULL, 200, NULL, NULL, '12021055032', NULL, '12021055032', 'GE', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1760, 1760, '2024-01-01 07:30:11', '2024-01-01 07:30:11'),
(24, '990ae0d6-b02c-493a-b726-c7a782892e76', NULL, 22, 'greegf', NULL, 'rtreg', NULL, 12, NULL, 123, NULL, 32, 'trvret35', NULL, '4r4gtr', 'hnhg', 'ghfg fgdv df', 'MEDICAL_THERAPY', NULL, 1761, 1761, '2024-01-01 10:02:02', '2024-01-01 10:02:02'),
(26, '87e0a164-d4a5-48c0-a5ef-1474db785609', NULL, 24, 'A', NULL, 'nill', NULL, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, 'nill', 'nill', 'X_RAY_ANALYSIS', NULL, 1758, 1758, '2024-01-01 11:06:49', '2024-01-01 11:06:49'),
(27, 'db642ca9-8a55-4cb3-bef0-aeac242df209', NULL, 27, 'Munching MRI', NULL, 'rew32432', NULL, 89732847, NULL, 878327874, NULL, NULL, NULL, NULL, NULL, 'Mr.FErdouse', 'd', 'LIVESTOCK_TREATMENT', NULL, 1668, 1668, '2024-01-01 11:39:35', '2024-01-01 11:39:35'),
(31, 'a658fd74-4e1c-4c2e-8a73-b7048448aa06', NULL, 26, 'Fixed X-ray', NULL, 'Simens', NULL, 150, NULL, 1000, NULL, NULL, '25G627', NULL, '6377NH54', 'Simens Healthcare', 'Germany', 'MEDICAL_DIAGNOSIS', NULL, 1747, 1747, '2024-01-01 11:54:01', '2024-01-01 11:54:01'),
(32, 'cc73a021-6b59-4cce-b14c-817d66f0bc0f', NULL, 26, 'CT', NULL, 'Somatom go. Now', NULL, 150, NULL, 400, NULL, NULL, '437834', NULL, '23567', 'Simens', 'Germany', 'MEDICAL_DIAGNOSIS', NULL, 1747, 1747, '2024-01-01 11:54:01', '2024-01-01 11:54:01'),
(33, 'd21271f9-d958-4a72-ac5b-77001bea5600', NULL, 26, 'OPG', NULL, 'Viraview', NULL, 70, NULL, 10, NULL, NULL, '2672737', NULL, '317862', 'SImens', 'Germany', 'MEDICAL_DIAGNOSIS', NULL, 1747, 1747, '2024-01-01 11:54:01', '2024-01-01 11:54:01'),
(36, '2016d0ae-c824-4373-afec-5cee1679c5c9', NULL, 23, '2343 AD', NULL, 'M-45', NULL, 42, NULL, 43, NULL, NULL, NULL, NULL, NULL, 'Supplier Hue', 'Some Address', 'MEDICAL_THERAPY', NULL, 702, 702, '2024-01-01 12:39:57', '2024-01-01 12:39:57'),
(37, '8e2382b2-4b18-40ae-8605-bf5a07b4eca0', NULL, 23, '2343 AD', NULL, 'dfds', NULL, 45, NULL, 32, NULL, NULL, NULL, NULL, NULL, 'Supplier', 'Address 2', 'LIVESTOCK_TREATMENT', NULL, 702, 702, '2024-01-01 12:39:57', '2024-01-01 12:39:57'),
(46, '1eff9dad-63ff-4158-bebf-c00695109938', NULL, 29, 'Fixed X-Ray', NULL, 'TR 200B', NULL, 120, NULL, 200, NULL, 50, '11818881h1u1', NULL, '1h1h1h22j2', 'GE Co', 'Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1735, 1735, '2024-01-01 13:02:24', '2024-01-01 13:02:24'),
(52, '638179a4-1fb9-4278-8a29-69183cc5ee09', NULL, 28, 'Shdh', NULL, 'Fkdj', NULL, 12, NULL, 158, NULL, NULL, 'Gh', NULL, NULL, 'Djdb', 'Ehd ejej', 'INDUSTRIAL_RADIOGRAPHY', NULL, 1761, 1761, '2024-01-01 13:16:14', '2024-01-01 13:16:14'),
(59, '845b816a-5f2a-4747-bade-0ccf71220809', NULL, 30, 'Dnfn', NULL, 'Xnxn', NULL, 125, NULL, 1000, NULL, NULL, NULL, NULL, NULL, 'Dhcbsb', 'Fndn', 'RELATED_TO_DENTISTRY', NULL, 1761, 1761, '2024-01-01 13:56:50', '2024-01-01 13:56:50'),
(60, '0efd3e2a-e5fe-422b-87f3-5c6bf673c8bf', NULL, 31, 'cxggx', NULL, 'Hvcb', NULL, 120, NULL, 500, NULL, 40, 'Hb', NULL, NULL, 'Dj nbd', 'Gcgv', 'MEDICAL_DIAGNOSIS', NULL, 1761, 1761, '2024-01-02 04:32:18', '2024-01-02 04:32:18'),
(61, '03447131-4886-4255-8610-1cdd47d1aac4', NULL, 32, 'Radiography (Fixed)', NULL, 'XCMC-R1', NULL, 125, NULL, 500, NULL, 10, 'P1A15280022', NULL, '145286', 'China', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1762, 1762, '2024-01-02 05:59:50', '2024-01-02 05:59:50'),
(63, '91637939-1cb6-4505-9e55-6edff1fe173e', NULL, 33, 'Radiography (Fixed)', NULL, 'XCMC-R1', NULL, 125, NULL, 500, NULL, 10, 'P1A15280022', NULL, '145286', 'China', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1762, 1762, '2024-01-02 07:44:10', '2024-01-02 07:44:10'),
(64, 'a92db69a-9e4e-4400-9ead-9c9310c8cfa5', NULL, 33, '2343 AD', NULL, 'XCMC-R1', NULL, 345, NULL, 43, NULL, 343, NULL, NULL, NULL, 'Supplier Hue', 'Road #2,\nHosue #3', 'X_RAY_ANALYSIS', NULL, 1762, 1762, '2024-01-02 07:44:10', '2024-01-02 07:44:10'),
(66, '284a8bb3-0bd2-4c78-995f-ac463c995245', NULL, 34, 'Radiography (Fixed)', NULL, 'XCMC-R1', NULL, 125, NULL, 500, NULL, 10, 'P1A15280022', NULL, '145286', 'China', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1762, 1762, '2024-01-02 08:44:57', '2024-01-02 08:44:57'),
(67, 'a20bbbad-4c4e-4618-b5a5-6fd6ec0882e5', NULL, 35, 'Again new', NULL, 'scs', NULL, 2, NULL, 12, NULL, NULL, NULL, NULL, NULL, 'Supplier Name', 'acs', 'RELATED_TO_DENTISTRY', NULL, 702, 702, '2024-01-02 10:22:31', '2024-01-02 10:22:31'),
(68, 'e7ec7720-05fe-4b22-bd72-d2929bdcf496', NULL, 36, 'Fixed X ray', NULL, 'TR 200B', NULL, 120, NULL, 500, NULL, NULL, NULL, NULL, NULL, '2474543756', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1091, 1091, '2024-01-03 15:13:22', '2024-01-03 15:13:22'),
(69, '822b9512-6369-4677-b46d-36fb9a9cef5d', NULL, 37, 'e', NULL, 'e', NULL, 324, NULL, 324, NULL, NULL, NULL, NULL, NULL, '23', '23', 'CHIRO_PRACTIC', NULL, 1668, 1668, '2024-01-04 04:34:26', '2024-01-04 04:34:26'),
(70, 'b43c8f54-f1b4-4484-8493-9a407bf8e519', NULL, 38, 'Radiography (Fixed)', NULL, 'TR 200B', NULL, 100, NULL, 200, NULL, 10, '046291', NULL, NULL, 'China', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1765, 1765, '2024-01-04 05:17:24', '2024-01-04 05:17:24'),
(71, '2a09640d-070a-4d20-bd1b-aee64f9e59fe', NULL, 38, 'C-Arm', NULL, 'TR-200B', NULL, 100, NULL, 200, NULL, 5, '22222256', NULL, '--', 'India', 'India', 'MEDICAL_DIAGNOSIS', NULL, 1765, 1765, '2024-01-04 05:17:24', '2024-01-04 05:17:24'),
(72, 'f2acde12-8506-4337-ab33-1179258f21fd', NULL, 39, 'Radiography (fixed)', NULL, 'SIG-340-CON-CFSK302-1A', NULL, 150, NULL, 500, NULL, NULL, NULL, NULL, NULL, 'Phulhar and Company', 'Phulhar and Company, Palton, Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1091, 1091, '2024-01-04 05:29:39', '2024-01-04 05:29:39'),
(74, '01cae8c8-324a-49d6-b087-65a51398c63f', NULL, 40, 'Radiography (fixed)', NULL, 'SIG-340-CON-CFSK302-1A', NULL, 150, NULL, 500, NULL, NULL, NULL, NULL, NULL, 'Phulhar and Company', 'Phulhar and Company, Palton, Dhaka', 'MEDICAL_DIAGNOSIS', NULL, 1091, 1091, '2024-01-04 06:08:36', '2024-01-04 06:08:36'),
(75, '236d0bea-4bf8-4b56-a5d1-904f37004dd9', NULL, 41, 'Radiography (Fixed)', NULL, 'TR 200B', NULL, 100, NULL, 200, NULL, 10, '046291', NULL, NULL, 'China', 'China', 'MEDICAL_DIAGNOSIS', NULL, 1765, 1765, '2024-01-04 06:22:50', '2024-01-04 06:22:50'),
(76, '456d5ff3-3502-429d-b78c-b87bd97d4df7', NULL, 41, 'C-Arm', NULL, 'TR-200B', NULL, 100, NULL, 200, NULL, 5, '22222256', NULL, '--', 'India', 'India', 'MEDICAL_DIAGNOSIS', NULL, 1765, 1765, '2024-01-04 06:22:50', '2024-01-04 06:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_equipment_users`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_equipment_users` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_dob` date DEFAULT NULL,
  `nid_birth_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_equipment_users`
--

INSERT INTO `license_s5zyr2p6_class_c_license_equipment_users` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `user_name`, `user_description`, `user_dob`, `nid_birth_certificate`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '031fd371-c469-4377-9a5c-db779124d1d9', NULL, 1, 'f', NULL, '2004-12-07', NULL, 1668, 1668, '2023-12-10 06:50:21', '2023-12-10 06:50:21'),
(2, '5cf39bba-21f8-4241-8bf3-9fef37cf80ed', NULL, 3, 'erfe', NULL, '2000-03-10', NULL, 702, 702, '2023-12-19 09:57:58', '2023-12-19 09:57:58'),
(3, 'da9d5181-fd06-41e5-be7f-b2503255a1b9', NULL, 7, 'Mr. C', NULL, '2000-02-18', '6581945183db5', 1735, 1735, '2023-12-19 13:02:12', '2023-12-19 13:02:12'),
(4, 'd5ff16d9-d386-442e-a845-c83c0919dea8', NULL, 8, 'Mr. XA', NULL, '1996-08-14', NULL, 1735, 1735, '2023-12-19 15:52:56', '2023-12-19 15:52:56'),
(5, 'e33512e1-0138-4e1d-b8bf-dbd5eb40cbed', NULL, 9, 'Alal', NULL, '2001-05-16', NULL, 702, 702, '2023-12-20 08:14:10', '2023-12-20 08:14:10'),
(6, '87cd16fb-3ddf-4d8e-81dd-fab998d6ddc3', NULL, 10, 'erfe', NULL, '2001-06-06', NULL, 702, 702, '2023-12-20 10:53:58', '2023-12-20 10:53:58'),
(7, '297ea1e1-ab80-471b-a13f-9d093a014b32', NULL, 11, 'দ', NULL, '2000-12-12', NULL, 1668, 1668, '2023-12-21 03:26:19', '2023-12-21 03:26:19'),
(8, '075e6a42-3f68-4067-b9bb-174cd401b322', NULL, 17, 'Karim', 'Radiographar', '1997-12-17', NULL, 1746, 1746, '2023-12-30 12:56:56', '2023-12-30 12:56:56'),
(9, 'c08d0c12-119c-4fa6-b811-b92b7a727e1a', NULL, 20, 's', 's', '1998-01-05', NULL, 1668, 1668, '2024-01-01 07:11:05', '2024-01-01 07:11:05'),
(10, '8a1f9083-734c-4007-b2d2-32385b6854f5', NULL, 23, 'Arham Ruhan', NULL, '2000-01-06', NULL, 702, 702, '2024-01-01 09:59:56', '2024-01-01 09:59:56'),
(11, '77e659e8-32f2-4021-9c16-f79891200d4a', NULL, 22, 'rg', NULL, '1900-02-07', NULL, 1761, 1761, '2024-01-01 10:01:01', '2024-01-01 10:01:01'),
(12, 'b1be53cf-db0c-4748-8042-e5c48cac5958', NULL, 24, 'nill', NULL, '2000-02-01', NULL, 1758, 1758, '2024-01-01 11:05:07', '2024-01-01 11:05:07'),
(13, '5744233d-06f9-4049-bfe0-18b37d819e4e', NULL, 26, 'Karim ahmed', 'Radiographer', '2000-01-10', '6592a517b3050', 1747, 1747, '2024-01-01 11:42:20', '2024-01-01 11:42:20'),
(16, '1db5da77-fbaa-4805-a6d3-01e66993b494', NULL, 28, 'Xhdh', NULL, '1900-02-01', NULL, 1761, 1761, '2024-01-01 13:13:48', '2024-01-01 13:13:48'),
(18, '9f731c03-6c59-481d-9d86-ba2b8452785c', NULL, 30, 'Sjsk', NULL, '1900-02-07', NULL, 1761, 1761, '2024-01-01 13:41:50', '2024-01-01 13:41:50'),
(19, 'a3316aba-4e03-4221-901a-9a81563a900d', NULL, 35, 'Alal', NULL, '2001-05-16', NULL, 702, 702, '2024-01-02 10:22:31', '2024-01-02 10:22:31'),
(20, '741f1f86-31be-443f-be81-8fe69ec21798', NULL, 37, 'w', NULL, '2000-01-18', NULL, 1668, 1668, '2024-01-04 04:03:30', '2024-01-04 04:03:30'),
(21, '3062a290-60ce-44e6-ba62-b20a6c3a7a81', NULL, 40, 'Karim', NULL, '1994-01-10', NULL, 1091, 1091, '2024-01-04 05:57:08', '2024-01-04 05:57:08');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_paper_attachments`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_paper_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `attachment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_paper_attachments`
--

INSERT INTO `license_s5zyr2p6_class_c_license_paper_attachments` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `attachment_type`, `attachment_remarks`, `attachment_name`, `attachment_file`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '4d02f55b-6210-4c22-84ab-e814b06f6bc0', NULL, 7, NULL, NULL, 'Printed Application with necessary Signatures', '658197369fd1e', 1735, 1735, '2023-12-19 13:14:35', '2023-12-19 13:14:35'),
(2, 'e68b6984-ffd4-4252-8dac-17d5f79a3d34', NULL, 8, NULL, NULL, 'Printed Application with necessary Signatures', '6581bcec03b60', 1735, 1735, '2023-12-19 15:55:29', '2023-12-19 15:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_personnel_monitorings`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_personnel_monitorings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `monitoring_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examine_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examine_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_personnel_monitorings`
--

INSERT INTO `license_s5zyr2p6_class_c_license_personnel_monitorings` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `monitoring_type`, `supplier_name`, `examine_agency`, `examine_number`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '30ac5b3f-0ff9-4b05-a1e3-2b1ac43c1ffc', NULL, 1, 'g', 'Mr.FErdouse', 'yh', '56', 1668, 1668, '2023-12-10 06:52:26', '2023-12-10 06:52:26'),
(2, '5feb5aa5-d670-4d78-9de4-9d38a06cbb65', NULL, 3, 'Monitoring Type', 'www', 'Supplier Name', 'Heavy', 702, 702, '2023-12-19 09:58:58', '2023-12-19 09:58:58'),
(3, '8795a8a8-8152-4442-9477-a89519956fa8', NULL, 7, 'TLD', 'AEC', 'PD, AEC', '3 Months', 1735, 1735, '2023-12-19 13:11:29', '2023-12-19 13:11:29'),
(4, '7b9ca130-46c5-4924-9d1f-f44c940c157a', NULL, 8, 'TLD', 'AEC', 'PD, AEC', '3M', 1735, 1735, '2023-12-19 15:54:56', '2023-12-19 15:54:56'),
(5, '00b39a60-b5a2-44d9-a720-344e74e8f82b', NULL, 9, 'Monitoring Type', 'www', 'Supplier Name', 'Heavy', 702, 702, '2023-12-20 08:15:06', '2023-12-20 08:15:06'),
(6, '08d7a1cd-237f-4da9-878d-2837e44446c5', NULL, 10, 'Monitoring Type', 'www', 'Supplier Name', 'Heavy', 702, 702, '2023-12-20 10:54:47', '2023-12-20 10:54:47'),
(7, 'ae5ffc9a-e46e-4352-aeae-f5b47b30965f', NULL, 11, 's', 's', 's', 's', 1668, 1668, '2023-12-21 03:27:20', '2023-12-21 03:27:20'),
(8, '733a138c-74ff-45a1-9b01-c462e8f8ec53', NULL, 17, 'TLD', 'Health Physics Division, BAEC', 'BAEC', '3 month', 1746, 1746, '2023-12-30 13:07:25', '2023-12-30 13:07:25'),
(9, 'bc1cd48d-2018-4e84-82f2-927fc8e463e0', NULL, 20, 'h', 'h', 'h', 'h', 1668, 1668, '2024-01-01 07:15:17', '2024-01-01 07:15:17'),
(10, 'bf27cc70-4081-4235-bb25-f8a344e31b83', NULL, 22, 'gfr', 'fgtrg', 'grgt', 'rte', 1761, 1761, '2024-01-01 10:03:07', '2024-01-01 10:03:07'),
(11, '20cd17f8-f1ac-4878-83fc-ed5e014e2a1f', NULL, 24, 'nill', 'nill', 'nill', 'nill', 1758, 1758, '2024-01-01 11:07:44', '2024-01-01 11:07:44'),
(13, '74f3a98f-7a98-4ac2-9f19-bf3ee17415b9', NULL, 26, 'TLD', 'Health Physics Division, BAEC', 'BAEC', '2', 1747, 1747, '2024-01-01 11:57:20', '2024-01-01 11:57:20'),
(15, 'e52f29da-3b3d-4ef9-adc2-8f06b6c9ddbe', NULL, 23, 'Film Badge', 'Supplier', 'Some Agency', '45', 702, 702, '2024-01-01 12:41:06', '2024-01-01 12:41:06'),
(20, '765dad6e-bd80-4c30-9ec5-1a7cdcf5a9d6', NULL, 28, 'Dhdh', 'Dnxb', 'Djfb', 'Fjfj', 1761, 1761, '2024-01-01 13:14:43', '2024-01-01 13:14:43'),
(24, '98aedce4-55a9-45c9-8da6-77bb8176c854', NULL, 30, 'Xnnx', 'Dj nbd', 'Dndnn', 'Sj nf', 1761, 1761, '2024-01-01 13:54:20', '2024-01-01 13:54:20'),
(25, 'ee72cd59-d34f-42b8-95e8-af35e0230716', NULL, 35, 'Monitoring Type', 'www', 'Supplier Name', 'Heavy', 702, 702, '2024-01-02 10:22:31', '2024-01-02 10:22:31'),
(26, '56c6fdcc-e9b6-4f3d-9ea1-69e8470659f5', NULL, 37, '3', '23', 'e', 'e', 1668, 1668, '2024-01-04 04:37:50', '2024-01-04 04:37:50'),
(27, '48ae1063-02ef-4f54-a413-ac60297b4fdd', NULL, 40, 'TLD', 'HPD', 'Health Physics Division', '3 months latter', 1091, 1091, '2024-01-04 06:26:23', '2024-01-04 06:26:23');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_present_equipments`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_present_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `applicant_equipment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_equipment_supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_equipment_model` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiable_radiation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `circumference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_present_equipments`
--

INSERT INTO `license_s5zyr2p6_class_c_license_present_equipments` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `applicant_equipment_type`, `applicant_equipment_supplier`, `applicant_equipment_model`, `equipment_number`, `identifiable_radiation`, `circumference`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '0983b8ed-5719-4a74-961c-1c12e13900f4', NULL, 24, 'Nill', 'nill', '45', 'nill', 'nill', NULL, 1758, 1758, '2024-01-01 11:06:49', '2024-01-01 11:06:49'),
(2, '52d8ea0e-2763-4c7f-adeb-500d5f70e17e', NULL, 40, 'Gamma detector', 'USA', 'Ludlum Model3000', '3454543534', 'Gamma', NULL, 1091, 1091, '2024-01-04 06:08:36', '2024-01-04 06:08:36');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_safety_equipments`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_safety_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED NOT NULL,
  `safety_equipment_benefits` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_equipment_supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_equipment_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_equipment_action` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `safety_equipment_nuumber` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_safety_equipments`
--

INSERT INTO `license_s5zyr2p6_class_c_license_safety_equipments` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `safety_equipment_benefits`, `safety_equipment_supplier`, `safety_equipment_model`, `safety_equipment_action`, `safety_equipment_nuumber`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'd56f8192-4640-4a12-b493-5632721f5a3a', NULL, 1, NULL, NULL, NULL, NULL, NULL, 1668, 1668, '2023-12-10 06:52:41', '2023-12-10 06:52:41'),
(2, '728fb486-a904-42de-be10-92c041e4fee1', NULL, 20, NULL, NULL, NULL, NULL, NULL, 1668, 1668, '2024-01-01 07:15:40', '2024-01-01 07:15:40'),
(3, '40b0c7d3-59dc-4780-b4f5-6db75d14772a', NULL, 24, 'nill', NULL, NULL, NULL, NULL, 1758, 1758, '2024-01-01 11:08:27', '2024-01-01 11:08:27');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_c_license_supervisor_identifiers`
--

CREATE TABLE `license_s5zyr2p6_class_c_license_supervisor_identifiers` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `class_c_license_application_id` bigint UNSIGNED DEFAULT NULL,
  `supervisor_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supervisor_dob` date DEFAULT NULL,
  `supervisor_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supervisor_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_c_license_supervisor_identifiers`
--

INSERT INTO `license_s5zyr2p6_class_c_license_supervisor_identifiers` (`id`, `uuid`, `organogram_id`, `class_c_license_application_id`, `supervisor_name`, `supervisor_dob`, `supervisor_designation`, `supervisor_description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '6caea766-fcb2-4461-b49e-27b693d0a98e', NULL, 7, 'Mr. A', '2000-02-02', 'RCO', NULL, 1735, 1735, '2023-12-19 13:00:55', '2023-12-19 13:00:55'),
(2, '14d2cbe2-c1bc-4233-a51b-4fe15651bff7', NULL, 8, 'Mr. X', '1999-02-03', 'RCO', NULL, 1735, 1735, '2023-12-19 15:52:05', '2023-12-19 15:52:05'),
(3, '7c3641fe-115d-4dca-9f01-cc1122d7e80b', NULL, 17, 'Karim', '1997-12-25', 'Radiographar', NULL, 1746, 1746, '2023-12-30 12:55:46', '2023-12-30 12:55:46'),
(4, '48a10e5f-defd-4090-b395-9775e4a7f98c', NULL, 22, 'htr', '2000-01-17', 'ht', 'ty', 1761, 1761, '2024-01-01 09:59:10', '2024-01-01 09:59:10'),
(5, 'c16d2616-3d59-4380-98bf-7ed05167f11c', NULL, 28, 'Dhd djd', '1990-10-31', NULL, NULL, 1761, 1761, '2024-01-01 12:23:38', '2024-01-01 12:23:38'),
(6, 'c190929d-d77c-4e77-8627-d39647f372cb', NULL, 30, 'Xndn', '2024-01-22', NULL, NULL, 1761, 1761, '2024-01-01 13:31:52', '2024-01-01 13:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_applications`
--

CREATE TABLE `license_s5zyr2p6_class_d_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SYSTEM',
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_group_id` bigint UNSIGNED DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `amendment_type` json DEFAULT NULL,
  `amendment_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `correction_type` json DEFAULT NULL,
  `license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportation_of_material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_transportation_of_material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportation_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `others_transportation_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activities_purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `activities_purpose_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_step` bigint UNSIGNED DEFAULT NULL,
  `applicant_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicant_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_designation_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_designation_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_institute_applicant_address_same` tinyint(1) NOT NULL DEFAULT '0',
  `institute_division_id` bigint UNSIGNED DEFAULT NULL,
  `institute_district_id` bigint UNSIGNED DEFAULT NULL,
  `institute_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `institute_address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_service_company_or_agency_address_same` tinyint(1) NOT NULL DEFAULT '0',
  `service_agency_division_id` bigint UNSIGNED DEFAULT NULL,
  `service_agency_district_id` bigint UNSIGNED DEFAULT NULL,
  `service_agency_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `service_agency_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_dob` date DEFAULT NULL,
  `authorized_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_division_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_district_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `use_purpose_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `use_purpose_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_identification_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_model_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gross_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_main_material` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `material_design_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_material_or_waste_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_material_or_waste_max_activity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_material_or_waste_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_material_or_waste_max_quantity` int DEFAULT NULL,
  `content_max_weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chamical_and_physical_form` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regulatory_authority_approval_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quality_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quality_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organogram_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `organogram_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_expertise` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_recognition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_division_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_district_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `specialist_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `specialist_mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `specialist_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `calibration_agency_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `calibration_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_control_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `radiation_control_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fire_safety_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fire_safety_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_preparation_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `emergency_preparation_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tranining_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `training_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agreed` tinyint(1) NOT NULL DEFAULT '0',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `applicant_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_fee` decimal(10,2) DEFAULT NULL,
  `renewal_fee` decimal(10,2) DEFAULT NULL,
  `amendment_fee` decimal(10,2) DEFAULT NULL,
  `vat` decimal(10,2) DEFAULT NULL,
  `surcharge` decimal(10,2) DEFAULT NULL,
  `total_fee` decimal(10,2) DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `original_submission_date` date DEFAULT NULL,
  `original_license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_issue_renew_date` date DEFAULT NULL,
  `legacy_expiry_date` date DEFAULT NULL,
  `renewal_years` int DEFAULT NULL,
  `renewal_year_upto` date DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_d_applications`
--

INSERT INTO `license_s5zyr2p6_class_d_applications` (`id`, `uuid`, `organization_id`, `organogram_id`, `service_mapping_id`, `application_medium`, `application_type`, `current_active_step`, `tracking_number`, `parent_group_id`, `docketing_number`, `previous_application_id`, `amendment_type`, `amendment_attachment`, `correction_type`, `license_attachment`, `transportation_of_material`, `others_transportation_of_material`, `transportation_mode`, `others_transportation_mode`, `activities_purpose`, `activities_purpose_other`, `application_step`, `applicant_name_en`, `applicant_name_bn`, `applicant_nid`, `applicant_division_id`, `applicant_district_id`, `applicant_upazila_id`, `applicant_address`, `applicant_phone`, `applicant_mobile`, `applicant_email`, `institute_name_en`, `institute_name_bn`, `institute_designation_en`, `institute_designation_bn`, `is_institute_applicant_address_same`, `institute_division_id`, `institute_district_id`, `institute_upazila_id`, `institute_address_en`, `institute_address_bn`, `institute_phone`, `is_service_company_or_agency_address_same`, `service_agency_division_id`, `service_agency_district_id`, `service_agency_upazila_id`, `service_agency_address`, `authorized_name`, `authorized_nid`, `authorized_dob`, `authorized_address`, `authorized_division_id`, `authorized_district_id`, `authorized_upazila_id`, `authorized_telephone`, `authorized_fax`, `authorized_mobile`, `authorized_email`, `authorized_designation`, `authorized_signature`, `rco_application_id`, `use_purpose_details`, `use_purpose_attachment`, `package_type`, `package_identification_number`, `package_model_number`, `package_gross_weight`, `package_main_material`, `material_design_attachment`, `radioactive_material_or_waste_name`, `radioactive_material_or_waste_max_activity`, `nuclear_material_or_waste_name`, `nuclear_material_or_waste_max_quantity`, `content_max_weight`, `chamical_and_physical_form`, `content_attachment`, `regulatory_authority_approval_certificate`, `quality_details`, `quality_attachment`, `organogram_details`, `organogram_attachment`, `specialist_name`, `specialist_expertise`, `specialist_education`, `specialist_qualification`, `specialist_experience`, `specialist_recognition`, `specialist_division_id`, `specialist_district_id`, `specialist_upazila_id`, `specialist_phone`, `specialist_address`, `specialist_mobile_number`, `specialist_email`, `calibration_agency`, `calibration_agency_address`, `calibration_attachment`, `radiation_control_details`, `radiation_control_attachment`, `fire_safety_details`, `fire_safety_attachment`, `emergency_preparation_details`, `emergency_preparation_attachment`, `tranining_details`, `training_attachment`, `is_agreed`, `is_checked`, `applicant_signature`, `license_fee`, `renewal_fee`, `amendment_fee`, `vat`, `surcharge`, `total_fee`, `submission_date`, `original_submission_date`, `original_license_attachment`, `legacy_license_permit_number`, `legacy_issue_renew_date`, `legacy_expiry_date`, `renewal_years`, `renewal_year_upto`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, 'f415706a-3be5-4a16-9e4f-4b3a2caf6cc1', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202312190001', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'gf', 'কে', '2324324232', 4, 15, 298, 'দ', NULL, '02398932833', NULL, 's', 'য', 'ed', '্দ', 0, 4, 15, 298, 'ে', 'জী', NULL, 1, NULL, NULL, NULL, NULL, 'Nilufar Hossain', '9829737287', '2023-11-28', 'এ', 5, 13, 407, '01780940522', NULL, '02989887729', 'hossainnilufar12@gmail.com', NULL, NULL, 5, 's', NULL, 'ew', 'ew', 'ew', '23432', 's', NULL, 'wqe', 'were', 's', 3, '98987', NULL, NULL, NULL, 'w', NULL, 's', '658138ca94422', 's', 's', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's', NULL, NULL, 's', '658138e48d640', 's', '658138eb0ab2d', NULL, '658138efcd83a', 's', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1668, NULL, '2023-12-19 06:29:02', '2023-12-19 12:33:17', 'PAYMENT_PENDING'),
(2, '917455b0-3399-4914-8f10-98b7bf684f04', 7, NULL, 133, 'MANUAL', 'NEW', 2, 'D-202312190002', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e', 'জস', NULL, 5, 12, 397, 'r', NULL, '01780940522', 'hossainnilufar12@gmail.com', 'r', 'য', '্দস্ফ', 'দস', 0, 5, 12, 396, 'ঝহু', 'এ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19', '2023-12-18', '6581734be3878', '2023/(2023)', '2023-12-01', '2023-12-05', NULL, NULL, 1668, 1731, NULL, '2023-12-19 10:42:24', '2023-12-20 03:48:47', 'APPROVED'),
(3, '7066f1aa-256f-4503-a43e-73e2f1ba8969', 7, NULL, 133, 'MANUAL', 'NEW', 2, 'D-202312190003', NULL, 'BAER-8-104/2021', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, 3, 21, 5173, '1/2, Mirpur, DHaka', NULL, '01011111111', 'abc@yopmail.com', 'License BAERA IDSDP', 'লাইসেন্স', 'RCO BAERA', 'আরসিও', 0, 3, 21, 5173, '1/2, Mirpur, DHaka', '১/২, মিরপুর, ঢাকা', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-19', '2020-12-09', '65818aa38db51', '8/2021-2022(R-1/2022-2023)/104', '2020-12-30', '2023-06-30', NULL, NULL, 1735, 1700, NULL, '2023-12-19 12:29:03', '2023-12-19 12:29:51', 'APPROVED'),
(5, 'e16a53c9-ec1f-4d2c-b510-ab23595bdc6b', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202312200005', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'd', 'স', '2324324232', 4, 16, 305, 'দ', '01780940522', '01780940522', 'hossainnilufar12@gmail.com', 'Nilufar Hossain', 'দ', '্দ', '্দ', 0, 4, 15, 298, '13/14,Ayesha centre,Mirpur13,BRTA ,Dhaka1206,Bangladesh', 'দ', '01780940522', 1, NULL, NULL, NULL, NULL, '্দ', '9829737287', '2001-06-28', NULL, 4, 16, 304, '01780940522', NULL, '01780940522', 'hossainnilufar12@gmail.com', NULL, NULL, 1, 'দ', NULL, 'ew', 'ew', 'ew', '23432', '্দ', NULL, 'wqe', 'were', 's', NULL, NULL, NULL, NULL, NULL, 'দ', NULL, '্দ', '6582639f0a0f5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'f', 'দ', '658263b9269f4', 'দ', '658263d41251f', '্দ', '658263d00ec76', NULL, '658263cc021a9', 'দ', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1731, NULL, '2023-12-20 03:45:35', '2023-12-20 05:18:13', 'APPROVED'),
(6, '083a731f-558c-4ce7-ba01-cf37724ba4e7', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202312200006', NULL, 'this is my docket number', NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 4, 15, 298, 'hello', NULL, '01888888888', 'chairman@dao.org', 'Test', 'ফ', 'Consectetur sed dol', 'ফ', 0, 3, 21, 5158, 'Road #2,\nFactory #3,\nUniverse', 'ফ', NULL, 1, NULL, NULL, NULL, NULL, 'Moin Uddin', '1234567890', '2023-12-20', NULL, 4, 15, 298, '01951851116', NULL, '01951851116', NULL, NULL, NULL, 6, 'fca', NULL, 'asc', 'ac', 'asc', 'asc', 'asc', NULL, 'asc', 'a', NULL, NULL, NULL, NULL, NULL, NULL, 'asc', NULL, 'as', '6582aef4efd9d', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asc', '6582af3443d77', 'as', '6582af398f47c', NULL, '6582af4abb5c7', 'cas', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1729, NULL, '2023-12-20 09:07:14', '2023-12-20 10:14:50', 'APPROVED'),
(7, '12d73364-c8cb-4935-b2e4-d7dd2b75f8bf', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202312280007', NULL, 'this is my docket number', NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 4, 15, 298, 'dhaka', NULL, '01888888888', 'chairman@dao.org', 'ফসাফ', 'ফসাফ', 'Dolore Nam adipisci', 'ফসাফ', 0, 3, 21, 5158, 'Road #2,\nFactory #3,\nUniverse', 'ফসাফ', '01951851116', 1, NULL, NULL, NULL, NULL, 'Moin Uddin', '1234567890', '2023-12-28', NULL, 4, 15, 298, '01951851116', NULL, '01951851116', NULL, NULL, NULL, 6, 'ফসা', NULL, 'sd', 'sdc', 'sdc', '12', 'চফসা', NULL, 'scsd', 'asc', NULL, NULL, NULL, NULL, NULL, NULL, 'সদ', NULL, 'দচ', '658d563820bbb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dn', '658d56694deb7', 'ht', '658d5668a65fa', NULL, '658d56799f8ec', 'ht', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2023-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1711, NULL, '2023-12-28 11:03:33', '2023-12-28 11:11:06', 'PAYMENT_VERIFIED'),
(9, 'e8d6a21b-1625-497f-9528-c03c39aee6d5', 7, NULL, 133, 'SYSTEM', 'NEW', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 4, 15, 298, 'acsx', NULL, '01888888888', 'chairman@dao.org', 'Test', 'দফ', 'সদ', 'সদ', 0, 3, 21, 5158, 'Road #2,\nFactory #3,\nUniverse', 'সদ', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 702, NULL, '2023-12-31 04:58:06', '2023-12-31 04:58:06', 'DRAFT'),
(10, 'af5f00bf-6124-4fb0-8073-8c9fd5feb39c', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202312310010', NULL, 'BAERA- DHA- 2023-C017 - changed', NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'sea', NULL, NULL, NULL, NULL, 'Sima akhter', 'পাখি বিন্তে', '9028349731', 4, 15, 298, 'w3', NULL, '09387497989', NULL, 'Mr.Abdullah', 'ডি', 'CEO', 'এর', 0, 4, 15, 298, '4', '23', NULL, 1, NULL, NULL, NULL, NULL, 'Azad khan', '9028349731', '1999-12-16', NULL, 4, 15, 296, NULL, NULL, '09082394738', NULL, NULL, NULL, 3, 'r', NULL, 'Sealed', 'ENJ 0989', '4935', '45kg', 'r', NULL, 'Uranium', 'chain reaction , Flammable', NULL, NULL, NULL, NULL, NULL, NULL, '4', NULL, '4', '65912a2f76d5e', 'Abdul jopbbaar', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '65912a4af3b2a', '4', '65912a506d90f', NULL, '65912a555c8a6', '4', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1718, NULL, '2023-12-31 08:44:44', '2024-01-01 10:08:51', 'REVIEWED_AND_ASSESSED'),
(11, '40f8f828-8365-4a32-89b5-43468a93b15a', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202401010011', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'others', 'Other Transport', NULL, NULL, NULL, 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 4, 10, 287, 'Some address\nOther place', NULL, '01888888888', 'chairman@dao.org', 'Test', 'টেস্ট', 'Chairman', 'চেয়ারম্যান', 0, 3, 21, 5158, 'Road #2,\nFactory #3,\nUniverse', 'বাংলা ঠিকানা', NULL, 1, NULL, NULL, NULL, NULL, 'Leader Ladder', '65465465464646464', '2024-01-01', NULL, 4, 10, 287, '+11111111111', NULL, '01934534534', 's@s.com', NULL, NULL, 15, 'Some Address', NULL, 'Doloribus molestiae', '181', '450', 'Magna dolore aut con', 'asd asd \nasdasd', NULL, 'Quamar Britt', 'Quidem qui numquam a', NULL, 2, NULL, NULL, NULL, NULL, 'Some Details', NULL, 'Other Details', '65924bf24248a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Other Details 10', '65924c1ff2c8f', 'Another Details 11', '65924c23392d6', NULL, '65924c3039fa3', 'Specification 13', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 702, NULL, '2024-01-01 05:19:36', '2024-01-01 05:24:51', 'SUBMITTED'),
(12, '4cccccec-0236-4615-bb89-9637c1462bfc', 7, NULL, 133, 'SYSTEM', 'NEW', 8, 'D-202401010012', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radioactive_waste', NULL, 'air', NULL, NULL, NULL, NULL, 'Nill', 'নীল', '5432789666', 5, 12, 402, 'Nill', NULL, '01765347766', NULL, 'Australian National University', 'অস্ট্রেলিয়ান জাতীয় বিশ্ববিদ্যালয়', 'Nill', 'নীল', 0, 5, 12, 402, 'নীল', 'নীল', NULL, 1, NULL, NULL, NULL, NULL, 'Hridoy', '4356783456', '1989-11-15', NULL, 2, 18, 151, NULL, NULL, '01768945678', NULL, NULL, NULL, 16, 'Nill', NULL, 'Nill', 'Nill', '09', '6', 'Nill', NULL, 'Nill', 'Nill', NULL, NULL, NULL, NULL, NULL, NULL, 'Nill', NULL, 'Nill', '659294521158f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nill', 'Nill', '659294af1146d', 'Nill', '659294a20d923', 'Nill', '6592949d50377', 'Nill', '65929497967ea', 'Nill', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1758, 1758, NULL, '2024-01-01 10:28:12', '2024-01-01 10:33:42', 'SUBMITTED'),
(17, 'e256e541-8f94-48a1-b89b-c7ceaae323a4', 7, NULL, 133, 'SYSTEM', 'RENEW', 8, 'D-202401010017', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'e', 'জস', NULL, 5, 12, 397, 'r', NULL, '01780940522', 'hossainnilufar12@gmail.com', 'r', 'য', '্দস্ফ', 'দস', 0, 5, 12, 396, 'ঝহু', 'এ', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0.00, 6000.00, 0.00, 975.00, 500.00, 7475.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 2, '2026-01-01', 1668, 1668, NULL, '2024-01-01 11:32:36', '2024-01-01 11:33:20', 'SUBMITTED'),
(18, '7991792b-dcd6-4785-b35e-820c113b05d3', 7, NULL, 133, 'SYSTEM', 'RENEW_AMENDMENT', 8, 'D-202401010018', NULL, NULL, 3, '[\"INSTITUTE_NAME\"]', '6592b6f13b17f', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', NULL, 3, 21, 5173, '1/2, Mirpur, DHaka', NULL, '01011111111', 'abc@yopmail.com', 'License BAERA IDSDP2', 'লাইসেন্স', 'RCO BAERA', 'আরসিও', 0, 3, 21, 5173, '1/2, Mirpur, DHaka', '১/২, মিরপুর, ঢাকা', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL, 0.00, 9000.00, 7500.00, 3000.00, 3500.00, 23000.00, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 3, '2027-01-01', 1735, 1735, NULL, '2024-01-01 12:58:27', '2024-01-01 12:59:21', 'SUBMITTED'),
(19, '5333905c-af96-44bb-ba13-bc06e1707c88', 7, NULL, 133, 'SYSTEM', 'NEW', 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nuclear_waste', NULL, 'rail', NULL, NULL, NULL, NULL, 'Shh', 'এউএ', '1838382828', 5, 12, 396, 'Whjs sjsjs sjwb', NULL, '01828372772', NULL, 'ABC Hospital', 'এবিসি হসপিটাল', 'Sjshxb', 'ওইএউও', 0, 5, 12, 396, 'djd djdj', 'সজদজ', NULL, 1, NULL, NULL, NULL, NULL, 'shs', '2828282828', '1990-01-31', 'Dns sjejs wjwj', 5, 12, 396, NULL, NULL, '01733837373', NULL, NULL, NULL, 21, 'Xbxnzn', NULL, 'Shsh', 'Snsn', 'Sjsk', '228', 'Sjsj', NULL, 'Sjab', 'Snsj', NULL, NULL, NULL, NULL, NULL, NULL, 'Snzjzj', NULL, 'Jsjzb', '6592cbd12f044', 'Bzn', 'Nsns', 'Nsk', 'Djsj', '8', 'Sns', 5, 12, 396, NULL, 'Nsjs sjsjs wj', NULL, NULL, 'Djs', NULL, NULL, 'Zndn', '6592cce47341b', 'Jdnxn', '6592ccba5aae1', 'Nxnz', '6592ccc1c405b', 'Sbdj', NULL, 1, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1761, 1761, NULL, '2024-01-01 14:19:10', '2024-01-01 14:33:32', 'DRAFT'),
(20, '4f6acd60-d510-46e4-bf5d-7cbf73f61cb7', 7, NULL, 133, 'SYSTEM', 'NEW', 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'radioactive_material', NULL, 'air', NULL, NULL, NULL, NULL, 'Licence D New2', 'ঘ নতুন', '1212122222', 3, 21, 5171, '2ew2ds2', NULL, '01444443234', 'abc@yopmail.com', 'License BAERA IDSDP', 'লাইসেন্স', 'RCO', 'আরসিও', 0, 3, 21, 5173, '1/2, Mirpur', 'আরসি', NULL, 1, NULL, NULL, NULL, NULL, 'Licence D new2', '1111111211', '1996-05-15', '2e2', 3, 21, 5171, NULL, NULL, '01010111111', NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1735, 1735, NULL, '2024-01-02 03:17:58', '2024-01-02 03:18:38', 'DRAFT');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_caretaker_experiences`
--

CREATE TABLE `license_s5zyr2p6_class_d_caretaker_experiences` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `caretaker_exp_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_institute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_tenure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_experience` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_exp_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_d_caretaker_experiences`
--

INSERT INTO `license_s5zyr2p6_class_d_caretaker_experiences` (`id`, `uuid`, `application_id`, `caretaker_exp_name`, `caretaker_exp_designation`, `caretaker_exp_institute`, `caretaker_exp_tenure`, `caretaker_exp_experience`, `caretaker_exp_attachment`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, '2ed66dd8-9b6b-4c60-be19-89e5c853396e', 19, 'Dnd', 'Nej', 'Jej', 'Ksk', '7', '6592cd2d41fa5', 1761, 1761, NULL, '2024-01-01 14:33:22', '2024-01-01 14:33:22', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_caretaker_trainings`
--

CREATE TABLE `license_s5zyr2p6_class_d_caretaker_trainings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `caretaker_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_qualification` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caretaker_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_d_caretaker_trainings`
--

INSERT INTO `license_s5zyr2p6_class_d_caretaker_trainings` (`id`, `uuid`, `application_id`, `caretaker_name`, `caretaker_designation`, `caretaker_qualification`, `caretaker_attachment`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, '0ed5d1b9-2727-4a3f-a0a4-8f8b2b94922a', 1, 's', 's', 's', '658138fc11d91', 1668, 1668, NULL, '2023-12-19 06:32:31', '2023-12-19 06:32:31', 0, 1),
(2, 'de713d9f-1997-4e63-a304-08ac1dbcda9b', 19, 'Znnsn', 'Jej', 'Sjdk', '6592cd103f35f', 1761, 1761, NULL, '2024-01-01 14:33:22', '2024-01-01 14:33:22', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_extra_attachmets`
--

CREATE TABLE `license_s5zyr2p6_class_d_extra_attachmets` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_attachment_type_mandatory` tinyint(1) DEFAULT '0',
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_measuring_equipments`
--

CREATE TABLE `license_s5zyr2p6_class_d_measuring_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `equipment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_supplier` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `equipment_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identifiable_radiation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `circumference` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_d_measuring_equipments`
--

INSERT INTO `license_s5zyr2p6_class_d_measuring_equipments` (`id`, `uuid`, `application_id`, `equipment_type`, `equipment_supplier`, `equipment_model`, `equipment_number`, `identifiable_radiation`, `circumference`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, '61bd7663-36e1-4259-993a-f716464dd45e', 5, 'RadioActive', 'CoCo', '2343', '2', 'w', NULL, 1668, 1668, NULL, '2023-12-20 03:46:56', '2023-12-20 03:46:56', 0, 1),
(2, 'f61deeec-5ae3-465d-9b54-e66b41291734', 12, 'Nill', 'Nill', '66', '456', 'Nill', NULL, 1758, 1758, NULL, '2024-01-01 10:31:18', '2024-01-01 10:31:18', 0, 1),
(3, '83a30af0-5754-4614-bfc2-c461dcba2497', 12, 'Nill', 'Nill', '66', '456', 'Nill', NULL, 1758, 1758, NULL, '2024-01-01 10:31:18', '2024-01-01 10:31:18', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_d_personnel_monitorings`
--

CREATE TABLE `license_s5zyr2p6_class_d_personnel_monitorings` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `monitoring_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examining_agency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `examining_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_d_personnel_monitorings`
--

INSERT INTO `license_s5zyr2p6_class_d_personnel_monitorings` (`id`, `uuid`, `application_id`, `monitoring_type`, `supplier_name`, `examining_agency`, `examining_count`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, 'aed25645-22f9-4a59-85c5-f5f5478f91cb', 1, 'ew', 'ew', 'ew', NULL, 1668, 1668, NULL, '2023-12-19 06:32:16', '2023-12-19 06:32:16', 0, 1),
(2, 'd1b85f9a-0454-4ac0-9840-6852c144fb09', 5, 'ew', 'ew', 'ew', NULL, 1668, 1668, NULL, '2023-12-20 03:47:33', '2023-12-20 03:47:33', 0, 1),
(3, '87537275-b8ee-4ad3-a83c-d3bda76305a1', 6, 'Equipment Type', 'Equipment Type', 'Equipment Type', NULL, 702, 702, NULL, '2023-12-20 09:09:32', '2023-12-20 09:09:32', 0, 1),
(4, 'dc632912-9e48-4093-b2e2-4845e9cbd515', 7, 'Equipment Type', 'Equipment Type', 'Equipment Type', NULL, 702, 702, NULL, '2023-12-28 11:05:33', '2023-12-28 11:05:33', 0, 1),
(5, '88aad859-0196-455f-878c-21fd9e17b29c', 10, 'Thermoluminescent Dosimeter (TLD)', 'RADiation Company', 'RED', NULL, 1668, 1668, NULL, '2023-12-31 08:46:15', '2023-12-31 08:46:15', 0, 1),
(6, 'd762ccce-02de-445f-8aca-de8a4a6af499', 11, 'Film Badge', 'Supplier X', 'Agency XYZ', NULL, 702, 702, NULL, '2024-01-01 05:22:57', '2024-01-01 05:22:57', 0, 1),
(7, 'f29f1238-c184-4a35-888a-4b8a89bce5d8', 12, 'Nill', 'Nill', 'Nill', NULL, 1758, 1758, NULL, '2024-01-01 10:32:18', '2024-01-01 10:32:18', 0, 1),
(8, 'b21d453a-7e23-4869-bedd-7077ea477f32', 19, 'Snn', 'Jwj', 'Jwj', 'Djd', 1761, 1761, NULL, '2024-01-01 14:32:08', '2024-01-01 14:32:08', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_e_applications`
--

CREATE TABLE `license_s5zyr2p6_class_e_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_group_id` bigint UNSIGNED DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SYSTEM',
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amendment_type` json DEFAULT NULL,
  `amendment_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `activity_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_export_material` json DEFAULT NULL,
  `applicant_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_division_id` bigint UNSIGNED DEFAULT NULL,
  `institute_district_id` bigint UNSIGNED DEFAULT NULL,
  `institute_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `institute_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_designated_person` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_dob` date DEFAULT NULL,
  `authorized_person_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_person_division_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_person_district_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_person_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `authorized_person_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `class_d_application_id` bigint UNSIGNED DEFAULT NULL,
  `license_fee` decimal(15,2) DEFAULT NULL,
  `renewal_fee` decimal(15,2) DEFAULT NULL,
  `amendment_fee` decimal(15,2) DEFAULT NULL,
  `vat` decimal(8,2) NOT NULL DEFAULT '0.00',
  `surcharge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `authorized_person_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_export_country_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supplier_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_transportation_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_packaging_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_container_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plutonium_percentage` decimal(10,2) DEFAULT NULL,
  `nuclear_material_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uranium_plutonium_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plutonium_amount_in_uranium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atomic_transportation_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `atomic_packaging_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_damage_economic_security` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `proposed_product_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `authorized_entity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `submission_date` date DEFAULT NULL,
  `original_submission_date` date DEFAULT NULL,
  `original_license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_issue_renew_date` date DEFAULT NULL,
  `legacy_expiry_date` date DEFAULT NULL,
  `renewal_years` int DEFAULT NULL,
  `renewal_year_upto` date DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_technical_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_e_applications`
--

INSERT INTO `license_s5zyr2p6_class_e_applications` (`id`, `uuid`, `organization_id`, `service_mapping_id`, `current_active_step`, `tracking_number`, `parent_group_id`, `docketing_number`, `application_medium`, `application_type`, `amendment_type`, `amendment_attachment`, `previous_application_id`, `activity_purpose`, `import_export_material`, `applicant_name`, `applicant_nid`, `applicant_division_id`, `applicant_district_id`, `applicant_upazilla_id`, `applicant_address`, `applicant_mobile_number`, `applicant_email`, `applicant_telephone`, `applicant_fax`, `institute_name`, `applicant_designation`, `institute_address`, `institute_division_id`, `institute_district_id`, `institute_upazilla_id`, `institute_telephone`, `institute_fax`, `is_designated_person`, `authorized_person_name`, `authorized_person_nid`, `authorized_person_dob`, `authorized_person_designation`, `authorized_person_address`, `authorized_person_division_id`, `authorized_person_district_id`, `authorized_person_upazilla_id`, `authorized_person_mobile`, `authorized_person_email`, `authorized_person_telephone`, `authorized_person_fax`, `rco_application_id`, `class_d_application_id`, `license_fee`, `renewal_fee`, `amendment_fee`, `vat`, `surcharge`, `total_fee`, `authorized_person_signature`, `import_export_country_id`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_email`, `radioactive_transportation_mode`, `radioactive_packaging_type`, `radioactive_container_number`, `plutonium_percentage`, `nuclear_material_amount`, `uranium_plutonium_amount`, `plutonium_amount_in_uranium`, `atomic_transportation_mode`, `atomic_packaging_mode`, `nuclear_damage_economic_security`, `proposed_product_details`, `authorized_entity`, `is_agreed`, `is_checked`, `submission_date`, `original_submission_date`, `original_license_attachment`, `legacy_license_permit_number`, `legacy_issue_renew_date`, `legacy_expiry_date`, `renewal_years`, `renewal_year_upto`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`, `manufacturer_technical_details`) VALUES
(1, 'e1e46027-fdd6-45b0-9561-dba31eb73956', 7, 37, 5, 'E-202312100001', 1, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\"]', 'Labiba Akhter', '9028349731', 4, 15, 298, NULL, '97398486326', 'abc@yopmail.com', NULL, NULL, 'Mr.Abdullah', 'Executive', 's', 5, 12, 396, NULL, NULL, 'YES', NULL, NULL, '2023-12-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5147, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 674, NULL, '2023-12-10 09:10:30', '2023-12-12 03:35:35', 'SENT_BACK', NULL),
(2, '22d26119-f519-4885-b7c2-a2bdd0218c92', 7, 37, 5, 'E-202312120002', 2, 'BAERA- DHA- 2023-C017 - changed', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\"]', 'ri', '2324265675', 4, 15, 298, 'e', '01286837264', 'absh@yopmail.com', NULL, NULL, 'abc', 'fd', 'e', 5, 12, 396, NULL, NULL, 'YES', NULL, NULL, '2005-12-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5147, 'nuej', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 678, NULL, '2023-12-12 07:23:49', '2023-12-13 07:48:23', 'APPROVED', NULL),
(3, 'dbbbf20c-4b1b-4aa7-8fca-3aeab90f843f', 7, 37, 5, 'E-202312190003', NULL, 'BAERA- DHA- 2023-C017 - changed', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\"]', 'Testing', '2324265675', 4, 15, 298, 'd', '01992933343', 'abc@yopmail.com', NULL, NULL, 'abc', 'fd', 'Mirpur', 4, 10, 289, NULL, NULL, 'YES', NULL, NULL, '2003-01-12', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, 'Nilufar Hossain', '13/14,Ayesha centre,Mirpur13,BRTA ,Dhaka1206,Bangladesh', '01780940522', 'hossainnilufar12@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1731, NULL, '2023-12-19 06:26:41', '2023-12-19 09:56:20', 'DRAFT_APPROVED', NULL),
(4, 'dd4c8d51-b3ca-4ea4-8292-a1b648f673d1', 7, 37, 2, 'E-202312190004', NULL, NULL, 'MANUAL', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\", \"nuclear_material\"]', 'g', NULL, 5, 11, 393, 'f', '09898978777', 'abc@gmial.com', NULL, NULL, 'Enlisted E for Permit', 'fre', 'd', 5, 12, 397, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2023-12-19', '2023-12-19', '658172f41c947', '223244/2025', '2019-12-04', '2025-12-20', NULL, NULL, 1668, 1668, NULL, '2023-12-19 10:40:48', '2023-12-19 10:40:49', 'SUBMITTED', NULL),
(5, 'beb40d90-c0a4-4294-b1ee-d30b7b613f1b', 7, 37, 2, 'E-202312190005', NULL, 'BAER-5-105/2021', 'MANUAL', 'NEW', NULL, NULL, NULL, 'both', '[\"other_equipments\"]', 'License BAERA IDSDP', NULL, 3, 21, 5173, '1/2, Mirpur', '01010101111', 'ana@hdhd.com', NULL, NULL, 'License BAERA IDSDP', 'RCO', '1/1, mirpur', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2023-12-19', '2020-09-17', '65818ed3d0e43', '5/2021-2022(R-1/2022-2023)/105', '2020-12-30', '2022-12-31', NULL, NULL, 1735, 1700, NULL, '2023-12-19 12:40:54', '2023-12-19 12:42:48', 'APPROVED', NULL),
(6, 'ff626431-e912-43fe-b450-d07c10c86b7d', 7, 37, 5, 'E-202312190006', NULL, 'BAER-DHA-5(1)/2023', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"other_equipments\"]', 'License E New', '0101101010', 3, 21, 5173, '1/2, Mirpur', '01444443234', 'abc@yopmail.com', NULL, NULL, 'License BAERA IDSDP', 'RCO', '1/2, Mirpur', 3, 21, 5173, NULL, NULL, 'YES', NULL, NULL, '2000-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1735, 1729, NULL, '2023-12-19 15:04:42', '2023-12-19 15:17:19', 'APPROVED', NULL),
(7, '836211c2-4316-4950-9b57-a1bdc7ed8aea', 7, 37, 5, 'E-202312200007', NULL, 'this is my docket number', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\", \"other_equipments\"]', 'Mohsin Hossain', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'Nulla labore eligend', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, NULL, NULL, 'YES', NULL, NULL, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1729, NULL, '2023-12-20 10:17:23', '2023-12-20 10:44:25', 'APPROVED', NULL),
(8, 'cc573572-f084-4700-a9da-b4fb9f950418', 7, 37, 5, 'E-202312280008', NULL, 'this is my docket number', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\", \"other_equipments\"]', 'Mohsin Hossain', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'Nulla labore eligend', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, NULL, NULL, 'YES', NULL, NULL, '2023-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1699, NULL, '2023-12-28 06:45:08', '2023-12-31 06:08:44', 'PAID', NULL),
(15, 'fe8b0428-3e54-403a-bbf0-69a7d07a52b1', 7, 37, 2, 'E-202312300015', NULL, 'BAER-DHA-5(1)/2023', 'MANUAL', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\", \"other_equipments\"]', 'License E 2', NULL, 3, 21, 5173, '1/2, Mirpur', '01444443234', 'abc@yopmail.com', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', '1/2, Mirpur', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2023-12-30', '2021-12-29', '6590071ef268b', 'BAER-5-106/2021', '2021-12-03', '2023-12-31', NULL, NULL, 1735, 1700, NULL, '2023-12-30 12:07:26', '2023-12-30 13:40:36', 'APPROVED', NULL),
(16, '6ba8dbb5-588d-440d-b989-496c243122e4', 7, 37, 2, 'E-202312300016', 7, 'BAER-DHA-5 (245)/2022', 'MANUAL', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\", \"other_equipments\"]', 'Masum Reza', NULL, 3, 21, 5173, '12, Kallanpur, Dhaka-1215', '01545645345', 'permittest@yopmail.com', NULL, NULL, 'IBN Sina Hospital', 'Manager (Admin)', '12, Kallanpur, Dhaka-1215', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2023-12-30', '2021-12-14', '65900f803a6ad', '134/2022', '2022-12-25', '2024-06-30', NULL, NULL, 1746, 1700, NULL, '2023-12-30 12:39:48', '2023-12-30 14:08:20', 'APPROVED', NULL),
(73, '85604c7d-52ad-4efb-82e3-282f2f7bfde5', 7, 37, 5, 'E-202312310073', NULL, 'BAER-DHA-101/2020', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\"]', 'Mohsin Hossain', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'Nostrum cillum nesci', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, NULL, NULL, 'YES', NULL, NULL, '2023-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 6, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 1699, NULL, '2023-12-31 04:18:12', '2023-12-31 09:20:38', 'FORWARDED_FOR_EVALUATION', NULL),
(74, '495aa37e-7260-4310-9579-bf31fedd6557', 7, 37, 2, 'E-202312310074', NULL, 'BAER-5(648/2019)', 'MANUAL', 'NEW', NULL, NULL, NULL, 'import', '[\"other_equipments\"]', 'Farzana', NULL, 3, 21, 5173, 'shewrapara', '01762102170', 'waliulislammoin@gmail.com', NULL, NULL, 'Waliul Islam Moin', 'MD', 'shewrapara', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2023-12-31', '2023-12-30', '6590f3915dcab', '4597/2018(R-03/2021-2022)/266', '2023-12-31', '2023-12-31', NULL, NULL, 1745, 1699, NULL, '2023-12-31 04:54:39', '2024-01-01 13:17:49', 'APPROVED', NULL),
(75, '25c72542-e8ef-4981-b2b6-b82057e553a6', 7, 37, 2, NULL, NULL, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\"]', 'Mohsin Hossain', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'Nostrum cillum nesci', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 702, NULL, '2023-12-31 05:00:10', '2023-12-31 05:00:10', 'DRAFT', NULL),
(76, '9c517578-0c05-4be8-b7b0-f539ca334534', 7, 37, 5, 'E-202312310076', 8, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\"]', 'Labiba Akhter', '9028349731', 4, 16, 304, 'e', '97398486326', 'abc@yopmail.com', NULL, NULL, 'LAB Centre', 'Executive', '4', 4, 16, 305, NULL, NULL, 'YES', NULL, NULL, '1991-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 5, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5147, 'SECkewschina', 'e', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 1, '2023-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1700, NULL, '2023-12-31 08:37:41', '2024-01-01 10:51:18', 'SUBMITTED', NULL),
(77, 'f2052d2e-32e2-43c2-8a7e-43b6abf17c35', 7, 37, 5, 'E-202312310077', NULL, 'BAERA- DHA- 2023-C017 - changed', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\", \"nuclear_material\"]', 'Labiba Akhter', '9028349731', 5, 12, 397, NULL, '97398486326', 'abc@yopmail.com', NULL, NULL, 'LAB Centre', 'Executive', 'r', 4, 15, 298, NULL, NULL, 'YES', NULL, NULL, '2003-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2023-12-31', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1731, NULL, '2023-12-31 08:41:00', '2024-01-01 04:52:43', 'APPROVED', NULL),
(78, '14ee5520-3a03-4e2d-8ecb-c12f5dc250e3', 7, 37, 5, 'E-202401010078', 13, 'BAER-DHA-101/2020', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\", \"nuclear_material\"]', 'Mohsin Hossain', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'Owner', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, NULL, NULL, 'YES', NULL, NULL, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 11, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 702, 702, NULL, '2024-01-01 04:55:01', '2024-01-01 13:47:23', 'PAID', NULL),
(79, 'acd01a2e-7cb7-4e23-aa39-b8e044291632', 7, 37, 2, NULL, NULL, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\"]', 'Hridoy', '1882345987', 3, 21, 5171, NULL, '01719345687', 'hridoy@yopmail.com', NULL, NULL, 'Australian National University', 'Nill', 'Nill', 3, 21, 5171, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1758, 1758, '2024-01-01 06:22:50', '2024-01-01 05:54:54', '2024-01-01 06:22:50', 'DRAFT', NULL),
(80, '93a58a50-105c-4937-8241-ebd33ea7876e', 7, 37, 5, 'E-202401010080', NULL, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\"]', 'Hridoy', '1882345987', 3, 21, 5171, NULL, '01719345687', 'hridoy@yopmail.com', NULL, NULL, 'Australian National University', 'অস্ট্রেলিয়ান জাতীয় বিশ্ববিদ্যালয়', 'Nill', 3, 21, 5171, NULL, NULL, 'YES', NULL, NULL, '1996-08-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5143, 'Hridoy', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Nill', 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1758, 1758, NULL, '2024-01-01 06:00:05', '2024-01-01 07:03:02', 'SUBMITTED', NULL),
(81, '10b31d7f-f365-4f4e-8500-12c7ddcb140c', 7, 37, 5, 'E-202401020081', 14, 'DHK-157', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"other_equipments\"]', 'Md. Shayan Kadir', '9658458756', 3, 21, 5171, 'চ-20, মহাখালী --', '01789632541', 'kadir35@yopmail.com', NULL, NULL, 'Mohammadi Group', 'Managing Director', 'চ-20, মহাখালী', 3, 21, 5171, NULL, NULL, 'YES', NULL, NULL, '1996-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'প্রস্তাবিত দ্রব্যের আমদানী বা রপ্তানীর জন্য চাহিত অতিরিক্ত তথ্যাদি', 'PERSONALLY', 1, 0, '2024-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1759, 1731, NULL, '2024-01-01 06:30:13', '2024-01-02 04:29:23', 'APPROVED', 'প্রস্তুতকারীর কারিগরি বিবরণ (Technical Specifications)'),
(82, '05203445-e5df-4895-a8b0-0df731d701df', 7, 37, 5, 'E-202401010082', 10, 'BAER DHA-5(387)/2023', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\", \"other_equipments\"]', 'Md. Lutfur Rahman', '5764543676653', 3, 21, 5160, '24/A, Dhanmondi, Dhaka-1206', '01842544605', 'permittest4@yopmail.com', '43578754', '56798547', 'Lab Aid Hospital Limited, Dhaka', 'Manager', '24/A, Dhanmondi, Dhaka-1206', 3, 21, 5160, '01842544605', '7347987543', 'YES', NULL, NULL, '1992-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5167, 'GAmH and Simens Healthcare', 'Germany', '3546457657', 'hdjkhjghjd@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1747, 1729, NULL, '2024-01-01 07:51:14', '2024-01-01 13:36:44', 'APPROVED', NULL),
(83, 'beb77308-2424-407e-8bf4-05c5f0fcd5e4', 7, 37, 5, 'E-202401010083', NULL, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\"]', 'Hridoy', '1882345987', 8, 47, 537, NULL, '01719345687', 'hridoy@yopmail.com', NULL, NULL, 'Australian National University', 'অস্ট্রেলিয়ান জাতীয় বিশ্ববিদ্যালয়', 'Nill', 8, 47, 539, NULL, NULL, 'YES', NULL, NULL, '1993-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1758, 1758, NULL, '2024-01-01 10:41:41', '2024-01-01 10:43:43', 'SUBMITTED', NULL),
(84, '793cbd59-60e7-4272-9d4d-a59819825550', 7, 37, 2, 'E-202401010084', NULL, NULL, 'MANUAL', 'NEW', NULL, NULL, NULL, 'import', '[\"radioactive_material\"]', 'Baera_DHAK-', NULL, 5, 11, 392, '3', '32143546464', 'abc@yopmail.com', NULL, NULL, 'sd', 'dss', '3', 5, 13, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 5, NULL, NULL, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2024-01-01', '2019-01-14', '65929c12319d3', '2', '2020-01-30', '2026-01-28', NULL, NULL, 1668, 1668, NULL, '2024-01-01 11:04:41', '2024-01-01 11:04:42', 'SUBMITTED', NULL),
(85, '11235cb2-b4cf-46fb-a3d2-db2fd6f200ea', 7, 37, 5, NULL, NULL, NULL, 'SYSTEM', 'AMENDMENT', '[\"APPLICANT_NAME\", \"INSTITUTE_NAME\"]', NULL, 77, 'both', '[\"radioactive_material\", \"nuclear_material\"]', 'Labiba Akhter', '9028349731', 5, 12, 397, NULL, '97398486326', 'abc@yopmail.com', NULL, NULL, 'LAB Centre', 'Executive', 'r', 4, 15, 298, NULL, NULL, 'YES', NULL, NULL, '2003-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, 0.00, 0.00, 7500.00, 1125.00, 0.00, 8625.00, NULL, 5143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1668, NULL, '2024-01-01 12:15:23', '2024-01-01 12:15:23', 'DRAFT', NULL),
(86, '3da72fc3-1f6b-4c80-a38e-da7e98ccba1a', 7, 37, 5, NULL, NULL, NULL, 'SYSTEM', 'AMENDMENT', '[\"APPLICANT_NAME\"]', NULL, 77, 'both', '[\"radioactive_material\", \"nuclear_material\"]', 'Labiba Akhter', '9028349731', 5, 12, 397, NULL, '97398486326', 'abc@yopmail.com', NULL, NULL, 'LAB Centre', 'Executive', 'r', 4, 15, 298, NULL, NULL, 'YES', NULL, NULL, '2003-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, 0.00, 0.00, 7500.00, 1125.00, 0.00, 8625.00, NULL, 5143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, 1668, NULL, '2024-01-01 12:17:34', '2024-01-01 12:17:34', 'DRAFT', NULL),
(87, 'b21c1844-b6ec-4825-a914-acf032aca5d3', 7, 37, 5, 'E-202401010087', NULL, NULL, 'SYSTEM', 'AMENDMENT', '[\"APPLICANT_NAME\"]', NULL, 77, 'both', '[\"radioactive_material\", \"nuclear_material\"]', 'minu', '9028349731', 5, 12, 397, NULL, '97398486326', 'abc@yopmail.com', NULL, NULL, 'LAB Centre', 'Executive', 'r', 4, 15, 298, NULL, NULL, 'YES', NULL, NULL, '2003-12-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 5, 0.00, 0.00, 7500.00, 1125.00, 0.00, 8625.00, NULL, 5143, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1668, NULL, NULL, '2024-01-01 12:18:49', '2024-01-01 12:19:23', 'SUBMITTED', NULL),
(88, 'f68a7d5a-a617-4a5f-be75-dcb2a3094a45', 7, 37, 5, 'E-202401010088', NULL, 'BAER-70', 'SYSTEM', 'NEW', NULL, NULL, NULL, 'import', '[\"other_equipments\"]', 'Farzana', '2300000000', 3, 21, 5173, 'Shewrapara, Mirpur', '01912400449', 'waliulislammoin@gmail.com', NULL, NULL, 'Sheba D C', 'RCO', 'Shewrapara, Mirpur', 3, 21, 5173, NULL, NULL, 'YES', NULL, NULL, '2000-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PERSONALLY', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1745, 1699, NULL, '2024-01-01 12:47:06', '2024-01-01 13:20:54', 'PAID', NULL),
(89, '88560964-aae6-4559-bb78-c2bfb89b61ac', 7, 37, 5, 'E-202401010089', NULL, NULL, 'SYSTEM', 'RENEW', NULL, NULL, 15, 'both', '[\"radioactive_material\", \"other_equipments\"]', 'License E 2', NULL, 3, 21, 5173, '1/2, Mirpur', '01444443234', 'abc@yopmail.com', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', '1/2, Mirpur', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, 0.00, 75000.00, 0.00, 11250.00, 0.00, 86250.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'on_behalf_of_organization', 1, 0, '2024-01-01', NULL, NULL, NULL, NULL, NULL, 5, '2028-12-30', 1735, 1735, NULL, '2024-01-01 13:01:10', '2024-01-01 13:01:51', 'SUBMITTED', NULL),
(90, 'b54b8aec-0722-4e99-997b-c04122803ff0', 7, 37, 5, NULL, NULL, NULL, 'SYSTEM', 'NEW', NULL, NULL, NULL, 'both', '[\"radioactive_material\"]', 'Sjdb', '3265739965', 5, 12, 396, 'Dns sjsj', '01737473773', 'rafjddj@gmail.com', NULL, NULL, 'ABC Hospital', 'Xb', 'Fnd djsjs', 5, 12, 396, NULL, NULL, 'YES', NULL, NULL, '1999-02-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, NULL, 15000.00, 0.00, 0.00, 2250.00, 0.00, 17250.00, NULL, 5169, 'Dndbd', 'Djdb', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Djdhd', 'PERSONALLY', 1, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1761, 1761, NULL, '2024-01-01 14:04:47', '2024-01-01 14:06:53', 'DRAFT', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
--

CREATE TABLE `license_s5zyr2p6_class_e_license_irradiation_apparatuses` (
  `id` bigint UNSIGNED NOT NULL,
  `class_e_application_id` bigint UNSIGNED DEFAULT NULL,
  `type_and_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maximum_voltage` int DEFAULT NULL,
  `maximum_current` int DEFAULT NULL,
  `maximum_power` int DEFAULT NULL,
  `control_panel_serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tube_head_serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
--

INSERT INTO `license_s5zyr2p6_class_e_license_irradiation_apparatuses` (`id`, `class_e_application_id`, `type_and_model`, `maximum_voltage`, `maximum_current`, `maximum_power`, `control_panel_serial_number`, `tube_head_serial_number`, `supplier_name`, `supplier_address`, `created_at`, `updated_at`) VALUES
(1, 6, 'Fixed X-Ray Rotanode (3)', 125, 500, 50, 'E7239X', '22H0661', 'GE Co', NULL, '2023-12-19 15:08:06', '2023-12-19 15:08:06'),
(2, 6, 'C-Arm (4)', 100, 10, 20, '6Hv2111', 'H72j22', 'GE Co', NULL, '2023-12-19 15:08:06', '2023-12-19 15:08:06'),
(3, 81, 'Test -1', 5, 2, 4, '989898', '987987', 'Singara Ltd.', 'Dhaka', '2024-01-01 06:57:49', '2024-01-01 06:57:49'),
(4, 88, 'TR 200B', 120, 200, NULL, '1500000000', '230900000', 'Trup international', 'china', '2024-01-01 12:55:47', '2024-01-01 12:55:47');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_e_license_paper_attachments`
--

CREATE TABLE `license_s5zyr2p6_class_e_license_paper_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_e_license_application_id` bigint UNSIGNED NOT NULL,
  `is_attachment_type_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_e_license_paper_attachments`
--

INSERT INTO `license_s5zyr2p6_class_e_license_paper_attachments` (`id`, `uuid`, `class_e_license_application_id`, `is_attachment_type_mandatory`, `attachment_type_id`, `attachment_name`, `remarks`, `attachment_file`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, '7a01b5e6-a518-45b3-9e2d-7a440d81d912', 6, 0, 58, 'Type Apporval Certificate', NULL, '6581b1e05a336', 1735, 1735, NULL, '2023-12-19 15:09:13', '2023-12-19 15:09:13', 0, 1),
(2, 'a4c8a3e4-d5f9-4619-8233-a844c3b284a8', 6, 0, 57, 'ISO/IEC Certificate', NULL, '6581b1e61df67', 1735, 1735, NULL, '2023-12-19 15:09:13', '2023-12-19 15:09:13', 0, 1),
(3, '4f74007f-64a7-4581-831a-865790664a9f', 6, 0, 59, 'Radioactive Material - Sealed Radioactive Source Certificate', NULL, '6581b1ea71437', 1735, 1735, NULL, '2023-12-19 15:09:13', '2023-12-19 15:09:13', 0, 1),
(4, '04a42b2a-5585-4752-a3d7-cb0b02e65a84', 6, 0, 56, 'Printed Application with necessary Signatures', NULL, '6581b202ac512', 1735, 1735, NULL, '2023-12-19 15:09:13', '2023-12-19 15:09:13', 0, 1),
(5, '2dbbd33f-376c-48e1-ade8-83a8c63dd265', 81, 0, 58, 'Type Apporval Certificate', NULL, '6593656117589', 1759, 1759, NULL, '2024-01-02 01:23:06', '2024-01-02 01:23:06', 0, 1),
(6, 'd61f5294-a0bd-4cf8-9a31-0dab01c5eddd', 81, 0, 57, 'ISO/IEC Certificate', NULL, '65936567cae39', 1759, 1759, NULL, '2024-01-02 01:23:06', '2024-01-02 01:23:06', 0, 1),
(7, 'b8990757-a5d4-4005-b9a6-87fa5c803929', 81, 0, 59, 'Radioactive Material - Sealed Radioactive Source Certificate', NULL, '6593656dbd91b', 1759, 1759, NULL, '2024-01-02 01:23:06', '2024-01-02 01:23:06', 0, 1),
(8, 'f94367f6-d8de-4655-a441-724c3d754597', 81, 0, 56, 'Printed Application with necessary Signatures', NULL, '65936574f05f4', 1759, 1759, NULL, '2024-01-02 01:23:06', '2024-01-02 01:23:06', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_class_e_license_radioactive_material_infos`
--

CREATE TABLE `license_s5zyr2p6_class_e_license_radioactive_material_infos` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_e_license_application_id` bigint UNSIGNED NOT NULL,
  `components_mass_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chemical_physical_composition` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsealed_date` date DEFAULT NULL,
  `radiation_source_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bound_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bound_source_unit_id` bigint UNSIGNED DEFAULT NULL,
  `open_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_source_unit_id` bigint UNSIGNED DEFAULT NULL,
  `sealed_date` date DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_class_e_license_radioactive_material_infos`
--

INSERT INTO `license_s5zyr2p6_class_e_license_radioactive_material_infos` (`id`, `uuid`, `class_e_license_application_id`, `components_mass_number`, `chemical_physical_composition`, `manufacturer_name`, `model_no`, `unsealed_date`, `radiation_source_type`, `bound_source`, `bound_source_unit_id`, `open_source`, `open_source_unit_id`, `sealed_date`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'e50cf415-f4ee-49d5-9979-1565cd5ec8ae', 8, '23', '12', NULL, NULL, NULL, 'SEALED', 'sdcsd', 646, NULL, NULL, '2023-12-28', NULL, '2023-12-28 06:45:42', '2023-12-28 06:45:42');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_examples`
--

CREATE TABLE `license_s5zyr2p6_examples` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `is_default` tinyint(1) DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_applications`
--

CREATE TABLE `license_s5zyr2p6_import_export_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_division_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_district_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_designation_in_organization` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_person_organization_have_same_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_division_id` bigint UNSIGNED DEFAULT NULL,
  `organization_district_id` bigint UNSIGNED DEFAULT NULL,
  `organization_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `organization_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `class_e_application_id` bigint UNSIGNED DEFAULT NULL,
  `application_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_import_purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_import_purpose_others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `export_import_purpose_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class_c_application_id` bigint UNSIGNED DEFAULT NULL,
  `products_name` json DEFAULT NULL,
  `irradiating_apparatus` json DEFAULT NULL,
  `irradiating_apparatus_other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `products_name_others` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `class_a_application_id` bigint UNSIGNED DEFAULT NULL,
  `invoice_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_amount` decimal(10,2) DEFAULT NULL,
  `conversion_rate` decimal(10,2) DEFAULT NULL,
  `invoice_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_and_f_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_and_f_amount` decimal(10,2) DEFAULT NULL,
  `c_and_f_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_invoice_amount` decimal(15,2) DEFAULT NULL,
  `total_cnf_amount` decimal(15,2) DEFAULT NULL,
  `lc_credit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lc_credit_date` date DEFAULT NULL,
  `lc_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lc_amount` decimal(15,2) DEFAULT NULL,
  `lc_remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lc_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_export_country_id` bigint UNSIGNED DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `supplier_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `consignment_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transportation_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `packaging_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `container_quantity` int DEFAULT NULL,
  `plutonium_percentage` decimal(8,2) DEFAULT NULL,
  `nuclear_material_quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uranium_plutonium_quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `plutonium_quantity_in_uranium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_material_transportation_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_material_packaging_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nuclear_material_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_technical_specification` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `manufacturer_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permit_fee` decimal(15,2) DEFAULT NULL,
  `vat_fee` decimal(15,2) DEFAULT NULL,
  `total_fee` decimal(15,2) DEFAULT NULL,
  `authorized_entity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `authorized_person_signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `submission_date` date DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_applications`
--

INSERT INTO `license_s5zyr2p6_import_export_applications` (`id`, `uuid`, `application_type`, `previous_application_id`, `current_active_step`, `organization_id`, `service_mapping_id`, `tracking_number`, `docketing_number`, `applicant_name_en`, `applicant_name_bn`, `applicant_nid`, `applicant_division_id`, `applicant_district_id`, `applicant_upazilla_id`, `applicant_address`, `applicant_mobile_number`, `applicant_email`, `applicant_fax`, `applicant_telephone`, `institute_name_en`, `institute_name_bn`, `applicant_designation_in_organization`, `is_person_organization_have_same_address`, `organization_division_id`, `organization_district_id`, `organization_upazilla_id`, `organization_fax`, `organization_telephone`, `institute_address_en`, `institute_address_bn`, `class_e_application_id`, `application_reason`, `export_import_purpose`, `export_import_purpose_others`, `export_import_purpose_attachment`, `class_c_application_id`, `products_name`, `irradiating_apparatus`, `irradiating_apparatus_other`, `products_name_others`, `class_a_application_id`, `invoice_number`, `invoice_date`, `invoice_currency`, `invoice_amount`, `conversion_rate`, `invoice_attachment`, `c_and_f_currency`, `c_and_f_amount`, `c_and_f_attachment`, `total_invoice_amount`, `total_cnf_amount`, `lc_credit_number`, `lc_credit_date`, `lc_currency`, `lc_amount`, `lc_remarks`, `lc_attachment`, `import_export_country_id`, `supplier_name`, `supplier_address`, `supplier_phone`, `supplier_email`, `consignment_type`, `transportation_medium`, `packaging_type`, `container_quantity`, `plutonium_percentage`, `nuclear_material_quantity`, `uranium_plutonium_quantity`, `plutonium_quantity_in_uranium`, `nuclear_material_transportation_medium`, `nuclear_material_packaging_type`, `nuclear_material_attachment`, `manufacturer_technical_specification`, `manufacturer_attachment`, `permit_fee`, `vat_fee`, `total_fee`, `authorized_entity`, `authorized_person_signature`, `is_agreed`, `is_checked`, `submission_date`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, 'd8ebb20d-293a-4de0-92ab-9bdeed5c636a', 'NEW', NULL, 6, 7, 36, 'IM-202312100001', 'BAERA- DHA- 2023-C017 - changed', 'Nilufar', 'ণিলুফার', '2816382112132', 4, 10, 287, NULL, '09213989123', 'abc@yopmail.com', NULL, NULL, 'Mr.Abdullah', 'সচ', 'CEO', 'YES', 4, 10, 287, NULL, '97979823212', NULL, NULL, 1, 'import', 'use', NULL, NULL, NULL, '[\"RADIOACTIVE_MATERIAL\", \"NUCLEAR_MATERIAL\"]', NULL, NULL, NULL, 1, '009 ON 30034/2023', '2023-12-12', 'Pound', 20000.00, 30.00, '657580fd1f2a6', NULL, 23435346.00, '65758104c797b', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5169, 'Mina', 'g', '98239072879', 'abc@yopmail.com', 'SINGLE', 'ROAD', NULL, NULL, 1.00, '43', '3', '21', 'air', 'd', '65758244d6cf2', NULL, NULL, 468706.92, 70306.04, 539012.96, 'personally', NULL, 1, 0, '2023-12-11', 1668, 674, NULL, '2023-12-10 09:11:43', '2023-12-12 03:35:35', 0, 'SENT_BACK'),
(2, 'b80b52db-15e0-4a0e-ba5f-a35ab5d8f302', 'NEW', NULL, 6, 7, 36, 'EX-202312120002', 'BAERA- DHA- 2023-C017 - changed', 'Enlisted added permit 2025', 'দ', '3242252532423', 5, 12, 396, 't', '01398923873', 'abc@yopmail.com', NULL, '01780940522', 'w', 'হ', '্বের', 'YES', 5, 12, 396, NULL, '01780940522', NULL, NULL, 2, 'export', 'use', NULL, NULL, 1, '[\"RADIOACTIVE_MATERIAL\", \"NUCLEAR_MATERIAL\", \"IRRADIATING_APPARATUS\"]', '[\"MOBILE-X-RAY\", \"DENTAL-X-RAY\", \"OPG-X-RAY\", \"MAMMOGRAPHY\"]', NULL, NULL, 6, '8732489', '2023-12-13', 'BDT', 4244324.00, 32.00, '65782143ed329', NULL, 99999999.99, '657821588b3d6', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5143, 's', 's', '08129839212', 'abdjw@wn.com', 'SINGLE', 'ROAD', 'e', 234324, 99.00, '2', '32', '32', '32', '32', '657821fa9b4bd', NULL, NULL, 2000000.00, 300000.00, 2300000.00, 'personally', NULL, 1, 0, '2023-12-12', 1668, 678, NULL, '2023-12-12 09:00:13', '2023-12-13 07:48:23', 0, 'APPROVED'),
(3, '4f79546f-e043-48aa-896e-e314ad1f8bdc', 'NEW', NULL, 6, 7, 36, 'IM-202312190003', 'BAERA- DHA- 2023-C017 - changed', 'Permit from application button', 'দ', '3242252532423', 5, 13, 407, 'h', '29993294324', 'h@sd.cp', NULL, 'h', 'e', 'ন', '্বের', 'YES', 5, 13, 407, NULL, '01780940522', NULL, NULL, 3, 'import', 'use', NULL, NULL, NULL, '[\"RADIOACTIVE_MATERIAL\"]', NULL, NULL, NULL, 8, '8732489', '2023-12-19', 'BDT', 4244324.00, 32.00, '65817ff1f3cb1', NULL, 99999999.99, '65817ff6cf545', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5143, 'Nilufar Hossain', '13/14,Ayesha centre,Mirpur13,BRTA ,Dhaka1206,Bangladesh', '01780940522', 'hossainnilufar12@gmail.com', 'SINGLE', 'ROAD', NULL, NULL, 32.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2000000.00, 300000.00, 2300000.00, 'personally', NULL, 1, 0, '2023-12-19', 1668, 1729, NULL, '2023-12-19 10:46:52', '2023-12-20 05:13:04', 0, 'DRAFT_FINALIZED'),
(4, '786c113f-d416-40d6-8e84-3faefa641772', 'NEW', NULL, 6, 7, 36, 'IM-202312200004', 'BAER-DHA-5(1)/2023', 'Permit BAERA', 'পারমিট', '0101011111', 3, 21, 5173, '1/2, Mirpur', '01444443234', 'abc@yopmail.com', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', 'RCO', 'YES', 3, 21, 5173, NULL, '01010101011', NULL, NULL, 6, 'import', 'use', NULL, NULL, 8, '[\"IRRADIATING_APPARATUS\"]', '{\"1\": \"FIXED-X-RAY\", \"2\": \"MOBILE-X-RAY\", \"3\": \"OPG-X-RAY\", \"4\": \"C-ARM\"}', NULL, NULL, NULL, 'INV88833', '2023-12-06', 'USD', 1000.00, 110.00, '6581bd3404ceb', NULL, 110000.00, '6581bd399f18a', 0.00, 0.00, '10101088881891', '2023-12-07', 'USD', 110000.00, NULL, '6581bd5c628cc', 5174, 'GE Co', 'Dhaka', '00191911111', 'z@yopm.com', 'SINGLE', 'SEA', 'Wooden', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2200.00, 330.00, 2530.00, 'on_behalf_of_organization', NULL, 1, 0, '2023-12-20', 1735, 1729, NULL, '2023-12-19 15:47:46', '2023-12-20 05:08:44', 0, 'APPROVED'),
(5, '644da1f6-7ce7-42db-bede-2b37f045e1fb', 'NEW', NULL, 6, 7, 36, 'IM-202312200005', 'this is my docket number', 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 4, 15, 298, NULL, '01888888888', 'chairman@dao.org', NULL, '01951851116', 'Moin Uddin', 'ফস্ফ', 'raffianmoin', 'YES', 4, 15, 298, NULL, '01951851116', NULL, NULL, 7, 'import', 'use', NULL, NULL, 10, '[\"RADIOACTIVE_MATERIAL\", \"NUCLEAR_MATERIAL\", \"IRRADIATING_APPARATUS\", \"OTHERS\"]', '[\"FIXED-X-RAY\"]', NULL, 'ascas', 7, 'acaccad', '2023-12-20', 'Pound', 12.00, 12.00, '6582c8b8aba83', NULL, 144.00, '6582c8c2f3134', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5169, 'Moin Uddin', 'Jigatala TSO', '01951851116', 'moin@mail.com', 'SINGLE', 'AIR', NULL, NULL, 12.00, 'dj lk;saf fsda', '12', '12', 'truck', 'plastic', '6582c8fadec44', NULL, NULL, 2.88, 0.43, 3.31, 'personally', NULL, 1, 0, '2023-12-20', 702, 1723, NULL, '2023-12-20 10:49:52', '2023-12-20 11:28:43', 0, 'PERMIT_DRAFTED'),
(6, '0db037f9-fd16-476f-b383-24bdfd09fb87', 'NEW', NULL, 6, 7, 36, 'IM-202312300006', 'BAER-DHA-5(1)/2023', 'Permit BAERA2', 'পারমিট২', '0101091111', 3, 21, 5173, '1/2, Mirpur, Dhaka', '01444443234', 'abc@yopmail.com', NULL, NULL, 'License BAERA IDSDP', 'লাইসেন্স', 'RCO', 'YES', 3, 21, 5173, NULL, '01010101011', NULL, NULL, 6, 'import', 'business', NULL, NULL, NULL, '[\"RADIOACTIVE_MATERIAL\", \"IRRADIATING_APPARATUS\"]', '{\"1\": \"FIXED-X-RAY\"}', NULL, NULL, NULL, 'POE43434', '2023-12-16', 'USD', 5050.00, 112.00, '658ffcf5d75de', NULL, 565600.00, '658ffcfa8850c', 0.00, 0.00, '1132323411143', '2023-12-12', 'USD', 5050.00, NULL, '658ffd21dee5c', 5168, 'GE Co', '1/7, Haora bridge, Kolkata, India', '09110101111', 'IN1@indigo.com', 'SINGLE', 'ROAD', 'Type-A', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11312.00, 1696.80, 13008.80, 'on_behalf_of_organization', NULL, 1, 0, '2023-12-30', 1735, 1735, NULL, '2023-12-30 11:16:37', '2023-12-31 04:10:59', 0, 'PAID'),
(7, '7bbd0db3-3dd6-4c4a-bee1-aa705ef08c46', 'NEW', NULL, 6, 7, 36, 'IM-202312300007', NULL, 'Masum Reza', 'মোঃ মাসুম রেজা', '2334452234', 3, 21, 5173, '12, Kallanpur, Dhaka-1215', '01637384898', 'permittest3@yopmail.com', '37377238973', '2488987782', 'IBN Sina Hospital', 'ইবনে সিনা হাসপাতাল', 'Manager(admin)', 'NO', 3, 21, 5171, '464656654', '01766263722', 'road 1, block 5, Gulshan, Dhaka', 'রোড 1, ব্লক 5, গুলশান, ঢাকা', 16, 'import', 'use', NULL, NULL, 17, '[\"IRRADIATING_APPARATUS\"]', '[\"FIXED-X-RAY\"]', NULL, NULL, NULL, 'gbsj-2023', '2023-12-04', 'USD', 40000.00, 117.15, '6590199636f53', NULL, 4686000.00, '659019b1e41c8', 0.00, 0.00, '162823010932', '2023-12-22', 'USD', 40000.00, NULL, '659019cd8f4a6', 5146, 'Shimadzu Corporation', 'Japan', '82319069017', 'hhsghg2@gmail.com', 'SINGLE', 'SEA', 'wooden box', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 93720.00, 14058.00, 107778.00, 'on_behalf_of_organization', NULL, 1, 1, '2023-12-30', 1746, 1700, NULL, '2023-12-30 12:45:45', '2023-12-30 14:51:37', 0, 'SUBMITTED'),
(8, 'a2a728a9-3db5-4c81-95c7-8330d53c885b', 'NEW', NULL, 6, 7, 36, 'EX-202401010008', NULL, 'Nilufar', 'ণিলুফার', '2816382112132', 5, 12, 397, 'ও', '09213989123', 'abc@yopmail.com', NULL, NULL, 'Already approved', 'আন', 'CEO', 'YES', 5, 12, 397, NULL, '97979823212', NULL, NULL, 76, 'export', 'use', NULL, NULL, 20, '[\"RADIOACTIVE_MATERIAL\", \"NUCLEAR_MATERIAL\", \"IRRADIATING_APPARATUS\"]', '{\"1\": \"MOBILE-X-RAY\", \"2\": \"OPG-X-RAY\", \"3\": \"MAMMOGRAPHY\", \"4\": \"BMD\"}', NULL, NULL, 28, '009 ON 30034/2023', '2023-01-10', 'USD', 20000.00, 30.00, '6592975e15755', NULL, 600000.00, '659297663acca', 0.00, 0.00, 'EN 009n', NULL, 'BDT', 23948.00, NULL, NULL, 5143, 'Mina', 'দ', '98239072879', 'abc@yopmail.com', 'SINGLE', 'SEA', NULL, NULL, 23.00, '32', '32', '3', 'air', 'd', '65929828e6adb', NULL, NULL, 12000.00, 1800.00, 13800.00, 'personally', NULL, 1, 1, '2024-01-01', 1668, 1700, NULL, '2024-01-01 10:41:08', '2024-01-01 10:51:17', 0, 'SUBMITTED'),
(9, '85e15cdb-e957-47ab-b830-06aa9cc3e755', 'NEW', NULL, 2, 7, 36, NULL, NULL, 'Md. Lutfur Rahman', 'মোঃ লুৎফুর রহমান', '2334452234', 3, 21, 5160, '24/A, Dhanmondi, Dhaka-1206', '01283994948', 'permittest4@yopmail.com', NULL, '01283994948', 'LabAid Hospital limited, Dhaka', 'ল্যাবএইড হাসপাতাল লিমিটেড, ঢাকা', 'Manager', 'YES', 3, 21, 5160, NULL, '01283994948', NULL, NULL, 82, 'import', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 1747, 1747, '2024-01-01 13:43:31', '2024-01-01 11:15:28', '2024-01-01 13:43:31', 0, 'DRAFT'),
(10, 'aaaa62c9-737e-4f93-98ed-599ff447be85', 'NEW', NULL, 6, 7, 36, 'IM-202401010010', 'BAER DHA-5(387)/2023', 'Md. Lutfur Rahman', 'মোঃ লুৎফুর রহমান', '2334452234', 3, 21, 5160, '24/A, Dhanmondi, Dhaka-1206', '01283994948', 'permittest4@yopmail.com', NULL, '01283994948', 'LabAid Hospital limited, Dhaka', 'ল্যাবএইড হাসপাতাল লিমিটেড, ঢাকা', 'Manager', 'YES', 3, 21, 5160, NULL, '01283994948', NULL, NULL, 82, 'import', 'use', NULL, NULL, 26, '[\"IRRADIATING_APPARATUS\"]', '{\"1\": \"FIXED-X-RAY\"}', NULL, NULL, NULL, 'dsggj237y8723', '2023-01-17', 'USD', 45200.00, 110.50, '6592a97151088', NULL, 4994600.00, '6592a97aaf10e', 0.00, 0.00, '266367347373', '2023-12-20', 'USD', 45200.00, NULL, '6592a9ac433c0', 5167, 'Simens HealthCare', 'Germany', '01283994948', 'permittest4@yopmail.com', 'SINGLE', 'SEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99892.00, 14983.80, 114875.80, 'on_behalf_of_organization', NULL, 1, 0, '2024-01-01', 1747, 1729, NULL, '2024-01-01 11:35:36', '2024-01-01 13:36:44', 0, 'APPROVED'),
(11, '6178d9b8-f121-4d3f-bf39-064417a969ee', 'NEW', NULL, 6, 7, 36, 'EX-202401010011', 'BAERA- DHA- 2023-C017 - changed', 'Nilufar', 'ণিলুফার', '2816382112132', 5, 12, 397, NULL, '09213989123', 'abc@yopmail.com', NULL, NULL, 'Mr.Abdullah', 'সচ', 'CEO', 'NO', 4, 16, 304, NULL, '97979823212', 'h', 'ব', 76, 'export', 'use', NULL, NULL, 20, '[\"RADIOACTIVE_MATERIAL\", \"NUCLEAR_MATERIAL\", \"IRRADIATING_APPARATUS\"]', '{\"1\": \"MOBILE-X-RAY\", \"2\": \"BMD\", \"3\": \"MAMMOGRAPHY\", \"4\": \"OPG-X-RAY\", \"5\": \"DENTAL-X-RAY\"}', NULL, NULL, 3, '009 ON 30034/2023', '2024-01-02', 'BDT', 20000.00, 30.00, '6592a6e62e39b', NULL, 932829.00, '6592a6f0b19d5', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5143, 'Mina', 'ন', '98239072879', 'abc@yopmail.com', 'SINGLE', 'ROAD', NULL, NULL, 78.00, '20', '3', '21', 'air', 'd', '6592a735dbe4a', NULL, NULL, 18656.58, 2798.49, 21455.07, 'personally', NULL, 1, 0, '2024-01-01', 1668, 1729, NULL, '2024-01-01 11:49:12', '2024-01-02 04:36:19', 0, 'ASSIGNED_FOR_EVALUATION'),
(12, '2140368e-5ee3-45d7-8740-03e61956a87d', 'NEW', NULL, 4, 7, 36, NULL, NULL, 'Amani Nawar Choudhury', 'আমানী নওয়ার চৌধুরী', '2334452234', 5, 12, 396, 'wkejhkjhfjk', '01283994948', 'permittest4@yopmail.com', NULL, '01283994948', 'Karim ahmed', 'ব্জহদেউদ', 'Manager', 'YES', 5, 12, 396, NULL, '01283994948', NULL, NULL, 82, 'import', 'business', NULL, NULL, NULL, '[\"RADIOACTIVE_MATERIAL\"]', NULL, NULL, NULL, NULL, 'dsggj237y8723', '2024-01-01', 'USD', 45200.00, 110.50, '6592ae6d268e9', NULL, 4994600.00, '6592ae72bcd38', 0.00, 0.00, '266367347373', NULL, 'USD', 45200.00, NULL, NULL, 5147, 'Simens HealthCare', 'Dhanmondi', '01283994948', 'permittest4@yopmail.com', 'SINGLE', 'SEA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 99892.00, 14983.80, 114875.80, NULL, NULL, NULL, 0, NULL, 1747, 1747, '2024-01-01 13:43:35', '2024-01-01 12:19:02', '2024-01-01 13:43:35', 0, 'DRAFT'),
(13, '702a7545-52c5-41da-b41f-c982cf490901', 'NEW', NULL, 6, 7, 36, 'IM-202401010013', 'BAER-DHA-101/2020', 'Mohsin Hossain', 'মোহসিন হোসেন', '34534534535345345', 5, 12, 396, NULL, '01888888888', 'chairman@dao.org', NULL, NULL, 'Test', 'পরীক্ষামূলক', 'Chairman', 'NO', 3, 21, 5158, NULL, '01323423423', 'Road #2,\nFactory #3,\nUniverse', 'সড়ক #১', 78, 'import', 'use', NULL, NULL, NULL, '[\"NUCLEAR_MATERIAL\"]', NULL, NULL, NULL, NULL, '34534534535', '2024-01-01', 'Pound', 34343.00, 85.00, '6592bc9ab2d73', NULL, 2919155.00, '6592bc9f72abf', 0.00, 0.00, NULL, NULL, NULL, NULL, NULL, NULL, 5143, 'Supplier Name Here', 'Address #1', '02324534534', 'awesome@example.com', 'SINGLE', 'AIR', NULL, NULL, 45.00, '40 gram', '3 kg', '2 k.g.', 'Some Transport', 'Some Package', '6592bd3ec6ccc', NULL, NULL, 58383.10, 8757.47, 67140.57, 'personally', NULL, 1, 0, '2024-01-01', 702, 702, NULL, '2024-01-01 13:06:22', '2024-01-01 13:47:24', 0, 'PAID'),
(14, '1e908d55-e3b8-4ed6-932f-0fb9a29ac658', 'NEW', NULL, 6, 7, 36, 'IM-202401020014', 'DHK-157', 'Md. Shayan Kadir', 'মোঃ শায়ান কাদির', '9658458756', 3, 21, 5171, 'Cha-20 Mohakhali', '01789632541', 'kadir35@yopmail.com', '8888', '99999', 'Mohammadi Group', 'মোহাম্মদী গ্রুপ', 'Managing Director', 'YES', 3, 21, 5171, NULL, '01789632541', NULL, NULL, 81, 'import', 'business', NULL, NULL, NULL, '[\"IRRADIATING_APPARATUS\"]', '[\"FIXED-X-RAY\", \"OPG-X-RAY\", \"OTHER\"]', 'abc X-ray', NULL, NULL, '98658', '2023-12-01', 'USD', 5000.00, 100.00, '6593672180040', NULL, 500000.00, '6593672cbfdbd', 0.00, 0.00, '9658', '2023-12-03', 'USD', 5000.00, NULL, '65936747eab51', 5174, 'China Engineering Ltd.', 'Ho Chu', '01896654785', 'chinaeng@yopmail.com', 'SINGLE', 'SEA', 'dfs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'প্রস্তুতকারীর কারিগরি বিবরণ (Technical Specifications)', NULL, 10000.00, 1500.00, 11500.00, 'on_behalf_of_organization', NULL, 1, 0, '2024-01-02', 1759, 1731, NULL, '2024-01-02 01:28:28', '2024-01-02 04:29:23', 0, 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_attachments`
--

CREATE TABLE `license_s5zyr2p6_import_export_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `import_export_permit_application_id` bigint UNSIGNED DEFAULT NULL,
  `is_attachment_type_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_attachments`
--

INSERT INTO `license_s5zyr2p6_import_export_attachments` (`id`, `import_export_permit_application_id`, `is_attachment_type_mandatory`, `attachment_type_id`, `attachment_name`, `attachment_file`, `remarks`, `deleted_at`, `sort_order`, `created_at`, `updated_at`, `status`) VALUES
(1, 1, 1, 18, NULL, '65758235f30f5', NULL, NULL, 2, '2023-12-10 09:17:59', '2023-12-10 09:17:59', 1),
(2, 4, 1, 18, 'Proforma Invoice/Relevant Document', '6581be0551c22', NULL, NULL, 0, '2023-12-19 16:00:37', '2023-12-19 16:00:37', 1),
(3, 4, 0, 51, 'Trade License', '6581be0e3dfcf', NULL, NULL, 0, '2023-12-19 16:00:37', '2023-12-19 16:00:37', 1),
(4, 4, 0, 13, 'Equipment manufacturer\'s specifications', '6581be17bd346', NULL, NULL, 0, '2023-12-19 16:00:37', '2023-12-19 16:00:37', 1),
(5, 4, 0, 17, 'LC (Letter of Credit)/Relevant Document', '6581be1c91114', NULL, NULL, 0, '2023-12-19 16:00:37', '2023-12-19 16:00:37', 1),
(6, 4, 0, 20, 'Copy of Class “E’ License”', '6581be2260b9e', NULL, NULL, 0, '2023-12-19 16:00:37', '2023-12-19 16:00:37', 1),
(7, 6, 1, 18, 'Proforma Invoice/Relevant Document', '658ffebcb8dd4', NULL, NULL, 0, '2023-12-30 11:28:20', '2023-12-30 11:28:20', 1),
(8, 6, 0, 53, 'Printed Application with necessary Signatures', '658ffec451220', NULL, NULL, 0, '2023-12-30 11:28:20', '2023-12-30 11:28:20', 1),
(9, 6, 0, 46, 'Type Approval Certificate/EC Certificate', '658fff046284b', NULL, NULL, 0, '2023-12-30 11:29:29', '2023-12-30 11:29:29', 1),
(10, 6, 0, 17, 'LC (Letter of Credit)/Relevant Document', '658fff0be7c5b', NULL, NULL, 0, '2023-12-30 11:29:29', '2023-12-30 11:29:29', 1),
(11, 6, 0, 20, 'Copy of Class “E’ License”', '658fff139f69a', NULL, NULL, 0, '2023-12-30 11:29:29', '2023-12-30 11:29:29', 1),
(12, 7, 1, 18, 'Proforma Invoice/Relevant Document', '65901b1072926', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(13, 7, 0, 52, 'Radioactive Material - Sealed Radioactive Source Certificate', '65901b60a52f1', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(14, 7, 0, 51, 'Trade License', '65901b6a25c06', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(15, 7, 0, 47, 'Package Design Certificate', '65901b72a87ce', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(16, 7, 0, 46, 'Type Approval Certificate/EC Certificate', '65901b7cb0dd6', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(17, 7, 0, 13, 'Equipment manufacturer\'s specifications', '65901b891922a', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(18, 7, 0, 17, 'LC (Letter of Credit)/Relevant Document', '65901b968ee63', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(19, 7, 0, 20, 'Copy of Class “E’ License”', '65901ba07ef7b', NULL, NULL, 0, '2023-12-30 13:31:19', '2023-12-30 13:31:19', 1),
(20, 10, 1, 18, 'Proforma Invoice/Relevant Document', '6592aa4e23034', NULL, NULL, 0, '2024-01-01 12:14:21', '2024-01-01 12:14:21', 1),
(21, 10, 0, 17, 'LC (Letter of Credit)/Relevant Document', '6592b3c2a57c8', NULL, NULL, 0, '2024-01-01 12:41:02', '2024-01-01 12:45:06', 1),
(22, 13, 1, 18, 'Proforma Invoice/Relevant Document', '6592bd4c52e77', NULL, NULL, 0, '2024-01-01 13:25:37', '2024-01-01 13:25:37', 1),
(23, 14, 1, 18, 'Proforma Invoice/Relevant Document', '6593681671928', NULL, NULL, 0, '2024-01-02 01:34:57', '2024-01-02 01:34:57', 1),
(24, 14, 0, 53, 'Printed Application with necessary Signatures', '65936825eed9e', NULL, NULL, 0, '2024-01-02 01:34:57', '2024-01-02 01:34:57', 1),
(25, 14, 0, 52, 'Radioactive Material - Sealed Radioactive Source Certificate', '6593682c12ba3', NULL, NULL, 0, '2024-01-02 01:34:57', '2024-01-02 01:34:57', 1),
(26, 14, 0, 51, 'Trade License', '6593683537a5d', NULL, NULL, 0, '2024-01-02 01:34:57', '2024-01-02 01:34:57', 1),
(27, 14, 0, 20, 'Copy of Class “E’ License”', '6593683e6512b', NULL, NULL, 0, '2024-01-02 01:34:57', '2024-01-02 01:34:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_irradiation_apparatuses`
--

CREATE TABLE `license_s5zyr2p6_import_export_irradiation_apparatuses` (
  `id` bigint UNSIGNED NOT NULL,
  `import_export_permit_application_id` bigint UNSIGNED DEFAULT NULL,
  `type_and_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `maximum_voltage` int DEFAULT NULL,
  `maximum_current` int DEFAULT NULL,
  `maximum_power` int DEFAULT NULL,
  `control_panel_serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tube_head_serial_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_irradiation_apparatuses`
--

INSERT INTO `license_s5zyr2p6_import_export_irradiation_apparatuses` (`id`, `import_export_permit_application_id`, `type_and_model`, `quantity`, `maximum_voltage`, `maximum_current`, `maximum_power`, `control_panel_serial_number`, `tube_head_serial_number`, `supplier_name`, `supplier_address`, `sort_order`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 'y', 23, 23, 23, 3232, '3232', '32322', '32323', NULL, 0, 1, NULL, '2023-12-12 09:04:17', '2023-12-12 09:04:17'),
(2, 4, 'TR 300A', 10, 125, 300, 50, '102911191881111', '1922828828911', 'GE Co', NULL, 0, 1, NULL, '2023-12-19 16:00:37', '2023-12-19 16:00:37'),
(3, 5, 'g g', 12, 12, 12, 12, '12', '12', '22', NULL, 0, 1, NULL, '2023-12-20 10:59:22', '2023-12-20 10:59:22'),
(4, 6, 'Shimadzu 55A', 5, 230, 1000, 50, '8BBBt2hddf', '9JSyS52g2', 'GE Co', NULL, 0, 1, NULL, '2023-12-30 11:28:20', '2023-12-30 11:28:20'),
(5, 7, 'Digital Medical X-ray Machine- XVISION-525', 2, 150, 1000, NULL, 'N/A', 'N/A', 'shimadzu corporation', 'japan', 0, 1, NULL, '2023-12-30 13:31:19', '2023-12-30 13:31:19'),
(6, 8, 'f', 32423, 2334, 3242, 3232, '324', '325', '324', NULL, 0, 1, NULL, '2024-01-01 10:47:27', '2024-01-01 10:47:27'),
(7, 11, 'f', 34, 435, 43, 43, '32', '32', '32', NULL, 0, 1, NULL, '2024-01-01 11:51:50', '2024-01-01 11:51:50'),
(8, 10, 'Digital Medical X-ray Machine- XVISION-525', 1, 150, 1000, NULL, '62786786ew', 'o278728uyiy', 'Simens HealthCare', 'Germany', 0, 1, NULL, '2024-01-01 12:14:21', '2024-01-01 12:14:21'),
(9, 10, 'Somatom go. Now', 1, 150, 400, NULL, '2767836287', '23y76872eg', 'Simens HealthCare', 'Germany', 0, 1, NULL, '2024-01-01 12:14:21', '2024-01-01 12:14:21'),
(10, 10, 'Viraview', 1, 70, 10, NULL, '2h3y784', '266872687', 'Simens HealthCare', 'Germany', 0, 1, NULL, '2024-01-01 12:14:21', '2024-01-01 12:14:21'),
(11, 14, 'G-X-Ray 2002', 1, 5, 2, 1500, '98989', '98798', 'China Engineerings', 'Ho Chu', 0, 1, NULL, '2024-01-02 01:34:57', '2024-01-02 01:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_radioactive_materials`
--

CREATE TABLE `license_s5zyr2p6_import_export_radioactive_materials` (
  `id` bigint UNSIGNED NOT NULL,
  `import_export_permit_application_id` bigint UNSIGNED DEFAULT NULL,
  `radioactive_materials_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radioactive_materials_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chemical_or_physical_form` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_source_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sealed_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsealed_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sealed_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unsealed_certificate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_radioactive_materials`
--

INSERT INTO `license_s5zyr2p6_import_export_radioactive_materials` (`id`, `import_export_permit_application_id`, `radioactive_materials_id`, `radioactive_materials_other`, `chemical_or_physical_form`, `manufacturer_name`, `model_no`, `radiation_source_type`, `sealed_source`, `unsealed_source`, `sealed_certificate`, `unsealed_certificate`, `created_at`, `updated_at`) VALUES
(1, 1, '270', NULL, 'h', 'h', NULL, 'UNSEALED', NULL, 'h', NULL, NULL, '2023-12-10 09:16:59', '2023-12-10 09:16:59'),
(2, 2, '269', NULL, 's', 's', NULL, 'UNSEALED', NULL, 's', NULL, NULL, '2023-12-12 09:03:26', '2023-12-12 09:03:26'),
(3, 3, '270', NULL, 'd', 'f', NULL, 'UNSEALED', NULL, 'f', NULL, NULL, '2023-12-19 11:36:18', '2023-12-19 11:36:18'),
(4, 5, '268', NULL, '77', '77', NULL, 'SEALED', '12', NULL, NULL, NULL, '2023-12-20 10:58:46', '2023-12-20 10:58:46'),
(5, 6, '381', NULL, 'Solid', 'Polatom', '8H221n', 'SEALED', '131 Ci', NULL, NULL, NULL, '2023-12-30 11:26:17', '2023-12-30 11:26:17'),
(6, 8, '269', NULL, 'ফ', 'ে', NULL, 'SEALED', 'স', NULL, NULL, NULL, '2024-01-01 10:46:08', '2024-01-01 10:46:08'),
(7, 11, '270', NULL, '্য', '্য', '্য', 'UNSEALED', NULL, '্য', NULL, NULL, '2024-01-01 11:50:54', '2024-01-01 11:50:54'),
(8, 12, '475', NULL, 'wejg', 'sdmhj', NULL, 'SEALED', '556748', NULL, NULL, NULL, '2024-01-01 12:23:50', '2024-01-01 12:23:50');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_sell_records`
--

CREATE TABLE `license_s5zyr2p6_import_export_sell_records` (
  `id` bigint UNSIGNED NOT NULL,
  `import_export_permit_application_id` bigint UNSIGNED DEFAULT NULL,
  `selling_date` date DEFAULT NULL,
  `permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_organization_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `selling_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_product_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_product_state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_sell_records`
--

INSERT INTO `license_s5zyr2p6_import_export_sell_records` (`id`, `import_export_permit_application_id`, `selling_date`, `permit_number`, `selling_organization_name`, `selling_address`, `selling_mobile`, `selling_email`, `selling_product_name`, `selling_product_state`, `created_at`, `updated_at`) VALUES
(1, 6, '2023-08-09', 'BAER-5(2023-2024)/82', 'Medinova Hospital', 'Dhaka', '01991111122', NULL, 'Cs-137', 'SELL', '2023-12-30 11:21:10', '2023-12-30 11:21:10'),
(2, 12, '2024-01-02', '12/2012', 'ইয়', '্বেঝহ', '01283994948', 'permittest4@yopmail.com', NULL, NULL, '2024-01-01 12:22:30', '2024-01-01 12:22:30');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_import_export_shipments`
--

CREATE TABLE `license_s5zyr2p6_import_export_shipments` (
  `id` bigint UNSIGNED NOT NULL,
  `import_export_id` bigint UNSIGNED DEFAULT NULL,
  `first_consignment_date` date DEFAULT NULL,
  `last_consignment_date` date DEFAULT NULL,
  `loading_port` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unloading_port_id` bigint UNSIGNED DEFAULT NULL,
  `unloading_port_others` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_import_export_shipments`
--

INSERT INTO `license_s5zyr2p6_import_export_shipments` (`id`, `import_export_id`, `first_consignment_date`, `last_consignment_date`, `loading_port`, `unloading_port_id`, `unloading_port_others`, `created_at`, `updated_at`) VALUES
(1, 1, '2023-12-13', '2023-12-29', 'ju', 2, NULL, '2023-12-10 09:16:59', '2023-12-10 09:16:59'),
(2, 2, '2023-12-13', '2023-12-23', 'sd', 1, NULL, '2023-12-12 09:03:26', '2023-12-12 09:03:26'),
(3, 3, '2023-12-20', '2023-12-28', 'sd', 3, NULL, '2023-12-19 11:36:18', '2023-12-19 11:36:18'),
(4, 4, '2023-12-30', '2023-12-30', 'Xinxhian', 2, NULL, '2023-12-19 15:58:55', '2023-12-19 15:58:55'),
(5, 5, '2023-12-20', '2023-12-20', 'mongla port', 1, NULL, '2023-12-20 10:58:46', '2023-12-20 10:58:46'),
(6, 6, '2023-12-31', '2023-12-31', 'Bandura', 1, NULL, '2023-12-30 11:26:17', '2023-12-30 11:26:17'),
(7, 7, '2024-01-04', '2025-05-20', 'port of japan', 2, 'chattogram sea port', '2023-12-30 13:25:56', '2023-12-30 13:25:56'),
(8, 8, '2024-01-04', '2024-01-11', 'ফ', 2, NULL, '2024-01-01 10:46:08', '2024-01-01 10:46:08'),
(9, 11, '2024-01-09', '2024-01-17', '্য', 3, NULL, '2024-01-01 11:50:54', '2024-01-01 11:50:54'),
(10, 10, '2024-01-02', '2024-04-25', 'Any port of Germany', 2, NULL, '2024-01-01 12:03:21', '2024-01-01 12:03:21'),
(11, 12, '2024-01-09', '2024-03-19', 'Simens HealthCare', 2, NULL, '2024-01-01 12:23:50', '2024-01-01 12:23:50'),
(12, 13, '2024-01-01', '2024-01-24', 'Some Port', 1, NULL, '2024-01-01 13:24:52', '2024-01-01 13:24:52'),
(13, 14, '2024-01-10', '2024-02-29', 'China Port', 1, NULL, '2024-01-02 01:32:38', '2024-01-02 01:32:38');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspections`
--

CREATE TABLE `license_s5zyr2p6_inspections` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `form_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revision` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `inspection_date` date NOT NULL,
  `installation_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_from` time DEFAULT NULL,
  `time_to` time DEFAULT NULL,
  `facility_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `xray_machine_affiliation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsible_person_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsible_person_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `responsible_person_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `responsible_person_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_unit_count` int DEFAULT NULL,
  `go_is_storage` tinyint(1) NOT NULL DEFAULT '0',
  `go_is_dark_room` tinyint(1) NOT NULL DEFAULT '0',
  `go_is_film_storage` tinyint(1) NOT NULL DEFAULT '0',
  `go_is_docimetry_service` tinyint(1) NOT NULL DEFAULT '0',
  `go_is_calibration_service` tinyint(1) NOT NULL DEFAULT '0',
  `go_is_qa_program` tinyint(1) NOT NULL DEFAULT '0',
  `xray_unit_type` json DEFAULT NULL,
  `xray_unit_type_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_unit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_room_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_serial` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_manufacturer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_maximum_kv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_maximum_ma` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_date` date DEFAULT NULL,
  `xray_associated_equipment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xray_installation_date` date DEFAULT NULL,
  `layout_plan_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_is_warning_signal` tinyint(1) NOT NULL DEFAULT '0',
  `to_room_size` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_is_room_size_adequate` tinyint(1) NOT NULL DEFAULT '0',
  `to_is_operator_protection` tinyint(1) NOT NULL DEFAULT '0',
  `to_is_light_beam_diaphragm` tinyint(1) NOT NULL DEFAULT '0',
  `to_total_tube_filtration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_beam_quality` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_cp_condition` json DEFAULT NULL,
  `to_cp_condition_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_wall_condition` json DEFAULT NULL,
  `to_entrance_door_condition` json DEFAULT NULL,
  `to_dark_room_door_condition` json DEFAULT NULL,
  `tube_potential` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tube_current` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exposure_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_control_panel` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_dark_room` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_is_xray_room_outside` tinyint(1) NOT NULL DEFAULT '0',
  `dose_entrance_door` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_other_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dose_background_radiation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_electro_mechanical_safety` tinyint(1) NOT NULL DEFAULT '0',
  `is_machine_maintenance` tinyint(1) NOT NULL DEFAULT '0',
  `is_radiation_safety` tinyint(1) NOT NULL DEFAULT '0',
  `is_attach_lead_sheet` tinyint(1) NOT NULL DEFAULT '0',
  `is_close_xray_room_door` tinyint(1) NOT NULL DEFAULT '0',
  `is_cp_protective_enclosure` tinyint(1) NOT NULL DEFAULT '0',
  `is_xray_room_brick_wall` tinyint(1) NOT NULL DEFAULT '0',
  `is_replace_with_wall` tinyint(1) NOT NULL DEFAULT '0',
  `is_people_outside` tinyint(1) NOT NULL DEFAULT '0',
  `is_operator_away` tinyint(1) NOT NULL DEFAULT '0',
  `is_tube_housing_not_hand` tinyint(1) NOT NULL DEFAULT '0',
  `is_operator_wear_monitoring_device` tinyint(1) NOT NULL DEFAULT '0',
  `is_radiation_warning_sign` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspection_inspectors`
--

CREATE TABLE `license_s5zyr2p6_inspection_inspectors` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_id` bigint UNSIGNED DEFAULT NULL,
  `inspector_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspection_plans`
--

CREATE TABLE `license_s5zyr2p6_inspection_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `financial_year_id` bigint UNSIGNED DEFAULT NULL,
  `inspection_plan_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `month` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quarter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspection_plan_details`
--

CREATE TABLE `license_s5zyr2p6_inspection_plan_details` (
  `id` bigint UNSIGNED NOT NULL,
  `inspection_plan_id` bigint UNSIGNED DEFAULT NULL,
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facility_name_id` bigint UNSIGNED DEFAULT NULL,
  `facility_name_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` bigint UNSIGNED DEFAULT NULL,
  `district_id` bigint UNSIGNED DEFAULT NULL,
  `upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `officer_name` json DEFAULT NULL,
  `designation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `source_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_count` int DEFAULT NULL,
  `address_other` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `inspection_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspection_protective_equipments`
--

CREATE TABLE `license_s5zyr2p6_inspection_protective_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_id` bigint UNSIGNED DEFAULT NULL,
  `equipment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lead` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ok` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_inspection_xray_technicians`
--

CREATE TABLE `license_s5zyr2p6_inspection_xray_technicians` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inspection_id` bigint UNSIGNED DEFAULT NULL,
  `technician_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `training_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_license_permits`
--

CREATE TABLE `license_s5zyr2p6_license_permits` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Model Namespace',
  `application_id` bigint UNSIGNED DEFAULT NULL,
  `license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_year` year DEFAULT NULL COMMENT 'For License Number Generation',
  `revision` int UNSIGNED DEFAULT NULL,
  `rev_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `renewal_year` year DEFAULT NULL COMMENT 'For License Number Generation',
  `license_permit_madeup_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `forwarding_letter` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `issuer_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issuer_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issued_at` timestamp NULL DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_license_permits`
--

INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(1, '30817238-10a7-4aae-9054-efa221b37d5a', 67, 'App\\Models\\ClassAApplication', 2, '10001', '2023', NULL, NULL, NULL, '10001/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2025-12-13', 'APPROVED', 0, 676, 677, NULL, '2023-12-11 05:47:51', '2023-12-11 06:25:32', 0),
(2, 'b8aa10d6-b494-421a-8b7e-555dc22c1b63', 67, 'App\\Models\\ClassAApplication', 1, '112533', '2022', NULL, NULL, NULL, '112533/2023', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Fatema akter', 'Front desk officer', '2022-12-02 18:00:00', '2023-12-30', 'APPROVED', 0, 672, 672, NULL, '2023-12-11 06:36:05', '2023-12-11 06:36:05', 0),
(3, '21d9cb13-7550-4182-9019-1beeea494d63', 36, 'App\\Models\\ImportExportPermit', 1, '1', '2023', NULL, NULL, NULL, '1/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-11 09:08:02', '2025-12-25', 'APPROVED', 0, 676, 678, NULL, '2023-12-11 09:03:21', '2023-12-11 09:08:02', 0),
(4, '84017eed-4ae6-4aa8-960b-1e96be64412b', 37, 'App\\Models\\ApplicationELicense', 1, '10002', '2023', NULL, NULL, NULL, '10002/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-11 09:08:02', '2021-12-22', 'APPROVED', 0, 676, 678, NULL, '2023-12-11 09:03:24', '2023-12-11 09:08:02', 0),
(5, 'c626cfc0-60f6-4238-89f4-58e3401aa36f', 57, 'App\\Models\\RcoApplication', 2, '1', '2023', NULL, NULL, NULL, '1/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-11 09:08:02', '2024-12-20', 'APPROVED', 0, 676, 678, NULL, '2023-12-11 09:03:26', '2023-12-11 09:08:02', 0),
(6, '284d795f-c4c4-4112-9d40-43accded14c0', 67, 'App\\Models\\ClassAApplication', 1, '112533', '2022', NULL, NULL, NULL, '112533/2023', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Fatema', 'se', '2022-12-02 18:00:00', '2023-12-30', 'APPROVED', 0, 672, 672, NULL, '2023-12-11 11:18:39', '2023-12-11 11:18:39', 0),
(7, 'e54cb680-5521-4ea9-8dd2-578c6eff0e0e', 67, 'App\\Models\\ClassAApplication', 4, '10003', '2023', NULL, NULL, NULL, '10003/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 677, 'Mostofa Jabbar', 'Director', '2023-12-12 08:56:26', '2025-12-12', 'APPROVED', 0, 676, 677, NULL, '2023-12-12 08:52:54', '2023-12-12 08:56:26', 0),
(8, '6beaa715-d807-4de3-825a-d87226885c65', 67, 'App\\Models\\ClassAApplication', 6, '112533', '2023', NULL, NULL, NULL, '112533/2025', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'mostofa', 'we', '2023-12-11 18:00:00', '2025-12-20', 'APPROVED', 0, 677, 677, NULL, '2023-12-12 09:29:20', '2023-12-12 09:29:20', 0),
(9, 'cfce84b4-2cbb-4475-83e0-55493ace555b', 57, 'App\\Models\\RcoApplication', 5, '983423', '2021', NULL, NULL, NULL, '983423/2025', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'hamidur', 'Administration', '2021-11-28 18:00:00', '2028-12-09', 'APPROVED', 0, 678, 678, NULL, '2023-12-12 10:49:25', '2023-12-12 10:49:25', 0),
(10, 'c880481c-aa41-4b60-a764-ca4dbed74a2d', 57, 'App\\Models\\RcoApplication', 3, '2', '2023', NULL, NULL, NULL, '2/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-13 07:48:25', '2025-12-19', 'APPROVED', 0, 676, 678, NULL, '2023-12-13 07:42:34', '2023-12-13 07:48:25', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(11, 'c12ef675-3da7-4d14-ae1e-1ee8b49c561c', 37, 'App\\Models\\ApplicationELicense', 2, '10004', '2023', NULL, NULL, NULL, '10004/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-13 07:48:24', '2025-12-11', 'APPROVED', 0, 676, 678, NULL, '2023-12-13 07:42:37', '2023-12-13 07:48:24', 0),
(12, '358b6a61-e3bd-41ff-8e27-3c5517a626bd', 36, 'App\\Models\\ImportExportPermit', 2, '2', '2023', NULL, NULL, NULL, '2/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 678, 'Hamidur Rahman', 'Chairman', '2023-12-13 07:48:24', '2026-12-17', 'APPROVED', 0, 676, 678, NULL, '2023-12-13 07:42:42', '2023-12-13 07:48:24', 0),
(13, '6b3ef98e-3670-4e82-81af-1ce01dbc80fc', 38, 'App\\Models\\ClassCLicenseApplication', 1, '10005', '2023', NULL, NULL, NULL, '10005/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 677, 'Mostofa Jabbar', 'Director', '2023-12-13 08:58:24', '2024-12-20', 'APPROVED', 0, 676, 677, NULL, '2023-12-13 08:54:05', '2023-12-13 08:58:24', 0),
(14, '334c5666-02be-455f-a88d-683a56b6e1b3', 67, 'App\\Models\\ClassAApplication', 7, '10006', '2023', NULL, NULL, NULL, '10006/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-19 09:19:05', '2026-12-15', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-19 08:38:49', '2023-12-19 09:19:06', 0),
(15, '46f7a9a6-be8f-421e-8ed3-6afbbbd00469', 57, 'App\\Models\\RcoApplication', 6, '3', '2023', NULL, NULL, NULL, '3/2023-2024', NULL, NULL, NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-19 09:19:05', '2024-12-19', 'APPROVED', 0, 1729, 1729, NULL, '2023-12-19 09:19:06', '2023-12-19 09:19:06', 0),
(16, '95d55c20-8124-4814-82b2-0b874824af96', 37, 'App\\Models\\ApplicationELicense', 3, '10007', '2023', NULL, NULL, NULL, '10007/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '<p>This is a test forwarding letter&nbsp;</p>', NULL, NULL, NULL, NULL, '2025-12-26', 'DRAFT_APPROVED', 0, 1723, 1731, NULL, '2023-12-19 09:20:01', '2023-12-19 09:56:20', 0),
(17, 'fc7451af-5a56-40d4-a007-aee68342d39c', 57, 'App\\Models\\RcoApplication', 8, '8', '2021', 1, '101', '2021', '8/2021-2022(R-1/2022-2023)/101', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2021-12-29 18:00:00', '2023-12-31', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-19 10:59:58', '2023-12-19 10:59:58', 0),
(18, 'e4836668-7fea-4c1b-89b2-313b22f99553', 67, 'App\\Models\\ClassAApplication', 8, '112533', '2023', NULL, NULL, NULL, '112533/2025', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Fatema', 'Frontdesk Officer', '2023-12-11 18:00:00', '2024-05-25', 'APPROVED', 0, 1699, 1699, NULL, '2023-12-19 11:39:11', '2023-12-19 11:39:11', 0),
(19, '4a3a8097-7aa1-461f-b292-925b31a055eb', 67, 'App\\Models\\ClassAApplication', 9, '8', '2020', 1, '102', '2020', '8/2021-2022(R-1/2022-2023)/102', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2020-12-30 18:00:00', '2023-06-30', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-19 11:54:24', '2023-12-19 11:54:24', 0),
(20, '98ceeecb-7674-4fa2-9f7e-958634fcd729', 38, 'App\\Models\\ClassCLicenseApplication', 4, '82389', '2023', NULL, NULL, NULL, '82389/2025', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Nilufar Hasan', 'Administration', '2023-11-29 18:00:00', '2023-12-14', 'APPROVED', 0, 1699, 1699, NULL, '2023-12-19 12:07:23', '2023-12-19 12:07:23', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(21, 'b3749cab-6e02-42d9-9b9d-69634b24859c', 38, 'App\\Models\\ClassCLicenseApplication', 5, '8', '2020', 1, '103', '2020', '8/2021-2022(R-1/2022-2023)/103', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2020-12-30 18:00:00', '2022-12-31', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-19 12:15:13', '2023-12-19 12:15:13', 0),
(22, 'bd4776e3-6d1e-48da-9972-8c3dce35cf4e', 133, 'App\\Models\\ClassDApplication', 3, '8', '2020', 1, '104', '2020', '8/2021-2022(R-1/2022-2023)/104', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2020-12-29 18:00:00', '2023-06-30', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-19 12:29:52', '2023-12-19 12:29:52', 0),
(23, 'c206ccc9-6b38-47d8-b170-f34a3053bc3e', 37, 'App\\Models\\ApplicationELicense', 5, '5', '2020', 1, '105', '2020', '5/2021-2022(R-1/2022-2023)/105', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2020-12-29 18:00:00', '2022-12-31', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-19 12:42:49', '2023-12-19 12:42:49', 0),
(24, 'd8764965-24dd-4b63-bc67-8f763b5ffe50', 36, 'App\\Models\\ImportExportPermit', 3, '3', '2023', NULL, NULL, NULL, '3/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2023-12-20 03:32:35', '2025-12-20', 'DRAFT_FINALIZED', 0, 1723, 1729, NULL, '2023-12-19 12:52:43', '2023-12-20 05:13:04', 0),
(25, 'ce18aedf-027d-4b8f-9f45-ed58ee783890', 38, 'App\\Models\\ClassCLicenseApplication', 3, '10008', '2023', NULL, NULL, NULL, '10008/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '<p>vd</p>', 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-19 13:29:14', '2023-12-19', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-19 13:09:28', '2023-12-19 13:29:14', 0),
(26, '6a75316b-9f20-4892-aa76-1c0907884db6', 38, 'App\\Models\\ClassCLicenseApplication', 7, '10009', '2023', NULL, NULL, NULL, '10009/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-19 14:52:40', '2024-12-31', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-19 14:48:43', '2023-12-19 14:52:40', 0),
(27, '6d9cf77f-aace-4810-9c54-d86806333314', 37, 'App\\Models\\ApplicationELicense', 6, '10010', '2023', NULL, NULL, NULL, '10010/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-19 15:17:19', '2024-12-31', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-19 15:14:12', '2023-12-19 15:17:19', 0),
(28, 'fc0af082-0c0a-42e5-bfdc-f790240d9134', 133, 'App\\Models\\ClassDApplication', 2, '202333', '2023', NULL, NULL, NULL, '202333/2023', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'd', 'd', '2023-11-30 18:00:00', '2023-12-05', 'APPROVED', 0, 1731, 1731, NULL, '2023-12-20 03:48:47', '2023-12-20 03:48:47', 0),
(29, '4358b7be-f29f-4953-a188-86d940e5a662', 133, 'App\\Models\\ClassDApplication', 5, '10011', '2023', NULL, NULL, NULL, '10011/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '<p>e</p>', 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2023-12-20 05:18:13', '2025-12-12', 'APPROVED', 0, 1723, 1731, NULL, '2023-12-20 04:40:55', '2023-12-20 05:18:13', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(30, 'c83e4043-88d5-478e-9bb1-04e51b8961a8', 36, 'App\\Models\\ImportExportPermit', 4, '4', '2023', NULL, NULL, NULL, '4/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><br></p><p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-20 05:08:44', '2024-03-30', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-20 05:01:36', '2023-12-20 05:08:44', 0),
(31, '74f89819-06ec-4f2d-9b1e-7d606c2c61db', 57, 'App\\Models\\RcoApplication', 1, '4', '2023', NULL, NULL, NULL, '4/2023-2024', NULL, NULL, NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2023-12-20 05:18:13', '2024-12-20', 'APPROVED', 0, 1731, 1731, NULL, '2023-12-20 05:18:13', '2023-12-20 05:18:13', 0),
(32, '63011165-960b-4d9f-9fc9-0e39eb48f324', 38, 'App\\Models\\ClassCLicenseApplication', 9, '10012', '2023', NULL, NULL, NULL, '10012/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-20 08:36:35', '2023-12-20', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-20 08:23:05', '2023-12-20 08:36:35', 0),
(33, 'c6f976d9-c4b5-4b33-b938-25591127bfa6', 133, 'App\\Models\\ClassDApplication', 6, '10013', '2023', NULL, NULL, NULL, '10013/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '<p>asdv</p>', 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-20 10:14:50', '2024-12-04', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-20 09:37:58', '2023-12-20 10:14:50', 0),
(34, '6ebf40e9-880f-4eda-84c5-29be7666dd55', 37, 'App\\Models\\ApplicationELicense', 7, '10014', '2023', NULL, NULL, NULL, '10014/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-20 10:44:25', '2024-12-25', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-20 10:33:57', '2023-12-20 10:44:25', 0),
(35, '950c9254-37fa-43a7-8c6d-80d9604a601a', 36, 'App\\Models\\ImportExportPermit', 5, '5', '2023', NULL, NULL, NULL, '5/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2023-12-31', 'PERMIT_DRAFTED', 0, 1723, 1723, NULL, '2023-12-20 11:28:11', '2023-12-20 11:28:44', 0),
(36, '115cfeff-2127-4f40-848f-f206a951e723', 38, 'App\\Models\\ClassCLicenseApplication', 10, '10015', '2023', NULL, NULL, NULL, '10015/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2023-12-31', 'PERMIT_DRAFTED', 0, 1723, 1723, NULL, '2023-12-20 11:28:13', '2023-12-20 11:28:44', 0),
(37, '6032eaef-f30d-4546-8752-08cbcd76a1cf', 38, 'App\\Models\\ClassCLicenseApplication', 11, '10016', '2023', NULL, NULL, NULL, '10016/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2023-12-21 03:55:43', '2026-12-11', 'APPROVED', 0, 1723, 1731, NULL, '2023-12-21 03:42:22', '2023-12-21 03:55:43', 0),
(38, '080c14d6-2256-4e7a-8dbf-1e02e684d83a', 67, 'App\\Models\\ClassAApplication', 16, '10017', '2023', NULL, NULL, NULL, '10017/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Chairman', '2023-12-21 04:38:53', '2025-12-13', 'APPROVED', 0, 1723, 1729, NULL, '2023-12-21 03:42:30', '2023-12-21 04:38:53', 0),
(39, 'da8edf6f-4f91-41b9-a853-1c85749397b2', 37, 'App\\Models\\ApplicationELicense', 15, '5', '2021', 1, '106', '2021', '5/2021-2022(R-1/2022-2023)/106', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2021-12-02 18:00:00', '2023-12-31', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-30 13:40:36', '2023-12-30 13:40:36', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(40, 'd29af1a5-aa65-476e-b3c8-4b7bffef84b3', 38, 'App\\Models\\ClassCLicenseApplication', 18, '8', '2021', 1, '121', '2021', '8/2021-2022(R-1/2022-2023)/121', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. M N', 'Director', '2021-09-29 18:00:00', '2023-12-31', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-30 13:53:01', '2023-12-30 13:53:01', 0),
(41, 'eb269647-0e3c-43c3-a135-f6e5da8d4816', 37, 'App\\Models\\ApplicationELicense', 16, '134', '2022', NULL, NULL, NULL, '134/2022', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Alamgir', 'Computer operator', '2022-12-24 18:00:00', '2024-06-30', 'APPROVED', 0, 1700, 1700, NULL, '2023-12-30 14:08:20', '2023-12-30 14:08:20', 0),
(42, '30c8fb6d-9e91-4222-9834-164766daa93c', 37, 'App\\Models\\ApplicationELicense', 77, '10018', '2024', NULL, NULL, NULL, '10018/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2024-01-01 04:52:43', '2025-01-11', 'APPROVED', 0, 1727, 1731, NULL, '2023-12-31 10:08:59', '2024-01-01 04:52:44', 0),
(43, 'f34e2314-5d42-421f-b815-c6e03dfdafbc', 57, 'App\\Models\\RcoApplication', 19, '11', '2019', 1, '20', '2019', '11/2019-2020(R-1/2020-2021)/20', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. Meherun Nahar', 'Director', '2019-01-08 18:00:00', '2024-01-20', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-01 07:46:26', '2024-01-01 07:46:26', 0),
(44, '9e294076-41da-4110-813d-ec8ee844fecb', 133, 'App\\Models\\ClassDApplication', 10, '10019', '2024', NULL, NULL, NULL, '10019/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', '<p>This is a forwarding letter from lutfunnessa</p>', NULL, NULL, NULL, NULL, '2025-01-18', 'PERMIT_DRAFT', 0, 1722, 1701, NULL, '2024-01-01 09:45:33', '2024-01-01 09:58:38', 0),
(46, '018bda76-412b-4b40-85ec-ea2353cbe8f2', 38, 'App\\Models\\ClassCLicenseApplication', 21, '11', '2019', 1, '20', '2019', '11/2019-2020(R-1/2020-2021)/20', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Mostofa', 'Director', '2019-11-06 18:00:00', '2023-06-30', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-01 11:27:00', '2024-01-01 11:27:00', 0),
(47, '2618d108-ccf0-4338-9e0c-61d39e5eeab8', 67, 'App\\Models\\ClassAApplication', 28, '982982', '2018', NULL, NULL, NULL, '982982/2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Fatema', 'Frontdesk Officer', '2018-02-07 18:00:00', '2025-01-16', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-01 11:31:10', '2024-01-01 11:31:10', 0),
(48, 'babd44d2-36a5-4329-807a-0110ffd664fd', 37, 'App\\Models\\ApplicationELicense', 74, '4597', '2023', 3, '266', '2023', '4597/2018(R-03/2021-2022)/266', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'k', 'g', '2023-12-30 18:00:00', '2023-12-31', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-01 13:17:50', '2024-01-01 13:17:50', 0),
(49, '6436b8ac-ab68-41c8-adf1-1ca25e416ad7', 36, 'App\\Models\\ImportExportPermit', 10, '6', '2024', NULL, NULL, NULL, '6/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 13:36:45', '2024-03-10', 'APPROVED', 0, 1699, 1729, NULL, '2024-01-01 13:19:38', '2024-01-01 13:36:45', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(50, '4f7ac37f-e587-4d05-b28e-b0e28afa5d2b', 37, 'App\\Models\\ApplicationELicense', 82, '10020', '2024', NULL, NULL, NULL, '10020/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 13:36:45', '2024-12-31', 'APPROVED', 0, 1699, 1729, NULL, '2024-01-01 13:19:45', '2024-01-01 13:36:45', 0),
(51, 'e439a8bf-d83e-41e3-acbe-4bacaedba8c1', 57, 'App\\Models\\RcoApplication', 20, '5', '2024', NULL, NULL, NULL, '5/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 13:36:45', '2024-12-31', 'APPROVED', 0, 1699, 1729, NULL, '2024-01-01 13:19:56', '2024-01-01 13:36:45', 0),
(52, 'd6306e10-1d5a-4a7d-9213-26ac0eccbe91', 57, 'App\\Models\\RcoApplication', 13, '7', '2023', NULL, NULL, NULL, '7/2023', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'k', 'g', '2023-12-30 18:00:00', '2023-12-31', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-01 13:20:00', '2024-01-01 13:20:00', 0),
(53, '940ba40a-be9f-4500-9fdf-ceb6c379e26b', 67, 'App\\Models\\ClassAApplication', 27, '10021', '2024', NULL, NULL, NULL, '10021/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) &amp; 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div></div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 16:10:54', '2026-08-26', 'APPROVED', 0, 1722, 1729, NULL, '2024-01-01 15:16:40', '2024-01-01 16:10:54', 0),
(54, 'af7c1c06-e4df-46d3-a1d8-8d8e6d64b817', 38, 'App\\Models\\ClassCLicenseApplication', 26, '10022', '2024', NULL, NULL, NULL, '10022/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 15:41:24', '2024-12-31', 'APPROVED', 0, 1699, 1729, NULL, '2024-01-01 15:33:01', '2024-01-01 15:41:24', 0),
(55, '4ec098de-824f-41a6-98b7-63215e5eb7bf', 57, 'App\\Models\\RcoApplication', 14, '6', '2024', NULL, NULL, NULL, '6/2023-2024', NULL, NULL, NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-01 16:10:54', '2025-01-01', 'APPROVED', 0, 1729, 1729, NULL, '2024-01-01 16:10:55', '2024-01-01 16:10:55', 0),
(56, '17ed7c26-5884-479a-a592-8afd6651eb5a', 36, 'App\\Models\\ImportExportPermit', 14, '7', '2024', NULL, NULL, NULL, '7/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2024-01-02 04:29:24', '2024-03-31', 'APPROVED', 0, 1722, 1731, NULL, '2024-01-02 01:58:30', '2024-01-02 04:29:24', 0),
(57, '3185a467-14ae-440f-b442-2c45a217dbfb', 37, 'App\\Models\\ApplicationELicense', 81, '10023', '2024', NULL, NULL, NULL, '10023/2023-2024', NULL, '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2024-01-02 04:29:24', '2025-01-31', 'APPROVED', 0, 1722, 1731, NULL, '2024-01-02 01:59:27', '2024-01-02 04:29:24', 0),
(58, '329ed718-2870-48b3-bc2b-7d60213064ee', 57, 'App\\Models\\RcoApplication', 17, '7', '2024', NULL, NULL, NULL, '7/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, 1731, 'Engr. Md. Muzammel Haque', 'Chairman', '2024-01-02 04:29:24', '2025-01-31', 'APPROVED', 0, 1722, 1731, NULL, '2024-01-02 01:59:52', '2024-01-02 04:29:24', 0),
(59, 'c650f7b5-eda9-4e4d-bd33-39e03aa8e8fc', 36, 'App\\Models\\ImportExportPermit', 11, '8', '2024', NULL, NULL, NULL, '8/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2025-02-14', 'PERMIT_DRAFT', 1, 1724, 1699, NULL, '2024-01-02 04:26:15', '2024-01-02 04:35:09', 0);
INSERT INTO `license_s5zyr2p6_license_permits` (`id`, `uuid`, `service_mapping_id`, `application_model`, `application_id`, `license_permit_number`, `issue_year`, `revision`, `rev_license_permit_number`, `renewal_year`, `license_permit_madeup_number`, `parent_id`, `content`, `forwarding_letter`, `issued_by`, `issuer_name`, `issuer_designation`, `issued_at`, `expiry_date`, `status`, `is_checked`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`) VALUES
(60, '5f2e6134-058d-4faa-9f14-2527746052bb', 67, 'App\\Models\\ClassAApplication', 3, '10024', '2024', NULL, NULL, NULL, '10024/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2025-01-01', 'PERMIT_DRAFT', 1, 1724, 1699, NULL, '2024-01-02 04:26:44', '2024-01-02 04:35:10', 0),
(61, 'f03e5fa4-6093-4228-86ef-d2eefe9581dd', 38, 'App\\Models\\ClassCLicenseApplication', 32, '5333', '2020', 2, '1191', '2020', '5333/2020(R-02/2021-2022)/1191', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. Meherun Nahar', 'Director', '2020-01-04 18:00:00', '2022-12-31', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-02 07:06:08', '2024-01-02 07:06:08', 0),
(62, '6f4f7da2-0bbb-44ff-9f87-2cde9b88ded3', 38, 'App\\Models\\ClassCLicenseApplication', 34, '5333', '2020', 1, '1', '2024', '5333/2023-2024(R-1/2023-2024)/1', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) &amp; 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong>&nbsp;and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n</div>', NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-02 11:07:09', '2024-06-30', 'APPROVED', 0, 1723, 1729, NULL, '2024-01-02 10:39:02', '2024-01-02 11:07:10', 0),
(63, '4402494d-8b16-404b-b53d-9cf8e6a19a91', 57, 'App\\Models\\RcoApplication', 23, '8', '2024', NULL, NULL, NULL, '8/2023-2024', NULL, NULL, NULL, 1729, 'Dr. Meherun Nahar', 'Director', '2024-01-02 11:07:09', '2025-01-02', 'APPROVED', 0, 1729, 1729, NULL, '2024-01-02 11:07:10', '2024-01-02 11:07:10', 0),
(64, '103fa0d3-7322-4b47-b300-520bf5b9abf5', 38, 'App\\Models\\ClassCLicenseApplication', 38, '6158', '2022', NULL, NULL, NULL, '6158/2021-2022', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Dr. Meherun Nahar', 'Director', '2022-06-19 18:00:00', '2023-06-30', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-04 05:32:00', '2024-01-04 05:32:00', 0),
(65, '02db1ddb-77cb-42b2-b56b-fef8c400e3db', 38, 'App\\Models\\ClassCLicenseApplication', 39, '4986', '2018', NULL, NULL, NULL, '4986/2018', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', NULL, NULL, 'Lutfun', 'PSO', '2018-10-17 18:00:00', '2023-12-31', 'APPROVED', 0, 1699, 1699, NULL, '2024-01-04 05:41:24', '2024-01-04 05:41:24', 0),
(66, 'd4c4bf0c-7c01-4480-aefd-ea55d0fc3a28', 38, 'App\\Models\\ClassCLicenseApplication', 37, '10025', '2024', NULL, NULL, NULL, '10025/2023-2024', NULL, '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>', NULL, NULL, NULL, NULL, NULL, '2026-01-10', 'PERMIT_DRAFT', 0, 1699, 1699, NULL, '2024-01-04 06:33:58', '2024-01-04 06:37:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_license_renewal_fees`
--

CREATE TABLE `license_s5zyr2p6_license_renewal_fees` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `facility_practice_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facility_practice_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_fee` decimal(12,2) DEFAULT NULL,
  `renewal_fee` decimal(12,2) DEFAULT NULL,
  `amendment_fee` int DEFAULT NULL COMMENT 'In Percentage',
  `surcharge` decimal(12,2) DEFAULT NULL,
  `description_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_license_renewal_fees`
--

INSERT INTO `license_s5zyr2p6_license_renewal_fees` (`id`, `uuid`, `organization_id`, `organogram_id`, `service_mapping_id`, `facility_practice_en`, `facility_practice_bn`, `category`, `license_fee`, `renewal_fee`, `amendment_fee`, `surcharge`, `description_en`, `description_bn`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(7, 'be8bbcff-353a-4c5d-ba52-9443a954d5d3', 7, NULL, 37, 'রেডিওথেরাপি যন্ত্রপাতি যেমন-লিনিয়ার এক্সিলিটর, বিটাট্রন ইত্যাদি', 'রেডিওথেরাপি যন্ত্রপাতি যেমন-লিনিয়ার এক্সিলিটর, বিটাট্রন ইত্যাদি', NULL, 375000.00, 75000.00, NULL, NULL, NULL, NULL, 1, 1, '2022-12-21 15:16:13', '2022-12-21 15:09:19', '2022-12-21 15:16:13', 0, 1),
(8, 'fa30903e-f06c-481b-b1cb-1e5d3d89dbc8', 7, 4264, 38, 'Irradiating Facility', 'বিকিরণকারী স্থাপনা', NULL, 180000.00, 45000.00, NULL, NULL, NULL, NULL, 1, 1, '2023-05-31 15:07:13', '2022-12-21 15:18:06', '2023-05-31 15:07:13', 1, 0),
(9, 'd469ad9f-02bd-4b45-aabc-44df7dd8e3d2', 7, 4264, 37, 'License for import and export of radioactive material, nuclear material or any prescribed substances or their wastes.', 'তেজস্ক্রীয় পদার্থ, পারমাণবিক পদার্থ অথবা অন্য কোনো নির্ধারিত পদার্থ অথবা ইহাদের বর্জ্যের আমদানী এবং রপ্তানীর লাইসেন্স', 'N/A', 15000.00, 15000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-01-05 15:18:41', '2023-06-15 20:29:39', 2, 1),
(11, 'ceae934a-eec9-496d-85ea-9e498359cf35', 7, 4264, 38, 'X-ray machines used for diagnosis in clinics, hospitals, nursing homes, etc. (Per Unit)', 'রোগ নির্ণয়ের জন্য ক্লিনিক, হাসপাতাল, নার্সিং হোম, ইত্যাদি  প্রতিষ্ঠানে  ব্যবহৃত এক্স-রে মেশিন (প্রতি ইউনিট)', 'PER_UNIT', 15000.00, 3000.00, 50, 200.00, 'Description dfd', NULL, 1, 1, NULL, '2023-03-07 19:11:07', '2023-06-15 20:31:44', 1, 1),
(12, '629d1234-1615-4276-913b-810b5c59cac5', 7, 1, 67, 'Full-fledged Medical centres which have Radiotherapy devices exists', 'পূর্ণাঙ্গ চিকিৎসা কেন্দ্র  যেখানে রেডিওথেরাপি যন্ত্রপাতি যেমন-লিনিয়ার এক্সিলিটর, বিটাট্রন ইত্যাদি রয়েছে', 'FACILITY_COMPLETE', 375000.00, 75000.00, 50, 500.00, 'For Example: Linear Axcelerator, Bitatron, Cobalt-60, Cesium-137, Deep X-Ray', 'যেমন-লিনিয়ার এক্সিলিটর, বিটাট্রন ইত্যাদি', 1, 1, NULL, '2023-03-07 19:13:00', '2023-06-15 21:04:35', 10, 1),
(13, 'd5e1b05a-d1eb-4ae6-b5fe-68d6bf940a37', 7, 4264, 133, 'Class D : Transport license for radioactive material, nuclear material or any other prescribed material or its waste', 'ঘ শ্রেণী : তেজস্ক্রীয় পদার্থ, পারমাণবিক পদার্থ অথবা অন্য কোন নির্ধারিত পদার্থ অথবা ইহাদের বর্জ্যের পরিবহন লাইসেন্স', 'N/A', 15000.00, 3000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-06-08 16:41:54', '2023-06-15 20:32:37', 4, 1),
(14, '73ab6dbf-5a88-4a22-a155-461e65c6e569', 7, 4264, 38, 'RIA Equipments used in Research, Education and Testing Institutions (per unit)', 'গবেষণা, শিক্ষা ও পরীক্ষা কাজে নিয়োজিত প্রতিষ্ঠানে ব্যবহৃত আর.আই.এ. যন্ত্রপাতি (ইউনিটপ্রতি)', 'PER_UNIT', 15000.00, 3000.00, 50, 500.00, 'XRD', 'XRD', 1, 1, NULL, '2023-06-15 20:40:17', '2023-06-15 20:40:17', 11, 1),
(15, '56110cba-c27e-4d8b-af13-b19f518cbab4', 7, 4264, 38, 'Radiotherapy Center or Nuclear Medicine Center or Nuclear Cardiology Center (Single Facility)', 'রেডিওথেরাপি কেন্দ্র বা পরমাণু চিকিৎসা কেন্দ্র বা পরমাণু কার্ডিওলজি কেন্দ্র (একক স্থাপনা )', 'FACILITY_SINGLE', 112500.00, 15000.00, 50, 500.00, 'For example: Linear Accelerator (LINAC), Betatron, Deep X-Ray, Brackytherapy (X-Ray)', 'যেমন: লিনিয়ার এক্সিলারেটর (LINAC), বিটাট্রন, গভীর এক্সরে (Deep X-Ray), Brackytherapy (X-Ray)', 1, 1, NULL, '2023-06-15 20:45:43', '2023-06-15 20:45:43', 12, 1),
(16, '77ff16af-a05b-4b7e-9dbf-215d95b4e98d', 7, 4264, 38, 'Industry, mineral resource extraction, etc. in organizations using radioactive equipment such as; Industrial X-ray, XRD, Baggage Scanner', 'শিল্প, খনিজ সম্পদ আহরণ ইত্যাদি প্রতিষ্ঠানে ব্যবহৃত তেজস্ক্রীয় যন্ত্রপাতি ব্যবহারকারী প্রতিষ্ঠানে যেমন; Industrial X-ray, XRD, Baggage Scanner', 'FACILITY_COMPLETE', 45000.00, 15000.00, 50, 500.00, 'যেমন; Industrial X-ray, XRD, Baggage Scanner', 'যেমন; Industrial X-ray, XRD, Baggage Scanner', 1, 1, NULL, '2023-06-18 11:47:09', '2023-06-18 11:47:09', 111, 1),
(17, '080ce673-173d-4ed0-a7db-0ada278fcfae', 7, 1, 67, 'Full-fledged Medical Center with Diagnostic Equipment like Gamma Camera, Linear Scanner, RIA Equipment', 'পূর্ণাঙ্গ চিকিৎসা কেন্দ্র  যেখানে রোগ নির্ণায়ক যন্ত্রপাতি যেমন: গামা ক্যামেরা, লিনিয়ার স্ক্যানার, আর আই এ যন্ত্রপাতি রয়েছে', 'FACILITY_COMPLETE', 225000.00, 30000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-12-06 12:24:46', '2023-12-06 12:24:46', 1, 1),
(18, '09dfb73e-75ef-43fa-8b6d-6162ba5c09f7', 7, 1, 67, 'Radiotherapy Center or Nuclear Medicine Center or Nuclear Cardiology Center', 'রেডিওথেরাপি কেন্দ্র বা পরমাণু চিকিৎসা কেন্দ্র বা পরমাণু কার্ডিওলজি কেন্দ্র', 'FACILITY_SINGLE', 112500.00, 15000.00, 50, 500.00, 'For example: Teletherapy, Brachytherapy (Radioactive Source), PET-CT, Gamma Knife, Gamma Camera, Radioimmunoassay Apparatus (RIA), SPECT, etc.', 'যেমন: টেলিথেরাপি, ব্র্যাকিথেরাপি (তেজস্ত্রীয় উৎস), পিইট-সিটি, গামা নাইফ, গামা ক্যামেরা, রেডিওইম্যুনোঅ্যাসে যন্ত্র (RIA), SPECT, ইত্যাদি', 1, 1, NULL, '2023-12-06 12:41:30', '2023-12-06 12:41:30', 1, 1),
(19, 'fb7f273b-4766-4d23-922a-d9ab5bd1f5bb', 7, 1, 67, 'Medical Cyclotron/Radio Isotope Production Facility', 'মেডিক্যাল সাইক্লোট্রোন/রেডিও আইসোটোপ উৎপাদন সংক্রান্ত স্থাপনা', 'FACILITY_SINGLE', 200000.00, 100000.00, 50, 0.00, NULL, NULL, 1, 1, NULL, '2023-12-06 12:45:04', '2023-12-06 12:45:04', 1, 1),
(20, '816afc0b-b41e-48d4-a95e-88b4881d20d9', 7, 1, 67, 'Organization using Radioactive Sources used in Industry, Mineral Resource Extraction, etc.', 'শিল্প, খনিজ সম্পদ আহরণ ইত্যাদি প্রতিষ্ঠানে ব্যবহৃত তেজস্ক্রীয় উৎস ব্যবহারকারী প্রতিষ্ঠান', 'N/A', 45000.00, 15000.00, 50, 500.00, 'For example, NDT- Radioactive Source, Well logging, Nucleaning Gauge, ECD, XRF, etc.', 'যেমন: NDT- Radioactive Source, Well logging, Nucleaning Gauge, ECD, XRF, ইত্যাদি', 1, 1, NULL, '2023-12-06 12:49:00', '2023-12-06 12:49:00', 1, 1),
(21, '973e45c0-040c-49f2-853c-e4dcac9bedd3', 7, 1, 67, 'RIA used in Research, Education and Testing Institutions. Equipment and Radioactive Materials Management', 'গবেষণা, শিক্ষা ও পরীক্ষা কাজে নিয়োজিত প্রতিষ্ঠানে ব্যবহৃত আর.আই.এ. যন্ত্রপাতি এবং তেজস্ক্রিয় পদার্থ পূর্ণপরিচালন', 'PER_UNIT', 15000.00, 3000.00, 50, 500.00, 'For example, XRF, ECD, RIA etc.', 'যেমন: XRF, ECD, RIA, ইত্যাদি', 1, 1, NULL, '2023-12-06 12:54:45', '2023-12-06 12:54:45', 1, 1),
(22, '46d9da36-ba90-4f6f-a659-984d5056b847', 7, 1, 67, 'Blood Irradiator', 'ব্লাড ইরেডিয়েটর', 'N/A', 180000.00, 45000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-12-06 12:56:24', '2023-12-06 12:56:24', 1, 1),
(23, 'd5324537-5059-467a-a71d-8abd7a763ec4', 7, 1, 67, '50,000 curie per unit Commercial Irradiator Installation', 'প্রতি ইউনিট ৫০,০০০ কুরী ক্ষমতাসম্পন্ন বাণিজ্যিক বিকিরণকারী স্থাপনা', 'PER_UNIT', 180000.00, 45000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-12-06 12:59:23', '2023-12-06 13:02:48', 1, 1),
(24, '42c13f09-d1b5-4398-b048-b59e0e24064a', 7, 1, 67, 'Commercial Radiating Installations of Sources with a capacity exceeding 50,000 curies per unit', 'প্রতি ইউনিট ৫০,০০০ কুরী-এর অধিক ক্ষমতাসম্পন্ন উৎসের বাণিজ্যিক বিকিরণকারী স্থাপনা', 'PER_UNIT', 270000.00, 67500.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-12-06 13:07:31', '2023-12-06 13:07:31', 1, 1),
(25, 'f040351f-4718-4368-b55a-8f9735bc41d6', 7, 1, 67, 'For each 10,000 curie or part thereof for Non-Commercial Radiating Installations having a capacity of less than 50,000 curie per unit', 'প্রতি ইউনিট ৫০,০০০ কুরী-এর কম ক্ষমতাসম্পন্ন অবাণিজ্যিক বিকিরণকারী স্থাপনার জন্য প্রতি ১০,০০০ কুরি অথবা অংশবিশেষ', 'PER_UNIT', 18000.00, 3000.00, 50, 500.00, NULL, NULL, 1, 1, NULL, '2023-12-06 13:11:16', '2023-12-06 13:11:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_license_renewal_fee_steps`
--

CREATE TABLE `license_s5zyr2p6_license_renewal_fee_steps` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `license_renewal_fee_id` bigint UNSIGNED DEFAULT NULL,
  `step_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_fee` decimal(12,2) DEFAULT NULL,
  `renewal_fee` decimal(12,2) DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_license_renewal_fee_steps`
--

INSERT INTO `license_s5zyr2p6_license_renewal_fee_steps` (`id`, `uuid`, `license_renewal_fee_id`, `step_name`, `license_fee`, `renewal_fee`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(13, '8607d5d8-986f-4c76-8c5f-d6f9c45ee112', 12, 'স্থান নির্ধারণ লাইসেন্স', 150000.00, NULL, 1, 1, '2023-05-18 11:01:49', '2023-03-07 19:13:00', '2023-05-18 11:01:49'),
(14, 'd4c62fbe-921b-4f00-ae30-e60495ab840d', 12, 'সাময়িক পরিচালন লাইসেন্স', 75000.00, NULL, 1, 1, '2023-05-18 11:01:49', '2023-03-07 19:13:00', '2023-05-18 11:01:49'),
(15, '9f948a14-ecaa-4198-8b1b-e217f2af4a13', 12, 'পূর্ণ পরিচালনা লাইসেন্স', 150000.00, NULL, 1, 1, '2023-05-18 11:01:49', '2023-03-07 19:13:00', '2023-05-18 11:01:49'),
(16, '8ec6bfca-192e-4e35-b4f7-98ee47cce702', 11, 'স্থান নির্ধারণ লাইসেন্স', 150000.00, NULL, 1, 1, '2023-04-15 13:16:05', '2023-03-07 19:13:19', '2023-04-15 13:16:05'),
(17, '21168f98-4d93-4990-a7bc-52a322699ac8', 11, 'সাময়িক পরিচালন লাইসেন্স', 75000.00, NULL, 1, 1, '2023-04-15 13:16:05', '2023-03-07 19:13:19', '2023-04-15 13:16:05'),
(18, '3b9b2e5b-323e-4efd-98fc-c228a8086078', 11, 'পূর্ণ পরিচালনা লাইসেন্স', 150000.00, NULL, 1, 1, '2023-04-15 13:16:05', '2023-03-07 19:13:19', '2023-04-15 13:16:05'),
(19, 'f044bfb2-9656-4d2b-b3f3-301cb64317a8', 8, 'Siting License', 60000.00, NULL, 1, 1, NULL, '2023-03-07 19:15:52', '2023-03-07 19:15:52'),
(20, 'f48bc021-ad9f-462a-8d3e-9ef6f129b1a6', 8, 'Startup License', 60000.00, NULL, 1, 1, NULL, '2023-03-07 19:15:52', '2023-03-07 19:15:52'),
(21, '28ac17df-c789-4dbe-92ca-a5ba65c43411', 8, 'Full Operating License', 60000.00, NULL, 1, 1, NULL, '2023-03-07 19:15:52', '2023-03-07 19:15:52'),
(22, '8b90a3b4-3642-487e-a19d-ba543e35704c', 11, 'পূর্ণ পরিচালনা লাইসেন্স', 15000.00, 3000.00, 1, 1, '2023-05-17 12:07:16', '2023-04-15 13:16:05', '2023-05-17 12:07:16'),
(23, 'f353f9e2-f27a-4c14-99a1-4f28a7cdb7b6', 11, 'পূর্ণ পরিচালনা লাইসেন্স/Fully Operational License', 15000.00, 3000.00, 1, 1, '2023-05-25 15:11:28', '2023-05-17 12:07:16', '2023-05-25 15:11:28'),
(24, 'd06b2e34-65ea-485f-b42b-0bd3f35172bd', 12, 'স্থান নির্ধারণ লাইসেন্স', 150000.00, NULL, 1, 1, '2023-05-18 11:11:55', '2023-05-18 11:01:49', '2023-05-18 11:11:55'),
(25, 'ffbdd6fd-0cd9-49a7-ab10-ae09ac132082', 12, 'সাময়িক পরিচালন লাইসেন্স', 75000.00, NULL, 1, 1, '2023-05-18 11:11:55', '2023-05-18 11:01:49', '2023-05-18 11:11:55'),
(26, '0c37fa4c-761f-4227-b721-4bab3ea93fa5', 12, 'পূর্ণ পরিচালনা লাইসেন্স/Fully Operational License', 150000.00, NULL, 1, 1, '2023-05-18 11:11:55', '2023-05-18 11:01:49', '2023-05-18 11:11:55'),
(27, 'fbd1fe47-224d-436a-be20-506b3a3ca8f1', 12, 'স্থান নির্ধারণ লাইসেন্স (Siting)', 150000.00, NULL, 1, 1, '2023-05-18 11:12:54', '2023-05-18 11:11:55', '2023-05-18 11:12:54'),
(28, '0249cc14-f4d0-4e4c-bb7e-1a7d46823076', 12, 'সাময়িক পরিচালন লাইসেন্স (Temporary Operational)', 75000.00, NULL, 1, 1, '2023-05-18 11:12:54', '2023-05-18 11:11:55', '2023-05-18 11:12:54'),
(29, '54de4d9b-7598-4f94-85cb-6da427c2a282', 12, 'পূর্ণ পরিচালনা লাইসেন্স (Full Operational)', 150000.00, NULL, 1, 1, '2023-05-18 11:12:54', '2023-05-18 11:11:55', '2023-05-18 11:12:54'),
(30, '1d3c2c6f-8413-4a68-b8bb-d3e031329e41', 12, 'স্থান নির্ধারণ লাইসেন্স (Siting)', 150000.00, NULL, 1, 1, NULL, '2023-05-18 11:12:54', '2023-05-18 11:12:54'),
(31, '5f6a0683-bb13-4360-9c75-953cc6dc026b', 12, 'সাময়িক পরিচালন লাইসেন্স (Temporary Operation)', 75000.00, NULL, 1, 1, NULL, '2023-05-18 11:12:54', '2023-05-18 11:12:54'),
(32, '492216f2-b1f6-447e-a5c0-5cf65f9bd3b5', 12, 'পূর্ণ পরিচালনা লাইসেন্স (Full Operation)', 150000.00, NULL, 1, 1, NULL, '2023-05-18 11:12:54', '2023-05-18 11:12:54'),
(33, '066c22ba-a8d4-4610-a4d0-93ca6e724f1f', 11, 'পূর্ণ পরিচালনা লাইসেন্স/Fully Operational License', 15000.00, 15000.00, 1, 1, '2023-05-28 17:10:48', '2023-05-25 15:11:28', '2023-05-28 17:10:48'),
(34, '03b28dd3-7639-4bbc-bafb-f8c5d1f70a0a', 11, 'পূর্ণ পরিচালনা লাইসেন্স/Fully Operational License', 15000.00, 3000.00, 1, 1, NULL, '2023-05-28 17:10:48', '2023-05-28 17:10:48');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_license_surrender_transfers`
--

CREATE TABLE `license_s5zyr2p6_license_surrender_transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_application_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_id` bigint UNSIGNED DEFAULT NULL,
  `radioactive_material_state` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `waste_management` json DEFAULT NULL,
  `other_waste_management` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `waste_management_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surrender_date` date DEFAULT NULL,
  `surrender_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_license_surrender_transfers`
--

INSERT INTO `license_s5zyr2p6_license_surrender_transfers` (`id`, `uuid`, `organization_id`, `service_mapping_id`, `current_active_step`, `tracking_number`, `application_reason`, `other_application_reason`, `license_type`, `license_id`, `radioactive_material_state`, `waste_management`, `other_waste_management`, `waste_management_attachment`, `surrender_date`, `surrender_attachment`, `submission_date`, `is_agreed`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`) VALUES
(1, 'bef976cb-e26c-443b-9190-cad80e56d67f', 7, 66, 3, 'SURR-202401010001', 'SURRENDER', NULL, 'CLASS_A', 2, NULL, '[\"SUPPLIER\"]', NULL, NULL, '2023-10-03', NULL, '2024-01-01', 1, 1758, 1758, '2024-01-01 10:08:42', '2024-01-01 10:08:46', 'SUBMITTED');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_migrations`
--

CREATE TABLE `license_s5zyr2p6_migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_migrations`
--

INSERT INTO `license_s5zyr2p6_migrations` (`id`, `migration`, `batch`) VALUES
(1, '2020_08_31_120908_create_examples_table', 1),
(2, '2021_11_08_114933_create_radiation_related_products_table', 1),
(3, '2021_11_08_151725_create_product_type_models_table', 1),
(4, '2021_11_08_155954_create_suppliers_table', 1),
(5, '2021_11_08_164808_create_ports_table', 1),
(6, '2021_11_08_174458_create_manufacturers_table', 1),
(7, '2021_11_08_180057_create_facility_practices_table', 1),
(9, '2021_11_09_093929_create_license_amendment_fees_table', 1),
(10, '2021_11_09_101406_create_permit_fees_table', 1),
(12, '2021_11_10_102012_create_radiation_control_officers_table', 1),
(14, '2021_11_14_105501_create_license_issues_table', 1),
(15, '2021_11_14_142609_create_permit_issues_table', 1),
(16, '2021_11_08_114933_create_products_table', 2),
(19, '2021_11_08_182503_create_license_renewal_fees_table', 3),
(20, '2021_11_09_114133_create_application_e_licenses_table', 4),
(21, '2021_11_10_105055_create_class_c_license_applications_table', 4),
(22, '2022_02_15_173844_create_port_names_table', 4),
(23, '2022_02_16_155043_create_applications_table', 4),
(24, '2022_02_17_181758_class_c_license_supervisor_identifiers_table', 4),
(25, '2022_02_23_144455_create_class_c_license_equipment_users_table', 4),
(26, '2022_02_23_235751_create_class_c_license_equipment_details_table', 4),
(27, '2022_02_24_024556_class_c_license_present_equipments_table', 4),
(28, '2022_02_28_172541_create_class_c_license_safety_equipments_table', 4),
(29, '2022_02_28_175648_create_class_c_license_caretaker_experiences_table', 4),
(30, '2022_02_28_193840_create_class_c_license_caretaker_tranings_table', 4),
(31, '2022_02_28_225459_create_class_c_license_paper_attachments_table', 4),
(32, '2022_02_28_232303_create_class_c_license_personnel_monitorings_table', 4),
(33, '2022_03_08_114744_create_class_e_license_radioactive_material_infos_table', 5),
(34, '2022_03_08_134516_create_class_e_license_radiating_equipment_infos_table', 5),
(35, '2022_03_08_145429_create_class_e_license_paper_attachments_table', 5),
(36, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(37, '2022_06_29_181558_alter_organization_ids_component_ids_column_modify_in_some_table', 7),
(38, '2022_07_14_163231_create_manufacturer_types_table', 8),
(39, '2022_07_21_175604_create_import_export_permit_applications_table', 9),
(40, '2022_07_21_175704_create_import_export_sell_records_table', 9),
(41, '2022_07_21_175754_create_import_export_radioactive_materials_table', 9),
(42, '2022_07_21_180105_create_import_export_irradiation_apparatuses_table', 9),
(43, '2022_07_21_180126_create_import_export_attachments_table', 9),
(44, '2022_10_20_175412_add_organization_id_service_id_in_class_e_licenses_table', 10),
(45, '2022_10_26_093922_alter_license_renewal_fees_table', 11),
(46, '2022_10_26_094638_create_license_renewal_fee_steps_table', 11),
(47, '2022_10_30_161444_alter_license_amendment_fees_table', 11),
(48, '2022_10_31_170037_alter_permit_fees_table', 12),
(49, '2022_10_23_140918_modify_class_c_application_columns', 13),
(50, '2022_11_01_170932_alter_suppliers_table', 14),
(51, '2022_11_01_172616_create_supplier_products_table', 14),
(52, '2022_11_03_151251_create_science_club_registrations_table', 14),
(53, '2022_11_06_120911_create_science_club_committee_members_table', 14),
(54, '2022_11_06_123122_create_science_club_members_table', 14),
(55, '2022_11_07_101718_create_science_club_branches_table', 14),
(56, '2022_11_07_101802_create_science_club_attachments_table', 14),
(57, '2022_11_29_150132_alter_import_export_permit_applications_table', 15),
(58, '2022_12_01_181032_create_import_export_performa_invoices_table', 16),
(59, '2022_12_04_170754_create_import_export_shipments_table', 16),
(60, '2022_12_05_124015_change_import_export_applications_table', 16),
(61, '2022_12_06_172537_create_import_export_applications_table', 16),
(62, '2022_12_07_134837_alter_import_export_applications_table', 17),
(63, '2022_12_11_135545_alter_import_export_radioactive_materials_table', 18),
(64, '2022_12_11_150305_alter_import_export_irradiation_apparatuses_table', 18),
(65, '2022_12_11_151755_alter_import_export_sell_records_table', 18),
(66, '2022_12_12_164601_create_license_permits_table', 19),
(67, '2022_12_13_110124_add_email_import_export_sell_records_table', 20),
(68, '2022_12_13_123942_alter_import_export_attachments_table', 20),
(69, '2022_12_14_153019_alter_import_export_performa_invoices_table', 21),
(70, '2022_12_14_181727_change_import_export_applications_table', 21),
(71, '2022_12_15_160537_change_import_export_applications_table', 22),
(72, '2022_12_15_180306_change_import_export_radioactive_materials_table', 22),
(73, '2022_12_19_194408_alter_field_in_class_c_license_applications_table', 23),
(74, '2022_12_19_194452_change_field_in_class_c_license_applications_table', 23),
(75, '2022_12_21_125650_alter_license_renewal_fees_table', 24),
(76, '2022_12_21_132245_alter_license_renewal_fee_steps_table', 24),
(77, '2022_12_12_133956_create_rco_applications_table', 25),
(78, '2022_12_15_182315_create_rco_application_attachments_table', 25),
(79, '2022_12_21_110428_alter_license_permits_table', 25),
(80, '2022_12_22_103536_change_import_export_applications_table', 25),
(81, '2022_12_23_165231_alter_facility_practices_table', 26),
(82, '2022_12_23_165231_alter_license_renewal_fees_table', 26),
(83, '2022_12_26_140119_add_application_model_field_to_license_permits_table', 27),
(84, '2022_12_27_181050_change_import_export_attachments_table', 28),
(85, '2022_12_26_105405_alter_application_e_licenses_table', 29),
(86, '2022_12_27_172715_change_import_export_attachments_table', 29),
(87, '2022_12_26_112738_change_class_c_license_applications_table', 30),
(88, '2022_12_30_103200_add_madeup_license_permit_number_column_to_license_permits_table', 31),
(89, '2022_12_30_180619_add_previous_application_id_column_in_applications', 31),
(90, '2022_12_30_203513_change_application_type_in_rco_applications_table', 31),
(91, '2022_12_31_150432_change_fields_class_c_license_applications_table', 32),
(92, '2022_12_31_163306_change_class_c_license_supervisor_identifiers_table', 32),
(93, '2023_01_01_141458_add_column_gender_dateofbirth_to_rco_applications_table', 33),
(94, '2023_01_02_135541_rename_column_application_date_dateofbirth_to_rco_applications_table', 33),
(95, '2023_01_02_154515_change_some_field_in_class_c_license_applications_table', 34),
(96, '2023_01_03_182454_alter_some_field_in_class_c_license_applications_table', 35),
(97, '2023_01_02_121223_class_e_applications_table', 36),
(98, '2023_01_02_161152_alter_class_e_license_paper_attachments_table', 36),
(99, '2023_01_02_162807_create_class_e_license_irradiation_apparatuses', 36),
(100, '2023_01_02_170328_alter_class_e_license_radioactive_material_infos_table', 36),
(101, '2023_01_09_180123_create_class_c_application_fee_table', 37),
(102, '2023_01_10_113954_alter_misunderstanding_fields_in_tables', 37),
(103, '2023_01_11_104030_change_sort_order_in_import_export_attachments_table', 37),
(104, '2023_01_11_130151_change_sort_order_in_license_renewal_fees_table', 38),
(105, '2023_01_12_134524_add_authorized_person_designation_in_class_e_applications_table', 39),
(106, '2023_01_17_114500_add_amendment_type_in_class_e_applications_table', 39),
(107, '2023_01_23_161358_create_noc_applications_table', 40),
(108, '2023_01_23_161414_create_noc_application_equipments_table', 40),
(109, '2023_01_23_161424_create_noc_application_attachments_table', 40),
(110, '2023_01_30_104625_add_bengali_fields_in_class_c_license_applications_table', 41),
(111, '2023_01_31_134936_create_service_templates_table', 41),
(112, '2023_02_08_181051_create_rco_annual_reports_table', 42),
(113, '2023_02_08_172403_add_renewal_amendment_fee_in_class_c_license_applications_table', 43),
(114, '2023_02_13_150709_create_inspections_table', 44),
(115, '2023_02_15_143034_create_inspection_xray_technicians_table', 45),
(116, '2023_02_15_161439_create_inspection_protective_equipments_table', 45),
(117, '2023_02_15_184823_create_inspection_inspectors_table', 45),
(118, '2023_02_13_133549_create_inspection_plans_table', 46),
(119, '2023_02_13_133635_create_inspection_plan_details_table', 46),
(120, '2023_02_13_164444_create_inspection_schedules_table', 46),
(121, '2023_02_13_172834_create_inspection_schedule_details_table', 46),
(122, '2023_02_26_142635_create_license_surrender_transfers_table', 47),
(123, '2023_02_26_181624_create_class_a_applications_table', 48),
(124, '2023_02_27_181640_add_current_active_step_in_license_surrender_transfers_table', 48),
(125, '2023_02_27_185436_create_class_a_caretaker_experiences_table', 48),
(126, '2023_02_28_105510_create_class_a_caretaker_trainings_table', 48),
(127, '2023_02_28_113220_create_class_a_supervisors_table', 48),
(128, '2023_02_28_115127_create_class_a_radioactive_material_users_table', 48),
(129, '2023_02_28_122233_create_class_a_radioactive_materials_table', 48),
(130, '2023_02_28_135020_create_class_a_source_warehousings_table', 48),
(131, '2023_02_28_160835_create_class_a_measuring_equipments_table', 48),
(132, '2023_02_28_163102_create_class_a_personnel_monitorings_table', 48),
(133, '2023_02_28_170814_create_class_a_safety_equipments_table', 48),
(134, '2023_03_05_134025_create_exempt_activities_table', 49),
(135, '2023_03_05_121406_add_fields_to_class_c_license_equipment_details_table', 50),
(136, '2023_03_05_131240_alter_class_c_license_equipment_details_table', 50),
(137, '2023_03_06_131035_add_division_district_inspection_plan_details_table', 50),
(138, '2023_03_08_122249_add_designated_person_in_class_c_license_applications_table', 51),
(139, '2023_03_08_202958_add_fields_in_science_club_registrations_table', 52),
(140, '2023_03_15_115412_alter_import_export_permit_things', 53),
(141, '2023_03_15_121449_new_fields_in_import_export_permits', 53),
(142, '2023_03_13_133814_add_fields_in_science_club_registrations_table', 54),
(143, '2023_03_13_184613_add_fields_in_science_club_attachments_table', 54),
(144, '2023_03_19_173316_create_class_a_attachments_table', 55),
(145, '2023_03_29_154727_add_nid_birth_certificate_in_class_c_license_equipment_users_table', 56),
(146, '2023_04_04_120033_change_product_type_id_column_in_class_c_license_equipment_details_table', 57),
(147, '2023_04_10_101843_add_forwarding_letter_column_to_license_permits_table', 58),
(148, '2023_04_15_200520_add_fields_to_class_e_applications_table', 59),
(149, '2023_04_30_110253_add_is_person_organization_have_same_address_in_import_export_applications_table', 60),
(150, '2023_05_01_191833_change_column_type_in_import_export_irradiation_apparatuses_table', 60),
(151, '2023_05_02_082112_add_designated_person_in_class_e_applications_table', 60),
(152, '2023_05_02_100152_add_irradiating_apparatus_in_import_export_applications_table', 60),
(153, '2023_05_04_111646_add_radiation_source_type_in_class_e_license_radioactive_material_infos', 61),
(154, '2023_05_04_173048_add_radiation_source_type_in_import_export_radioactive_materials_table', 61),
(155, '2023_05_04_173352_alter_science_club_registations_table', 61),
(156, '2023_05_09_121341_change_consignment_type_in_import_export_applications_table', 62),
(157, '2023_05_07_155330_add_fee_columns_in_application_table', 63),
(158, '2023_05_11_125321_change_license_step_column_in_class_c_license_applications_table', 63),
(159, '2023_05_15_114100_add_unit_in_class_e_license_radioactive_material_infos_table', 63),
(160, '2023_05_21_173750_add_nid_photo_columns_in_science_club_members_table', 64),
(161, '2023_05_24_101036_add_sealed_unsealed_certificate_in_import_export_radioactive_materials_table', 65),
(162, '2023_05_27_104118_add_personnel_monitoring_attachment_in_class_c_license_applications_table', 66),
(163, '2023_05_27_151828_add_radiation_detection_attachment_in_class_a_personnel_monitorings_table', 66),
(164, '2023_05_27_155318_add_is_institute_applicant_address_same_column_in_class_a_applications_table', 66),
(165, '2023_05_29_150039_change_repeater_table_columnns', 67),
(174, '2023_05_31_131157_alter_class_e_applications_table', 68),
(175, '2023_06_01_091848_add_field_in_license_surrender_transfers_table', 68),
(176, '2023_06_05_135318_add_fields_in_license_permits_table', 68),
(177, '2023_06_06_124857_create_class_d_applications_table', 69),
(178, '2023_06_06_153932_create_class_d_measuring_equipments_table', 69),
(179, '2023_06_06_154402_create_class_d_personnel_monitorings_table', 69),
(180, '2023_06_06_155037_create_class_d_caretaker_trainings_table', 69),
(181, '2023_06_06_155326_create_class_d_caretaker_experiences_table', 69),
(182, '2023_06_06_160036_create_class_d_extra_attachmets_table', 69),
(183, '2023_06_08_174441_alter_rename_column_service_charge_on_class_d_applications_table', 70),
(184, '2023_06_07_134124_alter_class_c_applications_table', 71),
(185, '2023_06_09_144557_alter_class_rco_applications_table', 72),
(186, '2023_06_10_140424_alter_class_a_applications_table', 73),
(187, '2023_06_15_111817_alter_license_renewal_fees_table', 74),
(188, '2023_06_15_190000_add_field_to_class_license_applications_tables', 75),
(189, '2023_06_17_111818_alter_group_approval', 76),
(190, '2023_06_26_160325_alter_add_column_on_import_export_applications_table', 77),
(191, '2023_07_05_160607_add_class_d_application_id_in_class_e_applications_table', 78),
(192, '2023_07_06_151554_add_other_intended_use_column_in_class_c_license_equipment_details', 78),
(193, '2023_07_06_184630_alter_class_a_radioactive_materials_table', 78),
(194, '2023_07_09_112147_change_radioactivity_unit_column_type', 79),
(195, '2023_07_10_121551_add_renewal_years_in_license_applications', 80),
(196, '2023_07_16_123418_add_is_checked_in_group_tables', 81),
(197, '2023_07_18_180202_add_proforma_invoice_fields_in_import_export_applications_table', 82),
(198, '2023_07_20_152430_drop_import_export_proforma_invoices_table', 82),
(199, '2023_07_25_113636_create_application_inspections_table', 83),
(200, '2023_07_25_160107_add_fields_in_class_c_license_equipment_details_table', 83),
(201, '2023_08_07_181722_create_sequences_table', 84),
(202, '2023_08_20_112630_alter_class_c_license_applications_table', 85),
(203, '2023_08_20_113805_drop_class_c_application_fee_table', 85),
(204, '2023_08_20_150856_drop_soft_deletes_from_class_c_child_tables', 85),
(205, '2023_08_24_143027_alter_science_club_registrations_table', 86),
(206, '2023_08_27_152542_alter_import_export_applications_table', 86),
(207, '2023_08_30_111255_add_column_in_import_export_irradiation_apparatuses_table', 87),
(208, '2023_09_07_110720_create_rco_certificates_table', 88),
(209, '2023_09_17_135850_add_column_in_import_export_shipments_table', 89),
(210, '2023_11_07_164057_remove_group_tracking_number_from_import_export_applications_table', 90),
(211, '2023_11_15_093005_drop_unnecessary_setup_tables', 90),
(212, '2023_11_28_180303_change_application_number_column_in_rco_applications_table', 91),
(213, '2023_12_24_134718_add_application_type_column_in_science_club_registrations_table', 92);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_noc_applications`
--

CREATE TABLE `license_s5zyr2p6_noc_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_address_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_address_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_division_id` bigint UNSIGNED DEFAULT NULL,
  `institute_district_id` bigint UNSIGNED DEFAULT NULL,
  `institute_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `applicant_name_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_name_bn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `applicant_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `applicant_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `vat` decimal(15,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(15,2) NOT NULL DEFAULT '0.00',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `issued_at` date DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_noc_applications`
--

INSERT INTO `license_s5zyr2p6_noc_applications` (`id`, `uuid`, `service_mapping_id`, `organization_id`, `tracking_number`, `submission_date`, `institute_name`, `institute_name_bn`, `institute_address_en`, `institute_address_bn`, `institute_division_id`, `institute_district_id`, `institute_upazila_id`, `applicant_name_en`, `applicant_name_bn`, `applicant_designation`, `applicant_address`, `applicant_mobile`, `applicant_email`, `application_fee`, `vat`, `total_fee`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `issued_by`, `issued_at`, `status`) VALUES
(1, 'c684cc59-60bd-4b0e-9585-0f37705306d7', 39, 7, 'NOC-202401010001', '2024-01-01', 'nill', 'নীল', 'Nill', 'নীল', 7, 25, 485, 'Nill', 'নীল', 'Nill', 'nill', NULL, NULL, 3.00, 0.45, 3.45, 1758, 1758, NULL, '2024-01-01 11:14:41', '2024-01-01 11:15:10', 0, NULL, NULL, 'SUBMITTED');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_noc_application_attachments`
--

CREATE TABLE `license_s5zyr2p6_noc_application_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `noc_application_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_noc_application_equipments`
--

CREATE TABLE `license_s5zyr2p6_noc_application_equipments` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noc_application_id` bigint UNSIGNED DEFAULT NULL,
  `machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `machine_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) NOT NULL DEFAULT '0.00',
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_noc_application_equipments`
--

INSERT INTO `license_s5zyr2p6_noc_application_equipments` (`id`, `uuid`, `noc_application_id`, `machine_name`, `machine_description`, `quantity`, `amount`, `remarks`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, 'f5cecc53-0bf9-482b-b35e-6b0ff78215d9', 1, 'নীল', NULL, '2', 3.00, NULL, 1758, 1758, NULL, '2024-01-01 11:14:41', '2024-01-01 11:14:41', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_personal_access_tokens`
--

CREATE TABLE `license_s5zyr2p6_personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_ports`
--

CREATE TABLE `license_s5zyr2p6_ports` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` bigint UNSIGNED DEFAULT NULL,
  `code` bigint UNSIGNED DEFAULT NULL,
  `port_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_ids` json DEFAULT NULL,
  `component_ids` json DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_ports`
--

INSERT INTO `license_s5zyr2p6_ports` (`id`, `uuid`, `country_id`, `code`, `port_type`, `port_name`, `organization_ids`, `component_ids`, `sort_order`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`, `status`) VALUES
(1, '1657170475', 5143, 0, 'DOMESTIC', 'fvfdvf nazmul', '[\"10\"]', '[\"75\"]', NULL, 1, 1, '2022-07-07 11:09:46', '2022-07-07 11:07:55', '2022-07-07 11:09:46', 1),
(2, '1657176726', 5143, 12, 'DOMESTIC', 'mongla port', '[\"6\", \"13\"]', '[\"75\"]', NULL, 1, 1, '2022-07-07 12:54:10', '2022-07-07 12:52:06', '2022-07-07 12:54:10', 1),
(3, '1657177826', 5143, 45, 'DOMESTIC', 'hjnhjn', '[\"4\"]', NULL, NULL, 1, 1, '2022-07-07 13:11:46', '2022-07-07 13:10:26', '2022-07-07 13:11:46', 1),
(4, '1657177861', 5143, 23, 'DOMESTIC', 'ytrrr', '[\"10\"]', NULL, NULL, 1, 1, '2022-07-07 13:11:46', '2022-07-07 13:11:01', '2022-07-07 13:11:46', 1),
(5, 'be1981c6-017f-49ad-bc38-8812e124dc67', 5143, 4656, 'DOMESTIC', 'Mongla Port Authority', '[]', '[]', NULL, 1, 1, NULL, '2022-12-08 18:23:44', '2023-01-10 10:56:22', 1),
(6, 'c1825769-7f70-4c58-b566-1b2bf065aad4', 5143, 64648, 'DOMESTIC', 'Chittagong Port Authority', '[7]', '[2]', 1, 1, 1, NULL, '2023-01-10 10:56:00', '2023-01-10 10:56:00', 1),
(7, '7949aea8-a8d1-4e7b-a9eb-04c4678642ae', 5164, 0, 'INTERNATION', 'Dalian', '[7]', '[2]', 11, 1, 1, NULL, '2023-01-11 15:55:41', '2023-01-11 15:55:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_products`
--

CREATE TABLE `license_s5zyr2p6_products` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` bigint UNSIGNED NOT NULL,
  `product_name_en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name_bn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) DEFAULT '1',
  `manufacturer_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization_ids` json DEFAULT NULL,
  `component_ids` json DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_products`
--

INSERT INTO `license_s5zyr2p6_products` (`id`, `uuid`, `product_code`, `product_name_en`, `product_name_bn`, `remarks`, `status`, `manufacturer_ids`, `organization_ids`, `component_ids`, `sort_order`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, '1657177114', 10001, 'Diagnostic X-rays', 'ডায়াগস্টিক এক্স-রে', NULL, 1, NULL, '[7]', '[2]', 1, 1, 1, NULL, '2022-07-07 12:58:34', '2023-01-11 15:13:16'),
(4, '6cd53b87-7bb7-4493-814a-639520eb24fa', 10002, 'Gamma Radiography Projector', 'গামা রেডিওগ্রাফি প্রজেক্টর', NULL, 1, NULL, '[]', '[2]', 2, 1, 1, NULL, '2023-01-10 10:40:58', '2023-01-10 10:40:58'),
(5, 'e301fb6a-c945-4a43-a41d-10548579cc8c', 10003, 'Medical cyclotron', 'মেডিকেল সাইক্লোট্রন', NULL, 1, NULL, '[]', '[2]', 3, 1, 1, NULL, '2023-01-10 10:45:01', '2023-01-10 10:45:01'),
(6, '03521afe-4a89-4edc-8bef-55d9a5d0c0d0', 10005, 'Container Scanner, Baggage Scanner', 'কন্টেইনার স্ক্যানার, লাগেজ স্ক্যানার', NULL, 1, NULL, '[]', '[2]', 4, 1, 1, NULL, '2023-01-11 15:17:31', '2023-01-11 15:17:31'),
(7, '45f5e25d-2a2b-41bc-927d-5c998eb0ec6f', 0, 'Others', 'অন্যান্য', 'Reserved product type for maintaining all the products that are unnamed and not entried to the system', 1, NULL, '[7]', '[2]', NULL, 1, 1, NULL, '2023-03-05 12:15:57', '2023-03-05 12:17:29');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_rco_annual_reports`
--

CREATE TABLE `license_s5zyr2p6_rco_annual_reports` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `period_of_report_date` date DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `institute_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `license_expire_date` date DEFAULT NULL,
  `rco_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_permit_expire_date` date DEFAULT NULL,
  `number_of_licensed_xray_machine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_used_xray_machine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_xray_machine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_age` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_joining_date` date DEFAULT NULL,
  `staff_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_training_detail` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `result_of_area_monitoring` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `result_of_staff_personal_monitoring` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description_of_radiation_security` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `information_of_maintenance_and_repair` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_number_of_radiograph_taken` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name_of_licensee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_of_licensee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_of_radiation_control_officer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_of_radiation_control_officer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_files` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `is_default` tinyint(1) DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_rco_applications`
--

CREATE TABLE `license_s5zyr2p6_rco_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `docketing_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_medium` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'SYSTEM',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `previous_application_id` bigint UNSIGNED DEFAULT NULL,
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `issued_at` date DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_group_id` bigint UNSIGNED DEFAULT NULL,
  `application_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `submission_date` date DEFAULT NULL,
  `original_submission_date` date DEFAULT NULL,
  `original_license_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_license_permit_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legacy_issue_renew_date` date DEFAULT NULL,
  `legacy_expiry_date` date DEFAULT NULL,
  `institute_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `institute_division_id` bigint UNSIGNED DEFAULT NULL,
  `institute_district_id` bigint UNSIGNED DEFAULT NULL,
  `institute_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `head_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `head_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `head_division_id` bigint UNSIGNED DEFAULT NULL,
  `head_district_id` bigint UNSIGNED DEFAULT NULL,
  `head_upazila_id` bigint UNSIGNED DEFAULT NULL,
  `institute_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `institute_communication_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_equipments` json DEFAULT NULL,
  `rco_specify_other` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `radiation_instrument_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `radiation_accidents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `radiation_workers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_date_of_birth` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_designation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_office_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_office_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_office_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_office_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_home_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_home_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_permanent_address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_permanent_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_highest_education` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rco_training_courses` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_experience_radiation_work` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_radioactive_material` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rco_additional_responsibilitiy` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photograph` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature_of_institue_head` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT '1',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `application_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `renewal_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `amendment_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `vat` decimal(8,2) NOT NULL DEFAULT '0.00',
  `surcharge` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_rco_applications`
--

INSERT INTO `license_s5zyr2p6_rco_applications` (`id`, `uuid`, `service_mapping_id`, `organization_id`, `current_active_step`, `docketing_number`, `application_medium`, `status`, `previous_application_id`, `issued_by`, `issued_at`, `tracking_number`, `parent_group_id`, `application_type`, `submission_date`, `original_submission_date`, `original_license_attachment`, `legacy_license_permit_number`, `legacy_issue_renew_date`, `legacy_expiry_date`, `institute_name`, `institute_address`, `institute_division_id`, `institute_district_id`, `institute_upazila_id`, `head_name`, `head_designation`, `head_address`, `head_division_id`, `head_district_id`, `head_upazila_id`, `institute_phone`, `institute_fax`, `institute_mobile`, `institute_email`, `institute_communication_time`, `radiation_equipments`, `rco_specify_other`, `radiation_instrument_details`, `radiation_accidents`, `radiation_workers`, `rco_name`, `rco_gender`, `rco_date_of_birth`, `rco_designation`, `rco_office_address`, `rco_office_phone`, `rco_office_fax`, `rco_office_email`, `rco_home_address`, `rco_home_phone`, `rco_permanent_address`, `rco_permanent_phone`, `rco_highest_education`, `rco_training_courses`, `rco_experience_radiation_work`, `rco_radioactive_material`, `rco_additional_responsibilitiy`, `photograph`, `signature`, `signature_of_institue_head`, `is_agreed`, `is_checked`, `application_fee`, `renewal_fee`, `amendment_fee`, `vat`, `surcharge`, `total_fee`, `created_by`, `updated_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, '1197010f-d461-40fe-91ce-634ff0f255c9', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202312100001', 1, 'NEW', '2023-12-10', NULL, NULL, NULL, NULL, NULL, 'apply for RCO button A (re)', 'ফ', 4, 10, 288, 'jgwbque', 'CEO', 'r', 4, 15, 298, '01780940522', NULL, '01780940522', 'hossainnilufar12@gmail.com', NULL, '[\"therapyEquipment\", \"remoteTherapyEquipment\", \"voltageTherapyEquipment\", \"xRayEquipment\", \"nuclearMedicine\"]', NULL, NULL, NULL, NULL, 'Nilufar Hossain', 'FEMALE', '2018-12-12', 'RCO officer', 'r', NULL, NULL, NULL, NULL, NULL, 'r', NULL, 'BCom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 1731, NULL, '2023-12-10 06:26:31', '2023-12-20 05:18:13'),
(2, 'eb710432-33aa-4b81-b1b4-e30c7d563fd8', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202312100002', 1, 'NEW', '2023-12-10', NULL, NULL, NULL, NULL, NULL, 'apply for RCO button A (re)', 'd', 4, 15, 294, 'whg', 'w', 'w', 4, 10, 287, NULL, NULL, '01838797873', NULL, NULL, '[\"voltageTherapyEquipment\", \"nuclearMedicine\"]', NULL, NULL, NULL, NULL, 'w', 'FEMALE', '2020-12-17', 'RCO officer', 'w', NULL, NULL, NULL, NULL, NULL, 'w', NULL, 'BCom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 677, NULL, '2023-12-10 06:48:38', '2023-12-12 08:56:26'),
(3, 'de22bc34-bcc7-45c4-a81e-3c03cccd9687', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202312120003', 2, 'NEW', '2023-12-12', NULL, NULL, NULL, NULL, NULL, 'Medico Center', 'Mirpur 1', 5, 13, 406, 'Medico center', 'CEO', 'Mirpur 12', 5, 12, 396, NULL, NULL, '01287866322', NULL, NULL, '[\"therapyEquipment\", \"remoteTherapyEquipment\", \"voltageTherapyEquipment\", \"xRayEquipment\"]', NULL, NULL, NULL, NULL, 'Asbudolsd', 'MALE', '2013-12-02', 'RCO officer', 'Mirpur-10', NULL, NULL, NULL, NULL, NULL, 'Mirpur-10', NULL, 'BCom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 677, NULL, '2023-12-12 04:08:00', '2023-12-13 08:58:24'),
(4, '9857c269-1b55-423a-a001-e2b559cc247e', 57, 7, 2, 'BAER-8-101/2021', 'MANUAL', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202312120004', NULL, 'NEW', '2023-12-12', '2020-12-02', '6577f4cb6d7d8', '8/2021-2022(R-1/2022-2023)/101', '2021-12-30', '2023-12-31', 'IDSDP Trial BAERA', 'Dhaka', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01747000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RCO BAERA', 'MALE', '2000-01-01T05:53:18.957Z', 'RCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1694, 1694, NULL, '2023-12-12 05:53:36', '2023-12-12 05:53:36'),
(5, 'fb538e17-2c97-4403-9fdb-5c22e44c4964', 57, 7, 2, 'BAERA- DHA- 2023-C017 - changed', 'MANUAL', 'APPROVED', NULL, NULL, NULL, 'RCO-202312120005', 2, 'NEW', '2023-12-12', '2015-12-08', '6577fb2c2fe72', '9834823/20254', '2021-11-29', '2028-12-09', 'Somed', 'Mirpur', 4, 10, 287, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01237632773', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Somed', 'MALE', '2011-12-22T06:19:53.732Z', 'RCO officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 678, NULL, '2023-12-12 06:19:23', '2023-12-12 10:49:25'),
(6, '58c80c02-ee23-4cd2-954d-d4ed6369f1b2', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202312190006', NULL, 'NEW', '2023-12-19', NULL, NULL, NULL, NULL, NULL, 'Test', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, 'Moin Uddin', 'asc', 'Jigatala TSO', 4, 15, 298, '01951851116', NULL, '01546546546', 'info@dao.org', NULL, NULL, NULL, NULL, NULL, NULL, 'Moin Uddin', NULL, '2023-12-19', 'asca', 'Jigatala TSO', '01951851116', NULL, NULL, NULL, NULL, 'Jigatala TSO', '01951851116', 'asca', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 702, 1729, NULL, '2023-12-19 07:22:35', '2023-12-19 09:19:06'),
(7, 'dad3035a-5e23-4190-a344-80551b2713ba', 57, 7, 2, NULL, 'MANUAL', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202312190007', NULL, 'NEW', '2023-12-19', '2015-02-10', '658173a330a70', '9834823/20254', '2023-12-13', '2025-12-27', 'Somed', 'দ', 5, 13, 407, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '98988777777', 'abs@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Nilufar Hossain', 'FEMALE', '2018-12-19T10:43:58.888Z', 'RCO officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 1668, NULL, '2023-12-19 10:43:33', '2023-12-19 10:43:33'),
(8, '869c4c7a-d115-4538-9338-66f52b497633', 57, 7, 2, 'BAER-8-101/2021', 'MANUAL', 'APPROVED', NULL, NULL, NULL, 'RCO-202312190008', NULL, 'NEW', '2023-12-19', '2020-12-01', '658176fd62a96', '8/2021-2022(R-1/2022-2023)/101', '2021-12-30', '2023-12-31', 'License BAERA IDSDP', 'Dhaka, Dhaka, Mirpur Model', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01111111111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RCO BAERA', 'MALE', '2000-01-01T10:58:26.164Z', 'RCO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1735, 1700, NULL, '2023-12-19 10:58:44', '2023-12-19 10:59:58'),
(9, '8a065dee-d607-4d45-ab7a-205f4e58292c', 57, 7, NULL, NULL, 'SYSTEM', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202312300009', 7, 'NEW', '2023-12-30', NULL, NULL, NULL, NULL, NULL, 'IBN Sina Hospital', '12, Kallanpur, Dhaka-1215', 3, 21, 5173, 'Masum Reza', 'Manager(Admin)', '12, Kallanpur, Dhaka-1215', 3, 21, 5173, '019145567', '266267467346', '01765355662', 'permittest@yopmail.com', NULL, '[\"xRayEquipment\", \"therapyEquipment\", \"others\"]', 'Kr-85 Source for Industrial purpose', 'TLD', NULL, NULL, 'Khan', 'MALE', '2001-12-20', 'Radiographer', '12, Kallanpur, Dhaka-1215', NULL, NULL, NULL, NULL, NULL, 'Barishal', NULL, 'Diploma', NULL, NULL, NULL, NULL, '65900dd9bb68c', '65900dccab253', NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1746, 1746, NULL, '2023-12-30 12:32:33', '2023-12-30 13:23:32'),
(13, 'ba6a1287-3dac-4174-be80-c0a030d0302a', 57, 7, 2, 'BAER (5)/1993', 'MANUAL', 'APPROVED', NULL, NULL, NULL, 'RCO-202312310013', NULL, 'NEW', '2023-12-31', '2023-12-30', '6590f2d72f8e1', '7/2023', '2023-12-31', '2023-12-31', 'Waliul Islam Moin', 'Shewrpara, Mirpur', 3, 21, 5173, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01762102147', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'farzana', 'FEMALE', '1993-12-11T04:50:21.727Z', 'rco', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1745, 1699, NULL, '2023-12-31 04:50:44', '2024-01-01 13:20:00'),
(14, '8deef7dd-f608-49e2-a60a-3bd1506ba32c', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202312310014', NULL, 'NEW', '2023-12-31', NULL, NULL, NULL, NULL, NULL, 'INMAS', 'INMAS, Dhaka', 3, 21, 5162, 'Abdur Rahim', 'Director', 'INMAS, Dhaka', 3, 21, 5162, NULL, NULL, '45657677657', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Ratan Kumar', 'MALE', '1994-12-15', 'Medical Phycist', 'INMAS, Dhaka', '6564465456', NULL, NULL, NULL, NULL, 'INMAS, Dhaka', NULL, 'M.Sc (Physics)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1091, 1729, NULL, '2023-12-31 07:52:22', '2024-01-01 16:10:54'),
(15, 'ff91346b-091c-4bd8-8e75-8e4e2469ac9d', 57, 7, NULL, NULL, 'SYSTEM', 'IN_PROGRESS', NULL, NULL, NULL, 'RCO-202401010015', 13, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Test', 'Road #2,\nFactory #3,\nUniverse', 3, 21, 5158, 'Someone Awesome', 'Some Designation', 'House #31, Road #22,\nSomewhere in the Universe-34', 4, 10, 287, '+11111111', NULL, '01546546546', 'awesome@example.com', 'Office Hour', '[\"voltageTherapyEquipment\", \"brachyTherapySource\"]', NULL, NULL, NULL, NULL, 'Kauwa Kala', 'MALE', '2024-01-01', 'Some Designation', 'Alias nemo id dolore', '+11111111111', NULL, 's@s.com', NULL, NULL, 'Road #2,\nHosue #3', '01888888888', 'Ph. D.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 702, 1699, NULL, '2024-01-01 04:57:06', '2024-01-01 13:30:41'),
(16, '46c3cf00-8a70-41ad-829a-864e4e8d523a', 57, 7, NULL, NULL, 'SYSTEM', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401010016', NULL, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Australian National University', 'Nill', 3, 21, 5171, 'Nill', 'Nill', 'Nill', 3, 21, 5171, NULL, NULL, '01719345687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hridoy', NULL, '1996-08-14', 'Nill', 'Nill', NULL, NULL, NULL, NULL, NULL, 'Nill', NULL, 'Bsc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1758, 1758, NULL, '2024-01-01 06:07:59', '2024-01-01 06:08:00'),
(17, '73ee15ef-3610-4b88-b9ca-86710737880f', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202401010017', 14, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Mohammadi Group', 'Cha-20, Mohakhali', 3, 21, 5171, 'A. K. M. Azad', 'Managing Director', 'Cha-20, Mohakhali', 3, 21, 5171, NULL, NULL, '02985563245', NULL, 'Office Hour', '[\"therapyEquipment\", \"remoteTherapyEquipment\", \"voltageTherapyEquipment\", \"xRayEquipment\"]', NULL, 'বিকিরণ পরিমাপ/নিরীক্ষণ যন্ত্র', 'বিকিরণ অস্বাভাবিক ঘটনার বিবরণ', 'রেডিয়েশন কর্মীদের বিস্তারিত বিবরণ', 'Aminul Islam', 'MALE', '2003-01-01', 'RCO', 'অফিসের ঠিকানা', NULL, NULL, NULL, NULL, NULL, 'স্থায়ী ঠিকানা', NULL, 'BSc', 'RCO Training', '5 Years', 'বিকিরণকারী যন্ত্রপাতি/তেজস্ক্রিয় পদার্থ যার জন্য RCO দায়ী থাকবে', 'অতিরিক্ত দায়িত্ব-এর বিবরন', '65925e7dd8a40', '65925f4dc0ba7', NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1759, 1731, NULL, '2024-01-01 06:52:20', '2024-01-02 04:29:23'),
(18, '02988703-9b7e-4053-977d-3be753375f59', 57, 7, NULL, NULL, 'SYSTEM', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401010018', 8, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Radio Active Material Lab', 't', 4, 15, 298, 'AnsarUllah', 'Director', 'j', 4, 16, 304, '83787327', NULL, '97328974832', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Salman AL nasir', 'FEMALE', '1997-01-10', 'junior', 'Nikunjo', NULL, NULL, NULL, NULL, NULL, 'Nikunjo', NULL, 'BSC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 1668, NULL, '2024-01-01 06:58:08', '2024-01-01 10:44:12'),
(19, '67e32498-1d8a-4aa2-bc4e-252248e4f734', 57, 7, 2, 'DHA-GOP-8(1001)/2020', 'MANUAL', 'APPROVED', NULL, NULL, NULL, 'RCO-202401010019', NULL, 'NEW', '2024-01-01', '2019-01-06', '6592681802a73', '11/2019-2020(R-1/2020-2021)/20', '2019-01-09', '2024-01-20', 'Tushar Hospital', 'Hospital Road, Gopalganj', 3, 27, 218, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01222222333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Md. Tushar', 'MALE', '1990-02-07T07:23:48.087Z', 'Derector', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1760, 1699, NULL, '2024-01-01 07:25:45', '2024-01-01 07:46:26'),
(20, 'b988cb47-ad0c-4744-ad27-55610f263168', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202401010020', 10, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Lab Aid Hospital Limited, Dhaka', '24/A, Dhanmondi, Dhaka-1206', 3, 21, 5160, 'Md. Lutfur Rahman', 'General Manager', '24/A, Dhanmondi, Dhaka-1206', 3, 21, 5160, '01842544605', '564768879', '01842544605', 'permittest4@yopmail.com', NULL, '[\"xRayEquipment\"]', NULL, 'N/A', NULL, NULL, 'Md. Kamrul Islam', 'MALE', '1999-01-05', 'Radiographer', '24/A, Dhanmondi, Dhaka-1206', NULL, NULL, NULL, NULL, NULL, 'Dhaka', NULL, 'Diploma in Radiology', NULL, NULL, NULL, NULL, '65926c05971d6', '65926c0870f7e', NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1747, 1729, NULL, '2024-01-01 07:40:15', '2024-01-01 15:41:23'),
(21, 'e0914881-9c14-445e-8dde-6c12fbc47f75', 57, 7, NULL, NULL, 'SYSTEM', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401010021', NULL, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'ABC Hospital', 'tr cgf cg', 4, 15, 298, 'rwe fgv f', 'rgtfb', 'ete fghfb', 4, 15, 298, NULL, NULL, '01738473131', NULL, 'Office Hour', '[\"xRayEquipment\"]', NULL, NULL, NULL, NULL, 'BB CCC', 'MALE', '2020-01-08', 'ndndsndj', 'fb vb v', NULL, 'gf', NULL, NULL, NULL, 'ewe dfe fe', NULL, 'Diplolma', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1761, 1761, NULL, '2024-01-01 09:56:43', '2024-01-01 09:56:44'),
(22, '2d9c98b8-97fb-4906-9a7a-fc1dac22a027', 57, 7, NULL, NULL, 'SYSTEM', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401010022', NULL, 'NEW', '2024-01-01', NULL, NULL, NULL, NULL, NULL, 'Australian National University', 'Nill', 5, 12, 402, 'Nill', 'Nill', 'Nill', 5, 12, 402, NULL, NULL, '01719345687', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Hridoy', NULL, '1990-01-03', 'Nill', 'Nill', NULL, NULL, NULL, NULL, NULL, 'Nill', NULL, 'Bsc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1758, 1758, NULL, '2024-01-01 10:05:00', '2024-01-01 10:05:01'),
(23, 'b8e31153-236f-45ec-bd0c-7465d32e189e', 57, 7, NULL, NULL, 'SYSTEM', 'APPROVED', NULL, NULL, NULL, 'RCO-202401020023', NULL, 'NEW', '2024-01-02', NULL, NULL, NULL, NULL, NULL, 'SMC Niltara Lab', '30/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', 3, 21, 5158, 'Senior Manager', 'Senior Manager', '30/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', 3, 21, 5158, '02-22221588', '02-2222222', '01115648752', 'tusharhowlader12345@gmail.com', 'Office Hour', '[\"xRayEquipment\"]', NULL, NULL, NULL, '১. মো. হাবিবুর রহমান, টেকনিশিয়ান\n২. মো, কায়সার হোসেন, টেকনিশিয়ান', 'Mr. Toffal Hossain', 'MALE', '2024-01-02', 'RCO', '0/1, হাজী দিলা এমপোহাম্মদ এভিনিউ, ব্লক-বি, মোহাম্মদপুর, ঢাকা', '+11111147', '0365456464', 'awesome@example.com', NULL, '+11111111', 'Mohammadpur, Dhaka', NULL, 'HSC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1762, 1729, NULL, '2024-01-02 05:48:58', '2024-01-02 11:07:10'),
(24, '1bf1d05c-8351-403a-b3b8-5b1aafe1bddc', 57, 7, NULL, NULL, 'SYSTEM', 'IN_PROGRESS', NULL, NULL, NULL, 'RCO-202401040024', NULL, 'NEW', '2024-01-04', NULL, NULL, NULL, NULL, NULL, 'Radio Active Material Lab', 'd', 4, 15, 298, 'AnsarUllah', 'Director', '্র', 4, 15, 294, '83787327', '73786', '97328974832', 'amksj@yopmail.com', 'Office Hour', '[\"therapyEquipment\", \"remoteTherapyEquipment\", \"voltageTherapyEquipment\"]', NULL, NULL, NULL, NULL, 'Salman AL nasir', 'FEMALE', '2024-01-04', 'junior', 'r', NULL, NULL, NULL, NULL, NULL, 'r', NULL, 'BSC', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1668, 1699, NULL, '2024-01-04 03:59:31', '2024-01-04 04:47:27'),
(25, 'b8f7fca0-8d54-44ed-8bc1-c20e45514e60', 57, 7, 2, NULL, 'MANUAL', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401040025', NULL, 'NEW', '2024-01-04', NULL, '65963d7ae8b76', 'DX-2590', '2019-10-15', '2019-10-15', 'National Medical Centre, Dhaka', 'National Medical Centre, \nBlock-J, Baridhara, Dhaka', 3, 21, 5170, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '45656565665', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Anup Bakchi', 'MALE', '1995-01-09T05:13:55.399Z', 'Medical Technologist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1091, 1091, NULL, '2024-01-04 05:14:43', '2024-01-04 05:14:44'),
(26, '25a92562-1a74-418b-8438-201e9e01a56f', 57, 7, 2, 'BAER-BARI-8(5349)/2022', 'MANUAL', 'SUBMITTED', NULL, NULL, NULL, 'RCO-202401040026', NULL, 'NEW', '2024-01-04', '2022-04-25', '65963e0975ff1', '546/2022', '2022-06-20', '2022-06-20', 'Islam Diagnostic Lab', 'Jail Road, Hospital Road, Barisal', 5, 12, 402, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01125555555', 'tusharhowlader@yopmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 'Mr. Opu Chowdhury', 'MALE', '1996-11-11T05:14:49.427Z', 'Radiation Control Officer', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 1765, 1765, NULL, '2024-01-04 05:15:20', '2024-01-04 05:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_rco_application_attachments`
--

CREATE TABLE `license_s5zyr2p6_rco_application_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_rco_application_attachments`
--

INSERT INTO `license_s5zyr2p6_rco_application_attachments` (`id`, `rco_application_id`, `attachment_type_id`, `attachment_name`, `attachment_file`, `remarks`, `deleted_at`, `created_at`, `updated_at`, `sort_order`, `status`) VALUES
(1, 6, 14, 'SSC Certificate', '6581449cee919', NULL, NULL, '2023-12-19 07:22:36', '2023-12-19 07:22:36', 0, 1),
(2, 6, 15, 'HSC Certificate', '658144b019dc6', NULL, NULL, '2023-12-19 07:22:36', '2023-12-19 07:22:36', 0, 1),
(3, 6, 16, 'Msc Certificate', '658144b8462f0', NULL, NULL, '2023-12-19 07:22:36', '2023-12-19 07:22:36', 0, 1),
(4, 9, 14, 'SSC Certificate', '65900d83ce355', NULL, NULL, '2023-12-30 12:32:33', '2023-12-30 12:32:33', 0, 1),
(5, 9, 15, 'HSC Certificate', '65900d8d23499', NULL, NULL, '2023-12-30 12:32:33', '2023-12-30 12:32:33', 0, 1),
(6, 9, 16, 'Msc Certificate', '65900d95066d5', NULL, NULL, '2023-12-30 12:32:33', '2023-12-30 12:32:33', 0, 1),
(10, 14, 14, 'SSC Certificate', '65911c7f56e6f', NULL, NULL, '2023-12-31 07:52:22', '2023-12-31 07:52:22', 0, 1),
(11, 14, 15, 'HSC Certificate', '65911d06ee5c9', NULL, NULL, '2023-12-31 07:52:22', '2023-12-31 07:52:22', 0, 1),
(12, 14, 16, 'Msc Certificate', '65911d370bb7d', NULL, NULL, '2023-12-31 07:52:22', '2023-12-31 07:52:22', 0, 1),
(13, 15, 14, 'SSC Certificate', '65924609a2cf5', NULL, NULL, '2024-01-01 04:57:06', '2024-01-01 04:57:06', 0, 1),
(14, 15, 15, 'HSC Certificate', '65924617b92af', NULL, NULL, '2024-01-01 04:57:06', '2024-01-01 04:57:06', 0, 1),
(15, 15, 16, 'Msc Certificate', '6592461e1f415', NULL, NULL, '2024-01-01 04:57:06', '2024-01-01 04:57:06', 0, 1),
(16, 16, 14, 'SSC Certificate', '6592566310de0', NULL, NULL, '2024-01-01 06:08:00', '2024-01-01 06:08:00', 0, 1),
(17, 16, 15, 'HSC Certificate', '6592568abb0ae', NULL, NULL, '2024-01-01 06:08:00', '2024-01-01 06:08:00', 0, 1),
(18, 16, 16, 'Msc Certificate', '659256942c5c9', NULL, NULL, '2024-01-01 06:08:00', '2024-01-01 06:08:00', 0, 1),
(19, 17, 14, 'SSC Certificate', '65926088476d9', NULL, NULL, '2024-01-01 06:52:21', '2024-01-01 06:52:21', 0, 1),
(20, 17, 15, 'HSC Certificate', '65926092d7728', NULL, NULL, '2024-01-01 06:52:21', '2024-01-01 06:52:21', 0, 1),
(21, 17, 16, 'Msc Certificate', '6592609ea2434', NULL, NULL, '2024-01-01 06:52:21', '2024-01-01 06:52:21', 0, 1),
(22, 18, 14, 'SSC Certificate', '6592626e3c495', NULL, NULL, '2024-01-01 06:58:08', '2024-01-01 06:58:08', 0, 1),
(23, 18, 15, 'HSC Certificate', '65926266531aa', NULL, NULL, '2024-01-01 06:58:08', '2024-01-01 06:58:08', 0, 1),
(24, 18, 16, 'Msc Certificate', '6592625f57ca1', NULL, NULL, '2024-01-01 06:58:08', '2024-01-01 06:58:08', 0, 1),
(25, 20, 14, 'SSC Certificate', '65926c4ba37b5', NULL, NULL, '2024-01-01 07:40:15', '2024-01-01 07:40:15', 0, 1),
(26, 20, 15, 'HSC Certificate', '65926c52bf774', NULL, NULL, '2024-01-01 07:40:15', '2024-01-01 07:40:15', 0, 1),
(27, 20, 16, 'Msc Certificate', '65926c5aa3d12', NULL, NULL, '2024-01-01 07:40:15', '2024-01-01 07:40:15', 0, 1),
(28, 20, NULL, 'BSC certificate', '65926c41be7fb', NULL, NULL, '2024-01-01 07:40:15', '2024-01-01 07:40:15', 0, 1),
(29, 21, 14, 'SSC Certificate', '65928c3648b67', NULL, NULL, '2024-01-01 09:56:44', '2024-01-01 09:56:44', 0, 1),
(30, 21, 15, 'HSC Certificate', '65928c4799f97', NULL, NULL, '2024-01-01 09:56:44', '2024-01-01 09:56:44', 0, 1),
(31, 21, 16, 'Msc Certificate', '65928c512db7b', NULL, NULL, '2024-01-01 09:56:44', '2024-01-01 09:56:44', 0, 1),
(32, 22, 14, 'SSC Certificate', '65928e1ea5958', NULL, NULL, '2024-01-01 10:05:01', '2024-01-01 10:05:01', 0, 1),
(33, 22, 15, 'HSC Certificate', '65928e276ba65', NULL, NULL, '2024-01-01 10:05:01', '2024-01-01 10:05:01', 0, 1),
(34, 22, 16, 'Msc Certificate', '65928e485ae02', NULL, NULL, '2024-01-01 10:05:01', '2024-01-01 10:05:01', 0, 1),
(35, 23, 14, 'SSC Certificate', '6593a3977e8f5', NULL, NULL, '2024-01-02 05:48:58', '2024-01-02 05:48:58', 0, 1),
(36, 23, 15, 'HSC Certificate', '6593a3a6d26c7', NULL, NULL, '2024-01-02 05:48:58', '2024-01-02 05:48:58', 0, 1),
(37, 23, 16, 'Msc Certificate', '6593a3b957661', NULL, NULL, '2024-01-02 05:48:58', '2024-01-02 05:48:58', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_rco_certificates`
--

CREATE TABLE `license_s5zyr2p6_rco_certificates` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rco_application_id` bigint UNSIGNED DEFAULT NULL,
  `certificate_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_attachment` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_rco_certificates`
--

INSERT INTO `license_s5zyr2p6_rco_certificates` (`id`, `uuid`, `rco_application_id`, `certificate_number`, `certificate_attachment`, `created_at`, `updated_at`) VALUES
(1, '38c23acc-9512-4ace-b6e2-4aacf944c224', 1, '927937', NULL, '2023-12-10 06:40:21', '2023-12-10 06:40:21'),
(2, '6a2ad74c-5ff7-4b7a-be07-988ab3a5cf5c', 3, '927937', NULL, '2023-12-12 07:24:35', '2023-12-12 07:24:35'),
(3, '6b66c520-73c4-4e18-892b-5d4588eb66ff', 2, '927937', NULL, '2023-12-19 06:28:06', '2023-12-19 06:28:06'),
(4, '17db3003-32b7-4d53-a9df-df23ef5a075f', 8, 'Yes', '6590f69368045', '2023-12-19 11:52:55', '2023-12-31 05:05:52'),
(5, '6bfd21be-bd1c-4c85-8b14-c2aaab887e76', 9, 'DX-1256', NULL, '2023-12-30 12:39:48', '2023-12-30 12:39:48'),
(6, '8f9fb7c7-3f54-4d46-97f9-904a63aa572c', 17, '98798', '659261e6004c8', '2024-01-01 06:55:55', '2024-01-01 06:55:55'),
(7, 'd4753e72-b01a-4466-9d51-11f279d5fa28', 18, '927937', NULL, '2024-01-01 07:05:15', '2024-01-01 07:05:15'),
(8, '65358064-0cf6-4eaa-bfde-2a706f08859a', 13, NULL, '6592b4a8f24ac', '2024-01-01 12:48:51', '2024-01-01 12:48:51'),
(9, 'a98b6536-98e6-4935-86b4-93923ea476c9', 26, '546/2022', NULL, '2024-01-04 05:17:23', '2024-01-04 05:17:23'),
(10, 'cd25bb21-ba7d-4366-a9f7-ed1010052fe3', 25, 'DX-2590', NULL, '2024-01-04 05:29:38', '2024-01-04 05:29:38');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_science_club_attachments`
--

CREATE TABLE `license_s5zyr2p6_science_club_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `science_club_id` bigint UNSIGNED DEFAULT NULL,
  `is_attachment_type_mandatory` tinyint(1) NOT NULL DEFAULT '0',
  `attachment_type_id` bigint UNSIGNED DEFAULT NULL,
  `attachment_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_science_club_attachments`
--

INSERT INTO `license_s5zyr2p6_science_club_attachments` (`id`, `science_club_id`, `is_attachment_type_mandatory`, `attachment_type_id`, `attachment_name`, `remarks`, `attachment_file`, `created_at`, `updated_at`) VALUES
(1, 2, 0, 44, 'Cheque Scan Copy', NULL, '6592a1633f5a7', '2024-01-01 11:26:39', '2024-01-01 11:26:39'),
(2, 2, 0, 45, 'Previous Science Related work experience', NULL, '6592a16b868ad', '2024-01-01 11:26:39', '2024-01-01 11:26:39'),
(3, 2, 0, 63, 'Recommendation Letter', NULL, NULL, '2024-01-01 11:26:39', '2024-01-01 11:26:39');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_science_club_branches`
--

CREATE TABLE `license_s5zyr2p6_science_club_branches` (
  `id` bigint UNSIGNED NOT NULL,
  `science_club_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_science_club_branches`
--

INSERT INTO `license_s5zyr2p6_science_club_branches` (`id`, `science_club_id`, `name`, `address`, `mobile_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 2, 'nill', NULL, NULL, NULL, '2024-01-01 11:26:11', '2024-01-01 11:26:11'),
(2, 2, 'nill', NULL, NULL, NULL, '2024-01-01 11:26:11', '2024-01-01 11:26:11');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_science_club_committee_members`
--

CREATE TABLE `license_s5zyr2p6_science_club_committee_members` (
  `id` bigint UNSIGNED NOT NULL,
  `science_club_id` bigint UNSIGNED DEFAULT NULL,
  `member_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_science_club_committee_members`
--

INSERT INTO `license_s5zyr2p6_science_club_committee_members` (`id`, `science_club_id`, `member_type`, `name`, `address`, `mobile_number`, `email`, `created_at`, `updated_at`) VALUES
(1, 2, 'ADVISER', 'nill', NULL, NULL, NULL, '2024-01-01 11:25:37', '2024-01-01 11:25:37');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_science_club_members`
--

CREATE TABLE `license_s5zyr2p6_science_club_members` (
  `id` bigint UNSIGNED NOT NULL,
  `science_club_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mobile_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_science_club_members`
--

INSERT INTO `license_s5zyr2p6_science_club_members` (`id`, `science_club_id`, `name`, `address`, `mobile_number`, `email`, `member_type`, `nid`, `photo`, `created_at`, `updated_at`) VALUES
(1, 2, 'nill', NULL, NULL, NULL, 'VICE_PRESIDENT', NULL, NULL, '2024-01-01 11:25:38', '2024-01-01 11:25:38');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_science_club_registrations`
--

CREATE TABLE `license_s5zyr2p6_science_club_registrations` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `application_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_active_step` int DEFAULT NULL,
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_division_id` bigint UNSIGNED DEFAULT NULL,
  `club_district_id` bigint UNSIGNED DEFAULT NULL,
  `club_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `club_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `club_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `club_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activity_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `central_club_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `central_club_division_id` bigint UNSIGNED DEFAULT NULL,
  `central_club_district_id` bigint UNSIGNED DEFAULT NULL,
  `central_club_upazilla_id` bigint UNSIGNED DEFAULT NULL,
  `central_club_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `central_club_telephone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `central_club_fax` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `central_club_mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `central_club_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `establishment_date` date DEFAULT NULL,
  `management_policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `number_of_club_members` int DEFAULT NULL,
  `bank_account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `laboratory_facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `library_facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `furniture_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `publication_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_facilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `competition_participation_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `club_extracurricular_activities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_draft_pay_order_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_order_bank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_order_bank_branch` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_order_amount` decimal(8,2) DEFAULT NULL,
  `vat` decimal(8,2) NOT NULL DEFAULT '0.00',
  `renewal_fee` decimal(8,2) NOT NULL DEFAULT '0.00',
  `total_fee` decimal(10,2) NOT NULL DEFAULT '0.00',
  `submission_date` date DEFAULT NULL,
  `is_agreed` tinyint(1) DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_science_club_registrations`
--

INSERT INTO `license_s5zyr2p6_science_club_registrations` (`id`, `uuid`, `organization_id`, `service_mapping_id`, `application_type`, `current_active_step`, `tracking_number`, `club_name`, `club_division_id`, `club_district_id`, `club_upazilla_id`, `club_address`, `club_telephone`, `club_mobile`, `club_email`, `club_fax`, `club_type`, `activity_details`, `central_club_name`, `central_club_division_id`, `central_club_district_id`, `central_club_upazilla_id`, `central_club_address`, `central_club_telephone`, `central_club_fax`, `central_club_mobile`, `central_club_email`, `establishment_date`, `management_policy`, `number_of_club_members`, `bank_account_name`, `bank_account_number`, `bank`, `bank_branch`, `laboratory_facilities`, `library_facilities`, `furniture_details`, `publication_details`, `other_facilities`, `competition_participation_details`, `club_extracurricular_activities`, `bank_draft_pay_order_number`, `pay_order_bank`, `pay_order_bank_branch`, `pay_order_amount`, `vat`, `renewal_fee`, `total_fee`, `submission_date`, `is_agreed`, `created_by`, `updated_by`, `created_at`, `updated_at`, `status`) VALUES
(2, 'd265c5ef-9700-49f1-a8b1-761708430d41', 5, 55, 'NEW', 6, 'SCR-202401010002', 'Nill', 6, 28, 432, NULL, NULL, '01814568793', 'hridoy@gmail.com', NULL, 'central_club', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-01', 'nill', 3, 'nill', '45678', 'nill', 'khulna', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 100.00, 15.00, 0.00, 115.00, '2024-01-01', 1, 1758, 1758, '2024-01-01 11:24:50', '2024-01-01 11:28:15', 'SUBMITTED');

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_sequences`
--

CREATE TABLE `license_s5zyr2p6_sequences` (
  `id` bigint UNSIGNED NOT NULL,
  `sequence_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_counter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_value` int DEFAULT NULL,
  `increment` int DEFAULT NULL,
  `current_value` int DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_sequences`
--

INSERT INTO `license_s5zyr2p6_sequences` (`id`, `sequence_name`, `reset_counter`, `min_value`, `increment`, `current_value`, `update_date`, `created_at`, `updated_at`) VALUES
(1, 'LICENSE', 'INFINITE', 10000, 1, 10026, '2024-01-04', NULL, NULL),
(2, 'IMPORT_EXPORT', 'INFINITE', 1, 1, 9, '2024-01-02', NULL, NULL),
(3, 'RCO', 'INFINITE', 1, 1, 9, '2024-01-02', NULL, NULL),
(4, 'NOC', 'INFINITE', 1, 1, 1, NULL, NULL, NULL),
(5, 'RENEWAL', 'YEARLY', 1, 1, 2, '2024-01-02', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `license_s5zyr2p6_service_templates`
--

CREATE TABLE `license_s5zyr2p6_service_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `organization_id` bigint UNSIGNED DEFAULT NULL,
  `organogram_id` bigint UNSIGNED DEFAULT NULL,
  `component_id` bigint UNSIGNED DEFAULT NULL,
  `service_mapping_id` bigint UNSIGNED DEFAULT NULL,
  `scope` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) DEFAULT '0',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `license_s5zyr2p6_service_templates`
--

INSERT INTO `license_s5zyr2p6_service_templates` (`id`, `uuid`, `organization_id`, `organogram_id`, `component_id`, `service_mapping_id`, `scope`, `title`, `content`, `is_active`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'a534a42e-b442-48dc-946b-3e7b39349d03', 7, NULL, 2, 36, NULL, 'Permit: Import/Export Permit', '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Import/Export Permit</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0;margin-bottom:0\">\n            Permission for %IMPORT_EXPORT_TYPE% of %IMPORT_EXPORT_PRODUCTS%\n        </h1>\n        <p style=\"margin-top:0;text-transform:none;font-size:12px;\">\n            [Persuant to Bangladesh Atomic Energy Regulatory Act 2012 (Act No. 19, 2012) and SRO No. 205 - Law/97, Nuclear Safety and Radiation Control Rules-1997]\n        </p>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Permit Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Reference to the Application <strong>%APPLICATION_TRACKING_NUMBER%</strong>  dated <strong>%APPLICATION_DATE%</strong> the Authority is pleased to grant permission vide rules 8.1 and 11.1 of NSRC Rules-1997 to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n    <div style=\"margin-left:auto;margin-right:auto;width:75%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">Class-E License Number:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%CLASS_E_LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>for the %IMPORT_EXPORT_TYPE% of the following %IMPORT_EXPORT_PRODUCTS%:</p>\n    <p style=\"text-align:center\">--- LISTED OVER LEAF ---</p>\n    <p>vide Proforma Invoice No. <strong>%PROFORMA_INVOICE_NUMBER%</strong> dated <strong>%PROFORMA_INVOICE_DATE%</strong> and Documentary Credit No. <strong>%LC_NUMBER%</strong> dated <strong>%LC_DATE%</strong>.</p>\n\n    <p>The above mentioned items may be %IMPORT_EXPORT_TYPE%ed by the consignee in <strong>%CONSIGNMENT_TYPE%</strong> shipment(s) at the unloading port <strong>%UNLOADING_PORTS%</strong> stated in Schedule-18 of NSRC Rules-1997.</p>\n\n    <p>This permission is granted subject to the compliance of all the applicable requirments as set forth in the NSRC Rules-1997, the Regulations for Safe Transport of Radioactive Material [TS-R-1] issued by International Atomic Energy Agency (IAEA), and to the special condition(s) specified below:</p>\n\n    <p style=\"font-weight:700\">Special Conditions:</p>\n\n    The Permit Holder shall inform the undersigned in writing the following information:\n    <ol>\n        <li>The permit holder shall inform, in writing to the undersigned within 15 (Fifteen) days of import of the consignment stated in item 1 herein above and any change of storage or site.</li>\n        <li>After supply of the equipment, the relevant supplier has to submit detailed installation report on behalf of your institute.</li>\n        <li>Carry out acceptance testing/quality assurance as a part of commissioning of radiation generating equipment and send a report to BAERA within 15(Fifteen) days.</li>\n    </ol>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n\n    %PAGE_BREAK%\n\n    <p><strong>Radioactive Materials:</strong></p>\n    %RADIOACTIVE_MATERIALS%\n\n    <p><strong>Irradiating Apparatus:</strong></p>\n    %IRRADIATING_APPARATUS%\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(2, 'ed625ba4-25e9-40ac-ad1b-4b445bfc643e', 7, NULL, 2, 67, NULL, 'License: Class A (New)', '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-A</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radioactive Materials\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <div>to own, store, handle, and use the following radiation sources:</di>\n\n    %MATERIALS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(3, '236c74ca-56a6-4f54-b4a7-491a6c009646', 7, NULL, 2, 38, NULL, 'License: Class C (New)', '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-C</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Radiation Generating Equipment\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_PERMIT_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n        <div style=\"margin-top:10px\">[ Installation Code: %INSTALLATION_CODE% ]</div>\n    </div>\n\n    <div>to own, store, handle, and use the following equipments:</di>\n\n    %EQUIPMENTS%\n\n    <p>This license is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.13, 19.5, 24, 38 and 52.</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the License Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(4, '0de446eb-9b8b-47c4-a86e-fee6b8713e98', 7, NULL, 2, 133, NULL, 'License: Class D', '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-D</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            License for Transport of %TRANSPORTATION_MATERIAL%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby issues the license to:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This licence is subject to the compliance of all applicable limits and conditions set-forth in the Nuclear Safety and Radiation Control Rules–1997 (SRO No. 205-Law /97), in particular of those mentioned in Rules 10.1, 10.13, 56, 77, 86.1, 86.2 and 86.3</p>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>This license is subject to the conditions that all national regulatory requirements and the requirements of IAEA Regulations for the Safe Transport of Radioactive Material [SSR-6 (Rev.1), Edition-2018], section V (Para: 545-547, 554-556) for consignor and section V (Para: 584-587) for carrier and conditions as stated in the original license shall remain.</p>\n\n    <p>The issuance of this License is based upon the License Application vide Rule 10.7 of NSRC Rules-1997 dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:14px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(5, '6968210e-5abf-4006-9350-ef2eea387f22', 7, NULL, 2, 37, NULL, 'License: Class E (New)', '<div style=\"font-size:12px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h2 style=\"font-size:14px;font-weight:normal;margin-bottom:0\">Class-E</h2>\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Licence for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">License Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSE_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <div style=\"text-align:center;margin-bottom:10px;\">\n        <div><strong>%INSTITUTE_NAME%</strong></div>\n        <div>%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>Pursuant to Sections 18(2)(a)(b) & 21(1) of the Bangladesh Atomic Energy Regulatory Act No.19 of 2012 and subject to the conditions and limits incorporated herein, the license is issued to the entity mentioned above for %IMPORT_EXPORT_TYPE% of %PERMISSION_MATERIALS%.</p>\n\n    <p>This licence is subject to the compliance of all applicable requirements as set-forth in the Nuclear Safety and Radiation Control Rules-1997(SRO No.205-Law/1997), in particular of those mentioned in Rules 10.1, 10.7, 10.13, 11, 14 and 54.</p>\n\n    <p>The licensee prior to import and export each consignment of radiation generating equipment and radioactive materials shall apply to the Authority for a permit for custom\'s clearance in prescribed form stated in Schedule-XVIII and on payment of the fees given in Schedule-VII as per provision of Rule 11.1 and shall submit alongwith the applications, technical details of the machines as required by Rule 11.2. The technical specification of the machines shall be inconformity with the requirements stated in items 3(i) of Schedule IX (Applicable Standard. Code and Guide).</p>\n\n    <p>The licensee shall intimate the undersigned in writing the following information in a manner stated below:</p>\n\n    <ol>\n        <li>Numbers and particulars of each consignment of the radiation generating equipment and radioactive materials within 15 days of customs clearance, and</li>\n        <li>Names and detailed address of the purchaser of each radiation generating equipment and radioactive materials sold within 7 days of the sale.</li>\n    </ol>\n\n    <div>For the purpose of this license:</div>\n    <table style=\"width:100%;border:1px solid #666;font-size:12px;border-collapse:collapse;margin-bottom:10px\">\n        <tbody>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">The Legal Nominee/Authorized Person</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%LICENSEE_NAME%</strong></td>\n            </tr>\n            <tr>\n                <td style=\"border-bottom:1px solid #666;padding:5px;width:250px\">Radiation Control Officer</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NAME%</strong> (Certification Number: <strong>%RCO_LICENSE_NUMBER%</strong>)</td>\n            </tr>\n        </tbody>\n    </table>\n\n    <p>The issuance of this License is based upon the Application dated <strong>%APPLICATION_DATE%</strong> and the information obtained during the inspection on <strong>%INSPECTION_DATE%</strong> and the documents submitted to this office for the license, filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%;font-size:12px\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(6, '5e1b9c30-f3b8-49cc-899f-4f16ff3d8433', 7, NULL, 2, 57, NULL, 'License: RCO Certificate', '<div style=\"font-size:14px\">\n    <div style=\"text-align:center;margin-top:10px;margin-bottom:10px;text-transform:uppercase\">\n        <h1 style=\"font-size:18px;font-weight:700;margin-top:0\">\n            Provisional Certificate of Radiation Control Officer (RCO)\n        </h1>\n    </div>\n\n    <div style=\"margin-left:auto;margin-right:auto;width:85%\">\n        <table style=\"width:100%;border:2px solid #666;font-size:14px;border-collapse:collapse;margin-bottom:20px\">\n            <tbody>\n                <tr>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">RCO Number</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\"><strong>%RCO_NUMBER%</strong></td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\">Date of Issue</td>\n                    <td style=\"border-bottom:1px solid #666;padding:5px\">:</td>\n                    <td style=\"text-align:right;border-bottom:1px solid #666;padding:5px\"><strong>%ISSUE_DATE%</strong></td>\n                </tr>\n                <tr>\n                    <td style=\"padding:5px\">Docket Number</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"padding:5px\"><strong>%DOCKETING_NUMBER%</strong></td>\n                    <td style=\"text-align:right;padding:5px\">Date of Expiry</td>\n                    <td style=\"padding:5px\">:</td>\n                    <td style=\"text-align:right;padding:5px\"><strong>%EXPIRY_DATE%</strong></td>\n                </tr>\n            </tbody>\n        </table>\n    </div>\n\n    <p>Pursuant to Rule 54.2 of the NSRC Rules-97(SRO NO.205-law/97) and subject to the conditions and limitations incorporated herein, the Bangladesh Atomic Energy Regulatory Authority (BAERA) hereby certifies the following person to act as the RCO of the mentioned facility:</p>\n\n    <div style=\"text-align:center;margin-bottom:10px;line-height:15px\">\n        <div><strong>%RCO_NAME%</strong></div>\n        <div style=\"font-size:11px\">%RCO_DESIGNATION%</div>\n        <div>%INSTITUTE_NAME%</div>\n        <div style=\"font-size:11px\">%INSTITUTE_ADDRESS%</div>\n    </div>\n\n    <p>This certificate authorises the RCO to discharge the responsibilities stated in Rule 54.1 and the provisions of such other rules, as are applicable for the licence and that he/she shall submit a report to the BAERA by 31st March of each year on the performance of his/her regulatory responsibilities relating to the immediate preceding calendar year.</p>\n\n    <p>This certificate is valid only for the facility mentioned above. The issuance of this certificate is based upon an evaluation of the concerned person\'s (a) qualifications and (b) undertaking of competence including the representation and information contained in his application for licence filed under the Docket No. mentioned above.</p>\n\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    <p><strong>Issued by</strong></p>\n                    %APPROVER%<br>\n                    Radiation Transport and Waste Safety Division<br>\n                    Bangladesh Atomic Energy Regulatory Authority\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL),
(7, '81f1433e-7c4f-4027-8c83-ed7833e8a0e5', 7, NULL, 2, 39, NULL, 'License: NOC', '<div>\n    <table style=\"width:100%;border-collapse:collapse;font-size:14px\">\n        <tbody>\n            <td>\n                সূত্র নং-বিএইআর-৫(২০৪)/২০০৮-ভলি.-১৩\n            </td>\n            <td style=\"text-align:right\">\n                তারিখ: %ISSUE_DATE%\n            </td>\n        </tbody>\n    </table>\n\n    <h1 style=\"font-size:1rem;font-weight:700;text-transform:uppercase;text-align:center;margin-top:1rem;margin-bottom:1rem;\">\n        প্রত্যায়নপত্র - %NOC_NUMBER%\n    </h1>\n\n    <p>%INSTITUTE_NAME%, %INSTITUTE_ADDRESS%-এর Proforma Invoice No. PRO-0045/18 (Date: 25-05-2018) এবং Documentary Credit No. 161818010577 (Date: 07-08-2018)-এর আওতায় আমদানিকৃত নিম্ন-বর্ণিত যন্ত্রপাতিগুলো আয়নায়নকারী বিকিরণ উৎপাদনকারী যন্ত্রপাতির আওতায় পড়ে না:</p>\n\n    <p><strong>মেশিনের বিবরণ:</strong></p>\n    %MACHINE_DETAILS%\n\n    <p>এমতাবস্থায়, উপরোক্ত যন্ত্রপাতিগুলো সংশ্লিষ্ট বন্দর থেকে খালাসের নিমিত্তে পানিবিনি বিধিমালা-৯৭ অনুযায়ী বাংলাদেশ পরমাণু শক্তি নিয়ন্ত্রণ কর্তৃপক্ষ থেকে কোন ছাড়পত্র গ্রহণ করার প্রয়োজন নাই।</p>\n    <table style=\"width:100%\">\n        <tbody>\n            <tr>\n                <td>\n                    %APPROVER%<br>\n                    বিকিরণ নিয়ন্ত্রণ বিভাগ<br>\n                    বাংলাদেশ পরমাণু শক্তি নিয়ন্ত্রণ কর্তৃপক্ষ\n                </td>\n                <td style=\"text-align:right\">\n                    %QR_CODE%\n                    <div style=\"font-size:11px\">Scan the QR Code to Verify</div>\n                </td>\n            </tr>\n        </tbody>\n    </table>\n</div>\n', 1, NULL, NULL, '2023-11-30 06:17:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `license_s5zyr2p6_application_inspections`
--
ALTER TABLE `license_s5zyr2p6_application_inspections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `application_inspections_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_applications`
--
ALTER TABLE `license_s5zyr2p6_class_a_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_applications_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_a_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_attachments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_a_caretaker_experiences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_caretaker_experiences_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_caretaker_trainings`
--
ALTER TABLE `license_s5zyr2p6_class_a_caretaker_trainings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_caretaker_trainings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_measuring_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_a_measuring_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_measuring_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_a_personnel_monitorings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_personnel_monitorings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_radioactive_materials`
--
ALTER TABLE `license_s5zyr2p6_class_a_radioactive_materials`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_radioactive_materials_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_radioactive_material_users`
--
ALTER TABLE `license_s5zyr2p6_class_a_radioactive_material_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_radioactive_material_users_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_safety_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_a_safety_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_safety_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_source_warehousings`
--
ALTER TABLE `license_s5zyr2p6_class_a_source_warehousings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_source_warehousings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_a_supervisors`
--
ALTER TABLE `license_s5zyr2p6_class_a_supervisors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_a_supervisors_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_applications`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_applications_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_caretaker_experiences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_caretaker_experiences_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_caretaker_tranings`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_caretaker_tranings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_caretaker_tranings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_equipment_details`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_equipment_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_equipment_details_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_equipment_users`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_equipment_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_equipment_users_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_paper_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_paper_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_paper_attachments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_personnel_monitorings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_personnel_monitorings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_present_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_present_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_present_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_safety_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_safety_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_safety_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_c_license_supervisor_identifiers`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_supervisor_identifiers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_c_license_supervisor_identifiers_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_applications`
--
ALTER TABLE `license_s5zyr2p6_class_d_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_applications_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_d_caretaker_experiences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_caretaker_experiences_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_caretaker_trainings`
--
ALTER TABLE `license_s5zyr2p6_class_d_caretaker_trainings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_caretaker_trainings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_extra_attachmets`
--
ALTER TABLE `license_s5zyr2p6_class_d_extra_attachmets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_extra_attachmets_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_measuring_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_d_measuring_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_measuring_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_d_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_d_personnel_monitorings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_d_personnel_monitorings_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_e_applications`
--
ALTER TABLE `license_s5zyr2p6_class_e_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_e_applications_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_class_e_license_paper_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_paper_attachments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_e_license_paper_attachments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_class_e_license_radioactive_material_infos`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_radioactive_material_infos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `class_e_license_radioactive_material_infos_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_examples`
--
ALTER TABLE `license_s5zyr2p6_examples`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `examples_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_import_export_applications`
--
ALTER TABLE `license_s5zyr2p6_import_export_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `import_export_applications_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_import_export_attachments`
--
ALTER TABLE `license_s5zyr2p6_import_export_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_import_export_irradiation_apparatuses`
--
ALTER TABLE `license_s5zyr2p6_import_export_irradiation_apparatuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_import_export_radioactive_materials`
--
ALTER TABLE `license_s5zyr2p6_import_export_radioactive_materials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_import_export_sell_records`
--
ALTER TABLE `license_s5zyr2p6_import_export_sell_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_import_export_shipments`
--
ALTER TABLE `license_s5zyr2p6_import_export_shipments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_inspections`
--
ALTER TABLE `license_s5zyr2p6_inspections`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inspections_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_inspection_inspectors`
--
ALTER TABLE `license_s5zyr2p6_inspection_inspectors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inspection_inspectors_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_inspection_plans`
--
ALTER TABLE `license_s5zyr2p6_inspection_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inspection_plans_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_inspection_plan_details`
--
ALTER TABLE `license_s5zyr2p6_inspection_plan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_inspection_protective_equipments`
--
ALTER TABLE `license_s5zyr2p6_inspection_protective_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inspection_protective_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_inspection_xray_technicians`
--
ALTER TABLE `license_s5zyr2p6_inspection_xray_technicians`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inspection_xray_technicians_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_license_permits`
--
ALTER TABLE `license_s5zyr2p6_license_permits`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_permits_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_license_renewal_fees`
--
ALTER TABLE `license_s5zyr2p6_license_renewal_fees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_renewal_fees_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_license_renewal_fee_steps`
--
ALTER TABLE `license_s5zyr2p6_license_renewal_fee_steps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_renewal_fee_steps_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_license_surrender_transfers`
--
ALTER TABLE `license_s5zyr2p6_license_surrender_transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `license_surrender_transfers_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_migrations`
--
ALTER TABLE `license_s5zyr2p6_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_noc_applications`
--
ALTER TABLE `license_s5zyr2p6_noc_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noc_applications_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `noc_applications_tracking_number_unique` (`tracking_number`);

--
-- Indexes for table `license_s5zyr2p6_noc_application_attachments`
--
ALTER TABLE `license_s5zyr2p6_noc_application_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_noc_application_equipments`
--
ALTER TABLE `license_s5zyr2p6_noc_application_equipments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `noc_application_equipments_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_personal_access_tokens`
--
ALTER TABLE `license_s5zyr2p6_personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `license_s5zyr2p6_ports`
--
ALTER TABLE `license_s5zyr2p6_ports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ports_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_products`
--
ALTER TABLE `license_s5zyr2p6_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_rco_annual_reports`
--
ALTER TABLE `license_s5zyr2p6_rco_annual_reports`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rco_annual_reports_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_rco_applications`
--
ALTER TABLE `license_s5zyr2p6_rco_applications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rco_applications_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `rco_applications_application_number_unique` (`tracking_number`);

--
-- Indexes for table `license_s5zyr2p6_rco_application_attachments`
--
ALTER TABLE `license_s5zyr2p6_rco_application_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_rco_certificates`
--
ALTER TABLE `license_s5zyr2p6_rco_certificates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rco_certificates_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_science_club_attachments`
--
ALTER TABLE `license_s5zyr2p6_science_club_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_science_club_branches`
--
ALTER TABLE `license_s5zyr2p6_science_club_branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_science_club_committee_members`
--
ALTER TABLE `license_s5zyr2p6_science_club_committee_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_science_club_members`
--
ALTER TABLE `license_s5zyr2p6_science_club_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_science_club_registrations`
--
ALTER TABLE `license_s5zyr2p6_science_club_registrations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `science_club_registrations_uuid_unique` (`uuid`);

--
-- Indexes for table `license_s5zyr2p6_sequences`
--
ALTER TABLE `license_s5zyr2p6_sequences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `license_s5zyr2p6_service_templates`
--
ALTER TABLE `license_s5zyr2p6_service_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_templates_uuid_unique` (`uuid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_application_inspections`
--
ALTER TABLE `license_s5zyr2p6_application_inspections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_applications`
--
ALTER TABLE `license_s5zyr2p6_class_a_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_a_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_a_caretaker_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_caretaker_trainings`
--
ALTER TABLE `license_s5zyr2p6_class_a_caretaker_trainings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_measuring_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_a_measuring_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_a_personnel_monitorings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_radioactive_materials`
--
ALTER TABLE `license_s5zyr2p6_class_a_radioactive_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_radioactive_material_users`
--
ALTER TABLE `license_s5zyr2p6_class_a_radioactive_material_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_safety_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_a_safety_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_source_warehousings`
--
ALTER TABLE `license_s5zyr2p6_class_a_source_warehousings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_a_supervisors`
--
ALTER TABLE `license_s5zyr2p6_class_a_supervisors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_applications`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_caretaker_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_caretaker_tranings`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_caretaker_tranings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_equipment_details`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_equipment_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_equipment_users`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_equipment_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_paper_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_paper_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_personnel_monitorings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_present_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_present_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_safety_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_safety_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_c_license_supervisor_identifiers`
--
ALTER TABLE `license_s5zyr2p6_class_c_license_supervisor_identifiers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_applications`
--
ALTER TABLE `license_s5zyr2p6_class_d_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_caretaker_experiences`
--
ALTER TABLE `license_s5zyr2p6_class_d_caretaker_experiences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_caretaker_trainings`
--
ALTER TABLE `license_s5zyr2p6_class_d_caretaker_trainings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_extra_attachmets`
--
ALTER TABLE `license_s5zyr2p6_class_d_extra_attachmets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_measuring_equipments`
--
ALTER TABLE `license_s5zyr2p6_class_d_measuring_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_d_personnel_monitorings`
--
ALTER TABLE `license_s5zyr2p6_class_d_personnel_monitorings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_e_applications`
--
ALTER TABLE `license_s5zyr2p6_class_e_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_irradiation_apparatuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_e_license_paper_attachments`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_paper_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_class_e_license_radioactive_material_infos`
--
ALTER TABLE `license_s5zyr2p6_class_e_license_radioactive_material_infos`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_examples`
--
ALTER TABLE `license_s5zyr2p6_examples`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_applications`
--
ALTER TABLE `license_s5zyr2p6_import_export_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_attachments`
--
ALTER TABLE `license_s5zyr2p6_import_export_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_irradiation_apparatuses`
--
ALTER TABLE `license_s5zyr2p6_import_export_irradiation_apparatuses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_radioactive_materials`
--
ALTER TABLE `license_s5zyr2p6_import_export_radioactive_materials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_sell_records`
--
ALTER TABLE `license_s5zyr2p6_import_export_sell_records`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_import_export_shipments`
--
ALTER TABLE `license_s5zyr2p6_import_export_shipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspections`
--
ALTER TABLE `license_s5zyr2p6_inspections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspection_inspectors`
--
ALTER TABLE `license_s5zyr2p6_inspection_inspectors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspection_plans`
--
ALTER TABLE `license_s5zyr2p6_inspection_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspection_plan_details`
--
ALTER TABLE `license_s5zyr2p6_inspection_plan_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspection_protective_equipments`
--
ALTER TABLE `license_s5zyr2p6_inspection_protective_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_inspection_xray_technicians`
--
ALTER TABLE `license_s5zyr2p6_inspection_xray_technicians`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_license_permits`
--
ALTER TABLE `license_s5zyr2p6_license_permits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_license_renewal_fees`
--
ALTER TABLE `license_s5zyr2p6_license_renewal_fees`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_license_renewal_fee_steps`
--
ALTER TABLE `license_s5zyr2p6_license_renewal_fee_steps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_license_surrender_transfers`
--
ALTER TABLE `license_s5zyr2p6_license_surrender_transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_migrations`
--
ALTER TABLE `license_s5zyr2p6_migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=214;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_noc_applications`
--
ALTER TABLE `license_s5zyr2p6_noc_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_noc_application_attachments`
--
ALTER TABLE `license_s5zyr2p6_noc_application_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_noc_application_equipments`
--
ALTER TABLE `license_s5zyr2p6_noc_application_equipments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_personal_access_tokens`
--
ALTER TABLE `license_s5zyr2p6_personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_ports`
--
ALTER TABLE `license_s5zyr2p6_ports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_products`
--
ALTER TABLE `license_s5zyr2p6_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_rco_annual_reports`
--
ALTER TABLE `license_s5zyr2p6_rco_annual_reports`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_rco_applications`
--
ALTER TABLE `license_s5zyr2p6_rco_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_rco_application_attachments`
--
ALTER TABLE `license_s5zyr2p6_rco_application_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_rco_certificates`
--
ALTER TABLE `license_s5zyr2p6_rco_certificates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_science_club_attachments`
--
ALTER TABLE `license_s5zyr2p6_science_club_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_science_club_branches`
--
ALTER TABLE `license_s5zyr2p6_science_club_branches`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_science_club_committee_members`
--
ALTER TABLE `license_s5zyr2p6_science_club_committee_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_science_club_members`
--
ALTER TABLE `license_s5zyr2p6_science_club_members`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_science_club_registrations`
--
ALTER TABLE `license_s5zyr2p6_science_club_registrations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_sequences`
--
ALTER TABLE `license_s5zyr2p6_sequences`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `license_s5zyr2p6_service_templates`
--
ALTER TABLE `license_s5zyr2p6_service_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
