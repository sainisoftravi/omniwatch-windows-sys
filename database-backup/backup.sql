-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: oomnieye_construction
-- ------------------------------------------------------
-- Server version	8.0.46

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adonis_schema`
--

DROP TABLE IF EXISTS `adonis_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `batch` int NOT NULL,
  `migration_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema`
--

LOCK TABLES `adonis_schema` WRITE;
/*!40000 ALTER TABLE `adonis_schema` DISABLE KEYS */;
INSERT INTO `adonis_schema` VALUES (1,'database/migrations/1761885935168_create_users_table',1,'2026-10-09 10:14:41'),(2,'database/migrations/1768620764696_create_access_tokens_table',1,'2026-10-09 10:14:42'),(3,'database/migrations/1769100000000_create_cameras_table',1,'2026-10-09 10:14:42'),(4,'database/migrations/1769300000000_add_latitude_longitude_to_cameras',1,'2026-10-09 10:14:42'),(5,'database/migrations/1769400000000_create_user_preferences_table',1,'2026-10-09 10:14:42'),(6,'database/migrations/1769500000000_create_drawings_table',1,'2026-10-09 10:14:42'),(7,'database/migrations/1769510000000_create_patrol_section_cameras_table',1,'2026-10-09 10:14:42'),(8,'database/migrations/1769520000000_create_camera_hotspots_table',1,'2026-10-09 10:14:42'),(9,'database/migrations/1769600000000_add_type_to_cameras',1,'2026-10-09 10:14:43'),(10,'database/migrations/1769700000000_add_rtmp_url_to_cameras',1,'2026-10-09 10:14:43'),(11,'database/migrations/1769800000000_drop_camera_hotspots_table',1,'2026-10-09 10:14:43'),(12,'database/migrations/1769900000001_drop_patrol_drawings_tables',1,'2026-10-09 10:14:43'),(13,'database/migrations/1770050000000_fix_users_uuid_primary_key',1,'2026-10-09 10:14:43'),(14,'database/migrations/1770100000000_create_camera_ptz_access_table',1,'2026-10-09 10:14:43'),(15,'database/migrations/1770200000000_create_camera_presence_sessions_table',1,'2026-10-09 10:14:43'),(16,'database/migrations/1770300000000_add_description_to_cameras',1,'2026-10-09 10:14:44'),(17,'database/migrations/1770400000000_add_ptz_calibration_to_cameras',1,'2026-10-09 10:14:44'),(18,'database/migrations/1770500000000_add_is_favorite_to_users_and_roles',1,'2026-10-09 10:14:44'),(19,'database/migrations/1770500000001_add_is_favorite_to_use_cases',1,'2026-10-09 10:14:44'),(20,'database/migrations/1770500000002_create_storage_settings_table',1,'2026-10-09 10:14:44'),(21,'database/migrations/1770500000003_add_fifo_free_percent_to_storage_settings',1,'2026-10-09 10:14:44'),(22,'database/migrations/1770500000004_add_record_segment_duration_to_storage_settings',1,'2026-10-09 10:14:44'),(23,'database/migrations/1770600000000_nullable_detections_camera_id_on_delete',1,'2026-10-09 10:14:44'),(24,'database/migrations/1770800000000_create_roles_rbac_tables',1,'2026-10-09 10:14:45'),(25,'database/migrations/1770810000000_add_recording_columns_to_cameras',1,'2026-10-09 10:14:46'),(26,'database/migrations/1770900000000_create_wankhede1_complete_schema',1,'2026-10-09 10:14:47'),(27,'database/migrations/1771000000000_widen_encrypted_enrollment_pii_columns',1,'2026-10-09 10:14:48'),(28,'database/migrations/1787209571728_alter_enrollments_table',1,'2026-10-09 10:14:48'),(29,'database/migrations/1790000000000_align_python_shared_schema',1,'2026-10-09 10:14:51');
/*!40000 ALTER TABLE `adonis_schema` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adonis_schema_versions`
--

DROP TABLE IF EXISTS `adonis_schema_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adonis_schema_versions` (
  `version` int unsigned NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adonis_schema_versions`
--

LOCK TABLES `adonis_schema_versions` WRITE;
/*!40000 ALTER TABLE `adonis_schema_versions` DISABLE KEYS */;
INSERT INTO `adonis_schema_versions` VALUES (2);
/*!40000 ALTER TABLE `adonis_schema_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_events`
--

DROP TABLE IF EXISTS `ai_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_events` (
  `event_id` varchar(36) NOT NULL,
  `camera_ai_config_id` varchar(36) NOT NULL,
  `use_case_id` varchar(36) NOT NULL,
  `confidence` float NOT NULL,
  `detection_box` json DEFAULT NULL,
  `metadata` json DEFAULT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `event_timestamp` timestamp NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`event_id`),
  KEY `use_case_id` (`use_case_id`),
  KEY `ix_ai_events_camera_ai_config_id` (`camera_ai_config_id`),
  KEY `ix_ai_events_event_timestamp` (`event_timestamp`),
  CONSTRAINT `ai_events_ibfk_1` FOREIGN KEY (`camera_ai_config_id`) REFERENCES `camera_ai_configs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ai_events_ibfk_2` FOREIGN KEY (`use_case_id`) REFERENCES `use_cases` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_events`
--

LOCK TABLES `ai_events` WRITE;
/*!40000 ALTER TABLE `ai_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_use_cases`
--

DROP TABLE IF EXISTS `ai_use_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ai_use_cases` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` text,
  `ai_model_id` bigint NOT NULL,
  `custom_case` int DEFAULT NULL,
  `internal_case` int DEFAULT NULL,
  `supports_logic` tinyint(1) NOT NULL,
  `supports_threshold` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_ai_use_cases_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_use_cases`
--

LOCK TABLES `ai_use_cases` WRITE;
/*!40000 ALTER TABLE `ai_use_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_use_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alembic_version`
--

LOCK TABLES `alembic_version` WRITE;
/*!40000 ALTER TABLE `alembic_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `alembic_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alerts`
--

DROP TABLE IF EXISTS `alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alerts` (
  `id` varchar(36) NOT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `rule_id` varchar(36) DEFAULT NULL,
  `detections` json NOT NULL,
  `photo_url` varchar(500) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `notification_status` enum('queued','sent','partial','failed') NOT NULL,
  `rule_severity` varchar(50) DEFAULT NULL,
  `use_case_severity` varchar(50) DEFAULT NULL,
  `status` enum('active','closed','acknowledged') NOT NULL,
  `notify_by` varchar(20) NOT NULL,
  `notify_to` varchar(200) DEFAULT NULL,
  `notification_by_channel` json DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_alerts_sr_id` (`sr_id`),
  KEY `ix_alerts_status` (`status`),
  KEY `ix_alerts_notify_to` (`notify_to`),
  KEY `ix_alerts_notify_by` (`notify_by`),
  KEY `ix_alerts_notification_status` (`notification_status`),
  KEY `ix_alerts_id` (`id`),
  KEY `ix_alerts_rule_severity` (`rule_severity`),
  KEY `ix_alerts_use_case_severity` (`use_case_severity`),
  KEY `ix_alerts_rule_id` (`rule_id`),
  CONSTRAINT `fk_alerts_rule_id` FOREIGN KEY (`rule_id`) REFERENCES `rules` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alerts`
--

LOCK TABLES `alerts` WRITE;
/*!40000 ALTER TABLE `alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_settings` (
  `key` varchar(64) NOT NULL,
  `value` json NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_settings`
--

LOCK TABLES `app_settings` WRITE;
/*!40000 ALTER TABLE `app_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_access_tokens`
--

DROP TABLE IF EXISTS `auth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_id` varchar(36) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `hash` varchar(255) NOT NULL,
  `abilities` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_access_tokens_tokenable_id_index` (`tokenable_id`),
  CONSTRAINT `auth_access_tokens_tokenable_id_foreign` FOREIGN KEY (`tokenable_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_access_tokens`
--

LOCK TABLES `auth_access_tokens` WRITE;
/*!40000 ALTER TABLE `auth_access_tokens` DISABLE KEYS */;
INSERT INTO `auth_access_tokens` VALUES (1,'655430b1-f1a2-4b52-8136-e41c519c77f5','auth_token',NULL,'4d9bc33dbc5bdf3e1cc6a9914561b4952c9c3e2050b07200c10c95793e9c3168','[\"*\"]','2026-10-09 11:32:58','2026-10-09 11:32:58',NULL,NULL),(4,'7dab1788-a535-4382-9825-07fcf8c72540','auth_token',NULL,'bb719c1fbfad537b2bb98310606ed51caa42636de42130c9939d9213429f3561','[\"*\"]','2026-10-09 11:36:47','2026-10-09 11:36:47','2026-10-09 11:36:47',NULL);
/*!40000 ALTER TABLE `auth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_ai_configs`
--

DROP TABLE IF EXISTS `camera_ai_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_ai_configs` (
  `id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `use_case_id` varchar(36) NOT NULL,
  `zone_id` varchar(36) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` tinyint(1) DEFAULT '1',
  `zone_profile_id` varchar(36) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT '0',
  `deleted_at` datetime DEFAULT NULL,
  `severity` varchar(20) DEFAULT NULL,
  `detection_cooldown_interval` int NOT NULL DEFAULT '180',
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_camera_ai_configs_sr_id` (`sr_id`),
  KEY `ix_camera_ai_configs_id` (`id`),
  KEY `zone_id` (`zone_id`),
  KEY `camera_id` (`camera_id`),
  KEY `use_case_id` (`use_case_id`),
  KEY `zone_profile_id` (`zone_profile_id`),
  KEY `ix_camera_ai_configs_is_deleted` (`is_deleted`),
  CONSTRAINT `camera_ai_configs_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`),
  CONSTRAINT `camera_ai_configs_ibfk_3` FOREIGN KEY (`use_case_id`) REFERENCES `use_cases` (`id`),
  CONSTRAINT `camera_ai_configs_ibfk_4` FOREIGN KEY (`zone_profile_id`) REFERENCES `zone_profiles` (`id`),
  CONSTRAINT `camera_ai_configs_ibfk_5` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_ai_configs`
--

LOCK TABLES `camera_ai_configs` WRITE;
/*!40000 ALTER TABLE `camera_ai_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_ai_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_groups`
--

DROP TABLE IF EXISTS `camera_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_groups`
--

LOCK TABLES `camera_groups` WRITE;
/*!40000 ALTER TABLE `camera_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_hotspots`
--

DROP TABLE IF EXISTS `camera_hotspots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_hotspots` (
  `id` varchar(40) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `yaw_deg` decimal(8,2) NOT NULL,
  `pitch_deg` decimal(8,2) NOT NULL,
  `pin_direction_deg` decimal(8,2) NOT NULL DEFAULT '0.00',
  `asset_name` varchar(255) NOT NULL,
  `show_type` varchar(16) NOT NULL,
  `content_url` varchar(1024) NOT NULL,
  `image_url` varchar(1024) DEFAULT NULL,
  `content_mime` varchar(128) DEFAULT NULL,
  `content_filename` varchar(512) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_camera_hotspots_camera_id` (`camera_id`),
  CONSTRAINT `fk_camera_hotspots_camera_id` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_hotspots`
--

LOCK TABLES `camera_hotspots` WRITE;
/*!40000 ALTER TABLE `camera_hotspots` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_hotspots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_presence_sessions`
--

DROP TABLE IF EXISTS `camera_presence_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_presence_sessions` (
  `id` varchar(36) NOT NULL,
  `user_id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `started_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_activity_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_camera_presence_camera_activity` (`camera_id`,`last_activity_at`),
  KEY `ix_camera_presence_user_id` (`user_id`),
  CONSTRAINT `fk_camera_presence_sessions_camera_id` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_camera_presence_sessions_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_presence_sessions`
--

LOCK TABLES `camera_presence_sessions` WRITE;
/*!40000 ALTER TABLE `camera_presence_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_presence_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `camera_ptz_access`
--

DROP TABLE IF EXISTS `camera_ptz_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `camera_ptz_access` (
  `user_id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `status` enum('pending','active','rejected','blocked') NOT NULL DEFAULT 'pending',
  `blocked_until` timestamp NULL DEFAULT NULL,
  `requested_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `reviewed_at` timestamp NULL DEFAULT NULL,
  `reviewed_by` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`user_id`,`camera_id`),
  KEY `ix_camera_ptz_access_camera_status` (`camera_id`,`status`),
  CONSTRAINT `fk_camera_ptz_access_camera_id` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_camera_ptz_access_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `camera_ptz_access`
--

LOCK TABLES `camera_ptz_access` WRITE;
/*!40000 ALTER TABLE `camera_ptz_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `camera_ptz_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cameras`
--

DROP TABLE IF EXISTS `cameras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cameras` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `stream_url` varchar(2048) NOT NULL DEFAULT 'rtsp://127.0.0.1/not-configured',
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `sr_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cam360_rtsp` text,
  `ptz_rtsp` text,
  `onvif_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `onvif_host` varchar(255) DEFAULT NULL,
  `onvif_port` int unsigned DEFAULT NULL,
  `onvif_username` varchar(255) DEFAULT NULL,
  `onvif_password` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zoom_min` double DEFAULT NULL,
  `zoom_max` double DEFAULT NULL,
  `pan_offset_deg` double DEFAULT NULL,
  `tilt_offset_deg` double DEFAULT NULL,
  `has_internal` tinyint(1) NOT NULL DEFAULT '1',
  `latitude` decimal(10,7) DEFAULT NULL,
  `longitude` decimal(10,7) DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 => RTSP, 1 => RTMP',
  `rtmp_url` varchar(2048) DEFAULT NULL,
  `description` text,
  `ptz_calibration_points` longtext,
  `recording_type` enum('continuous','scheduled') NOT NULL DEFAULT 'continuous',
  `recording_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `recording_schedule_timezone` varchar(64) DEFAULT NULL,
  `recording_schedule_slots` json DEFAULT NULL,
  `manual_recording_started_at` datetime DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0',
  `vendor` varchar(32) NOT NULL DEFAULT 'hikvision',
  `group_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_cameras_name` (`name`),
  UNIQUE KEY `ix_cameras_sr_id` (`sr_id`),
  KEY `ix_cameras_group_id` (`group_id`),
  CONSTRAINT `fk_cameras_group_id_camera_groups` FOREIGN KEY (`group_id`) REFERENCES `camera_groups` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cameras`
--

LOCK TABLES `cameras` WRITE;
/*!40000 ALTER TABLE `cameras` DISABLE KEYS */;
INSERT INTO `cameras` VALUES ('3d78ee6e-f07f-4618-91f8-eb285336fee0','rtsp','rtsp://rtsp',0,1,'rtsp://rtsp',NULL,0,NULL,NULL,NULL,NULL,'2026-10-09 11:33:42','2026-10-09 11:33:42',NULL,NULL,NULL,NULL,1,NULL,NULL,0,NULL,NULL,NULL,'continuous',0,NULL,NULL,NULL,0,'hikvision',NULL);
/*!40000 ALTER TABLE `cameras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detections`
--

DROP TABLE IF EXISTS `detections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detections` (
  `id` varchar(36) NOT NULL,
  `alert_id` varchar(36) DEFAULT NULL,
  `trigger_id` varchar(36) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `camera_id` varchar(36) DEFAULT NULL,
  `camera_name` varchar(255) NOT NULL DEFAULT '',
  `use_case_id` varchar(36) DEFAULT NULL,
  `zone_id` varchar(36) DEFAULT NULL,
  `detected_at` datetime DEFAULT NULL,
  `detections` json DEFAULT NULL,
  `photo_url` varchar(500) DEFAULT NULL,
  `video_url` varchar(500) DEFAULT NULL,
  `severity` varchar(20) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `thumbnail_photo_url` varchar(500) DEFAULT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_detections_sr_id` (`sr_id`),
  KEY `ix_detections_trigger_id` (`trigger_id`),
  KEY `ix_detections_is_deleted` (`is_deleted`),
  KEY `ix_detections_alert_id` (`alert_id`),
  KEY `ix_detections_camera_id` (`camera_id`),
  KEY `ix_detections_detected_at` (`detected_at`),
  KEY `ix_detections_use_case_id` (`use_case_id`),
  KEY `ix_detections_zone_id` (`zone_id`),
  KEY `ix_detections_created_at` (`created_at`),
  KEY `ix_detections_updated_at` (`updated_at`),
  KEY `ix_detections_deleted_at` (`deleted_at`),
  CONSTRAINT `detections_ibfk_1` FOREIGN KEY (`alert_id`) REFERENCES `alerts` (`id`),
  CONSTRAINT `detections_ibfk_2` FOREIGN KEY (`trigger_id`) REFERENCES `triggers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detections`
--

LOCK TABLES `detections` WRITE;
/*!40000 ALTER TABLE `detections` DISABLE KEYS */;
/*!40000 ALTER TABLE `detections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drawings`
--

DROP TABLE IF EXISTS `drawings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drawings` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `drawing_type` varchar(32) NOT NULL,
  `description` text,
  `file_name` varchar(512) NOT NULL,
  `file_type` varchar(16) NOT NULL,
  `storage_path` varchar(1024) NOT NULL,
  `thumbnail_path` varchar(1024) DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drawings`
--

LOCK TABLES `drawings` WRITE;
/*!40000 ALTER TABLE `drawings` DISABLE KEYS */;
/*!40000 ALTER TABLE `drawings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `face_enrollment`
--

DROP TABLE IF EXISTS `face_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `face_enrollment` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `email` varchar(512) NOT NULL,
  `phone` varchar(512) DEFAULT NULL,
  `expiration_date` date NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `description` text,
  `front` varchar(500) DEFAULT NULL,
  `left_profile` varchar(500) DEFAULT NULL,
  `right_profile` varchar(500) DEFAULT NULL,
  `up_face` varchar(500) DEFAULT NULL,
  `down_face` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `is_fav` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_face_enrollment_sr_id` (`sr_id`),
  KEY `ix_face_enrollment_id` (`id`),
  KEY `ix_face_enrollment_is_deleted` (`is_deleted`),
  KEY `face_enrollment_is_fav_index` (`is_fav`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `face_enrollment`
--

LOCK TABLES `face_enrollment` WRITE;
/*!40000 ALTER TABLE `face_enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `face_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_credentials`
--

DROP TABLE IF EXISTS `notification_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_credentials` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `service_type` varchar(50) NOT NULL,
  `credentials` json NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_service_type` (`service_type`),
  KEY `ix_notification_credentials_id` (`id`),
  KEY `ix_notification_credentials_service_type` (`service_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_credentials`
--

LOCK TABLES `notification_credentials` WRITE;
/*!40000 ALTER TABLE `notification_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_types`
--

DROP TABLE IF EXISTS `object_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `object_types` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `use_case_id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_object_types_id` (`id`),
  KEY `ix_object_types_use_case_id` (`use_case_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_types`
--

LOCK TABLES `object_types` WRITE;
/*!40000 ALTER TABLE `object_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `object_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ptz_presets`
--

DROP TABLE IF EXISTS `ptz_presets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ptz_presets` (
  `id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `grid_id` int unsigned NOT NULL,
  `preset_id` int unsigned NOT NULL,
  `preset_name` varchar(64) NOT NULL,
  `created_by` varchar(36) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `ix_ptz_presets_camera_updated` (`camera_id`,`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ptz_presets`
--

LOCK TABLES `ptz_presets` WRITE;
/*!40000 ALTER TABLE `ptz_presets` DISABLE KEYS */;
/*!40000 ALTER TABLE `ptz_presets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_camera_permissions`
--

DROP TABLE IF EXISTS `role_camera_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_camera_permissions` (
  `role_id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_read` tinyint(1) NOT NULL DEFAULT '0',
  `can_update` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`camera_id`),
  KEY `role_camera_permissions_camera_id_foreign` (`camera_id`),
  CONSTRAINT `role_camera_permissions_camera_id_foreign` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_camera_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_camera_permissions`
--

LOCK TABLES `role_camera_permissions` WRITE;
/*!40000 ALTER TABLE `role_camera_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_camera_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_module_permissions`
--

DROP TABLE IF EXISTS `role_module_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_module_permissions` (
  `role_id` varchar(36) NOT NULL,
  `module` varchar(64) NOT NULL,
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_read` tinyint(1) NOT NULL DEFAULT '0',
  `can_update` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`module`),
  CONSTRAINT `role_module_permissions_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_module_permissions`
--

LOCK TABLES `role_module_permissions` WRITE;
/*!40000 ALTER TABLE `role_module_permissions` DISABLE KEYS */;
INSERT INTO `role_module_permissions` VALUES ('0528c786-72e5-4793-a29b-2b10f945f285','camera_management',1,1,1,1),('0528c786-72e5-4793-a29b-2b10f945f285','flashback',1,1,1,1),('0528c786-72e5-4793-a29b-2b10f945f285','nvr_management',1,1,1,1),('0528c786-72e5-4793-a29b-2b10f945f285','omniwatch',1,1,1,1);
/*!40000 ALTER TABLE `role_module_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` varchar(36) NOT NULL,
  `role_number` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `slug` varchar(64) DEFAULT NULL,
  `is_predefined` tinyint(1) NOT NULL DEFAULT '0',
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_roles_role_number` (`role_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('0528c786-72e5-4793-a29b-2b10f945f285',4,'Etisalat_USER',NULL,1,NULL,0,0,NULL,'2026-10-09 11:34:19','2026-10-09 11:34:19'),('4bd3bbaf-0131-4f26-b4bc-00f80540a1b1',2,'Admin','Built-in administrator (manage users)',1,'admin',1,0,NULL,'2026-10-09 10:14:45','2026-10-09 11:36:36'),('73eba243-d98e-400f-90af-55a31fab9a4e',3,'User','Built-in standard user',1,'user',1,0,NULL,'2026-10-09 10:14:45','2026-10-09 11:36:36'),('c46e870f-fe6d-4066-ab5a-f8b102807d48',1,'Super Admin','Built-in super administrator (full access)',1,'super_admin',1,0,NULL,'2026-10-09 10:14:45','2026-10-09 11:36:36');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rules`
--

DROP TABLE IF EXISTS `rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rules` (
  `id` varchar(36) NOT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `alert_name` varchar(200) NOT NULL,
  `alert_type` varchar(100) NOT NULL,
  `alert_severity` varchar(50) DEFAULT NULL,
  `is_fav` tinyint(1) DEFAULT NULL,
  `source_ids` json DEFAULT NULL,
  `roi_ids` json DEFAULT NULL,
  `cooldown_interval` int NOT NULL,
  `trigger_ids` json DEFAULT NULL,
  `schedule` json DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_rules_sr_id` (`sr_id`),
  KEY `ix_rules_alert_severity` (`alert_severity`),
  KEY `ix_rules_is_enabled` (`is_enabled`),
  KEY `ix_rules_alert_type` (`alert_type`),
  KEY `ix_rules_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rules`
--

LOCK TABLES `rules` WRITE;
/*!40000 ALTER TABLE `rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_settings`
--

DROP TABLE IF EXISTS `storage_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storage_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `retention_days` int NOT NULL DEFAULT '14',
  `storage_full_threshold` decimal(5,4) NOT NULL DEFAULT '0.8000',
  `emergency_retention_days` int NOT NULL DEFAULT '7',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fifo_free_percent` int NOT NULL DEFAULT '10',
  `record_segment_duration` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_settings`
--

LOCK TABLES `storage_settings` WRITE;
/*!40000 ALTER TABLE `storage_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `triggers`
--

DROP TABLE IF EXISTS `triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triggers` (
  `id` varchar(36) NOT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `notified_to` varchar(500) DEFAULT NULL,
  `action` varchar(100) NOT NULL,
  `config` json NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_triggers_sr_id` (`sr_id`),
  KEY `ix_triggers_name` (`name`),
  KEY `ix_triggers_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triggers`
--

LOCK TABLES `triggers` WRITE;
/*!40000 ALTER TABLE `triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `use_cases`
--

DROP TABLE IF EXISTS `use_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `use_cases` (
  `id` varchar(36) NOT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `model_path` varchar(500) NOT NULL,
  `model_size` float NOT NULL,
  `accuracy` float DEFAULT NULL,
  `zone_type` varchar(32) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `use_case_type` varchar(255) DEFAULT NULL,
  `image_path` varchar(500) DEFAULT NULL,
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_use_cases_sr_id` (`sr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `use_cases`
--

LOCK TABLES `use_cases` WRITE;
/*!40000 ALTER TABLE `use_cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `use_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_camera_permissions`
--

DROP TABLE IF EXISTS `user_camera_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_camera_permissions` (
  `user_id` varchar(36) NOT NULL,
  `camera_id` varchar(36) NOT NULL,
  `can_create` tinyint(1) NOT NULL DEFAULT '0',
  `can_read` tinyint(1) NOT NULL DEFAULT '1',
  `can_update` tinyint(1) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`camera_id`),
  KEY `camera_id` (`camera_id`),
  CONSTRAINT `user_camera_permissions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_camera_permissions_ibfk_2` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_camera_permissions`
--

LOCK TABLES `user_camera_permissions` WRITE;
/*!40000 ALTER TABLE `user_camera_permissions` DISABLE KEYS */;
INSERT INTO `user_camera_permissions` VALUES ('7dab1788-a535-4382-9825-07fcf8c72540','3d78ee6e-f07f-4618-91f8-eb285336fee0',0,1,1,0),('8a1bfa11-4e36-421c-a431-72d7b5077e54','3d78ee6e-f07f-4618-91f8-eb285336fee0',0,1,1,0);
/*!40000 ALTER TABLE `user_camera_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_preferences`
--

DROP TABLE IF EXISTS `user_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_preferences` (
  `user_id` varchar(36) NOT NULL,
  `pref_key` varchar(64) NOT NULL,
  `pref_value` json NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_id`,`pref_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_preferences`
--

LOCK TABLES `user_preferences` WRITE;
/*!40000 ALTER TABLE `user_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_role_id_foreign` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES ('7dab1788-a535-4382-9825-07fcf8c72540','0528c786-72e5-4793-a29b-2b10f945f285'),('8a1bfa11-4e36-421c-a431-72d7b5077e54','0528c786-72e5-4793-a29b-2b10f945f285');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_settings`
--

DROP TABLE IF EXISTS `user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_settings` (
  `setting_key` varchar(100) NOT NULL,
  `setting_value` json NOT NULL,
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_user_settings_id` (`id`),
  KEY `ix_user_settings_setting_key` (`setting_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_settings`
--

LOCK TABLES `user_settings` WRITE;
/*!40000 ALTER TABLE `user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` varchar(36) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `password` varchar(512) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT '1',
  `is_system_admin` tinyint(1) NOT NULL DEFAULT '0',
  `system_role` varchar(32) NOT NULL DEFAULT 'user',
  `is_favorite` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_users_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('655430b1-f1a2-4b52-8136-e41c519c77f5','admin@digital-twin-solutions.com','\"Super Admin\"','$scrypt$n=16384,r=8,p=1$zDdd+pOMcQiOF435NDS8gw$LzGMLDp1Enlx6MZLDpMKuj0z4BQS5qSXmwNbhcehjk856BcsZCy0Vs0Z+wShXAGHEaUYFXCejFQKoLE+IeA0jQ',1,1,'super_admin',0,NULL,'2026-10-09 11:32:57','2026-10-09 11:32:57'),('7dab1788-a535-4382-9825-07fcf8c72540','demo.etisalat@digital-twin-solutions.com','Demo etisalat','$scrypt$n=16384,r=8,p=1$HoddCvfzIff274UP2qwJqQ$eVa4BvWGKzjZ2QAlT0mVaVCbqdwnmjtO3mCSgKVdmUrRxMcDX2VnCeq5BWD0QiCUlWv1rjB7qH32Y+DyBaetJQ',1,0,'user',0,NULL,'2026-10-09 11:35:31','2026-10-09 11:35:31'),('8a1bfa11-4e36-421c-a431-72d7b5077e54','demo1.etisalat@digital-twin-solutions.com','Demo1 Etisalat','$scrypt$n=16384,r=8,p=1$5e4QJ8KHORam1IGlisNDQw$QJc+nQTD3Wy9Z+4cuVPuM7c2POyqCKtFFnEeTTwkC/drQ5Rp1KYKzCvcXWJJCcBsswLpo1ifRCfWbXwQTk6ibg',1,0,'user',0,NULL,'2026-10-09 11:36:13','2026-10-09 11:36:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_category`
--

DROP TABLE IF EXISTS `vehicle_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_category` (
  `id` varchar(36) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_vehicle_category_sr_id` (`sr_id`),
  KEY `ix_vehicle_category_id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_category`
--

LOCK TABLES `vehicle_category` WRITE;
/*!40000 ALTER TABLE `vehicle_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_enrollment`
--

DROP TABLE IF EXISTS `vehicle_enrollment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_enrollment` (
  `id` varchar(36) NOT NULL,
  `license_plate` varchar(512) NOT NULL,
  `vehicle_category_id` varchar(36) NOT NULL,
  `vehicle_owner` varchar(512) NOT NULL,
  `permit_start_date` date NOT NULL,
  `permit_end_date` date NOT NULL,
  `address` text,
  `description` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  `is_fav` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_vehicle_enrollment_sr_id` (`sr_id`),
  KEY `vehicle_category_id` (`vehicle_category_id`),
  KEY `ix_vehicle_enrollment_id` (`id`),
  KEY `ix_vehicle_enrollment_license_plate` (`license_plate`),
  KEY `ix_vehicle_enrollment_is_deleted` (`is_deleted`),
  KEY `vehicle_enrollment_is_fav_index` (`is_fav`),
  CONSTRAINT `vehicle_enrollment_ibfk_1` FOREIGN KEY (`vehicle_category_id`) REFERENCES `vehicle_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_enrollment`
--

LOCK TABLES `vehicle_enrollment` WRITE;
/*!40000 ALTER TABLE `vehicle_enrollment` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_enrollment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zone_profiles`
--

DROP TABLE IF EXISTS `zone_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zone_profiles` (
  `id` varchar(36) NOT NULL,
  `profiles` json NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zone_profiles`
--

LOCK TABLES `zone_profiles` WRITE;
/*!40000 ALTER TABLE `zone_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `zone_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zones`
--

DROP TABLE IF EXISTS `zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zones` (
  `id` varchar(36) NOT NULL,
  `name` varchar(100) NOT NULL,
  `zone_type` enum('polygon','line') NOT NULL,
  `coordinates` json NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `zone_profile_id` varchar(36) DEFAULT NULL,
  `is_deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `camera_id` varchar(36) DEFAULT NULL,
  `sr_id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ix_zones_sr_id` (`sr_id`),
  KEY `zone_profile_id` (`zone_profile_id`),
  KEY `ix_zones_is_deleted` (`is_deleted`),
  KEY `ix_zones_camera_id` (`camera_id`),
  CONSTRAINT `zones_ibfk_1` FOREIGN KEY (`zone_profile_id`) REFERENCES `zone_profiles` (`id`),
  CONSTRAINT `zones_ibfk_2` FOREIGN KEY (`camera_id`) REFERENCES `cameras` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zones`
--

LOCK TABLES `zones` WRITE;
/*!40000 ALTER TABLE `zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `zones` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-09 11:42:08
