use db_database1;
-- 1. Create the Claims Table
CREATE TABLE medical_claims (
    claim_id VARCHAR(20) PRIMARY KEY,
    patient_id VARCHAR(20),
    provider_id VARCHAR(20),
    date_of_service DATE,
    submission_date DATE,
    claim_amount DECIMAL(10, 2),
    status VARCHAR(20), -- 'Paid', 'Rejected', 'Pending'
    rejection_reason VARCHAR(50) -- NULL if Paid, contains reason if Rejected
);

-- 2. Insert Mock Data
INSERT INTO medical_claims (claim_id, patient_id, provider_id, date_of_service, submission_date, claim_amount, status, rejection_reason)
VALUES 
    -- Clean, paid claims
    ('CLM001', 'PAT100', 'PRV01', '2023-10-01', '2023-10-05', 250.00, 'Paid', NULL),
    ('CLM002', 'PAT101', 'PRV02', '2023-10-02', '2023-10-06', 1500.00, 'Paid', NULL),
    
    -- Rejected: Missing Information
    ('CLM003', 'PAT102', 'PRV01', '2023-10-03', '2023-10-07', 450.00, 'Rejected', 'Missing Patient Info'),
    ('CLM004', 'PAT103', 'PRV03', '2023-10-03', '2023-10-08', 320.00, 'Rejected', 'Invalid Diagnosis Code'),
    ('CLM005', 'PAT104', 'PRV01', '2023-10-04', '2023-10-09', 450.00, 'Rejected', 'Missing Patient Info'),

    -- Duplicate Claim Scenario 1 (Same patient, provider, date, and amount submitted 3 times)
    ('CLM006', 'PAT105', 'PRV02', '2023-10-10', '2023-10-11', 800.00, 'Paid', NULL),
    ('CLM007', 'PAT105', 'PRV02', '2023-10-10', '2023-10-15', 800.00, 'Rejected', 'Duplicate Claim'),
    ('CLM008', 'PAT105', 'PRV02', '2023-10-10', '2023-10-20', 800.00, 'Rejected', 'Duplicate Claim'),

    -- Duplicate Claim Scenario 2 (Sneaky duplicate: Not flagged as duplicate yet, but data matches exactly)
    ('CLM009', 'PAT106', 'PRV03', '2023-10-12', '2023-10-13', 1200.00, 'Pending', NULL),
    ('CLM010', 'PAT106', 'PRV03', '2023-10-12', '2023-10-14', 1200.00, 'Pending', NULL),

    -- Rejected: Out of Network
    ('CLM011', 'PAT107', 'PRV04', '2023-10-15', '2023-10-16', 2500.00, 'Rejected', 'Out of Network Provider');
    
    
    -- Detecting " Duplicates using Window Functions
    SELECT * FROM (
    SELECT 
        claim_id,
        patient_id,
        provider_id,
        date_of_service,
        claim_amount,
        status,
        -- Window function flags the 1st, 2nd, 3rd time the exact same claim appears
        ROW_NUMBER() OVER(
            PARTITION BY patient_id, provider_id, date_of_service, claim_amount 
            ORDER BY claim_id
        ) AS submission_attempt
    FROM medical_claims
) AS claim_tracker
WHERE submission_attempt > 1; -- Show me only the duplicates


-- Total Revenue Leakage Dashboard
WITH RealRevenueLeakage AS (
    -- Get only rejected claims that represent actual lost money
    SELECT 
        rejection_reason,
        claim_amount
    FROM medical_claims
    WHERE status = 'Rejected' 
      AND rejection_reason != 'Duplicate Claim' 
)
-- Aggregate the financial impact directly from that single CTE
SELECT 
    rejection_reason AS "Rejection Category",
    COUNT(*) AS "Total Claims Affected",
    SUM(claim_amount) AS "Potential Revenue Leaked ($)"
FROM RealRevenueLeakage
GROUP BY rejection_reason
ORDER BY SUM(claim_amount) DESC;





