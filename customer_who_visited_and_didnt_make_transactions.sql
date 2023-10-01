SELECT customer_id, COUNT(v.visit_id) as count_no_trans FROM visits as v 
LEFT JOIN transactions AS t ON v.visit_id = t.visit_id 
WHERE transaction_id IS NULL
GROUP BY customer_id