/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50730
 Source Host           : localhost:3306
 Source Schema         : ry

 Target Server Type    : MySQL
 Target Server Version : 50730
 File Encoding         : 65001

 Date: 02/08/2020 17:31:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for catalog
-- ----------------------------
DROP TABLE IF EXISTS `catalog`;
CREATE TABLE `catalog`  (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键id',
  `info_id` int(15) NOT NULL COMMENT '基本信息id',
  `economic_behavior_date` date NULL DEFAULT NULL COMMENT '经济行为发生时间',
  `economic_behavior_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经济行为决策或者批复单位',
  `policy_decision_date` date NULL DEFAULT NULL COMMENT '决策或批复日期',
  `policy_decision_file` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件名称',
  `registration_authority_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产权登记机关标识码',
  `property_right_registration` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产权登记情形',
  `owned_assets_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复单位名称-国资管理文件',
  `owned_assets_file_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件名称-国资管理文件',
  `owned_assets_file_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件号-国资管理文件',
  `owned_assets_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理由描述-国资管理文件',
  `industry_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复单位名称-行业监管部门文件',
  `industry_file_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件名称-行业监管部门文件',
  `industry_file_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件号-行业监管部门文件',
  `industry_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理由描述-行业监管部门文件',
  `org_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复单位名称-机构内部文件',
  `org_file_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件名称-机构内部文件',
  `org_file_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '决策或批复文件号-机构内部文件',
  `org_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理由描述-机构内部文件',
  `contribution_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出资证明文件内容',
  `contribution_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出资证明文件理由描述',
  `receipt_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易凭证内容',
  `receipt_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '交易凭证理由描述',
  `agreement_content` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转让协议内容',
  `agreement_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '转让协议理由描述',
  `agency_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '中介机构名称-评估备案表或核准文件',
  `report_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评估报告号-评估备案表或核准文件',
  `approval_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案或核准单位名称-评估备案表或核准文件',
  `approval_no` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案号或核准文件号-评估备案表或核准文件',
  `approval_description` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '理由描述-评估备案表或核准文件',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `create_id` int(11) NULL DEFAULT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '占有登记' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of catalog
-- ----------------------------
INSERT INTO `catalog` VALUES (1, 2, '2020-07-11', '1', '2020-07-10', '', '', '11111', '达到', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '打发打发', '2020-08-02 17:22:01', NULL);

-- ----------------------------
-- Table structure for contribution
-- ----------------------------
DROP TABLE IF EXISTS `contribution`;
CREATE TABLE `contribution`  (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `info_id` int(15) NOT NULL COMMENT '基本信息id',
  `investor_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '出资方名称',
  `investor_code` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '代码',
  `identification_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统一社会信用代码/境外机构注册号/身份证号码',
  `category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '类别',
  `capital_paid` decimal(15, 2) NOT NULL COMMENT '实缴资本（元）',
  `capital_subscribed` decimal(15, 2) NOT NULL COMMENT '认缴资本（元）',
  `equity_ratio` decimal(6, 4) NOT NULL COMMENT '股权比例',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` int(15) NOT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出资情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of contribution
-- ----------------------------
INSERT INTO `contribution` VALUES (1, 1, '中原资产', '111111111', '11111', '111', 1.00, 11.00, 1.0000, '2020-08-02 15:31:31', 2);
INSERT INTO `contribution` VALUES (2, 1, '中原金科', '2', '111', '哈哈', 1.00, 1.00, 1.0000, '2020-08-02 15:46:42', 1);

-- ----------------------------
-- Table structure for equity_mortgage
-- ----------------------------
DROP TABLE IF EXISTS `equity_mortgage`;
CREATE TABLE `equity_mortgage`  (
  `id` int(15) UNSIGNED ZEROFILL NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `info_id` int(15) NOT NULL COMMENT '基本信息id',
  `organization_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '抵质押机构名称',
  `equity_ratio` decimal(6, 4) NULL DEFAULT NULL COMMENT '持股比例',
  `mortgagor` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '抵质押权人',
  `book_value` decimal(15, 2) NULL DEFAULT NULL COMMENT '账面值',
  `evaluation_value` decimal(15, 2) NULL DEFAULT NULL COMMENT '评估值',
  `mortgage_ratio` decimal(6, 4) NULL DEFAULT NULL COMMENT '抵质押股权比例（%）',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` int(15) NOT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '股权抵押表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of equity_mortgage
-- ----------------------------
INSERT INTO `equity_mortgage` VALUES (000000000000002, 1, '中原金科', 99.2300, '吕智', 1000.00, 12000.00, 20.0230, '111', '2020-08-02 16:12:07', 1);

-- ----------------------------
-- Table structure for essential_information
-- ----------------------------
DROP TABLE IF EXISTS `essential_information`;
CREATE TABLE `essential_information`  (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `company_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公司名称',
  `is_registration` tinyint(1) UNSIGNED NOT NULL COMMENT '是否工商注册：0-是；1-不是；',
  `social_code` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '统一社会信用代码',
  `legal_person` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '法人',
  `place_registration` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '注册地',
  `residence` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '住所',
  `registered_capital` decimal(18, 2) UNSIGNED NULL DEFAULT NULL COMMENT '注册资本（元）',
  `found_date` date NULL DEFAULT NULL COMMENT '成立日期',
  `organizational_form` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织形式',
  `organization_category` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '机构类别',
  `state_owned_way` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '国有类型（配合机构类别使用）',
  `investor_code` char(9) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大国有出资人代码',
  `investor_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最大国有出资人名称',
  `registration_authority_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '产权登记机关标识码',
  `industry_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属行业代码',
  `subjection_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '隶属关系标识码',
  `grade_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL COMMENT '级次标识码',
  `is_key_subsidiary` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否重点子公司：0-是；1-不是；',
  `is_normal_operation` tinyint(1) UNSIGNED NULL DEFAULT NULL COMMENT '是否正常经营：0-正常；1-不正常；',
  `operation_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '非正常经营说明',
  `business_scope` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '经营范围',
  `contribution_remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出资情况备注或者备注',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` int(15) NOT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '基础信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of essential_information
-- ----------------------------
INSERT INTO `essential_information` VALUES (3, '2', 2, '2', '2', '2', '2', 2.00, '2020-07-08', '2', '2', '2', '2', '2', '2', '2', '2', '2', 0, NULL, '2', '2', '3333', '2020-07-31 17:40:11', 1);
INSERT INTO `essential_information` VALUES (4, '3', 3, '3', '3', '3', '3', 3.00, '2020-08-02', '3', '3', '3', '3', '3', '3', '3', '3', '3', 3, NULL, '3', '3', '3', '2020-08-02 10:53:37', 1);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (3, 'essential_information', '', NULL, NULL, 'EssentialInformation', 'crud', 'com.zyjk.system', 'system', 'information', NULL, 'lvzhi', '0', '/', NULL, 'admin', '2020-07-31 15:11:23', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (4, 'senior_management', '管理人员表', NULL, NULL, 'SeniorManagement', 'crud', 'com.zyjk.system', 'system', 'management', '管理人员', 'lvzhi', '0', '/', NULL, 'admin', '2020-08-02 13:43:22', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (5, 'contribution', '出资情况表', NULL, NULL, 'Contribution', 'crud', 'com.zyjk.system', 'system', 'contribution', '出资情况', 'lvzhi', '0', '/', NULL, 'admin', '2020-08-02 15:01:52', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (6, 'equity_mortgage', '股权抵押表', NULL, NULL, 'EquityMortgage', 'crud', 'com.zyjk.system', 'system', 'mortgage', '股权抵押', 'lvzhi', '0', '/', NULL, 'admin', '2020-08-02 15:50:12', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (7, 'judicial_freeze', '司法冻结情况表', NULL, NULL, 'JudicialFreeze', 'crud', 'com.zyjk.system', 'system', 'freeze', '司法冻结情况', 'lvzhi', '0', '/', NULL, 'admin', '2020-08-02 16:16:08', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (10, 'catalog', '占有登记', NULL, NULL, 'Catalog', 'crud', 'com.zyjk.system', 'system', 'catalog', '占有登记', 'lvzhi', '0', '/', NULL, 'admin', '2020-08-02 17:08:41', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int(11) NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 180 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (12, '3', 'id', '自增主键', 'int(15) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (13, '3', 'company_name', '公司名称', 'varchar(20)', 'String', 'companyName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (14, '3', 'is_registration', '是否工商注册', 'tinyint(1) unsigned', 'Integer', 'isRegistration', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (15, '3', 'social_code', '统一社会信用代码', 'char(18)', 'String', 'socialCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (16, '3', 'legal_person', '法人', 'varchar(10)', 'String', 'legalPerson', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (17, '3', 'place_registration', '注册地', 'varchar(50)', 'String', 'placeRegistration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (18, '3', 'residence', '住所', 'varchar(100)', 'String', 'residence', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (19, '3', 'registered_capital', '注册资本（元）', 'decimal(18,2) unsigned', 'BigDecimal', 'registeredCapital', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (20, '3', 'found_date', '成立日期', 'date', 'Date', 'foundDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 9, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (21, '3', 'organizational_form', '组织形式', 'varchar(20)', 'String', 'organizationalForm', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (22, '3', 'organization_category', '机构类别', 'varchar(20)', 'String', 'organizationCategory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (23, '3', 'state_owned_way', '国有类型（配合机构类别使用）', 'varchar(10)', 'String', 'stateOwnedWay', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (24, '3', 'economic_behavior_date', '经济行为发生时间', 'date', 'Date', 'economicBehaviorDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 13, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (25, '3', 'economic_behavior_name', '经济行为决策或者批复单位', 'varchar(20)', 'String', 'economicBehaviorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (26, '3', 'policy_decision_date', '决策或批复日期', 'date', 'Date', 'policyDecisionDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 15, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (27, '3', 'policy_decision_file', '决策或批复文件名称', 'varchar(20)', 'String', 'policyDecisionFile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'upload', '', 16, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (28, '3', 'investor_code', '最大国有出资人代码', 'char(9)', 'String', 'investorCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (29, '3', 'investor_name', '最大国有出资人名称', 'varchar(20)', 'String', 'investorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 18, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (30, '3', 'registration_authority_code', '产权登记机关标识码', 'varchar(30)', 'String', 'registrationAuthorityCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (31, '3', 'industry_code', '所属行业代码', 'varchar(100)', 'String', 'industryCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (32, '3', 'subjection_code', '隶属关系标识码', 'varchar(20)', 'String', 'subjectionCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (33, '3', 'grade_code', '级次标识码', 'varchar(20)', 'String', 'gradeCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (34, '3', 'is_key_subsidiary', '是否重点子公司', 'tinyint(1) unsigned', 'Integer', 'isKeySubsidiary', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (35, '3', 'property_right_registration', '产权登记情形', 'varchar(20)', 'String', 'propertyRightRegistration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (36, '3', 'is_normal_operation', '是否正常经营', 'tinyint(1) unsigned', 'Integer', 'isNormalOperation', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (37, '3', 'operation_description', '非正常经营说明', 'varchar(200)', 'String', 'operationDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (38, '3', 'business_scope', '经营范围', 'varchar(255)', 'String', 'businessScope', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (39, '3', 'contribution_remarks', '出资情况备注', 'varchar(255)', 'String', 'contributionRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (40, '3', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 29, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (41, '3', 'create_id', '创建者id', 'int(15)', 'Long', 'createId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-07-31 15:11:23', '', NULL);
INSERT INTO `gen_table_column` VALUES (42, '4', 'id', '自增id', 'int(15) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (43, '4', 'info_id', '基本信息id', 'int(15)', 'Long', 'infoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (44, '4', 'name', '姓名', 'varchar(10)', 'String', 'name', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (45, '4', 'sex', '性别：1-男；0-女；', 'tinyint(1)', 'Integer', 'sex', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (46, '4', 'job', '职务', 'varchar(10)', 'String', 'job', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (47, '4', 'appointment_date', '上任时间', 'date', 'Date', 'appointmentDate', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (48, '4', 'departure_date', '离任时间', 'date', 'Date', 'departureDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (49, '4', 'level', '级别', 'varchar(20)', 'String', 'level', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (50, '4', 'remarks', '备注', 'varchar(100)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-08-02 13:43:22', '', NULL);
INSERT INTO `gen_table_column` VALUES (51, '5', 'id', '自增id', 'int(15) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (52, '5', 'info_id', '基本信息id', 'int(15)', 'Long', 'infoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (53, '5', 'investor_name', '出资方名称', 'varchar(20)', 'String', 'investorName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (54, '5', 'investor_code', '代码', 'char(9)', 'String', 'investorCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (55, '5', 'identification_code', '统一社会信用代码/境外机构注册号/身份证号码', 'varchar(20)', 'String', 'identificationCode', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (56, '5', 'category', '类别', 'varchar(20)', 'String', 'category', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (57, '5', 'capital_paid', '实缴资本（元）', 'decimal(15,2)', 'BigDecimal', 'capitalPaid', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (58, '5', 'capital_subscribed', '认缴资本（元）', 'decimal(15,2)', 'BigDecimal', 'capitalSubscribed', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (59, '5', 'equity_ratio', '股权比例', 'decimal(6,4)', 'BigDecimal', 'equityRatio', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (60, '5', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (61, '5', 'create_id', '创建者id', 'int(15)', 'Long', 'createId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-08-02 15:01:52', '', NULL);
INSERT INTO `gen_table_column` VALUES (62, '6', 'id', '自增id', 'int(15) unsigned zerofill', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (63, '6', 'info_id', '基本信息id', 'int(15)', 'Long', 'infoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (64, '6', 'organization_name', '抵质押机构名称', 'varchar(20)', 'String', 'organizationName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 3, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (65, '6', 'equity_ratio', '持股比例', 'decimal(6,4)', 'BigDecimal', 'equityRatio', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (66, '6', 'mortgagor', '抵质押权人', 'varchar(20)', 'String', 'mortgagor', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (67, '6', 'book_value', '账面值', 'decimal(15,2)', 'BigDecimal', 'bookValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (68, '6', 'evaluation_value', '评估值', 'decimal(15,2)', 'BigDecimal', 'evaluationValue', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (69, '6', 'mortgage_ratio', '抵质押股权比例（%）', 'decimal(6,4)', 'BigDecimal', 'mortgageRatio', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (70, '6', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (71, '6', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (72, '6', 'create_id', '创建者id', 'int(15)', 'Long', 'createId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-08-02 15:50:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (73, '7', 'id', '自增id', 'int(15) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (74, '7', 'info_id', '基本信息id', 'int(15)', 'Long', 'infoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (75, '7', 'judicial_organ', '司法执行机关', 'varchar(20)', 'String', 'judicialOrgan', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (76, '7', 'frozen_amount', '司法冻结资产数额', 'decimal(15,2) unsigned', 'BigDecimal', 'frozenAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (77, '7', 'frozen_start_date', '司法冻结起始时间', 'date', 'Date', 'frozenStartDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (78, '7', 'frozen_end_date', '司法冻结结束时间', 'date', 'Date', 'frozenEndDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 6, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (79, '7', 'frozen_reason', '司法冻结原因', 'varchar(255)', 'String', 'frozenReason', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (80, '7', 'remarks', '备注', 'varchar(255)', 'String', 'remarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (81, '7', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', '1', '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 9, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (82, '7', 'create_id', '创建者id', 'int(15)', 'Long', 'createId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2020-08-02 16:16:08', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '10', 'id', NULL, 'int(15) unsigned', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '10', 'info_id', '基本信息id', 'int(15)', 'Long', 'infoId', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '10', 'economic_behavior_date', '经济行为发生时间', 'date', 'Date', 'economicBehaviorDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '10', 'economic_behavior_name', '经济行为决策或者批复单位', 'varchar(20)', 'String', 'economicBehaviorName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 4, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '10', 'policy_decision_date', '决策或批复日期', 'date', 'Date', 'policyDecisionDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '10', 'policy_decision_file', '决策或批复文件名称', 'varchar(20)', 'String', 'policyDecisionFile', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'upload', '', 6, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '10', 'registration_authority_code', '产权登记机关标识码', 'varchar(30)', 'String', 'registrationAuthorityCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '10', 'property_right_registration', '产权登记情形', 'varchar(20)', 'String', 'propertyRightRegistration', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '10', 'owned_assets_name', '决策或批复单位名称-国资管理文件', 'varchar(20)', 'String', 'ownedAssetsName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 9, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '10', 'owned_assets_file_name', '决策或批复文件名称-国资管理文件', 'varchar(20)', 'String', 'ownedAssetsFileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 10, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '10', 'owned_assets_file_code', '决策或批复文件号-国资管理文件', 'varchar(20)', 'String', 'ownedAssetsFileCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '10', 'owned_assets_description', '理由描述-国资管理文件', 'varchar(255)', 'String', 'ownedAssetsDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '10', 'industry_name', '决策或批复单位名称-行业监管部门文件', 'varchar(20)', 'String', 'industryName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 13, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '10', 'industry_file_name', '决策或批复文件名称-行业监管部门文件', 'varchar(20)', 'String', 'industryFileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 14, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '10', 'industry_file_code', '决策或批复文件号-行业监管部门文件', 'varchar(20)', 'String', 'industryFileCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '10', 'industry_description', '理由描述-行业监管部门文件', 'varchar(255)', 'String', 'industryDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '10', 'org_name', '决策或批复单位名称-机构内部文件', 'varchar(20)', 'String', 'orgName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 17, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '10', 'org_file_name', '决策或批复文件名称-机构内部文件', 'varchar(20)', 'String', 'orgFileName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 18, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '10', 'org_file_code', '决策或批复文件号-机构内部文件', 'varchar(20)', 'String', 'orgFileCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '10', 'org_description', '理由描述-机构内部文件', 'varchar(255)', 'String', 'orgDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '10', 'contribution_content', '出资证明文件内容', 'varchar(50)', 'String', 'contributionContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 21, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '10', 'contribution_description', '出资证明文件理由描述', 'varchar(50)', 'String', 'contributionDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 22, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '10', 'receipt_content', '交易凭证内容', 'varchar(50)', 'String', 'receiptContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 23, 'admin', '2020-08-02 17:08:41', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '10', 'receipt_description', '交易凭证理由描述', 'varchar(50)', 'String', 'receiptDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '10', 'agreement_content', '转让协议内容', 'varchar(50)', 'String', 'agreementContent', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 25, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '10', 'agreement_description', '转让协议理由描述', 'varchar(50)', 'String', 'agreementDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 26, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '10', 'agency_name', '中介机构名称-评估备案表或核准文件', 'varchar(50)', 'String', 'agencyName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 27, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '10', 'report_no', '评估报告号-评估备案表或核准文件', 'varchar(20)', 'String', 'reportNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 28, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '10', 'approval_name', '备案或核准单位名称-评估备案表或核准文件', 'varchar(20)', 'String', 'approvalName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 29, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '10', 'approval_no', '备案号或核准文件号-评估备案表或核准文件', 'varchar(20)', 'String', 'approvalNo', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 30, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '10', 'approval_description', '理由描述-评估备案表或核准文件', 'varchar(50)', 'String', 'approvalDescription', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 31, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '10', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 32, 'admin', '2020-08-02 17:08:42', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '10', 'create_id', '创建者id', 'int(11)', 'Long', 'createId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 33, 'admin', '2020-08-02 17:08:42', '', NULL);

-- ----------------------------
-- Table structure for judicial_freeze
-- ----------------------------
DROP TABLE IF EXISTS `judicial_freeze`;
CREATE TABLE `judicial_freeze`  (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `info_id` int(15) NOT NULL COMMENT '基本信息id',
  `judicial_organ` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '司法执行机关',
  `frozen_amount` decimal(15, 2) UNSIGNED NULL DEFAULT NULL COMMENT '司法冻结资产数额',
  `frozen_start_date` date NULL DEFAULT NULL COMMENT '司法冻结起始时间',
  `frozen_end_date` date NULL DEFAULT NULL COMMENT '司法冻结结束时间',
  `frozen_reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '司法冻结原因',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NOT NULL COMMENT '创建时间',
  `create_id` int(15) NOT NULL COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '司法冻结情况表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of judicial_freeze
-- ----------------------------
INSERT INTO `judicial_freeze` VALUES (1, 1, '郑州法院', 1111.00, '2020-08-05', '2020-08-28', '欠钱不还', '哈哈', '2020-08-02 16:26:30', 1);
INSERT INTO `judicial_freeze` VALUES (2, 1, '中华人民共和国国务院', 100000000000.00, '2020-08-02', '2020-10-31', '没有原因', '李克强交代办理', '2020-08-02 16:27:28', 1);

-- ----------------------------
-- Table structure for senior_management
-- ----------------------------
DROP TABLE IF EXISTS `senior_management`;
CREATE TABLE `senior_management`  (
  `id` int(15) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `info_id` int(15) NOT NULL COMMENT '基本信息id',
  `name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) NOT NULL COMMENT '性别：1-男；0-女；',
  `job` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '职务',
  `appointment_date` date NOT NULL COMMENT '上任时间',
  `departure_date` date NULL DEFAULT NULL COMMENT '离任时间',
  `level` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '级别',
  `remarks` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `create_id` int(15) NOT NULL DEFAULT 1 COMMENT '创建者id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '管理人员表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of senior_management
-- ----------------------------
INSERT INTO `senior_management` VALUES (1, 2, '吕智', 0, '董事长', '2020-08-03', '2020-08-05', '11', '111', '2020-08-02 14:47:39', 1);
INSERT INTO `senior_management` VALUES (3, 1, 'memcache', 0, '董事长', '2020-08-03', NULL, '', '', '2020-08-02 14:51:30', 1);

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '是否开启注册用户功能');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 202 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '中原资产', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-19 16:46:35');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '上海分公司', 3, '吕智', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-19 16:46:35');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00');
INSERT INTO `sys_dept` VALUES (200, 100, '0,100', '中原资产', 3, '吕智', '15981858972', 'lvzhi1116@126.com', '0', '0', 'admin', '2020-07-19 16:46:56', '', NULL);
INSERT INTO `sys_dept` VALUES (201, 200, '0,100,200', '金交中心', 1, '吕智', NULL, NULL, '0', '0', 'admin', '2020-07-19 16:47:42', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 30 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '停用状态');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录状态列表');

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 160 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 15:54:23');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:00:57');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:01:11');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:10:13');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:35:06');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:37:36');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:38:12');
INSERT INTO `sys_logininfor` VALUES (107, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:38:22');
INSERT INTO `sys_logininfor` VALUES (108, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:38:38');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-19 16:38:47');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:38:49');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:40:32');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:40:35');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:40:38');
INSERT INTO `sys_logininfor` VALUES (114, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:40:44');
INSERT INTO `sys_logininfor` VALUES (115, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 16:40:58');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 16:41:03');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 17:10:48');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 17:10:52');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 17:15:53');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-19 18:36:44');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 18:36:48');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 18:48:48');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-19 18:53:31');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 18:53:35');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-19 21:47:12');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-20 16:07:27');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-20 16:52:46');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-20 16:58:33');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-21 14:49:26');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-21 14:49:30');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-21 15:14:04');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-21 15:48:32');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-21 16:53:11');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-22 16:30:10');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-22 17:54:01');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-23 09:53:42');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-25 23:05:09');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-28 18:15:32');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-28 18:15:38');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-28 18:19:54');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 16:00:36');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-30 16:49:01');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 16:49:05');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-30 16:49:49');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 16:49:52');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-30 16:50:58');
INSERT INTO `sys_logininfor` VALUES (147, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 16:51:09');
INSERT INTO `sys_logininfor` VALUES (148, 'lvzhi', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '退出成功', '2020-07-30 16:51:54');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 16:51:58');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-30 17:26:24');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 14:38:46');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 15:07:06');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 15:13:57');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 15:56:58');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '1', '验证码错误', '2020-07-31 17:09:38');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-07-31 17:09:41');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-02 09:38:00');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-02 10:16:36');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', '0', '登录成功', '2020-08-02 13:42:56');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int(4) NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `perms` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2054 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 10, '#', 'menuItem', 'M', '0', '', 'fa fa-gear', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-23 09:55:46', '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 20, '#', 'menuItem', 'M', '1', '', 'fa fa-video-camera', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-02 16:37:05', '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 22, '#', 'menuItem', 'M', '0', '', 'fa fa-bars', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-02 16:37:43', '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 21, 'http://ruoyi.vip', 'menuBlank', 'C', '1', '', 'fa fa-location-arrow', 'admin', '2018-03-16 11:33:00', 'admin', '2020-08-02 16:37:23', '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', 'system:user:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', 'system:role:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', 'system:menu:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', 'system:dept:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', 'system:post:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', 'system:dict:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', 'system:config:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', 'system:notice:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', 'monitor:online:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', 'menuItem', 'C', '1', 'monitor:job:view', '#', 'admin', '2018-03-16 11:33:00', 'admin', '2020-07-19 17:36:58', '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', 'monitor:data:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 3, '/monitor/server', '', 'C', '0', 'monitor:server:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '表单构建', 3, 1, '/tool/build', '', 'C', '0', 'tool:build:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '表单构建菜单');
INSERT INTO `sys_menu` VALUES (114, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', 'tool:gen:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '代码生成菜单');
INSERT INTO `sys_menu` VALUES (115, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', 'tool:swagger:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', 'monitor:operlog:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', 'monitor:logininfor:view', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', 'system:user:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', 'system:user:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', 'system:user:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', 'system:user:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', 'system:user:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', 'system:user:import', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', 'system:user:resetPwd', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', 'system:role:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', 'system:role:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', 'system:role:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', 'system:role:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', 'system:role:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', 'system:menu:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', 'system:menu:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', 'system:menu:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', 'system:menu:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', 'system:dept:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', 'system:dept:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', 'system:dept:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', 'system:dept:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', 'system:post:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', 'system:post:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', 'system:post:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', 'system:post:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', 'system:post:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', 'system:dict:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', 'system:dict:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', 'system:dict:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', 'system:dict:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', 'system:dict:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', 'system:config:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', 'system:config:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', 'system:config:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', 'system:config:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', 'system:config:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', 'system:notice:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', 'system:notice:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', 'system:notice:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', 'system:notice:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', 'monitor:operlog:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', 'monitor:operlog:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', 'monitor:operlog:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', 'monitor:operlog:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', 'monitor:logininfor:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', 'monitor:logininfor:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', 'monitor:logininfor:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', 'monitor:logininfor:unlock', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', 'monitor:online:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', 'monitor:online:batchForceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', 'monitor:online:forceLogout', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', 'monitor:job:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', 'monitor:job:add', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', 'monitor:job:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', 'monitor:job:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', 'monitor:job:changeStatus', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', 'monitor:job:detail', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', 'monitor:job:export', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 114, 1, '#', '', 'F', '0', 'tool:gen:list', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 114, 2, '#', '', 'F', '0', 'tool:gen:edit', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 114, 3, '#', '', 'F', '0', 'tool:gen:remove', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 114, 4, '#', '', 'F', '0', 'tool:gen:preview', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 114, 5, '#', '', 'F', '0', 'tool:gen:code', '#', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_menu` VALUES (2016, '公司管理', 0, 1, '#', 'menuItem', 'M', '0', '', 'fa fa-address-book', 'admin', '2020-08-02 10:19:12', 'admin', '2020-08-02 10:24:28', '');
INSERT INTO `sys_menu` VALUES (2017, '基本信息', 2016, 1, '/system/information', '', 'C', '0', 'system:information:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '【请填写功能名称】菜单');
INSERT INTO `sys_menu` VALUES (2018, '基本信息查询', 2017, 1, '#', '', 'F', '0', 'system:information:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2019, '基本信息新增', 2017, 2, '#', '', 'F', '0', 'system:information:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2020, '基本信息修改', 2017, 3, '#', '', 'F', '0', 'system:information:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2021, '基本信息删除', 2017, 4, '#', '', 'F', '0', 'system:information:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2022, '基本信息导出', 2017, 5, '#', '', 'F', '0', 'system:information:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2023, '高管人员', 2016, 1, '/system/management', '', 'C', '0', 'system:management:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '高管人员菜单');
INSERT INTO `sys_menu` VALUES (2024, '高管人员查询', 2023, 1, '#', '', 'F', '0', 'system:management:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2025, '高管人员新增', 2023, 2, '#', '', 'F', '0', 'system:management:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2026, '高管人员修改', 2023, 3, '#', '', 'F', '0', 'system:management:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2027, '高管人员删除', 2023, 4, '#', '', 'F', '0', 'system:management:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2028, '高管人员导出', 2023, 5, '#', '', 'F', '0', 'system:management:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2029, '出资情况', 2016, 1, '/system/contribution', '', 'C', '0', 'system:contribution:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '出资情况菜单');
INSERT INTO `sys_menu` VALUES (2030, '出资情况查询', 2029, 1, '#', '', 'F', '0', 'system:contribution:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2031, '出资情况新增', 2029, 2, '#', '', 'F', '0', 'system:contribution:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2032, '出资情况修改', 2029, 3, '#', '', 'F', '0', 'system:contribution:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2033, '出资情况删除', 2029, 4, '#', '', 'F', '0', 'system:contribution:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2034, '出资情况导出', 2029, 5, '#', '', 'F', '0', 'system:contribution:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2035, '股权抵押', 2016, 1, '/system/mortgage', '', 'C', '0', 'system:mortgage:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '股权抵押菜单');
INSERT INTO `sys_menu` VALUES (2036, '股权抵押查询', 2035, 1, '#', '', 'F', '0', 'system:mortgage:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2037, '股权抵押新增', 2035, 2, '#', '', 'F', '0', 'system:mortgage:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2038, '股权抵押修改', 2035, 3, '#', '', 'F', '0', 'system:mortgage:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2039, '股权抵押删除', 2035, 4, '#', '', 'F', '0', 'system:mortgage:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2040, '股权抵押导出', 2035, 5, '#', '', 'F', '0', 'system:mortgage:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2041, '司法冻结', 2016, 1, '/system/freeze', '', 'C', '0', 'system:freeze:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '司法冻结情况菜单');
INSERT INTO `sys_menu` VALUES (2042, '司法冻结情况查询', 2041, 1, '#', '', 'F', '0', 'system:freeze:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2043, '司法冻结情况新增', 2041, 2, '#', '', 'F', '0', 'system:freeze:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2044, '司法冻结情况修改', 2041, 3, '#', '', 'F', '0', 'system:freeze:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2045, '司法冻结情况删除', 2041, 4, '#', '', 'F', '0', 'system:freeze:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2046, '司法冻结情况导出', 2041, 5, '#', '', 'F', '0', 'system:freeze:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2047, '产权管理', 0, 2, '#', 'menuItem', 'M', '0', NULL, 'fa fa-reorder', 'admin', '2020-08-02 16:36:53', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2048, '占有登记', 2047, 1, '/system/catalog', '', 'C', '0', 'system:catalog:view', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '占有登记菜单');
INSERT INTO `sys_menu` VALUES (2049, '占有登记查询', 2048, 1, '#', '', 'F', '0', 'system:catalog:list', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2050, '占有登记新增', 2048, 2, '#', '', 'F', '0', 'system:catalog:add', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2051, '占有登记修改', 2048, 3, '#', '', 'F', '0', 'system:catalog:edit', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2052, '占有登记删除', 2048, 4, '#', '', 'F', '0', 'system:catalog:remove', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');
INSERT INTO `sys_menu` VALUES (2053, '占有登记导出', 2048, 5, '#', '', 'F', '0', 'system:catalog:export', '#', 'admin', '2018-03-01 00:00:00', 'ry', '2018-03-01 00:00:00', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(1) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 229 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '用户管理', 1, 'com.ruoyi.web.controller.system.SysUserController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/user/add', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"lvzhi\" ],\r\n  \"deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"15981858972\" ],\r\n  \"email\" : [ \"lvzhi1116@126.com\" ],\r\n  \"loginName\" : [ \"lvzhi\" ],\r\n  \"password\" : [ \"123456\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"\" ],\r\n  \"postIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:36:25');
INSERT INTO `sys_oper_log` VALUES (101, '角色管理', 1, 'com.ruoyi.web.controller.system.SysRoleController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/role/add', '127.0.0.1', '内网IP', '{\r\n  \"roleName\" : [ \"经办人角色\" ],\r\n  \"roleKey\" : [ \"role_jingbanren\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:37:23');
INSERT INTO `sys_oper_log` VALUES (102, '用户管理', 4, 'com.ruoyi.web.controller.system.SysUserController.insertAuthRole()', 'POST', 1, 'admin', '研发部门', '/system/user/authRole/insertAuthRole', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"roleIds\" : [ \"100\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:37:47');
INSERT INTO `sys_oper_log` VALUES (103, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/role/edit', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"经办人角色\" ],\r\n  \"roleKey\" : [ \"role_jingbanren\" ],\r\n  \"roleSort\" : [ \"3\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"menuIds\" : [ \"1,100,1001,1002,1003,3,113,114,1057,1058,1059,1060,1061,115\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:40:29');
INSERT INTO `sys_oper_log` VALUES (104, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"若依科技\" ],\r\n  \"deptName\" : [ \"中原资产\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"吕智\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:46:12');
INSERT INTO `sys_oper_log` VALUES (105, '部门管理', 2, 'com.ruoyi.web.controller.system.SysDeptController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/edit', '127.0.0.1', '内网IP', '{\r\n  \"deptId\" : [ \"101\" ],\r\n  \"parentId\" : [ \"100\" ],\r\n  \"parentName\" : [ \"若依科技\" ],\r\n  \"deptName\" : [ \"上海分公司\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"吕智\" ],\r\n  \"phone\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@qq.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:46:35');
INSERT INTO `sys_oper_log` VALUES (106, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"100\" ],\r\n  \"deptName\" : [ \"中原资产\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"leader\" : [ \"吕智\" ],\r\n  \"phone\" : [ \"15981858972\" ],\r\n  \"email\" : [ \"lvzhi1116@126.com\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:46:56');
INSERT INTO `sys_oper_log` VALUES (107, '部门管理', 1, 'com.ruoyi.web.controller.system.SysDeptController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dept/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"200\" ],\r\n  \"deptName\" : [ \"金交中心\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"leader\" : [ \"吕智\" ],\r\n  \"phone\" : [ \"\" ],\r\n  \"email\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:47:42');
INSERT INTO `sys_oper_log` VALUES (108, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"经办人角色\" ],\r\n  \"roleKey\" : [ \"role_jingbanren\" ],\r\n  \"dataScope\" : [ \"4\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:48:21');
INSERT INTO `sys_oper_log` VALUES (109, '用户管理', 2, 'com.ruoyi.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"lvzhi\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"15981858972\" ],\r\n  \"email\" : [ \"lvzhi1116@126.com\" ],\r\n  \"loginName\" : [ \"lvzhi\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:50:15');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.ruoyi.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"债权管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-database\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 16:52:37');
INSERT INTO `sys_oper_log` VALUES (111, '角色管理', 2, 'com.ruoyi.web.controller.system.SysRoleController.authDataScopeSave()', 'POST', 1, 'admin', '研发部门', '/system/role/authDataScope', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"100\" ],\r\n  \"roleName\" : [ \"经办人角色\" ],\r\n  \"roleKey\" : [ \"role_jingbanren\" ],\r\n  \"dataScope\" : [ \"1\" ],\r\n  \"deptIds\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:08:18');
INSERT INTO `sys_oper_log` VALUES (112, '参数管理', 9, 'com.ruoyi.web.controller.system.SysConfigController.clearCache()', 'GET', 1, 'admin', '研发部门', '/system/config/clearCache', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:08:54');
INSERT INTO `sys_oper_log` VALUES (113, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"sys_dict_type\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:26:52');
INSERT INTO `sys_oper_log` VALUES (114, '代码生成', 6, 'com.ruoyi.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"q\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:29:43');
INSERT INTO `sys_oper_log` VALUES (115, '代码生成', 3, 'com.ruoyi.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:29:48');
INSERT INTO `sys_oper_log` VALUES (116, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/q', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-19 17:29:53');
INSERT INTO `sys_oper_log` VALUES (117, '代码生成', 8, 'com.ruoyi.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/q', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-19 17:29:58');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 3, 'com.ruoyi.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/110', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-07-19 17:36:11');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"110\" ],\r\n  \"parentId\" : [ \"2\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"定时任务\" ],\r\n  \"url\" : [ \"/monitor/job\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"monitor:job:view\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 17:36:58');
INSERT INTO `sys_oper_log` VALUES (120, '用户管理', 2, 'com.zyjk.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"1\" ],\r\n  \"deptId\" : [ \"103\" ],\r\n  \"userName\" : [ \"吕智\" ],\r\n  \"dept.deptName\" : [ \"研发部门\" ],\r\n  \"phonenumber\" : [ \"15888888888\" ],\r\n  \"email\" : [ \"ry@163.com\" ],\r\n  \"loginName\" : [ \"admin\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"role\" : [ \"1\" ],\r\n  \"remark\" : [ \"管理员\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"1\" ],\r\n  \"postIds\" : [ \"1\" ]\r\n}', 'null', 1, '不允许操作超级管理员用户', '2020-07-19 21:47:39');
INSERT INTO `sys_oper_log` VALUES (121, '用户管理', 2, 'com.zyjk.web.controller.system.SysUserController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/user/edit', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"deptId\" : [ \"108\" ],\r\n  \"userName\" : [ \"lvzhi\" ],\r\n  \"dept.deptName\" : [ \"市场部门\" ],\r\n  \"phonenumber\" : [ \"15981858972\" ],\r\n  \"email\" : [ \"lvzhi1116@126.com\" ],\r\n  \"loginName\" : [ \"lvzhi\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"role\" : [ \"100\" ],\r\n  \"remark\" : [ \"\" ],\r\n  \"status\" : [ \"0\" ],\r\n  \"roleIds\" : [ \"100\" ],\r\n  \"postIds\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-19 21:48:19');
INSERT INTO `sys_oper_log` VALUES (122, '角色管理', 2, 'com.zyjk.web.controller.system.SysRoleController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-21 15:15:57');
INSERT INTO `sys_oper_log` VALUES (123, '角色管理', 2, 'com.zyjk.web.controller.system.SysRoleController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/role/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"roleId\" : [ \"2\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-21 15:16:00');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"占有登记\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:54:11');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2000', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:54:26');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:54:37');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:55:10');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/4', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"菜单已分配,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-07-23 09:55:21');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"1\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"10\" ],\r\n  \"icon\" : [ \"fa fa-gear\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:55:46');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"变动登记\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-address-book-o\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:56:34');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"注销登记\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-address-card\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:56:51');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"4\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"若依官网\" ],\r\n  \"url\" : [ \"http://ruoyi.vip\" ],\r\n  \"target\" : [ \"menuBlank\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"fa fa-location-arrow\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:57:06');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"基本信息\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:57:46');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"抵质押信息\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:58:16');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"司法冻结信息\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:58:34');
INSERT INTO `sys_oper_log` VALUES (136, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"合规性信息\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"4\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:58:52');
INSERT INTO `sys_oper_log` VALUES (137, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"2001\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"历史沿革\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"5\" ],\r\n  \"icon\" : [ \"\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-23 09:59:04');
INSERT INTO `sys_oper_log` VALUES (138, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2004', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:13');
INSERT INTO `sys_oper_log` VALUES (139, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-07-31 14:39:27');
INSERT INTO `sys_oper_log` VALUES (140, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2005', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:34');
INSERT INTO `sys_oper_log` VALUES (141, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2006', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:38');
INSERT INTO `sys_oper_log` VALUES (142, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2007', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:43');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2008', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:48');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2001', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:52');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2002', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:39:57');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2003', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:45:03');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"占有登记\" ],\r\n  \"url\" : [ \"/system/dept\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:dept:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-calculator\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:48:29');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2009\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"占有登记\" ],\r\n  \"url\" : [ \"/system/post\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:post:view\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-calculator\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 14:49:23');
INSERT INTO `sys_oper_log` VALUES (149, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"3\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 15:10:25');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"essential_information\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 15:11:23');
INSERT INTO `sys_oper_log` VALUES (151, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/essential_information', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-07-31 15:11:46');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2009', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 15:25:20');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"占有登记管理\" ],\r\n  \"url\" : [ \"/system/information/list\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:information:list\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 15:49:16');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"占有登记管理\" ],\r\n  \"url\" : [ \"/system/information\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:information\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 15:50:16');
INSERT INTO `sys_oper_log` VALUES (155, '【请填写功能名称】', 2, 'com.zyjk.web.controller.property.EssentialInformationController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/information/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"companyName\" : [ \"1\" ],\r\n  \"isRegistration\" : [ \"1\" ],\r\n  \"socialCode\" : [ \"1\" ],\r\n  \"legalPerson\" : [ \"1\" ],\r\n  \"placeRegistration\" : [ \"3\" ],\r\n  \"residence\" : [ \"2\" ],\r\n  \"registeredCapital\" : [ \"1.00\" ],\r\n  \"foundDate\" : [ \"2020-07-31\" ],\r\n  \"organizationalForm\" : [ \"1\" ],\r\n  \"organizationCategory\" : [ \"\" ],\r\n  \"stateOwnedWay\" : [ \"\" ],\r\n  \"economicBehaviorDate\" : [ \"\" ],\r\n  \"economicBehaviorName\" : [ \"\" ],\r\n  \"policyDecisionDate\" : [ \"\" ],\r\n  \"policyDecisionFile\" : [ \"\" ],\r\n  \"investorCode\" : [ \"\" ],\r\n  \"investorName\" : [ \"\" ],\r\n  \"registrationAuthorityCode\" : [ \"\" ],\r\n  \"industryCode\" : [ \"\" ],\r\n  \"subjectionCode\" : [ \"\" ],\r\n  \"gradeCode\" : [ \"\" ],\r\n  \"isKeySubsidiary\" : [ \"\" ],\r\n  \"propertyRightRegistration\" : [ \"\" ],\r\n  \"isNormalOperation\" : [ \"\" ],\r\n  \"operationDescription\" : [ \"\" ],\r\n  \"businessScope\" : [ \"\" ],\r\n  \"contributionRemarks\" : [ \"\" ],\r\n  \"createId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 16:27:48');
INSERT INTO `sys_oper_log` VALUES (156, '【请填写功能名称】', 5, 'com.zyjk.web.controller.property.EssentialInformationController.export()', 'POST', 1, 'admin', '研发部门', '/system/information/export', '127.0.0.1', '内网IP', '{\r\n  \"companyName\" : [ \"\" ],\r\n  \"legalPerson\" : [ \"\" ],\r\n  \"params[beginFoundDate]\" : [ \"\" ],\r\n  \"params[endFoundDate]\" : [ \"\" ],\r\n  \"orderByColumn\" : [ \"\" ],\r\n  \"isAsc\" : [ \"asc\" ]\r\n}', '{\r\n  \"msg\" : \"0360e776-d0fb-4e20-a009-2d41569ac67f_information.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 16:27:55');
INSERT INTO `sys_oper_log` VALUES (157, '【请填写功能名称】', 1, 'com.zyjk.web.controller.property.EssentialInformationController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/information/add', '127.0.0.1', '内网IP', '{\r\n  \"companyName\" : [ \"1\" ],\r\n  \"isRegistration\" : [ \"1\" ],\r\n  \"socialCode\" : [ \"1\" ],\r\n  \"legalPerson\" : [ \"1\" ],\r\n  \"placeRegistration\" : [ \"1\" ],\r\n  \"residence\" : [ \"1\" ],\r\n  \"registeredCapital\" : [ \"1\" ],\r\n  \"foundDate\" : [ \"2020-07-03\" ],\r\n  \"organizationalForm\" : [ \"1\", \"1\" ],\r\n  \"organizationCategory\" : [ \"1\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-02\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-01\" ],\r\n  \"policyDecisionFile\" : [ \"1\" ],\r\n  \"investorCode\" : [ \"1\" ],\r\n  \"registrationAuthorityCode\" : [ \"1\" ],\r\n  \"industryCode\" : [ \"1\" ],\r\n  \"subjectionCode\" : [ \"1\" ],\r\n  \"gradeCode\" : [ \"1\" ],\r\n  \"isKeySubsidiary\" : [ \"1\" ],\r\n  \"propertyRightRegistration\" : [ \"1\" ],\r\n  \"operationDescription\" : [ \"1\" ],\r\n  \"businessScope\" : [ \"1\" ],\r\n  \"contributionRemarks\" : [ \"1\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'create_id\' doesn\'t have a default value\r\n### The error may involve com.zyjk.system.mapper.EssentialInformationMapper.insertEssentialInformation-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into essential_information          ( company_name,             is_registration,             social_code,             legal_person,             place_registration,             residence,             registered_capital,             found_date,             organizational_form,             organization_category,                          economic_behavior_date,             economic_behavior_name,             policy_decision_date,             policy_decision_file,             investor_code,                          registration_authority_code,             industry_code,             subjection_code,             grade_code,             is_key_subsidiary,             property_right_registration,                          operation_description,             business_scope,             contribution_remarks,             create_time )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ?,             ?,             ?,                          ?,             ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'create_id\' doesn\'t have a default value\n; Field \'create_id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'create_id\' doesn\'t have a default value', '2020-07-31 17:28:51');
INSERT INTO `sys_oper_log` VALUES (158, '【请填写功能名称】', 1, 'com.zyjk.web.controller.property.EssentialInformationController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/information/add', '127.0.0.1', '内网IP', '{\r\n  \"companyName\" : [ \"1\" ],\r\n  \"isRegistration\" : [ \"1\" ],\r\n  \"socialCode\" : [ \"1\" ],\r\n  \"legalPerson\" : [ \"1\" ],\r\n  \"placeRegistration\" : [ \"1\" ],\r\n  \"residence\" : [ \"1\" ],\r\n  \"registeredCapital\" : [ \"1\" ],\r\n  \"foundDate\" : [ \"2020-07-30\" ],\r\n  \"organizationalForm\" : [ \"1\", \"1\" ],\r\n  \"organizationCategory\" : [ \"1\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-30\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-31\" ],\r\n  \"policyDecisionFile\" : [ \"1\" ],\r\n  \"investorCode\" : [ \"1\" ],\r\n  \"registrationAuthorityCode\" : [ \"1\" ],\r\n  \"industryCode\" : [ \"1\" ],\r\n  \"subjectionCode\" : [ \"1\" ],\r\n  \"gradeCode\" : [ \"1\" ],\r\n  \"isKeySubsidiary\" : [ \"1\" ],\r\n  \"propertyRightRegistration\" : [ \"1\" ],\r\n  \"operationDescription\" : [ \"1\" ],\r\n  \"businessScope\" : [ \"1\" ],\r\n  \"contributionRemarks\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 17:32:55');
INSERT INTO `sys_oper_log` VALUES (159, '【请填写功能名称】', 3, 'com.zyjk.web.controller.property.EssentialInformationController.remove()', 'POST', 1, 'admin', '研发部门', '/system/information/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 17:33:22');
INSERT INTO `sys_oper_log` VALUES (160, '【请填写功能名称】', 1, 'com.zyjk.web.controller.property.EssentialInformationController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/information/add', '127.0.0.1', '内网IP', '{\r\n  \"companyName\" : [ \"2\" ],\r\n  \"isRegistration\" : [ \"2\" ],\r\n  \"socialCode\" : [ \"2\" ],\r\n  \"legalPerson\" : [ \"2\" ],\r\n  \"placeRegistration\" : [ \"2\" ],\r\n  \"residence\" : [ \"2\" ],\r\n  \"registeredCapital\" : [ \"2\" ],\r\n  \"foundDate\" : [ \"2020-07-07\" ],\r\n  \"organizationalForm\" : [ \"2\" ],\r\n  \"organizationCategory\" : [ \"2\" ],\r\n  \"stateOwnedWay\" : [ \"2\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-30\" ],\r\n  \"economicBehaviorName\" : [ \"2\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-30\" ],\r\n  \"policyDecisionFile\" : [ \"2\" ],\r\n  \"investorCode\" : [ \"2\" ],\r\n  \"registrationAuthorityCode\" : [ \"2\" ],\r\n  \"industryCode\" : [ \"2\" ],\r\n  \"subjectionCode\" : [ \"2\" ],\r\n  \"gradeCode\" : [ \"2\" ],\r\n  \"isKeySubsidiary\" : [ \"2\" ],\r\n  \"propertyRightRegistration\" : [ \"2\" ],\r\n  \"operationDescription\" : [ \"2\" ],\r\n  \"businessScope\" : [ \"2\" ],\r\n  \"contributionRemarks\" : [ \"2\" ],\r\n  \"investorName\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-07-31 17:40:11');
INSERT INTO `sys_oper_log` VALUES (161, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2010\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"公司信息管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"system:information\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"#\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:17:23');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"存在子菜单,不允许删除\",\r\n  \"code\" : 301\r\n}', 0, NULL, '2020-08-02 10:18:18');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2011', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:26');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2012', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:31');
INSERT INTO `sys_oper_log` VALUES (165, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2013', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:35');
INSERT INTO `sys_oper_log` VALUES (166, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2014', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:40');
INSERT INTO `sys_oper_log` VALUES (167, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2015', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:44');
INSERT INTO `sys_oper_log` VALUES (168, '菜单管理', 3, 'com.zyjk.web.controller.system.SysMenuController.remove()', 'GET', 1, 'admin', '研发部门', '/system/menu/remove/2010', '127.0.0.1', '内网IP', '{ }', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:18:49');
INSERT INTO `sys_oper_log` VALUES (169, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"信息管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:19:12');
INSERT INTO `sys_oper_log` VALUES (170, '【请填写功能名称】', 3, 'com.zyjk.web.controller.property.EssentialInformationController.remove()', 'POST', 1, 'admin', '研发部门', '/system/information/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:21:10');
INSERT INTO `sys_oper_log` VALUES (171, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2016\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"公司管理\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"1\" ],\r\n  \"icon\" : [ \"fa fa-address-book\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:24:28');
INSERT INTO `sys_oper_log` VALUES (172, '【请填写功能名称】', 2, 'com.zyjk.web.controller.property.EssentialInformationController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/information/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"3\" ],\r\n  \"companyName\" : [ \"2\" ],\r\n  \"isRegistration\" : [ \"2\" ],\r\n  \"socialCode\" : [ \"2\" ],\r\n  \"legalPerson\" : [ \"2\" ],\r\n  \"placeRegistration\" : [ \"2\" ],\r\n  \"residence\" : [ \"2\" ],\r\n  \"registeredCapital\" : [ \"2.00\" ],\r\n  \"foundDate\" : [ \"2020-07-08\" ],\r\n  \"organizationalForm\" : [ \"2\" ],\r\n  \"organizationCategory\" : [ \"2\" ],\r\n  \"stateOwnedWay\" : [ \"2\" ],\r\n  \"investorCode\" : [ \"2\" ],\r\n  \"registrationAuthorityCode\" : [ \"2\" ],\r\n  \"industryCode\" : [ \"2\" ],\r\n  \"subjectionCode\" : [ \"2\" ],\r\n  \"gradeCode\" : [ \"2\" ],\r\n  \"isKeySubsidiary\" : [ \"0\" ],\r\n  \"isNormalOperation\" : [ \"\" ],\r\n  \"operationDescription\" : [ \"2\" ],\r\n  \"businessScope\" : [ \"2\" ],\r\n  \"contributionRemarks\" : [ \"222222222\" ],\r\n  \"investorName\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:52:50');
INSERT INTO `sys_oper_log` VALUES (173, '【请填写功能名称】', 1, 'com.zyjk.web.controller.property.EssentialInformationController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/information/add', '127.0.0.1', '内网IP', '{\r\n  \"companyName\" : [ \"3\" ],\r\n  \"isRegistration\" : [ \"3\" ],\r\n  \"socialCode\" : [ \"3\" ],\r\n  \"legalPerson\" : [ \"3\" ],\r\n  \"placeRegistration\" : [ \"3\" ],\r\n  \"residence\" : [ \"3\" ],\r\n  \"registeredCapital\" : [ \"3\" ],\r\n  \"foundDate\" : [ \"2020-08-02\" ],\r\n  \"organizationalForm\" : [ \"3\" ],\r\n  \"organizationCategory\" : [ \"3\" ],\r\n  \"stateOwnedWay\" : [ \"3\" ],\r\n  \"investorCode\" : [ \"3\" ],\r\n  \"registrationAuthorityCode\" : [ \"3\" ],\r\n  \"industryCode\" : [ \"3\" ],\r\n  \"subjectionCode\" : [ \"3\" ],\r\n  \"gradeCode\" : [ \"3\" ],\r\n  \"isKeySubsidiary\" : [ \"3\" ],\r\n  \"propertyRightRegistration\" : [ \"3\" ],\r\n  \"operationDescription\" : [ \"3\" ],\r\n  \"businessScope\" : [ \"3\" ],\r\n  \"contributionRemarks\" : [ \"3\" ],\r\n  \"investorName\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 10:53:37');
INSERT INTO `sys_oper_log` VALUES (174, '【请填写功能名称】', 2, 'com.zyjk.web.controller.property.EssentialInformationController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/information/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"3\" ],\r\n  \"companyName\" : [ \"2\" ],\r\n  \"isRegistration\" : [ \"2\" ],\r\n  \"socialCode\" : [ \"2\" ],\r\n  \"legalPerson\" : [ \"2\" ],\r\n  \"placeRegistration\" : [ \"2\" ],\r\n  \"residence\" : [ \"2\" ],\r\n  \"registeredCapital\" : [ \"2.00\" ],\r\n  \"foundDate\" : [ \"2020-07-08\" ],\r\n  \"organizationalForm\" : [ \"2\" ],\r\n  \"organizationCategory\" : [ \"2\" ],\r\n  \"stateOwnedWay\" : [ \"2\" ],\r\n  \"investorCode\" : [ \"2\" ],\r\n  \"registrationAuthorityCode\" : [ \"2\" ],\r\n  \"industryCode\" : [ \"2\" ],\r\n  \"subjectionCode\" : [ \"2\" ],\r\n  \"gradeCode\" : [ \"2\" ],\r\n  \"isKeySubsidiary\" : [ \"0\" ],\r\n  \"isNormalOperation\" : [ \"\" ],\r\n  \"operationDescription\" : [ \"2\" ],\r\n  \"businessScope\" : [ \"2\" ],\r\n  \"contributionRemarks\" : [ \"3333\" ],\r\n  \"investorName\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 11:23:58');
INSERT INTO `sys_oper_log` VALUES (175, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"senior_management\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 13:43:22');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/senior_management', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 13:43:31');
INSERT INTO `sys_oper_log` VALUES (177, '管理人员', 1, 'com.zyjk.web.controller.system.SeniorManagementController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/management/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"name\" : [ \"吕智\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-03\" ],\r\n  \"departureDate\" : [ \"2020-08-05\" ],\r\n  \"level\" : [ \"11\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:16:10');
INSERT INTO `sys_oper_log` VALUES (178, '管理人员', 2, 'com.zyjk.web.controller.system.SeniorManagementController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/management/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"2\" ],\r\n  \"name\" : [ \"吕智\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-03\" ],\r\n  \"departureDate\" : [ \"2020-08-05\" ],\r\n  \"level\" : [ \"11\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:18:21');
INSERT INTO `sys_oper_log` VALUES (179, '管理人员', 2, 'com.zyjk.web.controller.system.SeniorManagementController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/management/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"2\" ],\r\n  \"name\" : [ \"吕智\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-03\" ],\r\n  \"departureDate\" : [ \"2020-08-05\" ],\r\n  \"level\" : [ \"11\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:18:26');
INSERT INTO `sys_oper_log` VALUES (180, '用户管理', 2, 'com.zyjk.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"status\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:19:24');
INSERT INTO `sys_oper_log` VALUES (181, '用户管理', 2, 'com.zyjk.web.controller.system.SysUserController.changeStatus()', 'POST', 1, 'admin', '研发部门', '/system/user/changeStatus', '127.0.0.1', '内网IP', '{\r\n  \"userId\" : [ \"100\" ],\r\n  \"status\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:19:28');
INSERT INTO `sys_oper_log` VALUES (182, '管理人员', 1, 'com.zyjk.web.controller.system.SeniorManagementController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/management/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"name\" : [ \"吕智2\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-05\" ],\r\n  \"departureDate\" : [ \"2020-08-15\" ],\r\n  \"level\" : [ \"11\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:31:33');
INSERT INTO `sys_oper_log` VALUES (183, '管理人员', 2, 'com.zyjk.web.controller.system.SeniorManagementController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/management/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"3\" ],\r\n  \"name\" : [ \"吕智2\" ],\r\n  \"sex\" : [ \"1\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-05\" ],\r\n  \"departureDate\" : [ \"2020-08-15\" ],\r\n  \"level\" : [ \"11\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:31:57');
INSERT INTO `sys_oper_log` VALUES (184, '管理人员', 3, 'com.zyjk.web.controller.system.SeniorManagementController.remove()', 'POST', 1, 'admin', '研发部门', '/system/management/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:33:44');
INSERT INTO `sys_oper_log` VALUES (185, '管理人员', 5, 'com.zyjk.web.controller.system.SeniorManagementController.export()', 'POST', 1, 'admin', '研发部门', '/system/management/export', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"\" ],\r\n  \"name\" : [ \"\" ],\r\n  \"sex\" : [ \"\" ],\r\n  \"orderByColumn\" : [ \"\" ],\r\n  \"isAsc\" : [ \"asc\" ]\r\n}', '{\r\n  \"msg\" : \"8abe1035-c2e6-4388-bd78-092392e55705_management.xlsx\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:33:47');
INSERT INTO `sys_oper_log` VALUES (186, '代码生成', 3, 'com.zyjk.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:39:21');
INSERT INTO `sys_oper_log` VALUES (187, '管理人员', 1, 'com.zyjk.web.controller.system.SeniorManagementController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/management/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"name\" : [ \"memcache\" ],\r\n  \"sex\" : [ \"0\" ],\r\n  \"job\" : [ \"董事长\" ],\r\n  \"appointmentDate\" : [ \"2020-08-03\" ],\r\n  \"departureDate\" : [ \"\" ],\r\n  \"level\" : [ \"\" ],\r\n  \"remarks\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 14:51:30');
INSERT INTO `sys_oper_log` VALUES (188, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"contribution\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:01:52');
INSERT INTO `sys_oper_log` VALUES (189, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/contribution', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 15:02:37');
INSERT INTO `sys_oper_log` VALUES (190, '出资情况', 1, 'com.zyjk.web.controller.system.ContributionController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/contribution/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"investorName\" : [ \"中原资产\" ],\r\n  \"investorCode\" : [ \"111111111\" ],\r\n  \"identificationCode\" : [ \"11111\" ],\r\n  \"category\" : [ \"111\" ],\r\n  \"capitalPaid\" : [ \"1\" ],\r\n  \"capitalSubscribed\" : [ \"11\" ],\r\n  \"equityRatio\" : [ \"1\" ],\r\n  \"createId\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:31:31');
INSERT INTO `sys_oper_log` VALUES (191, '出资情况', 2, 'com.zyjk.web.controller.system.ContributionController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/contribution/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"investorName\" : [ \"中原资产\" ],\r\n  \"investorCode\" : [ \"111111111\" ],\r\n  \"identificationCode\" : [ \"11111\" ],\r\n  \"category\" : [ \"111\" ],\r\n  \"capitalPaid\" : [ \"1.00\" ],\r\n  \"capitalSubscribed\" : [ \"11.00\" ],\r\n  \"equityRatio\" : [ \"1.0000\" ],\r\n  \"createId\" : [ \"2\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:31:39');
INSERT INTO `sys_oper_log` VALUES (192, '出资情况', 2, 'com.zyjk.web.controller.system.ContributionController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/contribution/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"investorName\" : [ \"中原资产\" ],\r\n  \"investorCode\" : [ \"111111111\" ],\r\n  \"identificationCode\" : [ \"11111\" ],\r\n  \"category\" : [ \"111\" ],\r\n  \"capitalPaid\" : [ \"1.00\" ],\r\n  \"capitalSubscribed\" : [ \"11.00\" ],\r\n  \"equityRatio\" : [ \"1.0000\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:46:21');
INSERT INTO `sys_oper_log` VALUES (193, '出资情况', 1, 'com.zyjk.web.controller.system.ContributionController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/contribution/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"investorName\" : [ \"中原金科\" ],\r\n  \"investorCode\" : [ \"2\" ],\r\n  \"identificationCode\" : [ \"111\" ],\r\n  \"category\" : [ \"1\" ],\r\n  \"capitalPaid\" : [ \"1\" ],\r\n  \"capitalSubscribed\" : [ \"1\" ],\r\n  \"equityRatio\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:46:42');
INSERT INTO `sys_oper_log` VALUES (194, '出资情况', 2, 'com.zyjk.web.controller.system.ContributionController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/contribution/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"investorName\" : [ \"中原金科\" ],\r\n  \"investorCode\" : [ \"2\" ],\r\n  \"identificationCode\" : [ \"111\" ],\r\n  \"category\" : [ \"哈哈\" ],\r\n  \"capitalPaid\" : [ \"1.00\" ],\r\n  \"capitalSubscribed\" : [ \"1.00\" ],\r\n  \"equityRatio\" : [ \"1.0000\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:46:53');
INSERT INTO `sys_oper_log` VALUES (195, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"equity_mortgage\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 15:50:12');
INSERT INTO `sys_oper_log` VALUES (196, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/equity_mortgage', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 15:50:24');
INSERT INTO `sys_oper_log` VALUES (197, '股权抵押', 1, 'com.zyjk.web.controller.system.EquityMortgageController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中国银行\" ],\r\n  \"equityRatio\" : [ \"20\" ],\r\n  \"mortgagor\" : [ \"吕智\" ],\r\n  \"bookValue\" : [ \"100\" ],\r\n  \"evaluationValue\" : [ \"20\" ],\r\n  \"mortgageRatio\" : [ \"20\" ],\r\n  \"remarks\" : [ \"哈哈\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:08:38');
INSERT INTO `sys_oper_log` VALUES (198, '股权抵押', 1, 'com.zyjk.web.controller.system.EquityMortgageController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"100\" ],\r\n  \"mortgagor\" : [ \"王艳娟\" ],\r\n  \"bookValue\" : [ \"1000\" ],\r\n  \"evaluationValue\" : [ \"12000\" ],\r\n  \"mortgageRatio\" : [ \"120\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\r\n### The error may involve com.zyjk.system.mapper.EquityMortgageMapper.insertEquityMortgage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into equity_mortgage          ( info_id,             organization_name,             equity_ratio,             mortgagor,             book_value,             evaluation_value,             mortgage_ratio,             remarks,             create_time,             create_id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\n; Data truncation: Out of range value for column \'equity_ratio\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1', '2020-08-02 16:10:10');
INSERT INTO `sys_oper_log` VALUES (199, '股权抵押', 1, 'com.zyjk.web.controller.system.EquityMortgageController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"100\" ],\r\n  \"mortgagor\" : [ \"王艳娟\" ],\r\n  \"bookValue\" : [ \"1000\" ],\r\n  \"evaluationValue\" : [ \"12000\" ],\r\n  \"mortgageRatio\" : [ \"20\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\r\n### The error may involve com.zyjk.system.mapper.EquityMortgageMapper.insertEquityMortgage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into equity_mortgage          ( info_id,             organization_name,             equity_ratio,             mortgagor,             book_value,             evaluation_value,             mortgage_ratio,             remarks,             create_time,             create_id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\n; Data truncation: Out of range value for column \'equity_ratio\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1', '2020-08-02 16:10:28');
INSERT INTO `sys_oper_log` VALUES (200, '股权抵押', 1, 'com.zyjk.web.controller.system.EquityMortgageController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"100\" ],\r\n  \"mortgagor\" : [ \"王艳娟\" ],\r\n  \"bookValue\" : [ \"1000\" ],\r\n  \"evaluationValue\" : [ \"12000\" ],\r\n  \"mortgageRatio\" : [ \"20\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', 'null', 1, '\r\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\r\n### The error may involve com.zyjk.system.mapper.EquityMortgageMapper.insertEquityMortgage-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into equity_mortgage          ( info_id,             organization_name,             equity_ratio,             mortgagor,             book_value,             evaluation_value,             mortgage_ratio,             remarks,             create_time,             create_id )           values ( ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ?,             ? )\r\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1\n; Data truncation: Out of range value for column \'equity_ratio\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'equity_ratio\' at row 1', '2020-08-02 16:11:09');
INSERT INTO `sys_oper_log` VALUES (201, '股权抵押', 1, 'com.zyjk.web.controller.system.EquityMortgageController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"99\" ],\r\n  \"mortgagor\" : [ \"王艳娟\" ],\r\n  \"bookValue\" : [ \"1000\" ],\r\n  \"evaluationValue\" : [ \"12000\" ],\r\n  \"mortgageRatio\" : [ \"20\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:12:07');
INSERT INTO `sys_oper_log` VALUES (202, '股权抵押', 2, 'com.zyjk.web.controller.system.EquityMortgageController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"99.23\" ],\r\n  \"mortgagor\" : [ \"王艳娟\" ],\r\n  \"bookValue\" : [ \"1000.00\" ],\r\n  \"evaluationValue\" : [ \"12000.00\" ],\r\n  \"mortgageRatio\" : [ \"20.0000\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:12:17');
INSERT INTO `sys_oper_log` VALUES (203, '股权抵押', 2, 'com.zyjk.web.controller.system.EquityMortgageController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"99.2300\" ],\r\n  \"mortgagor\" : [ \"吕智\" ],\r\n  \"bookValue\" : [ \"1000.00\" ],\r\n  \"evaluationValue\" : [ \"12000.00\" ],\r\n  \"mortgageRatio\" : [ \"20.0000\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:12:32');
INSERT INTO `sys_oper_log` VALUES (204, '股权抵押', 2, 'com.zyjk.web.controller.system.EquityMortgageController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"organizationName\" : [ \"中原金科\" ],\r\n  \"equityRatio\" : [ \"99.2300\" ],\r\n  \"mortgagor\" : [ \"吕智\" ],\r\n  \"bookValue\" : [ \"1000.00\" ],\r\n  \"evaluationValue\" : [ \"12000.00\" ],\r\n  \"mortgageRatio\" : [ \"20.023\" ],\r\n  \"remarks\" : [ \"111\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:13:29');
INSERT INTO `sys_oper_log` VALUES (205, '股权抵押', 3, 'com.zyjk.web.controller.system.EquityMortgageController.remove()', 'POST', 1, 'admin', '研发部门', '/system/mortgage/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:13:39');
INSERT INTO `sys_oper_log` VALUES (206, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"judicial_freeze\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:16:08');
INSERT INTO `sys_oper_log` VALUES (207, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/judicial_freeze', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 16:16:14');
INSERT INTO `sys_oper_log` VALUES (208, '司法冻结情况', 1, 'com.zyjk.web.controller.system.JudicialFreezeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/freeze/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"judicialOrgan\" : [ \"郑州法院\" ],\r\n  \"frozenAmount\" : [ \"1111\" ],\r\n  \"frozenStartDate\" : [ \"2020-08-05\" ],\r\n  \"frozenEndDate\" : [ \"2020-08-28\" ],\r\n  \"frozenReason\" : [ \"欠钱不还\" ],\r\n  \"remarks\" : [ \"哈哈\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:26:30');
INSERT INTO `sys_oper_log` VALUES (209, '司法冻结情况', 1, 'com.zyjk.web.controller.system.JudicialFreezeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/freeze/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"judicialOrgan\" : [ \"中华人民共和国国务院\" ],\r\n  \"frozenAmount\" : [ \"100000000000\" ],\r\n  \"frozenStartDate\" : [ \"2020-08-01\" ],\r\n  \"frozenEndDate\" : [ \"2020-10-31\" ],\r\n  \"frozenReason\" : [ \"没有原因\" ],\r\n  \"remarks\" : [ \"李克强交代办理\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:27:28');
INSERT INTO `sys_oper_log` VALUES (210, '司法冻结情况', 2, 'com.zyjk.web.controller.system.JudicialFreezeController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/freeze/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"2\" ],\r\n  \"infoId\" : [ \"1\" ],\r\n  \"judicialOrgan\" : [ \"中华人民共和国国务院\" ],\r\n  \"frozenAmount\" : [ \"100000000000.00\" ],\r\n  \"frozenStartDate\" : [ \"2020-08-02\" ],\r\n  \"frozenEndDate\" : [ \"2020-10-31\" ],\r\n  \"frozenReason\" : [ \"没有原因\" ],\r\n  \"remarks\" : [ \"李克强交代办理\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:27:37');
INSERT INTO `sys_oper_log` VALUES (211, '司法冻结情况', 1, 'com.zyjk.web.controller.system.JudicialFreezeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/freeze/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"1\" ],\r\n  \"judicialOrgan\" : [ \"1\" ],\r\n  \"frozenAmount\" : [ \"1\" ],\r\n  \"frozenStartDate\" : [ \"\" ],\r\n  \"frozenEndDate\" : [ \"\" ],\r\n  \"frozenReason\" : [ \"\" ],\r\n  \"remarks\" : [ \"\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:27:48');
INSERT INTO `sys_oper_log` VALUES (212, '司法冻结情况', 3, 'com.zyjk.web.controller.system.JudicialFreezeController.remove()', 'POST', 1, 'admin', '研发部门', '/system/freeze/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"3\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:27:54');
INSERT INTO `sys_oper_log` VALUES (213, '菜单管理', 1, 'com.zyjk.web.controller.system.SysMenuController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/add', '127.0.0.1', '内网IP', '{\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"产权管理\" ],\r\n  \"url\" : [ \"\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"2\" ],\r\n  \"icon\" : [ \"fa fa-reorder\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:36:53');
INSERT INTO `sys_oper_log` VALUES (214, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"2\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统监控\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"20\" ],\r\n  \"icon\" : [ \"fa fa-video-camera\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:37:05');
INSERT INTO `sys_oper_log` VALUES (215, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"4\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"C\" ],\r\n  \"menuName\" : [ \"若依官网\" ],\r\n  \"url\" : [ \"http://ruoyi.vip\" ],\r\n  \"target\" : [ \"menuBlank\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"21\" ],\r\n  \"icon\" : [ \"fa fa-location-arrow\" ],\r\n  \"visible\" : [ \"1\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:37:23');
INSERT INTO `sys_oper_log` VALUES (216, '菜单管理', 2, 'com.zyjk.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\r\n  \"menuId\" : [ \"3\" ],\r\n  \"parentId\" : [ \"0\" ],\r\n  \"menuType\" : [ \"M\" ],\r\n  \"menuName\" : [ \"系统工具\" ],\r\n  \"url\" : [ \"#\" ],\r\n  \"target\" : [ \"menuItem\" ],\r\n  \"perms\" : [ \"\" ],\r\n  \"orderNum\" : [ \"22\" ],\r\n  \"icon\" : [ \"fa fa-bars\" ],\r\n  \"visible\" : [ \"0\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:37:43');
INSERT INTO `sys_oper_log` VALUES (217, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"catalog\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 16:53:03');
INSERT INTO `sys_oper_log` VALUES (218, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/catalog', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 16:53:08');
INSERT INTO `sys_oper_log` VALUES (219, '代码生成', 3, 'com.zyjk.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"8\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:00:38');
INSERT INTO `sys_oper_log` VALUES (220, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"catalog\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:00:42');
INSERT INTO `sys_oper_log` VALUES (221, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/catalog', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 17:01:10');
INSERT INTO `sys_oper_log` VALUES (222, '代码生成', 3, 'com.zyjk.generator.controller.GenController.remove()', 'POST', 1, 'admin', '研发部门', '/tool/gen/remove', '127.0.0.1', '内网IP', '{\r\n  \"ids\" : [ \"9\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:08:38');
INSERT INTO `sys_oper_log` VALUES (223, '代码生成', 6, 'com.zyjk.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\r\n  \"tables\" : [ \"catalog\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:08:42');
INSERT INTO `sys_oper_log` VALUES (224, '代码生成', 8, 'com.zyjk.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/catalog', '127.0.0.1', '内网IP', '{ }', 'null', 0, NULL, '2020-08-02 17:08:47');
INSERT INTO `sys_oper_log` VALUES (225, '占有登记', 1, 'com.zyjk.web.controller.system.CatalogController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/catalog/add', '127.0.0.1', '内网IP', '{\r\n  \"infoId\" : [ \"2\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-10\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-03\" ],\r\n  \"policyDecisionFile\" : [ \"\" ],\r\n  \"registrationAuthorityCode\" : [ \"\" ],\r\n  \"propertyRightRegistration\" : [ \"\" ],\r\n  \"ownedAssetsName\" : [ \"达到\" ],\r\n  \"ownedAssetsFileName\" : [ \"\" ],\r\n  \"ownedAssetsFileCode\" : [ \"\" ],\r\n  \"ownedAssetsDescription\" : [ \"\" ],\r\n  \"industryName\" : [ \"\" ],\r\n  \"industryFileName\" : [ \"\" ],\r\n  \"industryFileCode\" : [ \"\" ],\r\n  \"industryDescription\" : [ \"\" ],\r\n  \"orgName\" : [ \"\" ],\r\n  \"orgFileName\" : [ \"\" ],\r\n  \"orgFileCode\" : [ \"\" ],\r\n  \"orgDescription\" : [ \"\" ],\r\n  \"contributionContent\" : [ \"\" ],\r\n  \"contributionDescription\" : [ \"\" ],\r\n  \"receiptContent\" : [ \"\" ],\r\n  \"receiptDescription\" : [ \"\" ],\r\n  \"agreementContent\" : [ \"\" ],\r\n  \"agreementDescription\" : [ \"\" ],\r\n  \"agencyName\" : [ \"\" ],\r\n  \"reportNo\" : [ \"\" ],\r\n  \"approvalName\" : [ \"\" ],\r\n  \"approvalNo\" : [ \"\" ],\r\n  \"approvalDescription\" : [ \"打发打发\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:22:00');
INSERT INTO `sys_oper_log` VALUES (226, '占有登记', 2, 'com.zyjk.web.controller.system.CatalogController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/catalog/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"2\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-10\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-10\" ],\r\n  \"policyDecisionFile\" : [ \"\" ],\r\n  \"registrationAuthorityCode\" : [ \"\" ],\r\n  \"propertyRightRegistration\" : [ \"\" ],\r\n  \"ownedAssetsName\" : [ \"达到\" ],\r\n  \"ownedAssetsFileName\" : [ \"\" ],\r\n  \"ownedAssetsFileCode\" : [ \"\" ],\r\n  \"ownedAssetsDescription\" : [ \"\" ],\r\n  \"industryName\" : [ \"\" ],\r\n  \"industryFileName\" : [ \"\" ],\r\n  \"industryFileCode\" : [ \"\" ],\r\n  \"industryDescription\" : [ \"\" ],\r\n  \"orgName\" : [ \"\" ],\r\n  \"orgFileName\" : [ \"\" ],\r\n  \"orgFileCode\" : [ \"\" ],\r\n  \"orgDescription\" : [ \"\" ],\r\n  \"contributionContent\" : [ \"\" ],\r\n  \"contributionDescription\" : [ \"\" ],\r\n  \"receiptContent\" : [ \"\" ],\r\n  \"receiptDescription\" : [ \"\" ],\r\n  \"agreementContent\" : [ \"\" ],\r\n  \"agreementDescription\" : [ \"\" ],\r\n  \"agencyName\" : [ \"\" ],\r\n  \"reportNo\" : [ \"\" ],\r\n  \"approvalName\" : [ \"\" ],\r\n  \"approvalNo\" : [ \"\" ],\r\n  \"approvalDescription\" : [ \"打发打发\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:22:19');
INSERT INTO `sys_oper_log` VALUES (227, '占有登记', 2, 'com.zyjk.web.controller.system.CatalogController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/catalog/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"2\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-11\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-10\" ],\r\n  \"policyDecisionFile\" : [ \"\" ],\r\n  \"registrationAuthorityCode\" : [ \"\" ],\r\n  \"propertyRightRegistration\" : [ \"\" ],\r\n  \"ownedAssetsName\" : [ \"达到\" ],\r\n  \"ownedAssetsFileName\" : [ \"\" ],\r\n  \"ownedAssetsFileCode\" : [ \"\" ],\r\n  \"ownedAssetsDescription\" : [ \"\" ],\r\n  \"industryName\" : [ \"\" ],\r\n  \"industryFileName\" : [ \"\" ],\r\n  \"industryFileCode\" : [ \"\" ],\r\n  \"industryDescription\" : [ \"\" ],\r\n  \"orgName\" : [ \"\" ],\r\n  \"orgFileName\" : [ \"\" ],\r\n  \"orgFileCode\" : [ \"\" ],\r\n  \"orgDescription\" : [ \"\" ],\r\n  \"contributionContent\" : [ \"\" ],\r\n  \"contributionDescription\" : [ \"\" ],\r\n  \"receiptContent\" : [ \"\" ],\r\n  \"receiptDescription\" : [ \"\" ],\r\n  \"agreementContent\" : [ \"\" ],\r\n  \"agreementDescription\" : [ \"\" ],\r\n  \"agencyName\" : [ \"\" ],\r\n  \"reportNo\" : [ \"\" ],\r\n  \"approvalName\" : [ \"\" ],\r\n  \"approvalNo\" : [ \"\" ],\r\n  \"approvalDescription\" : [ \"打发打发\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:22:27');
INSERT INTO `sys_oper_log` VALUES (228, '占有登记', 2, 'com.zyjk.web.controller.system.CatalogController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/catalog/edit', '127.0.0.1', '内网IP', '{\r\n  \"id\" : [ \"1\" ],\r\n  \"infoId\" : [ \"2\" ],\r\n  \"economicBehaviorDate\" : [ \"2020-07-11\" ],\r\n  \"economicBehaviorName\" : [ \"1\" ],\r\n  \"policyDecisionDate\" : [ \"2020-07-10\" ],\r\n  \"policyDecisionFile\" : [ \"\" ],\r\n  \"registrationAuthorityCode\" : [ \"\" ],\r\n  \"propertyRightRegistration\" : [ \"11111\" ],\r\n  \"ownedAssetsName\" : [ \"达到\" ],\r\n  \"ownedAssetsFileName\" : [ \"\" ],\r\n  \"ownedAssetsFileCode\" : [ \"\" ],\r\n  \"ownedAssetsDescription\" : [ \"\" ],\r\n  \"industryName\" : [ \"\" ],\r\n  \"industryFileName\" : [ \"\" ],\r\n  \"industryFileCode\" : [ \"\" ],\r\n  \"industryDescription\" : [ \"\" ],\r\n  \"orgName\" : [ \"\" ],\r\n  \"orgFileName\" : [ \"\" ],\r\n  \"orgFileCode\" : [ \"\" ],\r\n  \"orgDescription\" : [ \"\" ],\r\n  \"contributionContent\" : [ \"\" ],\r\n  \"contributionDescription\" : [ \"\" ],\r\n  \"receiptContent\" : [ \"\" ],\r\n  \"receiptDescription\" : [ \"\" ],\r\n  \"agreementContent\" : [ \"\" ],\r\n  \"agreementDescription\" : [ \"\" ],\r\n  \"agencyName\" : [ \"\" ],\r\n  \"reportNo\" : [ \"\" ],\r\n  \"approvalName\" : [ \"\" ],\r\n  \"approvalNo\" : [ \"\" ],\r\n  \"approvalDescription\" : [ \"打发打发\" ]\r\n}', '{\r\n  \"msg\" : \"操作成功\",\r\n  \"code\" : 0\r\n}', 0, NULL, '2020-08-02 17:22:56');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2018-03-16 11:33:00', 'ry', '2020-07-21 15:16:00', '普通角色');
INSERT INTO `sys_role` VALUES (100, '经办人角色', 'role_jingbanren', 3, '1', '0', '0', 'admin', '2020-07-19 16:37:23', 'admin', '2020-07-19 17:08:18', '');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);
INSERT INTO `sys_role_menu` VALUES (100, 1);
INSERT INTO `sys_role_menu` VALUES (100, 3);
INSERT INTO `sys_role_menu` VALUES (100, 100);
INSERT INTO `sys_role_menu` VALUES (100, 113);
INSERT INTO `sys_role_menu` VALUES (100, 114);
INSERT INTO `sys_role_menu` VALUES (100, 115);
INSERT INTO `sys_role_menu` VALUES (100, 1001);
INSERT INTO `sys_role_menu` VALUES (100, 1002);
INSERT INTO `sys_role_menu` VALUES (100, 1003);
INSERT INTO `sys_role_menu` VALUES (100, 1057);
INSERT INTO `sys_role_menu` VALUES (100, 1058);
INSERT INTO `sys_role_menu` VALUES (100, 1059);
INSERT INTO `sys_role_menu` VALUES (100, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '最后登陆IP',
  `login_date` datetime(0) NULL DEFAULT NULL COMMENT '最后登陆时间',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 101 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '管理员', '00', 'ry@163.com', '15888888888', '1', '', '29c67a30398638269fe600f73a054934', '111111', '0', '0', '127.0.0.1', '2020-08-02 13:42:57', 'admin', '2018-03-16 11:33:00', 'ry', '2020-08-02 13:42:56', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', 'lvzhi1', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', '2018-03-16 11:33:00', 'admin', '2018-03-16 11:33:00', 'ry', '2018-03-16 11:33:00', '测试员');
INSERT INTO `sys_user` VALUES (100, 108, 'lvzhi', 'lvzhi', '00', 'lvzhi1116@126.com', '15981858972', '0', '', '2ca66f5865c3436b0b82c39ed46a7852', '383fa4', '0', '0', '127.0.0.1', '2020-07-30 16:51:09', 'admin', '2020-07-19 16:36:25', 'admin', '2020-08-02 14:19:27', '');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime(0) NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime(0) NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int(5) NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('3ac34697-fa46-4a7a-a21b-70b84958776d', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 8', 'Windows 10', 'on_line', '2020-08-02 13:42:52', '2020-08-02 17:28:26', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (100, 3);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (100, 100);

SET FOREIGN_KEY_CHECKS = 1;
