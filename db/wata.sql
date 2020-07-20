/*
Navicat PGSQL Data Transfer

Source Server         : vm-postgres-u14.04
Source Server Version : 90315
Source Host           : 192.168.56.103:5432
Source Database       : wata
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90315
File Encoding         : 65001

Date: 2020-07-20 13:49:07
*/


-- ----------------------------
-- Sequence structure for camera_cover_status_id_seq
-- ----------------------------
DROP SEQUENCE "camera_cover_status_id_seq";
CREATE SEQUENCE "camera_cover_status_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 9
 CACHE 1;
SELECT setval('"public"."camera_cover_status_id_seq"', 9, true);

-- ----------------------------
-- Sequence structure for camera_id_seq
-- ----------------------------
DROP SEQUENCE "camera_id_seq";
CREATE SEQUENCE "camera_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 55
 CACHE 1;
SELECT setval('"public"."camera_id_seq"', 55, true);

-- ----------------------------
-- Sequence structure for camm_id_seq
-- ----------------------------
DROP SEQUENCE "camm_id_seq";
CREATE SEQUENCE "camm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;
SELECT setval('"public"."camm_id_seq"', 11, true);

-- ----------------------------
-- Sequence structure for cf_id_seq
-- ----------------------------
DROP SEQUENCE "cf_id_seq";
CREATE SEQUENCE "cf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8173406
 CACHE 1;
SELECT setval('"public"."cf_id_seq"', 8173406, true);

-- ----------------------------
-- Sequence structure for cpf_id_seq
-- ----------------------------
DROP SEQUENCE "cpf_id_seq";
CREATE SEQUENCE "cpf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 126
 CACHE 1;
SELECT setval('"public"."cpf_id_seq"', 126, true);

-- ----------------------------
-- Sequence structure for ctm_id_seq
-- ----------------------------
DROP SEQUENCE "ctm_id_seq";
CREATE SEQUENCE "ctm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4959413
 CACHE 1;
SELECT setval('"public"."ctm_id_seq"', 4959413, true);

-- ----------------------------
-- Sequence structure for cvm_id_seq
-- ----------------------------
DROP SEQUENCE "cvm_id_seq";
CREATE SEQUENCE "cvm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 10
 CACHE 1;
SELECT setval('"public"."cvm_id_seq"', 10, true);

-- ----------------------------
-- Sequence structure for dome_id_seq
-- ----------------------------
DROP SEQUENCE "dome_id_seq";
CREATE SEQUENCE "dome_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3
 CACHE 1;
SELECT setval('"public"."dome_id_seq"', 3, true);

-- ----------------------------
-- Sequence structure for dome_status_id_seq
-- ----------------------------
DROP SEQUENCE "dome_status_id_seq";
CREATE SEQUENCE "dome_status_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 15
 CACHE 1;
SELECT setval('"public"."dome_status_id_seq"', 15, true);

-- ----------------------------
-- Sequence structure for dpm_id_seq
-- ----------------------------
DROP SEQUENCE "dpm_id_seq";
CREATE SEQUENCE "dpm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 65535
 START 41
 CACHE 1;
SELECT setval('"public"."dpm_id_seq"', 41, true);

-- ----------------------------
-- Sequence structure for env_id_seq
-- ----------------------------
DROP SEQUENCE "env_id_seq";
CREATE SEQUENCE "env_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for fbf_id_seq
-- ----------------------------
DROP SEQUENCE "fbf_id_seq";
CREATE SEQUENCE "fbf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 763
 CACHE 1;
SELECT setval('"public"."fbf_id_seq"', 763, true);

-- ----------------------------
-- Sequence structure for ff_id_seq
-- ----------------------------
DROP SEQUENCE "ff_id_seq";
CREATE SEQUENCE "ff_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4357045
 CACHE 1;
SELECT setval('"public"."ff_id_seq"', 4357045, true);

-- ----------------------------
-- Sequence structure for ff_id_seq2
-- ----------------------------
DROP SEQUENCE "ff_id_seq2";
CREATE SEQUENCE "ff_id_seq2"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 148
 CACHE 1;
SELECT setval('"public"."ff_id_seq2"', 148, true);

-- ----------------------------
-- Sequence structure for ffc_id_seq
-- ----------------------------
DROP SEQUENCE "ffc_id_seq";
CREATE SEQUENCE "ffc_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 44436136
 CACHE 1;
SELECT setval('"public"."ffc_id_seq"', 44436136, true);

-- ----------------------------
-- Sequence structure for ffcmb_id_seq
-- ----------------------------
DROP SEQUENCE "ffcmb_id_seq";
CREATE SEQUENCE "ffcmb_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."ffcmb_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for ffcr_id_seq
-- ----------------------------
DROP SEQUENCE "ffcr_id_seq";
CREATE SEQUENCE "ffcr_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4178586
 CACHE 1;
SELECT setval('"public"."ffcr_id_seq"', 4178586, true);

-- ----------------------------
-- Sequence structure for fn_id_seq
-- ----------------------------
DROP SEQUENCE "fn_id_seq";
CREATE SEQUENCE "fn_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 20414
 CACHE 1;
SELECT setval('"public"."fn_id_seq"', 20414, true);

-- ----------------------------
-- Sequence structure for fo_id_seq
-- ----------------------------
DROP SEQUENCE "fo_id_seq";
CREATE SEQUENCE "fo_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 26752
 CACHE 1;
SELECT setval('"public"."fo_id_seq"', 26752, true);

-- ----------------------------
-- Sequence structure for fr_id_seq
-- ----------------------------
DROP SEQUENCE "fr_id_seq";
CREATE SEQUENCE "fr_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 235726
 CACHE 1;
SELECT setval('"public"."fr_id_seq"', 235726, true);

-- ----------------------------
-- Sequence structure for fuf_id_seq
-- ----------------------------
DROP SEQUENCE "fuf_id_seq";
CREATE SEQUENCE "fuf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 73716
 CACHE 1;
SELECT setval('"public"."fuf_id_seq"', 73716, true);

-- ----------------------------
-- Sequence structure for fuo_id_seq
-- ----------------------------
DROP SEQUENCE "fuo_id_seq";
CREATE SEQUENCE "fuo_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 47270
 CACHE 1;
SELECT setval('"public"."fuo_id_seq"', 47270, true);

-- ----------------------------
-- Sequence structure for fuo_type_id_seq
-- ----------------------------
DROP SEQUENCE "fuo_type_id_seq";
CREATE SEQUENCE "fuo_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 8
 CACHE 1;
SELECT setval('"public"."fuo_type_id_seq"', 8, true);

-- ----------------------------
-- Sequence structure for gmb_id_seq
-- ----------------------------
DROP SEQUENCE "gmb_id_seq";
CREATE SEQUENCE "gmb_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for grb_id_seq
-- ----------------------------
DROP SEQUENCE "grb_id_seq";
CREATE SEQUENCE "grb_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for isp_id_seq
-- ----------------------------
DROP SEQUENCE "isp_id_seq";
CREATE SEQUENCE "isp_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11421729
 CACHE 1;
SELECT setval('"public"."isp_id_seq"', 11421729, true);

-- ----------------------------
-- Sequence structure for log_id_seq
-- ----------------------------
DROP SEQUENCE "log_id_seq";
CREATE SEQUENCE "log_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 535421421
 CACHE 1;
SELECT setval('"public"."log_id_seq"', 535421421, true);

-- ----------------------------
-- Sequence structure for mm_id_seq
-- ----------------------------
DROP SEQUENCE "mm_id_seq";
CREATE SEQUENCE "mm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."mm_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for mount_id_seq
-- ----------------------------
DROP SEQUENCE "mount_id_seq";
CREATE SEQUENCE "mount_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 24
 CACHE 1;
SELECT setval('"public"."mount_id_seq"', 24, true);

-- ----------------------------
-- Sequence structure for mount_status_id_seq
-- ----------------------------
DROP SEQUENCE "mount_status_id_seq";
CREATE SEQUENCE "mount_status_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 16
 CACHE 1;
SELECT setval('"public"."mount_status_id_seq"', 16, true);

-- ----------------------------
-- Sequence structure for mov_id_seq
-- ----------------------------
DROP SEQUENCE "mov_id_seq";
CREATE SEQUENCE "mov_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."mov_id_seq"', 7, true);

-- ----------------------------
-- Sequence structure for mp_id_seq
-- ----------------------------
DROP SEQUENCE "mp_id_seq";
CREATE SEQUENCE "mp_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 3793
 CACHE 1;
SELECT setval('"public"."mp_id_seq"', 3793, true);

-- ----------------------------
-- Sequence structure for mr_id_seq
-- ----------------------------
DROP SEQUENCE "mr_id_seq";
CREATE SEQUENCE "mr_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 46
 CACHE 1;
SELECT setval('"public"."mr_id_seq"', 46, true);

-- ----------------------------
-- Sequence structure for mt_id_seq
-- ----------------------------
DROP SEQUENCE "mt_id_seq";
CREATE SEQUENCE "mt_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 7
 CACHE 1;
SELECT setval('"public"."mt_id_seq"', 7, true);

-- ----------------------------
-- Sequence structure for muf_id_seq
-- ----------------------------
DROP SEQUENCE "muf_id_seq";
CREATE SEQUENCE "muf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 13
 CACHE 1;
SELECT setval('"public"."muf_id_seq"', 13, true);

-- ----------------------------
-- Sequence structure for obj_id_seq
-- ----------------------------
DROP SEQUENCE "obj_id_seq";
CREATE SEQUENCE "obj_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 52
 CACHE 1;
SELECT setval('"public"."obj_id_seq"', 52, true);

-- ----------------------------
-- Sequence structure for obj_type_id_seq
-- ----------------------------
DROP SEQUENCE "obj_type_id_seq";
CREATE SEQUENCE "obj_type_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 27
 CACHE 1;
SELECT setval('"public"."obj_type_id_seq"', 27, true);

-- ----------------------------
-- Sequence structure for obs_plan_id_seq
-- ----------------------------
DROP SEQUENCE "obs_plan_id_seq";
CREATE SEQUENCE "obs_plan_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6
 CACHE 1;
SELECT setval('"public"."obs_plan_id_seq"', 6, true);

-- ----------------------------
-- Sequence structure for oc_id_seq
-- ----------------------------
DROP SEQUENCE "oc_id_seq";
CREATE SEQUENCE "oc_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ocsm_id_seq
-- ----------------------------
DROP SEQUENCE "ocsm_id_seq";
CREATE SEQUENCE "ocsm_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2
 CACHE 1;
SELECT setval('"public"."ocsm_id_seq"', 2, true);

-- ----------------------------
-- Sequence structure for oor_id_seq
-- ----------------------------
DROP SEQUENCE "oor_id_seq";
CREATE SEQUENCE "oor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 314
 CACHE 1;
SELECT setval('"public"."oor_id_seq"', 314, true);

-- ----------------------------
-- Sequence structure for oort_id_seq
-- ----------------------------
DROP SEQUENCE "oort_id_seq";
CREATE SEQUENCE "oort_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for op_id_seq
-- ----------------------------
DROP SEQUENCE "op_id_seq";
CREATE SEQUENCE "op_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 6474
 CACHE 1;
SELECT setval('"public"."op_id_seq"', 6474, true);

-- ----------------------------
-- Sequence structure for ot_leve2_seq
-- ----------------------------
DROP SEQUENCE "ot_leve2_seq";
CREATE SEQUENCE "ot_leve2_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 4679519
 CACHE 1;
SELECT setval('"public"."ot_leve2_seq"', 4679519, true);

-- ----------------------------
-- Sequence structure for ot_leve3_seq
-- ----------------------------
DROP SEQUENCE "ot_leve3_seq";
CREATE SEQUENCE "ot_leve3_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ot_level2_match_id_seq
-- ----------------------------
DROP SEQUENCE "ot_level2_match_id_seq";
CREATE SEQUENCE "ot_level2_match_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5429257
 CACHE 1;
SELECT setval('"public"."ot_level2_match_id_seq"', 5429257, true);

-- ----------------------------
-- Sequence structure for otn_id_seq
-- ----------------------------
DROP SEQUENCE "otn_id_seq";
CREATE SEQUENCE "otn_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 768
 CACHE 1;
SELECT setval('"public"."otn_id_seq"', 768, true);

-- ----------------------------
-- Sequence structure for ott_id_seq
-- ----------------------------
DROP SEQUENCE "ott_id_seq";
CREATE SEQUENCE "ott_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 21
 CACHE 1;
SELECT setval('"public"."ott_id_seq"', 21, true);

-- ----------------------------
-- Sequence structure for ps_id_seq
-- ----------------------------
DROP SEQUENCE "ps_id_seq";
CREATE SEQUENCE "ps_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"public"."ps_id_seq"', 25, true);

-- ----------------------------
-- Sequence structure for rain_id_seq
-- ----------------------------
DROP SEQUENCE "rain_id_seq";
CREATE SEQUENCE "rain_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 11
 CACHE 1;
SELECT setval('"public"."rain_id_seq"', 11, true);

-- ----------------------------
-- Sequence structure for sci_obj_id_seq
-- ----------------------------
DROP SEQUENCE "sci_obj_id_seq";
CREATE SEQUENCE "sci_obj_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 842
 CACHE 1;
SELECT setval('"public"."sci_obj_id_seq"', 842, true);

-- ----------------------------
-- Sequence structure for sf_id_seq
-- ----------------------------
DROP SEQUENCE "sf_id_seq";
CREATE SEQUENCE "sf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 50938
 CACHE 1;
SELECT setval('"public"."sf_id_seq"', 50938, true);

-- ----------------------------
-- Sequence structure for skor_id_seq
-- ----------------------------
DROP SEQUENCE "skor_id_seq";
CREATE SEQUENCE "skor_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for sky_id_seq
-- ----------------------------
DROP SEQUENCE "sky_id_seq";
CREATE SEQUENCE "sky_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 2760
 CACHE 1;
SELECT setval('"public"."sky_id_seq"', 2760, true);

-- ----------------------------
-- Sequence structure for slf_id_seq
-- ----------------------------
DROP SEQUENCE "slf_id_seq";
CREATE SEQUENCE "slf_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for sof_id_seq
-- ----------------------------
DROP SEQUENCE "sof_id_seq";
CREATE SEQUENCE "sof_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;
SELECT setval('"public"."sof_id_seq"', 1, true);

-- ----------------------------
-- Sequence structure for sp_id_seq
-- ----------------------------
DROP SEQUENCE "sp_id_seq";
CREATE SEQUENCE "sp_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ss_id_seq
-- ----------------------------
DROP SEQUENCE "ss_id_seq";
CREATE SEQUENCE "ss_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for star_id_seq
-- ----------------------------
DROP SEQUENCE "star_id_seq";
CREATE SEQUENCE "star_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for tmpt_id_seq
-- ----------------------------
DROP SEQUENCE "tmpt_id_seq";
CREATE SEQUENCE "tmpt_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5032
 CACHE 1;
SELECT setval('"public"."tmpt_id_seq"', 5032, true);

-- ----------------------------
-- Sequence structure for tsp_id_seq
-- ----------------------------
DROP SEQUENCE "tsp_id_seq";
CREATE SEQUENCE "tsp_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for tt_id_seq
-- ----------------------------
DROP SEQUENCE "tt_id_seq";
CREATE SEQUENCE "tt_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 5
 CACHE 1;
SELECT setval('"public"."tt_id_seq"', 5, true);

-- ----------------------------
-- Sequence structure for ttl_id_seq
-- ----------------------------
DROP SEQUENCE "ttl_id_seq";
CREATE SEQUENCE "ttl_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ua_id_seq
-- ----------------------------
DROP SEQUENCE "ua_id_seq";
CREATE SEQUENCE "ua_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ual_id_seq
-- ----------------------------
DROP SEQUENCE "ual_id_seq";
CREATE SEQUENCE "ual_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for ufr_id_seq
-- ----------------------------
DROP SEQUENCE "ufr_id_seq";
CREATE SEQUENCE "ufr_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 23987563
 CACHE 1;
SELECT setval('"public"."ufr_id_seq"', 23987563, true);

-- ----------------------------
-- Sequence structure for ufu_id_seq
-- ----------------------------
DROP SEQUENCE "ufu_id_seq";
CREATE SEQUENCE "ufu_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 37253854
 CACHE 1;
SELECT setval('"public"."ufu_id_seq"', 37253854, true);

-- ----------------------------
-- Sequence structure for ui_id_seq
-- ----------------------------
DROP SEQUENCE "ui_id_seq";
CREATE SEQUENCE "ui_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 31
 CACHE 1;
SELECT setval('"public"."ui_id_seq"', 31, true);

-- ----------------------------
-- Sequence structure for vsr_id_seq
-- ----------------------------
DROP SEQUENCE "vsr_id_seq";
CREATE SEQUENCE "vsr_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Sequence structure for vt_id_seq
-- ----------------------------
DROP SEQUENCE "vt_id_seq";
CREATE SEQUENCE "vt_id_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

-- ----------------------------
-- Table structure for camera
-- ----------------------------
DROP TABLE IF EXISTS "camera";
CREATE TABLE "camera" (
"camera_id" int4 DEFAULT nextval('camera_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"mount_id" int4,
"cur_process_number" int4 DEFAULT 0,
"monitor_image_time" timestamp(6),
"last_active_time" timestamp(6),
"cur_sky_id" int4,
"first_record_number" int4 DEFAULT 0,
"status" int4,
"comment" varchar(1024) COLLATE "default",
"camera_type" char(4) COLLATE "default",
"cover_status" int4,
"focus" int4,
"coolget" float4,
"filter" varchar COLLATE "default",
"errcode" int4,
"img_type" varchar(32) COLLATE "default",
"obj_name" varchar(255) COLLATE "default",
"frm_no" int4,
"file_name" varchar(255) COLLATE "default",
"linked" int4,
"cover_linked" int4,
"camera_utc" timestamp(6),
"camera_cover_utc" timestamp(6),
"camera_cover_errcode" int4,
"gid" varchar(16) COLLATE "default",
"uid" varchar(16) COLLATE "default",
"cid" varchar(16) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of camera
-- ----------------------------
BEGIN;
INSERT INTO "camera" VALUES ('1', null, null, '0', '2019-09-25 17:04:26', null, null, '0', '1', null, null, '1', null, '-51.5', null, '12', null, null, null, null, '0', '0', '2019-09-22 18:12:34', '2019-09-23 18:12:34', '13', '002', '001', '011');
INSERT INTO "camera" VALUES ('2', null, null, '0', '2019-09-25 17:04:25', null, null, '0', '3', null, null, '3', null, '13.4', null, '11', null, null, null, null, '0', '1', '2019-09-25 17:04:25', '2019-09-25 17:04:25', '11', '002', '002', '021');
INSERT INTO "camera" VALUES ('3', null, null, '0', '2019-09-25 17:04:27', null, null, '0', '1', null, null, '1', null, null, null, null, null, null, null, null, '0', '0', '2019-09-25 17:04:25', '2019-09-25 17:04:25', '11', '002', '003', '031');
INSERT INTO "camera" VALUES ('4', null, null, '0', '2019-09-25 17:04:28', null, null, '0', '1', null, null, '1', null, null, null, null, null, null, null, null, '0', '0', '2019-09-25 17:04:25', '2019-09-25 17:04:25', '11', '002', '004', '041');
COMMIT;

-- ----------------------------
-- Table structure for camera_cover_status
-- ----------------------------
DROP TABLE IF EXISTS "camera_cover_status";
CREATE TABLE "camera_cover_status" (
"camera_cover_status_id" int8 DEFAULT nextval('camera_cover_status_id_seq'::regclass) NOT NULL,
"camera_id" int4,
"ctime" timestamp(6),
"state" int4,
"errcode" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of camera_cover_status
-- ----------------------------
BEGIN;
INSERT INTO "camera_cover_status" VALUES ('1', '52', '2019-09-20 18:12:34', '2', '10');
INSERT INTO "camera_cover_status" VALUES ('2', '52', '2019-09-20 18:12:34', '2', '10');
INSERT INTO "camera_cover_status" VALUES ('3', '52', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "camera_cover_status" VALUES ('4', '52', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "camera_cover_status" VALUES ('5', '52', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "camera_cover_status" VALUES ('6', '53', '2019-09-23 18:12:34', '0', '13');
INSERT INTO "camera_cover_status" VALUES ('7', '53', '2019-09-23 18:12:34', '0', '13');
INSERT INTO "camera_cover_status" VALUES ('8', '53', '2019-09-23 18:12:34', '3', '13');
INSERT INTO "camera_cover_status" VALUES ('9', '53', '2019-09-23 18:12:34', '1', '13');
COMMIT;

-- ----------------------------
-- Table structure for camera_monitor
-- ----------------------------
DROP TABLE IF EXISTS "camera_monitor";
CREATE TABLE "camera_monitor" (
"camm_id" int8 DEFAULT nextval('camm_id_seq'::regclass) NOT NULL,
"time_utc" timestamp(6),
"focus" int4,
"coolget" float4,
"filter" varchar COLLATE "default",
"errcode" int4,
"img_type" varchar(32) COLLATE "default",
"obj_name" varchar(255) COLLATE "default",
"frm_no" int4,
"file_name" varchar(255) COLLATE "default",
"camera_id" int4,
"state" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of camera_monitor
-- ----------------------------
BEGIN;
INSERT INTO "camera_monitor" VALUES ('3', null, null, '-51.5', null, '10', null, null, null, null, '52', '2');
INSERT INTO "camera_monitor" VALUES ('4', '2019-09-20 00:00:00', null, '-51.5', null, '10', null, null, null, null, '52', '2');
INSERT INTO "camera_monitor" VALUES ('5', '2019-09-20 00:00:00', null, '-51.5', null, '10', null, null, null, null, '52', '2');
INSERT INTO "camera_monitor" VALUES ('6', '2019-09-20 18:12:34', null, '-51.5', null, '10', null, null, null, null, '52', '2');
INSERT INTO "camera_monitor" VALUES ('7', '2019-09-25 17:04:25', null, '13.4', null, '11', null, null, null, null, '52', '3');
INSERT INTO "camera_monitor" VALUES ('8', '2019-09-25 17:04:25', null, '13.4', null, '11', null, null, null, null, '52', '3');
INSERT INTO "camera_monitor" VALUES ('9', '2019-09-22 18:12:34', null, '-51.5', null, '12', null, null, null, null, '53', '0');
INSERT INTO "camera_monitor" VALUES ('10', '2019-09-22 18:12:34', null, '-51.5', null, '12', null, null, null, null, '53', '2');
INSERT INTO "camera_monitor" VALUES ('11', '2019-09-22 18:12:34', null, '-51.5', null, '12', null, null, null, null, '53', '1');
COMMIT;

-- ----------------------------
-- Table structure for camera_temperature_monitor
-- ----------------------------
DROP TABLE IF EXISTS "camera_temperature_monitor";
CREATE TABLE "camera_temperature_monitor" (
"ctm_id" int8 DEFAULT nextval('ctm_id_seq'::regclass) NOT NULL,
"cam_id" int4,
"voltage" float4,
"current" float4,
"hot_end_temperature" float4,
"cold_end_temperature" float4,
"coolset" float4,
"online" bool,
"time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of camera_temperature_monitor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for camera_vacuum_monitor
-- ----------------------------
DROP TABLE IF EXISTS "camera_vacuum_monitor";
CREATE TABLE "camera_vacuum_monitor" (
"cvm_id" int8 DEFAULT nextval('cvm_id_seq'::regclass) NOT NULL,
"cam_id" int4,
"online" bool,
"voltage" float4,
"current" float4,
"pressure" float4,
"time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of camera_vacuum_monitor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ccd_pix_filter
-- ----------------------------
DROP TABLE IF EXISTS "ccd_pix_filter";
CREATE TABLE "ccd_pix_filter" (
"cpf_id" int8 DEFAULT nextval('cpf_id_seq'::regclass) NOT NULL,
"min_x" float4,
"max_x" float4,
"min_y" float4,
"max_y" float4,
"comment" varchar(255) COLLATE "default",
"dpm_id" int2,
"ot_type_id" int2 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ccd_pix_filter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_file
-- ----------------------------
DROP TABLE IF EXISTS "config_file";
CREATE TABLE "config_file" (
"cf_id" int8 DEFAULT nextval('cf_id_seq'::regclass) NOT NULL,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"is_sync" bool,
"is_store" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of config_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for config_file_his
-- ----------------------------
DROP TABLE IF EXISTS "config_file_his";
CREATE TABLE "config_file_his" (
"cf_id" int8 DEFAULT nextval('cf_id_seq'::regclass) NOT NULL,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"is_sync" bool,
"is_store" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of config_file_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for coordinate_show
-- ----------------------------
DROP TABLE IF EXISTS "coordinate_show";
CREATE TABLE "coordinate_show" (
"id" int8 NOT NULL,
"ra" float4,
"dec" float4,
"mag" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of coordinate_show
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for data_process_machine
-- ----------------------------
DROP TABLE IF EXISTS "data_process_machine";
CREATE TABLE "data_process_machine" (
"dpm_id" int2 DEFAULT nextval('dpm_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"ip" char(15) COLLATE "default",
"total_storage_size" float4 DEFAULT 0,
"used_storage_size" float4 DEFAULT 0,
"last_active_time" timestamp(6),
"total_backup_image" int4 DEFAULT 0,
"last_backup_image_name" varchar(255) COLLATE "default" DEFAULT ''::character varying,
"user_name" varchar(32) COLLATE "default",
"password" varchar(32) COLLATE "default",
"status" int4 DEFAULT 0,
"cur_process_number" int4 DEFAULT 0,
"ssh_port" int4 DEFAULT 22
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of data_process_machine
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for dome
-- ----------------------------
DROP TABLE IF EXISTS "dome";
CREATE TABLE "dome" (
"dome_id" int4 DEFAULT nextval('dome_id_seq'::regclass) NOT NULL,
"name" varchar(16) COLLATE "default",
"linked" int4,
"status" int4,
"ctime" timestamp(6),
"errcode" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of dome
-- ----------------------------
BEGIN;
INSERT INTO "dome" VALUES ('1', '001', '0', '1', '2019-09-24 18:12:34', '14');
INSERT INTO "dome" VALUES ('2', '002', '0', '1', '2019-09-24 18:12:34', '14');
COMMIT;

-- ----------------------------
-- Table structure for dome_status
-- ----------------------------
DROP TABLE IF EXISTS "dome_status";
CREATE TABLE "dome_status" (
"dome_status_id" int8 DEFAULT nextval('dome_status_id_seq'::regclass) NOT NULL,
"dome_id" int4,
"ctime" timestamp(6),
"status" int4,
"errcode" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of dome_status
-- ----------------------------
BEGIN;
INSERT INTO "dome_status" VALUES ('2', '1', null, '2', '10');
INSERT INTO "dome_status" VALUES ('3', '1', null, '2', '10');
INSERT INTO "dome_status" VALUES ('4', '1', null, '2', '10');
INSERT INTO "dome_status" VALUES ('5', '1', '2019-09-20 18:12:34', '2', '10');
INSERT INTO "dome_status" VALUES ('6', '1', '2019-09-20 18:12:34', '2', '10');
INSERT INTO "dome_status" VALUES ('7', '1', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "dome_status" VALUES ('8', '1', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "dome_status" VALUES ('9', '1', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "dome_status" VALUES ('10', '1', '2019-09-25 17:04:25', '3', '11');
INSERT INTO "dome_status" VALUES ('11', '1', '2019-09-24 18:12:34', '0', '14');
INSERT INTO "dome_status" VALUES ('12', '1', '2019-09-24 18:12:34', '0', '14');
INSERT INTO "dome_status" VALUES ('13', '1', '2019-09-24 18:12:34', '0', '14');
INSERT INTO "dome_status" VALUES ('14', '1', '2019-09-24 18:12:34', '4', '14');
INSERT INTO "dome_status" VALUES ('15', '1', '2019-09-24 18:12:34', '1', '14');
COMMIT;

-- ----------------------------
-- Table structure for environment
-- ----------------------------
DROP TABLE IF EXISTS "environment";
CREATE TABLE "environment" (
"env_id" int8 DEFAULT nextval('env_id_seq'::regclass) NOT NULL,
"date" date,
"time" time(6),
"wather" varchar(64) COLLATE "default",
"wind_speed" float4,
"temperature" float4,
"humidity" float4,
"seeing" float4,
"cloud_percent" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of environment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for feedback_focus
-- ----------------------------
DROP TABLE IF EXISTS "feedback_focus";
CREATE TABLE "feedback_focus" (
"fbf_id" int8 DEFAULT nextval('fbf_id_seq'::regclass) NOT NULL,
"focus" int4,
"recv_time_utc" timestamp(6),
"camera_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of feedback_focus
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for file_number
-- ----------------------------
DROP TABLE IF EXISTS "file_number";
CREATE TABLE "file_number" (
"fn_id" int8 DEFAULT nextval('fn_id_seq'::regclass) NOT NULL,
"sky_id" int4,
"cam_id" int4,
"date_str" char(10) COLLATE "default",
"ff_number" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of file_number
-- ----------------------------
BEGIN;
INSERT INTO "file_number" VALUES ('20413', null, '7', '20190918  ', '146');
INSERT INTO "file_number" VALUES ('20414', null, '7', '20190926  ', '2');
COMMIT;

-- ----------------------------
-- Table structure for fits_file
-- ----------------------------
DROP TABLE IF EXISTS "fits_file";
CREATE TABLE "fits_file" (
"ff_id" int8 DEFAULT nextval('ff_id_seq'::regclass) NOT NULL,
"dpm_id" int2,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"gmb_id" int2,
"gmb_ra" float4,
"gmb_dec" float4,
"tsp_id" int2,
"tsp_ra" float4,
"tsp_dec" float4,
"field_width" float4,
"field_height" float4,
"pixel_resolution" float4,
"template_ff_id" int8,
"slf_id" int8,
"is_template" bool
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fits_file_combine
-- ----------------------------
DROP TABLE IF EXISTS "fits_file_combine";
CREATE TABLE "fits_file_combine" (
"ffcmb_id" int8 DEFAULT nextval('ffcmb_id_seq'::regclass) NOT NULL,
"file_name" varchar(255) COLLATE "default",
"store_path" varchar(255) COLLATE "default",
"date_generated" timestamp(6),
"group_id" varchar(16) COLLATE "default",
"unit_id" varchar(16) COLLATE "default",
"cam_id" varchar(16) COLLATE "default",
"ccd_type" varchar(16) COLLATE "default",
"term_type" varchar(16) COLLATE "default",
"op_sn" int8,
"op_time" timestamp(6),
"op_type" varchar(16) COLLATE "default",
"obs_type" varchar(16) COLLATE "default",
"grid_id" varchar(16) COLLATE "default",
"field_id" varchar(16) COLLATE "default",
"mount_ra" float4,
"mount_dec" float4,
"mount_epoch" int2,
"obj_name" varchar(64) COLLATE "default",
"obj_ra" float4,
"obj_dec" float4,
"obj_epoch" int2,
"obj_err" varchar(128) COLLATE "default",
"priority" int2,
"crval1" float4,
"crval2" float4,
"crpix1" float4,
"crpix2" float4,
"c1_ra" float4,
"c1_dec" float4,
"c2_ra" float4,
"c2_dec" float4,
"c3_ra" float4,
"c3_dec" float4,
"c4_ra" float4,
"c4_dec" float4,
"imcmb_first" varchar(255) COLLATE "default",
"imcmb_last" varchar(255) COLLATE "default",
"ncombine" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file_combine
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fits_file_cut
-- ----------------------------
DROP TABLE IF EXISTS "fits_file_cut";
CREATE TABLE "fits_file_cut" (
"ffc_id" int8 DEFAULT nextval('ffc_id_seq'::regclass) NOT NULL,
"star_id" int8,
"dpm_id" int2,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"ff_id" int8,
"template_ffc_id" int8,
"is_template_cut" bool,
"ot_id" int8 DEFAULT 0,
"number" int4,
"request_cut" bool,
"success_cut" bool,
"img_x" float4,
"img_y" float4,
"is_missed" bool DEFAULT true,
"priority" int2 DEFAULT 32767,
"is_sync" bool DEFAULT false,
"is_recv_ok" bool DEFAULT false,
"insert_time" timestamp(6) DEFAULT now(),
"request_time" timestamp(6),
"upload_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file_cut
-- ----------------------------
BEGIN;
INSERT INTO "fits_file_cut" VALUES ('44435846', null, '7', null, 'G022_mon_objt_190217T10501704_00005', '2', null, null, '5', '2', 'f', 'f', '3217.12', '676.669', 'f', '0', null, null, '2019-09-18 22:38:14.765231', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435847', null, '7', null, 'G022_mon_objt_190217T10503204_00006', '3', null, null, '5', '3', 'f', 'f', '3214.75', '696.551', 'f', '0', null, null, '2019-09-18 22:38:14.791723', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435848', null, '7', null, 'G022_mon_objt_190217T10504704_00007', '4', null, null, '5', '4', 'f', 'f', '3212.5', '716.24', 'f', '0', null, null, '2019-09-18 22:38:14.812366', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435849', null, '7', null, 'G022_mon_objt_190217T10510204_00008', '5', null, null, '5', '5', 'f', 'f', '3210.2', '736.32', 'f', '0', null, null, '2019-09-18 22:38:14.834778', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435850', null, '7', null, 'G022_mon_objt_190217T10511704_00009', '6', null, null, '5', '6', 'f', 'f', '3207.98', '755.903', 'f', '0', null, null, '2019-09-18 22:38:14.860865', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435851', null, '7', null, 'G022_mon_objt_190217T10513204_00010', '7', null, null, '5', '7', 'f', 'f', '3205.67', '775.471', 'f', '0', null, null, '2019-09-18 22:38:14.887015', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435852', null, '7', null, 'G022_mon_objt_190217T10514704_00011', '8', null, null, '5', '8', 'f', 'f', '3203.45', '794.972', 'f', '0', null, null, '2019-09-18 22:38:14.906697', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435853', null, '7', null, 'G022_mon_objt_190217T10520204_00012', '9', null, null, '5', '9', 'f', 'f', '3201.31', '814.763', 'f', '0', null, null, '2019-09-18 22:38:14.934743', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435854', null, '7', null, 'G022_mon_objt_190217T10521704_00013', '10', null, null, '5', '10', 'f', 'f', '3198.88', '834.193', 'f', '0', null, null, '2019-09-18 22:38:14.957203', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435855', null, '7', null, 'G022_mon_objt_190217T10523204_00014', '11', null, null, '5', '11', 'f', 'f', '3196.67', '853.827', 'f', '0', null, null, '2019-09-18 22:38:14.977892', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435856', null, '7', null, 'G022_mon_objt_190217T10524704_00015', '12', null, null, '5', '12', 'f', 'f', '3194.44', '873.808', 'f', '0', null, null, '2019-09-18 22:38:14.996044', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435857', null, '7', null, 'G022_mon_objt_190217T10530204_00016', '13', null, null, '5', '13', 'f', 'f', '3192.24', '893.147', 'f', '0', null, null, '2019-09-18 22:38:15.015721', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435858', null, '7', null, 'G022_mon_objt_190217T10531704_00017', '14', null, null, '5', '14', 'f', 'f', '3189.81', '913.1', 'f', '0', null, null, '2019-09-18 22:38:15.033815', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435859', null, '7', null, 'G022_mon_objt_190217T10533204_00018', '15', null, null, '5', '15', 'f', 'f', '3187.92', '932.774', 'f', '0', null, null, '2019-09-18 22:38:15.052265', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435860', null, '7', null, 'G022_mon_objt_190217T10550204_00024', '16', null, null, '5', '16', 'f', 'f', '3174.29', '1051.65', 'f', '0', null, null, '2019-09-18 22:38:15.070414', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435861', null, '7', null, 'G022_mon_objt_190217T10551704_00025', '17', null, null, '5', '17', 'f', 'f', '3172.05', '1071.67', 'f', '0', null, null, '2019-09-18 22:38:15.091971', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435862', null, '7', null, 'G022_mon_objt_190217T10553204_00026', '18', null, null, '5', '18', 'f', 'f', '3169.85', '1091.38', 'f', '0', null, null, '2019-09-18 22:38:15.114507', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435863', null, '7', null, 'G022_mon_objt_190217T10554704_00027', '19', null, null, '5', '19', 'f', 'f', '3167.6', '1111.24', 'f', '0', null, null, '2019-09-18 22:38:15.132043', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435864', null, '7', null, 'G022_mon_objt_190217T10560204_00028', '20', null, null, '5', '20', 'f', 'f', '3165.35', '1130.99', 'f', '0', null, null, '2019-09-18 22:38:15.151467', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435865', null, '7', null, 'G022_mon_objt_190217T10561704_00029', '21', null, null, '5', '21', 'f', 'f', '3163.11', '1150.64', 'f', '0', null, null, '2019-09-18 22:38:15.168006', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435866', null, '7', null, 'G022_mon_objt_190217T10563204_00030', '22', null, null, '5', '22', 'f', 'f', '3160.9', '1170.52', 'f', '0', null, null, '2019-09-18 22:38:15.189249', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435867', null, '7', null, 'G022_mon_objt_190217T10564704_00031', '23', null, null, '5', '23', 'f', 'f', '3158.74', '1190.32', 'f', '0', null, null, '2019-09-18 22:38:15.211624', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435868', null, '7', null, 'G022_mon_objt_190217T10570204_00032', '24', null, null, '5', '24', 'f', 'f', '3156.41', '1210.18', 'f', '0', null, null, '2019-09-18 22:38:15.230855', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435869', null, '7', null, 'G022_mon_objt_190217T10571704_00033', '25', null, null, '5', '25', 'f', 'f', '3154.25', '1230.2', 'f', '0', null, null, '2019-09-18 22:38:15.248483', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435870', null, '7', null, 'G022_mon_objt_190217T10573204_00034', '26', null, null, '5', '26', 'f', 'f', '3152.01', '1250.17', 'f', '0', null, null, '2019-09-18 22:38:15.268839', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435871', null, '7', null, 'G022_mon_objt_190217T10574704_00035', '27', null, null, '5', '27', 'f', 'f', '3149.75', '1269.77', 'f', '0', null, null, '2019-09-18 22:38:15.29168', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435872', null, '7', null, 'G022_mon_objt_190217T10580204_00036', '28', null, null, '5', '28', 'f', 'f', '3147.56', '1289.83', 'f', '0', null, null, '2019-09-18 22:38:15.313705', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435873', null, '7', null, 'G022_mon_objt_190217T10581704_00037', '29', null, null, '5', '29', 'f', 'f', '3145.3', '1309.65', 'f', '0', null, null, '2019-09-18 22:38:15.339939', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435874', null, '7', null, 'G022_mon_objt_190217T10583204_00038', '30', null, null, '5', '30', 'f', 'f', '3143.14', '1329.49', 'f', '0', null, null, '2019-09-18 22:38:15.360593', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435875', null, '7', null, 'G022_mon_objt_190217T10584704_00039', '31', null, null, '5', '31', 'f', 'f', '3140.92', '1349.47', 'f', '0', null, null, '2019-09-18 22:38:15.384955', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435876', null, '7', null, 'G022_mon_objt_190217T10590204_00040', '32', null, null, '5', '32', 'f', 'f', '3138.73', '1369.2', 'f', '0', null, null, '2019-09-18 22:38:15.407615', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435877', null, '7', null, 'G022_mon_objt_190217T10591704_00041', '33', null, null, '5', '33', 'f', 'f', '3136.41', '1389.2', 'f', '0', null, null, '2019-09-18 22:38:15.426412', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435878', null, '7', null, 'G022_mon_objt_190217T10593204_00042', '34', null, null, '5', '34', 'f', 'f', '3134.23', '1409.18', 'f', '0', null, null, '2019-09-18 22:38:15.44458', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435879', null, '7', null, 'G022_mon_objt_190217T10594704_00043', '35', null, null, '5', '35', 'f', 'f', '3131.99', '1429', 'f', '0', null, null, '2019-09-18 22:38:15.461474', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435880', null, '7', null, 'G022_mon_objt_190217T11000204_00044', '36', null, null, '5', '36', 'f', 'f', '3129.73', '1449.69', 'f', '0', null, null, '2019-09-18 22:38:15.481271', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435881', null, '7', null, 'G022_mon_objt_190217T11001704_00045', '37', null, null, '5', '37', 'f', 'f', '3127.71', '1468.34', 'f', '0', null, null, '2019-09-18 22:38:15.500021', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435882', null, '7', null, 'G022_mon_objt_190217T11003204_00046', '38', null, null, '5', '38', 'f', 'f', '3125.45', '1488.12', 'f', '0', null, null, '2019-09-18 22:38:15.516276', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435883', null, '7', null, 'G022_mon_objt_190217T11004704_00047', '39', null, null, '5', '39', 'f', 'f', '3123.21', '1508.29', 'f', '0', null, null, '2019-09-18 22:38:15.533827', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435884', null, '7', null, 'G022_mon_objt_190217T11010204_00048', '40', null, null, '5', '40', 'f', 'f', '3121.09', '1527.92', 'f', '0', null, null, '2019-09-18 22:38:15.552805', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435885', null, '7', null, 'G022_mon_objt_190217T11011704_00049', '41', null, null, '5', '41', 'f', 'f', '3118.8', '1547.27', 'f', '0', null, null, '2019-09-18 22:38:15.57065', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435886', null, '7', null, 'G022_mon_objt_190217T11013204_00050', '42', null, null, '5', '42', 'f', 'f', '3116.64', '1567.15', 'f', '0', null, null, '2019-09-18 22:38:15.590278', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435887', null, '7', null, 'G022_mon_objt_190217T11014704_00051', '43', null, null, '5', '43', 'f', 'f', '3114.5', '1586.73', 'f', '0', null, null, '2019-09-18 22:38:15.607414', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435888', null, '7', null, 'G022_mon_objt_190217T11020204_00052', '44', null, null, '5', '44', 'f', 'f', '3112.32', '1606.33', 'f', '0', null, null, '2019-09-18 22:38:15.624469', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435889', null, '7', null, 'G022_mon_objt_190217T11021704_00053', '45', null, null, '5', '45', 'f', 'f', '3110.08', '1626.16', 'f', '0', null, null, '2019-09-18 22:38:15.641523', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435890', null, '7', null, 'G022_mon_objt_190217T11023204_00054', '46', null, null, '5', '46', 'f', 'f', '3107.9', '1645.87', 'f', '0', null, null, '2019-09-18 22:38:15.654853', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435891', null, '7', null, 'G022_mon_objt_190217T11024704_00055', '47', null, null, '5', '47', 'f', 'f', '3105.73', '1665.5', 'f', '0', null, null, '2019-09-18 22:38:15.673175', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435892', null, '7', null, 'G022_mon_objt_190217T11030204_00056', '48', null, null, '5', '48', 'f', 'f', '3103.55', '1685.5', 'f', '0', null, null, '2019-09-18 22:38:15.692587', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435893', null, '7', null, 'G022_mon_objt_190217T11031704_00057', '49', null, null, '5', '49', 'f', 'f', '3101.39', '1705.11', 'f', '0', null, null, '2019-09-18 22:38:15.710988', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435894', null, '7', null, 'G022_mon_objt_190217T11033204_00058', '50', null, null, '5', '50', 'f', 'f', '3099.22', '1725.06', 'f', '0', null, null, '2019-09-18 22:38:15.727776', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435895', null, '7', null, 'G022_mon_objt_190217T11034704_00059', '51', null, null, '5', '51', 'f', 'f', '3096.98', '1745.02', 'f', '0', null, null, '2019-09-18 22:38:15.750602', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435896', null, '7', null, 'G022_mon_objt_190217T11040204_00060', '52', null, null, '5', '52', 'f', 'f', '3094.82', '1764.66', 'f', '0', null, null, '2019-09-18 22:38:15.772589', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435897', null, '7', null, 'G022_mon_objt_190217T11041704_00061', '53', null, null, '5', '53', 'f', 'f', '3092.68', '1784.31', 'f', '0', null, null, '2019-09-18 22:38:15.796414', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435898', null, '7', null, 'G022_mon_objt_190217T11043215_00062', '54', null, null, '5', '54', 'f', 'f', '3090.48', '1804.23', 'f', '0', null, null, '2019-09-18 22:38:15.82303', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435899', null, '7', null, 'G022_mon_objt_190217T11044713_00063', '55', null, null, '5', '55', 'f', 'f', '3088.32', '1824.18', 'f', '0', null, null, '2019-09-18 22:38:15.847577', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435900', null, '7', null, 'G022_mon_objt_190217T11050212_00064', '56', null, null, '5', '56', 'f', 'f', '3086.49', '1843.98', 'f', '0', null, null, '2019-09-18 22:38:15.86607', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435901', null, '7', null, 'G022_mon_objt_190217T11051710_00065', '57', null, null, '5', '57', 'f', 'f', '3083.99', '1863.62', 'f', '0', null, null, '2019-09-18 22:38:15.8828', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435902', null, '7', null, 'G022_mon_objt_190217T11053209_00066', '58', null, null, '5', '58', 'f', 'f', '3081.82', '1883.37', 'f', '0', null, null, '2019-09-18 22:38:15.901022', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435903', null, '7', null, 'G022_mon_objt_190217T11054707_00067', '59', null, null, '5', '59', 'f', 'f', '3079.65', '1902.94', 'f', '0', null, null, '2019-09-18 22:38:15.919586', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435904', null, '7', null, 'G022_mon_objt_190217T11060206_00068', '60', null, null, '5', '60', 'f', 'f', '3077.22', '1923.44', 'f', '0', null, null, '2019-09-18 22:38:15.935828', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435905', null, '7', null, 'G022_mon_objt_190217T11061704_00069', '61', null, null, '5', '61', 'f', 'f', '3075.36', '1942.62', 'f', '0', null, null, '2019-09-18 22:38:15.951545', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435906', null, '7', null, 'G022_mon_objt_190217T11063204_00070', '62', null, null, '5', '62', 'f', 'f', '3073.11', '1962.47', 'f', '0', null, null, '2019-09-18 22:38:15.966635', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435907', null, '7', null, 'G022_mon_objt_190217T11064704_00071', '63', null, null, '5', '63', 'f', 'f', '3070.99', '1982.34', 'f', '0', null, null, '2019-09-18 22:38:15.983831', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435908', null, '7', null, 'G022_mon_objt_190217T11071704_00073', '64', null, null, '5', '64', 'f', 'f', '3066.69', '2022.18', 'f', '0', null, null, '2019-09-18 22:38:16.002978', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435909', null, '7', null, 'G022_mon_objt_190217T11080204_00076', '65', null, null, '5', '65', 'f', 'f', '3060.22', '2081.88', 'f', '0', null, null, '2019-09-18 22:38:16.022998', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435910', null, '7', null, 'G022_mon_objt_190217T11081704_00077', '66', null, null, '5', '66', 'f', 'f', '3057.83', '2102.03', 'f', '0', null, null, '2019-09-18 22:38:16.043912', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435911', null, '7', null, 'G022_mon_objt_190217T11083204_00078', '67', null, null, '5', '67', 'f', 'f', '3055.92', '2121.43', 'f', '0', null, null, '2019-09-18 22:38:16.061758', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435912', null, '7', null, 'G022_mon_objt_190217T11084704_00079', '68', null, null, '5', '68', 'f', 'f', '3053.72', '2141.36', 'f', '0', null, null, '2019-09-18 22:38:16.081948', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435913', null, '7', null, 'G022_mon_objt_190217T11090204_00080', '69', null, null, '5', '69', 'f', 'f', '3051.55', '2161.58', 'f', '0', null, null, '2019-09-18 22:38:16.107348', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435914', null, '7', null, 'G022_mon_objt_190217T11091704_00081', '70', null, null, '5', '70', 'f', 'f', '3049.5', '2181.04', 'f', '0', null, null, '2019-09-18 22:38:16.125953', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435915', null, '7', null, 'G022_mon_objt_190217T11093204_00082', '71', null, null, '5', '71', 'f', 'f', '3047.35', '2201.15', 'f', '0', null, null, '2019-09-18 22:38:16.148073', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435916', null, '7', null, 'G022_mon_objt_190217T11094704_00083', '72', null, null, '5', '72', 'f', 'f', '3045.13', '2221.11', 'f', '0', null, null, '2019-09-18 22:38:16.165392', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435917', null, '7', null, 'G022_mon_objt_190217T11100204_00084', '73', null, null, '5', '73', 'f', 'f', '3043.04', '2240.65', 'f', '0', null, null, '2019-09-18 22:38:16.179953', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435918', null, '7', null, 'G022_mon_objt_190217T11101704_00085', '74', null, null, '5', '74', 'f', 'f', '3040.86', '2260.6', 'f', '0', null, null, '2019-09-18 22:38:16.196076', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435919', null, '7', null, 'G022_mon_objt_190217T11103204_00086', '75', null, null, '5', '75', 'f', 'f', '3038.69', '2280.52', 'f', '0', null, null, '2019-09-18 22:38:16.213966', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435920', null, '7', null, 'G022_mon_objt_190217T11104704_00087', '76', null, null, '5', '76', 'f', 'f', '3036.62', '2299.67', 'f', '0', null, null, '2019-09-18 22:38:16.233512', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435921', null, '7', null, 'G022_mon_objt_190217T11110204_00088', '77', null, null, '5', '77', 'f', 'f', '3034.52', '2319.46', 'f', '0', null, null, '2019-09-18 22:38:16.252113', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435922', null, '7', null, 'G022_mon_objt_190217T11111704_00089', '78', null, null, '5', '78', 'f', 'f', '3032.4', '2339.52', 'f', '0', null, null, '2019-09-18 22:38:16.270677', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435923', null, '7', null, 'G022_mon_objt_190217T11113204_00090', '79', null, null, '5', '79', 'f', 'f', '3030.32', '2358.63', 'f', '0', null, null, '2019-09-18 22:38:16.286672', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435924', null, '7', null, 'G022_mon_objt_190217T11114704_00091', '80', null, null, '5', '80', 'f', 'f', '3028.16', '2378.51', 'f', '0', null, null, '2019-09-18 22:38:16.302007', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435925', null, '7', null, 'G022_mon_objt_190217T11120204_00092', '81', null, null, '5', '81', 'f', 'f', '3025.96', '2398.46', 'f', '0', null, null, '2019-09-18 22:38:16.317051', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435926', null, '7', null, 'G022_mon_objt_190217T11121704_00093', '82', null, null, '5', '82', 'f', 'f', '3023.93', '2417.72', 'f', '0', null, null, '2019-09-18 22:38:16.333965', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435927', null, '7', null, 'G022_mon_objt_190217T11123204_00094', '83', null, null, '5', '83', 'f', 'f', '3021.74', '2437.7', 'f', '0', null, null, '2019-09-18 22:38:16.354555', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435928', null, '7', null, 'G022_mon_objt_190217T11124704_00095', '84', null, null, '5', '84', 'f', 'f', '3019.75', '2457.38', 'f', '0', null, null, '2019-09-18 22:38:16.379606', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435929', null, '7', null, 'G022_mon_objt_190217T11130204_00096', '85', null, null, '5', '85', 'f', 'f', '3017.59', '2477.27', 'f', '0', null, null, '2019-09-18 22:38:16.402968', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435930', null, '7', null, 'G022_mon_objt_190217T11131704_00097', '86', null, null, '5', '86', 'f', 'f', '3015.84', '2494.16', 'f', '0', null, null, '2019-09-18 22:38:16.421805', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435931', null, '7', null, 'G022_mon_objt_190217T11133204_00098', '87', null, null, '5', '87', 'f', 'f', '3013.34', '2517.16', 'f', '0', null, null, '2019-09-18 22:38:16.510597', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435932', null, '7', null, 'G022_mon_objt_190217T11134704_00099', '88', null, null, '5', '88', 'f', 'f', '3011.23', '2536.65', 'f', '0', null, null, '2019-09-18 22:38:16.537854', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435933', null, '7', null, 'G022_mon_objt_190217T11140204_00100', '89', null, null, '5', '89', 'f', 'f', '3009.19', '2555.88', 'f', '0', null, null, '2019-09-18 22:38:16.553908', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435934', null, '7', null, 'G022_mon_objt_190217T11141704_00101', '90', null, null, '5', '90', 'f', 'f', '3006.95', '2576.91', 'f', '0', null, null, '2019-09-18 22:38:16.570184', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435935', null, '7', null, 'G022_mon_objt_190217T11144704_00103', '91', null, null, '5', '91', 'f', 'f', '3002.78', '2616.28', 'f', '0', null, null, '2019-09-18 22:38:16.586476', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435936', null, '7', null, 'G022_mon_objt_190217T11150204_00104', '92', null, null, '5', '92', 'f', 'f', '3000.46', '2635.86', 'f', '0', null, null, '2019-09-18 22:38:16.606412', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435937', null, '7', null, 'G022_mon_objt_190217T11151704_00105', '93', null, null, '5', '93', 'f', 'f', '2998.1', '2656.73', 'f', '0', null, null, '2019-09-18 22:38:16.623555', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435938', null, '7', null, 'G022_mon_objt_190217T11154704_00107', '94', null, null, '5', '94', 'f', 'f', '2994.4', '2695.14', 'f', '0', null, null, '2019-09-18 22:38:16.638835', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435939', null, '7', null, 'G022_mon_objt_190217T11160204_00108', '95', null, null, '5', '95', 'f', 'f', '2992.81', '2711.58', 'f', '0', null, null, '2019-09-18 22:38:16.659908', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435940', null, '7', null, 'G022_mon_objt_190217T11161704_00109', '96', null, null, '5', '96', 'f', 'f', '2990.13', '2735.47', 'f', '0', null, null, '2019-09-18 22:38:16.749459', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435941', null, '7', null, 'G022_mon_objt_190217T11163204_00110', '97', null, null, '5', '97', 'f', 'f', '2988.12', '2754.64', 'f', '0', null, null, '2019-09-18 22:38:16.768629', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435942', null, '7', null, 'G022_mon_objt_190217T11164704_00111', '98', null, null, '5', '98', 'f', 'f', '2986.12', '2772.74', 'f', '0', null, null, '2019-09-18 22:38:16.785561', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435943', null, '7', null, 'G022_mon_objt_190217T11170204_00112', '99', null, null, '5', '99', 'f', 'f', '2983.89', '2794.9', 'f', '0', null, null, '2019-09-18 22:38:16.79994', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435944', null, '7', null, 'G022_mon_objt_190217T11171704_00113', '100', null, null, '5', '100', 'f', 'f', '2981.87', '2814.73', 'f', '0', null, null, '2019-09-18 22:38:16.815331', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435945', null, '7', null, 'G022_mon_objt_190217T11173204_00114', '101', null, null, '5', '101', 'f', 'f', '2979.68', '2834.44', 'f', '0', null, null, '2019-09-18 22:38:16.830966', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435946', null, '7', null, 'G022_mon_objt_190217T11174704_00115', '102', null, null, '5', '102', 'f', 'f', '2977', '2858.02', 'f', '0', null, null, '2019-09-18 22:38:16.849031', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435947', null, '7', null, 'G022_mon_objt_190217T11180204_00116', '103', null, null, '5', '103', 'f', 'f', '2975.55', '2873.94', 'f', '0', null, null, '2019-09-18 22:38:16.868946', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435948', null, '7', null, 'G022_mon_objt_190217T11181704_00117', '104', null, null, '5', '104', 'f', 'f', '2973.37', '2893.75', 'f', '0', null, null, '2019-09-18 22:38:16.890384', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435949', null, '7', null, 'G022_mon_objt_190217T11183204_00118', '105', null, null, '5', '105', 'f', 'f', '2972.99', '2914.25', 'f', '0', null, null, '2019-09-18 22:38:16.911516', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435950', null, '7', null, 'G022_mon_objt_190217T11184704_00119', '106', null, null, '5', '106', 'f', 'f', '2969.25', '2933.7', 'f', '0', null, null, '2019-09-18 22:38:16.930039', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435951', null, '7', null, 'G022_mon_objt_190217T11190204_00120', '107', null, null, '5', '107', 'f', 'f', '2967.09', '2954.08', 'f', '0', null, null, '2019-09-18 22:38:16.944612', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435952', null, '7', null, 'G022_mon_objt_190217T11191704_00121', '108', null, null, '5', '108', 'f', 'f', '2965.05', '2974.29', 'f', '0', null, null, '2019-09-18 22:38:16.959696', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435953', null, '7', null, 'G022_mon_objt_190217T11193204_00122', '109', null, null, '5', '109', 'f', 'f', '2962.96', '2993.54', 'f', '0', null, null, '2019-09-18 22:38:16.976141', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435954', null, '7', null, 'G022_mon_objt_190217T11194704_00123', '110', null, null, '5', '110', 'f', 'f', '2960.9', '3013.58', 'f', '0', null, null, '2019-09-18 22:38:16.990431', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435955', null, '7', null, 'G022_mon_objt_190217T11200204_00124', '111', null, null, '5', '111', 'f', 'f', '2958.84', '3032.7', 'f', '0', null, null, '2019-09-18 22:38:17.005644', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435956', null, '7', null, 'G022_mon_objt_190217T11201704_00125', '112', null, null, '5', '112', 'f', 'f', '2956.77', '3052.46', 'f', '0', null, null, '2019-09-18 22:38:17.026106', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435957', null, '7', null, 'G022_mon_objt_190217T11203204_00126', '113', null, null, '5', '113', 'f', 'f', '2954.63', '3072.4', 'f', '0', null, null, '2019-09-18 22:38:17.042348', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435958', null, '7', null, 'G022_mon_objt_190217T11204704_00127', '114', null, null, '5', '114', 'f', 'f', '2952.66', '3092.23', 'f', '0', null, null, '2019-09-18 22:38:17.057162', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435959', null, '7', null, 'G022_mon_objt_190217T11210204_00128', '115', null, null, '5', '115', 'f', 'f', '2950.5', '3111.64', 'f', '0', null, null, '2019-09-18 22:38:17.072128', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435960', null, '7', null, 'G022_mon_objt_190217T11211704_00129', '116', null, null, '5', '116', 'f', 'f', '2948.45', '3131.61', 'f', '0', null, null, '2019-09-18 22:38:17.086476', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435961', null, '7', null, 'G022_mon_objt_190217T11214714_00131', '117', null, null, '5', '117', 'f', 'f', '2944.43', '3170.48', 'f', '0', null, null, '2019-09-18 22:38:17.104005', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435962', null, '7', null, 'G022_mon_objt_190217T11220212_00132', '118', null, null, '5', '118', 'f', 'f', '2942.22', '3190.66', 'f', '0', null, null, '2019-09-18 22:38:17.120204', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435963', null, '7', null, 'G022_mon_objt_190217T11221711_00133', '119', null, null, '5', '119', 'f', 'f', '2940.95', '3211.97', 'f', '0', null, null, '2019-09-18 22:38:17.138879', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435964', null, '7', null, 'G022_mon_objt_190217T11223209_00134', '120', null, null, '5', '120', 'f', 'f', '2938.19', '3230.66', 'f', '0', null, null, '2019-09-18 22:38:17.152999', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435965', null, '7', null, 'G022_mon_objt_190217T11230207_00136', '121', null, null, '5', '121', 'f', 'f', '2934', '3270.65', 'f', '0', null, null, '2019-09-18 22:38:17.172982', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435966', null, '7', null, 'G022_mon_objt_190217T11231705_00137', '122', null, null, '5', '122', 'f', 'f', '2932.59', '3286.18', 'f', '0', null, null, '2019-09-18 22:38:17.191332', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435967', null, '7', null, 'G022_mon_objt_190217T11233204_00138', '123', null, null, '5', '123', 'f', 'f', '2929.97', '3309.73', 'f', '0', null, null, '2019-09-18 22:38:17.263236', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435968', null, '7', null, 'G022_mon_objt_190217T11240204_00140', '124', null, null, '5', '124', 'f', 'f', '2925.9', '3349.23', 'f', '0', null, null, '2019-09-18 22:38:17.279118', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435969', null, '7', null, 'G022_mon_objt_190217T11241704_00141', '125', null, null, '5', '125', 'f', 'f', '2923.95', '3369.65', 'f', '0', null, null, '2019-09-18 22:38:17.297666', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435970', null, '7', null, 'G022_mon_objt_190217T11243204_00142', '126', null, null, '5', '126', 'f', 'f', '2922.26', '3385.89', 'f', '0', null, null, '2019-09-18 22:38:17.318805', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435971', null, '7', null, 'G022_mon_objt_190217T11244704_00143', '127', null, null, '5', '127', 'f', 'f', '2919.84', '3408.44', 'f', '0', null, null, '2019-09-18 22:38:17.384745', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435972', null, '7', null, 'G022_mon_objt_190217T11250204_00144', '128', null, null, '5', '128', 'f', 'f', '2917.65', '3428.89', 'f', '0', null, null, '2019-09-18 22:38:17.401787', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435973', null, '7', null, 'G022_mon_objt_190217T11251704_00145', '129', null, null, '5', '129', 'f', 'f', '2915.61', '3448.37', 'f', '0', null, null, '2019-09-18 22:38:17.4198', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435974', null, '7', null, 'G022_mon_objt_190217T11253204_00146', '130', null, null, '5', '130', 'f', 'f', '2913.63', '3467.81', 'f', '0', null, null, '2019-09-18 22:38:17.437646', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435975', null, '7', null, 'G022_mon_objt_190217T11254704_00147', '131', null, null, '5', '131', 'f', 'f', '2911', '3492.48', 'f', '0', null, null, '2019-09-18 22:38:17.459289', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435976', null, '7', null, 'G022_mon_objt_190217T11261704_00149', '132', null, null, '5', '132', 'f', 'f', '2907.56', '3528.11', 'f', '0', null, null, '2019-09-18 22:38:17.52', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435977', null, '7', null, 'G022_mon_objt_190217T11263204_00150', '133', null, null, '5', '133', 'f', 'f', '2905.94', '3547.59', 'f', '0', null, null, '2019-09-18 22:38:17.538311', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435978', null, '7', null, 'G022_mon_objt_190217T11264704_00151', '134', null, null, '5', '134', 'f', 'f', '2903.56', '3567.54', 'f', '0', null, null, '2019-09-18 22:38:17.558374', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435979', null, '7', null, 'G022_mon_objt_190217T11270204_00152', '135', null, null, '5', '135', 'f', 'f', '2901.31', '3589.03', 'f', '0', null, null, '2019-09-18 22:38:17.576722', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435980', null, '7', null, 'G022_mon_objt_190217T11271704_00153', '136', null, null, '5', '136', 'f', 'f', '2899', '3609.55', 'f', '0', null, null, '2019-09-18 22:38:17.643859', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435981', null, '7', null, 'G022_mon_objt_190217T11273204_00154', '137', null, null, '5', '137', 'f', 'f', '2898', '3624.51', 'f', '0', null, null, '2019-09-18 22:38:17.724235', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435982', null, '7', null, 'G022_mon_objt_190217T11274704_00155', '138', null, null, '5', '138', 'f', 'f', '2895.35', '3647.29', 'f', '0', null, null, '2019-09-18 22:38:17.808997', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435983', null, '7', null, 'G022_mon_objt_190217T11280204_00156', '139', null, null, '5', '139', 'f', 'f', '2893.29', '3667.91', 'f', '0', null, null, '2019-09-18 22:38:17.829554', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435984', null, '7', null, 'G022_mon_objt_190217T11281704_00157', '140', null, null, '5', '140', 'f', 'f', '2891.27', '3688.37', 'f', '0', null, null, '2019-09-18 22:38:17.850565', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435985', null, '7', null, 'G022_mon_objt_190217T11283204_00158', '141', null, null, '5', '141', 'f', 'f', '2889.53', '3706.65', 'f', '0', null, null, '2019-09-18 22:38:17.876935', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435986', null, '7', null, 'G022_mon_objt_190217T11284704_00159', '142', null, null, '5', '142', 'f', 'f', '2887.47', '3724.25', 'f', '0', null, null, '2019-09-18 22:38:17.900302', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435987', null, '7', null, 'G022_mon_objt_190217T11290204_00160', '143', null, null, '5', '143', 'f', 'f', '2885.24', '3747.2', 'f', '0', null, null, '2019-09-18 22:38:17.926732', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435988', null, '7', null, 'G022_mon_objt_190217T11291704_00161', '144', null, null, '5', '144', 'f', 'f', '2883.18', '3767.2', 'f', '0', null, null, '2019-09-18 22:38:17.945477', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435989', null, '7', null, 'G022_mon_objt_190217T11293204_00162', '145', null, null, '5', '145', 'f', 'f', '2881.28', '3786.58', 'f', '0', null, null, '2019-09-18 22:38:17.966907', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435990', null, '7', null, 'G022_mon_objt_190217T11294704_00163', '146', null, null, '5', '146', 'f', 'f', '2878.91', '3808.15', 'f', '0', null, null, '2019-09-18 22:38:17.981671', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435991', null, '7', null, 'G022_mon_objt_190217T10501704_00005', '2', null, null, '6', '2', 'f', 'f', '3217.12', '676.669', 'f', '0', null, null, '2019-09-22 20:09:05.556187', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435992', null, '7', null, 'G022_mon_objt_190217T10503204_00006', '3', null, null, '6', '3', 'f', 'f', '3214.75', '696.551', 'f', '0', null, null, '2019-09-22 20:09:05.625004', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435993', null, '7', null, 'G022_mon_objt_190217T10504704_00007', '4', null, null, '6', '4', 'f', 'f', '3212.5', '716.24', 'f', '0', null, null, '2019-09-22 20:09:05.684487', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435994', null, '7', null, 'G022_mon_objt_190217T10510204_00008', '5', null, null, '6', '5', 'f', 'f', '3210.2', '736.32', 'f', '0', null, null, '2019-09-22 20:09:05.744946', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435995', null, '7', null, 'G022_mon_objt_190217T10511704_00009', '6', null, null, '6', '6', 'f', 'f', '3207.98', '755.903', 'f', '0', null, null, '2019-09-22 20:09:05.797965', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435996', null, '7', null, 'G022_mon_objt_190217T10513204_00010', '7', null, null, '6', '7', 'f', 'f', '3205.67', '775.471', 'f', '0', null, null, '2019-09-22 20:09:05.855955', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435997', null, '7', null, 'G022_mon_objt_190217T10514704_00011', '8', null, null, '6', '8', 'f', 'f', '3203.45', '794.972', 'f', '0', null, null, '2019-09-22 20:09:05.898951', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435998', null, '7', null, 'G022_mon_objt_190217T10520204_00012', '9', null, null, '6', '9', 'f', 'f', '3201.31', '814.763', 'f', '0', null, null, '2019-09-22 20:09:05.957696', null, null);
INSERT INTO "fits_file_cut" VALUES ('44435999', null, '7', null, 'G022_mon_objt_190217T10521704_00013', '10', null, null, '6', '10', 'f', 'f', '3198.88', '834.193', 'f', '0', null, null, '2019-09-22 20:09:05.994208', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436000', null, '7', null, 'G022_mon_objt_190217T10523204_00014', '11', null, null, '6', '11', 'f', 'f', '3196.67', '853.827', 'f', '0', null, null, '2019-09-22 20:09:06.036259', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436001', null, '7', null, 'G022_mon_objt_190217T10524704_00015', '12', null, null, '6', '12', 'f', 'f', '3194.44', '873.808', 'f', '0', null, null, '2019-09-22 20:09:06.077913', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436002', null, '7', null, 'G022_mon_objt_190217T10530204_00016', '13', null, null, '6', '13', 'f', 'f', '3192.24', '893.147', 'f', '0', null, null, '2019-09-22 20:09:06.125974', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436003', null, '7', null, 'G022_mon_objt_190217T10531704_00017', '14', null, null, '6', '14', 'f', 'f', '3189.81', '913.1', 'f', '0', null, null, '2019-09-22 20:09:06.162946', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436004', null, '7', null, 'G022_mon_objt_190217T10533204_00018', '15', null, null, '6', '15', 'f', 'f', '3187.92', '932.774', 'f', '0', null, null, '2019-09-22 20:09:06.20706', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436005', null, '7', null, 'G022_mon_objt_190217T10550204_00024', '16', null, null, '6', '16', 'f', 'f', '3174.29', '1051.65', 'f', '0', null, null, '2019-09-22 20:09:06.260646', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436006', null, '7', null, 'G022_mon_objt_190217T10551704_00025', '17', null, null, '6', '17', 'f', 'f', '3172.05', '1071.67', 'f', '0', null, null, '2019-09-22 20:09:06.309864', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436007', null, '7', null, 'G022_mon_objt_190217T10553204_00026', '18', null, null, '6', '18', 'f', 'f', '3169.85', '1091.38', 'f', '0', null, null, '2019-09-22 20:09:06.356087', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436008', null, '7', null, 'G022_mon_objt_190217T10554704_00027', '19', null, null, '6', '19', 'f', 'f', '3167.6', '1111.24', 'f', '0', null, null, '2019-09-22 20:09:06.401298', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436009', null, '7', null, 'G022_mon_objt_190217T10560204_00028', '20', null, null, '6', '20', 'f', 'f', '3165.35', '1130.99', 'f', '0', null, null, '2019-09-22 20:09:06.44548', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436010', null, '7', null, 'G022_mon_objt_190217T10561704_00029', '21', null, null, '6', '21', 'f', 'f', '3163.11', '1150.64', 'f', '0', null, null, '2019-09-22 20:09:06.489426', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436011', null, '7', null, 'G022_mon_objt_190217T10563204_00030', '22', null, null, '6', '22', 'f', 'f', '3160.9', '1170.52', 'f', '0', null, null, '2019-09-22 20:09:06.529462', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436012', null, '7', null, 'G022_mon_objt_190217T10564704_00031', '23', null, null, '6', '23', 'f', 'f', '3158.74', '1190.32', 'f', '0', null, null, '2019-09-22 20:09:06.569476', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436013', null, '7', null, 'G022_mon_objt_190217T10570204_00032', '24', null, null, '6', '24', 'f', 'f', '3156.41', '1210.18', 'f', '0', null, null, '2019-09-22 20:09:06.609119', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436014', null, '7', null, 'G022_mon_objt_190217T10571704_00033', '25', null, null, '6', '25', 'f', 'f', '3154.25', '1230.2', 'f', '0', null, null, '2019-09-22 20:09:06.648018', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436015', null, '7', null, 'G022_mon_objt_190217T10573204_00034', '26', null, null, '6', '26', 'f', 'f', '3152.01', '1250.17', 'f', '0', null, null, '2019-09-22 20:09:06.729303', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436016', null, '7', null, 'G022_mon_objt_190217T10574704_00035', '27', null, null, '6', '27', 'f', 'f', '3149.75', '1269.77', 'f', '0', null, null, '2019-09-22 20:09:06.786817', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436017', null, '7', null, 'G022_mon_objt_190217T10580204_00036', '28', null, null, '6', '28', 'f', 'f', '3147.56', '1289.83', 'f', '0', null, null, '2019-09-22 20:09:06.842154', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436018', null, '7', null, 'G022_mon_objt_190217T10581704_00037', '29', null, null, '6', '29', 'f', 'f', '3145.3', '1309.65', 'f', '0', null, null, '2019-09-22 20:09:06.894365', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436019', null, '7', null, 'G022_mon_objt_190217T10583204_00038', '30', null, null, '6', '30', 'f', 'f', '3143.14', '1329.49', 'f', '0', null, null, '2019-09-22 20:09:06.953344', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436020', null, '7', null, 'G022_mon_objt_190217T10584704_00039', '31', null, null, '6', '31', 'f', 'f', '3140.92', '1349.47', 'f', '0', null, null, '2019-09-22 20:09:07.004588', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436021', null, '7', null, 'G022_mon_objt_190217T10590204_00040', '32', null, null, '6', '32', 'f', 'f', '3138.73', '1369.2', 'f', '0', null, null, '2019-09-22 20:09:07.051999', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436022', null, '7', null, 'G022_mon_objt_190217T10591704_00041', '33', null, null, '6', '33', 'f', 'f', '3136.41', '1389.2', 'f', '0', null, null, '2019-09-22 20:09:07.105879', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436023', null, '7', null, 'G022_mon_objt_190217T10593204_00042', '34', null, null, '6', '34', 'f', 'f', '3134.23', '1409.18', 'f', '0', null, null, '2019-09-22 20:09:07.153565', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436024', null, '7', null, 'G022_mon_objt_190217T10594704_00043', '35', null, null, '6', '35', 'f', 'f', '3131.99', '1429', 'f', '0', null, null, '2019-09-22 20:09:07.200102', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436025', null, '7', null, 'G022_mon_objt_190217T11000204_00044', '36', null, null, '6', '36', 'f', 'f', '3129.73', '1449.69', 'f', '0', null, null, '2019-09-22 20:09:07.245374', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436026', null, '7', null, 'G022_mon_objt_190217T11001704_00045', '37', null, null, '6', '37', 'f', 'f', '3127.71', '1468.34', 'f', '0', null, null, '2019-09-22 20:09:07.287098', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436027', null, '7', null, 'G022_mon_objt_190217T11003204_00046', '38', null, null, '6', '38', 'f', 'f', '3125.45', '1488.12', 'f', '0', null, null, '2019-09-22 20:09:07.331788', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436028', null, '7', null, 'G022_mon_objt_190217T11004704_00047', '39', null, null, '6', '39', 'f', 'f', '3123.21', '1508.29', 'f', '0', null, null, '2019-09-22 20:09:07.413165', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436029', null, '7', null, 'G022_mon_objt_190217T11010204_00048', '40', null, null, '6', '40', 'f', 'f', '3121.09', '1527.92', 'f', '0', null, null, '2019-09-22 20:09:07.458394', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436030', null, '7', null, 'G022_mon_objt_190217T11011704_00049', '41', null, null, '6', '41', 'f', 'f', '3118.8', '1547.27', 'f', '0', null, null, '2019-09-22 20:09:07.500464', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436031', null, '7', null, 'G022_mon_objt_190217T11013204_00050', '42', null, null, '6', '42', 'f', 'f', '3116.64', '1567.15', 'f', '0', null, null, '2019-09-22 20:09:07.540416', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436032', null, '7', null, 'G022_mon_objt_190217T11014704_00051', '43', null, null, '6', '43', 'f', 'f', '3114.5', '1586.73', 'f', '0', null, null, '2019-09-22 20:09:07.578126', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436033', null, '7', null, 'G022_mon_objt_190217T11020204_00052', '44', null, null, '6', '44', 'f', 'f', '3112.32', '1606.33', 'f', '0', null, null, '2019-09-22 20:09:07.617613', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436034', null, '7', null, 'G022_mon_objt_190217T11021704_00053', '45', null, null, '6', '45', 'f', 'f', '3110.08', '1626.16', 'f', '0', null, null, '2019-09-22 20:09:07.655311', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436035', null, '7', null, 'G022_mon_objt_190217T11023204_00054', '46', null, null, '6', '46', 'f', 'f', '3107.9', '1645.87', 'f', '0', null, null, '2019-09-22 20:09:07.691468', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436036', null, '7', null, 'G022_mon_objt_190217T11024704_00055', '47', null, null, '6', '47', 'f', 'f', '3105.73', '1665.5', 'f', '0', null, null, '2019-09-22 20:09:07.728455', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436037', null, '7', null, 'G022_mon_objt_190217T11030204_00056', '48', null, null, '6', '48', 'f', 'f', '3103.55', '1685.5', 'f', '0', null, null, '2019-09-22 20:09:07.764553', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436038', null, '7', null, 'G022_mon_objt_190217T11031704_00057', '49', null, null, '6', '49', 'f', 'f', '3101.39', '1705.11', 'f', '0', null, null, '2019-09-22 20:09:07.820518', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436039', null, '7', null, 'G022_mon_objt_190217T11033204_00058', '50', null, null, '6', '50', 'f', 'f', '3099.22', '1725.06', 'f', '0', null, null, '2019-09-22 20:09:07.872812', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436040', null, '7', null, 'G022_mon_objt_190217T11034704_00059', '51', null, null, '6', '51', 'f', 'f', '3096.98', '1745.02', 'f', '0', null, null, '2019-09-22 20:09:07.927006', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436041', null, '7', null, 'G022_mon_objt_190217T11040204_00060', '52', null, null, '6', '52', 'f', 'f', '3094.82', '1764.66', 'f', '0', null, null, '2019-09-22 20:09:08.01483', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436042', null, '7', null, 'G022_mon_objt_190217T11041704_00061', '53', null, null, '6', '53', 'f', 'f', '3092.68', '1784.31', 'f', '0', null, null, '2019-09-22 20:09:08.263583', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436043', null, '7', null, 'G022_mon_objt_190217T11043215_00062', '54', null, null, '6', '54', 'f', 'f', '3090.48', '1804.23', 'f', '0', null, null, '2019-09-22 20:09:08.604496', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436044', null, '7', null, 'G022_mon_objt_190217T11044713_00063', '55', null, null, '6', '55', 'f', 'f', '3088.32', '1824.18', 'f', '0', null, null, '2019-09-22 20:09:08.648717', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436045', null, '7', null, 'G022_mon_objt_190217T11050212_00064', '56', null, null, '6', '56', 'f', 'f', '3086.49', '1843.98', 'f', '0', null, null, '2019-09-22 20:09:08.692833', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436046', null, '7', null, 'G022_mon_objt_190217T11051710_00065', '57', null, null, '6', '57', 'f', 'f', '3083.99', '1863.62', 'f', '0', null, null, '2019-09-22 20:09:08.733879', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436047', null, '7', null, 'G022_mon_objt_190217T11053209_00066', '58', null, null, '6', '58', 'f', 'f', '3081.82', '1883.37', 'f', '0', null, null, '2019-09-22 20:09:08.820358', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436048', null, '7', null, 'G022_mon_objt_190217T11054707_00067', '59', null, null, '6', '59', 'f', 'f', '3079.65', '1902.94', 'f', '0', null, null, '2019-09-22 20:09:08.87331', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436049', null, '7', null, 'G022_mon_objt_190217T11060206_00068', '60', null, null, '6', '60', 'f', 'f', '3077.22', '1923.44', 'f', '0', null, null, '2019-09-22 20:09:08.921921', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436050', null, '7', null, 'G022_mon_objt_190217T11061704_00069', '61', null, null, '6', '61', 'f', 'f', '3075.36', '1942.62', 'f', '0', null, null, '2019-09-22 20:09:08.975655', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436051', null, '7', null, 'G022_mon_objt_190217T11063204_00070', '62', null, null, '6', '62', 'f', 'f', '3073.11', '1962.47', 'f', '0', null, null, '2019-09-22 20:09:09.02622', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436052', null, '7', null, 'G022_mon_objt_190217T11064704_00071', '63', null, null, '6', '63', 'f', 'f', '3070.99', '1982.34', 'f', '0', null, null, '2019-09-22 20:09:09.072561', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436053', null, '7', null, 'G022_mon_objt_190217T11071704_00073', '64', null, null, '6', '64', 'f', 'f', '3066.69', '2022.18', 'f', '0', null, null, '2019-09-22 20:09:09.115815', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436054', null, '7', null, 'G022_mon_objt_190217T11080204_00076', '65', null, null, '6', '65', 'f', 'f', '3060.22', '2081.88', 'f', '0', null, null, '2019-09-22 20:09:09.158575', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436055', null, '7', null, 'G022_mon_objt_190217T11081704_00077', '66', null, null, '6', '66', 'f', 'f', '3057.83', '2102.03', 'f', '0', null, null, '2019-09-22 20:09:09.199428', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436056', null, '7', null, 'G022_mon_objt_190217T11083204_00078', '67', null, null, '6', '67', 'f', 'f', '3055.92', '2121.43', 'f', '0', null, null, '2019-09-22 20:09:09.241683', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436057', null, '7', null, 'G022_mon_objt_190217T11084704_00079', '68', null, null, '6', '68', 'f', 'f', '3053.72', '2141.36', 'f', '0', null, null, '2019-09-22 20:09:09.284506', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436058', null, '7', null, 'G022_mon_objt_190217T11090204_00080', '69', null, null, '6', '69', 'f', 'f', '3051.55', '2161.58', 'f', '0', null, null, '2019-09-22 20:09:09.324645', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436059', null, '7', null, 'G022_mon_objt_190217T11091704_00081', '70', null, null, '6', '70', 'f', 'f', '3049.5', '2181.04', 'f', '0', null, null, '2019-09-22 20:09:09.364249', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436060', null, '7', null, 'G022_mon_objt_190217T11093204_00082', '71', null, null, '6', '71', 'f', 'f', '3047.35', '2201.15', 'f', '0', null, null, '2019-09-22 20:09:09.406588', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436061', null, '7', null, 'G022_mon_objt_190217T11094704_00083', '72', null, null, '6', '72', 'f', 'f', '3045.13', '2221.11', 'f', '0', null, null, '2019-09-22 20:09:09.491693', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436062', null, '7', null, 'G022_mon_objt_190217T11100204_00084', '73', null, null, '6', '73', 'f', 'f', '3043.04', '2240.65', 'f', '0', null, null, '2019-09-22 20:09:09.533917', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436063', null, '7', null, 'G022_mon_objt_190217T11101704_00085', '74', null, null, '6', '74', 'f', 'f', '3040.86', '2260.6', 'f', '0', null, null, '2019-09-22 20:09:09.574389', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436064', null, '7', null, 'G022_mon_objt_190217T11103204_00086', '75', null, null, '6', '75', 'f', 'f', '3038.69', '2280.52', 'f', '0', null, null, '2019-09-22 20:09:09.620861', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436065', null, '7', null, 'G022_mon_objt_190217T11104704_00087', '76', null, null, '6', '76', 'f', 'f', '3036.62', '2299.67', 'f', '0', null, null, '2019-09-22 20:09:09.665019', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436066', null, '7', null, 'G022_mon_objt_190217T11110204_00088', '77', null, null, '6', '77', 'f', 'f', '3034.52', '2319.46', 'f', '0', null, null, '2019-09-22 20:09:09.705096', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436067', null, '7', null, 'G022_mon_objt_190217T11111704_00089', '78', null, null, '6', '78', 'f', 'f', '3032.4', '2339.52', 'f', '0', null, null, '2019-09-22 20:09:09.746097', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436068', null, '7', null, 'G022_mon_objt_190217T11113204_00090', '79', null, null, '6', '79', 'f', 'f', '3030.32', '2358.63', 'f', '0', null, null, '2019-09-22 20:09:09.788649', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436069', null, '7', null, 'G022_mon_objt_190217T11114704_00091', '80', null, null, '6', '80', 'f', 'f', '3028.16', '2378.51', 'f', '0', null, null, '2019-09-22 20:09:09.830983', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436070', null, '7', null, 'G022_mon_objt_190217T11120204_00092', '81', null, null, '6', '81', 'f', 'f', '3025.96', '2398.46', 'f', '0', null, null, '2019-09-22 20:09:09.878388', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436071', null, '7', null, 'G022_mon_objt_190217T11121704_00093', '82', null, null, '6', '82', 'f', 'f', '3023.93', '2417.72', 'f', '0', null, null, '2019-09-22 20:09:09.920127', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436072', null, '7', null, 'G022_mon_objt_190217T11123204_00094', '83', null, null, '6', '83', 'f', 'f', '3021.74', '2437.7', 'f', '0', null, null, '2019-09-22 20:09:09.956526', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436073', null, '7', null, 'G022_mon_objt_190217T11124704_00095', '84', null, null, '6', '84', 'f', 'f', '3019.75', '2457.38', 'f', '0', null, null, '2019-09-22 20:09:09.994501', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436074', null, '7', null, 'G022_mon_objt_190217T11130204_00096', '85', null, null, '6', '85', 'f', 'f', '3017.59', '2477.27', 'f', '0', null, null, '2019-09-22 20:09:10.029449', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436075', null, '7', null, 'G022_mon_objt_190217T11131704_00097', '86', null, null, '6', '86', 'f', 'f', '3015.84', '2494.16', 'f', '0', null, null, '2019-09-22 20:09:10.109963', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436076', null, '7', null, 'G022_mon_objt_190217T11133204_00098', '87', null, null, '6', '87', 'f', 'f', '3013.34', '2517.16', 'f', '0', null, null, '2019-09-22 20:09:10.23903', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436077', null, '7', null, 'G022_mon_objt_190217T11134704_00099', '88', null, null, '6', '88', 'f', 'f', '3011.23', '2536.65', 'f', '0', null, null, '2019-09-22 20:09:10.291365', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436078', null, '7', null, 'G022_mon_objt_190217T11140204_00100', '89', null, null, '6', '89', 'f', 'f', '3009.19', '2555.88', 'f', '0', null, null, '2019-09-22 20:09:10.344318', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436079', null, '7', null, 'G022_mon_objt_190217T11141704_00101', '90', null, null, '6', '90', 'f', 'f', '3006.95', '2576.91', 'f', '0', null, null, '2019-09-22 20:09:10.413392', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436080', null, '7', null, 'G022_mon_objt_190217T11144704_00103', '91', null, null, '6', '91', 'f', 'f', '3002.78', '2616.28', 'f', '0', null, null, '2019-09-22 20:09:10.456603', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436081', null, '7', null, 'G022_mon_objt_190217T11150204_00104', '92', null, null, '6', '92', 'f', 'f', '3000.46', '2635.86', 'f', '0', null, null, '2019-09-22 20:09:10.505583', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436082', null, '7', null, 'G022_mon_objt_190217T11151704_00105', '93', null, null, '6', '93', 'f', 'f', '2998.1', '2656.73', 'f', '0', null, null, '2019-09-22 20:09:10.54695', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436083', null, '7', null, 'G022_mon_objt_190217T11154704_00107', '94', null, null, '6', '94', 'f', 'f', '2994.4', '2695.14', 'f', '0', null, null, '2019-09-22 20:09:10.589294', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436084', null, '7', null, 'G022_mon_objt_190217T11160204_00108', '95', null, null, '6', '95', 'f', 'f', '2992.81', '2711.58', 'f', '0', null, null, '2019-09-22 20:09:10.646047', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436085', null, '7', null, 'G022_mon_objt_190217T11161704_00109', '96', null, null, '6', '96', 'f', 'f', '2990.13', '2735.47', 'f', '0', null, null, '2019-09-22 20:09:10.752581', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436086', null, '7', null, 'G022_mon_objt_190217T11163204_00110', '97', null, null, '6', '97', 'f', 'f', '2988.12', '2754.64', 'f', '0', null, null, '2019-09-22 20:09:10.803308', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436087', null, '7', null, 'G022_mon_objt_190217T11164704_00111', '98', null, null, '6', '98', 'f', 'f', '2986.12', '2772.74', 'f', '0', null, null, '2019-09-22 20:09:10.854443', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436088', null, '7', null, 'G022_mon_objt_190217T11170204_00112', '99', null, null, '6', '99', 'f', 'f', '2983.89', '2794.9', 'f', '0', null, null, '2019-09-22 20:09:10.905915', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436089', null, '7', null, 'G022_mon_objt_190217T11171704_00113', '100', null, null, '6', '100', 'f', 'f', '2981.87', '2814.73', 'f', '0', null, null, '2019-09-22 20:09:10.955183', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436090', null, '7', null, 'G022_mon_objt_190217T11173204_00114', '101', null, null, '6', '101', 'f', 'f', '2979.68', '2834.44', 'f', '0', null, null, '2019-09-22 20:09:10.999406', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436091', null, '7', null, 'G022_mon_objt_190217T11174704_00115', '102', null, null, '6', '102', 'f', 'f', '2977', '2858.02', 'f', '0', null, null, '2019-09-22 20:09:11.046274', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436092', null, '7', null, 'G022_mon_objt_190217T11180204_00116', '103', null, null, '6', '103', 'f', 'f', '2975.55', '2873.94', 'f', '0', null, null, '2019-09-22 20:09:11.086292', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436093', null, '7', null, 'G022_mon_objt_190217T11181704_00117', '104', null, null, '6', '104', 'f', 'f', '2973.37', '2893.75', 'f', '0', null, null, '2019-09-22 20:09:11.198476', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436094', null, '7', null, 'G022_mon_objt_190217T11183204_00118', '105', null, null, '6', '105', 'f', 'f', '2972.99', '2914.25', 'f', '0', null, null, '2019-09-22 20:09:11.238855', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436095', null, '7', null, 'G022_mon_objt_190217T11184704_00119', '106', null, null, '6', '106', 'f', 'f', '2969.25', '2933.7', 'f', '0', null, null, '2019-09-22 20:09:11.278533', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436096', null, '7', null, 'G022_mon_objt_190217T11190204_00120', '107', null, null, '6', '107', 'f', 'f', '2967.09', '2954.08', 'f', '0', null, null, '2019-09-22 20:09:11.32334', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436097', null, '7', null, 'G022_mon_objt_190217T11191704_00121', '108', null, null, '6', '108', 'f', 'f', '2965.05', '2974.29', 'f', '0', null, null, '2019-09-22 20:09:11.36303', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436098', null, '7', null, 'G022_mon_objt_190217T11193204_00122', '109', null, null, '6', '109', 'f', 'f', '2962.96', '2993.54', 'f', '0', null, null, '2019-09-22 20:09:11.398304', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436099', null, '7', null, 'G022_mon_objt_190217T11194704_00123', '110', null, null, '6', '110', 'f', 'f', '2960.9', '3013.58', 'f', '0', null, null, '2019-09-22 20:09:11.446643', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436100', null, '7', null, 'G022_mon_objt_190217T11200204_00124', '111', null, null, '6', '111', 'f', 'f', '2958.84', '3032.7', 'f', '0', null, null, '2019-09-22 20:09:11.501315', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436101', null, '7', null, 'G022_mon_objt_190217T11201704_00125', '112', null, null, '6', '112', 'f', 'f', '2956.77', '3052.46', 'f', '0', null, null, '2019-09-22 20:09:11.549832', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436102', null, '7', null, 'G022_mon_objt_190217T11203204_00126', '113', null, null, '6', '113', 'f', 'f', '2954.63', '3072.4', 'f', '0', null, null, '2019-09-22 20:09:11.607136', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436103', null, '7', null, 'G022_mon_objt_190217T11204704_00127', '114', null, null, '6', '114', 'f', 'f', '2952.66', '3092.23', 'f', '0', null, null, '2019-09-22 20:09:11.654912', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436104', null, '7', null, 'G022_mon_objt_190217T11210204_00128', '115', null, null, '6', '115', 'f', 'f', '2950.5', '3111.64', 'f', '0', null, null, '2019-09-22 20:09:11.702015', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436105', null, '7', null, 'G022_mon_objt_190217T11211704_00129', '116', null, null, '6', '116', 'f', 'f', '2948.45', '3131.61', 'f', '0', null, null, '2019-09-22 20:09:11.754051', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436106', null, '7', null, 'G022_mon_objt_190217T11214714_00131', '117', null, null, '6', '117', 'f', 'f', '2944.43', '3170.48', 'f', '0', null, null, '2019-09-22 20:09:11.801197', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436107', null, '7', null, 'G022_mon_objt_190217T11220212_00132', '118', null, null, '6', '118', 'f', 'f', '2942.22', '3190.66', 'f', '0', null, null, '2019-09-22 20:09:11.844872', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436108', null, '7', null, 'G022_mon_objt_190217T11221711_00133', '119', null, null, '6', '119', 'f', 'f', '2940.95', '3211.97', 'f', '0', null, null, '2019-09-22 20:09:11.887863', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436109', null, '7', null, 'G022_mon_objt_190217T11223209_00134', '120', null, null, '6', '120', 'f', 'f', '2938.19', '3230.66', 'f', '0', null, null, '2019-09-22 20:09:11.930085', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436110', null, '7', null, 'G022_mon_objt_190217T11230207_00136', '121', null, null, '6', '121', 'f', 'f', '2934', '3270.65', 'f', '0', null, null, '2019-09-22 20:09:11.976464', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436111', null, '7', null, 'G022_mon_objt_190217T11231705_00137', '122', null, null, '6', '122', 'f', 'f', '2932.59', '3286.18', 'f', '0', null, null, '2019-09-22 20:09:12.019556', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436112', null, '7', null, 'G022_mon_objt_190217T11233204_00138', '123', null, null, '6', '123', 'f', 'f', '2929.97', '3309.73', 'f', '0', null, null, '2019-09-22 20:09:12.099375', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436113', null, '7', null, 'G022_mon_objt_190217T11240204_00140', '124', null, null, '6', '124', 'f', 'f', '2925.9', '3349.23', 'f', '0', null, null, '2019-09-22 20:09:12.141223', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436114', null, '7', null, 'G022_mon_objt_190217T11241704_00141', '125', null, null, '6', '125', 'f', 'f', '2923.95', '3369.65', 'f', '0', null, null, '2019-09-22 20:09:12.181773', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436115', null, '7', null, 'G022_mon_objt_190217T11243204_00142', '126', null, null, '6', '126', 'f', 'f', '2922.26', '3385.89', 'f', '0', null, null, '2019-09-22 20:09:12.225121', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436116', null, '7', null, 'G022_mon_objt_190217T11244704_00143', '127', null, null, '6', '127', 'f', 'f', '2919.84', '3408.44', 'f', '0', null, null, '2019-09-22 20:09:12.29648', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436117', null, '7', null, 'G022_mon_objt_190217T11250204_00144', '128', null, null, '6', '128', 'f', 'f', '2917.65', '3428.89', 'f', '0', null, null, '2019-09-22 20:09:12.331865', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436118', null, '7', null, 'G022_mon_objt_190217T11251704_00145', '129', null, null, '6', '129', 'f', 'f', '2915.61', '3448.37', 'f', '0', null, null, '2019-09-22 20:09:12.367029', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436119', null, '7', null, 'G022_mon_objt_190217T11253204_00146', '130', null, null, '6', '130', 'f', 'f', '2913.63', '3467.81', 'f', '0', null, null, '2019-09-22 20:09:12.461668', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436120', null, '7', null, 'G022_mon_objt_190217T11254704_00147', '131', null, null, '6', '131', 'f', 'f', '2911', '3492.48', 'f', '0', null, null, '2019-09-22 20:09:12.510547', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436121', null, '7', null, 'G022_mon_objt_190217T11261704_00149', '132', null, null, '6', '132', 'f', 'f', '2907.56', '3528.11', 'f', '0', null, null, '2019-09-22 20:09:12.609371', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436122', null, '7', null, 'G022_mon_objt_190217T11263204_00150', '133', null, null, '6', '133', 'f', 'f', '2905.94', '3547.59', 'f', '0', null, null, '2019-09-22 20:09:12.658135', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436123', null, '7', null, 'G022_mon_objt_190217T11264704_00151', '134', null, null, '6', '134', 'f', 'f', '2903.56', '3567.54', 'f', '0', null, null, '2019-09-22 20:09:12.708056', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436124', null, '7', null, 'G022_mon_objt_190217T11270204_00152', '135', null, null, '6', '135', 'f', 'f', '2901.31', '3589.03', 'f', '0', null, null, '2019-09-22 20:09:12.760893', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436125', null, '7', null, 'G022_mon_objt_190217T11271704_00153', '136', null, null, '6', '136', 'f', 'f', '2899', '3609.55', 'f', '0', null, null, '2019-09-22 20:09:12.849347', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436126', null, '7', null, 'G022_mon_objt_190217T11273204_00154', '137', null, null, '6', '137', 'f', 'f', '2898', '3624.51', 'f', '0', null, null, '2019-09-22 20:09:12.967384', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436127', null, '7', null, 'G022_mon_objt_190217T11274704_00155', '138', null, null, '6', '138', 'f', 'f', '2895.35', '3647.29', 'f', '0', null, null, '2019-09-22 20:09:13.06695', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436128', null, '7', null, 'G022_mon_objt_190217T11280204_00156', '139', null, null, '6', '139', 'f', 'f', '2893.29', '3667.91', 'f', '0', null, null, '2019-09-22 20:09:13.121448', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436129', null, '7', null, 'G022_mon_objt_190217T11281704_00157', '140', null, null, '6', '140', 'f', 'f', '2891.27', '3688.37', 'f', '0', null, null, '2019-09-22 20:09:13.171929', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436130', null, '7', null, 'G022_mon_objt_190217T11283204_00158', '141', null, null, '6', '141', 'f', 'f', '2889.53', '3706.65', 'f', '0', null, null, '2019-09-22 20:09:13.221345', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436131', null, '7', null, 'G022_mon_objt_190217T11284704_00159', '142', null, null, '6', '142', 'f', 'f', '2887.47', '3724.25', 'f', '0', null, null, '2019-09-22 20:09:13.309164', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436132', null, '7', null, 'G022_mon_objt_190217T11290204_00160', '143', null, null, '6', '143', 'f', 'f', '2885.24', '3747.2', 'f', '0', null, null, '2019-09-22 20:09:13.357961', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436133', null, '7', null, 'G022_mon_objt_190217T11291704_00161', '144', null, null, '6', '144', 'f', 'f', '2883.18', '3767.2', 'f', '0', null, null, '2019-09-22 20:09:13.410385', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436134', null, '7', null, 'G022_mon_objt_190217T11293204_00162', '145', null, null, '6', '145', 'f', 'f', '2881.28', '3786.58', 'f', '0', null, null, '2019-09-22 20:09:13.457245', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436135', null, '7', null, 'G022_mon_objt_190217T11294704_00163', '146', null, null, '6', '146', 'f', 'f', '2878.91', '3808.15', 'f', '0', null, null, '2019-09-22 20:09:13.508884', null, null);
INSERT INTO "fits_file_cut" VALUES ('44436136', null, '7', null, 'G022_mon_objt_190217T12501704_00200', '148', null, null, '7', '2', 'f', 'f', '3217.12', '676.669', 'f', '0', null, null, '2019-09-26 19:30:09.41872', null, null);
COMMIT;

-- ----------------------------
-- Table structure for fits_file_cut_his
-- ----------------------------
DROP TABLE IF EXISTS "fits_file_cut_his";
CREATE TABLE "fits_file_cut_his" (
"ffc_id" int8 NOT NULL,
"star_id" int8,
"dpm_id" int2,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"ff_id" int8,
"template_ffc_id" int8,
"is_template_cut" bool,
"ot_id" int8 DEFAULT 0,
"number" int4,
"request_cut" bool,
"success_cut" bool,
"img_x" float4,
"img_y" float4,
"is_missed" bool DEFAULT true,
"priority" int2,
"is_sync" bool DEFAULT false,
"is_recv_ok" bool DEFAULT false,
"insert_time" timestamp(6),
"request_time" timestamp(6),
"upload_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file_cut_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fits_file_cut_ref
-- ----------------------------
DROP TABLE IF EXISTS "fits_file_cut_ref";
CREATE TABLE "fits_file_cut_ref" (
"ffcr_id" int8 DEFAULT nextval('ffcr_id_seq'::regclass) NOT NULL,
"ot_id" int8,
"file_name" varchar(255) COLLATE "default",
"store_path" varchar(255) COLLATE "default",
"generate_time" timestamp(6),
"magnitude" float4 DEFAULT 0,
"request_cut" bool DEFAULT false,
"success_cut" bool DEFAULT false,
"dpm_id" int8,
"ff_id" int8,
"is_sync" bool DEFAULT false,
"is_recv_ok" bool DEFAULT false,
"insert_time" timestamp(6) DEFAULT now(),
"request_time" timestamp(6),
"upload_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file_cut_ref
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fits_file_cut_ref_his
-- ----------------------------
DROP TABLE IF EXISTS "fits_file_cut_ref_his";
CREATE TABLE "fits_file_cut_ref_his" (
"ffcr_id" int8 DEFAULT nextval('ffcr_id_seq'::regclass) NOT NULL,
"ot_id" int8,
"file_name" varchar(255) COLLATE "default",
"store_path" varchar(255) COLLATE "default",
"generate_time" timestamp(6),
"magnitude" float4 DEFAULT 0,
"request_cut" bool DEFAULT false,
"success_cut" bool DEFAULT false,
"dpm_id" int8,
"ff_id" int8,
"is_sync" bool DEFAULT false,
"is_recv_ok" bool DEFAULT false,
"insert_time" timestamp(6) DEFAULT now(),
"request_time" timestamp(6),
"upload_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file_cut_ref_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for fits_file2
-- ----------------------------
DROP TABLE IF EXISTS "fits_file2";
CREATE TABLE "fits_file2" (
"ff_id" int8 DEFAULT nextval('ff_id_seq2'::regclass) NOT NULL,
"ff_number" int4,
"mount_id" int4,
"cam_id" int4,
"sky_id" int4,
"img_name" varchar COLLATE "default",
"img_path" varchar COLLATE "default",
"gen_time" timestamp(6),
"time_sub_second" int4 DEFAULT 0,
"status" char(1) COLLATE "default" DEFAULT 1
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file2
-- ----------------------------
BEGIN;
INSERT INTO "fits_file2" VALUES ('2', '2', null, '7', null, 'G022_mon_objt_190217T10501704.fit', 'G022_mon_objt_190217T10501704.fit', '2019-02-17 10:50:17', '41257', '1');
INSERT INTO "fits_file2" VALUES ('3', '3', null, '7', null, 'G022_mon_objt_190217T10503204.fit', 'G022_mon_objt_190217T10503204.fit', '2019-02-17 10:50:32', '41268', '1');
INSERT INTO "fits_file2" VALUES ('4', '4', null, '7', null, 'G022_mon_objt_190217T10504704.fit', 'G022_mon_objt_190217T10504704.fit', '2019-02-17 10:50:47', '41206', '1');
INSERT INTO "fits_file2" VALUES ('5', '5', null, '7', null, 'G022_mon_objt_190217T10510204.fit', 'G022_mon_objt_190217T10510204.fit', '2019-02-17 10:51:02', '41383', '1');
INSERT INTO "fits_file2" VALUES ('6', '6', null, '7', null, 'G022_mon_objt_190217T10511704.fit', 'G022_mon_objt_190217T10511704.fit', '2019-02-17 10:51:17', '41255', '1');
INSERT INTO "fits_file2" VALUES ('7', '7', null, '7', null, 'G022_mon_objt_190217T10513204.fit', 'G022_mon_objt_190217T10513204.fit', '2019-02-17 10:51:32', '41275', '1');
INSERT INTO "fits_file2" VALUES ('8', '8', null, '7', null, 'G022_mon_objt_190217T10514704.fit', 'G022_mon_objt_190217T10514704.fit', '2019-02-17 10:51:47', '41278', '1');
INSERT INTO "fits_file2" VALUES ('9', '9', null, '7', null, 'G022_mon_objt_190217T10520204.fit', 'G022_mon_objt_190217T10520204.fit', '2019-02-17 10:52:02', '41246', '1');
INSERT INTO "fits_file2" VALUES ('10', '10', null, '7', null, 'G022_mon_objt_190217T10521704.fit', 'G022_mon_objt_190217T10521704.fit', '2019-02-17 10:52:17', '41290', '1');
INSERT INTO "fits_file2" VALUES ('11', '11', null, '7', null, 'G022_mon_objt_190217T10523204.fit', 'G022_mon_objt_190217T10523204.fit', '2019-02-17 10:52:32', '41179', '1');
INSERT INTO "fits_file2" VALUES ('12', '12', null, '7', null, 'G022_mon_objt_190217T10524704.fit', 'G022_mon_objt_190217T10524704.fit', '2019-02-17 10:52:47', '41272', '1');
INSERT INTO "fits_file2" VALUES ('13', '13', null, '7', null, 'G022_mon_objt_190217T10530204.fit', 'G022_mon_objt_190217T10530204.fit', '2019-02-17 10:53:02', '41170', '1');
INSERT INTO "fits_file2" VALUES ('14', '14', null, '7', null, 'G022_mon_objt_190217T10531704.fit', 'G022_mon_objt_190217T10531704.fit', '2019-02-17 10:53:17', '41359', '1');
INSERT INTO "fits_file2" VALUES ('15', '15', null, '7', null, 'G022_mon_objt_190217T10533204.fit', 'G022_mon_objt_190217T10533204.fit', '2019-02-17 10:53:32', '41348', '1');
INSERT INTO "fits_file2" VALUES ('16', '16', null, '7', null, 'G022_mon_objt_190217T10550204.fit', 'G022_mon_objt_190217T10550204.fit', '2019-02-17 10:55:02', '41332', '1');
INSERT INTO "fits_file2" VALUES ('17', '17', null, '7', null, 'G022_mon_objt_190217T10551704.fit', 'G022_mon_objt_190217T10551704.fit', '2019-02-17 10:55:17', '41321', '1');
INSERT INTO "fits_file2" VALUES ('18', '18', null, '7', null, 'G022_mon_objt_190217T10553204.fit', 'G022_mon_objt_190217T10553204.fit', '2019-02-17 10:55:32', '41322', '1');
INSERT INTO "fits_file2" VALUES ('19', '19', null, '7', null, 'G022_mon_objt_190217T10554704.fit', 'G022_mon_objt_190217T10554704.fit', '2019-02-17 10:55:47', '41295', '1');
INSERT INTO "fits_file2" VALUES ('20', '20', null, '7', null, 'G022_mon_objt_190217T10560204.fit', 'G022_mon_objt_190217T10560204.fit', '2019-02-17 10:56:02', '41308', '1');
INSERT INTO "fits_file2" VALUES ('21', '21', null, '7', null, 'G022_mon_objt_190217T10561704.fit', 'G022_mon_objt_190217T10561704.fit', '2019-02-17 10:56:17', '41351', '1');
INSERT INTO "fits_file2" VALUES ('22', '22', null, '7', null, 'G022_mon_objt_190217T10563204.fit', 'G022_mon_objt_190217T10563204.fit', '2019-02-17 10:56:32', '41293', '1');
INSERT INTO "fits_file2" VALUES ('23', '23', null, '7', null, 'G022_mon_objt_190217T10564704.fit', 'G022_mon_objt_190217T10564704.fit', '2019-02-17 10:56:47', '41322', '1');
INSERT INTO "fits_file2" VALUES ('24', '24', null, '7', null, 'G022_mon_objt_190217T10570204.fit', 'G022_mon_objt_190217T10570204.fit', '2019-02-17 10:57:02', '41278', '1');
INSERT INTO "fits_file2" VALUES ('25', '25', null, '7', null, 'G022_mon_objt_190217T10571704.fit', 'G022_mon_objt_190217T10571704.fit', '2019-02-17 10:57:17', '41290', '1');
INSERT INTO "fits_file2" VALUES ('26', '26', null, '7', null, 'G022_mon_objt_190217T10573204.fit', 'G022_mon_objt_190217T10573204.fit', '2019-02-17 10:57:32', '41297', '1');
INSERT INTO "fits_file2" VALUES ('27', '27', null, '7', null, 'G022_mon_objt_190217T10574704.fit', 'G022_mon_objt_190217T10574704.fit', '2019-02-17 10:57:47', '41223', '1');
INSERT INTO "fits_file2" VALUES ('28', '28', null, '7', null, 'G022_mon_objt_190217T10580204.fit', 'G022_mon_objt_190217T10580204.fit', '2019-02-17 10:58:02', '41270', '1');
INSERT INTO "fits_file2" VALUES ('29', '29', null, '7', null, 'G022_mon_objt_190217T10581704.fit', 'G022_mon_objt_190217T10581704.fit', '2019-02-17 10:58:17', '41323', '1');
INSERT INTO "fits_file2" VALUES ('30', '30', null, '7', null, 'G022_mon_objt_190217T10583204.fit', 'G022_mon_objt_190217T10583204.fit', '2019-02-17 10:58:32', '41276', '1');
INSERT INTO "fits_file2" VALUES ('31', '31', null, '7', null, 'G022_mon_objt_190217T10584704.fit', 'G022_mon_objt_190217T10584704.fit', '2019-02-17 10:58:47', '41324', '1');
INSERT INTO "fits_file2" VALUES ('32', '32', null, '7', null, 'G022_mon_objt_190217T10590204.fit', 'G022_mon_objt_190217T10590204.fit', '2019-02-17 10:59:02', '41335', '1');
INSERT INTO "fits_file2" VALUES ('33', '33', null, '7', null, 'G022_mon_objt_190217T10591704.fit', 'G022_mon_objt_190217T10591704.fit', '2019-02-17 10:59:17', '41271', '1');
INSERT INTO "fits_file2" VALUES ('34', '34', null, '7', null, 'G022_mon_objt_190217T10593204.fit', 'G022_mon_objt_190217T10593204.fit', '2019-02-17 10:59:32', '41290', '1');
INSERT INTO "fits_file2" VALUES ('35', '35', null, '7', null, 'G022_mon_objt_190217T10594704.fit', 'G022_mon_objt_190217T10594704.fit', '2019-02-17 10:59:47', '41350', '1');
INSERT INTO "fits_file2" VALUES ('36', '36', null, '7', null, 'G022_mon_objt_190217T11000204.fit', 'G022_mon_objt_190217T11000204.fit', '2019-02-17 11:00:02', '41349', '1');
INSERT INTO "fits_file2" VALUES ('37', '37', null, '7', null, 'G022_mon_objt_190217T11001704.fit', 'G022_mon_objt_190217T11001704.fit', '2019-02-17 11:00:17', '41330', '1');
INSERT INTO "fits_file2" VALUES ('38', '38', null, '7', null, 'G022_mon_objt_190217T11003204.fit', 'G022_mon_objt_190217T11003204.fit', '2019-02-17 11:00:32', '41272', '1');
INSERT INTO "fits_file2" VALUES ('39', '39', null, '7', null, 'G022_mon_objt_190217T11004704.fit', 'G022_mon_objt_190217T11004704.fit', '2019-02-17 11:00:47', '41271', '1');
INSERT INTO "fits_file2" VALUES ('40', '40', null, '7', null, 'G022_mon_objt_190217T11010204.fit', 'G022_mon_objt_190217T11010204.fit', '2019-02-17 11:01:02', '41246', '1');
INSERT INTO "fits_file2" VALUES ('41', '41', null, '7', null, 'G022_mon_objt_190217T11011704.fit', 'G022_mon_objt_190217T11011704.fit', '2019-02-17 11:01:17', '41337', '1');
INSERT INTO "fits_file2" VALUES ('42', '42', null, '7', null, 'G022_mon_objt_190217T11013204.fit', 'G022_mon_objt_190217T11013204.fit', '2019-02-17 11:01:32', '41329', '1');
INSERT INTO "fits_file2" VALUES ('43', '43', null, '7', null, 'G022_mon_objt_190217T11014704.fit', 'G022_mon_objt_190217T11014704.fit', '2019-02-17 11:01:47', '41341', '1');
INSERT INTO "fits_file2" VALUES ('44', '44', null, '7', null, 'G022_mon_objt_190217T11020204.fit', 'G022_mon_objt_190217T11020204.fit', '2019-02-17 11:02:02', '41330', '1');
INSERT INTO "fits_file2" VALUES ('45', '45', null, '7', null, 'G022_mon_objt_190217T11021704.fit', 'G022_mon_objt_190217T11021704.fit', '2019-02-17 11:02:17', '41248', '1');
INSERT INTO "fits_file2" VALUES ('46', '46', null, '7', null, 'G022_mon_objt_190217T11023204.fit', 'G022_mon_objt_190217T11023204.fit', '2019-02-17 11:02:32', '41283', '1');
INSERT INTO "fits_file2" VALUES ('47', '47', null, '7', null, 'G022_mon_objt_190217T11024704.fit', 'G022_mon_objt_190217T11024704.fit', '2019-02-17 11:02:47', '41368', '1');
INSERT INTO "fits_file2" VALUES ('48', '48', null, '7', null, 'G022_mon_objt_190217T11030204.fit', 'G022_mon_objt_190217T11030204.fit', '2019-02-17 11:03:02', '41305', '1');
INSERT INTO "fits_file2" VALUES ('49', '49', null, '7', null, 'G022_mon_objt_190217T11031704.fit', 'G022_mon_objt_190217T11031704.fit', '2019-02-17 11:03:17', '41163', '1');
INSERT INTO "fits_file2" VALUES ('50', '50', null, '7', null, 'G022_mon_objt_190217T11033204.fit', 'G022_mon_objt_190217T11033204.fit', '2019-02-17 11:03:32', '41262', '1');
INSERT INTO "fits_file2" VALUES ('51', '51', null, '7', null, 'G022_mon_objt_190217T11034704.fit', 'G022_mon_objt_190217T11034704.fit', '2019-02-17 11:03:47', '41335', '1');
INSERT INTO "fits_file2" VALUES ('52', '52', null, '7', null, 'G022_mon_objt_190217T11040204.fit', 'G022_mon_objt_190217T11040204.fit', '2019-02-17 11:04:02', '41321', '1');
INSERT INTO "fits_file2" VALUES ('53', '53', null, '7', null, 'G022_mon_objt_190217T11041704.fit', 'G022_mon_objt_190217T11041704.fit', '2019-02-17 11:04:17', '41262', '1');
INSERT INTO "fits_file2" VALUES ('54', '54', null, '7', null, 'G022_mon_objt_190217T11043215.fit', 'G022_mon_objt_190217T11043215.fit', '2019-02-17 11:04:32', '150415', '1');
INSERT INTO "fits_file2" VALUES ('55', '55', null, '7', null, 'G022_mon_objt_190217T11044713.fit', 'G022_mon_objt_190217T11044713.fit', '2019-02-17 11:04:47', '136430', '1');
INSERT INTO "fits_file2" VALUES ('56', '56', null, '7', null, 'G022_mon_objt_190217T11050212.fit', 'G022_mon_objt_190217T11050212.fit', '2019-02-17 11:05:02', '121206', '1');
INSERT INTO "fits_file2" VALUES ('57', '57', null, '7', null, 'G022_mon_objt_190217T11051710.fit', 'G022_mon_objt_190217T11051710.fit', '2019-02-17 11:05:17', '106569', '1');
INSERT INTO "fits_file2" VALUES ('58', '58', null, '7', null, 'G022_mon_objt_190217T11053209.fit', 'G022_mon_objt_190217T11053209.fit', '2019-02-17 11:05:32', '92369', '1');
INSERT INTO "fits_file2" VALUES ('59', '59', null, '7', null, 'G022_mon_objt_190217T11054707.fit', 'G022_mon_objt_190217T11054707.fit', '2019-02-17 11:05:47', '78040', '1');
INSERT INTO "fits_file2" VALUES ('60', '60', null, '7', null, 'G022_mon_objt_190217T11060206.fit', 'G022_mon_objt_190217T11060206.fit', '2019-02-17 11:06:02', '62555', '1');
INSERT INTO "fits_file2" VALUES ('61', '61', null, '7', null, 'G022_mon_objt_190217T11061704.fit', 'G022_mon_objt_190217T11061704.fit', '2019-02-17 11:06:17', '48239', '1');
INSERT INTO "fits_file2" VALUES ('62', '62', null, '7', null, 'G022_mon_objt_190217T11063204.fit', 'G022_mon_objt_190217T11063204.fit', '2019-02-17 11:06:32', '41313', '1');
INSERT INTO "fits_file2" VALUES ('63', '63', null, '7', null, 'G022_mon_objt_190217T11064704.fit', 'G022_mon_objt_190217T11064704.fit', '2019-02-17 11:06:47', '41343', '1');
INSERT INTO "fits_file2" VALUES ('64', '64', null, '7', null, 'G022_mon_objt_190217T11071704.fit', 'G022_mon_objt_190217T11071704.fit', '2019-02-17 11:07:17', '41334', '1');
INSERT INTO "fits_file2" VALUES ('65', '65', null, '7', null, 'G022_mon_objt_190217T11080204.fit', 'G022_mon_objt_190217T11080204.fit', '2019-02-17 11:08:02', '41331', '1');
INSERT INTO "fits_file2" VALUES ('66', '66', null, '7', null, 'G022_mon_objt_190217T11081704.fit', 'G022_mon_objt_190217T11081704.fit', '2019-02-17 11:08:17', '41338', '1');
INSERT INTO "fits_file2" VALUES ('67', '67', null, '7', null, 'G022_mon_objt_190217T11083204.fit', 'G022_mon_objt_190217T11083204.fit', '2019-02-17 11:08:32', '41347', '1');
INSERT INTO "fits_file2" VALUES ('68', '68', null, '7', null, 'G022_mon_objt_190217T11084704.fit', 'G022_mon_objt_190217T11084704.fit', '2019-02-17 11:08:47', '41333', '1');
INSERT INTO "fits_file2" VALUES ('69', '69', null, '7', null, 'G022_mon_objt_190217T11090204.fit', 'G022_mon_objt_190217T11090204.fit', '2019-02-17 11:09:02', '41322', '1');
INSERT INTO "fits_file2" VALUES ('70', '70', null, '7', null, 'G022_mon_objt_190217T11091704.fit', 'G022_mon_objt_190217T11091704.fit', '2019-02-17 11:09:17', '41332', '1');
INSERT INTO "fits_file2" VALUES ('71', '71', null, '7', null, 'G022_mon_objt_190217T11093204.fit', 'G022_mon_objt_190217T11093204.fit', '2019-02-17 11:09:32', '41310', '1');
INSERT INTO "fits_file2" VALUES ('72', '72', null, '7', null, 'G022_mon_objt_190217T11094704.fit', 'G022_mon_objt_190217T11094704.fit', '2019-02-17 11:09:47', '41355', '1');
INSERT INTO "fits_file2" VALUES ('73', '73', null, '7', null, 'G022_mon_objt_190217T11100204.fit', 'G022_mon_objt_190217T11100204.fit', '2019-02-17 11:10:02', '41368', '1');
INSERT INTO "fits_file2" VALUES ('74', '74', null, '7', null, 'G022_mon_objt_190217T11101704.fit', 'G022_mon_objt_190217T11101704.fit', '2019-02-17 11:10:17', '41315', '1');
INSERT INTO "fits_file2" VALUES ('75', '75', null, '7', null, 'G022_mon_objt_190217T11103204.fit', 'G022_mon_objt_190217T11103204.fit', '2019-02-17 11:10:32', '41326', '1');
INSERT INTO "fits_file2" VALUES ('76', '76', null, '7', null, 'G022_mon_objt_190217T11104704.fit', 'G022_mon_objt_190217T11104704.fit', '2019-02-17 11:10:47', '41361', '1');
INSERT INTO "fits_file2" VALUES ('77', '77', null, '7', null, 'G022_mon_objt_190217T11110204.fit', 'G022_mon_objt_190217T11110204.fit', '2019-02-17 11:11:02', '41358', '1');
INSERT INTO "fits_file2" VALUES ('78', '78', null, '7', null, 'G022_mon_objt_190217T11111704.fit', 'G022_mon_objt_190217T11111704.fit', '2019-02-17 11:11:17', '41355', '1');
INSERT INTO "fits_file2" VALUES ('79', '79', null, '7', null, 'G022_mon_objt_190217T11113204.fit', 'G022_mon_objt_190217T11113204.fit', '2019-02-17 11:11:32', '41312', '1');
INSERT INTO "fits_file2" VALUES ('80', '80', null, '7', null, 'G022_mon_objt_190217T11114704.fit', 'G022_mon_objt_190217T11114704.fit', '2019-02-17 11:11:47', '41363', '1');
INSERT INTO "fits_file2" VALUES ('81', '81', null, '7', null, 'G022_mon_objt_190217T11120204.fit', 'G022_mon_objt_190217T11120204.fit', '2019-02-17 11:12:02', '41268', '1');
INSERT INTO "fits_file2" VALUES ('82', '82', null, '7', null, 'G022_mon_objt_190217T11121704.fit', 'G022_mon_objt_190217T11121704.fit', '2019-02-17 11:12:17', '41353', '1');
INSERT INTO "fits_file2" VALUES ('83', '83', null, '7', null, 'G022_mon_objt_190217T11123204.fit', 'G022_mon_objt_190217T11123204.fit', '2019-02-17 11:12:32', '41341', '1');
INSERT INTO "fits_file2" VALUES ('84', '84', null, '7', null, 'G022_mon_objt_190217T11124704.fit', 'G022_mon_objt_190217T11124704.fit', '2019-02-17 11:12:47', '41332', '1');
INSERT INTO "fits_file2" VALUES ('85', '85', null, '7', null, 'G022_mon_objt_190217T11130204.fit', 'G022_mon_objt_190217T11130204.fit', '2019-02-17 11:13:02', '41343', '1');
INSERT INTO "fits_file2" VALUES ('86', '86', null, '7', null, 'G022_mon_objt_190217T11131704.fit', 'G022_mon_objt_190217T11131704.fit', '2019-02-17 11:13:17', '41329', '1');
INSERT INTO "fits_file2" VALUES ('87', '87', null, '7', null, 'G022_mon_objt_190217T11133204.fit', 'G022_mon_objt_190217T11133204.fit', '2019-02-17 11:13:32', '41337', '1');
INSERT INTO "fits_file2" VALUES ('88', '88', null, '7', null, 'G022_mon_objt_190217T11134704.fit', 'G022_mon_objt_190217T11134704.fit', '2019-02-17 11:13:47', '41239', '1');
INSERT INTO "fits_file2" VALUES ('89', '89', null, '7', null, 'G022_mon_objt_190217T11140204.fit', 'G022_mon_objt_190217T11140204.fit', '2019-02-17 11:14:02', '41257', '1');
INSERT INTO "fits_file2" VALUES ('90', '90', null, '7', null, 'G022_mon_objt_190217T11141704.fit', 'G022_mon_objt_190217T11141704.fit', '2019-02-17 11:14:17', '41334', '1');
INSERT INTO "fits_file2" VALUES ('91', '91', null, '7', null, 'G022_mon_objt_190217T11144704.fit', 'G022_mon_objt_190217T11144704.fit', '2019-02-17 11:14:47', '41259', '1');
INSERT INTO "fits_file2" VALUES ('92', '92', null, '7', null, 'G022_mon_objt_190217T11150204.fit', 'G022_mon_objt_190217T11150204.fit', '2019-02-17 11:15:02', '41268', '1');
INSERT INTO "fits_file2" VALUES ('93', '93', null, '7', null, 'G022_mon_objt_190217T11151704.fit', 'G022_mon_objt_190217T11151704.fit', '2019-02-17 11:15:17', '41270', '1');
INSERT INTO "fits_file2" VALUES ('94', '94', null, '7', null, 'G022_mon_objt_190217T11154704.fit', 'G022_mon_objt_190217T11154704.fit', '2019-02-17 11:15:47', '41368', '1');
INSERT INTO "fits_file2" VALUES ('95', '95', null, '7', null, 'G022_mon_objt_190217T11160204.fit', 'G022_mon_objt_190217T11160204.fit', '2019-02-17 11:16:02', '41350', '1');
INSERT INTO "fits_file2" VALUES ('96', '96', null, '7', null, 'G022_mon_objt_190217T11161704.fit', 'G022_mon_objt_190217T11161704.fit', '2019-02-17 11:16:17', '41368', '1');
INSERT INTO "fits_file2" VALUES ('97', '97', null, '7', null, 'G022_mon_objt_190217T11163204.fit', 'G022_mon_objt_190217T11163204.fit', '2019-02-17 11:16:32', '41339', '1');
INSERT INTO "fits_file2" VALUES ('98', '98', null, '7', null, 'G022_mon_objt_190217T11164704.fit', 'G022_mon_objt_190217T11164704.fit', '2019-02-17 11:16:47', '41349', '1');
INSERT INTO "fits_file2" VALUES ('99', '99', null, '7', null, 'G022_mon_objt_190217T11170204.fit', 'G022_mon_objt_190217T11170204.fit', '2019-02-17 11:17:02', '41353', '1');
INSERT INTO "fits_file2" VALUES ('100', '100', null, '7', null, 'G022_mon_objt_190217T11171704.fit', 'G022_mon_objt_190217T11171704.fit', '2019-02-17 11:17:17', '41327', '1');
INSERT INTO "fits_file2" VALUES ('101', '101', null, '7', null, 'G022_mon_objt_190217T11173204.fit', 'G022_mon_objt_190217T11173204.fit', '2019-02-17 11:17:32', '41301', '1');
INSERT INTO "fits_file2" VALUES ('102', '102', null, '7', null, 'G022_mon_objt_190217T11174704.fit', 'G022_mon_objt_190217T11174704.fit', '2019-02-17 11:17:47', '41361', '1');
INSERT INTO "fits_file2" VALUES ('103', '103', null, '7', null, 'G022_mon_objt_190217T11180204.fit', 'G022_mon_objt_190217T11180204.fit', '2019-02-17 11:18:02', '41322', '1');
INSERT INTO "fits_file2" VALUES ('104', '104', null, '7', null, 'G022_mon_objt_190217T11181704.fit', 'G022_mon_objt_190217T11181704.fit', '2019-02-17 11:18:17', '41360', '1');
INSERT INTO "fits_file2" VALUES ('105', '105', null, '7', null, 'G022_mon_objt_190217T11183204.fit', 'G022_mon_objt_190217T11183204.fit', '2019-02-17 11:18:32', '41364', '1');
INSERT INTO "fits_file2" VALUES ('106', '106', null, '7', null, 'G022_mon_objt_190217T11184704.fit', 'G022_mon_objt_190217T11184704.fit', '2019-02-17 11:18:47', '41334', '1');
INSERT INTO "fits_file2" VALUES ('107', '107', null, '7', null, 'G022_mon_objt_190217T11190204.fit', 'G022_mon_objt_190217T11190204.fit', '2019-02-17 11:19:02', '41260', '1');
INSERT INTO "fits_file2" VALUES ('108', '108', null, '7', null, 'G022_mon_objt_190217T11191704.fit', 'G022_mon_objt_190217T11191704.fit', '2019-02-17 11:19:17', '41345', '1');
INSERT INTO "fits_file2" VALUES ('109', '109', null, '7', null, 'G022_mon_objt_190217T11193204.fit', 'G022_mon_objt_190217T11193204.fit', '2019-02-17 11:19:32', '41256', '1');
INSERT INTO "fits_file2" VALUES ('110', '110', null, '7', null, 'G022_mon_objt_190217T11194704.fit', 'G022_mon_objt_190217T11194704.fit', '2019-02-17 11:19:47', '41274', '1');
INSERT INTO "fits_file2" VALUES ('111', '111', null, '7', null, 'G022_mon_objt_190217T11200204.fit', 'G022_mon_objt_190217T11200204.fit', '2019-02-17 11:20:02', '41363', '1');
INSERT INTO "fits_file2" VALUES ('112', '112', null, '7', null, 'G022_mon_objt_190217T11201704.fit', 'G022_mon_objt_190217T11201704.fit', '2019-02-17 11:20:17', '41288', '1');
INSERT INTO "fits_file2" VALUES ('113', '113', null, '7', null, 'G022_mon_objt_190217T11203204.fit', 'G022_mon_objt_190217T11203204.fit', '2019-02-17 11:20:32', '41343', '1');
INSERT INTO "fits_file2" VALUES ('114', '114', null, '7', null, 'G022_mon_objt_190217T11204704.fit', 'G022_mon_objt_190217T11204704.fit', '2019-02-17 11:20:47', '41351', '1');
INSERT INTO "fits_file2" VALUES ('115', '115', null, '7', null, 'G022_mon_objt_190217T11210204.fit', 'G022_mon_objt_190217T11210204.fit', '2019-02-17 11:21:02', '41245', '1');
INSERT INTO "fits_file2" VALUES ('116', '116', null, '7', null, 'G022_mon_objt_190217T11211704.fit', 'G022_mon_objt_190217T11211704.fit', '2019-02-17 11:21:17', '41351', '1');
INSERT INTO "fits_file2" VALUES ('117', '117', null, '7', null, 'G022_mon_objt_190217T11214714.fit', 'G022_mon_objt_190217T11214714.fit', '2019-02-17 11:21:47', '143992', '1');
INSERT INTO "fits_file2" VALUES ('118', '118', null, '7', null, 'G022_mon_objt_190217T11220212.fit', 'G022_mon_objt_190217T11220212.fit', '2019-02-17 11:22:02', '129365', '1');
INSERT INTO "fits_file2" VALUES ('119', '119', null, '7', null, 'G022_mon_objt_190217T11221711.fit', 'G022_mon_objt_190217T11221711.fit', '2019-02-17 11:22:17', '115088', '1');
INSERT INTO "fits_file2" VALUES ('120', '120', null, '7', null, 'G022_mon_objt_190217T11223209.fit', 'G022_mon_objt_190217T11223209.fit', '2019-02-17 11:22:32', '99541', '1');
INSERT INTO "fits_file2" VALUES ('121', '121', null, '7', null, 'G022_mon_objt_190217T11230207.fit', 'G022_mon_objt_190217T11230207.fit', '2019-02-17 11:23:02', '70913', '1');
INSERT INTO "fits_file2" VALUES ('122', '122', null, '7', null, 'G022_mon_objt_190217T11231705.fit', 'G022_mon_objt_190217T11231705.fit', '2019-02-17 11:23:17', '56694', '1');
INSERT INTO "fits_file2" VALUES ('123', '123', null, '7', null, 'G022_mon_objt_190217T11233204.fit', 'G022_mon_objt_190217T11233204.fit', '2019-02-17 11:23:32', '41374', '1');
INSERT INTO "fits_file2" VALUES ('124', '124', null, '7', null, 'G022_mon_objt_190217T11240204.fit', 'G022_mon_objt_190217T11240204.fit', '2019-02-17 11:24:02', '41329', '1');
INSERT INTO "fits_file2" VALUES ('125', '125', null, '7', null, 'G022_mon_objt_190217T11241704.fit', 'G022_mon_objt_190217T11241704.fit', '2019-02-17 11:24:17', '41351', '1');
INSERT INTO "fits_file2" VALUES ('126', '126', null, '7', null, 'G022_mon_objt_190217T11243204.fit', 'G022_mon_objt_190217T11243204.fit', '2019-02-17 11:24:32', '41298', '1');
INSERT INTO "fits_file2" VALUES ('127', '127', null, '7', null, 'G022_mon_objt_190217T11244704.fit', 'G022_mon_objt_190217T11244704.fit', '2019-02-17 11:24:47', '41330', '1');
INSERT INTO "fits_file2" VALUES ('128', '128', null, '7', null, 'G022_mon_objt_190217T11250204.fit', 'G022_mon_objt_190217T11250204.fit', '2019-02-17 11:25:02', '41339', '1');
INSERT INTO "fits_file2" VALUES ('129', '129', null, '7', null, 'G022_mon_objt_190217T11251704.fit', 'G022_mon_objt_190217T11251704.fit', '2019-02-17 11:25:17', '41325', '1');
INSERT INTO "fits_file2" VALUES ('130', '130', null, '7', null, 'G022_mon_objt_190217T11253204.fit', 'G022_mon_objt_190217T11253204.fit', '2019-02-17 11:25:32', '41339', '1');
INSERT INTO "fits_file2" VALUES ('131', '131', null, '7', null, 'G022_mon_objt_190217T11254704.fit', 'G022_mon_objt_190217T11254704.fit', '2019-02-17 11:25:47', '41342', '1');
INSERT INTO "fits_file2" VALUES ('132', '132', null, '7', null, 'G022_mon_objt_190217T11261704.fit', 'G022_mon_objt_190217T11261704.fit', '2019-02-17 11:26:17', '41348', '1');
INSERT INTO "fits_file2" VALUES ('133', '133', null, '7', null, 'G022_mon_objt_190217T11263204.fit', 'G022_mon_objt_190217T11263204.fit', '2019-02-17 11:26:32', '41332', '1');
INSERT INTO "fits_file2" VALUES ('134', '134', null, '7', null, 'G022_mon_objt_190217T11264704.fit', 'G022_mon_objt_190217T11264704.fit', '2019-02-17 11:26:47', '41329', '1');
INSERT INTO "fits_file2" VALUES ('135', '135', null, '7', null, 'G022_mon_objt_190217T11270204.fit', 'G022_mon_objt_190217T11270204.fit', '2019-02-17 11:27:02', '41359', '1');
INSERT INTO "fits_file2" VALUES ('136', '136', null, '7', null, 'G022_mon_objt_190217T11271704.fit', 'G022_mon_objt_190217T11271704.fit', '2019-02-17 11:27:17', '41372', '1');
INSERT INTO "fits_file2" VALUES ('137', '137', null, '7', null, 'G022_mon_objt_190217T11273204.fit', 'G022_mon_objt_190217T11273204.fit', '2019-02-17 11:27:32', '41356', '1');
INSERT INTO "fits_file2" VALUES ('138', '138', null, '7', null, 'G022_mon_objt_190217T11274704.fit', 'G022_mon_objt_190217T11274704.fit', '2019-02-17 11:27:47', '41259', '1');
INSERT INTO "fits_file2" VALUES ('139', '139', null, '7', null, 'G022_mon_objt_190217T11280204.fit', 'G022_mon_objt_190217T11280204.fit', '2019-02-17 11:28:02', '41355', '1');
INSERT INTO "fits_file2" VALUES ('140', '140', null, '7', null, 'G022_mon_objt_190217T11281704.fit', 'G022_mon_objt_190217T11281704.fit', '2019-02-17 11:28:17', '41317', '1');
INSERT INTO "fits_file2" VALUES ('141', '141', null, '7', null, 'G022_mon_objt_190217T11283204.fit', 'G022_mon_objt_190217T11283204.fit', '2019-02-17 11:28:32', '41346', '1');
INSERT INTO "fits_file2" VALUES ('142', '142', null, '7', null, 'G022_mon_objt_190217T11284704.fit', 'G022_mon_objt_190217T11284704.fit', '2019-02-17 11:28:47', '41333', '1');
INSERT INTO "fits_file2" VALUES ('143', '143', null, '7', null, 'G022_mon_objt_190217T11290204.fit', 'G022_mon_objt_190217T11290204.fit', '2019-02-17 11:29:02', '41272', '1');
INSERT INTO "fits_file2" VALUES ('144', '144', null, '7', null, 'G022_mon_objt_190217T11291704.fit', 'G022_mon_objt_190217T11291704.fit', '2019-02-17 11:29:17', '41285', '1');
INSERT INTO "fits_file2" VALUES ('145', '145', null, '7', null, 'G022_mon_objt_190217T11293204.fit', 'G022_mon_objt_190217T11293204.fit', '2019-02-17 11:29:32', '41322', '1');
INSERT INTO "fits_file2" VALUES ('146', '146', null, '7', null, 'G022_mon_objt_190217T11294704.fit', 'G022_mon_objt_190217T11294704.fit', '2019-02-17 11:29:47', '41353', '1');
INSERT INTO "fits_file2" VALUES ('147', '1', null, '7', null, 'G022_mon_objt_190217T11501704.fit', '/home/xy/Downloads/myresource/test', null, '123456', '1');
INSERT INTO "fits_file2" VALUES ('148', '2', null, '7', null, 'G022_mon_objt_190217T12501704.fit', '/home/xy/Downloads/myresource/test/', '2019-09-26 19:12:25', '123456', '1');
COMMIT;

-- ----------------------------
-- Table structure for fits_file2_his
-- ----------------------------
DROP TABLE IF EXISTS "fits_file2_his";
CREATE TABLE "fits_file2_his" (
"ff_id" int8 NOT NULL,
"ff_number" int4,
"mount_id" int4,
"cam_id" int4,
"sky_id" int4,
"img_name" varchar COLLATE "default",
"img_path" varchar COLLATE "default",
"gen_time" timestamp(6),
"time_sub_second" int4 DEFAULT 0,
"status" char(1) COLLATE "default" DEFAULT 1
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of fits_file2_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_fitsfile
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_fitsfile";
CREATE TABLE "follow_up_fitsfile" (
"fuf_id" int8 DEFAULT nextval('fuf_id_seq'::regclass) NOT NULL,
"ff_name" varchar(255) COLLATE "default",
"ff_path" varchar(255) COLLATE "default",
"fo_id" int4,
"is_upload" bool DEFAULT false
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_fitsfile
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_object
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_object";
CREATE TABLE "follow_up_object" (
"fuo_id" int8 DEFAULT nextval('fuo_id_seq'::regclass) NOT NULL,
"fuo_name" varchar(16) COLLATE "default",
"fuo_type_id" int2,
"start_time_utc" timestamp(6),
"last_ra" float4,
"last_dec" float4,
"last_x" float4,
"last_y" float4,
"found_serial_number" int4 DEFAULT 0,
"fo_id" int8,
"ot_id" int8,
"record_total" int4 DEFAULT 0,
"found_mag" float4,
"b2" float4,
"r2" float4,
"i" float4,
"last_mag" float4,
"last_time_utc" timestamp(6),
"last_serial_number" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_object
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_object_his
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_object_his";
CREATE TABLE "follow_up_object_his" (
"fuo_id" int8 DEFAULT nextval('fuo_id_seq'::regclass) NOT NULL,
"fuo_name" varchar(16) COLLATE "default",
"fuo_type_id" int2,
"start_time_utc" timestamp(6),
"last_ra" float4,
"last_dec" float4,
"last_x" float4,
"last_y" float4,
"found_serial_number" int4 DEFAULT 0,
"fo_id" int8,
"ot_id" int8,
"record_total" int4,
"found_mag" float4,
"b2" float4,
"r2" float4,
"i" float4,
"last_mag" float4,
"last_time_utc" timestamp(6),
"last_serial_number" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_object_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_object_type
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_object_type";
CREATE TABLE "follow_up_object_type" (
"fuo_type_id" int2 DEFAULT nextval('fuo_type_id_seq'::regclass) NOT NULL,
"fuo_type_name" varchar(16) COLLATE "default",
"fuo_type_comment" varchar COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_object_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_observation
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_observation";
CREATE TABLE "follow_up_observation" (
"fo_id" int8 DEFAULT nextval('fo_id_seq'::regclass) NOT NULL,
"fo_name" char(20) COLLATE "default",
"ot_id" int8,
"user_id" int4,
"ra" float4,
"dec" float4,
"epoch" varchar(10) COLLATE "default",
"image_type" varchar(10) COLLATE "default",
"expose_duration" int2,
"frame_count" int2,
"filter" varchar(10) COLLATE "default",
"priority" int2,
"trigger_time" timestamp(6),
"back_image_count" int4 DEFAULT 0,
"fo_parm_file" varchar(255) COLLATE "default",
"fo_obj_count" int2 DEFAULT 0,
"trigger_type" char(1) COLLATE "default",
"telescope_id" int2,
"begin_time" timestamp(6),
"end_time" timestamp(6),
"execute_status" char(1) COLLATE "default" DEFAULT 0,
"process_result" char(1) COLLATE "default" DEFAULT ''::character varying,
"comment" varchar(1024) COLLATE "default",
"obj_name" varchar(255) COLLATE "default" DEFAULT ''::character varying,
"so_id" int8,
"auto_loop" int4,
"limit_mag" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_observation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_record
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_record";
CREATE TABLE "follow_up_record" (
"fr_id" int8 DEFAULT nextval('fr_id_seq'::regclass) NOT NULL,
"fo_id" int8,
"fr_obj_id" int2,
"date_utc" timestamp(6),
"ra" float4,
"dec" float4,
"x" float4,
"y" float4,
"mag_cal_usno" float4,
"mag_err" float4,
"ellipticity" float4,
"class_star" float4,
"fwhm" float4,
"flag" int2,
"b2" float4,
"r2" float4,
"i" float4,
"fuf_id" int8,
"filter" varchar(10) COLLATE "default",
"fu_serial_number" int4,
"fuo_type_id" int2,
"fuo_id" int8,
"distance" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for follow_up_record_his
-- ----------------------------
DROP TABLE IF EXISTS "follow_up_record_his";
CREATE TABLE "follow_up_record_his" (
"fr_id" int8 DEFAULT nextval('fr_id_seq'::regclass) NOT NULL,
"fo_id" int8,
"fr_obj_id" int2,
"date_utc" timestamp(6),
"ra" float4,
"dec" float4,
"x" float4,
"y" float4,
"mag_cal_usno" float4,
"mag_err" float4,
"ellipticity" float4,
"class_star" float4,
"fwhm" float4,
"flag" int2,
"b2" float4,
"r2" float4,
"i" float4,
"fuf_id" int8,
"filter" varchar(10) COLLATE "default",
"fu_serial_number" int4,
"fuo_type_id" int2,
"fuo_id" int8,
"distance" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of follow_up_record_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for gimbal
-- ----------------------------
DROP TABLE IF EXISTS "gimbal";
CREATE TABLE "gimbal" (
"gmb_id" int2 DEFAULT nextval('gmb_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"ra" float4,
"dec" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of gimbal
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for grb
-- ----------------------------
DROP TABLE IF EXISTS "grb";
CREATE TABLE "grb" (
"grb_id" int8 DEFAULT nextval('grb_id_seq'::regclass) NOT NULL,
"grb_name" varchar(255) COLLATE "default",
"trigger_time" timestamp(6),
"trigger_type" varchar(255) COLLATE "default",
"trigger_name" varchar(255) COLLATE "default",
"trigger_ra" float4,
"trigger_dec" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of grb
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for image_status_parameter
-- ----------------------------
DROP TABLE IF EXISTS "image_status_parameter";
CREATE TABLE "image_status_parameter" (
"isp_id" int8 DEFAULT nextval('isp_id_seq'::regclass) NOT NULL,
"time_obs_ut" timestamp(6),
"obj_num" int4,
"bg_bright" float4,
"fwhm" float4,
"s2n" float4,
"avg_limit" float4,
"extinc" float4,
"xshift" float4,
"yshift" float4,
"xrms" float4,
"yrms" float4,
"ot1_num" int4,
"var1_num" int4,
"ff_id" int8,
"mount_ra" float4,
"mount_dec" float4,
"proc_stage_id" int2,
"proc_time" float4,
"avg_ellipticity" float4,
"temperature_set" float4,
"temperature_actual" float4,
"dpm_id" int4,
"prc_num" int4,
"exposure_time" float4,
"img_center_ra" float4,
"img_center_dec" float4,
"proc_end_time" timestamp(6),
"send_success" bool,
"astro_flag" int4,
"template_path" varchar COLLATE "default",
"time_sub_second" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of image_status_parameter
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for image_status_parameter_his
-- ----------------------------
DROP TABLE IF EXISTS "image_status_parameter_his";
CREATE TABLE "image_status_parameter_his" (
"isp_id" int8 NOT NULL,
"time_obs_ut" timestamp(6),
"obj_num" int4,
"bg_bright" float4,
"fwhm" float4,
"s2n" float4,
"avg_limit" float4,
"extinc" float4,
"xshift" float4,
"yshift" float4,
"xrms" float4,
"yrms" float4,
"ot1_num" int4,
"var1_num" int4,
"ff_id" int8,
"mount_ra" float4,
"mount_dec" float4,
"proc_stage_id" int2,
"proc_time" float4,
"avg_ellipticity" float4,
"temperature_set" float4,
"temperature_actual" float4,
"dpm_id" int4,
"prc_num" int4,
"exposure_time" float4,
"img_center_ra" float4,
"img_center_dec" float4,
"proc_end_time" timestamp(6),
"send_success" bool,
"astro_flag" int4,
"template_path" varchar COLLATE "default",
"time_sub_second" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of image_status_parameter_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for manual_upload_file
-- ----------------------------
DROP TABLE IF EXISTS "manual_upload_file";
CREATE TABLE "manual_upload_file" (
"muf_id" int8 DEFAULT nextval('muf_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"ui_id" int4 DEFAULT 0,
"status" int4 DEFAULT 1,
"comments" varchar(1024) COLLATE "default",
"time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of manual_upload_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for match_table
-- ----------------------------
DROP TABLE IF EXISTS "match_table";
CREATE TABLE "match_table" (
"mt_id" int2 DEFAULT nextval('mt_id_seq'::regclass) NOT NULL,
"match_type_name" varchar(255) COLLATE "default",
"match_table_name" varchar(64) COLLATE "default",
"comments" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of match_table
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for moon_phase
-- ----------------------------
DROP TABLE IF EXISTS "moon_phase";
CREATE TABLE "moon_phase" (
"mp_id" int8 DEFAULT nextval('mp_id_seq'::regclass) NOT NULL,
"time_utc" timestamp(6),
"ra" float8,
"dec" float8,
"phase" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of moon_phase
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mount
-- ----------------------------
DROP TABLE IF EXISTS "mount";
CREATE TABLE "mount" (
"mount_id" int4 DEFAULT nextval('mount_id_seq'::regclass) NOT NULL,
"name" varchar(128) COLLATE "default",
"unit_id" char(3) COLLATE "default",
"group_id" char(3) COLLATE "default",
"comment" varchar(1024) COLLATE "default",
"sky_name" varchar(128) COLLATE "default" DEFAULT ''::character varying,
"ra" float8 DEFAULT 0,
"dec" float8 DEFAULT 0,
"obs_type" varchar(128) COLLATE "default" DEFAULT ''::character varying,
"time_utc" timestamp(6) DEFAULT now(),
"errcode" int4,
"obj_ra" float8,
"obj_dec" float8,
"op_sn" int8,
"state" int4,
"linked" int4,
"azi" float8,
"alt" float8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of mount
-- ----------------------------
BEGIN;
INSERT INTO "mount" VALUES ('1', null, '001', '002', null, '', '13.4', '15.2', '', '2019-09-25 17:04:25', '11', null, null, null, '3', '0', '12.1', '1.2');
INSERT INTO "mount" VALUES ('2', null, '002', '002', null, '', '63.1', '77.2', '', '2019-09-21 18:12:34', '11', null, null, null, '1', '0', '10.2', '1.5');
INSERT INTO "mount" VALUES ('3', null, '003', '002', null, '', '0', '0', '', '2020-07-20 09:57:38.251208', null, null, null, null, null, '0', null, null);
INSERT INTO "mount" VALUES ('4', null, '004', '002', null, '', '0', '0', '', '2020-07-20 09:57:47.161357', null, null, null, null, null, '0', null, null);
COMMIT;

-- ----------------------------
-- Table structure for mount_monitor
-- ----------------------------
DROP TABLE IF EXISTS "mount_monitor";
CREATE TABLE "mount_monitor" (
"mm_id" int8 DEFAULT nextval('mm_id_seq'::regclass) NOT NULL,
"mount_id" int4,
"time_utc" timestamp(6) DEFAULT now(),
"state" char(1) COLLATE "default",
"errcode" int2,
"ra" float4,
"dec" float4,
"obj_ra" float4,
"obj_dec" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of mount_monitor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for mount_state
-- ----------------------------
DROP TABLE IF EXISTS "mount_state";
CREATE TABLE "mount_state" (
"mount_status_id" int8 DEFAULT nextval('mount_status_id_seq'::regclass) NOT NULL,
"mount_id" int8,
"ctime" timestamp(6),
"state" int4,
"errcode" int4,
"ra" float8,
"dec" float8,
"azi" float8,
"alt" float8,
"group_id" char(3) COLLATE "default",
"unit_id" char(3) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of mount_state
-- ----------------------------
BEGIN;
INSERT INTO "mount_state" VALUES ('1', '21', null, '2', '10', '63.1', '77.2', null, null, '001', '002');
INSERT INTO "mount_state" VALUES ('2', '21', '2019-09-19 18:00:00', '2', '10', '63.1', '77.2', null, null, '001', '002');
INSERT INTO "mount_state" VALUES ('3', '21', '2019-09-19 18:00:00', '2', '10', '63.1', '77.2', '10.2', null, '001', '002');
INSERT INTO "mount_state" VALUES ('4', '21', '2019-09-19 18:00:00', '2', '10', '63.1', '77.2', '10.2', '1.5', '001', '002');
INSERT INTO "mount_state" VALUES ('5', '21', '2019-09-19 18:12:34', '2', '10', '63.1', '77.2', '10.2', '1.5', '001', '002');
INSERT INTO "mount_state" VALUES ('6', '21', '2019-09-19 18:12:34', '2', '10', '63.1', '77.2', '10.2', '1.5', '001', '002');
INSERT INTO "mount_state" VALUES ('7', '21', '2019-09-20 18:12:34', '2', '10', '63.1', '77.2', '10.2', '1.5', '001', '002');
INSERT INTO "mount_state" VALUES ('8', '21', null, '3', '11', '13.4', '15.2', '12.1', '1.2', '001', '002');
INSERT INTO "mount_state" VALUES ('9', '21', '2019-09-25 17:04:25', '3', '11', '13.4', '15.2', '12.1', '1.2', '001', '002');
INSERT INTO "mount_state" VALUES ('10', '21', '2019-09-25 17:04:25', '3', '11', '13.4', '15.2', '12.1', '1.2', '001', '002');
INSERT INTO "mount_state" VALUES ('11', '21', '2019-09-25 17:04:25', '3', '11', '13.4', '15.2', '12.1', '1.2', '001', '002');
INSERT INTO "mount_state" VALUES ('12', '22', '2019-09-21 18:12:34', '0', '11', '63.1', '77.2', '10.2', '1.5', '001', '001');
INSERT INTO "mount_state" VALUES ('13', '22', '2019-09-21 18:12:34', '0', '11', '63.1', '77.2', '10.2', '1.5', '001', '001');
INSERT INTO "mount_state" VALUES ('14', '22', '2019-09-21 18:12:34', '0', '11', '63.1', '77.2', '10.2', '1.5', '001', '001');
INSERT INTO "mount_state" VALUES ('15', '22', '2019-09-21 18:12:34', '1', '11', '63.1', '77.2', '10.2', '1.5', '001', '001');
INSERT INTO "mount_state" VALUES ('16', '22', '2019-09-21 18:12:34', '1', '11', '63.1', '77.2', '10.2', '1.5', '001', '001');
COMMIT;

-- ----------------------------
-- Table structure for move_object
-- ----------------------------
DROP TABLE IF EXISTS "move_object";
CREATE TABLE "move_object" (
"mov_id" int8 DEFAULT nextval('mov_id_seq'::regclass) NOT NULL,
"first_frame_num" int4,
"last_frame_num" int4,
"first_frame_time" timestamp(6),
"last_frame_time" timestamp(6),
"total_frame_number" int4,
"avg_frame_point_number" float4,
"comment" varchar COLLATE "default",
"mov_type" char(1) COLLATE "default" DEFAULT '0'::bpchar,
"date_str" char(6) COLLATE "default",
"sky_id" int4,
"dpm_id" int4,
"point_number" int4,
"frame_point_max_number" int4,
"frame_point_multi_number" int4,
"pos_diff_sigma" float4,
"pos_diff_max" float4,
"pos_diff_mean" float4,
"tra_diff_sigma" float4,
"tra_diff_max" float4,
"tra_diff_mean" float4,
"tdec_diff_sigma" float4,
"tdec_diff_max" float4,
"tdec_diff_mean" float4,
"pos_polyn0" float4,
"pos_polyn1" float4,
"pos_polyn2" float4,
"tra_polyn0" float4,
"tra_polyn1" float4,
"tra_polyn2" float4,
"tdec_polyn0" float4,
"tdec_polyn1" float4,
"tdec_polyn2" float4,
"today_mov_id" int4 DEFAULT 0,
"name" varchar(32) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of move_object
-- ----------------------------
BEGIN;
INSERT INTO "move_object" VALUES ('6', null, null, null, null, null, null, null, null, '190217', null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', 'M190217_00006');
COMMIT;

-- ----------------------------
-- Table structure for move_object_record
-- ----------------------------
DROP TABLE IF EXISTS "move_object_record";
CREATE TABLE "move_object_record" (
"oor_id" int8 NOT NULL,
"ff_id" int8,
"obj_day_num" int4,
"rec_file_num" int4,
"mov_id" int8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of move_object_record
-- ----------------------------
BEGIN;
INSERT INTO "move_object_record" VALUES ('159', '2', '2', '5', '6');
INSERT INTO "move_object_record" VALUES ('160', '3', '2', '6', '6');
INSERT INTO "move_object_record" VALUES ('161', '4', '2', '7', '6');
INSERT INTO "move_object_record" VALUES ('162', '5', '2', '8', '6');
INSERT INTO "move_object_record" VALUES ('163', '6', '2', '9', '6');
INSERT INTO "move_object_record" VALUES ('164', '7', '2', '10', '6');
INSERT INTO "move_object_record" VALUES ('165', '8', '2', '11', '6');
INSERT INTO "move_object_record" VALUES ('166', '9', '2', '12', '6');
INSERT INTO "move_object_record" VALUES ('167', '10', '2', '13', '6');
INSERT INTO "move_object_record" VALUES ('168', '11', '2', '14', '6');
INSERT INTO "move_object_record" VALUES ('169', '12', '2', '15', '6');
INSERT INTO "move_object_record" VALUES ('170', '13', '2', '16', '6');
INSERT INTO "move_object_record" VALUES ('171', '14', '2', '17', '6');
INSERT INTO "move_object_record" VALUES ('172', '15', '2', '18', '6');
INSERT INTO "move_object_record" VALUES ('173', '16', '2', '24', '6');
INSERT INTO "move_object_record" VALUES ('174', '17', '2', '25', '6');
INSERT INTO "move_object_record" VALUES ('175', '18', '2', '26', '6');
INSERT INTO "move_object_record" VALUES ('176', '19', '2', '27', '6');
INSERT INTO "move_object_record" VALUES ('177', '20', '2', '28', '6');
INSERT INTO "move_object_record" VALUES ('178', '21', '2', '29', '6');
INSERT INTO "move_object_record" VALUES ('179', '22', '2', '30', '6');
INSERT INTO "move_object_record" VALUES ('180', '23', '2', '31', '6');
INSERT INTO "move_object_record" VALUES ('181', '24', '2', '32', '6');
INSERT INTO "move_object_record" VALUES ('182', '25', '2', '33', '6');
INSERT INTO "move_object_record" VALUES ('183', '26', '2', '34', '6');
INSERT INTO "move_object_record" VALUES ('184', '27', '2', '35', '6');
INSERT INTO "move_object_record" VALUES ('185', '28', '2', '36', '6');
INSERT INTO "move_object_record" VALUES ('186', '29', '2', '37', '6');
INSERT INTO "move_object_record" VALUES ('187', '30', '2', '38', '6');
INSERT INTO "move_object_record" VALUES ('188', '31', '2', '39', '6');
INSERT INTO "move_object_record" VALUES ('189', '32', '2', '40', '6');
INSERT INTO "move_object_record" VALUES ('190', '33', '2', '41', '6');
INSERT INTO "move_object_record" VALUES ('191', '34', '2', '42', '6');
INSERT INTO "move_object_record" VALUES ('192', '35', '2', '43', '6');
INSERT INTO "move_object_record" VALUES ('193', '36', '2', '44', '6');
INSERT INTO "move_object_record" VALUES ('194', '37', '2', '45', '6');
INSERT INTO "move_object_record" VALUES ('195', '38', '2', '46', '6');
INSERT INTO "move_object_record" VALUES ('196', '39', '2', '47', '6');
INSERT INTO "move_object_record" VALUES ('197', '40', '2', '48', '6');
INSERT INTO "move_object_record" VALUES ('198', '41', '2', '49', '6');
INSERT INTO "move_object_record" VALUES ('199', '42', '2', '50', '6');
INSERT INTO "move_object_record" VALUES ('200', '43', '2', '51', '6');
INSERT INTO "move_object_record" VALUES ('201', '44', '2', '52', '6');
INSERT INTO "move_object_record" VALUES ('202', '45', '2', '53', '6');
INSERT INTO "move_object_record" VALUES ('203', '46', '2', '54', '6');
INSERT INTO "move_object_record" VALUES ('204', '47', '2', '55', '6');
INSERT INTO "move_object_record" VALUES ('205', '48', '2', '56', '6');
INSERT INTO "move_object_record" VALUES ('206', '49', '2', '57', '6');
INSERT INTO "move_object_record" VALUES ('207', '50', '2', '58', '6');
INSERT INTO "move_object_record" VALUES ('208', '51', '2', '59', '6');
INSERT INTO "move_object_record" VALUES ('209', '52', '2', '60', '6');
INSERT INTO "move_object_record" VALUES ('210', '53', '2', '61', '6');
INSERT INTO "move_object_record" VALUES ('211', '54', '2', '62', '6');
INSERT INTO "move_object_record" VALUES ('212', '55', '2', '63', '6');
INSERT INTO "move_object_record" VALUES ('213', '56', '2', '64', '6');
INSERT INTO "move_object_record" VALUES ('214', '57', '2', '65', '6');
INSERT INTO "move_object_record" VALUES ('215', '58', '2', '66', '6');
INSERT INTO "move_object_record" VALUES ('216', '59', '2', '67', '6');
INSERT INTO "move_object_record" VALUES ('217', '60', '2', '68', '6');
INSERT INTO "move_object_record" VALUES ('218', '61', '2', '69', '6');
INSERT INTO "move_object_record" VALUES ('219', '62', '2', '70', '6');
INSERT INTO "move_object_record" VALUES ('220', '63', '2', '71', '6');
INSERT INTO "move_object_record" VALUES ('221', '64', '2', '73', '6');
INSERT INTO "move_object_record" VALUES ('222', '65', '2', '76', '6');
INSERT INTO "move_object_record" VALUES ('223', '66', '2', '77', '6');
INSERT INTO "move_object_record" VALUES ('224', '67', '2', '78', '6');
INSERT INTO "move_object_record" VALUES ('225', '68', '2', '79', '6');
INSERT INTO "move_object_record" VALUES ('226', '69', '2', '80', '6');
INSERT INTO "move_object_record" VALUES ('227', '70', '2', '81', '6');
INSERT INTO "move_object_record" VALUES ('228', '71', '2', '82', '6');
INSERT INTO "move_object_record" VALUES ('229', '72', '2', '83', '6');
INSERT INTO "move_object_record" VALUES ('230', '73', '2', '84', '6');
INSERT INTO "move_object_record" VALUES ('231', '74', '2', '85', '6');
INSERT INTO "move_object_record" VALUES ('232', '75', '2', '86', '6');
INSERT INTO "move_object_record" VALUES ('233', '76', '2', '87', '6');
INSERT INTO "move_object_record" VALUES ('234', '77', '2', '88', '6');
INSERT INTO "move_object_record" VALUES ('235', '78', '2', '89', '6');
INSERT INTO "move_object_record" VALUES ('236', '79', '2', '90', '6');
INSERT INTO "move_object_record" VALUES ('237', '80', '2', '91', '6');
INSERT INTO "move_object_record" VALUES ('238', '81', '2', '92', '6');
INSERT INTO "move_object_record" VALUES ('239', '82', '2', '93', '6');
INSERT INTO "move_object_record" VALUES ('240', '83', '2', '94', '6');
INSERT INTO "move_object_record" VALUES ('241', '84', '2', '95', '6');
INSERT INTO "move_object_record" VALUES ('242', '85', '2', '96', '6');
INSERT INTO "move_object_record" VALUES ('243', '86', '2', '97', '6');
INSERT INTO "move_object_record" VALUES ('244', '86', '2', '97', '6');
INSERT INTO "move_object_record" VALUES ('245', '87', '2', '98', '6');
INSERT INTO "move_object_record" VALUES ('246', '88', '2', '99', '6');
INSERT INTO "move_object_record" VALUES ('247', '89', '2', '100', '6');
INSERT INTO "move_object_record" VALUES ('248', '90', '2', '101', '6');
INSERT INTO "move_object_record" VALUES ('249', '91', '2', '103', '6');
INSERT INTO "move_object_record" VALUES ('250', '92', '2', '104', '6');
INSERT INTO "move_object_record" VALUES ('251', '93', '2', '105', '6');
INSERT INTO "move_object_record" VALUES ('252', '94', '2', '107', '6');
INSERT INTO "move_object_record" VALUES ('253', '95', '2', '108', '6');
INSERT INTO "move_object_record" VALUES ('254', '95', '2', '108', '6');
INSERT INTO "move_object_record" VALUES ('255', '96', '2', '109', '6');
INSERT INTO "move_object_record" VALUES ('256', '97', '2', '110', '6');
INSERT INTO "move_object_record" VALUES ('257', '98', '2', '111', '6');
INSERT INTO "move_object_record" VALUES ('258', '99', '2', '112', '6');
INSERT INTO "move_object_record" VALUES ('259', '100', '2', '113', '6');
INSERT INTO "move_object_record" VALUES ('260', '101', '2', '114', '6');
INSERT INTO "move_object_record" VALUES ('261', '102', '2', '115', '6');
INSERT INTO "move_object_record" VALUES ('262', '103', '2', '116', '6');
INSERT INTO "move_object_record" VALUES ('263', '104', '2', '117', '6');
INSERT INTO "move_object_record" VALUES ('264', '105', '2', '118', '6');
INSERT INTO "move_object_record" VALUES ('265', '106', '2', '119', '6');
INSERT INTO "move_object_record" VALUES ('266', '107', '2', '120', '6');
INSERT INTO "move_object_record" VALUES ('267', '108', '2', '121', '6');
INSERT INTO "move_object_record" VALUES ('268', '109', '2', '122', '6');
INSERT INTO "move_object_record" VALUES ('269', '110', '2', '123', '6');
INSERT INTO "move_object_record" VALUES ('270', '111', '2', '124', '6');
INSERT INTO "move_object_record" VALUES ('271', '112', '2', '125', '6');
INSERT INTO "move_object_record" VALUES ('272', '113', '2', '126', '6');
INSERT INTO "move_object_record" VALUES ('273', '114', '2', '127', '6');
INSERT INTO "move_object_record" VALUES ('274', '115', '2', '128', '6');
INSERT INTO "move_object_record" VALUES ('275', '116', '2', '129', '6');
INSERT INTO "move_object_record" VALUES ('276', '117', '2', '131', '6');
INSERT INTO "move_object_record" VALUES ('277', '118', '2', '132', '6');
INSERT INTO "move_object_record" VALUES ('278', '119', '2', '133', '6');
INSERT INTO "move_object_record" VALUES ('279', '120', '2', '134', '6');
INSERT INTO "move_object_record" VALUES ('280', '121', '2', '136', '6');
INSERT INTO "move_object_record" VALUES ('281', '122', '2', '137', '6');
INSERT INTO "move_object_record" VALUES ('282', '122', '2', '137', '6');
INSERT INTO "move_object_record" VALUES ('283', '123', '2', '138', '6');
INSERT INTO "move_object_record" VALUES ('284', '124', '2', '140', '6');
INSERT INTO "move_object_record" VALUES ('285', '125', '2', '141', '6');
INSERT INTO "move_object_record" VALUES ('286', '126', '2', '142', '6');
INSERT INTO "move_object_record" VALUES ('287', '126', '2', '142', '6');
INSERT INTO "move_object_record" VALUES ('288', '127', '2', '143', '6');
INSERT INTO "move_object_record" VALUES ('289', '128', '2', '144', '6');
INSERT INTO "move_object_record" VALUES ('290', '129', '2', '145', '6');
INSERT INTO "move_object_record" VALUES ('291', '130', '2', '146', '6');
INSERT INTO "move_object_record" VALUES ('292', '131', '2', '147', '6');
INSERT INTO "move_object_record" VALUES ('293', '131', '2', '147', '6');
INSERT INTO "move_object_record" VALUES ('294', '132', '2', '149', '6');
INSERT INTO "move_object_record" VALUES ('295', '133', '2', '150', '6');
INSERT INTO "move_object_record" VALUES ('296', '134', '2', '151', '6');
INSERT INTO "move_object_record" VALUES ('297', '135', '2', '152', '6');
INSERT INTO "move_object_record" VALUES ('298', '135', '2', '152', '6');
INSERT INTO "move_object_record" VALUES ('299', '136', '2', '153', '6');
INSERT INTO "move_object_record" VALUES ('300', '136', '2', '153', '6');
INSERT INTO "move_object_record" VALUES ('301', '137', '2', '154', '6');
INSERT INTO "move_object_record" VALUES ('302', '137', '2', '154', '6');
INSERT INTO "move_object_record" VALUES ('303', '138', '2', '155', '6');
INSERT INTO "move_object_record" VALUES ('304', '139', '2', '156', '6');
INSERT INTO "move_object_record" VALUES ('305', '140', '2', '157', '6');
INSERT INTO "move_object_record" VALUES ('306', '141', '2', '158', '6');
INSERT INTO "move_object_record" VALUES ('307', '142', '2', '159', '6');
INSERT INTO "move_object_record" VALUES ('308', '143', '2', '160', '6');
INSERT INTO "move_object_record" VALUES ('309', '144', '2', '161', '6');
INSERT INTO "move_object_record" VALUES ('310', '145', '2', '162', '6');
INSERT INTO "move_object_record" VALUES ('311', '146', '2', '163', '6');
INSERT INTO "move_object_record" VALUES ('313', '148', '3', '200', '7');
COMMIT;

-- ----------------------------
-- Table structure for multimedia_resource
-- ----------------------------
DROP TABLE IF EXISTS "multimedia_resource";
CREATE TABLE "multimedia_resource" (
"mr_id" int4 DEFAULT nextval('mr_id_seq'::regclass) NOT NULL,
"en_name" varchar(255) COLLATE "default",
"ch_name" varchar(255) COLLATE "default",
"path" varchar(255) COLLATE "default",
"type" char(1) COLLATE "default",
"comment" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of multimedia_resource
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for object_identity
-- ----------------------------
DROP TABLE IF EXISTS "object_identity";
CREATE TABLE "object_identity" (
"obj_id" int4 DEFAULT nextval('obj_id_seq'::regclass) NOT NULL,
"obj_name" varchar(128) COLLATE "default",
"obj_manfacturer" varchar(128) COLLATE "default",
"obj_model" varchar(128) COLLATE "default",
"obj_sn" varchar(128) COLLATE "default",
"obj_mac" varchar(128) COLLATE "default",
"obj_ip" varchar(128) COLLATE "default",
"obj_port" varchar(128) COLLATE "default",
"obj_type_id" int2,
"obj_type_id_inner" int2,
"obs_site_id" int2,
"obj_group_id" int2,
"obj_unit_id" int2,
"obj_unit_id_inner" int2,
"obj_array_id" int2,
"obj_aray_id_inner" int2,
"admin_user_id" int2,
"is_net_dev" bool,
"is_online" bool,
"last_online_time" timestamp(6),
"obj_cfg_file" varchar(256) COLLATE "default",
"comment" varchar(1024) COLLATE "default",
"sys_kw_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of object_identity
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for object_relation
-- ----------------------------
DROP TABLE IF EXISTS "object_relation";
CREATE TABLE "object_relation" (
"parent_obj_id" int4,
"child_obj_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of object_relation
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for object_type
-- ----------------------------
DROP TABLE IF EXISTS "object_type";
CREATE TABLE "object_type" (
"obj_type_id" int2 DEFAULT nextval('obj_type_id_seq'::regclass) NOT NULL,
"obj_type_name" varchar(128) COLLATE "default",
"obj_type_name_en" varchar(128) COLLATE "default",
"obj_cfg_tmpl_file" varchar(256) COLLATE "default",
"comment" varchar(1024) COLLATE "default",
"obj_type_name_ch" varchar(128) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of object_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for obs_ctl_sys_monitor
-- ----------------------------
DROP TABLE IF EXISTS "obs_ctl_sys_monitor";
CREATE TABLE "obs_ctl_sys_monitor" (
"ocsm_id" int8 DEFAULT nextval('ocsm_id_seq'::regclass) NOT NULL,
"mount_id" int4,
"time_utc" date,
"state" varchar COLLATE "default",
"op_sn" int8,
"op_real_start_time" timestamp(6),
"mount_status" int4,
"camera_status" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of obs_ctl_sys_monitor
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for observation_plan
-- ----------------------------
DROP TABLE IF EXISTS "observation_plan";
CREATE TABLE "observation_plan" (
"op_id" int8 DEFAULT nextval('op_id_seq'::regclass) NOT NULL,
"op_sn" int8,
"op_time" timestamp(6),
"op_type" varchar COLLATE "default",
"group_id" char(4) COLLATE "default",
"unit_id" char(4) COLLATE "default",
"obs_type" varchar COLLATE "default",
"grid_id" char(5) COLLATE "default",
"field_id" varchar(64) COLLATE "default",
"obj_id" varchar(64) COLLATE "default",
"ra" float4,
"dec" float4,
"epoch" int4,
"obj_ra" float4,
"obj_dec" float4,
"obj_epoch" int4,
"obj_error" varchar(128) COLLATE "default",
"img_type" varchar COLLATE "default",
"expusore_during" int4,
"delay" int4,
"frame_count" int4,
"priority" int4,
"begin_time" timestamp(6),
"end_time" timestamp(6),
"pair_id" int4,
"recv_time" timestamp(6) DEFAULT now(),
"execute_status" varchar(16) COLLATE "default" DEFAULT 0,
"ctime" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of observation_plan
-- ----------------------------
BEGIN;
INSERT INTO "observation_plan" VALUES ('6472', '2019091943075', null, null, '002 ', '001 ', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-09-19 18:00:00', '2019-09-19 18:02:00', null, '2019-09-23 12:58:34.648925', 'over', '2019-09-20 18:12:34');
INSERT INTO "observation_plan" VALUES ('6473', '20190925170422', null, null, '002 ', '002 ', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-09-19 18:00:00', '2019-09-19 18:02:00', null, null, 'begin', '2019-09-25 17:04:25');
INSERT INTO "observation_plan" VALUES ('6474', '2019092743075', null, null, '002 ', '001 ', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2019-09-19 18:00:00', '2019-09-19 18:02:00', null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for observation_plan_state
-- ----------------------------
DROP TABLE IF EXISTS "observation_plan_state";
CREATE TABLE "observation_plan_state" (
"obs_plan_id" int8 DEFAULT nextval('obs_plan_id_seq'::regclass) NOT NULL,
"state" varchar COLLATE "default",
"ctime" timestamp(6),
"op_id" int8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of observation_plan_state
-- ----------------------------
BEGIN;
INSERT INTO "observation_plan_state" VALUES ('1', 'begin', '2019-09-20 18:12:34', '2019091943075');
INSERT INTO "observation_plan_state" VALUES ('2', 'over', '2019-09-20 18:12:34', '2019091943075');
INSERT INTO "observation_plan_state" VALUES ('3', 'begin', '2019-09-25 17:04:25', '20190925170422');
INSERT INTO "observation_plan_state" VALUES ('4', 'begin', '2019-09-25 17:04:25', '20190925170422');
INSERT INTO "observation_plan_state" VALUES ('5', 'begin', '2019-09-25 17:04:25', '20190925170422');
INSERT INTO "observation_plan_state" VALUES ('6', 'begin', '2019-09-25 17:04:25', '20190925170422');
COMMIT;

-- ----------------------------
-- Table structure for observation_site
-- ----------------------------
DROP TABLE IF EXISTS "observation_site";
CREATE TABLE "observation_site" (
"obs_site_id" int4 NOT NULL,
"obs_site _name" varchar(128) COLLATE "default",
"obs_site_lgtd" float4,
"obs_site_latd" float4,
"obs_site_altd" float4,
"comment" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of observation_site
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for observation_sky
-- ----------------------------
DROP TABLE IF EXISTS "observation_sky";
CREATE TABLE "observation_sky" (
"sky_id" int4 DEFAULT nextval('sky_id_seq'::regclass) NOT NULL,
"sky_name" varchar(64) COLLATE "default",
"ra_max_s" float4,
"ra_min_s" float4,
"dec_max_s" float4,
"dec_min_s" float4,
"ra_max_n" float4,
"ra_min_n" float4,
"dec_max_n" float4,
"dec_min_n" float4,
"grid_id" char(5) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of observation_sky
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_comment
-- ----------------------------
DROP TABLE IF EXISTS "ot_comment";
CREATE TABLE "ot_comment" (
"oc_id" int8 DEFAULT nextval('oc_id_seq'::regclass) NOT NULL,
"ot_id" int8,
"ui_id" int4,
"comments" varchar(1024) COLLATE "default",
"parent_id" int8,
"gen_time" timestamp(6),
"agree_number" int4,
"disagree_number" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_comment
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_level2
-- ----------------------------
DROP TABLE IF EXISTS "ot_level2";
CREATE TABLE "ot_level2" (
"name" char(14) COLLATE "default",
"ra" float4,
"dec" float4,
"found_time_utc" timestamp(6),
"ot_id" int8 DEFAULT nextval('ot_leve2_seq'::regclass) NOT NULL,
"identify" char(4) COLLATE "default",
"xtemp" float4,
"ytemp" float4,
"last_ff_number" int4,
"total" int4 DEFAULT 0,
"is_recognize" bool DEFAULT false,
"ot_type" int2 DEFAULT 0,
"comments" varchar(1024) COLLATE "default",
"dpm_id" int4,
"date_str" char(6) COLLATE "default",
"all_file_cutted" bool DEFAULT false,
"first_ff_number" int4 DEFAULT 0,
"cutted_ff_number" int4 DEFAULT 0,
"is_match" int2 DEFAULT 0,
"first_n_mark" bool DEFAULT false,
"sky_id" int2,
"data_produce_method" char(1) COLLATE "default",
"fo_count" int2 DEFAULT 0,
"mag" float4,
"cvs_match" int2 DEFAULT 0,
"rc3_match" int2 DEFAULT 0,
"minor_planet_match" int2 DEFAULT 0,
"ot2_his_match" int2 DEFAULT 0,
"other_match" int2 DEFAULT 0,
"usno_match" int2 DEFAULT 0,
"look_back_result" int2 DEFAULT 0,
"follow_up_result" int2 DEFAULT 0,
"look_back_cnn" float4 DEFAULT (-1),
"probability" float4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_level2
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_level2_his
-- ----------------------------
DROP TABLE IF EXISTS "ot_level2_his";
CREATE TABLE "ot_level2_his" (
"name" char(14) COLLATE "default",
"ra" float4,
"dec" float4,
"found_time_utc" timestamp(6),
"ot_id" int8 NOT NULL,
"identify" char(4) COLLATE "default",
"xtemp" float4,
"ytemp" float4,
"last_ff_number" int4,
"total" int4 DEFAULT 0,
"is_recognize" bool DEFAULT false,
"ot_type" int2 DEFAULT 1,
"comments" varchar(1024) COLLATE "default",
"dpm_id" int4,
"date_str" char(6) COLLATE "default",
"all_file_cutted" bool DEFAULT false,
"first_ff_number" int4 DEFAULT 0,
"cutted_ff_number" int4 DEFAULT 0,
"is_match" int2 DEFAULT 0,
"first_n_mark" bool,
"sky_id" int2,
"data_produce_method" char(1) COLLATE "default",
"fo_count" int2 DEFAULT 0,
"mag" float4,
"cvs_match" int2 DEFAULT 0,
"rc3_match" int2 DEFAULT 0,
"minor_planet_match" int2 DEFAULT 0,
"ot2_his_match" int2 DEFAULT 0,
"other_match" int2 DEFAULT 0,
"usno_match" int2 DEFAULT 0,
"look_back_result" int2,
"follow_up_result" int2,
"look_back_cnn" float4 DEFAULT (-1),
"probability" float4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_level2_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_level2_match
-- ----------------------------
DROP TABLE IF EXISTS "ot_level2_match";
CREATE TABLE "ot_level2_match" (
"olm_id" int8 DEFAULT nextval('ot_level2_match_id_seq'::regclass) NOT NULL,
"ot_id" int8,
"mt_id" int2,
"match_id" int8,
"comments" varchar(1024) COLLATE "default",
"ra" float4,
"dec" float4,
"mag" float4 DEFAULT 0,
"distance" float4 DEFAULT 0,
"d25" float4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_level2_match
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_level3
-- ----------------------------
DROP TABLE IF EXISTS "ot_level3";
CREATE TABLE "ot_level3" (
"name" char(12) COLLATE "default",
"ra" float4,
"dec" float4,
"found_time_utc" timestamp(6),
"ot_id" int8 DEFAULT nextval('ot_leve3_seq'::regclass) NOT NULL,
"identify" char(21) COLLATE "default",
"xtemp" float4,
"ytemp" float4,
"last_ff_number" int4,
"total" int4 DEFAULT 0,
"succ_occur_times" int2 DEFAULT 0,
"max_succ_occur_times" int2 DEFAULT 0,
"is_recognize" bool DEFAULT false,
"ot_type" int2 DEFAULT 1,
"comments" varchar(1024) COLLATE "default",
"dpm_name" char(3) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_level3
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_number
-- ----------------------------
DROP TABLE IF EXISTS "ot_number";
CREATE TABLE "ot_number" (
"otn_id" int8 DEFAULT nextval('otn_id_seq'::regclass) NOT NULL,
"date" varchar(32) COLLATE "default",
"number" int4,
"ot_level" char(1) COLLATE "default" DEFAULT 1,
"var_number" int4,
"sub_number" int4,
"jfov_number" int4 DEFAULT 0,
"jfov_sub_number" int4 DEFAULT 0,
"followup_number" int4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_number
-- ----------------------------
BEGIN;
INSERT INTO "ot_number" VALUES ('768', '190217', '7', null, '0', '0', '0', '0', '0');
COMMIT;

-- ----------------------------
-- Table structure for ot_observe_record
-- ----------------------------
DROP TABLE IF EXISTS "ot_observe_record";
CREATE TABLE "ot_observe_record" (
"ot_id" int8 DEFAULT 0,
"ff_id" int8 DEFAULT 0,
"ffc_id" int8 DEFAULT 0,
"oor_id" int8 DEFAULT nextval('oor_id_seq'::regclass) NOT NULL,
"ot_type_id" int2,
"ra_d" float8,
"dec_d" float8,
"x" float4,
"y" float4,
"x_temp" float4,
"y_temp" float4,
"date_ut" timestamp(6),
"flux" float4,
"flag" int4,
"flag_chb" float4,
"background" float4,
"threshold" float4,
"mag_aper" float4,
"magerr_aper" float4,
"ellipticity" float4,
"class_star" float4,
"ot_flag" bool,
"ff_number" int4,
"dpm_id" int4,
"date_str" char(6) COLLATE "default",
"request_cut" bool DEFAULT false,
"success_cut" bool DEFAULT false,
"sky_id" int2,
"distance" float4,
"deltamag" float4,
"data_produce_method" char(1) COLLATE "default",
"time_sub_second" int4 DEFAULT 0,
"probability" float4 DEFAULT 0
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_observe_record
-- ----------------------------
BEGIN;
INSERT INTO "ot_observe_record" VALUES ('6', '2', '44435991', '159', null, '47.4524612426758', '10.6271238327026', '3217.12', '676.669', null, null, '2019-02-17 10:50:17', '176.911', null, null, null, '5.31582', '11.2966', '0.0246', null, null, null, '5', '7', '190217', 'f', 'f', null, null, null, null, '41257', null);
INSERT INTO "ot_observe_record" VALUES ('6', '3', '44435992', '160', null, '47.5148887634277', '10.6328954696655', '3214.75', '696.551', null, null, '2019-02-17 10:50:32', '186.236', null, null, null, '4.87281', '11.2681', '0.0248', null, null, null, '6', '7', '190217', 'f', 'f', null, null, null, null, '41268', null);
INSERT INTO "ot_observe_record" VALUES ('6', '4', '44435993', '161', null, '47.576774597168', '10.638219833374', '3212.5', '716.24', null, null, '2019-02-17 10:50:47', '195.81', null, null, null, '4.69402', '11.2738', '0.024', null, null, null, '7', '7', '190217', 'f', 'f', null, null, null, null, '41206', null);
INSERT INTO "ot_observe_record" VALUES ('6', '5', '44435994', '162', null, '47.640323638916', '10.6437149047852', '3210.2', '736.32', null, null, '2019-02-17 10:51:02', '199.215', null, null, null, '5.12258', '11.2389', '0.023', null, null, null, '8', '7', '190217', 'f', 'f', null, null, null, null, '41383', null);
INSERT INTO "ot_observe_record" VALUES ('6', '6', '44435995', '163', null, '47.7023849487305', '10.6489839553833', '3207.98', '755.903', null, null, '2019-02-17 10:51:17', '188.351', null, null, null, '4.8727', '11.2495', '0.0213', null, null, null, '9', '7', '190217', 'f', 'f', null, null, null, null, '41255', null);
INSERT INTO "ot_observe_record" VALUES ('6', '7', '44435996', '164', null, '47.7648696899414', '10.6545715332031', '3205.67', '775.471', null, null, '2019-02-17 10:51:32', '168.06', null, null, null, '4.79544', '11.1658', '0.0181', null, null, null, '10', '7', '190217', 'f', 'f', null, null, null, null, '41275', null);
INSERT INTO "ot_observe_record" VALUES ('6', '8', '44435997', '165', null, '47.8271446228027', '10.6596956253052', '3203.45', '794.972', null, null, '2019-02-17 10:51:47', '165.408', null, null, null, '5.08556', '11.2212', '0.0185', null, null, null, '11', '7', '190217', 'f', 'f', null, null, null, null, '41278', null);
INSERT INTO "ot_observe_record" VALUES ('6', '9', '44435998', '166', null, '47.8900489807129', '10.6646919250488', '3201.31', '814.763', null, null, '2019-02-17 10:52:02', '164.388', null, null, null, '4.8482', '11.1642', '0.0174', null, null, null, '12', '7', '190217', 'f', 'f', null, null, null, null, '41246', null);
INSERT INTO "ot_observe_record" VALUES ('6', '10', '44435999', '167', null, '47.9517402648926', '10.670636177063', '3198.88', '834.193', null, null, '2019-02-17 10:52:17', '165.384', null, null, null, '4.77561', '11.1821', '0.0181', null, null, null, '13', '7', '190217', 'f', 'f', null, null, null, null, '41290', null);
INSERT INTO "ot_observe_record" VALUES ('6', '11', '44436000', '168', null, '48.013973236084', '10.6757745742798', '3196.67', '853.827', null, null, '2019-02-17 10:52:32', '168.102', null, null, null, '5.03424', '11.1749', '0.019', null, null, null, '14', '7', '190217', 'f', 'f', null, null, null, null, '41179', null);
INSERT INTO "ot_observe_record" VALUES ('6', '12', '44436001', '169', null, '48.0775604248047', '10.6810340881348', '3194.44', '873.808', null, null, '2019-02-17 10:52:47', '172.166', null, null, null, '4.90546', '11.1505', '0.0187', null, null, null, '15', '7', '190217', 'f', 'f', null, null, null, null, '41272', null);
INSERT INTO "ot_observe_record" VALUES ('6', '13', '44436002', '170', null, '48.1393013000488', '10.6861591339111', '3192.24', '893.147', null, null, '2019-02-17 10:53:02', '174.919', null, null, null, '4.58124', '11.1281', '0.0187', null, null, null, '16', '7', '190217', 'f', 'f', null, null, null, null, '41170', null);
INSERT INTO "ot_observe_record" VALUES ('6', '14', '44436003', '171', null, '48.2024002075195', '10.6919498443604', '3189.81', '913.1', null, null, '2019-02-17 10:53:17', '175.633', null, null, null, '5.45265', '11.1254', '0.0186', null, null, null, '17', '7', '190217', 'f', 'f', null, null, null, null, '41359', null);
INSERT INTO "ot_observe_record" VALUES ('6', '15', '44436004', '172', null, '48.2643775939941', '10.6960830688477', '3187.92', '932.774', null, null, '2019-02-17 10:53:32', '175.832', null, null, null, '2.77155', '11.106', '0.0178', null, null, null, '18', '7', '190217', 'f', 'f', null, null, null, null, '41348', null);
INSERT INTO "ot_observe_record" VALUES ('6', '16', '44436005', '173', null, '48.6394577026367', '10.727424621582', '3174.29', '1051.65', null, null, '2019-02-17 10:55:02', '165.085', null, null, null, '4.84783', '11.1018', '0.0165', null, null, null, '24', '7', '190217', 'f', 'f', null, null, null, null, '41332', null);
INSERT INTO "ot_observe_record" VALUES ('6', '17', '44436006', '174', null, '48.7026596069336', '10.7324151992798', '3172.05', '1071.67', null, null, '2019-02-17 10:55:17', '167.313', null, null, null, '4.69393', '11.0487', '0.0161', null, null, null, '25', '7', '190217', 'f', 'f', null, null, null, null, '41321', null);
INSERT INTO "ot_observe_record" VALUES ('6', '18', '44436007', '175', null, '48.7649116516113', '10.737398147583', '3169.85', '1091.38', null, null, '2019-02-17 10:55:32', '167.233', null, null, null, '4.63321', '11.0028', '0.0152', null, null, null, '26', '7', '190217', 'f', 'f', null, null, null, null, '41322', null);
INSERT INTO "ot_observe_record" VALUES ('6', '19', '44436008', '176', null, '48.8278732299805', '10.7424993515015', '3167.6', '1111.24', null, null, '2019-02-17 10:55:47', '166.76', null, null, null, '4.74149', '11.0208', '0.0152', null, null, null, '27', '7', '190217', 'f', 'f', null, null, null, null, '41295', null);
INSERT INTO "ot_observe_record" VALUES ('6', '20', '44436009', '177', null, '48.8903923034668', '10.7475547790527', '3165.35', '1130.99', null, null, '2019-02-17 10:56:02', '166.004', null, null, null, '4.78128', '10.9977', '0.0149', null, null, null, '28', '7', '190217', 'f', 'f', null, null, null, null, '41308', null);
INSERT INTO "ot_observe_record" VALUES ('6', '21', '44436010', '178', null, '48.9526405334473', '10.7525482177734', '3163.11', '1150.64', null, null, '2019-02-17 10:56:17', '167.388', null, null, null, '4.70029', '11.0395', '0.0155', null, null, null, '29', '7', '190217', 'f', 'f', null, null, null, null, '41351', null);
INSERT INTO "ot_observe_record" VALUES ('6', '22', '44436011', '179', null, '49.0152854919434', '10.7574615478516', '3160.9', '1170.52', null, null, '2019-02-17 10:56:32', '173.685', null, null, null, '4.73743', '11.0043', '0.0157', null, null, null, '30', '7', '190217', 'f', 'f', null, null, null, null, '41293', null);
INSERT INTO "ot_observe_record" VALUES ('6', '23', '44436012', '180', null, '49.0777320861816', '10.7622671127319', '3158.74', '1190.32', null, null, '2019-02-17 10:56:47', '175.637', null, null, null, '4.57191', '11.0608', '0.0174', null, null, null, '31', '7', '190217', 'f', 'f', null, null, null, null, '41322', null);
INSERT INTO "ot_observe_record" VALUES ('6', '24', '44436013', '181', null, '49.1403121948242', '10.7674903869629', '3156.41', '1210.18', null, null, '2019-02-17 10:57:02', '178.877', null, null, null, '4.75411', '11.0413', '0.0178', null, null, null, '32', '7', '190217', 'f', 'f', null, null, null, null, '41278', null);
INSERT INTO "ot_observe_record" VALUES ('6', '25', '44436014', '182', null, '49.2034339904785', '10.7722835540771', '3154.25', '1230.2', null, null, '2019-02-17 10:57:17', '178.592', null, null, null, '4.51417', '11.0627', '0.0177', null, null, null, '33', '7', '190217', 'f', 'f', null, null, null, null, '41290', null);
INSERT INTO "ot_observe_record" VALUES ('6', '26', '44436015', '183', null, '49.2664222717285', '10.7771778106689', '3152.01', '1250.17', null, null, '2019-02-17 10:57:32', '173.94', null, null, null, '4.67983', '10.9795', '0.0157', null, null, null, '34', '7', '190217', 'f', 'f', null, null, null, null, '41297', null);
INSERT INTO "ot_observe_record" VALUES ('6', '27', '44436016', '184', null, '49.327953338623', '10.782169342041', '3149.75', '1269.77', null, null, '2019-02-17 10:57:47', '170.853', null, null, null, '4.6959', '11.0255', '0.016', null, null, null, '35', '7', '190217', 'f', 'f', null, null, null, null, '41223', null);
INSERT INTO "ot_observe_record" VALUES ('6', '28', '44436017', '185', null, '49.3909034729004', '10.7869653701782', '3147.56', '1289.83', null, null, '2019-02-17 10:58:02', '169.452', null, null, null, '4.70115', '11.0116', '0.0157', null, null, null, '36', '7', '190217', 'f', 'f', null, null, null, null, '41270', null);
INSERT INTO "ot_observe_record" VALUES ('6', '29', '44436018', '186', null, '49.4533386230469', '10.7918748855591', '3145.3', '1309.65', null, null, '2019-02-17 10:58:17', '168.346', null, null, null, '4.85028', '11.0633', '0.0161', null, null, null, '37', '7', '190217', 'f', 'f', null, null, null, null, '41323', null);
INSERT INTO "ot_observe_record" VALUES ('6', '30', '44436019', '187', null, '49.5157508850098', '10.7966079711914', '3143.14', '1329.49', null, null, '2019-02-17 10:58:32', '168.019', null, null, null, '4.56681', '11.0642', '0.016', null, null, null, '38', '7', '190217', 'f', 'f', null, null, null, null, '41276', null);
INSERT INTO "ot_observe_record" VALUES ('6', '31', '44436020', '188', null, '49.5787544250488', '10.8013944625854', '3140.92', '1349.47', null, null, '2019-02-17 10:58:47', '167.651', null, null, null, '4.59983', '11.0516', '0.0157', null, null, null, '39', '7', '190217', 'f', 'f', null, null, null, null, '41324', null);
INSERT INTO "ot_observe_record" VALUES ('6', '32', '44436021', '189', null, '49.6408348083496', '10.8061027526855', '3138.73', '1369.2', null, null, '2019-02-17 10:59:02', '167.292', null, null, null, '4.33608', '11.0691', '0.016', null, null, null, '40', '7', '190217', 'f', 'f', null, null, null, null, '41335', null);
INSERT INTO "ot_observe_record" VALUES ('6', '33', '44436022', '190', null, '49.7034912109375', '10.8111371994019', '3136.41', '1389.2', null, null, '2019-02-17 10:59:17', '167.186', null, null, null, '4.6706', '11.1154', '0.0166', null, null, null, '41', '7', '190217', 'f', 'f', null, null, null, null, '41271', null);
INSERT INTO "ot_observe_record" VALUES ('6', '34', '44436023', '191', null, '49.7663879394531', '10.8156852722168', '3134.23', '1409.18', null, null, '2019-02-17 10:59:32', '166.979', null, null, null, '4.52062', '11.0843', '0.0162', null, null, null, '42', '7', '190217', 'f', 'f', null, null, null, null, '41290', null);
INSERT INTO "ot_observe_record" VALUES ('6', '35', '44436024', '192', null, '49.8287696838379', '10.8204641342163', '3131.99', '1429', null, null, '2019-02-17 10:59:47', '166.521', null, null, null, '4.53996', '11.0958', '0.0161', null, null, null, '43', '7', '190217', 'f', 'f', null, null, null, null, '41350', null);
INSERT INTO "ot_observe_record" VALUES ('6', '36', '44436025', '193', null, '49.8939094543457', '10.8253269195557', '3129.73', '1449.69', null, null, '2019-02-17 11:00:02', '166.147', null, null, null, '4.59617', '11.1149', '0.0162', null, null, null, '44', '7', '190217', 'f', 'f', null, null, null, null, '41349', null);
INSERT INTO "ot_observe_record" VALUES ('6', '37', '44436026', '194', null, '49.9527130126953', '10.8295488357544', '3127.71', '1468.34', null, null, '2019-02-17 11:00:17', '165.697', null, null, null, '4.73537', '11.1546', '0.0168', null, null, null, '45', '7', '190217', 'f', 'f', null, null, null, null, '41330', null);
INSERT INTO "ot_observe_record" VALUES ('6', '38', '44436027', '195', null, '50.0154762268066', '10.8343839645386', '3125.45', '1488.12', null, null, '2019-02-17 11:00:32', '165.44', null, null, null, '4.36248', '11.1182', '0.0162', null, null, null, '46', '7', '190217', 'f', 'f', null, null, null, null, '41272', null);
INSERT INTO "ot_observe_record" VALUES ('6', '39', '44436028', '196', null, '50.0794372558594', '10.8391227722168', '3123.21', '1508.29', null, null, '2019-02-17 11:00:47', '165.08', null, null, null, '4.50615', '11.1561', '0.0167', null, null, null, '47', '7', '190217', 'f', 'f', null, null, null, null, '41271', null);
INSERT INTO "ot_observe_record" VALUES ('6', '40', '44436029', '197', null, '50.1420097351074', '10.8435659408569', '3121.09', '1527.92', null, null, '2019-02-17 11:01:02', '164.302', null, null, null, '4.65556', '11.1491', '0.0165', null, null, null, '48', '7', '190217', 'f', 'f', null, null, null, null, '41246', null);
INSERT INTO "ot_observe_record" VALUES ('6', '41', '44436030', '198', null, '50.2042083740234', '10.8484153747559', '3118.8', '1547.27', null, null, '2019-02-17 11:01:17', '164.498', null, null, null, '4.47717', '11.174', '0.0169', null, null, null, '49', '7', '190217', 'f', 'f', null, null, null, null, '41337', null);
INSERT INTO "ot_observe_record" VALUES ('6', '42', '44436031', '199', null, '50.2675895690918', '10.852840423584', '3116.64', '1567.15', null, null, '2019-02-17 11:01:32', '164.641', null, null, null, '4.61879', '11.2135', '0.0175', null, null, null, '50', '7', '190217', 'f', 'f', null, null, null, null, '41329', null);
INSERT INTO "ot_observe_record" VALUES ('6', '43', '44436032', '200', null, '50.3298797607422', '10.8574028015137', '3114.5', '1586.73', null, null, '2019-02-17 11:01:47', '164.085', null, null, null, '4.42483', '11.2571', '0.0179', null, null, null, '51', '7', '190217', 'f', 'f', null, null, null, null, '41341', null);
INSERT INTO "ot_observe_record" VALUES ('6', '44', '44436033', '201', null, '50.3920860290527', '10.8618841171265', '3112.32', '1606.33', null, null, '2019-02-17 11:02:02', '163.9', null, null, null, '4.43999', '11.2806', '0.0184', null, null, null, '52', '7', '190217', 'f', 'f', null, null, null, null, '41330', null);
INSERT INTO "ot_observe_record" VALUES ('6', '45', '44436034', '202', null, '50.4550170898438', '10.8666229248047', '3110.08', '1626.16', null, null, '2019-02-17 11:02:17', '164.733', null, null, null, '4.58465', '11.1905', '0.0172', null, null, null, '53', '7', '190217', 'f', 'f', null, null, null, null, '41248', null);
INSERT INTO "ot_observe_record" VALUES ('6', '46', '44436035', '203', null, '50.5180511474609', '10.8710355758667', '3107.9', '1645.87', null, null, '2019-02-17 11:02:32', '166.671', null, null, null, '4.84149', '11.2965', '0.0192', null, null, null, '54', '7', '190217', 'f', 'f', null, null, null, null, '41283', null);
INSERT INTO "ot_observe_record" VALUES ('6', '47', '44436036', '204', null, '50.5803871154785', '10.8754606246948', '3105.73', '1665.5', null, null, '2019-02-17 11:02:47', '167.732', null, null, null, '4.50488', '11.3155', '0.0195', null, null, null, '55', '7', '190217', 'f', 'f', null, null, null, null, '41368', null);
INSERT INTO "ot_observe_record" VALUES ('6', '48', '44436037', '205', null, '50.6436309814453', '10.8799133300781', '3103.55', '1685.5', null, null, '2019-02-17 11:03:02', '166.888', null, null, null, '4.62454', '11.3198', '0.0192', null, null, null, '56', '7', '190217', 'f', 'f', null, null, null, null, '41305', null);
INSERT INTO "ot_observe_record" VALUES ('6', '49', '44436038', '206', null, '50.7055625915527', '10.8843822479248', '3101.39', '1705.11', null, null, '2019-02-17 11:03:17', '165.205', null, null, null, '4.46232', '11.3135', '0.0189', null, null, null, '57', '7', '190217', 'f', 'f', null, null, null, null, '41163', null);
INSERT INTO "ot_observe_record" VALUES ('6', '50', '44436039', '207', null, '50.7682037353516', '10.8886766433716', '3099.22', '1725.06', null, null, '2019-02-17 11:03:32', '163.94', null, null, null, '4.14776', '11.36', '0.0197', null, null, null, '58', '7', '190217', 'f', 'f', null, null, null, null, '41262', null);
INSERT INTO "ot_observe_record" VALUES ('6', '51', '44436040', '208', null, '50.8312721252441', '10.8932476043701', '3096.98', '1745.02', null, null, '2019-02-17 11:03:47', '163.596', null, null, null, '4.44978', '11.3291', '0.0191', null, null, null, '59', '7', '190217', 'f', 'f', null, null, null, null, '41335', null);
INSERT INTO "ot_observe_record" VALUES ('6', '52', '44436041', '209', null, '50.893684387207', '10.8975915908813', '3094.82', '1764.66', null, null, '2019-02-17 11:04:02', '163.439', null, null, null, '4.56306', '11.3647', '0.0196', null, null, null, '60', '7', '190217', 'f', 'f', null, null, null, null, '41321', null);
INSERT INTO "ot_observe_record" VALUES ('6', '53', '44436042', '210', null, '50.9561576843262', '10.9019393920898', '3092.68', '1784.31', null, null, '2019-02-17 11:04:17', '163.307', null, null, null, '4.52119', '11.3855', '0.0199', null, null, null, '61', '7', '190217', 'f', 'f', null, null, null, null, '41262', null);
INSERT INTO "ot_observe_record" VALUES ('6', '54', '44436043', '211', null, '51.0193748474121', '10.9062976837158', '3090.48', '1804.23', null, null, '2019-02-17 11:04:32', '163.492', null, null, null, '4.50234', '11.4093', '0.0203', null, null, null, '62', '7', '190217', 'f', 'f', null, null, null, null, '150415', null);
INSERT INTO "ot_observe_record" VALUES ('6', '55', '44436044', '212', null, '51.082347869873', '10.910623550415', '3088.32', '1824.18', null, null, '2019-02-17 11:04:47', '163.525', null, null, null, '4.4397', '11.4263', '0.0207', null, null, null, '63', '7', '190217', 'f', 'f', null, null, null, null, '136430', null);
INSERT INTO "ot_observe_record" VALUES ('6', '56', '44436045', '213', null, '51.1449089050293', '10.91392993927', '3086.49', '1843.98', null, null, '2019-02-17 11:05:02', '163.554', null, null, null, '4.62008', '11.4155', '0.0202', null, null, null, '64', '7', '190217', 'f', 'f', null, null, null, null, '121206', null);
INSERT INTO "ot_observe_record" VALUES ('6', '57', '44436046', '214', null, '51.2072677612305', '10.9191741943359', '3083.99', '1863.62', null, null, '2019-02-17 11:05:17', '163.358', null, null, null, '4.59004', '11.3779', '0.0197', null, null, null, '65', '7', '190217', 'f', 'f', null, null, null, null, '106569', null);
INSERT INTO "ot_observe_record" VALUES ('6', '58', '44436047', '215', null, '51.2698822021484', '10.9234390258789', '3081.82', '1883.37', null, null, '2019-02-17 11:05:32', '163.599', null, null, null, '4.60323', '11.4547', '0.0211', null, null, null, '66', '7', '190217', 'f', 'f', null, null, null, null, '92369', null);
INSERT INTO "ot_observe_record" VALUES ('6', '59', '44436048', '216', null, '51.3320808410645', '10.9278039932251', '3079.65', '1902.94', null, null, '2019-02-17 11:05:47', '163.864', null, null, null, '4.77484', '11.4557', '0.0212', null, null, null, '67', '7', '190217', 'f', 'f', null, null, null, null, '78040', null);
INSERT INTO "ot_observe_record" VALUES ('6', '60', '44436049', '217', null, '51.3968391418457', '10.9327526092529', '3077.22', '1923.44', null, null, '2019-02-17 11:06:02', '164.03', null, null, null, '4.4424', '11.4454', '0.0212', null, null, null, '68', '7', '190217', 'f', 'f', null, null, null, null, '62555', null);
INSERT INTO "ot_observe_record" VALUES ('6', '61', '44436050', '218', null, '51.4573669433594', '10.9361000061035', '3075.36', '1942.62', null, null, '2019-02-17 11:06:17', '164.114', null, null, null, '4.64499', '11.46', '0.0214', null, null, null, '69', '7', '190217', 'f', 'f', null, null, null, null, '48239', null);
INSERT INTO "ot_observe_record" VALUES ('6', '62', '44436051', '219', null, '51.5199356079102', '10.9405088424683', '3073.11', '1962.47', null, null, '2019-02-17 11:06:32', '164.131', null, null, null, '4.66481', '11.5048', '0.0221', null, null, null, '70', '7', '190217', 'f', 'f', null, null, null, null, '41313', null);
INSERT INTO "ot_observe_record" VALUES ('6', '63', '44436052', '220', null, '51.5827178955078', '10.9444732666016', '3070.99', '1982.34', null, null, '2019-02-17 11:06:47', '164.081', null, null, null, '4.43131', '11.4465', '0.021', null, null, null, '71', '7', '190217', 'f', 'f', null, null, null, null, '41343', null);
INSERT INTO "ot_observe_record" VALUES ('6', '64', '44436053', '221', null, '51.7084503173828', '10.9527578353882', '3066.69', '2022.18', null, null, '2019-02-17 11:07:17', '163.85', null, null, null, '4.59005', '11.5215', '0.0224', null, null, null, '73', '7', '190217', 'f', 'f', null, null, null, null, '41334', null);
INSERT INTO "ot_observe_record" VALUES ('6', '65', '44436054', '222', null, '51.8967170715332', '10.965033531189', '3060.22', '2081.88', null, null, '2019-02-17 11:08:02', '163.507', null, null, null, '4.57062', '11.5183', '0.0223', null, null, null, '76', '7', '190217', 'f', 'f', null, null, null, null, '41331', null);
INSERT INTO "ot_observe_record" VALUES ('6', '66', '44436055', '223', null, '51.9605331420898', '10.969780921936', '3057.83', '2102.03', null, null, '2019-02-17 11:08:17', '163.916', null, null, null, '4.29598', '11.4679', '0.0215', null, null, null, '77', '7', '190217', 'f', 'f', null, null, null, null, '41338', null);
INSERT INTO "ot_observe_record" VALUES ('6', '67', '44436056', '224', null, '52.0216979980469', '10.9730815887451', '3055.92', '2121.43', null, null, '2019-02-17 11:08:32', '164.596', null, null, null, '4.48891', '11.539', '0.0228', null, null, null, '78', '7', '190217', 'f', 'f', null, null, null, null, '41347', null);
INSERT INTO "ot_observe_record" VALUES ('6', '68', '44436057', '225', null, '52.0844573974609', '10.9772090911865', '3053.72', '2141.36', null, null, '2019-02-17 11:08:47', '164.431', null, null, null, '4.03953', '11.5693', '0.0235', null, null, null, '79', '7', '190217', 'f', 'f', null, null, null, null, '41333', null);
INSERT INTO "ot_observe_record" VALUES ('6', '69', '44436058', '226', null, '52.1481018066406', '10.9811162948608', '3051.55', '2161.58', null, null, '2019-02-17 11:09:02', '164.327', null, null, null, '4.38437', '11.5557', '0.0233', null, null, null, '80', '7', '190217', 'f', 'f', null, null, null, null, '41322', null);
INSERT INTO "ot_observe_record" VALUES ('6', '70', '44436059', '227', null, '52.209400177002', '10.9849243164062', '3049.5', '2181.04', null, null, '2019-02-17 11:09:17', '164.432', null, null, null, '4.34251', '11.6018', '0.0239', null, null, null, '81', '7', '190217', 'f', 'f', null, null, null, null, '41332', null);
INSERT INTO "ot_observe_record" VALUES ('6', '71', '44436060', '228', null, '52.2728118896484', '10.9887866973877', '3047.35', '2201.15', null, null, '2019-02-17 11:09:32', '164.282', null, null, null, '4.26532', '11.5445', '0.023', null, null, null, '82', '7', '190217', 'f', 'f', null, null, null, null, '41310', null);
INSERT INTO "ot_observe_record" VALUES ('6', '72', '44436061', '229', null, '52.3357048034668', '10.9929790496826', '3045.13', '2221.11', null, null, '2019-02-17 11:09:47', '164.49', null, null, null, '4.03053', '11.6145', '0.0244', null, null, null, '83', '7', '190217', 'f', 'f', null, null, null, null, '41355', null);
INSERT INTO "ot_observe_record" VALUES ('6', '73', '44436062', '230', null, '52.3975143432617', '10.9968347549438', '3043.04', '2240.65', null, null, '2019-02-17 11:10:02', '165.011', null, null, null, '3.93065', '11.571', '0.0237', null, null, null, '84', '7', '190217', 'f', 'f', null, null, null, null, '41368', null);
INSERT INTO "ot_observe_record" VALUES ('6', '74', '44436063', '231', null, '52.460765838623', '11.0008430480957', '3040.86', '2260.6', null, null, '2019-02-17 11:10:17', '165.402', null, null, null, '4.23524', '11.638', '0.0254', null, null, null, '85', '7', '190217', 'f', 'f', null, null, null, null, '41315', null);
INSERT INTO "ot_observe_record" VALUES ('6', '75', '44436064', '232', null, '52.524169921875', '11.0048141479492', '3038.69', '2280.52', null, null, '2019-02-17 11:10:32', '165.531', null, null, null, '4.54513', '11.6809', '0.0261', null, null, null, '86', '7', '190217', 'f', 'f', null, null, null, null, '41326', null);
INSERT INTO "ot_observe_record" VALUES ('6', '76', '44436065', '233', null, '52.5857124328613', '11.0084781646729', '3036.62', '2299.67', null, null, '2019-02-17 11:10:47', '165.355', null, null, null, '4.28196', '11.6753', '0.0261', null, null, null, '87', '7', '190217', 'f', 'f', null, null, null, null, '41361', null);
INSERT INTO "ot_observe_record" VALUES ('6', '77', '44436066', '234', null, '52.6491012573242', '11.012243270874', '3034.52', '2319.46', null, null, '2019-02-17 11:11:02', '165.276', null, null, null, '4.42645', '11.7012', '0.0265', null, null, null, '88', '7', '190217', 'f', 'f', null, null, null, null, '41358', null);
INSERT INTO "ot_observe_record" VALUES ('6', '78', '44436067', '235', null, '52.7129821777344', '11.0160570144653', '3032.4', '2339.52', null, null, '2019-02-17 11:11:17', '165.399', null, null, null, '4.54873', '11.6783', '0.0262', null, null, null, '89', '7', '190217', 'f', 'f', null, null, null, null, '41355', null);
INSERT INTO "ot_observe_record" VALUES ('6', '79', '44436068', '236', null, '52.7738037109375', '11.019757270813', '3030.32', '2358.63', null, null, '2019-02-17 11:11:32', '165.78', null, null, null, '4.40399', '11.6263', '0.0252', null, null, null, '90', '7', '190217', 'f', 'f', null, null, null, null, '41312', null);
INSERT INTO "ot_observe_record" VALUES ('6', '80', '44436069', '237', null, '52.8369255065918', '11.0235862731934', '3028.16', '2378.51', null, null, '2019-02-17 11:11:47', '165.979', null, null, null, '4.26182', '11.7889', '0.029', null, null, null, '91', '7', '190217', 'f', 'f', null, null, null, null, '41363', null);
INSERT INTO "ot_observe_record" VALUES ('6', '81', '44436070', '238', null, '52.9007720947266', '11.0275745391846', '3025.96', '2398.46', null, null, '2019-02-17 11:12:02', '165.675', null, null, null, '4.33439', '11.7126', '0.0273', null, null, null, '92', '7', '190217', 'f', 'f', null, null, null, null, '41268', null);
INSERT INTO "ot_observe_record" VALUES ('6', '82', '44436071', '239', null, '52.9623565673828', '11.0310878753662', '3023.93', '2417.72', null, null, '2019-02-17 11:12:17', '165.33', null, null, null, '4.42689', '11.735', '0.0274', null, null, null, '93', '7', '190217', 'f', 'f', null, null, null, null, '41353', null);
INSERT INTO "ot_observe_record" VALUES ('6', '83', '44436072', '240', null, '53.0257377624512', '11.0349645614624', '3021.74', '2437.7', null, null, '2019-02-17 11:12:32', '164.797', null, null, null, '4.32454', '11.7749', '0.0282', null, null, null, '94', '7', '190217', 'f', 'f', null, null, null, null, '41341', null);
INSERT INTO "ot_observe_record" VALUES ('6', '84', '44436073', '241', null, '53.0879745483398', '11.038293838501', '3019.75', '2457.38', null, null, '2019-02-17 11:12:47', '164.757', null, null, null, '4.21192', '11.79', '0.029', null, null, null, '95', '7', '190217', 'f', 'f', null, null, null, null, '41332', null);
INSERT INTO "ot_observe_record" VALUES ('6', '85', '44436074', '242', null, '53.1506462097168', '11.0420446395874', '3017.59', '2477.27', null, null, '2019-02-17 11:13:02', '164.296', null, null, null, '4.35198', '11.8628', '0.0307', null, null, null, '96', '7', '190217', 'f', 'f', null, null, null, null, '41343', null);
INSERT INTO "ot_observe_record" VALUES ('6', '86', '44436075', '243', null, '53.2038421630859', '11.0450763702393', '3015.84', '2494.16', null, null, '2019-02-17 11:13:17', '163.445', null, null, null, '3.96063', '11.8629', '0.0302', null, null, null, '97', '7', '190217', 'f', 'f', null, null, null, null, '41329', null);
INSERT INTO "ot_observe_record" VALUES ('6', '86', '0', '244', null, '53.2038421630859', '11.0450763702393', '3015.84', '2494.16', null, null, '2019-02-17 11:13:17', '163.445', null, null, null, '3.96063', '11.8629', '0.0302', null, null, null, '97', '7', '190217', 'f', 'f', null, null, null, null, '41329', null);
INSERT INTO "ot_observe_record" VALUES ('6', '87', '44436076', '245', null, '53.2768821716309', '11.0494565963745', '3013.34', '2517.16', null, null, '2019-02-17 11:13:32', '162.969', null, null, null, '4.41941', '11.8597', '0.0303', null, null, null, '98', '7', '190217', 'f', 'f', null, null, null, null, '41337', null);
INSERT INTO "ot_observe_record" VALUES ('6', '88', '44436077', '246', null, '53.3388404846191', '11.0530595779419', '3011.23', '2536.65', null, null, '2019-02-17 11:13:47', '163.115', null, null, null, '4.57196', '11.8598', '0.0302', null, null, null, '99', '7', '190217', 'f', 'f', null, null, null, null, '41239', null);
INSERT INTO "ot_observe_record" VALUES ('6', '89', '44436078', '247', null, '53.3999900817871', '11.0565023422241', '3009.19', '2555.88', null, null, '2019-02-17 11:14:02', '163.432', null, null, null, '4.30936', '11.8672', '0.0305', null, null, null, '100', '7', '190217', 'f', 'f', null, null, null, null, '41257', null);
INSERT INTO "ot_observe_record" VALUES ('6', '90', '44436079', '248', null, '53.4665489196777', '11.0603733062744', '3006.95', '2576.91', null, null, '2019-02-17 11:14:17', '163.671', null, null, null, '4.56775', '11.9666', '0.0334', null, null, null, '101', '7', '190217', 'f', 'f', null, null, null, null, '41334', null);
INSERT INTO "ot_observe_record" VALUES ('6', '91', '44436080', '249', null, '53.5913162231445', '11.0673551559448', '3002.78', '2616.28', null, null, '2019-02-17 11:14:47', '163.885', null, null, null, '4.22151', '12.0049', '0.0346', null, null, null, '103', '7', '190217', 'f', 'f', null, null, null, null, '41259', null);
INSERT INTO "ot_observe_record" VALUES ('6', '92', '44436081', '250', null, '53.6535034179688', '11.0715780258179', '3000.46', '2635.86', null, null, '2019-02-17 11:15:02', '164.582', null, null, null, '4.41045', '11.9998', '0.035', null, null, null, '104', '7', '190217', 'f', 'f', null, null, null, null, '41268', null);
INSERT INTO "ot_observe_record" VALUES ('6', '93', '44436082', '251', null, '53.7198715209961', '11.0756568908691', '2998.1', '2656.73', null, null, '2019-02-17 11:15:17', '165.466', null, null, null, '4.32246', '12.028', '0.0359', null, null, null, '105', '7', '190217', 'f', 'f', null, null, null, null, '41270', null);
INSERT INTO "ot_observe_record" VALUES ('6', '94', '44436083', '252', null, '53.8412666320801', '11.0812177658081', '2994.4', '2695.14', null, null, '2019-02-17 11:15:47', '165.491', null, null, null, '4.49116', '12.1077', '0.039', null, null, null, '107', '7', '190217', 'f', 'f', null, null, null, null, '41368', null);
INSERT INTO "ot_observe_record" VALUES ('6', '95', '44436084', '253', null, '53.893196105957', '11.0836153030396', '2992.81', '2711.58', null, null, '2019-02-17 11:16:02', '165.491', null, null, null, '3.79446', '12.04', '0.0366', null, null, null, '108', '7', '190217', 'f', 'f', null, null, null, null, '41350', null);
INSERT INTO "ot_observe_record" VALUES ('6', '95', '0', '254', null, '53.893196105957', '11.0836153030396', '2992.81', '2711.58', null, null, '2019-02-17 11:16:02', '165.491', null, null, null, '3.79446', '12.04', '0.0366', null, null, null, '108', '7', '190217', 'f', 'f', null, null, null, null, '41350', null);
INSERT INTO "ot_observe_record" VALUES ('6', '96', '44436085', '255', null, '53.9687614440918', '11.0882244110107', '2990.13', '2735.47', null, null, '2019-02-17 11:16:17', '167.333', null, null, null, '3.92638', '12.0596', '0.0374', null, null, null, '109', '7', '190217', 'f', 'f', null, null, null, null, '41368', null);
INSERT INTO "ot_observe_record" VALUES ('6', '97', '44436086', '256', null, '54.0295257568359', '11.0914649963379', '2988.12', '2754.64', null, null, '2019-02-17 11:16:32', '171.716', null, null, null, '4.50063', '12.0873', '0.0401', null, null, null, '110', '7', '190217', 'f', 'f', null, null, null, null, '41339', null);
INSERT INTO "ot_observe_record" VALUES ('6', '98', '44436087', '257', null, '54.0865592956543', '11.0948009490967', '2986.12', '2772.74', null, null, '2019-02-17 11:16:47', '179.089', null, null, null, '2.46667', '12.0688', '0.0426', null, null, null, '111', '7', '190217', 'f', 'f', null, null, null, null, '41349', null);
INSERT INTO "ot_observe_record" VALUES ('6', '99', '44436088', '258', null, '54.1564331054688', '11.0981941223145', '2983.89', '2794.9', null, null, '2019-02-17 11:17:02', '183.758', null, null, null, '4.69535', '12.1368', '0.048', null, null, null, '112', '7', '190217', 'f', 'f', null, null, null, null, '41353', null);
INSERT INTO "ot_observe_record" VALUES ('6', '100', '44436089', '259', null, '54.2188568115234', '11.1012573242188', '2981.87', '2814.73', null, null, '2019-02-17 11:17:17', '184.567', null, null, null, '4.56933', '12.288', '0.0564', null, null, null, '113', '7', '190217', 'f', 'f', null, null, null, null, '41327', null);
INSERT INTO "ot_observe_record" VALUES ('6', '101', '44436090', '260', null, '54.2812728881836', '11.1049060821533', '2979.68', '2834.44', null, null, '2019-02-17 11:17:32', '183.903', null, null, null, '4.14345', '12.0696', '0.044', null, null, null, '114', '7', '190217', 'f', 'f', null, null, null, null, '41301', null);
INSERT INTO "ot_observe_record" VALUES ('6', '102', '44436091', '261', null, '54.3559684753418', '11.1094255447388', '2977', '2858.02', null, null, '2019-02-17 11:17:47', '187.923', null, null, null, '3.87493', '12.1995', '0.0516', null, null, null, '115', '7', '190217', 'f', 'f', null, null, null, null, '41361', null);
INSERT INTO "ot_observe_record" VALUES ('6', '103', '44436092', '262', null, '54.4061126708984', '11.1113548278809', '2975.55', '2873.94', null, null, '2019-02-17 11:18:02', '196.943', null, null, null, '4.65606', '12.3443', '0.0663', null, null, null, '116', '7', '190217', 'f', 'f', null, null, null, null, '41322', null);
INSERT INTO "ot_observe_record" VALUES ('6', '104', '44436093', '263', null, '54.4684562683105', '11.1148958206177', '2973.37', '2893.75', null, null, '2019-02-17 11:18:17', '205.85', null, null, null, '4.40563', '12.318', '0.0698', null, null, null, '117', '7', '190217', 'f', 'f', null, null, null, null, '41360', null);
INSERT INTO "ot_observe_record" VALUES ('6', '105', '44436094', '264', null, '54.5325927734375', '11.1126909255981', '2972.99', '2914.25', null, null, '2019-02-17 11:18:32', '212.674', null, null, null, '1.7051', '12.1148', '0.0612', null, null, null, '118', '7', '190217', 'f', 'f', null, null, null, null, '41364', null);
INSERT INTO "ot_observe_record" VALUES ('6', '106', '44436095', '265', null, '54.5942344665527', '11.1211452484131', '2969.25', '2933.7', null, null, '2019-02-17 11:18:47', '209.75', null, null, null, '4.76466', '12.2388', '0.0725', null, null, null, '119', '7', '190217', 'f', 'f', null, null, null, null, '41334', null);
INSERT INTO "ot_observe_record" VALUES ('6', '107', '44436096', '266', null, '54.6586647033691', '11.1244897842407', '2967.09', '2954.08', null, null, '2019-02-17 11:19:02', '202.539', null, null, null, '4.10119', '12.346', '0.0766', null, null, null, '120', '7', '190217', 'f', 'f', null, null, null, null, '41260', null);
INSERT INTO "ot_observe_record" VALUES ('6', '108', '44436097', '267', null, '54.7223510742188', '11.127459526062', '2965.05', '2974.29', null, null, '2019-02-17 11:19:17', '195.409', null, null, null, '4.64757', '12.3839', '0.0694', null, null, null, '121', '7', '190217', 'f', 'f', null, null, null, null, '41345', null);
INSERT INTO "ot_observe_record" VALUES ('6', '109', '44436098', '268', null, '54.7833137512207', '11.130763053894', '2962.96', '2993.54', null, null, '2019-02-17 11:19:32', '181.923', null, null, null, '4.51675', '12.2952', '0.057', null, null, null, '122', '7', '190217', 'f', 'f', null, null, null, null, '41256', null);
INSERT INTO "ot_observe_record" VALUES ('6', '110', '44436099', '269', null, '54.8470191955566', '11.133752822876', '2960.9', '3013.58', null, null, '2019-02-17 11:19:47', '170.188', null, null, null, '4.29601', '12.3302', '0.0506', null, null, null, '123', '7', '190217', 'f', 'f', null, null, null, null, '41274', null);
INSERT INTO "ot_observe_record" VALUES ('6', '111', '44436100', '270', null, '54.9079170227051', '11.1369895935059', '2958.84', '3032.7', null, null, '2019-02-17 11:20:02', '166.066', null, null, null, '4.02003', '12.2631', '0.0448', null, null, null, '124', '7', '190217', 'f', 'f', null, null, null, null, '41363', null);
INSERT INTO "ot_observe_record" VALUES ('6', '112', '44436101', '271', null, '54.9714813232422', '11.1400775909424', '2956.77', '3052.46', null, null, '2019-02-17 11:20:17', '164.303', null, null, null, '4.49233', '12.4262', '0.0518', null, null, null, '125', '7', '190217', 'f', 'f', null, null, null, null, '41288', null);
INSERT INTO "ot_observe_record" VALUES ('6', '113', '44436102', '272', null, '55.0354995727539', '11.1433610916138', '2954.63', '3072.4', null, null, '2019-02-17 11:20:32', '163.754', null, null, null, '5.03695', '12.3632', '0.0489', null, null, null, '126', '7', '190217', 'f', 'f', null, null, null, null, '41343', null);
INSERT INTO "ot_observe_record" VALUES ('6', '114', '44436103', '273', null, '55.098690032959', '11.146050453186', '2952.66', '3092.23', null, null, '2019-02-17 11:20:47', '163.305', null, null, null, '4.2825', '12.4043', '0.0504', null, null, null, '127', '7', '190217', 'f', 'f', null, null, null, null, '41351', null);
INSERT INTO "ot_observe_record" VALUES ('6', '115', '44436104', '274', null, '55.1604614257812', '11.1494579315186', '2950.5', '3111.64', null, null, '2019-02-17 11:21:02', '163.128', null, null, null, '4.69248', '12.4688', '0.053', null, null, null, '128', '7', '190217', 'f', 'f', null, null, null, null, '41245', null);
INSERT INTO "ot_observe_record" VALUES ('6', '116', '44436105', '275', null, '55.2239151000977', '11.1523895263672', '2948.45', '3131.61', null, null, '2019-02-17 11:21:17', '163.095', null, null, null, '4.44016', '12.4137', '0.0512', null, null, null, '129', '7', '190217', 'f', 'f', null, null, null, null, '41351', null);
INSERT INTO "ot_observe_record" VALUES ('6', '117', '44436106', '276', null, '55.3480911254883', '11.158130645752', '2944.43', '3170.48', null, null, '2019-02-17 11:21:47', '162.92', null, null, null, '4.15232', '12.5287', '0.0569', null, null, null, '131', '7', '190217', 'f', 'f', null, null, null, null, '143992', null);
INSERT INTO "ot_observe_record" VALUES ('6', '118', '44436107', '277', null, '55.4121589660645', '11.1614904403687', '2942.22', '3190.66', null, null, '2019-02-17 11:22:02', '163.113', null, null, null, '4.33871', '12.5716', '0.0593', null, null, null, '132', '7', '190217', 'f', 'f', null, null, null, null, '129365', null);
INSERT INTO "ot_observe_record" VALUES ('6', '119', '44436108', '278', null, '55.4795112609863', '11.1617317199707', '2940.95', '3211.97', null, null, '2019-02-17 11:22:17', '162.916', null, null, null, '4.44252', '12.543', '0.0582', null, null, null, '133', '7', '190217', 'f', 'f', null, null, null, null, '115088', null);
INSERT INTO "ot_observe_record" VALUES ('6', '120', '44436109', '279', null, '55.5385932922363', '11.166974067688', '2938.19', '3230.66', null, null, '2019-02-17 11:22:32', '162.535', null, null, null, '4.36964', '12.5313', '0.057', null, null, null, '134', '7', '190217', 'f', 'f', null, null, null, null, '99541', null);
INSERT INTO "ot_observe_record" VALUES ('6', '121', '44436110', '280', null, '55.664852142334', '11.1729707717896', '2934', '3270.65', null, null, '2019-02-17 11:23:02', '162.072', null, null, null, '4.42647', '12.4955', '0.0552', null, null, null, '136', '7', '190217', 'f', 'f', null, null, null, null, '70913', null);
INSERT INTO "ot_observe_record" VALUES ('6', '122', '44436111', '281', null, '55.7142753601074', '11.1745834350586', '2932.59', '3286.18', null, null, '2019-02-17 11:23:17', '162.13', null, null, null, '4.02143', '12.568', '0.0589', null, null, null, '137', '7', '190217', 'f', 'f', null, null, null, null, '56694', null);
INSERT INTO "ot_observe_record" VALUES ('6', '122', '0', '282', null, '55.7142753601074', '11.1745834350586', '2932.59', '3286.18', null, null, '2019-02-17 11:23:17', '162.13', null, null, null, '4.02143', '12.568', '0.0589', null, null, null, '137', '7', '190217', 'f', 'f', null, null, null, null, '56694', null);
INSERT INTO "ot_observe_record" VALUES ('6', '123', '44436112', '283', null, '55.7892303466797', '11.1785802841187', '2929.97', '3309.73', null, null, '2019-02-17 11:23:32', '162.151', null, null, null, '4.85453', '12.6278', '0.0622', null, null, null, '138', '7', '190217', 'f', 'f', null, null, null, null, '41374', null);
INSERT INTO "ot_observe_record" VALUES ('6', '124', '44436113', '284', null, '55.9144592285156', '11.1840753555298', '2925.9', '3349.23', null, null, '2019-02-17 11:24:02', '162.274', null, null, null, '4.46987', '12.6071', '0.0603', null, null, null, '140', '7', '190217', 'f', 'f', null, null, null, null, '41329', null);
INSERT INTO "ot_observe_record" VALUES ('6', '125', '44436114', '285', null, '55.9793663024902', '11.186484336853', '2923.95', '3369.65', null, null, '2019-02-17 11:24:17', '162.357', null, null, null, '4.34257', '12.5151', '0.0566', null, null, null, '141', '7', '190217', 'f', 'f', null, null, null, null, '41351', null);
INSERT INTO "ot_observe_record" VALUES ('6', '126', '44436115', '286', null, '56.0309791564941', '11.1887502670288', '2922.26', '3385.89', null, null, '2019-02-17 11:24:32', '162.467', null, null, null, '3.59584', '12.5703', '0.059', null, null, null, '142', '7', '190217', 'f', 'f', null, null, null, null, '41298', null);
INSERT INTO "ot_observe_record" VALUES ('6', '126', '0', '287', null, '56.0309791564941', '11.1887502670288', '2922.26', '3385.89', null, null, '2019-02-17 11:24:32', '162.467', null, null, null, '3.59584', '12.5703', '0.059', null, null, null, '142', '7', '190217', 'f', 'f', null, null, null, null, '41298', null);
INSERT INTO "ot_observe_record" VALUES ('6', '127', '44436116', '288', null, '56.1027526855469', '11.1921815872192', '2919.84', '3408.44', null, null, '2019-02-17 11:24:47', '162.296', null, null, null, '4.48981', '12.7327', '0.0686', null, null, null, '143', '7', '190217', 'f', 'f', null, null, null, null, '41330', null);
INSERT INTO "ot_observe_record" VALUES ('6', '128', '44436117', '289', null, '56.1676216125488', '11.1952524185181', '2917.65', '3428.89', null, null, '2019-02-17 11:25:02', '162.315', null, null, null, '4.04209', '12.7989', '0.0726', null, null, null, '144', '7', '190217', 'f', 'f', null, null, null, null, '41339', null);
INSERT INTO "ot_observe_record" VALUES ('6', '129', '44436118', '290', null, '56.2291717529297', '11.1979427337646', '2915.61', '3448.37', null, null, '2019-02-17 11:25:17', '162.3', null, null, null, '4.60766', '12.7639', '0.0713', null, null, null, '145', '7', '190217', 'f', 'f', null, null, null, null, '41325', null);
INSERT INTO "ot_observe_record" VALUES ('6', '130', '44436119', '291', null, '56.2906494140625', '11.2005548477173', '2913.63', '3467.81', null, null, '2019-02-17 11:25:32', '162.336', null, null, null, '5.34631', '12.8005', '0.0738', null, null, null, '146', '7', '190217', 'f', 'f', null, null, null, null, '41339', null);
INSERT INTO "ot_observe_record" VALUES ('6', '131', '44436120', '292', null, '56.3686256408691', '11.2041921615601', '2911', '3492.48', null, null, '2019-02-17 11:25:47', '162.505', null, null, null, '3.8788', '12.7238', '0.0688', null, null, null, '147', '7', '190217', 'f', 'f', null, null, null, null, '41342', null);
INSERT INTO "ot_observe_record" VALUES ('6', '131', '0', '293', null, '56.3686256408691', '11.2041921615601', '2911', '3492.48', null, null, '2019-02-17 11:25:47', '162.505', null, null, null, '3.8788', '12.7238', '0.0688', null, null, null, '147', '7', '190217', 'f', 'f', null, null, null, null, '41342', null);
INSERT INTO "ot_observe_record" VALUES ('6', '132', '44436121', '294', null, '56.4812431335449', '11.2081165313721', '2907.56', '3528.11', null, null, '2019-02-17 11:26:17', '162.684', null, null, null, '4.45505', '12.8225', '0.0749', null, null, null, '149', '7', '190217', 'f', 'f', null, null, null, null, '41348', null);
INSERT INTO "ot_observe_record" VALUES ('6', '133', '44436122', '295', null, '56.5424423217773', '11.2095279693604', '2905.94', '3547.59', null, null, '2019-02-17 11:26:32', '162.803', null, null, null, '5.87856', '12.7093', '0.0682', null, null, null, '150', '7', '190217', 'f', 'f', null, null, null, null, '41332', null);
INSERT INTO "ot_observe_record" VALUES ('6', '134', '44436123', '296', null, '56.6053009033203', '11.2131757736206', '2903.56', '3567.54', null, null, '2019-02-17 11:26:47', '162.863', null, null, null, '3.90643', '12.8984', '0.0809', null, null, null, '151', '7', '190217', 'f', 'f', null, null, null, null, '41329', null);
INSERT INTO "ot_observe_record" VALUES ('6', '135', '44436124', '297', null, '56.6733131408691', '11.2161293029785', '2901.31', '3589.03', null, null, '2019-02-17 11:27:02', '162.822', null, null, null, '4.20976', '12.8356', '0.0758', null, null, null, '152', '7', '190217', 'f', 'f', null, null, null, null, '41359', null);
INSERT INTO "ot_observe_record" VALUES ('6', '135', '0', '298', null, '56.6733131408691', '11.2161293029785', '2901.31', '3589.03', null, null, '2019-02-17 11:27:02', '162.822', null, null, null, '4.20976', '12.8356', '0.0758', null, null, null, '152', '7', '190217', 'f', 'f', null, null, null, null, '41359', null);
INSERT INTO "ot_observe_record" VALUES ('6', '136', '44436125', '299', null, '56.7382621765137', '11.219388961792', '2899', '3609.55', null, null, '2019-02-17 11:27:17', '162.969', null, null, null, '3.5977', '12.8213', '0.0754', null, null, null, '153', '7', '190217', 'f', 'f', null, null, null, null, '41372', null);
INSERT INTO "ot_observe_record" VALUES ('6', '136', '0', '300', null, '56.7382621765137', '11.219388961792', '2899', '3609.55', null, null, '2019-02-17 11:27:17', '162.969', null, null, null, '3.5977', '12.8213', '0.0754', null, null, null, '153', '7', '190217', 'f', 'f', null, null, null, null, '41372', null);
INSERT INTO "ot_observe_record" VALUES ('6', '137', '44436126', '301', null, '56.7853584289551', '11.219690322876', '2898', '3624.51', null, null, '2019-02-17 11:27:32', '163.18', null, null, null, '4.2646', '12.9403', '0.0844', null, null, null, '154', '7', '190217', 'f', 'f', null, null, null, null, '41356', null);
INSERT INTO "ot_observe_record" VALUES ('6', '137', '0', '302', null, '56.7853584289551', '11.219690322876', '2898', '3624.51', null, null, '2019-02-17 11:27:32', '163.18', null, null, null, '4.2646', '12.9403', '0.0844', null, null, null, '154', '7', '190217', 'f', 'f', null, null, null, null, '41356', null);
INSERT INTO "ot_observe_record" VALUES ('6', '138', '44436127', '303', null, '56.8572425842285', '11.2236051559448', '2895.35', '3647.29', null, null, '2019-02-17 11:27:47', '163.41', null, null, null, '4.55275', '12.9738', '0.0867', null, null, null, '155', '7', '190217', 'f', 'f', null, null, null, null, '41259', null);
INSERT INTO "ot_observe_record" VALUES ('6', '139', '44436128', '304', null, '56.9221687316895', '11.2260026931763', '2893.29', '3667.91', null, null, '2019-02-17 11:28:02', '163.467', null, null, null, '4.01596', '13.1054', '0.0985', null, null, null, '156', '7', '190217', 'f', 'f', null, null, null, null, '41355', null);
INSERT INTO "ot_observe_record" VALUES ('6', '140', '44436129', '305', null, '56.9868354797363', '11.2282457351685', '2891.27', '3688.37', null, null, '2019-02-17 11:28:17', '163.487', null, null, null, '3.95207', '12.9271', '0.0841', null, null, null, '157', '7', '190217', 'f', 'f', null, null, null, null, '41317', null);
INSERT INTO "ot_observe_record" VALUES ('6', '141', '44436130', '306', null, '57.0446357727051', '11.2300519943237', '2889.53', '3706.65', null, null, '2019-02-17 11:28:32', '163.565', null, null, null, '4.81565', '12.9576', '0.0862', null, null, null, '158', '7', '190217', 'f', 'f', null, null, null, null, '41346', null);
INSERT INTO "ot_observe_record" VALUES ('6', '142', '44436131', '307', null, '57.1002388000488', '11.2331256866455', '2887.47', '3724.25', null, null, '2019-02-17 11:28:47', '163.665', null, null, null, '3.93391', '13.0016', '0.0902', null, null, null, '159', '7', '190217', 'f', 'f', null, null, null, null, '41333', null);
INSERT INTO "ot_observe_record" VALUES ('6', '143', '44436132', '308', null, '57.1728019714355', '11.2355661392212', '2885.24', '3747.2', null, null, '2019-02-17 11:29:02', '164.038', null, null, null, '5.59937', '13.059', '0.0958', null, null, null, '160', '7', '190217', 'f', 'f', null, null, null, null, '41272', null);
INSERT INTO "ot_observe_record" VALUES ('6', '144', '44436133', '309', null, '57.2361869812012', '11.2380018234253', '2883.18', '3767.2', null, null, '2019-02-17 11:29:17', '164.312', null, null, null, '4.56769', '13.2013', '0.1093', null, null, null, '161', '7', '190217', 'f', 'f', null, null, null, null, '41285', null);
INSERT INTO "ot_observe_record" VALUES ('6', '145', '44436134', '310', null, '57.297721862793', '11.2401399612427', '2881.28', '3786.58', null, null, '2019-02-17 11:29:32', '164.587', null, null, null, '4.44764', '12.9692', '0.0884', null, null, null, '162', '7', '190217', 'f', 'f', null, null, null, null, '41322', null);
INSERT INTO "ot_observe_record" VALUES ('6', '146', '44436135', '311', null, '57.3666496276855', '11.2432308197021', '2878.91', '3808.15', null, null, '2019-02-17 11:29:47', '164.947', null, null, null, '4.30397', '13.0422', '0.0946', null, null, null, '163', '7', '190217', 'f', 'f', null, null, null, null, '41353', null);
INSERT INTO "ot_observe_record" VALUES ('0', '147', '0', '312', null, '47.4524612426758', '10.6271238327026', '3217.12', '676.669', null, null, null, '176.911', null, null, null, '5.31582', '11.2966', '0.0246', null, null, null, '164', '7', '190217', 'f', 'f', null, null, null, null, '123456', null);
INSERT INTO "ot_observe_record" VALUES ('7', '148', '44436136', '313', null, '47.4524612426758', '10.6271238327026', '3217.12', '676.669', null, null, '2019-09-26 19:12:25', '176.911', null, null, null, '5.31582', '11.2966', '0.0246', null, null, null, '200', '7', '190217', 'f', 'f', null, null, null, null, '123456', null);
INSERT INTO "ot_observe_record" VALUES ('0', '148', '0', '314', null, '47.4524612426758', '10.6271238327026', '3217.12', '676.669', null, null, '2019-09-26 19:12:25', '176.911', null, null, null, '5.31582', '11.2966', '0.0246', null, null, null, '200', '7', '190217', 'f', 'f', null, null, null, null, '123456', null);
COMMIT;

-- ----------------------------
-- Table structure for ot_observe_record_his
-- ----------------------------
DROP TABLE IF EXISTS "ot_observe_record_his";
CREATE TABLE "ot_observe_record_his" (
"ot_id" int8 DEFAULT 0,
"ff_id" int8 DEFAULT 0,
"ffc_id" int8 DEFAULT 0,
"oor_id" int8 NOT NULL,
"ot_type_id" int2,
"ra_d" float8,
"dec_d" float8,
"x" float4,
"y" float4,
"x_temp" float4,
"y_temp" float4,
"date_ut" timestamp(6),
"flux" float4,
"flag" int4,
"flag_chb" float4,
"background" float4,
"threshold" float4,
"mag_aper" float4,
"magerr_aper" float4,
"ellipticity" float4,
"class_star" float4,
"ot_flag" bool,
"ff_number" int4,
"dpm_id" int4,
"date_str" char(6) COLLATE "default",
"request_cut" bool DEFAULT false,
"success_cut" bool DEFAULT false,
"sky_id" int2,
"distance" float4,
"deltamag" float4,
"data_produce_method" char(1) COLLATE "default",
"time_sub_second" int4 DEFAULT 0,
"probability" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_observe_record_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_observe_record_tmp
-- ----------------------------
DROP TABLE IF EXISTS "ot_observe_record_tmp";
CREATE TABLE "ot_observe_record_tmp" (
"ot_id" int8,
"ff_id" int8,
"ra" float4,
"dec" float4,
"x" float4,
"y" float4,
"datetime" timestamp(6),
"mag" float4,
"mag_err" float4,
"ellipticity" float4,
"signal_noise" float4,
"fwhm" float4,
"flux" float4,
"flux_err" float4,
"cmp_star_id" int8,
"mch_star_id" int8,
"ffc_id" int8,
"oor_id" int8 DEFAULT nextval('oort_id_seq'::regclass) NOT NULL,
"ot_type_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_observe_record_tmp
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_tmpl_true
-- ----------------------------
DROP TABLE IF EXISTS "ot_tmpl_true";
CREATE TABLE "ot_tmpl_true" (
"ot_id" int8 NOT NULL,
"name" char(14) COLLATE "default",
"ra" float4,
"dec" float4,
"mag" float4,
"healpix_id" int8 DEFAULT 0,
"data_produce_method" char(1) COLLATE "default",
"first_found_time_utc" timestamp(6),
"last_found_time_utc" timestamp(6),
"matched_total" int4 DEFAULT 0,
"is_valid" bool DEFAULT true,
"ott_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_tmpl_true
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_tmpl_wrong
-- ----------------------------
DROP TABLE IF EXISTS "ot_tmpl_wrong";
CREATE TABLE "ot_tmpl_wrong" (
"ot_id" int8 NOT NULL,
"name" char(14) COLLATE "default",
"ra" float4,
"dec" float4,
"mag" float4,
"index_id" int8 DEFAULT 0,
"data_produce_method" char(1) COLLATE "default",
"first_found_time_utc" timestamp(6),
"last_found_time_utc" timestamp(6),
"matched_total" int4 DEFAULT 0,
"is_valid" bool DEFAULT true,
"ott_id" int2,
"ot_class" char(1) COLLATE "default",
"radius" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot_tmpl_wrong
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot_type
-- ----------------------------
DROP TABLE IF EXISTS "ot_type";
CREATE TABLE "ot_type" (
"ott_id" int2 DEFAULT nextval('ott_id_seq'::regclass) NOT NULL,
"ott_name" varchar(64) COLLATE "default",
"comment" varchar(1024) COLLATE "default",
"priority" int2,
"ot_class" char(1) COLLATE "default" DEFAULT 0
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "ot_type" IS 'ot_class的取值有5种：
0，未分类
1，真OT
2，动OT
3，错OT
4，假OT';

-- ----------------------------
-- Records of ot_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for ot2_stream_node_time
-- ----------------------------
DROP TABLE IF EXISTS "ot2_stream_node_time";
CREATE TABLE "ot2_stream_node_time" (
"ot_id" int8 NOT NULL,
"oor_id1" int8,
"oor_id2" int8,
"ot2_gen_time" timestamp(6) DEFAULT now(),
"lookback_time" timestamp(6),
"lookup_time" timestamp(6),
"lookup_result_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of ot2_stream_node_time
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for process_status
-- ----------------------------
DROP TABLE IF EXISTS "process_status";
CREATE TABLE "process_status" (
"ps_id" int2 DEFAULT nextval('ps_id_seq'::regclass) NOT NULL,
"ps_name" char(32) COLLATE "default",
"ps_comment" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of process_status
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for rainfall
-- ----------------------------
DROP TABLE IF EXISTS "rainfall";
CREATE TABLE "rainfall" (
"rain_id" int8 DEFAULT nextval('rain_id_seq'::regclass) NOT NULL,
"gid" varchar(16) COLLATE "default",
"ctime" timestamp(6),
"value" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of rainfall
-- ----------------------------
BEGIN;
INSERT INTO "rainfall" VALUES ('1', '001', '2019-09-20 18:12:34', '28');
INSERT INTO "rainfall" VALUES ('2', '001', '2019-09-20 18:12:34', '28.9');
INSERT INTO "rainfall" VALUES ('3', '001', '2019-09-25 17:04:25', '3.12');
INSERT INTO "rainfall" VALUES ('4', '001', '2019-09-25 17:04:25', '3.12');
INSERT INTO "rainfall" VALUES ('5', '001', '2019-09-25 17:04:25', '3.12');
INSERT INTO "rainfall" VALUES ('6', '001', '2019-09-25 17:04:25', '3.12');
INSERT INTO "rainfall" VALUES ('7', '001', '2019-09-25 18:12:34', '28.9');
INSERT INTO "rainfall" VALUES ('8', '001', '2019-09-25 18:12:34', '28.9');
INSERT INTO "rainfall" VALUES ('9', '001', '2019-09-25 18:12:34', '28.9');
INSERT INTO "rainfall" VALUES ('10', '001', '2019-09-25 18:12:34', '128.9');
INSERT INTO "rainfall" VALUES ('11', '001', '2019-09-25 18:12:34', '0');
COMMIT;

-- ----------------------------
-- Table structure for science_object
-- ----------------------------
DROP TABLE IF EXISTS "science_object";
CREATE TABLE "science_object" (
"so_id" int8 DEFAULT nextval('sci_obj_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"point_ra" float8,
"point_dec" float8,
"discovery_time_utc" timestamp(6),
"last_obs_time_utc" timestamp(6),
"followup_times" int4,
"origin_organization" varchar(255) COLLATE "default",
"mag" float4,
"full_name" varchar(255) COLLATE "default",
"type" varchar(255) COLLATE "default",
"is_true" bool DEFAULT true,
"status" int4 DEFAULT (-1),
"auto_observation" bool DEFAULT true,
"fup_count" int4 DEFAULT 0,
"obj_ra" float8,
"obj_dec" float8,
"trigger_status" int4 DEFAULT (-1),
"found_usno_b2" float4 DEFAULT (-99),
"found_usno_r2" float4 DEFAULT (-99),
"found_usno_i" float4 DEFAULT (-99),
"fup_obj_id" int8,
"auto_loop_slow" int4 DEFAULT 1
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of science_object
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for science_object_final
-- ----------------------------
DROP TABLE IF EXISTS "science_object_final";
CREATE TABLE "science_object_final" (
"sof_id" int8 DEFAULT nextval('sof_id_seq'::regclass) NOT NULL,
"name" varchar(128) COLLATE "default",
"trigger_time" varchar(32) COLLATE "default",
"ra" varchar(128) COLLATE "default",
"dec" varchar(128) COLLATE "default",
"mag_detect" varchar(128) COLLATE "default",
"mag_catalog" varchar(128) COLLATE "default",
"amplitude" varchar(128) COLLATE "default",
"duty_scientist" varchar(128) COLLATE "default",
"mag_absolute" varchar(128) COLLATE "default",
"followup" varchar(1024) COLLATE "default",
"comments" varchar(10240) COLLATE "default",
"type" varchar(16) COLLATE "default",
"discovery_time" varchar(32) COLLATE "default",
"source" varchar(128) COLLATE "default",
"public_msg" varchar(10240) COLLATE "default",
"gwac_type" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of science_object_final
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sky_region_template
-- ----------------------------
DROP TABLE IF EXISTS "sky_region_template";
CREATE TABLE "sky_region_template" (
"tmpt_id" int8 DEFAULT nextval('tmpt_id_seq'::regclass) NOT NULL,
"tmpt_name" varchar COLLATE "default",
"center_ra" float4,
"center_dec" float4,
"top_left_ra" float4,
"top_left_dec" float4,
"top_right_ra" float4,
"top_right_dec" float4,
"bottom_right_ra" float4,
"bottom_right_dec" float4,
"bottom_left_ra" float4,
"bottom_left_dec" float4,
"gen_time" timestamp(6),
"store_path" varchar COLLATE "default",
"star_num" int4,
"fwhm" float4,
"mount_id" int4,
"sky_id" int4,
"cam_id" int4,
"date_time" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sky_region_template
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for star_know
-- ----------------------------
DROP TABLE IF EXISTS "star_know";
CREATE TABLE "star_know" (
"star_id" int8 DEFAULT nextval('star_id_seq'::regclass) NOT NULL,
"star_name" varchar COLLATE "default",
"ra" float4,
"dec" float4,
"mag" float4,
"vt_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of star_know
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for star_know_observe_record
-- ----------------------------
DROP TABLE IF EXISTS "star_know_observe_record";
CREATE TABLE "star_know_observe_record" (
"star_id" int8,
"ff_id" int8,
"ra" float4,
"dec" float4,
"x" float4,
"y" float4,
"datetime" timestamp(6),
"mag" float4,
"mag_err" float4,
"ellipticity" float4,
"signal_noise" float4,
"fwhm" float4,
"flux" float4,
"flux_err" float4,
"cmp_star_id" int8,
"mch_star_id" int8,
"skor_id" int8 DEFAULT nextval('skor_id_seq'::regclass) NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of star_know_observe_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for star_list_file
-- ----------------------------
DROP TABLE IF EXISTS "star_list_file";
CREATE TABLE "star_list_file" (
"slf_id" int8 DEFAULT nextval('slf_id_seq'::regclass) NOT NULL,
"dpm_id" int2,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of star_list_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for sync_file
-- ----------------------------
DROP TABLE IF EXISTS "sync_file";
CREATE TABLE "sync_file" (
"sf_id" int8 DEFAULT nextval('sf_id_seq'::regclass) NOT NULL,
"file_name" varchar(1024) COLLATE "default",
"path" varchar(1024) COLLATE "default",
"store_time" timestamp(6),
"is_sync" bool DEFAULT false,
"is_sync_success" bool DEFAULT false
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of sync_file
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_keyword
-- ----------------------------
DROP TABLE IF EXISTS "system_keyword";
CREATE TABLE "system_keyword" (
"sys_kw_id" int2 NOT NULL,
"obj_type_id" int2,
"sys_kw _name" varchar(128) COLLATE "default",
"sys_kw _name_ch" varchar(128) COLLATE "default",
"comment" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_keyword
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS "system_log";
CREATE TABLE "system_log" (
"log_id" int8 DEFAULT nextval('log_id_seq'::regclass) NOT NULL,
"log_type" char(1) COLLATE "default",
"log_code" int4,
"log_date" timestamp(6),
"log_content" varchar(1024) COLLATE "default",
"msg_source" varchar(64) COLLATE "default" DEFAULT ''::character varying,
"msg_ip" varchar(64) COLLATE "default" DEFAULT ''::character varying,
"obj_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_log_his
-- ----------------------------
DROP TABLE IF EXISTS "system_log_his";
CREATE TABLE "system_log_his" (
"log_id" int8 DEFAULT nextval('log_id_seq'::regclass) NOT NULL,
"log_type" char(1) COLLATE "default",
"log_code" int4,
"log_date" timestamp(6),
"log_content" varchar(1024) COLLATE "default",
"msg_source" varchar(64) COLLATE "default" DEFAULT ''::character varying,
"msg_ip" varchar(64) COLLATE "default" DEFAULT ''::character varying,
"obj_id" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_log_his
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_parameter
-- ----------------------------
DROP TABLE IF EXISTS "system_parameter";
CREATE TABLE "system_parameter" (
"sp_id" int8 DEFAULT nextval('sp_id_seq'::regclass) NOT NULL,
"clould_image_ip" varchar(128) COLLATE "default",
"clould_image_user" varchar(32) COLLATE "default",
"clould_image_password" varchar(32) COLLATE "default",
"clould_image_path" varchar(128) COLLATE "default",
"latest_clould_image" varchar(128) COLLATE "default",
"latest_clould_image_time" timestamp(6),
"control_server_ip" varchar(128) COLLATE "default",
"system_status" varchar(32) COLLATE "default",
"control_server_port" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_parameter
-- ----------------------------
BEGIN;
INSERT INTO "system_parameter" VALUES ('0', '172.28.9.14', 'wata', '123456', 'resource', 'yuntu.jpg', '2019-09-27 22:00:25', '127.0.0.1', 'stop', '18851');
COMMIT;

-- ----------------------------
-- Table structure for system_status
-- ----------------------------
DROP TABLE IF EXISTS "system_status";
CREATE TABLE "system_status" (
"id" int4 DEFAULT nextval('ss_id_seq'::regclass) NOT NULL,
"date_str" char(6) COLLATE "default",
"total_storage_size" float4,
"used_storage_size" float4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_status
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for system_status_monitor
-- ----------------------------
DROP TABLE IF EXISTS "system_status_monitor";
CREATE TABLE "system_status_monitor" (
"identity" char(3) COLLATE "default" NOT NULL,
"reg_img_name" varchar(255) COLLATE "default",
"reg_img_time" timestamp(6),
"img_parm_name" varchar(255) COLLATE "default",
"img_parm_time" timestamp(6),
"ot1_list_name" varchar(255) COLLATE "default",
"ot1_list_time" timestamp(6),
"img_cut_file_name" varchar(255) COLLATE "default",
"img_cut_file_time" timestamp(6),
"look_back_ot2_name" varchar(255) COLLATE "default",
"look_back_ot2_time" timestamp(6),
"thumbnail_name" varchar(255) COLLATE "default",
"thumbnail_time" timestamp(6),
"log_content" varchar(255) COLLATE "default",
"log_time" timestamp(6),
"img_parm_id" int8,
"cam_temperature" float4,
"img_fwhm" varchar COLLATE "default",
"position_error" float4,
"cam_temperature_high" float4,
"process_machine_status" int4,
"process_machine_storage" float4,
"process_machine_cpu" float4,
"capture_machine_status" int4,
"capture_machine_storage" float4,
"capture_machine_cpu" float4,
"op_sn" int8,
"op_time" timestamp(6),
"process_machine_time" timestamp(6),
"capture_machine_time" timestamp(6),
"img_cut_file_name_sub" varchar(255) COLLATE "default",
"img_cut_file_time_sub" timestamp(6),
"ot1_list_name_sub" varchar(255) COLLATE "default",
"ot1_list_time_sub" timestamp(6),
"look_back_ot2_name_sub" varchar COLLATE "default",
"look_back_ot2_time_sub" timestamp(6),
"img_cut_file_ref_name" varchar(255) COLLATE "default",
"img_cut_file_ref_time" timestamp(6),
"img_cut_request_ref_name" varchar(255) COLLATE "default",
"img_cut_request_ref_time" timestamp(6),
"img_cut_request_name" varchar(255) COLLATE "default",
"img_cut_request_time" timestamp(6),
"camera_status" int4,
"root_used" float4,
"root_used_time" timestamp(6),
"data_used" float4,
"data_used_time" timestamp(6),
"data1_used" float4,
"data1_used_time" timestamp(6),
"data2_used" float4,
"data2_used_time" timestamp(6),
"data3_used" float4,
"data3_used_time" timestamp(6),
"astro_flag" int4
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of system_status_monitor
-- ----------------------------
BEGIN;
INSERT INTO "system_status_monitor" VALUES ('011', '001', '2017-10-23 17:03:12.532936', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '44', '2017-10-28 03:42:35.782202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('012', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-10-28 03:42:35.782202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('013', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-10-28 03:42:35.782202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('014', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-10-28 03:42:35.782202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('015', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-10-28 03:42:35.782202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('021', 'G021_Mon_objt_190917T12245430.fit', '2019-09-17 20:25:08.883024', 'G021_Mon_objt_190917T12245430.imqty', '2019-09-17 20:25:13.522737', 'G021_Mon_objt_190917T12245430.crsot1', '2019-09-17 20:25:13.478722', 'G190917_C02140_0120.fit', '2019-09-17 20:25:19.599057', 'G190917_C02140', '2019-09-17 20:25:18.052284', 'G021_Mon_objt_190917T12245430.jpg', '2019-09-17 20:25:13.473403', null, null, '11423191', '0', '2.237134', '-3.32883', null, null, null, null, null, null, null, null, '2019-09-15 20:28:23.96526', null, null, null, null, 'G021_Mon_objt_190623T15281796.cat', '2019-06-23 23:29:11.957838', null, null, 'G190917_C02140_0119_ref_20190831T125947040504.fit', '2019-09-17 20:25:19.255191', null, null, '021_20190917202516840.lst', '2019-09-17 20:25:16.810229', '3', '0.629', '2019-07-01 03:39:11.736442', '0.428', '2019-07-01 03:39:11.736442', '0.933', '2019-07-01 03:39:11.736442', '0.934', '2019-07-01 03:39:11.736442', '0.196', '2019-07-01 03:39:11.736442', '1');
INSERT INTO "system_status_monitor" VALUES ('022', 'G022_Mon_objt_190917T12245430.fit', '2019-09-17 20:25:08.881703', 'G022_Mon_objt_190916T17485430.imqty', '2019-09-17 01:49:12.394111', 'G022_Mon_objt_190916T17485430.crsot1', '2019-09-17 01:49:12.349177', 'G190916_C07802_0120.fit', '2019-09-17 01:49:19.87636', 'G190916_C07953', '2019-09-17 01:49:16.702825', 'G022_Mon_objt_190916T17485430.jpg', '2019-09-17 01:49:12.304483', null, null, '11417047', '0', '1.90094', '16.6441', null, null, null, null, null, null, null, null, '2019-09-15 20:28:23.96526', null, null, null, null, 'G022_Mon_objt_190622T13572696.cat', '2019-06-23 06:18:11.793415', null, null, 'G190916_C07953_0118_ref_20190916T173324306366.fit', '2019-09-17 01:49:17.580074', null, null, '022_20190917014918708.lst', '2019-09-17 01:49:18.696886', '3', '0.815', '2019-07-01 03:39:23.230622', '0.518', '2019-07-01 03:39:23.230622', '0.21', '2019-07-01 03:39:23.230622', '0.937', '2019-07-01 03:39:23.230622', '0.934', '2019-07-01 03:39:23.230622', '1');
INSERT INTO "system_status_monitor" VALUES ('023', 'G023_Mon_objt_190917T12245413.fit', '2019-09-17 20:25:08.72016', 'G023_Mon_objt_190917T12245413.imqty', '2019-09-17 20:25:13.697545', 'G023_Mon_objt_190917T12245413.crsot1', '2019-09-17 20:25:13.653491', 'G190917_C02142_0120.fit', '2019-09-17 20:25:34.233653', 'G190917_C02141', '2019-09-17 20:25:27.335611', 'G023_Mon_objt_190917T12245413.jpg', '2019-09-17 20:25:13.608286', null, null, '11423190', '0', '2.654711', '7.88486', null, null, null, null, null, null, null, null, '2019-09-04 22:09:21.461276', null, null, null, null, 'G023_Mon_objt_190623T15281789.cat', '2019-06-23 23:29:04.708591', null, null, 'G190917_C02142_0117_ref_20190917T115939138750.fit', '2019-09-17 20:25:33.825025', null, null, '023_20190917202525798.lst', '2019-09-17 20:25:25.781561', '3', '0.832', '2019-07-01 03:39:34.740401', '0.483', '2019-07-01 03:39:34.740401', '0.936', '2019-07-01 03:39:34.740401', '0.316', '2019-07-01 03:39:34.740401', '0.931', '2019-07-01 03:39:34.740401', '1');
INSERT INTO "system_status_monitor" VALUES ('024', 'G024_Mon_objt_190917T12245414.fit', '2019-09-17 20:25:08.717254', 'G024_Mon_objt_190917T12245414.imqty', '2019-09-17 20:25:12.765629', 'G024_Mon_objt_190917T12245414.crsot1', '2019-09-17 20:25:12.721303', 'G190917_C01183_0120.fit', '2019-09-17 20:25:17.650876', 'G190917_C02127', '2019-09-17 20:24:48.371522', 'G024_Mon_objt_190917T12245414.jpg', '2019-09-17 20:25:12.711813', null, null, '11423193', '0', '2.178314', '-3.24005', null, null, null, null, null, null, null, null, '2019-04-02 01:54:41.034156', null, null, null, null, 'G024_Mon_objt_190623T15281827.cat', '2019-06-23 23:29:17.282752', null, null, 'G190917_C02127_0114_ref_20190830T130900773237.fit', '2019-09-17 20:24:49.905648', null, null, '024_20190917202515828.lst', '2019-09-17 20:25:15.825123', '3', '0.928', '2019-07-01 03:39:45.943843', '0.533', '2019-07-01 03:39:45.943843', '0.871', '2019-07-01 03:39:45.943843', '0.946', '2019-07-01 03:39:45.943843', '0.924', '2019-07-01 03:39:45.943843', '1');
INSERT INTO "system_status_monitor" VALUES ('025', 'G025_Mon_objt_190917T12254941.fit', '2019-09-17 20:26:05.284098', 'G025_Mon_objt_190917T12254941.imqty', '2019-09-17 20:26:08.126458', 'G025_Mon_objt_190917T12254941.crsot1', '2019-09-17 20:26:08.082282', 'G190917_C01195_0115.fit', '2019-09-17 20:26:02.580036', 'G190917_C01371', '2019-09-17 20:01:27.859613', 'G025_Mon_objt_190917T12254941.jpg', '2019-09-17 20:26:08.076891', null, null, '11423212', '3.67132', '659.64935', '1.16602', null, null, null, null, null, null, null, null, '2019-06-13 22:19:15.925664', null, null, null, null, null, null, null, null, 'G190917_C01371_0019_ref_20190830T130904728021.fit', '2019-09-17 20:01:31.386754', null, null, '025_20190917202601554.lst', '2019-09-17 20:26:01.524772', '3', '0.788', '2019-07-01 03:39:57.369154', '0.43', '2019-07-01 03:39:57.369154', '0.41', '2019-07-01 03:39:57.369154', '0.745', '2019-07-01 03:39:57.369154', '0.923', '2019-07-01 03:39:57.369154', '1');
INSERT INTO "system_status_monitor" VALUES ('031', 'G031_bias_190915T11492679.fit', '2019-09-15 19:49:31.330037', 'G031_tom_objt_190701T14340919.imqty', '2019-07-01 22:34:38.24386', 'G031_tom_objt_190701T14340919.crsot1', '2019-07-01 22:34:38.199836', 'G190701_C01801_0033.fit', '2019-07-01 22:45:35.039322', 'G190701_C01801', '2019-07-01 22:34:43.051473', 'G031_tom_objt_190701T14340919.jpg', '2019-07-01 22:34:38.194393', null, null, '11324210', '0', '2.19397', '-8.20245', null, null, null, null, null, null, null, null, '2019-01-16 17:47:25.849541', null, null, null, null, 'G031_ToM_objt_190522T14324436.cat', '2019-05-22 22:33:27.853228', null, null, 'G190701_C01801_0032_ref_20190701T142248440527.fit', '2019-07-01 22:45:34.403862', null, null, '031_20190701223439595.lst', '2019-07-01 22:34:39.795736', '3', '0.831', '2019-07-01 03:40:08.564668', '0.405', '2019-07-01 03:40:08.564668', '0.949', '2019-07-01 03:40:08.564668', '0.948', '2019-07-01 03:40:08.564668', '0.277', '2019-07-01 03:40:08.564668', '1');
INSERT INTO "system_status_monitor" VALUES ('032', 'G032_mon_objt_190131T15394151.fit', '2019-01-31 23:39:56.101092', 'G032_mon_objt_190131T15394151.imqty', '2019-01-31 23:40:06.422471', 'G032_mon_objt_190131T14350051.crsot1', '2019-01-31 22:35:19.916573', 'G190131_C10406_0228.fit', '2019-01-31 22:35:07.521892', 'G190131_C10406', '2019-01-31 22:35:08.694348', 'G032_mon_objt_190131T15394151.jpg', '2019-01-31 23:40:06.369298', null, null, '9970876', '0', '1.979882', '-128.71', null, null, null, null, null, null, null, null, '2019-05-23 21:15:46.729806', null, null, null, null, 'G032_mon_objt_190131T14350051.cat', '2019-01-31 22:54:55.590421', null, null, 'G190131_C10406_0228_ref_20190124T151255181882.fit', '2019-01-31 22:35:06.895703', null, null, '032_20190131223506273_ref.lst', '2019-01-31 22:35:06.274611', '3', '0.809', '2019-07-01 03:40:19.669352', '0.327', '2019-07-01 03:40:19.669352', '0.78', '2019-07-01 03:40:19.669352', '0', '2019-07-01 03:40:19.669352', '0.924', '2019-07-01 03:40:19.669352', '-6');
INSERT INTO "system_status_monitor" VALUES ('033', 'G033_bias_190915T11492682.fit', '2019-09-15 19:49:31.352485', 'G033_tom_objt_190701T15092412.imqty', '2019-07-01 23:09:53.008444', 'G033_tom_objt_190701T15092412.crsot1', '2019-07-01 23:09:52.963696', 'G190701_C03142_0120.fit', '2019-07-01 23:31:12.171985', 'G190701_C03142', '2019-07-01 23:09:56.985313', 'G033_tom_objt_190701T15092412.jpg', '2019-07-01 23:09:52.958039', null, null, '11324993', '0', '10000.0', '2.45248', null, null, null, null, null, null, null, null, '2019-04-14 19:38:17.299061', null, null, null, null, 'G033_toa_objt_190603T14034065.cat', '2019-06-03 22:04:21.051628', null, null, 'G190701_C03142_0116_ref_20190701T143231842895.fit', '2019-07-01 23:31:11.930587', null, null, '033_20190701230953539.lst', '2019-07-01 23:09:53.74293', '3', '0.804', '2019-07-01 03:40:30.776858', '0.276', '2019-07-01 03:40:30.776858', '0.936', '2019-07-01 03:40:30.776858', '0.876', '2019-07-01 03:40:30.776858', '0.937', '2019-07-01 03:40:30.776858', '1');
INSERT INTO "system_status_monitor" VALUES ('034', 'G034_bias_190915T11492660.fit', '2019-09-15 19:49:31.144957', 'G034_tom_objt_190701T15092394.imqty', '2019-07-01 23:09:58.342363', 'G034_tom_objt_190701T14105870.crsot1', '2019-07-01 22:11:30.443517', 'G190701_C00040_0118.fit', '2019-07-01 22:11:42.489264', 'G190701_C01053', '2019-07-01 22:10:21.296071', 'G034_tom_objt_190701T15092394.jpg', '2019-07-01 23:09:58.29863', null, null, '11324994', '0', '2.391422', '-279', null, null, null, null, null, null, null, null, '2018-12-14 14:47:29.222788', null, null, null, null, 'G034_toa_objt_190603T14034061.cat', '2019-06-03 22:04:22.554908', null, null, 'G190701_C01054_0116_ref_20190701T133204940504.fit', '2019-07-01 22:10:26.179831', null, null, '034_20190701221140004.lst', '2019-07-01 22:11:40.195185', '3', '0.842', '2019-07-01 03:40:41.881934', '0.414', '2019-07-01 03:40:41.881934', '0.949', '2019-07-01 03:40:41.881934', '0.936', '2019-07-01 03:40:41.881934', '0.262', '2019-07-01 03:40:41.881934', '-6');
INSERT INTO "system_status_monitor" VALUES ('035', 'G035_dark_190816T17461193.fit', '2019-08-17 01:46:27.785456', 'G035_toa_objt_190603T14430657.imqty', '2019-06-03 22:53:50.193432', 'G035_toa_objt_190603T14430657.crsot1', '2019-06-03 22:53:50.146118', 'G190603_C00553_0069.fit', '2019-06-04 02:01:14.405373', 'G190603_C00553', '2019-06-03 22:53:57.309208', 'G035_toa_objt_190603T14430657.jpg', '2019-06-03 22:53:50.137509', null, null, '11312890', '2.03683', '93.34586', '-0.434372', null, null, null, null, null, null, null, null, '2019-09-02 20:16:37.931296', null, null, null, null, null, null, null, null, 'G190603_C00553_0069_ref_20190522T160506929631.fit', '2019-06-04 02:01:14.243845', null, null, '035_20190603225354160.lst', '2019-06-03 22:53:54.158391', '4', '0.788', '2019-07-01 03:40:52.98642', '0.195', '2019-07-01 03:40:52.98642', '0', '2019-07-01 03:40:52.98642', '0.927', '2019-07-01 03:40:52.98642', '0.47', '2019-07-01 03:40:52.98642', '1');
INSERT INTO "system_status_monitor" VALUES ('041', 'G041_Mon_objt_190917T12253789.fit', '2019-09-17 20:25:52.490435', 'G041_Mon_objt_190917T12253789.imqty', '2019-09-17 20:26:01.391647', 'G041_Mon_objt_190917T12253789.crsot1', '2019-09-17 20:26:01.347278', 'G190917_C02152_0118.fit', '2019-09-17 20:26:04.030235', 'G190917_C02152', '2019-09-17 20:26:05.688669', 'G041_Mon_objt_190917T12253789.jpg', '2019-09-17 20:25:59.842297', null, null, '11423209', '0', '2.106997', '-7.61368', null, null, null, null, null, null, null, null, '2019-01-08 17:10:55.578215', null, null, 'G171106_C02891_0298_sub.jpg', '2017-11-06 19:44:55.907426', 'G041_Mon_objt_190623T14530731.cat', '2019-06-23 22:59:58.800212', null, null, 'G190917_C02152_0118_ref_20190831T114853167739.fit', '2019-09-17 20:26:03.460494', null, null, '041_20190917202602779_ref.lst', '2019-09-17 20:26:02.772251', '3', '0.81', '2019-07-01 03:41:05.096975', '0.366', '2019-07-01 03:41:05.096975', '0.913', '2019-07-01 03:41:05.096975', '0.237', '2019-07-01 03:41:05.096975', '0.836', '2019-07-01 03:41:05.096975', '1');
INSERT INTO "system_status_monitor" VALUES ('042', 'G042_Mon_objt_190917T12253789.fit', '2019-09-17 20:25:52.490702', 'G042_Mon_objt_190917T11213891.imqty', '2019-09-17 19:38:40.86991', 'G042_Mon_objt_190917T11213891.crsot1', '2019-09-17 19:38:40.452204', 'G190916_C11545_0116.fit', '2019-09-17 03:32:41.761126', 'G190916_C11539', '2019-09-17 03:28:37.548844', 'G042_Mon_objt_190917T11515301.jpg', '2019-09-17 19:53:19.002999', null, null, '11421958', '0', '2.121734', '7.79617', null, null, null, null, null, null, null, null, '2019-09-04 22:09:21.461276', null, null, 'G171107_C02560_0305_sub.jpg', '2017-11-08 05:05:53.163658', 'G042_Mon_objt_190623T14530756.cat', '2019-06-23 23:04:36.797976', null, null, 'G190916_C11545_0116_ref_20190830T192408228904.fit', '2019-09-17 03:32:41.539373', null, null, '042_20190917033002837.lst', '2019-09-17 03:30:02.808526', '3', '0.861', '2019-07-01 03:41:16.663207', '0.346', '2019-07-01 03:41:16.663207', '0.917', '2019-07-01 03:41:16.663207', '0.835', '2019-07-01 03:41:16.663207', '0.93', '2019-07-01 03:41:16.663207', '1');
INSERT INTO "system_status_monitor" VALUES ('043', 'G043_Mon_objt_190917T12253744.fit', '2019-09-17 20:25:52.031881', 'G043_Mon_objt_190917T12253744.imqty', '2019-09-17 20:25:58.184679', 'G043_Mon_objt_190917T12253744.crsot1', '2019-09-17 20:25:58.140399', 'G190917_C02150_0117.fit', '2019-09-17 20:26:07.589182', 'G190917_C02150', '2019-09-17 20:26:05.225191', 'G043_Mon_objt_190917T12253744.jpg', '2019-09-17 20:25:58.134925', null, null, '11423208', '0', '2.857757', '4.927', null, null, null, null, null, null, null, null, '2019-09-04 22:09:21.461276', null, null, 'G171107_C02474_0232_sub.jpg', '2017-11-08 04:45:47.272579', 'G043_Mon_objt_190623T14530804.cat', '2019-06-23 23:03:07.231048', null, null, 'G190917_C02150_0117_ref_20190917T121552441797.fit', '2019-09-17 20:26:07.459819', null, null, '043_20190917202602072.lst', '2019-09-17 20:26:02.051784', '3', '0.581', '2019-07-01 03:41:28.147547', '0.32', '2019-07-01 03:41:28.147547', '0.922', '2019-07-01 03:41:28.147547', '0.928', '2019-07-01 03:41:28.147547', '0.31', '2019-07-01 03:41:28.147547', '1');
INSERT INTO "system_status_monitor" VALUES ('044', 'G044_Mon_objt_190917T12253736.fit', '2019-09-17 20:25:51.953028', 'G044_Mon_objt_190917T12253736.imqty', '2019-09-17 20:25:59.110152', 'G044_Mon_objt_190917T12253736.crsot1', '2019-09-17 20:25:59.06665', 'G190917_C02148_0119.fit', '2019-09-17 20:25:50.361288', 'G190917_C02148', '2019-09-17 20:25:48.21672', 'G044_Mon_objt_190917T12253736.jpg', '2019-09-17 20:25:59.061354', null, null, '11423211', '0', '2.330463', '-7.64435', null, null, null, null, null, null, null, null, '2019-09-08 19:29:26.42596', null, null, 'G171107_C02574_0517_sub.jpg', '2017-11-08 05:56:47.35428', 'G044_Mon_objt_190623T14530740.cat', '2019-06-23 23:01:51.4704', null, null, 'G190917_C02148_0118_ref_20190917T121022368493.fit', '2019-09-17 20:25:49.970576', null, null, '044_20190917202545528.lst', '2019-09-17 20:25:45.502284', '3', '0.591', '2019-07-01 03:41:39.585079', '0.498', '2019-07-01 03:41:39.585079', '0.923', '2019-07-01 03:41:39.585079', '0.922', '2019-07-01 03:41:39.585079', '0.754', '2019-07-01 03:41:39.585079', '1');
INSERT INTO "system_status_monitor" VALUES ('045', 'G045_Mon_objt_190917T12255675.fit', '2019-09-17 20:26:12.629402', 'G045_Mon_objt_190917T12254075.imqty', '2019-09-17 20:26:00.355356', 'G045_Mon_objt_190917T12254075.crsot1', '2019-09-17 20:26:00.311253', 'G190917_C02151_0114.fit', '2019-09-17 20:26:07.793237', 'G190917_C02151', '2019-09-17 20:26:05.604937', 'G045_Mon_objt_190917T12254075.jpg', '2019-09-17 20:26:00.306204', null, null, '11423210', '0', '1084.081', '0.000640869', null, null, null, null, null, null, null, null, '2017-11-02 12:16:29.688914', null, null, 'G171107_C01863_0254_sub.jpg', '2017-11-08 01:24:39.300862', 'G045_tom_objt_190413T20175127_2_c_c.cat', '2019-04-17 18:21:56.924634', null, null, 'G190917_C02151_0112_ref_20190831T115412636272.fit', '2019-09-17 20:26:07.381576', null, null, '045_20190917202602291.lst', '2019-09-17 20:26:02.262065', '3', '0.789', '2019-07-01 03:41:50.840402', '0.639', '2019-07-01 03:41:50.840402', '0.924', '2019-07-01 03:41:50.840402', '0.816', '2019-07-01 03:41:50.840402', '0.924', '2019-07-01 03:41:50.840402', '1');
INSERT INTO "system_status_monitor" VALUES ('051', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-11-02 12:16:04.733869', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('052', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-11-02 12:16:04.733869', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('053', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-11-02 12:16:04.733869', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('054', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-11-02 12:16:04.733869', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO "system_status_monitor" VALUES ('055', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2017-11-02 12:16:04.733869', null, null, null, null, null, null, null, null, null, null, null, null, null, null, '2', null, null, null, null, null, null, null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for timing_task
-- ----------------------------
DROP TABLE IF EXISTS "timing_task";
CREATE TABLE "timing_task" (
"tt_id" int8 DEFAULT nextval('tt_id_seq'::regclass) NOT NULL,
"tt_name" varchar(255) COLLATE "default",
"tt_command" varchar(1024) COLLATE "default" DEFAULT ''::character varying,
"dpm_name" char(3) COLLATE "default",
"plan_start_time" time(6),
"plan_end_time" time(6),
"real_end_time" timestamp(6),
"status" char(1) COLLATE "default",
"comments" varchar(1024) COLLATE "default" DEFAULT ''::character varying,
"tt_file_name" varchar(128) COLLATE "default",
"type" char(1) COLLATE "default" DEFAULT 1,
"execute_path" varchar(255) COLLATE "default",
"plan_start_date" date,
"plan_end_date" date,
"add_time" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of timing_task
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for timing_task_log
-- ----------------------------
DROP TABLE IF EXISTS "timing_task_log";
CREATE TABLE "timing_task_log" (
"ttl_id" int8 DEFAULT nextval('ttl_id_seq'::regclass) NOT NULL,
"tt_id" int8,
"content" varchar(10240) COLLATE "default" DEFAULT ''::character varying,
"time" timestamp(6),
"dpm_id" int2
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of timing_task_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upload_file_record
-- ----------------------------
DROP TABLE IF EXISTS "upload_file_record";
CREATE TABLE "upload_file_record" (
"ufr_id" int8 DEFAULT nextval('ufr_id_seq'::regclass) NOT NULL,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"file_type" char(1) COLLATE "default",
"upload_success" bool,
"upload_date" timestamp(6),
"send_time" timestamp(6),
"process_done_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of upload_file_record
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for upload_file_unstore
-- ----------------------------
DROP TABLE IF EXISTS "upload_file_unstore";
CREATE TABLE "upload_file_unstore" (
"ufu_id" int8 DEFAULT nextval('ufu_id_seq'::regclass) NOT NULL,
"store_path" varchar(255) COLLATE "default",
"file_name" varchar(255) COLLATE "default",
"file_type" char(1) COLLATE "default",
"upload_success" bool,
"upload_date" timestamp(6),
"send_time" timestamp(6),
"process_done_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of upload_file_unstore
-- ----------------------------
BEGIN;
INSERT INTO "upload_file_unstore" VALUES ('37253271', '20190918/G022/otlist', 'G022_mon_objt_190217T10501704.record', '1', 't', '2019-09-18 20:27:25.735', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253272', '20190918/G022/otlist', 'G022_mon_objt_190217T10503204.record', '1', 't', '2019-09-18 20:33:28.523', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253273', '20190918/G022/otlist', 'G022_mon_objt_190217T10504704.record', '1', 't', '2019-09-18 20:33:28.582', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253274', '20190918/G022/otlist', 'G022_mon_objt_190217T10510204.record', '1', 't', '2019-09-18 20:33:28.636', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253275', '20190918/G022/otlist', 'G022_mon_objt_190217T10511704.record', '1', 't', '2019-09-18 20:33:28.658', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253276', '20190918/G022/otlist', 'G022_mon_objt_190217T10513204.record', '1', 't', '2019-09-18 20:33:28.68', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253277', '20190918/G022/otlist', 'G022_mon_objt_190217T10514704.record', '1', 't', '2019-09-18 20:33:28.702', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253278', '20190918/G022/otlist', 'G022_mon_objt_190217T10520204.record', '1', 't', '2019-09-18 20:33:28.824', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253279', '20190918/G022/otlist', 'G022_mon_objt_190217T10521704.record', '1', 't', '2019-09-18 20:33:28.939', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253280', '20190918/G022/otlist', 'G022_mon_objt_190217T10523204.record', '1', 't', '2019-09-18 20:33:28.96', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253281', '20190918/G022/otlist', 'G022_mon_objt_190217T10524704.record', '1', 't', '2019-09-18 20:33:28.984', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253282', '20190918/G022/otlist', 'G022_mon_objt_190217T10530204.record', '1', 't', '2019-09-18 20:33:29.007', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253283', '20190918/G022/otlist', 'G022_mon_objt_190217T10531704.record', '1', 't', '2019-09-18 20:33:29.03', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253284', '20190918/G022/otlist', 'G022_mon_objt_190217T10533204.record', '1', 't', '2019-09-18 20:33:29.052', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253285', '20190918/G022/otlist', 'G022_mon_objt_190217T10550204.record', '1', 't', '2019-09-18 20:33:29.072', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253286', '20190918/G022/otlist', 'G022_mon_objt_190217T10551704.record', '1', 't', '2019-09-18 20:33:29.099', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253287', '20190918/G022/otlist', 'G022_mon_objt_190217T10553204.record', '1', 't', '2019-09-18 20:33:29.123', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253288', '20190918/G022/otlist', 'G022_mon_objt_190217T10554704.record', '1', 't', '2019-09-18 20:33:29.144', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253289', '20190918/G022/otlist', 'G022_mon_objt_190217T10560204.record', '1', 't', '2019-09-18 20:33:29.177', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253290', '20190918/G022/otlist', 'G022_mon_objt_190217T10561704.record', '1', 't', '2019-09-18 20:33:29.201', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253291', '20190918/G022/otlist', 'G022_mon_objt_190217T10563204.record', '1', 't', '2019-09-18 20:33:29.227', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253292', '20190918/G022/otlist', 'G022_mon_objt_190217T10564704.record', '1', 't', '2019-09-18 20:33:29.249', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253293', '20190918/G022/otlist', 'G022_mon_objt_190217T10570204.record', '1', 't', '2019-09-18 20:33:29.271', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253294', '20190918/G022/otlist', 'G022_mon_objt_190217T10571704.record', '1', 't', '2019-09-18 20:33:29.293', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253295', '20190918/G022/otlist', 'G022_mon_objt_190217T10573204.record', '1', 't', '2019-09-18 20:33:29.316', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253296', '20190918/G022/otlist', 'G022_mon_objt_190217T10574704.record', '1', 't', '2019-09-18 20:33:29.337', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253297', '20190918/G022/otlist', 'G022_mon_objt_190217T10580204.record', '1', 't', '2019-09-18 20:33:29.358', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253298', '20190918/G022/otlist', 'G022_mon_objt_190217T10581704.record', '1', 't', '2019-09-18 20:33:29.379', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253299', '20190918/G022/otlist', 'G022_mon_objt_190217T10583204.record', '1', 't', '2019-09-18 20:33:29.4', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253300', '20190918/G022/otlist', 'G022_mon_objt_190217T10584704.record', '1', 't', '2019-09-18 20:33:29.423', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253301', '20190918/G022/otlist', 'G022_mon_objt_190217T10590204.record', '1', 't', '2019-09-18 20:33:29.449', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253302', '20190918/G022/otlist', 'G022_mon_objt_190217T10591704.record', '1', 't', '2019-09-18 20:33:29.477', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253303', '20190918/G022/otlist', 'G022_mon_objt_190217T10593204.record', '1', 't', '2019-09-18 20:33:29.506', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253304', '20190918/G022/otlist', 'G022_mon_objt_190217T10594704.record', '1', 't', '2019-09-18 20:33:29.537', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253305', '20190918/G022/otlist', 'G022_mon_objt_190217T11000204.record', '1', 't', '2019-09-18 20:33:29.564', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253306', '20190918/G022/otlist', 'G022_mon_objt_190217T11001704.record', '1', 't', '2019-09-18 20:33:29.589', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253307', '20190918/G022/otlist', 'G022_mon_objt_190217T11003204.record', '1', 't', '2019-09-18 20:33:29.615', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253308', '20190918/G022/otlist', 'G022_mon_objt_190217T11004704.record', '1', 't', '2019-09-18 20:33:29.638', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253309', '20190918/G022/otlist', 'G022_mon_objt_190217T11010204.record', '1', 't', '2019-09-18 20:33:29.66', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253310', '20190918/G022/otlist', 'G022_mon_objt_190217T11011704.record', '1', 't', '2019-09-18 20:33:29.685', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253311', '20190918/G022/otlist', 'G022_mon_objt_190217T11013204.record', '1', 't', '2019-09-18 20:33:29.71', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253312', '20190918/G022/otlist', 'G022_mon_objt_190217T11014704.record', '1', 't', '2019-09-18 20:33:29.732', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253313', '20190918/G022/otlist', 'G022_mon_objt_190217T11020204.record', '1', 't', '2019-09-18 20:33:29.756', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253314', '20190918/G022/otlist', 'G022_mon_objt_190217T11021704.record', '1', 't', '2019-09-18 20:33:29.779', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253315', '20190918/G022/otlist', 'G022_mon_objt_190217T11023204.record', '1', 't', '2019-09-18 20:33:29.802', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253316', '20190918/G022/otlist', 'G022_mon_objt_190217T11024704.record', '1', 't', '2019-09-18 20:33:29.822', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253317', '20190918/G022/otlist', 'G022_mon_objt_190217T11030204.record', '1', 't', '2019-09-18 20:33:29.843', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253318', '20190918/G022/otlist', 'G022_mon_objt_190217T11031704.record', '1', 't', '2019-09-18 20:33:29.863', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253319', '20190918/G022/otlist', 'G022_mon_objt_190217T11033204.record', '1', 't', '2019-09-18 20:33:29.885', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253320', '20190918/G022/otlist', 'G022_mon_objt_190217T11034704.record', '1', 't', '2019-09-18 20:33:29.906', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253321', '20190918/G022/otlist', 'G022_mon_objt_190217T11040204.record', '1', 't', '2019-09-18 20:33:29.929', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253322', '20190918/G022/otlist', 'G022_mon_objt_190217T11041704.record', '1', 't', '2019-09-18 20:33:29.949', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253323', '20190918/G022/otlist', 'G022_mon_objt_190217T11043215.record', '1', 't', '2019-09-18 20:33:29.97', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253324', '20190918/G022/otlist', 'G022_mon_objt_190217T11044713.record', '1', 't', '2019-09-18 20:33:29.994', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253325', '20190918/G022/otlist', 'G022_mon_objt_190217T11050212.record', '1', 't', '2019-09-18 20:33:30.018', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253326', '20190918/G022/otlist', 'G022_mon_objt_190217T11051710.record', '1', 't', '2019-09-18 20:33:30.045', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253327', '20190918/G022/otlist', 'G022_mon_objt_190217T11053209.record', '1', 't', '2019-09-18 20:33:30.07', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253328', '20190918/G022/otlist', 'G022_mon_objt_190217T11054707.record', '1', 't', '2019-09-18 20:33:30.091', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253329', '20190918/G022/otlist', 'G022_mon_objt_190217T11060206.record', '1', 't', '2019-09-18 20:33:30.111', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253330', '20190918/G022/otlist', 'G022_mon_objt_190217T11061704.record', '1', 't', '2019-09-18 20:33:30.133', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253331', '20190918/G022/otlist', 'G022_mon_objt_190217T11063204.record', '1', 't', '2019-09-18 20:33:30.156', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253332', '20190918/G022/otlist', 'G022_mon_objt_190217T11064704.record', '1', 't', '2019-09-18 20:33:30.177', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253333', '20190918/G022/otlist', 'G022_mon_objt_190217T11071704.record', '1', 't', '2019-09-18 20:33:30.198', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253334', '20190918/G022/otlist', 'G022_mon_objt_190217T11080204.record', '1', 't', '2019-09-18 20:33:30.22', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253335', '20190918/G022/otlist', 'G022_mon_objt_190217T11081704.record', '1', 't', '2019-09-18 20:33:30.242', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253336', '20190918/G022/otlist', 'G022_mon_objt_190217T11083204.record', '1', 't', '2019-09-18 20:33:30.271', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253337', '20190918/G022/otlist', 'G022_mon_objt_190217T11084704.record', '1', 't', '2019-09-18 20:33:30.298', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253338', '20190918/G022/otlist', 'G022_mon_objt_190217T11090204.record', '1', 't', '2019-09-18 20:33:30.325', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253339', '20190918/G022/otlist', 'G022_mon_objt_190217T11091704.record', '1', 't', '2019-09-18 20:33:30.348', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253340', '20190918/G022/otlist', 'G022_mon_objt_190217T11093204.record', '1', 't', '2019-09-18 20:33:30.371', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253341', '20190918/G022/otlist', 'G022_mon_objt_190217T11094704.record', '1', 't', '2019-09-18 20:33:30.395', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253342', '20190918/G022/otlist', 'G022_mon_objt_190217T11100204.record', '1', 't', '2019-09-18 20:33:30.427', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253343', '20190918/G022/otlist', 'G022_mon_objt_190217T11101704.record', '1', 't', '2019-09-18 20:33:30.457', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253344', '20190918/G022/otlist', 'G022_mon_objt_190217T11103204.record', '1', 't', '2019-09-18 20:33:30.491', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253345', '20190918/G022/otlist', 'G022_mon_objt_190217T11104704.record', '1', 't', '2019-09-18 20:33:30.52', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253346', '20190918/G022/otlist', 'G022_mon_objt_190217T11110204.record', '1', 't', '2019-09-18 20:33:30.562', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253347', '20190918/G022/otlist', 'G022_mon_objt_190217T11111704.record', '1', 't', '2019-09-18 20:33:30.596', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253348', '20190918/G022/otlist', 'G022_mon_objt_190217T11113204.record', '1', 't', '2019-09-18 20:33:30.628', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253349', '20190918/G022/otlist', 'G022_mon_objt_190217T11114704.record', '1', 't', '2019-09-18 20:33:30.662', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253350', '20190918/G022/otlist', 'G022_mon_objt_190217T11120204.record', '1', 't', '2019-09-18 20:33:30.689', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253351', '20190918/G022/otlist', 'G022_mon_objt_190217T11121704.record', '1', 't', '2019-09-18 20:33:30.714', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253352', '20190918/G022/otlist', 'G022_mon_objt_190217T11123204.record', '1', 't', '2019-09-18 20:33:30.741', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253353', '20190918/G022/otlist', 'G022_mon_objt_190217T11124704.record', '1', 't', '2019-09-18 20:33:30.769', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253354', '20190918/G022/otlist', 'G022_mon_objt_190217T11130204.record', '1', 't', '2019-09-18 20:33:30.792', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253355', '20190918/G022/otlist', 'G022_mon_objt_190217T11131704.record', '1', 't', '2019-09-18 20:33:30.817', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253356', '20190918/G022/otlist', 'G022_mon_objt_190217T11133204.record', '1', 't', '2019-09-18 20:33:30.855', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253357', '20190918/G022/otlist', 'G022_mon_objt_190217T11134704.record', '1', 't', '2019-09-18 20:33:30.896', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253358', '20190918/G022/otlist', 'G022_mon_objt_190217T11140204.record', '1', 't', '2019-09-18 20:33:30.924', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253359', '20190918/G022/otlist', 'G022_mon_objt_190217T11141704.record', '1', 't', '2019-09-18 20:33:30.949', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253360', '20190918/G022/otlist', 'G022_mon_objt_190217T11144704.record', '1', 't', '2019-09-18 20:33:30.976', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253361', '20190918/G022/otlist', 'G022_mon_objt_190217T11150204.record', '1', 't', '2019-09-18 20:33:31.006', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253362', '20190918/G022/otlist', 'G022_mon_objt_190217T11151704.record', '1', 't', '2019-09-18 20:33:31.072', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253363', '20190918/G022/otlist', 'G022_mon_objt_190217T11154704.record', '1', 't', '2019-09-18 20:33:31.1', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253364', '20190918/G022/otlist', 'G022_mon_objt_190217T11160204.record', '1', 't', '2019-09-18 20:33:31.121', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253365', '20190918/G022/otlist', 'G022_mon_objt_190217T11161704.record', '1', 't', '2019-09-18 20:33:31.168', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253366', '20190918/G022/otlist', 'G022_mon_objt_190217T11163204.record', '1', 't', '2019-09-18 20:33:31.191', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253367', '20190918/G022/otlist', 'G022_mon_objt_190217T11164704.record', '1', 't', '2019-09-18 20:33:31.208', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253368', '20190918/G022/otlist', 'G022_mon_objt_190217T11170204.record', '1', 't', '2019-09-18 20:33:31.233', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253369', '20190918/G022/otlist', 'G022_mon_objt_190217T11171704.record', '1', 't', '2019-09-18 20:33:31.26', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253370', '20190918/G022/otlist', 'G022_mon_objt_190217T11173204.record', '1', 't', '2019-09-18 20:33:31.286', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253371', '20190918/G022/otlist', 'G022_mon_objt_190217T11174704.record', '1', 't', '2019-09-18 20:33:31.31', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253372', '20190918/G022/otlist', 'G022_mon_objt_190217T11180204.record', '1', 't', '2019-09-18 20:33:31.338', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253373', '20190918/G022/otlist', 'G022_mon_objt_190217T11181704.record', '1', 't', '2019-09-18 20:33:31.366', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253374', '20190918/G022/otlist', 'G022_mon_objt_190217T11183204.record', '1', 't', '2019-09-18 20:33:31.392', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253375', '20190918/G022/otlist', 'G022_mon_objt_190217T11184704.record', '1', 't', '2019-09-18 20:33:31.419', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253376', '20190918/G022/otlist', 'G022_mon_objt_190217T11190204.record', '1', 't', '2019-09-18 20:33:31.447', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253377', '20190918/G022/otlist', 'G022_mon_objt_190217T11191704.record', '1', 't', '2019-09-18 20:33:31.465', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253378', '20190918/G022/otlist', 'G022_mon_objt_190217T11193204.record', '1', 't', '2019-09-18 20:33:31.486', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253379', '20190918/G022/otlist', 'G022_mon_objt_190217T11194704.record', '1', 't', '2019-09-18 20:33:31.507', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253380', '20190918/G022/otlist', 'G022_mon_objt_190217T11200204.record', '1', 't', '2019-09-18 20:33:31.528', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253381', '20190918/G022/otlist', 'G022_mon_objt_190217T11201704.record', '1', 't', '2019-09-18 20:33:31.548', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253382', '20190918/G022/otlist', 'G022_mon_objt_190217T11203204.record', '1', 't', '2019-09-18 20:33:31.569', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253383', '20190918/G022/otlist', 'G022_mon_objt_190217T11204704.record', '1', 't', '2019-09-18 20:33:31.591', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253384', '20190918/G022/otlist', 'G022_mon_objt_190217T11210204.record', '1', 't', '2019-09-18 20:33:31.615', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253385', '20190918/G022/otlist', 'G022_mon_objt_190217T11211704.record', '1', 't', '2019-09-18 20:33:31.638', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253386', '20190918/G022/otlist', 'G022_mon_objt_190217T11214714.record', '1', 't', '2019-09-18 20:33:31.66', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253387', '20190918/G022/otlist', 'G022_mon_objt_190217T11220212.record', '1', 't', '2019-09-18 20:33:31.681', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253388', '20190918/G022/otlist', 'G022_mon_objt_190217T11221711.record', '1', 't', '2019-09-18 20:33:31.703', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253389', '20190918/G022/otlist', 'G022_mon_objt_190217T11223209.record', '1', 't', '2019-09-18 20:33:31.724', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253390', '20190918/G022/otlist', 'G022_mon_objt_190217T11230207.record', '1', 't', '2019-09-18 20:33:31.746', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253391', '20190918/G022/otlist', 'G022_mon_objt_190217T11231705.record', '1', 't', '2019-09-18 20:33:31.771', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253392', '20190918/G022/otlist', 'G022_mon_objt_190217T11233204.record', '1', 't', '2019-09-18 20:33:31.816', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253393', '20190918/G022/otlist', 'G022_mon_objt_190217T11240204.record', '1', 't', '2019-09-18 20:33:31.841', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253394', '20190918/G022/otlist', 'G022_mon_objt_190217T11241704.record', '1', 't', '2019-09-18 20:33:31.863', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253395', '20190918/G022/otlist', 'G022_mon_objt_190217T11243204.record', '1', 't', '2019-09-18 20:33:31.885', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253396', '20190918/G022/otlist', 'G022_mon_objt_190217T11244704.record', '1', 't', '2019-09-18 20:33:31.92', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253397', '20190918/G022/otlist', 'G022_mon_objt_190217T11250204.record', '1', 't', '2019-09-18 20:33:31.94', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253398', '20190918/G022/otlist', 'G022_mon_objt_190217T11251704.record', '1', 't', '2019-09-18 20:33:31.96', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253399', '20190918/G022/otlist', 'G022_mon_objt_190217T11253204.record', '1', 't', '2019-09-18 20:33:31.98', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253400', '20190918/G022/otlist', 'G022_mon_objt_190217T11254704.record', '1', 't', '2019-09-18 20:33:31.999', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253401', '20190918/G022/otlist', 'G022_mon_objt_190217T11261704.record', '1', 't', '2019-09-18 20:33:32.036', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253402', '20190918/G022/otlist', 'G022_mon_objt_190217T11263204.record', '1', 't', '2019-09-18 20:33:32.057', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253403', '20190918/G022/otlist', 'G022_mon_objt_190217T11264704.record', '1', 't', '2019-09-18 20:33:32.079', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253404', '20190918/G022/otlist', 'G022_mon_objt_190217T11270204.record', '1', 't', '2019-09-18 20:33:32.101', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253405', '20190918/G022/otlist', 'G022_mon_objt_190217T11271704.record', '1', 't', '2019-09-18 20:33:32.142', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253406', '20190918/G022/otlist', 'G022_mon_objt_190217T11273204.record', '1', 't', '2019-09-18 20:33:32.187', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253407', '20190918/G022/otlist', 'G022_mon_objt_190217T11274704.record', '1', 't', '2019-09-18 20:33:32.23', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253408', '20190918/G022/otlist', 'G022_mon_objt_190217T11280204.record', '1', 't', '2019-09-18 20:33:32.254', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253409', '20190918/G022/otlist', 'G022_mon_objt_190217T11281704.record', '1', 't', '2019-09-18 20:33:32.274', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253410', '20190918/G022/otlist', 'G022_mon_objt_190217T11283204.record', '1', 't', '2019-09-18 20:33:32.294', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253411', '20190918/G022/otlist', 'G022_mon_objt_190217T11284704.record', '1', 't', '2019-09-18 20:33:32.317', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253412', '20190918/G022/otlist', 'G022_mon_objt_190217T11290204.record', '1', 't', '2019-09-18 20:33:32.34', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253413', '20190918/G022/otlist', 'G022_mon_objt_190217T11291704.record', '1', 't', '2019-09-18 20:33:32.36', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253414', '20190918/G022/otlist', 'G022_mon_objt_190217T11293204.record', '1', 't', '2019-09-18 20:33:32.379', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253415', '20190918/G022/otlist', 'G022_mon_objt_190217T11294704.record', '1', 't', '2019-09-18 20:33:32.4', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253416', '20190918/G022/otlist', 'G022_mon_objt_190217T10501704.obj', '2', 't', '2019-09-18 22:16:48.18', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253417', '20190918/G022/otlist', 'G022_mon_objt_190217T10503204.obj', '2', 't', '2019-09-18 22:37:36.805', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253418', '20190918/G022/otlist', 'G022_mon_objt_190217T10504704.obj', '2', 't', '2019-09-18 22:37:36.861', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253419', '20190918/G022/otlist', 'G022_mon_objt_190217T10510204.obj', '2', 't', '2019-09-18 22:37:36.892', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253420', '20190918/G022/otlist', 'G022_mon_objt_190217T10511704.obj', '2', 't', '2019-09-18 22:37:36.945', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253421', '20190918/G022/otlist', 'G022_mon_objt_190217T10513204.obj', '2', 't', '2019-09-18 22:37:36.973', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253422', '20190918/G022/otlist', 'G022_mon_objt_190217T10514704.obj', '2', 't', '2019-09-18 22:37:36.996', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253423', '20190918/G022/otlist', 'G022_mon_objt_190217T10520204.obj', '2', 't', '2019-09-18 22:37:37.022', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253424', '20190918/G022/otlist', 'G022_mon_objt_190217T10521704.obj', '2', 't', '2019-09-18 22:37:37.046', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253425', '20190918/G022/otlist', 'G022_mon_objt_190217T10523204.obj', '2', 't', '2019-09-18 22:37:37.072', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253426', '20190918/G022/otlist', 'G022_mon_objt_190217T10524704.obj', '2', 't', '2019-09-18 22:37:37.096', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253427', '20190918/G022/otlist', 'G022_mon_objt_190217T10530204.obj', '2', 't', '2019-09-18 22:37:37.121', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253428', '20190918/G022/otlist', 'G022_mon_objt_190217T10531704.obj', '2', 't', '2019-09-18 22:37:37.147', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253429', '20190918/G022/otlist', 'G022_mon_objt_190217T10533204.obj', '2', 't', '2019-09-18 22:37:37.171', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253430', '20190918/G022/otlist', 'G022_mon_objt_190217T10550204.obj', '2', 't', '2019-09-18 22:37:37.196', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253431', '20190918/G022/otlist', 'G022_mon_objt_190217T10551704.obj', '2', 't', '2019-09-18 22:37:37.219', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253432', '20190918/G022/otlist', 'G022_mon_objt_190217T10553204.obj', '2', 't', '2019-09-18 22:37:37.242', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253433', '20190918/G022/otlist', 'G022_mon_objt_190217T10554704.obj', '2', 't', '2019-09-18 22:37:37.273', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253434', '20190918/G022/otlist', 'G022_mon_objt_190217T10560204.obj', '2', 't', '2019-09-18 22:37:37.303', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253435', '20190918/G022/otlist', 'G022_mon_objt_190217T10561704.obj', '2', 't', '2019-09-18 22:37:37.334', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253436', '20190918/G022/otlist', 'G022_mon_objt_190217T10563204.obj', '2', 't', '2019-09-18 22:37:37.367', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253437', '20190918/G022/otlist', 'G022_mon_objt_190217T10564704.obj', '2', 't', '2019-09-18 22:37:37.4', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253438', '20190918/G022/otlist', 'G022_mon_objt_190217T10570204.obj', '2', 't', '2019-09-18 22:37:37.428', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253439', '20190918/G022/otlist', 'G022_mon_objt_190217T10571704.obj', '2', 't', '2019-09-18 22:37:37.453', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253440', '20190918/G022/otlist', 'G022_mon_objt_190217T10573204.obj', '2', 't', '2019-09-18 22:37:37.485', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253441', '20190918/G022/otlist', 'G022_mon_objt_190217T10574704.obj', '2', 't', '2019-09-18 22:37:37.512', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253442', '20190918/G022/otlist', 'G022_mon_objt_190217T10580204.obj', '2', 't', '2019-09-18 22:37:37.536', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253443', '20190918/G022/otlist', 'G022_mon_objt_190217T10581704.obj', '2', 't', '2019-09-18 22:37:37.564', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253444', '20190918/G022/otlist', 'G022_mon_objt_190217T10583204.obj', '2', 't', '2019-09-18 22:37:37.59', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253445', '20190918/G022/otlist', 'G022_mon_objt_190217T10584704.obj', '2', 't', '2019-09-18 22:37:37.614', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253446', '20190918/G022/otlist', 'G022_mon_objt_190217T10590204.obj', '2', 't', '2019-09-18 22:37:37.644', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253447', '20190918/G022/otlist', 'G022_mon_objt_190217T10591704.obj', '2', 't', '2019-09-18 22:37:37.669', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253448', '20190918/G022/otlist', 'G022_mon_objt_190217T10593204.obj', '2', 't', '2019-09-18 22:37:37.693', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253449', '20190918/G022/otlist', 'G022_mon_objt_190217T10594704.obj', '2', 't', '2019-09-18 22:37:37.718', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253450', '20190918/G022/otlist', 'G022_mon_objt_190217T11000204.obj', '2', 't', '2019-09-18 22:37:37.745', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253451', '20190918/G022/otlist', 'G022_mon_objt_190217T11001704.obj', '2', 't', '2019-09-18 22:37:37.771', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253452', '20190918/G022/otlist', 'G022_mon_objt_190217T11003204.obj', '2', 't', '2019-09-18 22:37:37.795', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253453', '20190918/G022/otlist', 'G022_mon_objt_190217T11004704.obj', '2', 't', '2019-09-18 22:37:37.825', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253454', '20190918/G022/otlist', 'G022_mon_objt_190217T11010204.obj', '2', 't', '2019-09-18 22:37:37.853', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253455', '20190918/G022/otlist', 'G022_mon_objt_190217T11011704.obj', '2', 't', '2019-09-18 22:37:37.876', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253456', '20190918/G022/otlist', 'G022_mon_objt_190217T11013204.obj', '2', 't', '2019-09-18 22:37:37.898', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253457', '20190918/G022/otlist', 'G022_mon_objt_190217T11014704.obj', '2', 't', '2019-09-18 22:37:37.922', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253458', '20190918/G022/otlist', 'G022_mon_objt_190217T11020204.obj', '2', 't', '2019-09-18 22:37:37.947', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253459', '20190918/G022/otlist', 'G022_mon_objt_190217T11021704.obj', '2', 't', '2019-09-18 22:37:37.969', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253460', '20190918/G022/otlist', 'G022_mon_objt_190217T11023204.obj', '2', 't', '2019-09-18 22:37:37.994', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253461', '20190918/G022/otlist', 'G022_mon_objt_190217T11024704.obj', '2', 't', '2019-09-18 22:37:38.022', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253462', '20190918/G022/otlist', 'G022_mon_objt_190217T11030204.obj', '2', 't', '2019-09-18 22:37:38.047', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253463', '20190918/G022/otlist', 'G022_mon_objt_190217T11031704.obj', '2', 't', '2019-09-18 22:37:38.073', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253464', '20190918/G022/otlist', 'G022_mon_objt_190217T11033204.obj', '2', 't', '2019-09-18 22:37:38.101', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253465', '20190918/G022/otlist', 'G022_mon_objt_190217T11034704.obj', '2', 't', '2019-09-18 22:37:38.129', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253466', '20190918/G022/otlist', 'G022_mon_objt_190217T11040204.obj', '2', 't', '2019-09-18 22:37:38.154', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253467', '20190918/G022/otlist', 'G022_mon_objt_190217T11041704.obj', '2', 't', '2019-09-18 22:37:38.18', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253468', '20190918/G022/otlist', 'G022_mon_objt_190217T11043215.obj', '2', 't', '2019-09-18 22:37:38.207', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253469', '20190918/G022/otlist', 'G022_mon_objt_190217T11044713.obj', '2', 't', '2019-09-18 22:37:38.241', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253470', '20190918/G022/otlist', 'G022_mon_objt_190217T11050212.obj', '2', 't', '2019-09-18 22:37:38.274', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253471', '20190918/G022/otlist', 'G022_mon_objt_190217T11051710.obj', '2', 't', '2019-09-18 22:37:38.307', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253472', '20190918/G022/otlist', 'G022_mon_objt_190217T11053209.obj', '2', 't', '2019-09-18 22:37:38.337', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253473', '20190918/G022/otlist', 'G022_mon_objt_190217T11054707.obj', '2', 't', '2019-09-18 22:37:38.365', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253474', '20190918/G022/otlist', 'G022_mon_objt_190217T11060206.obj', '2', 't', '2019-09-18 22:37:38.402', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253475', '20190918/G022/otlist', 'G022_mon_objt_190217T11061704.obj', '2', 't', '2019-09-18 22:37:38.428', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253476', '20190918/G022/otlist', 'G022_mon_objt_190217T11063204.obj', '2', 't', '2019-09-18 22:37:38.452', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253477', '20190918/G022/otlist', 'G022_mon_objt_190217T11064704.obj', '2', 't', '2019-09-18 22:37:38.476', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253478', '20190918/G022/otlist', 'G022_mon_objt_190217T11071704.obj', '2', 't', '2019-09-18 22:37:38.505', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253479', '20190918/G022/otlist', 'G022_mon_objt_190217T11080204.obj', '2', 't', '2019-09-18 22:37:38.53', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253480', '20190918/G022/otlist', 'G022_mon_objt_190217T11081704.obj', '2', 't', '2019-09-18 22:37:38.556', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253481', '20190918/G022/otlist', 'G022_mon_objt_190217T11083204.obj', '2', 't', '2019-09-18 22:37:38.585', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253482', '20190918/G022/otlist', 'G022_mon_objt_190217T11084704.obj', '2', 't', '2019-09-18 22:37:38.61', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253483', '20190918/G022/otlist', 'G022_mon_objt_190217T11090204.obj', '2', 't', '2019-09-18 22:37:38.64', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253484', '20190918/G022/otlist', 'G022_mon_objt_190217T11091704.obj', '2', 't', '2019-09-18 22:37:38.661', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253485', '20190918/G022/otlist', 'G022_mon_objt_190217T11093204.obj', '2', 't', '2019-09-18 22:37:38.682', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253486', '20190918/G022/otlist', 'G022_mon_objt_190217T11094704.obj', '2', 't', '2019-09-18 22:37:38.707', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253487', '20190918/G022/otlist', 'G022_mon_objt_190217T11100204.obj', '2', 't', '2019-09-18 22:37:38.731', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253488', '20190918/G022/otlist', 'G022_mon_objt_190217T11101704.obj', '2', 't', '2019-09-18 22:37:38.755', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253489', '20190918/G022/otlist', 'G022_mon_objt_190217T11103204.obj', '2', 't', '2019-09-18 22:37:38.784', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253490', '20190918/G022/otlist', 'G022_mon_objt_190217T11104704.obj', '2', 't', '2019-09-18 22:37:38.811', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253491', '20190918/G022/otlist', 'G022_mon_objt_190217T11110204.obj', '2', 't', '2019-09-18 22:37:38.839', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253492', '20190918/G022/otlist', 'G022_mon_objt_190217T11111704.obj', '2', 't', '2019-09-18 22:37:38.869', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253493', '20190918/G022/otlist', 'G022_mon_objt_190217T11113204.obj', '2', 't', '2019-09-18 22:37:38.894', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253494', '20190918/G022/otlist', 'G022_mon_objt_190217T11114704.obj', '2', 't', '2019-09-18 22:37:38.926', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253495', '20190918/G022/otlist', 'G022_mon_objt_190217T11120204.obj', '2', 't', '2019-09-18 22:37:38.951', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253496', '20190918/G022/otlist', 'G022_mon_objt_190217T11121704.obj', '2', 't', '2019-09-18 22:37:38.973', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253497', '20190918/G022/otlist', 'G022_mon_objt_190217T11123204.obj', '2', 't', '2019-09-18 22:37:38.996', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253498', '20190918/G022/otlist', 'G022_mon_objt_190217T11124704.obj', '2', 't', '2019-09-18 22:37:39.024', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253499', '20190918/G022/otlist', 'G022_mon_objt_190217T11130204.obj', '2', 't', '2019-09-18 22:37:39.048', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253500', '20190918/G022/otlist', 'G022_mon_objt_190217T11131704.obj', '2', 't', '2019-09-18 22:37:39.074', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253501', '20190918/G022/otlist', 'G022_mon_objt_190217T11133204.obj', '2', 't', '2019-09-18 22:37:39.112', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253502', '20190918/G022/otlist', 'G022_mon_objt_190217T11134704.obj', '2', 't', '2019-09-18 22:37:39.139', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253503', '20190918/G022/otlist', 'G022_mon_objt_190217T11140204.obj', '2', 't', '2019-09-18 22:37:39.166', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253504', '20190918/G022/otlist', 'G022_mon_objt_190217T11141704.obj', '2', 't', '2019-09-18 22:37:39.192', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253505', '20190918/G022/otlist', 'G022_mon_objt_190217T11144704.obj', '2', 't', '2019-09-18 22:37:39.22', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253506', '20190918/G022/otlist', 'G022_mon_objt_190217T11150204.obj', '2', 't', '2019-09-18 22:37:39.248', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253507', '20190918/G022/otlist', 'G022_mon_objt_190217T11151704.obj', '2', 't', '2019-09-18 22:37:39.272', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253508', '20190918/G022/otlist', 'G022_mon_objt_190217T11154704.obj', '2', 't', '2019-09-18 22:37:39.301', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253509', '20190918/G022/otlist', 'G022_mon_objt_190217T11160204.obj', '2', 't', '2019-09-18 22:37:39.328', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253510', '20190918/G022/otlist', 'G022_mon_objt_190217T11161704.obj', '2', 't', '2019-09-18 22:37:39.374', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253511', '20190918/G022/otlist', 'G022_mon_objt_190217T11163204.obj', '2', 't', '2019-09-18 22:37:39.394', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253512', '20190918/G022/otlist', 'G022_mon_objt_190217T11164704.obj', '2', 't', '2019-09-18 22:37:39.541', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253513', '20190918/G022/otlist', 'G022_mon_objt_190217T11170204.obj', '2', 't', '2019-09-18 22:37:39.573', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253514', '20190918/G022/otlist', 'G022_mon_objt_190217T11171704.obj', '2', 't', '2019-09-18 22:37:39.595', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253515', '20190918/G022/otlist', 'G022_mon_objt_190217T11173204.obj', '2', 't', '2019-09-18 22:37:39.619', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253516', '20190918/G022/otlist', 'G022_mon_objt_190217T11174704.obj', '2', 't', '2019-09-18 22:37:39.642', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253517', '20190918/G022/otlist', 'G022_mon_objt_190217T11180204.obj', '2', 't', '2019-09-18 22:37:39.671', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253518', '20190918/G022/otlist', 'G022_mon_objt_190217T11181704.obj', '2', 't', '2019-09-18 22:37:39.692', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253519', '20190918/G022/otlist', 'G022_mon_objt_190217T11183204.obj', '2', 't', '2019-09-18 22:37:39.713', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253520', '20190918/G022/otlist', 'G022_mon_objt_190217T11184704.obj', '2', 't', '2019-09-18 22:37:39.734', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253521', '20190918/G022/otlist', 'G022_mon_objt_190217T11190204.obj', '2', 't', '2019-09-18 22:37:39.757', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253522', '20190918/G022/otlist', 'G022_mon_objt_190217T11191704.obj', '2', 't', '2019-09-18 22:37:39.801', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253523', '20190918/G022/otlist', 'G022_mon_objt_190217T11193204.obj', '2', 't', '2019-09-18 22:37:39.824', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253524', '20190918/G022/otlist', 'G022_mon_objt_190217T11194704.obj', '2', 't', '2019-09-18 22:37:39.849', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253525', '20190918/G022/otlist', 'G022_mon_objt_190217T11200204.obj', '2', 't', '2019-09-18 22:37:39.871', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253526', '20190918/G022/otlist', 'G022_mon_objt_190217T11201704.obj', '2', 't', '2019-09-18 22:37:39.895', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253527', '20190918/G022/otlist', 'G022_mon_objt_190217T11203204.obj', '2', 't', '2019-09-18 22:37:39.922', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253528', '20190918/G022/otlist', 'G022_mon_objt_190217T11204704.obj', '2', 't', '2019-09-18 22:37:39.949', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253529', '20190918/G022/otlist', 'G022_mon_objt_190217T11210204.obj', '2', 't', '2019-09-18 22:37:39.97', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253530', '20190918/G022/otlist', 'G022_mon_objt_190217T11211704.obj', '2', 't', '2019-09-18 22:37:39.993', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253531', '20190918/G022/otlist', 'G022_mon_objt_190217T11214714.obj', '2', 't', '2019-09-18 22:37:40.012', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253532', '20190918/G022/otlist', 'G022_mon_objt_190217T11220212.obj', '2', 't', '2019-09-18 22:37:40.037', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253533', '20190918/G022/otlist', 'G022_mon_objt_190217T11221711.obj', '2', 't', '2019-09-18 22:37:40.058', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253534', '20190918/G022/otlist', 'G022_mon_objt_190217T11223209.obj', '2', 't', '2019-09-18 22:37:40.081', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253535', '20190918/G022/otlist', 'G022_mon_objt_190217T11230207.obj', '2', 't', '2019-09-18 22:37:40.108', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253536', '20190918/G022/otlist', 'G022_mon_objt_190217T11231705.obj', '2', 't', '2019-09-18 22:37:40.137', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253537', '20190918/G022/otlist', 'G022_mon_objt_190217T11233204.obj', '2', 't', '2019-09-18 22:37:40.192', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253538', '20190918/G022/otlist', 'G022_mon_objt_190217T11240204.obj', '2', 't', '2019-09-18 22:37:40.216', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253539', '20190918/G022/otlist', 'G022_mon_objt_190217T11241704.obj', '2', 't', '2019-09-18 22:37:40.239', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253540', '20190918/G022/otlist', 'G022_mon_objt_190217T11243204.obj', '2', 't', '2019-09-18 22:37:40.269', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253541', '20190918/G022/otlist', 'G022_mon_objt_190217T11244704.obj', '2', 't', '2019-09-18 22:37:40.322', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253542', '20190918/G022/otlist', 'G022_mon_objt_190217T11250204.obj', '2', 't', '2019-09-18 22:37:40.349', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253543', '20190918/G022/otlist', 'G022_mon_objt_190217T11251704.obj', '2', 't', '2019-09-18 22:37:40.377', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253544', '20190918/G022/otlist', 'G022_mon_objt_190217T11253204.obj', '2', 't', '2019-09-18 22:37:40.403', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253545', '20190918/G022/otlist', 'G022_mon_objt_190217T11254704.obj', '2', 't', '2019-09-18 22:37:40.432', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253546', '20190918/G022/otlist', 'G022_mon_objt_190217T11261704.obj', '2', 't', '2019-09-18 22:37:40.487', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253547', '20190918/G022/otlist', 'G022_mon_objt_190217T11263204.obj', '2', 't', '2019-09-18 22:37:40.516', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253548', '20190918/G022/otlist', 'G022_mon_objt_190217T11264704.obj', '2', 't', '2019-09-18 22:37:40.543', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253549', '20190918/G022/otlist', 'G022_mon_objt_190217T11270204.obj', '2', 't', '2019-09-18 22:37:40.567', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253550', '20190918/G022/otlist', 'G022_mon_objt_190217T11271704.obj', '2', 't', '2019-09-18 22:37:40.619', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253551', '20190918/G022/otlist', 'G022_mon_objt_190217T11273204.obj', '2', 't', '2019-09-18 22:37:40.668', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253552', '20190918/G022/otlist', 'G022_mon_objt_190217T11274704.obj', '2', 't', '2019-09-18 22:37:40.709', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253553', '20190918/G022/otlist', 'G022_mon_objt_190217T11280204.obj', '2', 't', '2019-09-18 22:37:40.729', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253554', '20190918/G022/otlist', 'G022_mon_objt_190217T11281704.obj', '2', 't', '2019-09-18 22:37:40.75', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253555', '20190918/G022/otlist', 'G022_mon_objt_190217T11283204.obj', '2', 't', '2019-09-18 22:37:40.77', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253556', '20190918/G022/otlist', 'G022_mon_objt_190217T11284704.obj', '2', 't', '2019-09-18 22:37:40.797', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253557', '20190918/G022/otlist', 'G022_mon_objt_190217T11290204.obj', '2', 't', '2019-09-18 22:37:40.839', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253558', '20190918/G022/otlist', 'G022_mon_objt_190217T11291704.obj', '2', 't', '2019-09-18 22:37:40.869', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253559', '20190918/G022/otlist', 'G022_mon_objt_190217T11293204.obj', '2', 't', '2019-09-18 22:37:40.896', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253560', '20190918/G022/otlist', 'G022_mon_objt_190217T11294704.obj', '2', 't', '2019-09-18 22:37:40.919', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253561', '20190922/G022/otlist', 'G022_mon_objt_190217T10501704.record', '1', 't', '2019-09-22 20:09:05.059', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253562', '20190922/G022/otlist', 'G022_mon_objt_190217T10501704.obj', '2', 't', '2019-09-22 20:09:05.532', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253563', '20190922/G022/otlist', 'G022_mon_objt_190217T10503204.record', '1', 't', '2019-09-22 20:09:05.563', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253564', '20190922/G022/otlist', 'G022_mon_objt_190217T10503204.obj', '2', 't', '2019-09-22 20:09:05.612', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253565', '20190922/G022/otlist', 'G022_mon_objt_190217T10504704.record', '1', 't', '2019-09-22 20:09:05.641', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253566', '20190922/G022/otlist', 'G022_mon_objt_190217T10504704.obj', '2', 't', '2019-09-22 20:09:05.672', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253567', '20190922/G022/otlist', 'G022_mon_objt_190217T10510204.record', '1', 't', '2019-09-22 20:09:05.703', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253568', '20190922/G022/otlist', 'G022_mon_objt_190217T10510204.obj', '2', 't', '2019-09-22 20:09:05.73', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253569', '20190922/G022/otlist', 'G022_mon_objt_190217T10511704.record', '1', 't', '2019-09-22 20:09:05.758', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253570', '20190922/G022/otlist', 'G022_mon_objt_190217T10511704.obj', '2', 't', '2019-09-22 20:09:05.785', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253571', '20190922/G022/otlist', 'G022_mon_objt_190217T10513204.record', '1', 't', '2019-09-22 20:09:05.811', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253572', '20190922/G022/otlist', 'G022_mon_objt_190217T10513204.obj', '2', 't', '2019-09-22 20:09:05.836', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253573', '20190922/G022/otlist', 'G022_mon_objt_190217T10514704.record', '1', 't', '2019-09-22 20:09:05.865', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253574', '20190922/G022/otlist', 'G022_mon_objt_190217T10514704.obj', '2', 't', '2019-09-22 20:09:05.887', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253575', '20190922/G022/otlist', 'G022_mon_objt_190217T10520204.record', '1', 't', '2019-09-22 20:09:05.909', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253576', '20190922/G022/otlist', 'G022_mon_objt_190217T10520204.obj', '2', 't', '2019-09-22 20:09:05.937', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253577', '20190922/G022/otlist', 'G022_mon_objt_190217T10521704.record', '1', 't', '2019-09-22 20:09:05.961', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253578', '20190922/G022/otlist', 'G022_mon_objt_190217T10521704.obj', '2', 't', '2019-09-22 20:09:05.983', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253579', '20190922/G022/otlist', 'G022_mon_objt_190217T10523204.record', '1', 't', '2019-09-22 20:09:06.005', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253580', '20190922/G022/otlist', 'G022_mon_objt_190217T10523204.obj', '2', 't', '2019-09-22 20:09:06.025', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253581', '20190922/G022/otlist', 'G022_mon_objt_190217T10524704.record', '1', 't', '2019-09-22 20:09:06.045', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253582', '20190922/G022/otlist', 'G022_mon_objt_190217T10524704.obj', '2', 't', '2019-09-22 20:09:06.067', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253583', '20190922/G022/otlist', 'G022_mon_objt_190217T10530204.record', '1', 't', '2019-09-22 20:09:06.095', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253584', '20190922/G022/otlist', 'G022_mon_objt_190217T10530204.obj', '2', 't', '2019-09-22 20:09:06.115', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253585', '20190922/G022/otlist', 'G022_mon_objt_190217T10531704.record', '1', 't', '2019-09-22 20:09:06.134', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253586', '20190922/G022/otlist', 'G022_mon_objt_190217T10531704.obj', '2', 't', '2019-09-22 20:09:06.152', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253587', '20190922/G022/otlist', 'G022_mon_objt_190217T10533204.record', '1', 't', '2019-09-22 20:09:06.172', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253588', '20190922/G022/otlist', 'G022_mon_objt_190217T10533204.obj', '2', 't', '2019-09-22 20:09:06.196', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253589', '20190922/G022/otlist', 'G022_mon_objt_190217T10550204.record', '1', 't', '2019-09-22 20:09:06.218', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253590', '20190922/G022/otlist', 'G022_mon_objt_190217T10550204.obj', '2', 't', '2019-09-22 20:09:06.25', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253591', '20190922/G022/otlist', 'G022_mon_objt_190217T10551704.record', '1', 't', '2019-09-22 20:09:06.277', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253592', '20190922/G022/otlist', 'G022_mon_objt_190217T10551704.obj', '2', 't', '2019-09-22 20:09:06.298', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253593', '20190922/G022/otlist', 'G022_mon_objt_190217T10553204.record', '1', 't', '2019-09-22 20:09:06.318', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253594', '20190922/G022/otlist', 'G022_mon_objt_190217T10553204.obj', '2', 't', '2019-09-22 20:09:06.339', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253595', '20190922/G022/otlist', 'G022_mon_objt_190217T10554704.record', '1', 't', '2019-09-22 20:09:06.366', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253596', '20190922/G022/otlist', 'G022_mon_objt_190217T10554704.obj', '2', 't', '2019-09-22 20:09:06.39', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253597', '20190922/G022/otlist', 'G022_mon_objt_190217T10560204.record', '1', 't', '2019-09-22 20:09:06.413', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253598', '20190922/G022/otlist', 'G022_mon_objt_190217T10560204.obj', '2', 't', '2019-09-22 20:09:06.435', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253599', '20190922/G022/otlist', 'G022_mon_objt_190217T10561704.record', '1', 't', '2019-09-22 20:09:06.456', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253600', '20190922/G022/otlist', 'G022_mon_objt_190217T10561704.obj', '2', 't', '2019-09-22 20:09:06.478', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253601', '20190922/G022/otlist', 'G022_mon_objt_190217T10563204.record', '1', 't', '2019-09-22 20:09:06.499', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253602', '20190922/G022/otlist', 'G022_mon_objt_190217T10563204.obj', '2', 't', '2019-09-22 20:09:06.519', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253603', '20190922/G022/otlist', 'G022_mon_objt_190217T10564704.record', '1', 't', '2019-09-22 20:09:06.538', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253604', '20190922/G022/otlist', 'G022_mon_objt_190217T10564704.obj', '2', 't', '2019-09-22 20:09:06.559', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253605', '20190922/G022/otlist', 'G022_mon_objt_190217T10570204.record', '1', 't', '2019-09-22 20:09:06.58', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253606', '20190922/G022/otlist', 'G022_mon_objt_190217T10570204.obj', '2', 't', '2019-09-22 20:09:06.599', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253607', '20190922/G022/otlist', 'G022_mon_objt_190217T10571704.record', '1', 't', '2019-09-22 20:09:06.618', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253608', '20190922/G022/otlist', 'G022_mon_objt_190217T10571704.obj', '2', 't', '2019-09-22 20:09:06.638', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253609', '20190922/G022/otlist', 'G022_mon_objt_190217T10573204.record', '1', 't', '2019-09-22 20:09:06.693', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253610', '20190922/G022/otlist', 'G022_mon_objt_190217T10573204.obj', '2', 't', '2019-09-22 20:09:06.718', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253611', '20190922/G022/otlist', 'G022_mon_objt_190217T10574704.record', '1', 't', '2019-09-22 20:09:06.744', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253612', '20190922/G022/otlist', 'G022_mon_objt_190217T10574704.obj', '2', 't', '2019-09-22 20:09:06.775', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253613', '20190922/G022/otlist', 'G022_mon_objt_190217T10580204.record', '1', 't', '2019-09-22 20:09:06.803', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253614', '20190922/G022/otlist', 'G022_mon_objt_190217T10580204.obj', '2', 't', '2019-09-22 20:09:06.831', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253615', '20190922/G022/otlist', 'G022_mon_objt_190217T10581704.record', '1', 't', '2019-09-22 20:09:06.858', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253616', '20190922/G022/otlist', 'G022_mon_objt_190217T10581704.obj', '2', 't', '2019-09-22 20:09:06.884', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253617', '20190922/G022/otlist', 'G022_mon_objt_190217T10583204.record', '1', 't', '2019-09-22 20:09:06.91', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253618', '20190922/G022/otlist', 'G022_mon_objt_190217T10583204.obj', '2', 't', '2019-09-22 20:09:06.943', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253619', '20190922/G022/otlist', 'G022_mon_objt_190217T10584704.record', '1', 't', '2019-09-22 20:09:06.969', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253620', '20190922/G022/otlist', 'G022_mon_objt_190217T10584704.obj', '2', 't', '2019-09-22 20:09:06.995', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253621', '20190922/G022/otlist', 'G022_mon_objt_190217T10590204.record', '1', 't', '2019-09-22 20:09:07.019', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253622', '20190922/G022/otlist', 'G022_mon_objt_190217T10590204.obj', '2', 't', '2019-09-22 20:09:07.042', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253623', '20190922/G022/otlist', 'G022_mon_objt_190217T10591704.record', '1', 't', '2019-09-22 20:09:07.072', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253624', '20190922/G022/otlist', 'G022_mon_objt_190217T10591704.obj', '2', 't', '2019-09-22 20:09:07.096', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253625', '20190922/G022/otlist', 'G022_mon_objt_190217T10593204.record', '1', 't', '2019-09-22 20:09:07.12', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253626', '20190922/G022/otlist', 'G022_mon_objt_190217T10593204.obj', '2', 't', '2019-09-22 20:09:07.144', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253627', '20190922/G022/otlist', 'G022_mon_objt_190217T10594704.record', '1', 't', '2019-09-22 20:09:07.168', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253628', '20190922/G022/otlist', 'G022_mon_objt_190217T10594704.obj', '2', 't', '2019-09-22 20:09:07.19', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253629', '20190922/G022/otlist', 'G022_mon_objt_190217T11000204.record', '1', 't', '2019-09-22 20:09:07.212', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253630', '20190922/G022/otlist', 'G022_mon_objt_190217T11000204.obj', '2', 't', '2019-09-22 20:09:07.235', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253631', '20190922/G022/otlist', 'G022_mon_objt_190217T11001704.record', '1', 't', '2019-09-22 20:09:07.256', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253632', '20190922/G022/otlist', 'G022_mon_objt_190217T11001704.obj', '2', 't', '2019-09-22 20:09:07.277', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253633', '20190922/G022/otlist', 'G022_mon_objt_190217T11003204.record', '1', 't', '2019-09-22 20:09:07.302', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253634', '20190922/G022/otlist', 'G022_mon_objt_190217T11003204.obj', '2', 't', '2019-09-22 20:09:07.321', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253635', '20190922/G022/otlist', 'G022_mon_objt_190217T11004704.record', '1', 't', '2019-09-22 20:09:07.381', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253636', '20190922/G022/otlist', 'G022_mon_objt_190217T11004704.obj', '2', 't', '2019-09-22 20:09:07.403', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253637', '20190922/G022/otlist', 'G022_mon_objt_190217T11010204.record', '1', 't', '2019-09-22 20:09:07.428', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253638', '20190922/G022/otlist', 'G022_mon_objt_190217T11010204.obj', '2', 't', '2019-09-22 20:09:07.448', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253639', '20190922/G022/otlist', 'G022_mon_objt_190217T11011704.record', '1', 't', '2019-09-22 20:09:07.468', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253640', '20190922/G022/otlist', 'G022_mon_objt_190217T11011704.obj', '2', 't', '2019-09-22 20:09:07.49', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253641', '20190922/G022/otlist', 'G022_mon_objt_190217T11013204.record', '1', 't', '2019-09-22 20:09:07.51', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253642', '20190922/G022/otlist', 'G022_mon_objt_190217T11013204.obj', '2', 't', '2019-09-22 20:09:07.53', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253643', '20190922/G022/otlist', 'G022_mon_objt_190217T11014704.record', '1', 't', '2019-09-22 20:09:07.547', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253644', '20190922/G022/otlist', 'G022_mon_objt_190217T11014704.obj', '2', 't', '2019-09-22 20:09:07.568', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253645', '20190922/G022/otlist', 'G022_mon_objt_190217T11020204.record', '1', 't', '2019-09-22 20:09:07.587', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253646', '20190922/G022/otlist', 'G022_mon_objt_190217T11020204.obj', '2', 't', '2019-09-22 20:09:07.607', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253647', '20190922/G022/otlist', 'G022_mon_objt_190217T11021704.record', '1', 't', '2019-09-22 20:09:07.625', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253648', '20190922/G022/otlist', 'G022_mon_objt_190217T11021704.obj', '2', 't', '2019-09-22 20:09:07.645', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253649', '20190922/G022/otlist', 'G022_mon_objt_190217T11023204.record', '1', 't', '2019-09-22 20:09:07.663', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253650', '20190922/G022/otlist', 'G022_mon_objt_190217T11023204.obj', '2', 't', '2019-09-22 20:09:07.681', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253651', '20190922/G022/otlist', 'G022_mon_objt_190217T11024704.record', '1', 't', '2019-09-22 20:09:07.699', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253652', '20190922/G022/otlist', 'G022_mon_objt_190217T11024704.obj', '2', 't', '2019-09-22 20:09:07.717', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253653', '20190922/G022/otlist', 'G022_mon_objt_190217T11030204.record', '1', 't', '2019-09-22 20:09:07.736', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253654', '20190922/G022/otlist', 'G022_mon_objt_190217T11030204.obj', '2', 't', '2019-09-22 20:09:07.754', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253655', '20190922/G022/otlist', 'G022_mon_objt_190217T11031704.record', '1', 't', '2019-09-22 20:09:07.771', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253656', '20190922/G022/otlist', 'G022_mon_objt_190217T11031704.obj', '2', 't', '2019-09-22 20:09:07.81', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253657', '20190922/G022/otlist', 'G022_mon_objt_190217T11033204.record', '1', 't', '2019-09-22 20:09:07.837', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253658', '20190922/G022/otlist', 'G022_mon_objt_190217T11033204.obj', '2', 't', '2019-09-22 20:09:07.863', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253659', '20190922/G022/otlist', 'G022_mon_objt_190217T11034704.record', '1', 't', '2019-09-22 20:09:07.887', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253660', '20190922/G022/otlist', 'G022_mon_objt_190217T11034704.obj', '2', 't', '2019-09-22 20:09:07.917', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253661', '20190922/G022/otlist', 'G022_mon_objt_190217T11040204.record', '1', 't', '2019-09-22 20:09:07.977', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253662', '20190922/G022/otlist', 'G022_mon_objt_190217T11040204.obj', '2', 't', '2019-09-22 20:09:08.004', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253663', '20190922/G022/otlist', 'G022_mon_objt_190217T11041704.record', '1', 't', '2019-09-22 20:09:08.031', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253664', '20190922/G022/otlist', 'G022_mon_objt_190217T11041704.obj', '2', 't', '2019-09-22 20:09:08.253', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253665', '20190922/G022/otlist', 'G022_mon_objt_190217T11043215.record', '1', 't', '2019-09-22 20:09:08.567', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253666', '20190922/G022/otlist', 'G022_mon_objt_190217T11043215.obj', '2', 't', '2019-09-22 20:09:08.594', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253667', '20190922/G022/otlist', 'G022_mon_objt_190217T11044713.record', '1', 't', '2019-09-22 20:09:08.617', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253668', '20190922/G022/otlist', 'G022_mon_objt_190217T11044713.obj', '2', 't', '2019-09-22 20:09:08.639', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253669', '20190922/G022/otlist', 'G022_mon_objt_190217T11050212.record', '1', 't', '2019-09-22 20:09:08.661', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253670', '20190922/G022/otlist', 'G022_mon_objt_190217T11050212.obj', '2', 't', '2019-09-22 20:09:08.683', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253671', '20190922/G022/otlist', 'G022_mon_objt_190217T11051710.record', '1', 't', '2019-09-22 20:09:08.704', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253672', '20190922/G022/otlist', 'G022_mon_objt_190217T11051710.obj', '2', 't', '2019-09-22 20:09:08.724', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253673', '20190922/G022/otlist', 'G022_mon_objt_190217T11053209.record', '1', 't', '2019-09-22 20:09:08.745', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253674', '20190922/G022/otlist', 'G022_mon_objt_190217T11053209.obj', '2', 't', '2019-09-22 20:09:08.81', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253675', '20190922/G022/otlist', 'G022_mon_objt_190217T11054707.record', '1', 't', '2019-09-22 20:09:08.84', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253676', '20190922/G022/otlist', 'G022_mon_objt_190217T11054707.obj', '2', 't', '2019-09-22 20:09:08.863', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253677', '20190922/G022/otlist', 'G022_mon_objt_190217T11060206.record', '1', 't', '2019-09-22 20:09:08.888', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253678', '20190922/G022/otlist', 'G022_mon_objt_190217T11060206.obj', '2', 't', '2019-09-22 20:09:08.912', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253679', '20190922/G022/otlist', 'G022_mon_objt_190217T11061704.record', '1', 't', '2019-09-22 20:09:08.942', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253680', '20190922/G022/otlist', 'G022_mon_objt_190217T11061704.obj', '2', 't', '2019-09-22 20:09:08.965', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253681', '20190922/G022/otlist', 'G022_mon_objt_190217T11063204.record', '1', 't', '2019-09-22 20:09:08.992', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253682', '20190922/G022/otlist', 'G022_mon_objt_190217T11063204.obj', '2', 't', '2019-09-22 20:09:09.016', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253683', '20190922/G022/otlist', 'G022_mon_objt_190217T11064704.record', '1', 't', '2019-09-22 20:09:09.04', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253684', '20190922/G022/otlist', 'G022_mon_objt_190217T11064704.obj', '2', 't', '2019-09-22 20:09:09.063', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253685', '20190922/G022/otlist', 'G022_mon_objt_190217T11071704.record', '1', 't', '2019-09-22 20:09:09.084', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253686', '20190922/G022/otlist', 'G022_mon_objt_190217T11071704.obj', '2', 't', '2019-09-22 20:09:09.106', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253687', '20190922/G022/otlist', 'G022_mon_objt_190217T11080204.record', '1', 't', '2019-09-22 20:09:09.128', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253688', '20190922/G022/otlist', 'G022_mon_objt_190217T11080204.obj', '2', 't', '2019-09-22 20:09:09.148', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253689', '20190922/G022/otlist', 'G022_mon_objt_190217T11081704.record', '1', 't', '2019-09-22 20:09:09.169', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253690', '20190922/G022/otlist', 'G022_mon_objt_190217T11081704.obj', '2', 't', '2019-09-22 20:09:09.189', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253691', '20190922/G022/otlist', 'G022_mon_objt_190217T11083204.record', '1', 't', '2019-09-22 20:09:09.21', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253692', '20190922/G022/otlist', 'G022_mon_objt_190217T11083204.obj', '2', 't', '2019-09-22 20:09:09.232', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253693', '20190922/G022/otlist', 'G022_mon_objt_190217T11084704.record', '1', 't', '2019-09-22 20:09:09.253', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253694', '20190922/G022/otlist', 'G022_mon_objt_190217T11084704.obj', '2', 't', '2019-09-22 20:09:09.275', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253695', '20190922/G022/otlist', 'G022_mon_objt_190217T11090204.record', '1', 't', '2019-09-22 20:09:09.295', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253696', '20190922/G022/otlist', 'G022_mon_objt_190217T11090204.obj', '2', 't', '2019-09-22 20:09:09.315', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253697', '20190922/G022/otlist', 'G022_mon_objt_190217T11091704.record', '1', 't', '2019-09-22 20:09:09.334', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253698', '20190922/G022/otlist', 'G022_mon_objt_190217T11091704.obj', '2', 't', '2019-09-22 20:09:09.354', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253699', '20190922/G022/otlist', 'G022_mon_objt_190217T11093204.record', '1', 't', '2019-09-22 20:09:09.374', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253700', '20190922/G022/otlist', 'G022_mon_objt_190217T11093204.obj', '2', 't', '2019-09-22 20:09:09.395', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253701', '20190922/G022/otlist', 'G022_mon_objt_190217T11094704.record', '1', 't', '2019-09-22 20:09:09.418', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253702', '20190922/G022/otlist', 'G022_mon_objt_190217T11094704.obj', '2', 't', '2019-09-22 20:09:09.481', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253703', '20190922/G022/otlist', 'G022_mon_objt_190217T11100204.record', '1', 't', '2019-09-22 20:09:09.503', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253704', '20190922/G022/otlist', 'G022_mon_objt_190217T11100204.obj', '2', 't', '2019-09-22 20:09:09.524', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253705', '20190922/G022/otlist', 'G022_mon_objt_190217T11101704.record', '1', 't', '2019-09-22 20:09:09.545', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253706', '20190922/G022/otlist', 'G022_mon_objt_190217T11101704.obj', '2', 't', '2019-09-22 20:09:09.564', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253707', '20190922/G022/otlist', 'G022_mon_objt_190217T11103204.record', '1', 't', '2019-09-22 20:09:09.589', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253708', '20190922/G022/otlist', 'G022_mon_objt_190217T11103204.obj', '2', 't', '2019-09-22 20:09:09.611', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253709', '20190922/G022/otlist', 'G022_mon_objt_190217T11104704.record', '1', 't', '2019-09-22 20:09:09.633', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253710', '20190922/G022/otlist', 'G022_mon_objt_190217T11104704.obj', '2', 't', '2019-09-22 20:09:09.656', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253711', '20190922/G022/otlist', 'G022_mon_objt_190217T11110204.record', '1', 't', '2019-09-22 20:09:09.675', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253712', '20190922/G022/otlist', 'G022_mon_objt_190217T11110204.obj', '2', 't', '2019-09-22 20:09:09.696', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253713', '20190922/G022/otlist', 'G022_mon_objt_190217T11111704.record', '1', 't', '2019-09-22 20:09:09.716', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253714', '20190922/G022/otlist', 'G022_mon_objt_190217T11111704.obj', '2', 't', '2019-09-22 20:09:09.737', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253715', '20190922/G022/otlist', 'G022_mon_objt_190217T11113204.record', '1', 't', '2019-09-22 20:09:09.76', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253716', '20190922/G022/otlist', 'G022_mon_objt_190217T11113204.obj', '2', 't', '2019-09-22 20:09:09.78', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253717', '20190922/G022/otlist', 'G022_mon_objt_190217T11114704.record', '1', 't', '2019-09-22 20:09:09.8', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253718', '20190922/G022/otlist', 'G022_mon_objt_190217T11114704.obj', '2', 't', '2019-09-22 20:09:09.821', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253719', '20190922/G022/otlist', 'G022_mon_objt_190217T11120204.record', '1', 't', '2019-09-22 20:09:09.844', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253720', '20190922/G022/otlist', 'G022_mon_objt_190217T11120204.obj', '2', 't', '2019-09-22 20:09:09.869', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253721', '20190922/G022/otlist', 'G022_mon_objt_190217T11121704.record', '1', 't', '2019-09-22 20:09:09.89', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253722', '20190922/G022/otlist', 'G022_mon_objt_190217T11121704.obj', '2', 't', '2019-09-22 20:09:09.911', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253723', '20190922/G022/otlist', 'G022_mon_objt_190217T11123204.record', '1', 't', '2019-09-22 20:09:09.93', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253724', '20190922/G022/otlist', 'G022_mon_objt_190217T11123204.obj', '2', 't', '2019-09-22 20:09:09.948', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253725', '20190922/G022/otlist', 'G022_mon_objt_190217T11124704.record', '1', 't', '2019-09-22 20:09:09.967', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253726', '20190922/G022/otlist', 'G022_mon_objt_190217T11124704.obj', '2', 't', '2019-09-22 20:09:09.985', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253727', '20190922/G022/otlist', 'G022_mon_objt_190217T11130204.record', '1', 't', '2019-09-22 20:09:10.002', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253728', '20190922/G022/otlist', 'G022_mon_objt_190217T11130204.obj', '2', 't', '2019-09-22 20:09:10.021', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253729', '20190922/G022/otlist', 'G022_mon_objt_190217T11131704.record', '1', 't', '2019-09-22 20:09:10.039', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253730', '20190922/G022/otlist', 'G022_mon_objt_190217T11131704.obj', '2', 't', '2019-09-22 20:09:10.101', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253731', '20190922/G022/otlist', 'G022_mon_objt_190217T11133204.record', '1', 't', '2019-09-22 20:09:10.203', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253732', '20190922/G022/otlist', 'G022_mon_objt_190217T11133204.obj', '2', 't', '2019-09-22 20:09:10.229', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253733', '20190922/G022/otlist', 'G022_mon_objt_190217T11134704.record', '1', 't', '2019-09-22 20:09:10.256', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253734', '20190922/G022/otlist', 'G022_mon_objt_190217T11134704.obj', '2', 't', '2019-09-22 20:09:10.282', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253735', '20190922/G022/otlist', 'G022_mon_objt_190217T11140204.record', '1', 't', '2019-09-22 20:09:10.31', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253736', '20190922/G022/otlist', 'G022_mon_objt_190217T11140204.obj', '2', 't', '2019-09-22 20:09:10.335', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253737', '20190922/G022/otlist', 'G022_mon_objt_190217T11141704.record', '1', 't', '2019-09-22 20:09:10.378', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253738', '20190922/G022/otlist', 'G022_mon_objt_190217T11141704.obj', '2', 't', '2019-09-22 20:09:10.404', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253739', '20190922/G022/otlist', 'G022_mon_objt_190217T11144704.record', '1', 't', '2019-09-22 20:09:10.426', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253740', '20190922/G022/otlist', 'G022_mon_objt_190217T11144704.obj', '2', 't', '2019-09-22 20:09:10.447', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253741', '20190922/G022/otlist', 'G022_mon_objt_190217T11150204.record', '1', 't', '2019-09-22 20:09:10.474', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253742', '20190922/G022/otlist', 'G022_mon_objt_190217T11150204.obj', '2', 't', '2019-09-22 20:09:10.495', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253743', '20190922/G022/otlist', 'G022_mon_objt_190217T11151704.record', '1', 't', '2019-09-22 20:09:10.518', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253744', '20190922/G022/otlist', 'G022_mon_objt_190217T11151704.obj', '2', 't', '2019-09-22 20:09:10.538', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253745', '20190922/G022/otlist', 'G022_mon_objt_190217T11154704.record', '1', 't', '2019-09-22 20:09:10.56', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253746', '20190922/G022/otlist', 'G022_mon_objt_190217T11154704.obj', '2', 't', '2019-09-22 20:09:10.58', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253747', '20190922/G022/otlist', 'G022_mon_objt_190217T11160204.record', '1', 't', '2019-09-22 20:09:10.609', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253748', '20190922/G022/otlist', 'G022_mon_objt_190217T11160204.obj', '2', 't', '2019-09-22 20:09:10.635', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253749', '20190922/G022/otlist', 'G022_mon_objt_190217T11161704.record', '1', 't', '2019-09-22 20:09:10.717', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253750', '20190922/G022/otlist', 'G022_mon_objt_190217T11161704.obj', '2', 't', '2019-09-22 20:09:10.744', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253751', '20190922/G022/otlist', 'G022_mon_objt_190217T11163204.record', '1', 't', '2019-09-22 20:09:10.769', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253752', '20190922/G022/otlist', 'G022_mon_objt_190217T11163204.obj', '2', 't', '2019-09-22 20:09:10.795', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253753', '20190922/G022/otlist', 'G022_mon_objt_190217T11164704.record', '1', 't', '2019-09-22 20:09:10.821', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253754', '20190922/G022/otlist', 'G022_mon_objt_190217T11164704.obj', '2', 't', '2019-09-22 20:09:10.845', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253755', '20190922/G022/otlist', 'G022_mon_objt_190217T11170204.record', '1', 't', '2019-09-22 20:09:10.873', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253756', '20190922/G022/otlist', 'G022_mon_objt_190217T11170204.obj', '2', 't', '2019-09-22 20:09:10.897', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253757', '20190922/G022/otlist', 'G022_mon_objt_190217T11171704.record', '1', 't', '2019-09-22 20:09:10.92', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253758', '20190922/G022/otlist', 'G022_mon_objt_190217T11171704.obj', '2', 't', '2019-09-22 20:09:10.946', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253759', '20190922/G022/otlist', 'G022_mon_objt_190217T11173204.record', '1', 't', '2019-09-22 20:09:10.97', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253760', '20190922/G022/otlist', 'G022_mon_objt_190217T11173204.obj', '2', 't', '2019-09-22 20:09:10.99', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253761', '20190922/G022/otlist', 'G022_mon_objt_190217T11174704.record', '1', 't', '2019-09-22 20:09:11.012', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253762', '20190922/G022/otlist', 'G022_mon_objt_190217T11174704.obj', '2', 't', '2019-09-22 20:09:11.037', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253763', '20190922/G022/otlist', 'G022_mon_objt_190217T11180204.record', '1', 't', '2019-09-22 20:09:11.057', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253764', '20190922/G022/otlist', 'G022_mon_objt_190217T11180204.obj', '2', 't', '2019-09-22 20:09:11.077', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253765', '20190922/G022/otlist', 'G022_mon_objt_190217T11181704.record', '1', 't', '2019-09-22 20:09:11.167', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253766', '20190922/G022/otlist', 'G022_mon_objt_190217T11181704.obj', '2', 't', '2019-09-22 20:09:11.189', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253767', '20190922/G022/otlist', 'G022_mon_objt_190217T11183204.record', '1', 't', '2019-09-22 20:09:11.209', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253768', '20190922/G022/otlist', 'G022_mon_objt_190217T11183204.obj', '2', 't', '2019-09-22 20:09:11.229', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253769', '20190922/G022/otlist', 'G022_mon_objt_190217T11184704.record', '1', 't', '2019-09-22 20:09:11.249', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253770', '20190922/G022/otlist', 'G022_mon_objt_190217T11184704.obj', '2', 't', '2019-09-22 20:09:11.269', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253771', '20190922/G022/otlist', 'G022_mon_objt_190217T11190204.record', '1', 't', '2019-09-22 20:09:11.293', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253772', '20190922/G022/otlist', 'G022_mon_objt_190217T11190204.obj', '2', 't', '2019-09-22 20:09:11.314', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253773', '20190922/G022/otlist', 'G022_mon_objt_190217T11191704.record', '1', 't', '2019-09-22 20:09:11.334', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253774', '20190922/G022/otlist', 'G022_mon_objt_190217T11191704.obj', '2', 't', '2019-09-22 20:09:11.354', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253775', '20190922/G022/otlist', 'G022_mon_objt_190217T11193204.record', '1', 't', '2019-09-22 20:09:11.372', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253776', '20190922/G022/otlist', 'G022_mon_objt_190217T11193204.obj', '2', 't', '2019-09-22 20:09:11.389', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253777', '20190922/G022/otlist', 'G022_mon_objt_190217T11194704.record', '1', 't', '2019-09-22 20:09:11.413', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253778', '20190922/G022/otlist', 'G022_mon_objt_190217T11194704.obj', '2', 't', '2019-09-22 20:09:11.437', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253779', '20190922/G022/otlist', 'G022_mon_objt_190217T11200204.record', '1', 't', '2019-09-22 20:09:11.461', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253780', '20190922/G022/otlist', 'G022_mon_objt_190217T11200204.obj', '2', 't', '2019-09-22 20:09:11.49', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253781', '20190922/G022/otlist', 'G022_mon_objt_190217T11201704.record', '1', 't', '2019-09-22 20:09:11.516', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253782', '20190922/G022/otlist', 'G022_mon_objt_190217T11201704.obj', '2', 't', '2019-09-22 20:09:11.54', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253783', '20190922/G022/otlist', 'G022_mon_objt_190217T11203204.record', '1', 't', '2019-09-22 20:09:11.565', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253784', '20190922/G022/otlist', 'G022_mon_objt_190217T11203204.obj', '2', 't', '2019-09-22 20:09:11.598', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253785', '20190922/G022/otlist', 'G022_mon_objt_190217T11204704.record', '1', 't', '2019-09-22 20:09:11.621', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253786', '20190922/G022/otlist', 'G022_mon_objt_190217T11204704.obj', '2', 't', '2019-09-22 20:09:11.646', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253787', '20190922/G022/otlist', 'G022_mon_objt_190217T11210204.record', '1', 't', '2019-09-22 20:09:11.67', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253788', '20190922/G022/otlist', 'G022_mon_objt_190217T11210204.obj', '2', 't', '2019-09-22 20:09:11.693', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253789', '20190922/G022/otlist', 'G022_mon_objt_190217T11211704.record', '1', 't', '2019-09-22 20:09:11.717', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253790', '20190922/G022/otlist', 'G022_mon_objt_190217T11211704.obj', '2', 't', '2019-09-22 20:09:11.744', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253791', '20190922/G022/otlist', 'G022_mon_objt_190217T11214714.record', '1', 't', '2019-09-22 20:09:11.768', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253792', '20190922/G022/otlist', 'G022_mon_objt_190217T11214714.obj', '2', 't', '2019-09-22 20:09:11.792', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253793', '20190922/G022/otlist', 'G022_mon_objt_190217T11220212.record', '1', 't', '2019-09-22 20:09:11.814', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253794', '20190922/G022/otlist', 'G022_mon_objt_190217T11220212.obj', '2', 't', '2019-09-22 20:09:11.836', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253795', '20190922/G022/otlist', 'G022_mon_objt_190217T11221711.record', '1', 't', '2019-09-22 20:09:11.856', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253796', '20190922/G022/otlist', 'G022_mon_objt_190217T11221711.obj', '2', 't', '2019-09-22 20:09:11.879', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253797', '20190922/G022/otlist', 'G022_mon_objt_190217T11223209.record', '1', 't', '2019-09-22 20:09:11.9', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253798', '20190922/G022/otlist', 'G022_mon_objt_190217T11223209.obj', '2', 't', '2019-09-22 20:09:11.921', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253799', '20190922/G022/otlist', 'G022_mon_objt_190217T11230207.record', '1', 't', '2019-09-22 20:09:11.947', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253800', '20190922/G022/otlist', 'G022_mon_objt_190217T11230207.obj', '2', 't', '2019-09-22 20:09:11.967', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253801', '20190922/G022/otlist', 'G022_mon_objt_190217T11231705.record', '1', 't', '2019-09-22 20:09:11.988', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253802', '20190922/G022/otlist', 'G022_mon_objt_190217T11231705.obj', '2', 't', '2019-09-22 20:09:12.01', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253803', '20190922/G022/otlist', 'G022_mon_objt_190217T11233204.record', '1', 't', '2019-09-22 20:09:12.071', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253804', '20190922/G022/otlist', 'G022_mon_objt_190217T11233204.obj', '2', 't', '2019-09-22 20:09:12.09', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253805', '20190922/G022/otlist', 'G022_mon_objt_190217T11240204.record', '1', 't', '2019-09-22 20:09:12.11', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253806', '20190922/G022/otlist', 'G022_mon_objt_190217T11240204.obj', '2', 't', '2019-09-22 20:09:12.132', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253807', '20190922/G022/otlist', 'G022_mon_objt_190217T11241704.record', '1', 't', '2019-09-22 20:09:12.152', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253808', '20190922/G022/otlist', 'G022_mon_objt_190217T11241704.obj', '2', 't', '2019-09-22 20:09:12.173', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253809', '20190922/G022/otlist', 'G022_mon_objt_190217T11243204.record', '1', 't', '2019-09-22 20:09:12.191', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253810', '20190922/G022/otlist', 'G022_mon_objt_190217T11243204.obj', '2', 't', '2019-09-22 20:09:12.216', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253811', '20190922/G022/otlist', 'G022_mon_objt_190217T11244704.record', '1', 't', '2019-09-22 20:09:12.27', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253812', '20190922/G022/otlist', 'G022_mon_objt_190217T11244704.obj', '2', 't', '2019-09-22 20:09:12.287', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253813', '20190922/G022/otlist', 'G022_mon_objt_190217T11250204.record', '1', 't', '2019-09-22 20:09:12.304', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253814', '20190922/G022/otlist', 'G022_mon_objt_190217T11250204.obj', '2', 't', '2019-09-22 20:09:12.323', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253815', '20190922/G022/otlist', 'G022_mon_objt_190217T11251704.record', '1', 't', '2019-09-22 20:09:12.34', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253816', '20190922/G022/otlist', 'G022_mon_objt_190217T11251704.obj', '2', 't', '2019-09-22 20:09:12.358', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253817', '20190922/G022/otlist', 'G022_mon_objt_190217T11253204.record', '1', 't', '2019-09-22 20:09:12.429', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253818', '20190922/G022/otlist', 'G022_mon_objt_190217T11253204.obj', '2', 't', '2019-09-22 20:09:12.453', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253819', '20190922/G022/otlist', 'G022_mon_objt_190217T11254704.record', '1', 't', '2019-09-22 20:09:12.478', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253820', '20190922/G022/otlist', 'G022_mon_objt_190217T11254704.obj', '2', 't', '2019-09-22 20:09:12.501', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253821', '20190922/G022/otlist', 'G022_mon_objt_190217T11261704.record', '1', 't', '2019-09-22 20:09:12.577', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253822', '20190922/G022/otlist', 'G022_mon_objt_190217T11261704.obj', '2', 't', '2019-09-22 20:09:12.601', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253823', '20190922/G022/otlist', 'G022_mon_objt_190217T11263204.record', '1', 't', '2019-09-22 20:09:12.627', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253824', '20190922/G022/otlist', 'G022_mon_objt_190217T11263204.obj', '2', 't', '2019-09-22 20:09:12.65', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253825', '20190922/G022/otlist', 'G022_mon_objt_190217T11264704.record', '1', 't', '2019-09-22 20:09:12.675', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253826', '20190922/G022/otlist', 'G022_mon_objt_190217T11264704.obj', '2', 't', '2019-09-22 20:09:12.699', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253827', '20190922/G022/otlist', 'G022_mon_objt_190217T11270204.record', '1', 't', '2019-09-22 20:09:12.729', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253828', '20190922/G022/otlist', 'G022_mon_objt_190217T11270204.obj', '2', 't', '2019-09-22 20:09:12.753', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253829', '20190922/G022/otlist', 'G022_mon_objt_190217T11271704.record', '1', 't', '2019-09-22 20:09:12.821', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253830', '20190922/G022/otlist', 'G022_mon_objt_190217T11271704.obj', '2', 't', '2019-09-22 20:09:12.841', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253831', '20190922/G022/otlist', 'G022_mon_objt_190217T11273204.record', '1', 't', '2019-09-22 20:09:12.901', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253832', '20190922/G022/otlist', 'G022_mon_objt_190217T11273204.obj', '2', 't', '2019-09-22 20:09:12.958', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253833', '20190922/G022/otlist', 'G022_mon_objt_190217T11274704.record', '1', 't', '2019-09-22 20:09:13.035', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253834', '20190922/G022/otlist', 'G022_mon_objt_190217T11274704.obj', '2', 't', '2019-09-22 20:09:13.058', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253835', '20190922/G022/otlist', 'G022_mon_objt_190217T11280204.record', '1', 't', '2019-09-22 20:09:13.089', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253836', '20190922/G022/otlist', 'G022_mon_objt_190217T11280204.obj', '2', 't', '2019-09-22 20:09:13.112', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253837', '20190922/G022/otlist', 'G022_mon_objt_190217T11281704.record', '1', 't', '2019-09-22 20:09:13.139', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253838', '20190922/G022/otlist', 'G022_mon_objt_190217T11281704.obj', '2', 't', '2019-09-22 20:09:13.163', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253839', '20190922/G022/otlist', 'G022_mon_objt_190217T11283204.record', '1', 't', '2019-09-22 20:09:13.188', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253840', '20190922/G022/otlist', 'G022_mon_objt_190217T11283204.obj', '2', 't', '2019-09-22 20:09:13.211', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253841', '20190922/G022/otlist', 'G022_mon_objt_190217T11284704.record', '1', 't', '2019-09-22 20:09:13.241', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253842', '20190922/G022/otlist', 'G022_mon_objt_190217T11284704.obj', '2', 't', '2019-09-22 20:09:13.3', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253843', '20190922/G022/otlist', 'G022_mon_objt_190217T11290204.record', '1', 't', '2019-09-22 20:09:13.325', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253844', '20190922/G022/otlist', 'G022_mon_objt_190217T11290204.obj', '2', 't', '2019-09-22 20:09:13.349', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253845', '20190922/G022/otlist', 'G022_mon_objt_190217T11291704.record', '1', 't', '2019-09-22 20:09:13.377', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253846', '20190922/G022/otlist', 'G022_mon_objt_190217T11291704.obj', '2', 't', '2019-09-22 20:09:13.402', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253847', '20190922/G022/otlist', 'G022_mon_objt_190217T11293204.record', '1', 't', '2019-09-22 20:09:13.427', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253848', '20190922/G022/otlist', 'G022_mon_objt_190217T11293204.obj', '2', 't', '2019-09-22 20:09:13.448', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253849', '20190922/G022/otlist', 'G022_mon_objt_190217T11294704.record', '1', 't', '2019-09-22 20:09:13.471', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253850', '20190922/G022/otlist', 'G022_mon_objt_190217T11294704.obj', '2', 't', '2019-09-22 20:09:13.5', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253851', '20190926/G022/otlist', 'G022_mon_objt_190217T11501704.record', '1', 't', '2019-09-26 19:24:29.988', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253852', '20190926/G022/otlist', 'G022_mon_objt_190217T11501704.obj', '2', 't', '2019-09-26 19:24:30.467', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253853', '20190926/G022/otlist', 'G022_mon_objt_190217T12501704.record', '1', 't', '2019-09-26 19:30:09.117', null, null);
INSERT INTO "upload_file_unstore" VALUES ('37253854', '20190926/G022/otlist', 'G022_mon_objt_190217T12501704.obj', '2', 't', '2019-09-26 19:30:09.347', null, null);
COMMIT;

-- ----------------------------
-- Table structure for user_action
-- ----------------------------
DROP TABLE IF EXISTS "user_action";
CREATE TABLE "user_action" (
"ua_id" int4 DEFAULT nextval('ua_id_seq'::regclass) NOT NULL,
"ua_name" varchar(24) COLLATE "default",
"ua_comment" varchar(1024) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_action
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_action_log
-- ----------------------------
DROP TABLE IF EXISTS "user_action_log";
CREATE TABLE "user_action_log" (
"ual_id" int8 DEFAULT nextval('ual_id_seq'::regclass) NOT NULL,
"ui_id" int4,
"ua_id" int2,
"ual_time" timestamp(6)
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_action_log
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS "user_info";
CREATE TABLE "user_info" (
"ui_id" int4 DEFAULT nextval('ui_id_seq'::regclass) NOT NULL,
"name" varchar(255) COLLATE "default",
"address" varchar(255) COLLATE "default",
"register_date" timestamp(6),
"password" varchar(255) COLLATE "default",
"login_name" varchar(255) COLLATE "default",
"position" varchar(255) COLLATE "default",
"comments" varchar(1024) COLLATE "default",
"register_pass" bool,
"email" varchar(32) COLLATE "default",
"mobil_phone" varchar(32) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_info
-- ----------------------------
BEGIN;
INSERT INTO "user_info" VALUES ('1', 'xy', null, null, '123', 'xy', null, null, null, null, null);
INSERT INTO "user_info" VALUES ('31', 'admin', null, null, '123', 'wata', null, null, null, null, null);
COMMIT;

-- ----------------------------
-- Table structure for variation_type
-- ----------------------------
DROP TABLE IF EXISTS "variation_type";
CREATE TABLE "variation_type" (
"vt_id" int8 DEFAULT nextval('vt_id_seq'::regclass) NOT NULL,
"vt_name" varchar(255) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of variation_type
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for web_global_parameter
-- ----------------------------
DROP TABLE IF EXISTS "web_global_parameter";
CREATE TABLE "web_global_parameter" (
"name" varchar(64) COLLATE "default" NOT NULL,
"value" varchar(1024) COLLATE "default" DEFAULT ''::character varying,
"tag" varchar(32) COLLATE "default" DEFAULT ''::character varying
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of web_global_parameter
-- ----------------------------
BEGIN;
INSERT INTO "web_global_parameter" VALUES ('accessToken', '', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('aesKey', 'kbP4AjQeTTTkMwaFbskDYE4TzS83oQNjHBl02pW35zK', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('agentId', '1000002', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('AutoFollowUp', 'true', '');
INSERT INTO "web_global_parameter" VALUES ('corpId', 'wwf246537828b85a93', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('corpSecret', '9gCnJs9OscsnMpzcLSJzcukbQPsT8LLgFVPYdZL_YAc', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('departmentId', 'GWAC', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('expiresTime', '10', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('ExposeDuration', '30', '');
INSERT INTO "web_global_parameter" VALUES ('Filter', 'R', '');
INSERT INTO "web_global_parameter" VALUES ('FrameCount', '2', '');
INSERT INTO "web_global_parameter" VALUES ('fupStage1MagDiff', '0.8', 'supStage1');
INSERT INTO "web_global_parameter" VALUES ('fupStage1MinRecordNum', '2', 'supStage1');
INSERT INTO "web_global_parameter" VALUES ('fupStage2ExposeDuration', '50', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage2Filter', 'R', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage2FrameCount', '2', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage2Priority', '30', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage2StartTime', '4', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage2Telescope', '1', 'supStage2');
INSERT INTO "web_global_parameter" VALUES ('fupStage3ExposeDuration', '70', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3Filter', 'B,R', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3FrameCount', '5', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3MagDiff', '0.2', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3Priority', '30', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3StartTime', '8', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3StopTime', '30', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('fupStage3Telescope', '1', 'supStage3');
INSERT INTO "web_global_parameter" VALUES ('MaxSingleFrameOT2Num', '50', '');
INSERT INTO "web_global_parameter" VALUES ('oauth2redirectUri', '', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('Priority', '40', '');
INSERT INTO "web_global_parameter" VALUES ('tagId', '', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('Telescope', '1', '');
INSERT INTO "web_global_parameter" VALUES ('token', 'XsRsrkFziaaOPVDHX5aEBt5wa8m', 'weixin1');
INSERT INTO "web_global_parameter" VALUES ('userId', 'XuYang', 'weixin1');
COMMIT;

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------
ALTER SEQUENCE "camm_id_seq" OWNED BY "camera_monitor"."camm_id";
ALTER SEQUENCE "cf_id_seq" OWNED BY "config_file"."cf_id";
ALTER SEQUENCE "cpf_id_seq" OWNED BY "ccd_pix_filter"."cpf_id";
ALTER SEQUENCE "dpm_id_seq" OWNED BY "data_process_machine"."dpm_id";
ALTER SEQUENCE "env_id_seq" OWNED BY "environment"."env_id";
ALTER SEQUENCE "fbf_id_seq" OWNED BY "feedback_focus"."fbf_id";
ALTER SEQUENCE "ff_id_seq" OWNED BY "fits_file"."ff_id";
ALTER SEQUENCE "ffc_id_seq" OWNED BY "fits_file_cut"."ffc_id";
ALTER SEQUENCE "ffcmb_id_seq" OWNED BY "fits_file_combine"."ffcmb_id";
ALTER SEQUENCE "gmb_id_seq" OWNED BY "gimbal"."gmb_id";
ALTER SEQUENCE "grb_id_seq" OWNED BY "grb"."grb_id";
ALTER SEQUENCE "mm_id_seq" OWNED BY "mount_monitor"."mm_id";
ALTER SEQUENCE "mount_id_seq" OWNED BY "mount"."mount_id";
ALTER SEQUENCE "mr_id_seq" OWNED BY "multimedia_resource"."mr_id";
ALTER SEQUENCE "mt_id_seq" OWNED BY "match_table"."mt_id";
ALTER SEQUENCE "ocsm_id_seq" OWNED BY "obs_ctl_sys_monitor"."ocsm_id";
ALTER SEQUENCE "op_id_seq" OWNED BY "observation_plan"."op_id";
ALTER SEQUENCE "skor_id_seq" OWNED BY "star_know_observe_record"."skor_id";
ALTER SEQUENCE "sky_id_seq" OWNED BY "observation_sky"."sky_id";
ALTER SEQUENCE "slf_id_seq" OWNED BY "star_list_file"."slf_id";
ALTER SEQUENCE "sof_id_seq" OWNED BY "science_object_final"."sof_id";
ALTER SEQUENCE "star_id_seq" OWNED BY "star_know"."star_id";
ALTER SEQUENCE "tsp_id_seq" OWNED BY "mount"."mount_id";
ALTER SEQUENCE "ui_id_seq" OWNED BY "user_info"."ui_id";
ALTER SEQUENCE "vt_id_seq" OWNED BY "variation_type"."vt_id";

-- ----------------------------
-- Indexes structure for table camera
-- ----------------------------
CREATE INDEX "camera_name_idx" ON "camera" USING btree (name);

-- ----------------------------
-- Primary Key structure for table camera
-- ----------------------------
ALTER TABLE "camera" ADD PRIMARY KEY ("camera_id");

-- ----------------------------
-- Primary Key structure for table camera_cover_status
-- ----------------------------
ALTER TABLE "camera_cover_status" ADD PRIMARY KEY ("camera_cover_status_id");

-- ----------------------------
-- Primary Key structure for table camera_monitor
-- ----------------------------
ALTER TABLE "camera_monitor" ADD PRIMARY KEY ("camm_id");

-- ----------------------------
-- Primary Key structure for table camera_temperature_monitor
-- ----------------------------
ALTER TABLE "camera_temperature_monitor" ADD PRIMARY KEY ("ctm_id");

-- ----------------------------
-- Primary Key structure for table camera_vacuum_monitor
-- ----------------------------
ALTER TABLE "camera_vacuum_monitor" ADD PRIMARY KEY ("cvm_id");

-- ----------------------------
-- Primary Key structure for table ccd_pix_filter
-- ----------------------------
ALTER TABLE "ccd_pix_filter" ADD PRIMARY KEY ("cpf_id");

-- ----------------------------
-- Primary Key structure for table config_file
-- ----------------------------
ALTER TABLE "config_file" ADD PRIMARY KEY ("cf_id");

-- ----------------------------
-- Primary Key structure for table config_file_his
-- ----------------------------
ALTER TABLE "config_file_his" ADD PRIMARY KEY ("cf_id");

-- ----------------------------
-- Primary Key structure for table coordinate_show
-- ----------------------------
ALTER TABLE "coordinate_show" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table data_process_machine
-- ----------------------------
ALTER TABLE "data_process_machine" ADD PRIMARY KEY ("dpm_id");

-- ----------------------------
-- Primary Key structure for table dome
-- ----------------------------
ALTER TABLE "dome" ADD PRIMARY KEY ("dome_id");

-- ----------------------------
-- Primary Key structure for table dome_status
-- ----------------------------
ALTER TABLE "dome_status" ADD PRIMARY KEY ("dome_status_id");

-- ----------------------------
-- Primary Key structure for table environment
-- ----------------------------
ALTER TABLE "environment" ADD PRIMARY KEY ("env_id");

-- ----------------------------
-- Primary Key structure for table feedback_focus
-- ----------------------------
ALTER TABLE "feedback_focus" ADD PRIMARY KEY ("fbf_id");

-- ----------------------------
-- Indexes structure for table file_number
-- ----------------------------
CREATE INDEX "file_number_sky_id_cam_id_date_str_idx" ON "file_number" USING btree (sky_id, cam_id, date_str);

-- ----------------------------
-- Primary Key structure for table file_number
-- ----------------------------
ALTER TABLE "file_number" ADD PRIMARY KEY ("fn_id");

-- ----------------------------
-- Indexes structure for table fits_file
-- ----------------------------
CREATE INDEX "fits_file_ff_id_idx" ON "fits_file" USING btree (ff_id);
CREATE INDEX "fits_file_file_name_idx" ON "fits_file" USING btree (file_name);

-- ----------------------------
-- Primary Key structure for table fits_file
-- ----------------------------
ALTER TABLE "fits_file" ADD PRIMARY KEY ("ff_id");

-- ----------------------------
-- Primary Key structure for table fits_file_combine
-- ----------------------------
ALTER TABLE "fits_file_combine" ADD PRIMARY KEY ("ffcmb_id");

-- ----------------------------
-- Indexes structure for table fits_file_cut
-- ----------------------------
CREATE INDEX "fits_file_cut_file_name_idx" ON "fits_file_cut" USING btree (file_name);
CREATE INDEX "fits_file_cut_number_idx" ON "fits_file_cut" USING btree (number);
CREATE INDEX "fits_file_cut_ot_id_idx" ON "fits_file_cut" USING btree (ot_id);
CREATE INDEX "fits_file_cut_priority_idx" ON "fits_file_cut" USING btree (priority);

-- ----------------------------
-- Primary Key structure for table fits_file_cut
-- ----------------------------
ALTER TABLE "fits_file_cut" ADD PRIMARY KEY ("ffc_id");

-- ----------------------------
-- Indexes structure for table fits_file_cut_his
-- ----------------------------
CREATE INDEX "fits_file_cut_his_file_name_idx" ON "fits_file_cut_his" USING btree (file_name);
CREATE INDEX "fits_file_cut_his_ot_id_idx" ON "fits_file_cut_his" USING btree (ot_id);

-- ----------------------------
-- Primary Key structure for table fits_file_cut_his
-- ----------------------------
ALTER TABLE "fits_file_cut_his" ADD PRIMARY KEY ("ffc_id");

-- ----------------------------
-- Indexes structure for table fits_file_cut_ref
-- ----------------------------
CREATE INDEX "fits_file_cut_ref_file_name_idx" ON "fits_file_cut_ref" USING btree (file_name);
CREATE INDEX "fits_file_cut_ref_ot_id_idx" ON "fits_file_cut_ref" USING btree (ot_id);

-- ----------------------------
-- Primary Key structure for table fits_file_cut_ref
-- ----------------------------
ALTER TABLE "fits_file_cut_ref" ADD PRIMARY KEY ("ffcr_id");

-- ----------------------------
-- Indexes structure for table fits_file_cut_ref_his
-- ----------------------------
CREATE INDEX "fits_file_cut_ref_his_file_name_idx_copy" ON "fits_file_cut_ref_his" USING btree (file_name);
CREATE INDEX "fits_file_cut_ref_his_ot_id_idx_copy" ON "fits_file_cut_ref_his" USING btree (ot_id);

-- ----------------------------
-- Primary Key structure for table fits_file_cut_ref_his
-- ----------------------------
ALTER TABLE "fits_file_cut_ref_his" ADD PRIMARY KEY ("ffcr_id");

-- ----------------------------
-- Indexes structure for table fits_file2
-- ----------------------------
CREATE INDEX "fits_file2_cam_id_idx" ON "fits_file2" USING btree (cam_id);
CREATE INDEX "fits_file2_ff_number_idx" ON "fits_file2" USING btree (ff_number);
CREATE INDEX "fits_file2_gen_time_idx" ON "fits_file2" USING btree (gen_time);
CREATE INDEX "fits_file2_img_name_idx" ON "fits_file2" USING btree (img_name);
CREATE INDEX "fits_file2_sky_id_idx" ON "fits_file2" USING btree (sky_id);

-- ----------------------------
-- Primary Key structure for table fits_file2
-- ----------------------------
ALTER TABLE "fits_file2" ADD PRIMARY KEY ("ff_id");

-- ----------------------------
-- Indexes structure for table fits_file2_his
-- ----------------------------
CREATE INDEX "fits_file2_ff_number_idx_his" ON "fits_file2_his" USING btree (ff_number);
CREATE INDEX "fits_file2_img_name_idx_his" ON "fits_file2_his" USING btree (img_name);

-- ----------------------------
-- Primary Key structure for table fits_file2_his
-- ----------------------------
ALTER TABLE "fits_file2_his" ADD PRIMARY KEY ("ff_id");

-- ----------------------------
-- Primary Key structure for table follow_up_fitsfile
-- ----------------------------
ALTER TABLE "follow_up_fitsfile" ADD PRIMARY KEY ("fuf_id");

-- ----------------------------
-- Primary Key structure for table follow_up_object
-- ----------------------------
ALTER TABLE "follow_up_object" ADD PRIMARY KEY ("fuo_id");

-- ----------------------------
-- Primary Key structure for table follow_up_object_his
-- ----------------------------
ALTER TABLE "follow_up_object_his" ADD PRIMARY KEY ("fuo_id");

-- ----------------------------
-- Primary Key structure for table follow_up_object_type
-- ----------------------------
ALTER TABLE "follow_up_object_type" ADD PRIMARY KEY ("fuo_type_id");

-- ----------------------------
-- Indexes structure for table follow_up_observation
-- ----------------------------
CREATE INDEX "follow_up_observation_begin_time_idx" ON "follow_up_observation" USING btree (begin_time);
CREATE INDEX "follow_up_observation_obj_name_idx" ON "follow_up_observation" USING btree (obj_name);
CREATE INDEX "follow_up_observation_so_id_idx" ON "follow_up_observation" USING btree (so_id);

-- ----------------------------
-- Primary Key structure for table follow_up_observation
-- ----------------------------
ALTER TABLE "follow_up_observation" ADD PRIMARY KEY ("fo_id");

-- ----------------------------
-- Primary Key structure for table follow_up_record
-- ----------------------------
ALTER TABLE "follow_up_record" ADD PRIMARY KEY ("fr_id");

-- ----------------------------
-- Primary Key structure for table follow_up_record_his
-- ----------------------------
ALTER TABLE "follow_up_record_his" ADD PRIMARY KEY ("fr_id");

-- ----------------------------
-- Primary Key structure for table gimbal
-- ----------------------------
ALTER TABLE "gimbal" ADD PRIMARY KEY ("gmb_id");

-- ----------------------------
-- Primary Key structure for table grb
-- ----------------------------
ALTER TABLE "grb" ADD PRIMARY KEY ("grb_id");

-- ----------------------------
-- Primary Key structure for table image_status_parameter
-- ----------------------------
ALTER TABLE "image_status_parameter" ADD PRIMARY KEY ("isp_id");

-- ----------------------------
-- Primary Key structure for table image_status_parameter_his
-- ----------------------------
ALTER TABLE "image_status_parameter_his" ADD PRIMARY KEY ("isp_id");

-- ----------------------------
-- Primary Key structure for table manual_upload_file
-- ----------------------------
ALTER TABLE "manual_upload_file" ADD PRIMARY KEY ("muf_id");

-- ----------------------------
-- Primary Key structure for table match_table
-- ----------------------------
ALTER TABLE "match_table" ADD PRIMARY KEY ("mt_id");

-- ----------------------------
-- Primary Key structure for table moon_phase
-- ----------------------------
ALTER TABLE "moon_phase" ADD PRIMARY KEY ("mp_id");

-- ----------------------------
-- Indexes structure for table mount
-- ----------------------------
CREATE INDEX "mount_name_idx" ON "mount" USING btree (name);
CREATE INDEX "mount_unit_id_group_id_idx" ON "mount" USING btree (unit_id, group_id);

-- ----------------------------
-- Primary Key structure for table mount
-- ----------------------------
ALTER TABLE "mount" ADD PRIMARY KEY ("mount_id");

-- ----------------------------
-- Primary Key structure for table mount_monitor
-- ----------------------------
ALTER TABLE "mount_monitor" ADD PRIMARY KEY ("mm_id");

-- ----------------------------
-- Primary Key structure for table mount_state
-- ----------------------------
ALTER TABLE "mount_state" ADD PRIMARY KEY ("mount_status_id");

-- ----------------------------
-- Primary Key structure for table move_object
-- ----------------------------
ALTER TABLE "move_object" ADD PRIMARY KEY ("mov_id");

-- ----------------------------
-- Primary Key structure for table move_object_record
-- ----------------------------
ALTER TABLE "move_object_record" ADD PRIMARY KEY ("oor_id");

-- ----------------------------
-- Primary Key structure for table multimedia_resource
-- ----------------------------
ALTER TABLE "multimedia_resource" ADD PRIMARY KEY ("mr_id");

-- ----------------------------
-- Primary Key structure for table object_identity
-- ----------------------------
ALTER TABLE "object_identity" ADD PRIMARY KEY ("obj_id");

-- ----------------------------
-- Primary Key structure for table object_type
-- ----------------------------
ALTER TABLE "object_type" ADD PRIMARY KEY ("obj_type_id");

-- ----------------------------
-- Primary Key structure for table obs_ctl_sys_monitor
-- ----------------------------
ALTER TABLE "obs_ctl_sys_monitor" ADD PRIMARY KEY ("ocsm_id");

-- ----------------------------
-- Indexes structure for table observation_plan
-- ----------------------------
CREATE INDEX "observation_plan_op_sn_idx" ON "observation_plan" USING btree (op_sn);

-- ----------------------------
-- Primary Key structure for table observation_plan
-- ----------------------------
ALTER TABLE "observation_plan" ADD PRIMARY KEY ("op_id");

-- ----------------------------
-- Primary Key structure for table observation_plan_state
-- ----------------------------
ALTER TABLE "observation_plan_state" ADD PRIMARY KEY ("obs_plan_id");

-- ----------------------------
-- Primary Key structure for table observation_site
-- ----------------------------
ALTER TABLE "observation_site" ADD PRIMARY KEY ("obs_site_id");

-- ----------------------------
-- Indexes structure for table observation_sky
-- ----------------------------
CREATE INDEX "observation_sky_sky_name_grid_id_idx" ON "observation_sky" USING btree (sky_name, grid_id);

-- ----------------------------
-- Primary Key structure for table observation_sky
-- ----------------------------
ALTER TABLE "observation_sky" ADD PRIMARY KEY ("sky_id");

-- ----------------------------
-- Primary Key structure for table ot_comment
-- ----------------------------
ALTER TABLE "ot_comment" ADD PRIMARY KEY ("oc_id");

-- ----------------------------
-- Indexes structure for table ot_level2
-- ----------------------------
CREATE INDEX "ot_level2_dpm_id_idx" ON "ot_level2" USING btree (dpm_id);
CREATE INDEX "ot_level2_dpm_id_sky_id_idx" ON "ot_level2" USING btree (dpm_id, sky_id);
CREATE INDEX "ot_level2_found_time_utc_idx" ON "ot_level2" USING btree (found_time_utc);
CREATE INDEX "ot_level2_last_ff_number_idx" ON "ot_level2" USING btree (last_ff_number);
CREATE INDEX "ot_level2_look_back_result_idx" ON "ot_level2" USING btree (look_back_result);
CREATE INDEX "ot_level2_name_idx" ON "ot_level2" USING btree (name);
CREATE INDEX "ot_level2_ot_type_idx" ON "ot_level2" USING btree (ot_type);
CREATE INDEX "ot_level2_sky_id_idx" ON "ot_level2" USING btree (sky_id);

-- ----------------------------
-- Primary Key structure for table ot_level2
-- ----------------------------
ALTER TABLE "ot_level2" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Indexes structure for table ot_level2_his
-- ----------------------------
CREATE INDEX "ot_level2_his_date_str_idx" ON "ot_level2_his" USING btree (date_str);
CREATE INDEX "ot_level2_his_name_idx" ON "ot_level2_his" USING btree (name);
CREATE INDEX "ot_level2_his_ra_dec_idx" ON "ot_level2_his" USING btree (ra, dec);

-- ----------------------------
-- Primary Key structure for table ot_level2_his
-- ----------------------------
ALTER TABLE "ot_level2_his" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Indexes structure for table ot_level2_match
-- ----------------------------
CREATE INDEX "ot_level2_match_mt_id_match_id_idx" ON "ot_level2_match" USING btree (mt_id, match_id);

-- ----------------------------
-- Primary Key structure for table ot_level2_match
-- ----------------------------
ALTER TABLE "ot_level2_match" ADD PRIMARY KEY ("olm_id");

-- ----------------------------
-- Primary Key structure for table ot_level3
-- ----------------------------
ALTER TABLE "ot_level3" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Primary Key structure for table ot_number
-- ----------------------------
ALTER TABLE "ot_number" ADD PRIMARY KEY ("otn_id");

-- ----------------------------
-- Indexes structure for table ot_observe_record
-- ----------------------------
CREATE INDEX "ot_observe_record_dpm_id_sky_id_idx" ON "ot_observe_record" USING btree (dpm_id, sky_id);
CREATE INDEX "ot_observe_record_ff_number_idx" ON "ot_observe_record" USING btree (ff_number);
CREATE INDEX "ot_observe_record_ffc_id_idx" ON "ot_observe_record" USING btree (ffc_id);
CREATE INDEX "ot_observe_record_ot_id_idx" ON "ot_observe_record" USING btree (ot_id);

-- ----------------------------
-- Primary Key structure for table ot_observe_record
-- ----------------------------
ALTER TABLE "ot_observe_record" ADD PRIMARY KEY ("oor_id");

-- ----------------------------
-- Indexes structure for table ot_observe_record_his
-- ----------------------------
CREATE INDEX "ot_observe_record_his_date_str_idx" ON "ot_observe_record_his" USING btree (date_str);
CREATE INDEX "ot_observe_record_his_dpm_id_idx" ON "ot_observe_record_his" USING btree (dpm_id);
CREATE INDEX "ot_observe_record_his_ot_id_idx" ON "ot_observe_record_his" USING btree (ot_id);
CREATE INDEX "ot_observe_record_his_ra_d_dec_d_idx" ON "ot_observe_record_his" USING btree (ra_d, dec_d);
CREATE INDEX "ot_observe_record_his_sky_id_idx" ON "ot_observe_record_his" USING btree (sky_id);

-- ----------------------------
-- Primary Key structure for table ot_observe_record_his
-- ----------------------------
ALTER TABLE "ot_observe_record_his" ADD PRIMARY KEY ("oor_id");

-- ----------------------------
-- Primary Key structure for table ot_observe_record_tmp
-- ----------------------------
ALTER TABLE "ot_observe_record_tmp" ADD PRIMARY KEY ("oor_id");

-- ----------------------------
-- Primary Key structure for table ot_tmpl_true
-- ----------------------------
ALTER TABLE "ot_tmpl_true" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Indexes structure for table ot_tmpl_wrong
-- ----------------------------
CREATE INDEX "ot_tmpl_wrong_ra_dec_idx" ON "ot_tmpl_wrong" USING btree (ra, dec);

-- ----------------------------
-- Primary Key structure for table ot_tmpl_wrong
-- ----------------------------
ALTER TABLE "ot_tmpl_wrong" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Primary Key structure for table ot_type
-- ----------------------------
ALTER TABLE "ot_type" ADD PRIMARY KEY ("ott_id");

-- ----------------------------
-- Primary Key structure for table ot2_stream_node_time
-- ----------------------------
ALTER TABLE "ot2_stream_node_time" ADD PRIMARY KEY ("ot_id");

-- ----------------------------
-- Primary Key structure for table process_status
-- ----------------------------
ALTER TABLE "process_status" ADD PRIMARY KEY ("ps_id");

-- ----------------------------
-- Primary Key structure for table rainfall
-- ----------------------------
ALTER TABLE "rainfall" ADD PRIMARY KEY ("rain_id");

-- ----------------------------
-- Primary Key structure for table science_object
-- ----------------------------
ALTER TABLE "science_object" ADD PRIMARY KEY ("so_id");

-- ----------------------------
-- Primary Key structure for table science_object_final
-- ----------------------------
ALTER TABLE "science_object_final" ADD PRIMARY KEY ("sof_id");

-- ----------------------------
-- Primary Key structure for table sky_region_template
-- ----------------------------
ALTER TABLE "sky_region_template" ADD PRIMARY KEY ("tmpt_id");

-- ----------------------------
-- Primary Key structure for table star_know
-- ----------------------------
ALTER TABLE "star_know" ADD PRIMARY KEY ("star_id");

-- ----------------------------
-- Primary Key structure for table star_know_observe_record
-- ----------------------------
ALTER TABLE "star_know_observe_record" ADD PRIMARY KEY ("skor_id");

-- ----------------------------
-- Primary Key structure for table star_list_file
-- ----------------------------
ALTER TABLE "star_list_file" ADD PRIMARY KEY ("slf_id");

-- ----------------------------
-- Primary Key structure for table sync_file
-- ----------------------------
ALTER TABLE "sync_file" ADD PRIMARY KEY ("sf_id");

-- ----------------------------
-- Primary Key structure for table system_keyword
-- ----------------------------
ALTER TABLE "system_keyword" ADD PRIMARY KEY ("sys_kw_id");

-- ----------------------------
-- Primary Key structure for table system_log
-- ----------------------------
ALTER TABLE "system_log" ADD PRIMARY KEY ("log_id");

-- ----------------------------
-- Primary Key structure for table system_log_his
-- ----------------------------
ALTER TABLE "system_log_his" ADD PRIMARY KEY ("log_id");

-- ----------------------------
-- Primary Key structure for table system_parameter
-- ----------------------------
ALTER TABLE "system_parameter" ADD PRIMARY KEY ("sp_id");

-- ----------------------------
-- Primary Key structure for table system_status
-- ----------------------------
ALTER TABLE "system_status" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table system_status_monitor
-- ----------------------------
ALTER TABLE "system_status_monitor" ADD PRIMARY KEY ("identity");

-- ----------------------------
-- Primary Key structure for table timing_task
-- ----------------------------
ALTER TABLE "timing_task" ADD PRIMARY KEY ("tt_id");

-- ----------------------------
-- Primary Key structure for table timing_task_log
-- ----------------------------
ALTER TABLE "timing_task_log" ADD PRIMARY KEY ("ttl_id");

-- ----------------------------
-- Primary Key structure for table upload_file_record
-- ----------------------------
ALTER TABLE "upload_file_record" ADD PRIMARY KEY ("ufr_id");

-- ----------------------------
-- Indexes structure for table upload_file_unstore
-- ----------------------------
CREATE INDEX "upload_file_unstore_file_type_idx" ON "upload_file_unstore" USING btree (file_type);

-- ----------------------------
-- Primary Key structure for table upload_file_unstore
-- ----------------------------
ALTER TABLE "upload_file_unstore" ADD PRIMARY KEY ("ufu_id");

-- ----------------------------
-- Primary Key structure for table user_action
-- ----------------------------
ALTER TABLE "user_action" ADD PRIMARY KEY ("ua_id");

-- ----------------------------
-- Primary Key structure for table user_action_log
-- ----------------------------
ALTER TABLE "user_action_log" ADD PRIMARY KEY ("ual_id");

-- ----------------------------
-- Primary Key structure for table user_info
-- ----------------------------
ALTER TABLE "user_info" ADD PRIMARY KEY ("ui_id");

-- ----------------------------
-- Primary Key structure for table variation_type
-- ----------------------------
ALTER TABLE "variation_type" ADD PRIMARY KEY ("vt_id");

-- ----------------------------
-- Primary Key structure for table web_global_parameter
-- ----------------------------
ALTER TABLE "web_global_parameter" ADD PRIMARY KEY ("name");
