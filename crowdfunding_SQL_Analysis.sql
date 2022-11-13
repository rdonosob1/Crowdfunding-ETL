SELECT (c.cf_id), c.backers_count
FROM campaign as c
WHERE outcome = 'live'
ORDER BY backers_count DESC;


SELECT (b.cf_id), COUNT (b.backer_id) as "total backers"
FROM backers as b
GROUP BY cf_id
ORDER BY "total backers" DESC;

SELECT co.first_name,
co.last_name,
co.email,
(c.goal-c.pledged) as "remining goal amount"
INTO email_contacts_remaining_goal_amount
FROM contacts as co
INNER JOIN campaign as c
ON c.contact_id = co.contact_id
WHERE c.outcome = 'live'
ORDER BY "remining goal amount" DESC;

SELECT * FROM email_contacts_remaining_goal_amount

SELECT b.email,
b.first_name,
b.last_name,
b.cf_id,
c.company_name,
c.description,
c.end_date,
(c.goal-c.pledged) as "Left of Goal"
INTO email_backers_remaining_goal_amount
FROM backers as b
LEFT JOIN campaign as c
ON c.cf_id = b.cf_id
WHERE c.outcome = 'live'
ORDER BY b.last_name ASC, email;

SELECT * FROM email_backers_remaining_goal_amount