-- Configure postgresql.conf
ALTER SYSTEM SET listen_addresses='*';

-- Performance
ALTER SYSTEM SET shared_buffers = '128MB';

-- Logging
ALTER SYSTEM SET log_destination = 'stderr';
ALTER SYSTEM SET logging_collector = 'on';
ALTER SYSTEM SET log_directory = '/var/log/postgresql';
ALTER SYSTEM SET log_filename = 'postgresql-%a.log';
ALTER SYSTEM SET log_min_messages = 'info';
ALTER SYSTEM SET log_checkpoints = 'on';
ALTER SYSTEM SET log_connections = 'on';
ALTER SYSTEM SET log_disconnections = 'on';
ALTER SYSTEM SET log_truncate_on_rotation= 'on';
ALTER SYSTEM SET log_rotation_age= '1d';
ALTER SYSTEM SET log_rotation_size= '0';
ALTER SYSTEM SET log_duration= 'on';
ALTER SYSTEM SET log_line_prefix='%m [%p] ';
