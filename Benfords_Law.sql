-- Benford's Law: Law of Anomalous Numbers (First-Digit Law)
-- Numeral 1 will be the leading digit in a genuine data set of numbers 30.1% of the time.
-- Numeral 2 will be the leading digit 17.6% of the time.
-- Each subsequent numeral, 3 through 9, will be the leading digit with decreasing frequency.

SELECT
  first_digit,
  COUNT(first_digit) AS COUNT
FROM
  (SELECT
    LEFT(STR(transaction_amount), 1) AS first_digit
  FROM general_ledger
  WHERE transaction_type = 'Expense')
GROUP BY first_digit;
