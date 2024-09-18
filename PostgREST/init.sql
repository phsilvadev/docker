DO
$$
BEGIN
   IF NOT EXISTS (
      SELECT FROM pg_database WHERE datname = 'teste'
   ) THEN
      PERFORM dblink_connect('dbname=postgres');
      PERFORM dblink_exec('CREATE DATABASE teste');
      PERFORM dblink_disconnect();
   END IF;
END
$$;
