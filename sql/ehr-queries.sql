-- Total appointments
SELECT COUNT(*) AS total_appointments
FROM appointments;

-- Appointments per provider
SELECT provider, COUNT(*) AS total_appointments
FROM appointments
GROUP BY provider
ORDER BY total_appointments DESC;

-- Appointment status distribution
SELECT status, COUNT(*) AS total_status
FROM appointments
GROUP BY status
ORDER BY total_status DESC;

-- Visits per department
SELECT department, COUNT(*) AS total_visits
FROM appointments
GROUP BY department
ORDER BY total_visits DESC;

-- Appointment trends over time
SELECT appointment_date, COUNT(*) AS total_appointments
FROM appointments
GROUP BY appointment_date
ORDER BY appointment_date;

-- No-show appointments
SELECT *
FROM appointments
WHERE status = 'No Show';

-- Cancelled appointments
SELECT *
FROM appointments
WHERE status = 'Cancelled';

-- Completed appointments
SELECT *
FROM appointments
WHERE status = 'Completed';

-- Follow-up visits
SELECT *
FROM appointments
WHERE visit_type = 'Follow-up';

-- Provider workload by visit type
SELECT provider, visit_type, COUNT(*) AS total_visits
FROM appointments
GROUP BY provider, visit_type
ORDER BY provider, total_visits DESC;
