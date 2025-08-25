-- creating a new database --
CREATE database singular;

-- viewing tables available --
SELECT *
FROM patient_information;

SELECT *
FROM diagnosis_information;

-- selecting patients with cancer in desc --
SELECT patient_id, diagnosis, treatment_cost
FROM diagnosis_information
WHERE diagnosis = 'cancer'
ORDER BY treatment_cost DESC;

-- count of diagnosis per department --
SELECT department, COUNT(*) AS count_of_diagnosis
FROM diagnosis_information
GROUP BY department;

-- departments where avg_treatment_cost > 3000 --
SELECT department, AVG(treatment_cost) AS avg_cost
FROM diagnosis_information
GROUP BY department 
HAVING avg_cost > 3000;

-- patients with 3+ diagnoses --
SELECT patient_id, COUNT(*) AS diagnosis_count
FROM diagnosis_information
GROUP BY patient_id
HAVING COUNT(*) > 3;

-- patient id's in neurology department --
SELECT DISTINCT p.patient_id, p.first_name, p.last_name, d.department
FROM patient_information p
JOIN diagnosis_information d ON p.patient_id = d.patient_id WHERE d.department = 'Neurology';

-- categorizing cost using case --
SELECT diagnosis_id, patient_id, treatment_cost,
  CASE 
    WHEN treatment_cost < 1000 THEN 'Low'
    WHEN treatment_cost BETWEEN 1000 AND 3000 THEN 'Medium'
    ELSE 'High'
  END AS cost_category
FROM diagnosis_information;

-- patients and their most recent diagnosis --
SELECT p.first_name, p.last_name, d.diagnosis, d.diagnosis_date
FROM patient_information AS p
JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
WHERE d.diagnosis_date = (SELECT MAX(d2.diagnosis_date) FROM diagnosis_information AS d2 WHERE d2.patient_id = p.patient_id);

-- avg cost per severity level --
SELECT severity, ROUND(AVG(treatment_cost),2) AS avg_treatment_cost
FROM diagnosis_information
GROUP BY severity;

-- list of patients in a new column showing how many times they've been diagnosed --
SELECT p.patient_id, p.first_name, p.last_name, COUNT(d.diagnosis_id) AS d_count
FROM patient_information AS p
LEFT JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name;

-- all patients with no diagnosis --
SELECT p.patient_id, p.first_name, p.last_name
FROM patient_information AS p
LEFT JOIN diagnosis_information AS d ON p.patient_id = d.patient_id
WHERE d.diagnosis_id IS NULL;