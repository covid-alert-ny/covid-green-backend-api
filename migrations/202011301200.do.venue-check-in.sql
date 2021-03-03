CREATE TABLE IF NOT EXISTS venue_check_ins (
  id UUID PRIMARY KEY NOT NULL DEFAULT GEN_RANDOM_UUID(),
  created_at TIMESTAMPTZ NOT NULL DEFAULT CURRENT_TIMESTAMP,
  venue_id UUID NOT NULL,
  checked_in_at TIMESTAMPTZ NOT NULL
);

ALTER TABLE venue_types
  ADD COLUMN IF NOT EXISTS threshold_duration INT NULL,
  ADD COLUMN IF NOT EXISTS threshold_count INT NULL;

ALTER TABLE qr_code
  ALTER COLUMN venue_type TYPE UUID USING venue_type::UUID,
  ADD COLUMN IF NOT EXISTS threshold_duration INT NULL,
  ADD COLUMN IF NOT EXISTS threshold_count INT NULL;

ALTER TABLE upload_tokens
  ADD COLUMN exposures_uploaded TIMESTAMPTZ NULL,
  ADD COLUMN venues_uploaded TIMESTAMPTZ NULL;