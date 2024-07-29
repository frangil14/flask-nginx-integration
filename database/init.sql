-- Crear la base de datos (si no existe)

DO $$
BEGIN
    -- Verifica si la base de datos existe
    IF NOT EXISTS (SELECT 1 FROM pg_database WHERE datname = 'mydatabase') THEN
        -- Crea la base de datos
        EXECUTE 'CREATE DATABASE mydatabase';
        
        -- Mensaje en la consola
        RAISE NOTICE 'Base de datos creada guachin';
    ELSE
        RAISE NOTICE 'La base de datos ya existe guachin';
    END IF;
END
$$;

-- Conecta a la base de datos
\c mydatabase

DO $$
BEGIN
    -- Verifica si la tabla "users" existe
    IF NOT EXISTS (SELECT 1 FROM information_schema.tables WHERE table_name = 'users') THEN
        -- Crea la tabla "users"
        EXECUTE '
        CREATE TABLE IF NOT EXISTS users (
            id SERIAL PRIMARY KEY,
            name VARCHAR(50) NOT NULL,
            age INTEGER NOT NULL
        )';
        
        -- Mensaje en la consola
        RAISE NOTICE 'Tabla users creada guachin';
    ELSE
        RAISE NOTICE 'La tabla users ya existe guachin';
    END IF;
END
$$;