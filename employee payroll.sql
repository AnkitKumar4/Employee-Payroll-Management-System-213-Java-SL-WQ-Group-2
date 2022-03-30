-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: employee_payroll
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_attendance`
--

DROP TABLE IF EXISTS `admin_attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_attendance` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_attendance`
--

LOCK TABLES `admin_attendance` WRITE;
/*!40000 ALTER TABLE `admin_attendance` DISABLE KEYS */;
INSERT INTO `admin_attendance` VALUES (1,'2022-03-18','ankit@gmail.com','Ankit','present'),(2,'2022-03-31','anup@gmail.com','Anup','present'),(3,'2022-03-16','Ankita@gmail.com','Anku','absent');
/*!40000 ALTER TABLE `admin_attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_leave`
--

DROP TABLE IF EXISTS `admin_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_leave` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `from_date` date DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_leave`
--

LOCK TABLES `admin_leave` WRITE;
/*!40000 ALTER TABLE `admin_leave` DISABLE KEYS */;
INSERT INTO `admin_leave` VALUES (1,'2022-03-18','earned','sick','approved','2022-03-23'),(2,'2022-03-17','earned','sick','approved','2022-03-31');
/*!40000 ALTER TABLE `admin_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_salary`
--

DROP TABLE IF EXISTS `admin_salary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_salary` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `basic_pay` varchar(255) DEFAULT NULL,
  `deductions` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `month` varchar(255) DEFAULT NULL,
  `net_pay` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_salary`
--

LOCK TABLES `admin_salary` WRITE;
/*!40000 ALTER TABLE `admin_salary` DISABLE KEYS */;
INSERT INTO `admin_salary` VALUES (1,'30000','00','Ankit','Jan','50000'),(2,'30000','00','Anup','March','40000');
/*!40000 ALTER TABLE `admin_salary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_work_schedule`
--

DROP TABLE IF EXISTS `employee_work_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_work_schedule` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(255) DEFAULT NULL,
  `work_date` datetime DEFAULT NULL,
  `work_shift` varchar(255) DEFAULT NULL,
  `work_status` varchar(255) DEFAULT NULL,
  `work_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_work_schedule`
--

LOCK TABLES `employee_work_schedule` WRITE;
/*!40000 ALTER TABLE `employee_work_schedule` DISABLE KEYS */;
INSERT INTO `employee_work_schedule` VALUES (1,'Ankit','2022-03-30 05:30:00','first','project','11:00'),(2,'Anup','2022-03-31 05:30:00','second','training','03:00');
/*!40000 ALTER TABLE `employee_work_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int DEFAULT NULL,
  `date_of_joining` date DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `emp_name` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,25,'2021-11-19','Software Developer','ankit@gmail.com','Ankit','Male','1234567'),(2,28,'2022-03-30','Software Engineer','anup@gmail.com','Anup','Male','12345');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('ankit@gmail.com','Ankit','1234567','admin','EUefVGSh8vcy8wt7ksJTlbnoMHpJIwRU'),('ankita@gmail.com','Ankita ','12345','employee','h_KmHgemoZDVp2J7opDB82OmRzmRgBbp'),('anup@gmail.com','Anup','12345678','admin','3aftfVnWRTyT0u725Fz22pIHjNXNtUih');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 17:20:24
