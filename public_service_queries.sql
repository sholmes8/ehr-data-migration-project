-- Average resolution time across all requests
SELECT AVG(resolution_days) AS avg_resolution_time
FROM public_service_requests;

-- Number of requests by department
SELECT department, COUNT(*) AS total_requests
FROM public_service_requests
GROUP BY department;

-- Delayed requests
SELECT *
FROM public_service_requests
WHERE status = 'Delayed';

-- Average resolution time by department
SELECT department, AVG(resolution_days) AS avg_days
FROM public_service_requests
GROUP BY department;

-- High priority requests
SELECT *
FROM public_service_requests
WHERE priority = 'High';
