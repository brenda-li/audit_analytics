SELECT
  account_number,
  SUM(transaction_amount)
FROM cas_dw.general_ledger
WHERE accounting_period >= '2021-01' AND accounting_period <= '2021-12'
AND business_unit_id = 12;
