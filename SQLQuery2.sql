SELECT 
  ((CASE WHEN cc_type IS NULL or cc_type = '' THEN 1 ELSE 0 END)
  + (CASE WHEN cc_account_num IS NULL or cc_account_num= '' THEN 1 ELSE 0 END)
  + (CASE WHEN cc_expire_date IS NULL or cc_expire_date = '' THEN 1 ELSE 0 END))
  AS sumofnulls
  FROM Users
  Where Id=112
