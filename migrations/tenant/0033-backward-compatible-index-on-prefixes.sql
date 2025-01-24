-- postgres-migrations disable-transaction
CREATE INDEX CONCURRENTLY IF NOT EXISTS idx_prefixes_lower_name ON storage.prefixes ("bucket_id", "level", "name", lower(name) text_pattern_ops);
