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

CREATE SEQUENCE IF NOT EXISTS public.negocios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;

CREATE SEQUENCE IF NOT EXISTS public.catalogos_id_seq
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
    deleted_at                      TIMESTAMP,
    catalogo_id                     BIGINT NOT NULL
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
    nombre_categoria_producto       VARCHAR(255) NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    updated_at                      TIMESTAMP,
    deleted_at                      TIMESTAMP,
    catalogo_id                     BIGINT NOT NULL
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
    categoria_egreso_id             BIGINT NOT NULL,
    movimiento_caja_id              BIGINT NOT NULL
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
    tipo_factura                    VARCHAR(255) NOT NULL CHECK ( type IN ('FACTURA_A', 'FACTURA_B', 'FACTURA_C', 'FACTURA_M') ),
    negocio_id                      BIGINT NOT NULL
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
    categoria_ingrediente_id        BIGINT NOT NULL,
    medida_id                       BIGINT NOT NULL
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
    categoria_ingreso_id            BIGINT NOT NULL,
    movimiento_caja_id              BIGINT NOT NULL
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
    ingrediente_id                  BIGINT NOT NULL
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
    caja_id                         BIGINT NOT NULL,
    tipo_movimiento                 VARCHAR(255) NOT NULL CHECK ( type IN ('VENTA', 'INGRESO', 'EGRESO') ),
    negocio_id                      BIGINT NOT NULL
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
    producto_id                     BIGINT NOT NULL
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
    categoria_producto_id           BIGINT NOT NULL,
    receta_id                       BIGINT NOT NULL
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
    nombre_receta                   VARCHAR(255),
    catalogo_id                     BIGINT NOT NULL
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
    ingrediente_id                  BIGINT NOT NULL,
    receta_id                       BIGINT NOT NULL
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
    permiso_id                      BIGINT NOT NULL,
    tipo_usuario_id                 BIGINT NOT NULL
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
    tipo_usuario_id                 BIGINT NOT NULL,
    negocio_id                      BIGINT NOT NULL
);
ALTER TABLE public.usuarios ALTER COLUMN id SET DEFAULT nextval('usuarios_id_seq');
ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;

-- VENTA
CREATE TABLE public.ventas
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    total_venta                     DOUBLE PRECISION NOT NULL,
    factura_id                         BIGINT,
    usuario_id                         BIGING NOT NULL,
    movimiento_caja_id                 BIGINT NOT NULL
);
ALTER TABLE public.ventas ALTER COLUMN id SET DEFAULT nextval('ventas_id_seq');
ALTER SEQUENCE public.ventas_id_seq OWNED BY public.ventas.id;

-- NEGOCIO
CREATE TABLE public.negocios
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    deleted_at                      TIMESTAMP NOT NULL,
    nombre_negocio                  VARCHAR(255) NOT NULL,
    razon_social                    VARCHAR(255) NOT NULL,
    cuit                            VARCHAR(255) NOT NULL,
    direccion                       VARCHAR(255) NOT NULL
);
ALTER TABLE public.negocios ALTER COLUMN id SET DEFAULT nextval('negocios_id_seq');
ALTER SEQUENCE public.negocios_id_seq OWNED BY public.negocios.id;

-- CATALOGO
CREATE TABLE public.catalogos
(
    id                              BIGINT PRIMARY KEY NOT NULL,
    created_at                      TIMESTAMP NOT NULL,
    nombre_catalogo                 VARCHAR(255) NOT NULL,
    negocio_id                      BIGINT NOT NULL
);
ALTER TABLE public.catalogos ALTER COLUMN id SET DEFAULT nextval('catalogos_id_seq');
ALTER SEQUENCE public.catalogos_id_seq OWNED BY public.catalogos.id;

----- FOREIGN KEYS -----
ALTER TABLE public.cajas
    ADD CONSTRAINT FK_CAJAS_ON_NEGOCIO FOREIGN KEY (negocio_id) REFERENCES public.negocios (id);

ALTER TABLE public.catalogos
    ADD CONSTRAINT FK_CATEGORIAS_ON_NEGOCIO FOREIGN KEY (negocio_id) REFERENCES public.negocios (id);

ALTER TABLE public.categoria_ingredientes
    ADD CONSTRAINT FK_CATEGORIA_INGREDIENTES_ON_CATALOGO FOREIGN KEY (catalogo_id) REFERENCES public.catalogos (id);

ALTER TABLE public.categoria_productos
    ADD CONSTRAINT FK_CATEGORIA_PRODUCTOS_ON_CATALOGO FOREIGN KEY (catalogo_id) REFERENCES public.categoria_productos(id);

ALTER TABLE public.egresos
    ADD CONSTRAINT FK_EGRESOS_ON_CATEGORIA_EGRESO FOREIGN KEY (categoria_egreso_id) REFERENCES public.categoria_egresos (id);

ALTER TABLE public.egresos
    ADD CONSTRAINT FK_EGRESOS_ON_MOVIMIENTO_CAJA FOREIGN KEY (movimiento_caja_id) REFERENCES public.movimiento_cajas (id);

ALTER TABLE public.facturas
    ADD CONSTRAINT FK_FACTURAS_ON_NEGOCIO FOREIGN KEY (negocio_id) REFERENCES public.negocios (id);

ALTER TABLE public.ingredientes
    ADD CONSTRAINT FK_INGREDIENTES_ON_CATEGORIA_INGREDIENTE FOREIGN KEY (categoria_ingrediente_id) REFERENCES public.categoria_ingredientes (id);

ALTER TABLE public.ingredientes
    ADD CONSTRAINT FK_INGREDIENTES_ON_MEDIDA FOREIGN KEY (medida_id) REFERENCES public.medidas (id);

ALTER TABLE public.ingresos
    ADD CONSTRAINT FK_INGRESOS_ON_CATEGORIA_INGRESO FOREIGN KEY (categoria_ingreso_id) REFERENCES public.categoria_ingresos (id);

ALTER TABLE public.ingresos
    ADD CONSTRAINT FK_INGRESOS_ON_MOVIMIENTO_CAJA FOREIGN KEY (movimiento_caja_id) REFERENCES public.movimiento_cajas (id);

ALTER TABLE public.ingreso_ingredientes
    ADD CONSTRAINT FK_INGRESO_INGREDIENTES_ON_INGREDIENTE FOREIGN KEY (ingrediente_id) REFERENCES public.ingredientes (id);

ALTER TABLE public.movimiento_cajas
    ADD CONSTRAINT FK_MOVIMIENTO_CAJAS_ON_CAJA FOREIGN KEY (caja_id) REFERENCES public.cajas (id);

ALTER TABLE public.produccion_productos
    ADD CONSTRAINT FK_PRODUCCION_PRODUCTOS_ON_PRODUCTO FOREIGN KEY (producto_id) REFERENCES public.productos (id);

ALTER TABLE public.productos
    ADD CONSTRAINT FK_PRODUCTOS_ON_CATEGORIA_PRODUCTO FOREIGN KEY (categoria_producto_id) REFERENCES public.categoria_productos (id);

ALTER TABLE public.productos
    ADD CONSTRAINT FK_PRODUCTOS_ON_RECETA FOREIGN KEY (receta_id) REFERENCES public.recetas (id);

ALTER TABLE public.recetas
    ADD CONSTRAINT FK_RECETAS_ON_CATALOGO FOREIGN KEY (catalogo_id) REFERENCES public.catalogos (id);

ALTER TABLE public.receta_ingredientes
    ADD CONSTRAINT FK_RECETA_INGREDIENTES_ON_INGREDIENTE FOREIGN KEY (ingrediente_id) REFERENCES public.ingredientes (id);

ALTER TABLE public.receta_ingredientes
    ADD CONSTRAINT FK_RECETA_INGREDIENTES_ON_RECETA FOREIGN KEY (receta_id) REFERENCES public.recetas (id);

ALTER TABLE public.tipo_usuario_permisos
    ADD CONSTRAINT FK_TIPO_USUARIO_PERMISOS_ON_PERMISO FOREIGN KEY (permiso_id) REFERENCES public.permisos (id);

ALTER TABLE public.tipo_usuario_permisos
    ADD CONSTRAINT FK_TIPO_USUARIO_PERMISOS_ON_TIPO_USUARIO FOREIGN KEY (tipo_usuario_id) REFERENCES public.tipo_usuarios (id);

ALTER TABLE public.usuarios
    ADD CONSTRAINT FK_USUARIOS_ON_TIPO_USUARIO FOREIGN KEY (tipo_usuario_id) REFERENCES public.tipo_usuarios (id);

ALTER TABLE public.usuarios
    ADD CONSTRAINT FK_USUARIOS_ON_NEGOCIO FOREIGN KEY (negocio_id) REFERENCES public.negocios (id);

ALTER TABLE public.ventas
    ADD CONSTRAINT FK_VENTAS_ON_FACTURA FOREIGN KEY (factura_id) REFERENCES public.facturas (id);

ALTER TABLE public.ventas
    ADD CONSTRAINT FK_VENTAS_ON_USUARIO FOREIGN KEY (usuario_id) REFERENCES public.usuarios (id);

ALTER TABLE public.ventas
    ADD CONSTRAINT FK_VENTAS_ON_MOVIMIENTO_CAJA FOREIGN KEY (movimiento_caja_id) REFERENCES public.movimiento_cajas (id);
