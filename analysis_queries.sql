-- Total tickets
SELECT COUNT(*) FROM tickets;

-- Average response time
SELECT 
ROUND(AVG(TIMESTAMPDIFF(MINUTE, created_at, first_response_at))/60,2)
AS avg_response_hours
FROM tickets;

-- SLA violations
SELECT 
t.ticket_id,
c.category_name,
c.sla_hours,
TIMESTAMPDIFF(HOUR, t.created_at, t.first_response_at) AS response_time
FROM tickets t
JOIN categories c ON t.category_id = c.category_id
WHERE TIMESTAMPDIFF(HOUR, t.created_at, t.first_response_at) > c.sla_hours;

-- Agent performance
SELECT 
a.agent_name,
COUNT(t.ticket_id) AS total_tickets
FROM tickets t
JOIN agents a ON t.agent_id = a.agent_id
GROUP BY a.agent_name;

-- Tickets by category
SELECT 
c.category_name,
COUNT(*) AS total_tickets
FROM tickets t
JOIN categories c ON t.category_id = c.category_id
GROUP BY c.category_name;