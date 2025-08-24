SELECT
    id,
    gender,
    age,
    hypertension,
    heart_disease,
    ever_married,
    work_type,
    residence_type,
    avg_glucose_level,
    bmi,
    smoking_status,
    stroke
FROM
    patient_records
WHERE
    gender != 'Other' AND bmi != 'N/A';