-- Passwords
SELECT
  name,
  is_policy_checked,
  is_expiration_checked,
  is_disabled
FROM sys.sql_logins;

SELECT * FROM sys.database_role_members;

SELECT * FROM sys.database_principals;
