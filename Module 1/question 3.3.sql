-- Create a stage named "test_stage" in the "public" schema of the "test_ingestion" database
CREATE OR REPLACE STAGE test_ingestion.public.test_stage
URL = 's3://sfquickstarts/tasty-bytes-builder-education/raw_pos/truck'
FILE_FORMAT = csv_ff;

-- Show metadata about the stage to check its status
SHOW STAGES IN SCHEMA test_ingestion.public;
