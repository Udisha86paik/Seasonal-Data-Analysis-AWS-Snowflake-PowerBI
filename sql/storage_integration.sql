CREATE OR REPLACE STORAGE INTEGRATION PBI_Integration
  TYPE = EXTERNAL_STAGE
  STORAGE_PROVIDER = 'S3'
  ENABLED = TRUE
  STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::825765422200:role/powerbi.role'
  STORAGE_ALLOWED_LOCATIONS = ('s3://powerbi.project/')
  COMMENT = 'Storage integration for Power BI project';

DESC INTEGRATION PBI_Integration;
