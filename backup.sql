-- H2 2.1.214;
;             
CREATE USER IF NOT EXISTS "SA" SALT '754d6112299b3157' HASH '8704c51ee7f2420c163b00743ee8ae6d70e6cd766bee2ddea1179d0c15434338' ADMIN;         
CREATE CACHED TABLE "PUBLIC"."USERS"(
    "ID" CHARACTER VARYING(20) NOT NULL,
    "PASSWORD" CHARACTER VARYING(30),
    "NAME" CHARACTER VARYING(30),
    "PHONE_NUMBER" CHARACTER VARYING(20),
    "MAIL_ADDRESS" CHARACTER VARYING(254),
    "ROLE" CHARACTER(1),
    "NUM_TICKET" CHARACTER(3)
); 
ALTER TABLE "PUBLIC"."USERS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_4" PRIMARY KEY("ID");        
-- 7 +/- SELECT COUNT(*) FROM PUBLIC.USERS;   
INSERT INTO "PUBLIC"."USERS" VALUES
('KAZU', 'Kazu12to22', U&'\5c71\fa11\58f1\4eba', '080-8692-1830', 'shanyiren0@gmail.com', '1', '10 '),
('admin1', 'password', U&'\5927\539f\82b1\5b50', '080-8692-1830', 'shanyiren0@gmail.com', '2', '27 '),
('admin2', 'password2', U&'\5927\539f\3058\308d\3046', '080-8692-1830', 'shanyiren0@gmail.com', '3', '5  '),
('admin3', 'password3', U&'\5927\539f\5148\751f', '080-8692-1830', 'shanyiren0@gmail.com', '3', '5  '),
('admin4', 'password4', U&'\5927\539fMan', '080-8692-1830', 'shanyiren0@gmail.com', '4', '30 '),
('admin5', 'password5', U&'\751f\5f92Man', '080-8692-1830', 'shanyiren0@gmail.com', '4', '105'),
('admin0', 'password0', U&'\65b0\7ba1\7406\3000\4eba\9593', '08086921830', 'yamazakikazuto6@gmail.com', '2', '0  ');          
CREATE CACHED TABLE "PUBLIC"."RESERVE"(
    "LESSON_ID" CHARACTER VARYING(30) NOT NULL,
    "USER_ID" CHARACTER VARYING(20) NOT NULL,
    "MEMO" CHARACTER VARYING(100)
);
ALTER TABLE "PUBLIC"."RESERVE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_6" PRIMARY KEY("LESSON_ID", "USER_ID");    
-- 22 +/- SELECT COUNT(*) FROM PUBLIC.RESERVE;
INSERT INTO "PUBLIC"."RESERVE" VALUES
('ati', 'admin5', 'cawe'),
('gaa', 'admin5', 'fwe'),
('5q2', 'admin5', 'bxedwr'),
('hty', 'admin4', 'xe3c3rc'),
('KNY', 'admin4', 'vct42'),
('8ln', 'admin4', 'yb5'),
('VuH', 'admin4', 'vt4b'),
('dl4', 'admin4', U&'\3067\ff57\ff44'),
('gzl', 'admin4', ''),
('avf', 'admin4', ''),
('ooo', 'admin4', U&'4\4ef6\76ee'),
('uuu', 'admin4', U&'\ff11'),
('oOf', 'admin4', ''),
('5q2', 'admin4', ''),
('gaa', 'admin4', U&'\ff13'),
('ati', 'admin4', ''),
('hty', 'admin5', ''),
('oOf', 'admin5', 'c'),
('ooo', 'admin5', ''),
('VuH', 'admin5', ''),
('gzl', 'admin5', ''),
('KNY', 'admin5', '');            
CREATE CACHED TABLE "PUBLIC"."SCHEDULE"(
    "LESSON_ID" CHARACTER VARYING(30) NOT NULL,
    "TEACHER_ID" CHARACTER VARYING(20) NOT NULL,
    "CLASS_ID" CHARACTER(3) NOT NULL,
    "LESSON_DAY" CHARACTER VARYING(20) NOT NULL,
    "LESSON_START" CHARACTER VARYING(10) NOT NULL,
    "LESSON_END" CHARACTER VARYING(10) NOT NULL,
    "MEMO" CHARACTER VARYING(100)
);             
ALTER TABLE "PUBLIC"."SCHEDULE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_5" PRIMARY KEY("LESSON_ID");              
-- 38 +/- SELECT COUNT(*) FROM PUBLIC.SCHEDULE;               
INSERT INTO "PUBLIC"."SCHEDULE" VALUES
('aaa', 'admin2', 'A01', '2026-06-29', U&'10\664200\5206', U&'13\664200\5206', U&'\6691\3044\306e\3067\98f2\307f\7269\3044\3063\3071\3044\6301\3063\3066\304d\3066\306d\30fc'),
('hty', 'admin2', 'A01', '2026-07-07', U&'10\664200\5206', U&'13\664200\5206', U&'\7ba1\7406\8005\304c\516c\958b\3057\305f\304c\4e88\7d04\306a\3057'),
('ooo', 'admin3', 'C03', '2026-06-18', U&'08\664207\5206', U&'10\664212\5206', ''),
('gaa', 'admin3', 'C01', '2026-07-07', U&'08\664207\5206', U&'10\664212\5206', U&'\4e88\7d04\3057\3066\30fc\30fc\30fc'),
('avf', 'admin2', 'A01', '2026-06-29', U&'12\664200\5206', U&'13\664200\5206', 'bt4bs'),
('uuu', 'admin3', 'A01', '2026-06-08', U&'08\664207\5206', U&'10\664212\5206', ''),
('8ln', 'admin2', 'C01', '2026-06-01', U&'12\664200\5206', U&'13\664200\5206', U&'\30ec\30c3\30b9\30f3\4f5c\6210/\516c\958b\6210\529f'),
('dl4', 'admin2', 'B01', '2026-06-10', U&'10\664200\5206', U&'13\664200\5206', ''),
('vyu', 'admin3', 'A01', '2026-06-28', U&'08\664207\5206', U&'10\664212\5206', U&'1\56de\306e\30ec\30c3\30b9\30f3\767b\9332\306e1\4ef6\76ee'),
('gzl', 'admin2', 'B01', '2026-06-28', U&'10\664200\5206', U&'13\664200\5206', U&'1\56de\306e\30ec\30c3\30b9\30f3\767b\9332\306e2\4ef6\76ee'),
('ati', 'admin2', 'A01', '2026-07-23', U&'10\664200\5206', U&'13\664200\5206', ''),
('5q2', 'admin2', 'A01', '2026-07-08', U&'10\664200\5206', U&'13\664200\5206', ''),
('VuH', 'admin2', 'A01', '2026-06-14', U&'10\664200\5206', U&'13\664200\5206', ''),
('KNY', 'admin2', 'A01', '2026-06-16', U&'10\664200\5206', U&'13\664200\5206', ''),
('oOf', 'admin3', 'A01', '2026-06-30', U&'08\664207\5206', U&'10\664212\5206', ''),
('HS3', 'admin2', 'A01', '2026-08-01', U&'10\664200\5206', U&'13\664200\5206', ''),
('pdG', 'admin2', 'A01', '2026-08-02', U&'10\664200\5206', U&'13\664200\5206', ''),
('tJ5', 'admin2', 'A01', '2026-08-03', U&'10\664200\5206', U&'13\664200\5206', ''),
('7Ey', 'admin2', 'A01', '2026-08-26', U&'10\664200\5206', U&'13\664200\5206', ''),
('0MY', 'admin3', 'C01', '', U&'08\664207\5206', U&'10\664212\5206', ''),
('ryT', 'admin2', 'A01', '', U&'10\664200\5206', U&'13\664200\5206', ''),
('HFo', 'admin2', 'C01', '2026-06-09', U&'10\664200\5206', U&'13\664200\5206', ''),
('2fq', 'admin2', 'A01', '2026-06-22', U&'10\664200\5206', U&'13\664200\5206', ''),
('Yjc', 'admin2', 'C01', '2026-06-25', U&'10\664200\5206', U&'13\664200\5206', ''),
('UTT', 'admin3', 'C03', '2026-06-07', U&'08\664207\5206', U&'10\664212\5206', ''),
('HWL', 'admin2', 'A01', '2026-06-19', U&'08\664200\5206', U&'22\664200\5206', ''),
('ONb', 'admin2', 'C03', '2026-06-29', U&'01\664201\5206', U&'01\664201\5206', ''),
('GvM', 'admin2', 'A01', '2026-07-02', U&'08\664200\5206', U&'19\664200\5206', ''),
('4vP', 'admin2', 'A01', '2026-07-02', U&'08\664200\5206', U&'19\664200\5206', ''),
('ySu', 'admin2', 'A01', '2026-07-02', U&'08\664200\5206', U&'19\664200\5206', ''),
('9Lh', 'admin3', 'A01', '2026-06-29', U&'01\664201\5206', U&'01\664201\5206', ''),
('8sB', 'admin3', 'A01', '2026-07-03', U&'10\664200\5206', U&'12\664200\5206', ''),
('ysO', 'admin3', 'C03', '2026-07-03', U&'07\664200\5206', U&'17\664200\5206', ''),
('h7W', 'admin2', 'A01', '2026-06-08', U&'01\664201\5206', U&'01\664201\5206', ''),
('s8d', 'admin2', 'A01', '2026-06-10', U&'01\664201\5206', U&'01\664201\5206', ''),
('F9l', 'admin2', 'C01', '2026-06-02', U&'02\664202\5206', U&'02\664202\5206', ''),
('3em', 'admin3', 'C01', '2026-06-02', U&'01\664201\5206', U&'01\664201\5206', ''),
('8JP', 'admin2', 'A01', '2026-07-06', U&'10\664200\5206', U&'21\664200\5206', 'crce');      
CREATE CACHED TABLE "PUBLIC"."TEACHERDAY"(
    "TEACHER_ID" CHARACTER(20) NOT NULL,
    "USER_ID" CHARACTER VARYING(20) NOT NULL,
    "LESSON_DAY" CHARACTER VARYING(10) NOT NULL,
    "LESSON_START" CHARACTER VARYING(10) NOT NULL,
    "LESSON_END" CHARACTER VARYING(10) NOT NULL,
    "MEMO" CHARACTER VARYING(100)
);            
ALTER TABLE "PUBLIC"."TEACHERDAY" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D" PRIMARY KEY("TEACHER_ID");           
-- 30 +/- SELECT COUNT(*) FROM PUBLIC.TEACHERDAY;             
INSERT INTO "PUBLIC"."TEACHERDAY" VALUES
('orrroqqqqqorrroqqqqq', 'admin2', '2026-06-29', U&'10\664200\5206', U&'17\664200\5206', ''),
('adseddastgadseddastg', 'admin3', '2026-07-03', U&'7\664200\5206', U&'21\664200\5206', U&'\663c\306e11\6642\304b\308913\6642\3060\3051\7121\7406'),
('dfweadfweadfweadfwea', 'admin2', '2026-06-08', U&'12\664200\5206', U&'18\664200\5206', ''),
('tdrtgbddertdrtgbdder', 'admin3', '2026-07-11', U&'11\664200\5206', U&'16\664200\5206', ''),
('B1KBin4sQe          ', 'admin3', '2026-06-30', U&'10\664230\5206', U&'19\664200\5206', U&'12\6642\304b\308913\6642\3060\3051\306a\3057\3067'),
('qiKWd3FX32          ', 'admin3', '2026-06-22', U&'12\664200\5206', U&'17\664200\5206', 'rh'),
('Rri3fFydnB          ', 'admin2', '2026-06-19', U&'8\66420\5206', U&'22\66420\5206', 'sq'),
('VN17U1sB2X          ', 'admin2', '2026-07-23', U&'8\66420\5206', U&'22\66420\5206', ''),
('uaX5phlHAk          ', 'admin2', '2026-08-26', U&'8\66420\5206', U&'22\66420\5206', ''),
('yXSINecLug          ', 'admin2', '2026-06-22', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('wwxQd2Z5HT          ', 'admin2', '2026-07-06', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('wlBh2uJZUh          ', 'admin2', '2026-07-07', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('kf2tUADKV7          ', 'admin2', '2026-07-08', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('iqmqffMt2t          ', 'admin2', '2026-08-01', U&'08\664200\5206', U&'21\664200\5206', U&'\3091\30c0\30a6hv\3046r\30f4\3049\30ec\30a2q\ff13\3093\3075\3047\3075\3047\ff52\ff46\3052\ff53\ff47\ff46\ff43\3052\ff52\ff47\3093\ff46\308c\ff53\ff43\304e\3047\ff43\ff53\3052\ff52\ff53\3052\ff53\ff52\3052\ff52\ff54\ff53\ff47\3093\305b\3093\304e\3048\ff53\ff4c\3052\3046\ff53\304e\ff59\ff56\3052\ff52\3079\3048\ff43\305b\305f\3042\ff51\ff5a\ff53\ff58\ff44\ff43\ff46\ff52\ff56\ff47\ff42\ff54\ff48\ff59\306c\ff4a\ff4d\304d\3001\304a\ff4c\3002\3001\ff4b\ff4d\ff4a\3093\ff48\ff42\ff47\ff54'),
('60LSveVjNe          ', 'admin2', '2026-08-02', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('H0Cb11ri58          ', 'admin2', '2026-08-03', U&'08\664200\5206', U&'21\664200\5206', U&'\4e00\62ec'),
('gZvU7sydW0          ', 'admin2', '2026-06-10', U&'08\664200\5206', U&'21\664200\5206', U&'\ff59\ff10\304a'),
('orrroqqfvqorrroqqqqq', 'admin2', '2026-07-07', U&'10\664200\5206', U&'17\664200\5206', ''),
('orrroqqqyugrrroqqqqq', 'admin3', '2026-07-07', U&'15\664200\5206', U&'19\664200\5206', ''),
('vX5WJ8CXZs          ', 'admin3', '2026-08-01', U&'08\664200\5206', U&'21\664200\5206', ''),
('7HXDXqrGEH          ', 'admin3', '2026-08-02', U&'08\664200\5206', U&'21\664200\5206', ''),
('Zb7mVSiZgj          ', 'admin2', '2026-06-01', U&'08\664200\5206', U&'21\664200\5206', U&'DW\3069\3047FF\30ecF\30ecV\308cVRV\80ccRX\3075\3047RFW\3075\3047\3075\3047C\3075\3047RFCWF\6bdbCF\3052\308fGFY\3091GFCKGCFKGY\6bdbYC\3052\3046\3043FG\6c0f\6c5fWGFLCW\82b8\98df\3044LGF\80ccLWCG\3075\3047LGF\676dLFGC\3091GFC\3047WGFC\3047'),
('Xh7H81erpA          ', 'admin2', '2026-06-28', U&'12\664230\5206', U&'19\664230\5206', '30'),
('NKCGQZOp4n          ', 'admin3', '2026-06-07', U&'6\66427\5206', U&'12\664212\5206', ''),
('s8gAZYKn9f          ', 'admin2', '2026-06-16', U&'8\66420\5206', U&'21\66420\5206', ''),
('vT46ELnsKe          ', 'admin2', '2026-06-14', U&'8\66420\5206', U&'21\66420\5206', ''),
('HZM06qLOzP          ', 'admin2', '2026-06-25', U&'8\66420\5206', U&'21\66420\5206', ''),
('BdscLmMTzH          ', 'admin2', '2026-07-02', U&'08\664200\5206', U&'19\664200\5206', U&'\4e00\62ec'),
('vFRMJbEPyk          ', 'admin2', '2026-06-09', U&'8\66420\5206', U&'21\66420\5206', U&'\ff53\30f4\3047'),
('cgTg6Q970j          ', 'admin2', '2026-06-07', U&'8\66420\5206', U&'21\66420\5206', '');    
CREATE CACHED TABLE "PUBLIC"."ROLE"(
    "ROLE" CHARACTER(1) NOT NULL,
    "ROLE_NAME" CHARACTER VARYING(50)
);            
ALTER TABLE "PUBLIC"."ROLE" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_2" PRIMARY KEY("ROLE");       
-- 4 +/- SELECT COUNT(*) FROM PUBLIC.ROLE;    
INSERT INTO "PUBLIC"."ROLE" VALUES
('1', U&'\958b\767a\8005'),
('2', U&'\30b7\30b9\30c6\30e0\7ba1\7406\8005'),
('3', U&'\5148\751f'),
('4', U&'\751f\5f92');              
CREATE CACHED TABLE "PUBLIC"."DANCE_CLASS"(
    "CLASS_ID" CHARACTER(3) NOT NULL,
    "CLASS_NAME" CHARACTER VARYING(30) NOT NULL
);       
ALTER TABLE "PUBLIC"."DANCE_CLASS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D8" PRIMARY KEY("CLASS_ID");           
-- 5 +/- SELECT COUNT(*) FROM PUBLIC.DANCE_CLASS;             
INSERT INTO "PUBLIC"."DANCE_CLASS" VALUES
('A01', 'kpop'),
('B01', 'HipHop'),
('C01', U&'\30ed\30c3\30af'),
('A02', 'jpop'),
('C03', U&'\30ed\30dc\30c3\30c8\30c0\30f3\30b9');           
CREATE CACHED TABLE "PUBLIC"."SYSTEM_STATUS"(
    "STATUS_KEY" CHARACTER VARYING(50) NOT NULL,
    "STATUS_VALUE" CHARACTER VARYING(50)
); 
ALTER TABLE "PUBLIC"."SYSTEM_STATUS" ADD CONSTRAINT "PUBLIC"."CONSTRAINT_D87" PRIMARY KEY("STATUS_KEY");      
-- 1 +/- SELECT COUNT(*) FROM PUBLIC.SYSTEM_STATUS;           
INSERT INTO "PUBLIC"."SYSTEM_STATUS" VALUES
('last_delete_month', '2026-05');
