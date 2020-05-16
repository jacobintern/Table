-- Database export via SQLPro (https://www.sqlprostudio.com/allapps.html)
-- Exported by YIHONGLIN at 17-05-2020 01:36.
-- WARNING: This file may contain descructive statements such as DROPs.
-- Please ensure that you are running the script at the proper location.


-- BEGIN TABLE dbo.ez_acc
IF OBJECT_ID('dbo.ez_acc', 'U') IS NOT NULL
DROP TABLE dbo.ez_acc;
GO

CREATE TABLE dbo.ez_acc (
	auto_id int NOT NULL IDENTITY(1,1),
	emp_id nvarchar(10) NOT NULL,
	acc nvarchar(20) NOT NULL,
	pwd nvarchar(255) NOT NULL,
	is_system_m bit NOT NULL DEFAULT (0),
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_acc ADD CONSTRAINT PK_acc PRIMARY KEY (emp_id);
GO

-- Table dbo.ez_acc contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_acc


-- END TABLE dbo.ez_acc

-- BEGIN TABLE dbo.ez_acc_log
IF OBJECT_ID('dbo.ez_acc_log', 'U') IS NOT NULL
DROP TABLE dbo.ez_acc_log;
GO

CREATE TABLE dbo.ez_acc_log (
	auto_id int NOT NULL IDENTITY(1,1),
	acc nvarchar(10) NOT NULL,
	login_time datetime NULL,
	logout_time datetime NULL,
	error_id nvarchar(10) NULL,
	msg nvarchar(255) NULL,
	create_time datetime NOT NULL
);
GO

ALTER TABLE dbo.ez_acc_log ADD CONSTRAINT PK_acc_log PRIMARY KEY (auto_id);
GO

-- Table dbo.ez_acc_log contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_acc_log


-- END TABLE dbo.ez_acc_log

-- BEGIN TABLE dbo.ez_action
IF OBJECT_ID('dbo.ez_action', 'U') IS NOT NULL
DROP TABLE dbo.ez_action;
GO

CREATE TABLE dbo.ez_action (
	auto_id int NOT NULL IDENTITY(1,1),
	action_id nvarchar(10) NOT NULL,
	name nvarchar(20) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_action ADD CONSTRAINT PK_action PRIMARY KEY (action_id);
GO

-- Table dbo.ez_action contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_action


-- END TABLE dbo.ez_action

-- BEGIN TABLE dbo.ez_dept
IF OBJECT_ID('dbo.ez_dept', 'U') IS NOT NULL
DROP TABLE dbo.ez_dept;
GO

CREATE TABLE dbo.ez_dept (
	auto_id int NOT NULL IDENTITY(1,1),
	dept_id nvarchar(5) NOT NULL,
	name nvarchar(20) NOT NULL,
	dept_level int NOT NULL,
	dept_org nvarchar(5) NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_dept ADD CONSTRAINT PK_dept PRIMARY KEY (dept_id);
GO

-- Table dbo.ez_dept contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_dept


-- END TABLE dbo.ez_dept

-- BEGIN TABLE dbo.ez_emp
IF OBJECT_ID('dbo.ez_emp', 'U') IS NOT NULL
DROP TABLE dbo.ez_emp;
GO

CREATE TABLE dbo.ez_emp (
	auto_id int NOT NULL IDENTITY(1,1),
	emp_id nvarchar(10) NOT NULL,
	dept_id nvarchar(5) NOT NULL,
	position_id nvarchar(5) NOT NULL,
	first_name nvarchar(10) NOT NULL,
	last_name nvarchar(20) NOT NULL,
	address nvarchar(255) NULL,
	email nvarchar(50) NULL,
	tel_h nvarchar(10) NULL,
	tel_o nvarchar(10) NULL,
	tel_ext nvarchar(10) NULL,
	tel_fax nvarchar(10) NULL,
	phone nvarchar(10) NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_emp ADD CONSTRAINT PK_emp PRIMARY KEY (emp_id);
GO

-- Table dbo.ez_emp contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_emp


-- END TABLE dbo.ez_emp

-- BEGIN TABLE dbo.ez_emp_role
IF OBJECT_ID('dbo.ez_emp_role', 'U') IS NOT NULL
DROP TABLE dbo.ez_emp_role;
GO

CREATE TABLE dbo.ez_emp_role (
	auto_id int NOT NULL IDENTITY(1,1),
	emp_id nvarchar(10) NOT NULL,
	role_id nvarchar(5) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_emp_role ADD CONSTRAINT PK_emp_role PRIMARY KEY (emp_id, role_id);
GO

-- Table dbo.ez_emp_role contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_emp_role


-- END TABLE dbo.ez_emp_role

-- BEGIN TABLE dbo.ez_permission
IF OBJECT_ID('dbo.ez_permission', 'U') IS NOT NULL
DROP TABLE dbo.ez_permission;
GO

CREATE TABLE dbo.ez_permission (
	auto_id int NOT NULL IDENTITY(1,1),
	permission_id nvarchar(10) NOT NULL,
	name nvarchar(20) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_permission ADD CONSTRAINT PK_permission PRIMARY KEY (permission_id);
GO

-- Table dbo.ez_permission contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_permission


-- END TABLE dbo.ez_permission

-- BEGIN TABLE dbo.ez_position
IF OBJECT_ID('dbo.ez_position', 'U') IS NOT NULL
DROP TABLE dbo.ez_position;
GO

CREATE TABLE dbo.ez_position (
	auto_id int NOT NULL IDENTITY(1,1),
	position_id nvarchar(5) NOT NULL,
	name nvarchar(20) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_position ADD CONSTRAINT PK_position PRIMARY KEY (position_id);
GO

-- Table dbo.ez_position contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_position


-- END TABLE dbo.ez_position

-- BEGIN TABLE dbo.ez_role
IF OBJECT_ID('dbo.ez_role', 'U') IS NOT NULL
DROP TABLE dbo.ez_role;
GO

CREATE TABLE dbo.ez_role (
	auto_id int NOT NULL IDENTITY(1,1),
	role_id nvarchar(5) NOT NULL,
	name nvarchar(20) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_role ADD CONSTRAINT PK_role PRIMARY KEY (role_id);
GO

-- Table dbo.ez_role contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_role


-- END TABLE dbo.ez_role

-- BEGIN TABLE dbo.ez_role_permission
IF OBJECT_ID('dbo.ez_role_permission', 'U') IS NOT NULL
DROP TABLE dbo.ez_role_permission;
GO

CREATE TABLE dbo.ez_role_permission (
	auto_id int NOT NULL IDENTITY(1,1),
	role_id nvarchar(5) NOT NULL,
	permission_id nvarchar(10) NOT NULL,
	create_by nvarchar(10) NOT NULL,
	create_time datetime NOT NULL,
	edit_by nvarchar(10) NULL,
	edit_time datetime NULL
);
GO

ALTER TABLE dbo.ez_role_permission ADD CONSTRAINT PK_role_permission PRIMARY KEY (role_id, permission_id);
GO

-- Table dbo.ez_role_permission contains no data. No inserts have been genrated.
-- Inserting 0 rows into dbo.ez_role_permission


-- END TABLE dbo.ez_role_permission

IF OBJECT_ID('dbo.ez_acc_log', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_acc', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_acc_log
	ADD CONSTRAINT FK_log_acc
	FOREIGN KEY (acc)
	REFERENCES dbo.ez_acc (emp_id);

IF OBJECT_ID('dbo.ez_emp', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_position', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_emp
	ADD CONSTRAINT FK_emp_position
	FOREIGN KEY (position_id)
	REFERENCES dbo.ez_position (position_id);

IF OBJECT_ID('dbo.ez_emp', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_dept', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_emp
	ADD CONSTRAINT FK_emp_dept
	FOREIGN KEY (dept_id)
	REFERENCES dbo.ez_dept (dept_id);

IF OBJECT_ID('dbo.ez_emp_role', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_role', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_emp_role
	ADD CONSTRAINT FK_er_role
	FOREIGN KEY (role_id)
	REFERENCES dbo.ez_role (role_id);

IF OBJECT_ID('dbo.ez_emp_role', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_emp', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_emp_role
	ADD CONSTRAINT FK_er_emp
	FOREIGN KEY (emp_id)
	REFERENCES dbo.ez_emp (emp_id);

IF OBJECT_ID('dbo.ez_role_permission', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_role', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_role_permission
	ADD CONSTRAINT FK_rp_role
	FOREIGN KEY (role_id)
	REFERENCES dbo.ez_role (role_id);

IF OBJECT_ID('dbo.ez_role_permission', 'U') IS NOT NULL AND OBJECT_ID('dbo.ez_permission', 'U') IS NOT NULL
	ALTER TABLE dbo.ez_role_permission
	ADD CONSTRAINT FK_rp_permission
	FOREIGN KEY (permission_id)
	REFERENCES dbo.ez_permission (permission_id);

