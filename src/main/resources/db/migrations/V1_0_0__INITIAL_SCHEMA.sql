-- SEQUENCES --
CREATE SEQUENCE IF NOT EXISTS public.caja_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.categoria_egresos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.categoria_ingredientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.categoria_ingresos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.categoria_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.egresos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.facturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.ingredientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.ingresos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.ingreso_ingredientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.medidas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.movimiento_cajas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.produccion_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.recetas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.receta_ingredientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.tipo_usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.tipo_usuario_permisos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.ventas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

------- TABLES -------

-- CAJAS --
CREATE TABLE public.cajas
(
    id             BIGINT PRIMARY KEY NOT NULL,
    total_caja     DOUBLE PRECISION NOT NULL,
    updated_at     TIMESTAMP
);
ALTER TABLE public.cajas ALTER COLUMN id SET DEFAULT nextval('cajas_id_seq');
ALTER SEQUENCE public.cajas_id_seq OWNED BY public.cajas.id;

-- CATEGORIA EGRESO --
CREATE TABLE public.categoria_egresos
(
    id                          BIGINT PRIMARY KEY NOT NULL,
    nombre_categoria_egreso     VARCHAR(255) NOT NULL,
    created_at                  TIMESTAMP NOT NULL,
    updated_at                  TIMESTAMP,
    deleted_at                  TIMESTAMP
);
ALTER TABLE public.categoria_egresos ALTER COLUMN id SET DEFAULT nexval('categoria_egresos_id_seq');
ALTER SEQUENCE public.categoria_egresos_id_seq OWNED BY public.categoria_egresos.id;

-- CATEGORIA INGREDIENTE --
CREATE TABLE public.categoria_ingredientes
(
        id                          BIGINT PRIMARY KEY NOT NULL,
    nombre_categoria_ingrediente    VARCHAR(255) NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP
);
ALTER TABLE public.categoria_ingredientes ALTER COLUMN id SET DEFAULT nextval('categoria_ingredientes_id_seq');
ALTER SEQUENCE public.categoria_ingredientes_id_seq OWNED BY public.categoria_ingredientes.id;

-- CATEGORIA INGRESO
CREATE TABLE public.categoria_ingresos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    nombre_categoria_ingreso        VARCHAR(255) NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP
);
ALTER TABLE public.categoria_ingresos ALTER COLUMN id SET DEFAULT nextval('categoria_ingresos_id_seq');
ALTER SEQUENCE public.categoria_ingresos_id_seq OWNED BY public.categoria_ingresos.id;

-- CATEGORIA PRODUCTO
CREATE TABLE public.categoria_productos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    nombre_categoria_producto        VARCHAR(255) NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP
);
ALTER TABLE public.categoria_productos ALTER COLUMN id SET DEFAULT nextval('categoria_productos_id_seq');
ALTER SEQUENCE public.categoria_productos_id_seq OWNED BY public.categoria_productos.id;

-- EGRESO
CREATE TABLE public.egresos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    descripcion_egreso              VARCHAR(255) NOT NULL,
    monto_egreso                    DOUBLE PRECISION NOT NULL,
    categoria_egreso                BIGINT NOT NULL,
    movimiento_caja                 BIGINT NOT NULL
);
ALTER TABLE public.egresos ALTER COLUMN id SET DEFAULT nextval('egresos_id_seq');
ALTER SEQUENCE public.egresos_id_seq OWNED BY public.egresos.id;

-- FACTURA
CREATE TABLE public.facturas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    concepto_factura                VARCHAR(255),
    condicion_venta_factura         VARCHAR(255),
    cuit_factura                    VARCHAR(255),
    direccion_factura               VARCHAR(255),
    emisor_factura                  VARCHAR(255),
    iibb                            VARCHAR(255),
    punto_venta_factura             VARCHAR(255),
    razon_social                    VARCHAR(255),
    receptor_factura                VARCHAR(255),
    tipo_factura                    VARCHAR(255) NOT NULL CHECK ( type IN ('FACTURA_A', 'FACTURA_B', 'FACTURA_C', 'FACTURA_M') )
);
ALTER TABLE public.facturas ALTER COLUMN id SET DEFAULT nextval('facturas_id_seq');
ALTER SEQUENCE public.facturas_id_seq OWNED BY public.factura.id;

-- INGREDIENTE
CREATE TABLE public.ingredientes
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    cantidad_ingrediente            DOUBLE PRECISION NOT NULL,
    costo_ingrediente               DOUBLE PRECISION NOT NULL,
    categoria_ingrediente           BIGINT NOT NULL,
    medida                          BIGINT NOT NULL
);
ALTER TABLE public.ingredientes ALTER COLUMN id SET DEFAULT nextval('ingredientes_id_seq');
ALTER SEQUENCE public.ingredientes_id_seq OWNED BY public.ingredientes.id;

-- INGRESO
CREATE TABLE public.ingresos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    descripcion_ingreso             VARCHAR(255),
    monto_ingreso                   DOUBLE PRECISION NOT NULL,
    categoria_ingreso               BIGINT NOT NULL,
    movimiento_caja                 BIGINT NOT NULL
);
ALTER TABLE public.ingresos ALTER COLUMN id SET DEFAULT nextval('ingresos_id_seq');
ALTER SEQUENCE public.ingresos_id_seq OWNED BY public.ingresos.id;

-- INGRESO INGREDIENTE
CREATE TABLE public.ingreso_ingredientes
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    cantidad_ingreso_ingrediente    VARCHAR(255) NOT NULL,
    costo_ingreso_ingrediente       DOUBLE PRECISION,
    ingrediente                     BIGINT NOT NULL
);
ALTER TABLE public.ingreso_ingredientes ALTER COLUMN id SET DEFAULT nextval('ingreso_ingredientes_id_seq');
ALTER SEQUENCE public.ingreso_ingredientes_id_seq OWNED BY public.ingreso_ingredientes.id;

-- MEDIDA
CREATE TABLE public.medidas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    abreviacion_medida              VARCHAR(10),
    nombre_medida                   VARCHAR(255)
);
ALTER TABLE public.medidas ALTER COLUMN id SET DEFAULT nextval('medidas_id_seq');
ALTER SEQUENCE public.medidas_id_seq OWNED BY public.medidas.id;

-- MOVIMIENTO CAJA
CREATE TABLE public.movimiento_cajas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    monto_movimiento_caja           DOUBLE PRECISION NOT NULL,
    caja                            BIGINT NOT NULL,
    tipo_movimiento                 VARCHAR(255) NOT NULL CHECK ( type IN ('VENTA', 'INGRESO', 'EGRESO') )
);
ALTER TABLE public.movimiento_cajas ALTER COLUMN id SET DEFAULT nextval('movimiento_cajas_id_seq');
ALTER SEQUENCE public.movimiento_cajas_id_seq OWNED BY public.movimiento_cajas.id;

-- PERMISO
CREATE TABLE public.permisos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    nombre_permiso                  VARCHAR(255) NOT NULL,
    url_permiso                     VARCHAR(255)
);
ALTER TABLE public.permisos ALTER COLUMN id SET DEFAULT nextval('permisos_id_seq');
ALTER SEQUENCE public.permisos_id_seq OWNED BY public.permisos.id;

-- PRODUCCION PRODUCTO
CREATE TABLE public.produccion_productos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    cantidad                        DOUBLE PRECISION NOT NULL,
    producto                        BIGINT NOT NULL
);
ALTER TABLE public.produccion_productos ALTER COLUMN id SET DEFAULT nextval('produccion_productos_id_seq');
ALTER SEQUENCE public.produccion_productos_id_seq OWNED BY public.produccion_productos.id;

-- PRODUCTO
CREATE TABLE public.productos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    costo_producto                  DOUBLE PRECISION NOT NULL,
    descripcion_producto            VARCHAR(255),
    nombre_producto                 VARCHAR(255) NOT NULL,
    precio_producto                 DOUBLE PRECISION NOT NULL,
    stock_producto                  INTEGER NOT NULL DEFAULT 0,
    categoria_producto              BIGINT NOT NULL,
    receta                          BIGINT NOT NULL
);
ALTER TABLE public.productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq');
ALTER SEQUENCE public.productos_id_seq OWNED BY public.productos.id;

-- RECETA
CREATE TABLE public.recetas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    descripcion_receta              VARCHAR(255),
    nombre_receta                   VARCHAR(255)
);
ALTER TABLE public.recetas ALTER COLUMN id SET DEFAULT nextval('recetas_id_seq');
ALTER SEQUENCE public.recetas_id_seq OWNED BY public.recetas.id;

-- RECETA INGREDIENTE
CREATE TABLE public.receta_ingredientes
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    cantidad_receta_ingrediente     DOUBLE PRECISION NOT NULL,
    ingrediente                     BIGINT NOT NULL,
    receta                          BIGINT NOT NULL
);
ALTER TABLE public.receta_ingredientes ALTER COLUMN id SET DEFAULT nextval('receta_ingredientes_id_seq');
ALTER SEQUENCE public.receta_ingredientes_id_seq OWNED BY public.receta_ingredientes.id;

-- TIPO USUARIO
CREATE TABLE public.tipo_usuarios
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    nombre_tipo_usuario             VARCHAR(255) NOT NULL
);
ALTER TABLE public.tipo_usuarios ALTER COLUMN id SET DEFAULT nextval('tipo_usuarios_id_seq');
ALTER SEQUENCE public.tipo_usuarios_id_seq OWNED BY public.tipo_usuarios.id;

-- TIPO USUARIO PERMISO
CREATE TABLE public.tipo_usuario_permisos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    permiso                         BIGINT NOT NULL,
    tipo_usuario                    BIGINT NOT NULL
);
ALTER TABLE public.tipo_usuario_permisos ALTER COLUMN id SET DEFAULT nextval('tipo_usuario_permisos_id_seq');
ALTER SEQUENCE public.tipo_usuario_permisos_id_seq OWNED BY public.tipo_usuario_permisos.id;

-- USUARIO
CREATE TABLE public.usuarios
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    nombreUsuario                   VARCHAR(255) NOT NULL,
    tipo_usuario                    BIGINT NOT NULL
);
ALTER TABLE public.usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq');
ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;

-- VENTA
CREATE TABLE public.ventas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    total_venta                     DOUBLE PRECISION NOT NULL,
    factura                         BIGINT,
    usuario                         BIGING NOT NULL,
    movimiento_caja                 BIGINT NOT NULL
);
ALTER TABLE public.ventas ALTER COLUMN id SET DEFAULT nextval('ventas_id_seq');
ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;

----- FOREIGN KEYS -----
ALTER TABLE pulbic.egresos
    ADD CONSTRAINT FK_EGRESOS_ON_CATEGORIA_EGRESO FOREIGN KEY (categoria_egreso) REFERENCES public.categoria_egresos (id);