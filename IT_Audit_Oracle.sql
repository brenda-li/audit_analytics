-- Version
SELECT *
FROM V$VERSION;

SELECT *
FROM product_component_version;

-- Role Listing
SELECT * FROM dba_roles;

-- User-Role Listing
SELECT * FROM dba_role_privs;

-- System-Level Privileges
SELECT * FROM dba_sys_privs;

-- Table-Level Privileges
SELECT * FROM dba_tab_privs;

-- SYSDBA or SYSOPER
SELECT * FROM V$PWFILE_USERS;
-- User Listing
SELECT *
FROM dba_users;

-- Default Password
SELECT * FROM dba_users_with_defpwd;

-- Password Settings
SELECT *
FROM dba_profiles
WHERE resource_type = 'PASSWORD'
ORDER BY PROFILE;

-- Server Authentication
SELECT *
FROM V$PARAMETER
WHERE name = 'os_authent_prefix'

-- Logging
SELECT * FROM SYS.AUD$
