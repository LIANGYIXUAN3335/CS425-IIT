/*
 Navicat Premium Data Transfer

 Source Server         : final_project
 Source Server Type    : PostgreSQL
 Source Server Version : 110012
 Source Host           : localhost:5432
 Source Catalog        : registration
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110012
 File Encoding         : 65001

 Date: 14/08/2021 11:26:56
*/


-- ----------------------------
-- Table structure for college
-- ----------------------------
DROP TABLE IF EXISTS "public"."college";
CREATE TABLE "public"."college" (
  "college_name" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "budget" numeric(16) NOT NULL
)
;

-- ----------------------------
-- Records of college
-- ----------------------------
INSERT INTO "public"."college" VALUES ('architecture    ', 100000);
INSERT INTO "public"."college" VALUES ('engineering     ', 230000);
INSERT INTO "public"."college" VALUES ('transportation  ', 325000);
INSERT INTO "public"."college" VALUES ('math            ', 234000);
INSERT INTO "public"."college" VALUES ('art             ', 100000);
INSERT INTO "public"."college" VALUES ('com_sci         ', 120000);
INSERT INTO "public"."college" VALUES ('Deusch          ', 150000);
INSERT INTO "public"."college" VALUES ('english         ', 145000);
INSERT INTO "public"."college" VALUES ('chinese         ', 180000);
INSERT INTO "public"."college" VALUES ('society         ', 185000);

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS "public"."course";
CREATE TABLE "public"."course" (
  "courseid" char(4) COLLATE "pg_catalog"."default" NOT NULL,
  "coursename" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "credits" int2 NOT NULL,
  "instructor_name" char(16) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO "public"."course" VALUES ('1111', 'autoconcept     ', 5, 'huangzhong      ');
INSERT INTO "public"."course" VALUES ('1112', 'buildingauto    ', 4, 'shijie          ');
INSERT INTO "public"."course" VALUES ('1113', 'adv_math        ', 5, 'zhangyongming   ');
INSERT INTO "public"."course" VALUES ('1114', 'sub_design      ', 4, 'zhangzihao      ');
INSERT INTO "public"."course" VALUES ('1115', 'linear_algebra  ', 4, 'xujinglei       ');
INSERT INTO "public"."course" VALUES ('1116', 'chinese         ', 5, 'lixingxiu       ');
INSERT INTO "public"."course" VALUES ('1117', 'Database        ', 3, 'chenhong        ');
INSERT INTO "public"."course" VALUES ('1118', 'java            ', 5, 'chenhong        ');
INSERT INTO "public"."course" VALUES ('1119', 'com_org         ', 4, 'chenhong        ');
INSERT INTO "public"."course" VALUES ('1110', 'mach_des        ', 5, 'huangzhong      ');

-- ----------------------------
-- Table structure for course_section
-- ----------------------------
DROP TABLE IF EXISTS "public"."course_section";
CREATE TABLE "public"."course_section" (
  "section_name" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "courseid" int2 NOT NULL
)
;

-- ----------------------------
-- Records of course_section
-- ----------------------------
INSERT INTO "public"."course_section" VALUES ('chap1_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap2_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap3_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap4_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap5_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap6_build     ', 1112);
INSERT INTO "public"."course_section" VALUES ('chap1_auto      ', 1111);
INSERT INTO "public"."course_section" VALUES ('chap2_auto      ', 1111);
INSERT INTO "public"."course_section" VALUES ('chap3_auto      ', 1111);
INSERT INTO "public"."course_section" VALUES ('chap4_auto      ', 1111);
INSERT INTO "public"."course_section" VALUES ('chap5_auto      ', 1111);
INSERT INTO "public"."course_section" VALUES ('chap1_adv       ', 1113);
INSERT INTO "public"."course_section" VALUES ('chap2_adv       ', 1113);
INSERT INTO "public"."course_section" VALUES ('chap3_adv       ', 1113);
INSERT INTO "public"."course_section" VALUES ('chap4_adv       ', 1113);
INSERT INTO "public"."course_section" VALUES ('chap5_adv       ', 1113);
INSERT INTO "public"."course_section" VALUES ('chap1_sub       ', 1114);
INSERT INTO "public"."course_section" VALUES ('chap2_sub       ', 1114);
INSERT INTO "public"."course_section" VALUES ('chap3_sub       ', 1114);
INSERT INTO "public"."course_section" VALUES ('chap4_sub       ', 1114);
INSERT INTO "public"."course_section" VALUES ('chap5_sub       ', 1114);
INSERT INTO "public"."course_section" VALUES ('chap1_line      ', 1115);
INSERT INTO "public"."course_section" VALUES ('chap2_line      ', 1115);
INSERT INTO "public"."course_section" VALUES ('chap3_line      ', 1115);
INSERT INTO "public"."course_section" VALUES ('chap4_line      ', 1115);
INSERT INTO "public"."course_section" VALUES ('chap5_line      ', 1115);
INSERT INTO "public"."course_section" VALUES ('chap1_chi       ', 1116);
INSERT INTO "public"."course_section" VALUES ('chap2_chi       ', 1116);
INSERT INTO "public"."course_section" VALUES ('chap3_chi       ', 1116);
INSERT INTO "public"."course_section" VALUES ('chap4_chi       ', 1116);
INSERT INTO "public"."course_section" VALUES ('chap5_chi       ', 1116);
INSERT INTO "public"."course_section" VALUES ('chap1_Data      ', 1117);
INSERT INTO "public"."course_section" VALUES ('chap2_Data      ', 1117);
INSERT INTO "public"."course_section" VALUES ('chap3_Data      ', 1117);
INSERT INTO "public"."course_section" VALUES ('chap4_Data      ', 1117);
INSERT INTO "public"."course_section" VALUES ('chap5_Data      ', 1117);
INSERT INTO "public"."course_section" VALUES ('chap1_java      ', 1118);
INSERT INTO "public"."course_section" VALUES ('chap2_java      ', 1118);
INSERT INTO "public"."course_section" VALUES ('chap3_java      ', 1118);
INSERT INTO "public"."course_section" VALUES ('chap4_java      ', 1118);
INSERT INTO "public"."course_section" VALUES ('chap5_java      ', 1118);
INSERT INTO "public"."course_section" VALUES ('chap1_com_org   ', 1119);
INSERT INTO "public"."course_section" VALUES ('chap2_com_org   ', 1119);
INSERT INTO "public"."course_section" VALUES ('chap3_com_org   ', 1119);
INSERT INTO "public"."course_section" VALUES ('chap4_com_org   ', 1119);
INSERT INTO "public"."course_section" VALUES ('chap5_com_org   ', 1119);
INSERT INTO "public"."course_section" VALUES ('chap1_mach_des  ', 1110);
INSERT INTO "public"."course_section" VALUES ('chap2_mach_des  ', 1110);
INSERT INTO "public"."course_section" VALUES ('chap3_mach_des  ', 1110);
INSERT INTO "public"."course_section" VALUES ('chap4_mach_des  ', 1110);
INSERT INTO "public"."course_section" VALUES ('chap5_mach_des  ', 1110);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS "public"."department";
CREATE TABLE "public"."department" (
  "dept_name" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "building" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "budget" numeric(7) NOT NULL,
  "college_name" char(16) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO "public"."department" VALUES ('stu_uni_arch    ', 'jishi           ', 1000, 'architecture    ');
INSERT INTO "public"."department" VALUES ('stu_uni_math    ', 'jiren           ', 1200, 'math            ');
INSERT INTO "public"."department" VALUES ('stu_uni_engi    ', 'tongxin         ', 1300, 'engineering     ');
INSERT INTO "public"."department" VALUES ('stu_uni_tran    ', 'tongde          ', 1500, 'transportation  ');
INSERT INTO "public"."department" VALUES ('acad_aff_arch   ', 'jishi           ', 11000, 'architecture    ');
INSERT INTO "public"."department" VALUES ('acad_aff_math   ', 'jiren           ', 14000, 'math            ');
INSERT INTO "public"."department" VALUES ('acad_aff_engi   ', 'tongxin         ', 13000, 'engineering     ');
INSERT INTO "public"."department" VALUES ('acad_aff_tran   ', 'tongde          ', 12000, 'transportation  ');
INSERT INTO "public"."department" VALUES ('back_off_arch   ', 'jishi           ', 12000, 'architecture    ');
INSERT INTO "public"."department" VALUES ('back_off_math   ', 'jiren           ', 10300, 'math            ');
INSERT INTO "public"."department" VALUES ('back_off_engi   ', 'tongxin         ', 15000, 'engineering     ');
INSERT INTO "public"."department" VALUES ('back_off_tran   ', 'tongde          ', 10400, 'transportation  ');
INSERT INTO "public"."department" VALUES ('stu_uni_art     ', 'jishi           ', 1150, 'art             ');
INSERT INTO "public"."department" VALUES ('stu_uni_comsci  ', 'jishi           ', 1250, 'com_sci         ');
INSERT INTO "public"."department" VALUES ('stu_uni_deu     ', 'jishi           ', 1300, 'Deusch          ');
INSERT INTO "public"."department" VALUES ('stu_uni_eng     ', 'jishi           ', 1850, 'english         ');
INSERT INTO "public"."department" VALUES ('stu_uni_chi     ', 'jishi           ', 1500, 'chinese         ');
INSERT INTO "public"."department" VALUES ('stu_uni_soci    ', 'jishi           ', 1300, 'society         ');
INSERT INTO "public"."department" VALUES ('acad_aff_art    ', 'jiren           ', 11500, 'art             ');
INSERT INTO "public"."department" VALUES ('acad_aff_comsci ', 'jiren           ', 12500, 'com_sci         ');
INSERT INTO "public"."department" VALUES ('acad_aff_deu    ', 'jiren           ', 13000, 'Deusch          ');
INSERT INTO "public"."department" VALUES ('acad_aff_eng    ', 'jiren           ', 18500, 'english         ');
INSERT INTO "public"."department" VALUES ('acad_aff_chi    ', 'jiren           ', 15000, 'chinese         ');
INSERT INTO "public"."department" VALUES ('acad_aff_soci   ', 'jiren           ', 13000, 'society         ');
INSERT INTO "public"."department" VALUES ('back_off_art    ', 'tongxin         ', 11500, 'art             ');
INSERT INTO "public"."department" VALUES ('back_off_comsci ', 'tongxin         ', 12500, 'com_sci         ');
INSERT INTO "public"."department" VALUES ('back_off_deu    ', 'tongxin         ', 13000, 'Deusch          ');
INSERT INTO "public"."department" VALUES ('back_off_eng    ', 'tongxin         ', 18500, 'english         ');
INSERT INTO "public"."department" VALUES ('back_off_chi    ', 'tongxin         ', 15000, 'chinese         ');
INSERT INTO "public"."department" VALUES ('back_off_soci   ', 'tongxin         ', 13000, 'society         ');

-- ----------------------------
-- Table structure for instructor
-- ----------------------------
DROP TABLE IF EXISTS "public"."instructor";
CREATE TABLE "public"."instructor" (
  "instructor_name" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "dept_name" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "college_name" char(16) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of instructor
-- ----------------------------
INSERT INTO "public"."instructor" VALUES ('shijie          ', 'acad_aff_arch   ', 'architecture    ');
INSERT INTO "public"."instructor" VALUES ('huangzhong      ', 'acad_aff_engi   ', 'engineering     ');
INSERT INTO "public"."instructor" VALUES ('zhangzihao      ', 'acad_aff_tran   ', 'transportation  ');
INSERT INTO "public"."instructor" VALUES ('xujinglei       ', 'acad_aff_math   ', 'math            ');
INSERT INTO "public"."instructor" VALUES ('zhangyongming   ', 'acad_aff_math   ', 'math            ');
INSERT INTO "public"."instructor" VALUES ('liming          ', 'acad_aff_art    ', 'art             ');
INSERT INTO "public"."instructor" VALUES ('chenhong        ', 'acad_aff_comsci ', 'com_sci         ');
INSERT INTO "public"."instructor" VALUES ('chensiyuan      ', 'acad_aff_deu    ', 'Deusch          ');
INSERT INTO "public"."instructor" VALUES ('guoyaqian       ', 'acad_aff_eng    ', 'english         ');
INSERT INTO "public"."instructor" VALUES ('lixingxiu       ', 'acad_aff_chi    ', 'chinese         ');
INSERT INTO "public"."instructor" VALUES ('zhangxinyue     ', 'acad_aff_soci   ', 'society         ');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS "public"."student";
CREATE TABLE "public"."student" (
  "studentid" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "studentname" char(16) COLLATE "pg_catalog"."default" NOT NULL,
  "total_credit" int2 NOT NULL,
  "age" int2 NOT NULL,
  "college_name" char(16) COLLATE "pg_catalog"."default",
  "sex" char(2) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO "public"."student" VALUES ('111111', 'xiaoming        ', 10, 19, 'architecture    ', 'M ');
INSERT INTO "public"."student" VALUES ('111112', 'liangyixuan     ', 15, 20, 'engineering     ', 'F ');
INSERT INTO "public"."student" VALUES ('111113', 'shaojianhua     ', 17, 20, 'transportation  ', 'M ');
INSERT INTO "public"."student" VALUES ('111114', 'jianghaoqing    ', 13, 19, 'math            ', 'M ');
INSERT INTO "public"."student" VALUES ('111115', 'shangguanruijun ', 18, 19, 'math            ', 'M ');
INSERT INTO "public"."student" VALUES ('111116', 'lilai           ', 20, 20, 'transportation  ', 'F ');
INSERT INTO "public"."student" VALUES ('111117', 'liyuming        ', 24, 21, 'architecture    ', 'M ');
INSERT INTO "public"."student" VALUES ('111118', 'zhengjiaqi      ', 16, 19, 'engineering     ', 'M ');
INSERT INTO "public"."student" VALUES ('111119', 'wangjunhua      ', 23, 20, 'architecture    ', 'F ');
INSERT INTO "public"."student" VALUES ('111110', 'jiangjun        ', 9, 19, 'transportation  ', 'M ');

-- ----------------------------
-- Table structure for students_courses_relation
-- ----------------------------
DROP TABLE IF EXISTS "public"."students_courses_relation";
CREATE TABLE "public"."students_courses_relation" (
  "studentid" char(6) COLLATE "pg_catalog"."default" NOT NULL,
  "courseid" char(4) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of students_courses_relation
-- ----------------------------
INSERT INTO "public"."students_courses_relation" VALUES ('111111', '1112');
INSERT INTO "public"."students_courses_relation" VALUES ('111111', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111111', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111112', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111112', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111112', '1111');
INSERT INTO "public"."students_courses_relation" VALUES ('111113', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111113', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111113', '1114');
INSERT INTO "public"."students_courses_relation" VALUES ('111114', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111114', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111115', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111115', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111116', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111116', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111116', '1114');
INSERT INTO "public"."students_courses_relation" VALUES ('111110', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111110', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111110', '1114');
INSERT INTO "public"."students_courses_relation" VALUES ('111117', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111117', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111117', '1112');
INSERT INTO "public"."students_courses_relation" VALUES ('111119', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111119', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111119', '1112');
INSERT INTO "public"."students_courses_relation" VALUES ('111118', '1113');
INSERT INTO "public"."students_courses_relation" VALUES ('111118', '1115');
INSERT INTO "public"."students_courses_relation" VALUES ('111118', '1111');

-- ----------------------------
-- Table structure for temp_stu_sex
-- ----------------------------
DROP TABLE IF EXISTS "public"."temp_stu_sex";
CREATE TABLE "public"."temp_stu_sex" (
  "stu_id" char(16) COLLATE "pg_catalog"."default",
  "sex" char(2) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of temp_stu_sex
-- ----------------------------
INSERT INTO "public"."temp_stu_sex" VALUES ('111111          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111112          ', 'F ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111113          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111114          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111115          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111116          ', 'F ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111117          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111118          ', 'M ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111119          ', 'F ');
INSERT INTO "public"."temp_stu_sex" VALUES ('111110          ', 'M ');

-- ----------------------------
-- Primary Key structure for table college
-- ----------------------------
ALTER TABLE "public"."college" ADD CONSTRAINT "college_pkey" PRIMARY KEY ("college_name");

-- ----------------------------
-- Primary Key structure for table course
-- ----------------------------
ALTER TABLE "public"."course" ADD CONSTRAINT "course_pkey" PRIMARY KEY ("courseid");

-- ----------------------------
-- Primary Key structure for table course_section
-- ----------------------------
ALTER TABLE "public"."course_section" ADD CONSTRAINT "course_section_pkey" PRIMARY KEY ("section_name");

-- ----------------------------
-- Primary Key structure for table department
-- ----------------------------
ALTER TABLE "public"."department" ADD CONSTRAINT "department_pkey" PRIMARY KEY ("dept_name");

-- ----------------------------
-- Primary Key structure for table instructor
-- ----------------------------
ALTER TABLE "public"."instructor" ADD CONSTRAINT "instructor_pkey" PRIMARY KEY ("instructor_name");

-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "student_pkey" PRIMARY KEY ("studentid");

-- ----------------------------
-- Foreign Keys structure for table course
-- ----------------------------
ALTER TABLE "public"."course" ADD CONSTRAINT "course_instructor_name_fkey" FOREIGN KEY ("instructor_name") REFERENCES "public"."instructor" ("instructor_name") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table department
-- ----------------------------
ALTER TABLE "public"."department" ADD CONSTRAINT "department_college_name_fkey" FOREIGN KEY ("college_name") REFERENCES "public"."college" ("college_name") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table instructor
-- ----------------------------
ALTER TABLE "public"."instructor" ADD CONSTRAINT "instructor_dept_name_fkey" FOREIGN KEY ("dept_name") REFERENCES "public"."department" ("dept_name") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table student
-- ----------------------------
ALTER TABLE "public"."student" ADD CONSTRAINT "student_college_name_fkey" FOREIGN KEY ("college_name") REFERENCES "public"."college" ("college_name") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table students_courses_relation
-- ----------------------------
ALTER TABLE "public"."students_courses_relation" ADD CONSTRAINT "students_courses_relation_courseid_fkey" FOREIGN KEY ("courseid") REFERENCES "public"."course" ("courseid") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."students_courses_relation" ADD CONSTRAINT "students_courses_relation_studentid_fkey" FOREIGN KEY ("studentid") REFERENCES "public"."student" ("studentid") ON DELETE NO ACTION ON UPDATE NO ACTION;
