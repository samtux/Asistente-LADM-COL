PGDMP     $    *                x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   �0           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �0           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �0           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �0           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    701732    test_ladm_col_queries    SCHEMA     %   CREATE SCHEMA test_ladm_col_queries;
 #   DROP SCHEMA test_ladm_col_queries;
             postgres    false            C           1259    701733    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_col_queries.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE test_ladm_col_queries.t_ili2db_seq;
       test_ladm_col_queries       postgres    false    12            H           1259    701769    cc_metodooperacion    TABLE     Y  CREATE TABLE test_ladm_col_queries.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 5   DROP TABLE test_ladm_col_queries.cc_metodooperacion;
       test_ladm_col_queries         postgres    false    1859    12            �0           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_col_queries.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_ladm_col_queries       postgres    false    1864            �0           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     z  COMMENT ON COLUMN test_ladm_col_queries.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_ladm_col_queries       postgres    false    1864            �0           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_ladm_col_queries       postgres    false    1864            �0           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_ladm_col_queries       postgres    false    1864            �0           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_ladm_col_queries       postgres    false    1864            �           1259    702881    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_col_queries.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_col_queries.ci_forma_presentacion_codigo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703088    col_areatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_queries.col_areatipo;
       test_ladm_col_queries         postgres    false    1859    12            I           1259    701776    col_areavalor    TABLE     �  CREATE TABLE test_ladm_col_queries.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    tipo bigint NOT NULL,
    area numeric(15,1) NOT NULL,
    datos_proyeccion text,
    lc_construccion_area bigint,
    lc_terreno_area bigint,
    lc_servidumbretransito_area bigint,
    lc_unidadconstruccion_area bigint,
    CONSTRAINT col_areavalor_area_check CHECK (((area >= 0.0) AND (area <= 99999999999999.9)))
);
 0   DROP TABLE test_ladm_col_queries.col_areavalor;
       test_ladm_col_queries         postgres    false    1859    12            �0           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1865            �0           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1865            �0           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     O  COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_ladm_col_queries       postgres    false    1865            �0           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     }   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_queries       postgres    false    1865            �0           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_queries       postgres    false    1865            �0           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_queries       postgres    false    1865            �0           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_ladm_col_queries       postgres    false    1865            d           1259    702045    col_baunitcomointeresado    TABLE     1  CREATE TABLE test_ladm_col_queries.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 ;   DROP TABLE test_ladm_col_queries.col_baunitcomointeresado;
       test_ladm_col_queries         postgres    false    1859    12            Z           1259    701954    col_baunitfuente    TABLE     �   CREATE TABLE test_ladm_col_queries.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 3   DROP TABLE test_ladm_col_queries.col_baunitfuente;
       test_ladm_col_queries         postgres    false    1859    12            \           1259    701969    col_cclfuente    TABLE     �   CREATE TABLE test_ladm_col_queries.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 0   DROP TABLE test_ladm_col_queries.col_cclfuente;
       test_ladm_col_queries         postgres    false    1859    12            `           1259    702009    col_clfuente    TABLE     �   CREATE TABLE test_ladm_col_queries.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 /   DROP TABLE test_ladm_col_queries.col_clfuente;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703070    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.col_contenidoniveltipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702899    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.col_dimensiontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703016    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_col_queries.col_estadodisponibilidadtipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703313    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.col_estadoredserviciostipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703097    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col_queries.col_estructuratipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703124    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_col_queries.col_fuenteadministrativatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702926    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.col_fuenteespacialtipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702971    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_ladm_col_queries.col_grupointeresadotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703007    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_col_queries.col_interpolaciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702800    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.col_iso19125_tipo;
       test_ladm_col_queries         postgres    false    1859    12            ^           1259    701988 
   col_masccl    TABLE     c  CREATE TABLE test_ladm_col_queries.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 -   DROP TABLE test_ladm_col_queries.col_masccl;
       test_ladm_col_queries         postgres    false    1859    12            b           1259    702026 	   col_mascl    TABLE     E  CREATE TABLE test_ladm_col_queries.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 ,   DROP TABLE test_ladm_col_queries.col_mascl;
       test_ladm_col_queries         postgres    false    1859    12            ]           1259    701977    col_menosccl    TABLE     o  CREATE TABLE test_ladm_col_queries.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 /   DROP TABLE test_ladm_col_queries.col_menosccl;
       test_ladm_col_queries         postgres    false    1859    12            a           1259    702016    col_menoscl    TABLE     O  CREATE TABLE test_ladm_col_queries.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 .   DROP TABLE test_ladm_col_queries.col_menoscl;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703331    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_queries.col_metodoproducciontipo;
       test_ladm_col_queries         postgres    false    1859    12            g           1259    702072    col_miembros    TABLE     )  CREATE TABLE test_ladm_col_queries.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 /   DROP TABLE test_ladm_col_queries.col_miembros;
       test_ladm_col_queries         postgres    false    1859    12            _           1259    701999    col_puntoccl    TABLE     9  CREATE TABLE test_ladm_col_queries.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    ccl bigint NOT NULL
);
 /   DROP TABLE test_ladm_col_queries.col_puntoccl;
       test_ladm_col_queries         postgres    false    1859    12            c           1259    702036    col_puntocl    TABLE       CREATE TABLE test_ladm_col_queries.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 .   DROP TABLE test_ladm_col_queries.col_puntocl;
       test_ladm_col_queries         postgres    false    1859    12            X           1259    701933    col_puntofuente    TABLE     H  CREATE TABLE test_ladm_col_queries.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 2   DROP TABLE test_ladm_col_queries.col_puntofuente;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702755    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_queries.col_puntotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702980    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_ladm_col_queries.col_redserviciostipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703142    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_queries.col_registrotipo;
       test_ladm_col_queries         postgres    false    1859    12            V           1259    701918    col_relacionfuente    TABLE     �   CREATE TABLE test_ladm_col_queries.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 5   DROP TABLE test_ladm_col_queries.col_relacionfuente;
       test_ladm_col_queries         postgres    false    1859    12            [           1259    701962    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_ladm_col_queries.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 >   DROP TABLE test_ladm_col_queries.col_relacionfuenteuespacial;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703034    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.col_relacionsuperficietipo;
       test_ladm_col_queries         postgres    false    1859    12            e           1259    702054    col_responsablefuente    TABLE     =  CREATE TABLE test_ladm_col_queries.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 8   DROP TABLE test_ladm_col_queries.col_responsablefuente;
       test_ladm_col_queries         postgres    false    1859    12            T           1259    701898    col_rrrfuente    TABLE       CREATE TABLE test_ladm_col_queries.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 0   DROP TABLE test_ladm_col_queries.col_rrrfuente;
       test_ladm_col_queries         postgres    false    1859    12            f           1259    702063    col_topografofuente    TABLE     3  CREATE TABLE test_ladm_col_queries.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 6   DROP TABLE test_ladm_col_queries.col_topografofuente;
       test_ladm_col_queries         postgres    false    1859    12            L           1259    701819    col_transformacion    TABLE     �  CREATE TABLE test_ladm_col_queries.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 5   DROP TABLE test_ladm_col_queries.col_transformacion;
       test_ladm_col_queries         postgres    false    1859    12            �0           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_ladm_col_queries       postgres    false    1868            �0           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_ladm_col_queries       postgres    false    1868            �0           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_queries       postgres    false    1868            �0           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_queries       postgres    false    1868            �0           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_ladm_col_queries       postgres    false    1868            U           1259    701907    col_uebaunit    TABLE     T  CREATE TABLE test_ladm_col_queries.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    baunit bigint NOT NULL
);
 /   DROP TABLE test_ladm_col_queries.col_uebaunit;
       test_ladm_col_queries         postgres    false    1859    12            Y           1259    701943    col_uefuente    TABLE     ]  CREATE TABLE test_ladm_col_queries.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    fuente_espacial bigint NOT NULL
);
 /   DROP TABLE test_ladm_col_queries.col_uefuente;
       test_ladm_col_queries         postgres    false    1859    12            S           1259    701888    col_ueuegrupo    TABLE     E  CREATE TABLE test_ladm_col_queries.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_construccion bigint,
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint
);
 0   DROP TABLE test_ladm_col_queries.col_ueuegrupo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702809 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_col_queries.col_unidadadministrativabasicatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702854    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.col_unidadedificaciontipo;
       test_ladm_col_queries         postgres    false    1859    12            W           1259    701925    col_unidadfuente    TABLE     �   CREATE TABLE test_ladm_col_queries.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 3   DROP TABLE test_ladm_col_queries.col_unidadfuente;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703241    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_col_queries.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_queries.col_volumentipo;
       test_ladm_col_queries         postgres    false    1859    12            R           1259    701877    col_volumenvalor    TABLE     
  CREATE TABLE test_ladm_col_queries.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 3   DROP TABLE test_ladm_col_queries.col_volumenvalor;
       test_ladm_col_queries         postgres    false    1859    12            �0           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_ladm_col_queries       postgres    false    1874            �0           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     m   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_ladm_col_queries       postgres    false    1874            �0           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_ladm_col_queries       postgres    false    1874             1           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1874            1           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1874            1           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1874            1           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1874            Q           1259    701865 
   extarchivo    TABLE       CREATE TABLE test_ladm_col_queries.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    fecha_aceptacion date,
    datos character varying(255),
    extraccion date,
    fecha_grabacion date,
    fecha_entrega date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    snr_fuentecabidalndros_archivo bigint,
    lc_fuenteadministrtiva_ext_archivo_id bigint,
    lc_fuenteespacial_ext_archivo_id bigint
);
 -   DROP TABLE test_ladm_col_queries.extarchivo;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_ladm_col_queries       postgres    false    1873            1           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     y   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_ladm_col_queries       postgres    false    1873            1           0    0    COLUMN extarchivo.datos    COMMENT     `   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.datos IS 'Datos que contiene el documento.';
            test_ladm_col_queries       postgres    false    1873            1           0    0    COLUMN extarchivo.extraccion    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_ladm_col_queries       postgres    false    1873            1           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_ladm_col_queries       postgres    false    1873            	1           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     s   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_ladm_col_queries       postgres    false    1873            
1           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_queries       postgres    false    1873            1           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_queries       postgres    false    1873            1           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_ladm_col_queries       postgres    false    1873            J           1259    701790    extdireccion    TABLE       CREATE TABLE test_ladm_col_queries.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    tipo_direccion bigint NOT NULL,
    es_direccion_principal boolean,
    localizacion public.geometry(PointZ,38820),
    codigo_postal character varying(255),
    clase_via_principal bigint,
    valor_via_principal character varying(100),
    letra_via_principal character varying(20),
    sector_ciudad bigint,
    valor_via_generadora character varying(100),
    letra_via_generadora character varying(20),
    numero_predio character varying(20),
    sector_predio bigint,
    complemento character varying(255),
    nombre_predio character varying(255),
    extunidadedificcnfsica_ext_direccion_id bigint,
    extinteresado_ext_direccion_id bigint,
    lc_construccion_ext_direccion_id bigint,
    lc_predio_direccion bigint,
    lc_terreno_ext_direccion_id bigint,
    lc_servidumbretransito_ext_direccion_id bigint,
    lc_unidadconstruccion_ext_direccion_id bigint
);
 /   DROP TABLE test_ladm_col_queries.extdireccion;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0    TABLE extdireccion    COMMENT     u   COMMENT ON TABLE test_ladm_col_queries.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col_queries       postgres    false    1866            1           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1866            1           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1866            �           1259    703286     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_col_queries.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_col_queries.extdireccion_clase_via_principal;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703025    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_col_queries.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.extdireccion_sector_ciudad;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702773    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_col_queries.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.extdireccion_sector_predio;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703196    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_col_queries.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_col_queries.extdireccion_tipo_direccion;
       test_ladm_col_queries         postgres    false    1859    12            O           1259    701847    extinteresado    TABLE     �  CREATE TABLE test_ladm_col_queries.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 0   DROP TABLE test_ladm_col_queries.extinteresado;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0    TABLE extinteresado    COMMENT     v   COMMENT ON TABLE test_ladm_col_queries.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_ladm_col_queries       postgres    false    1871            1           0    0    COLUMN extinteresado.nombre    COMMENT     c   COMMENT ON COLUMN test_ladm_col_queries.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_ladm_col_queries       postgres    false    1871            1           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_ladm_col_queries       postgres    false    1871            1           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_ladm_col_queries       postgres    false    1871            1           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     y   COMMENT ON COLUMN test_ladm_col_queries.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_ladm_col_queries       postgres    false    1871            1           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_ladm_col_queries       postgres    false    1871            P           1259    701859    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_col_queries.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 8   DROP TABLE test_ladm_col_queries.extredserviciosfisica;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_ladm_col_queries       postgres    false    1872            1           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_ladm_col_queries       postgres    false    1872            M           1259    701832    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_col_queries.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 =   DROP TABLE test_ladm_col_queries.extunidadedificacionfisica;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0     TABLE extunidadedificacionfisica    COMMENT     ~   COMMENT ON TABLE test_ladm_col_queries.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_ladm_col_queries       postgres    false    1869            K           1259    701811    fraccion    TABLE     �  CREATE TABLE test_ladm_col_queries.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 +   DROP TABLE test_ladm_col_queries.fraccion;
       test_ladm_col_queries         postgres    false    1859    12            1           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_ladm_col_queries       postgres    false    1867            1           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_ladm_col_queries       postgres    false    1867             1           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_ladm_col_queries       postgres    false    1867            h           1259    702081 	   gc_barrio    TABLE     Q  CREATE TABLE test_ladm_col_queries.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 ,   DROP TABLE test_ladm_col_queries.gc_barrio;
       test_ladm_col_queries         postgres    false    1859    12            !1           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1896            "1           0    0    COLUMN gc_barrio.codigo    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_ladm_col_queries       postgres    false    1896            #1           0    0    COLUMN gc_barrio.nombre    COMMENT     R   COMMENT ON COLUMN test_ladm_col_queries.gc_barrio.nombre IS 'Nombre del barrio.';
            test_ladm_col_queries       postgres    false    1896            $1           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_ladm_col_queries       postgres    false    1896            %1           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_ladm_col_queries       postgres    false    1896            i           1259    702091 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 D   DROP TABLE test_ladm_col_queries.gc_calificacionunidadconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            &1           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_ladm_col_queries       postgres    false    1897            '1           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1897            (1           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1897            )1           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1897            *1           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_ladm_col_queries       postgres    false    1897            j           1259    702101    gc_comisionesconstruccion    TABLE     (  CREATE TABLE test_ladm_col_queries.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 <   DROP TABLE test_ladm_col_queries.gc_comisionesconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            +1           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1898            ,1           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1898            -1           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_queries       postgres    false    1898            k           1259    702111    gc_comisionesterreno    TABLE     "  CREATE TABLE test_ladm_col_queries.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 7   DROP TABLE test_ladm_col_queries.gc_comisionesterreno;
       test_ladm_col_queries         postgres    false    1859    12            .1           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1899            /1           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1899            01           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_queries       postgres    false    1899            l           1259    702121    gc_comisionesunidadconstruccion    TABLE     .  CREATE TABLE test_ladm_col_queries.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 B   DROP TABLE test_ladm_col_queries.gc_comisionesunidadconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            11           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1900            21           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1900            31           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_ladm_col_queries       postgres    false    1900            �           1259    703178    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.gc_condicionprediotipo;
       test_ladm_col_queries         postgres    false    1859    12            m           1259    702131    gc_construccion    TABLE     S  CREATE TABLE test_ladm_col_queries.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    identificador character varying(30),
    etiqueta character varying(50),
    tipo_construccion bigint,
    tipo_dominio character varying(20),
    numero_pisos integer,
    numero_sotanos integer,
    numero_mezanines integer,
    numero_semisotanos integer,
    codigo_edificacion integer,
    codigo_terreno character varying(30),
    area_construida numeric(16,2),
    geometria public.geometry(MultiPolygonZ,38820),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_construccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.98))),
    CONSTRAINT gc_construccion_codigo_edificacion_check CHECK (((codigo_edificacion >= 0) AND (codigo_edificacion <= 2147483647))),
    CONSTRAINT gc_construccion_numero_mezanines_check CHECK (((numero_mezanines >= 0) AND (numero_mezanines <= 99))),
    CONSTRAINT gc_construccion_numero_pisos_check CHECK (((numero_pisos >= 0) AND (numero_pisos <= 200))),
    CONSTRAINT gc_construccion_numero_semisotanos_check CHECK (((numero_semisotanos >= 0) AND (numero_semisotanos <= 99))),
    CONSTRAINT gc_construccion_numero_sotanos_check CHECK (((numero_sotanos >= 0) AND (numero_sotanos <= 99)))
);
 2   DROP TABLE test_ladm_col_queries.gc_construccion;
       test_ladm_col_queries         postgres    false    1859    12            41           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_queries       postgres    false    1901            51           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_queries       postgres    false    1901            61           0    0    COLUMN gc_construccion.etiqueta    COMMENT     e   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_ladm_col_queries       postgres    false    1901            71           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_queries       postgres    false    1901            81           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_queries       postgres    false    1901            91           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     w   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col_queries       postgres    false    1901            :1           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     |   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col_queries       postgres    false    1901            ;1           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT        COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col_queries       postgres    false    1901            <1           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col_queries       postgres    false    1901            =1           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_ladm_col_queries       postgres    false    1901            >1           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_ladm_col_queries       postgres    false    1901            ?1           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.area_construida IS 'Área total construida.';
            test_ladm_col_queries       postgres    false    1901            @1           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1901            {           1259    702269    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 1   DROP TABLE test_ladm_col_queries.gc_copropiedad;
       test_ladm_col_queries         postgres    false    1859    12            A1           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_ladm_col_queries       postgres    false    1915            n           1259    702143    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    area_total_terreno_privada numeric(16,2),
    area_total_terreno_comun numeric(16,2),
    area_total_construida_privada numeric(16,2),
    area_total_construida_comun numeric(16,2),
    total_unidades_privadas integer,
    total_unidades_sotano integer,
    valor_total_avaluo_catastral numeric(16,1),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_datosphcondominio_area_total_constrd_prvada_check CHECK (((area_total_construida_privada >= 0.0) AND (area_total_construida_privada <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_construid_cmun_check CHECK (((area_total_construida_comun >= 0.0) AND (area_total_construida_comun <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_terreno_comun_check CHECK (((area_total_terreno_comun >= 0.0) AND (area_total_terreno_comun <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_area_total_terreno_prvada_check CHECK (((area_total_terreno_privada >= 0.0) AND (area_total_terreno_privada <= 99999999999999.98))),
    CONSTRAINT gc_datosphcondominio_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999))),
    CONSTRAINT gc_datosphcondominio_total_unidades_sotano_check CHECK (((total_unidades_sotano >= 0) AND (total_unidades_sotano <= 99999999))),
    CONSTRAINT gc_datosphcondominio_valor_total_avalu_ctstral_check CHECK (((valor_total_avaluo_catastral >= 0.0) AND (valor_total_avaluo_catastral <= '999999999999999'::numeric)))
);
 7   DROP TABLE test_ladm_col_queries.gc_datosphcondominio;
       test_ladm_col_queries         postgres    false    1859    12            B1           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_ladm_col_queries       postgres    false    1902            C1           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1902            D1           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1902            E1           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1902            F1           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1902            G1           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col_queries       postgres    false    1902            H1           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_ladm_col_queries       postgres    false    1902            I1           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_ladm_col_queries       postgres    false    1902            o           1259    702150    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    torre integer,
    total_pisos_torre integer,
    total_unidades_privadas integer,
    total_sotanos integer,
    total_unidades_sotano integer,
    gc_datosphcondominio bigint,
    CONSTRAINT gc_datostorreph_torre_check CHECK (((torre >= 0) AND (torre <= 1500))),
    CONSTRAINT gc_datostorreph_total_pisos_torre_check CHECK (((total_pisos_torre >= 0) AND (total_pisos_torre <= 100))),
    CONSTRAINT gc_datostorreph_total_sotanos_check CHECK (((total_sotanos >= 0) AND (total_sotanos <= 99))),
    CONSTRAINT gc_datostorreph_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999))),
    CONSTRAINT gc_datostorreph_total_unidades_sotano_check CHECK (((total_unidades_sotano >= 0) AND (total_unidades_sotano <= 99999999)))
);
 2   DROP TABLE test_ladm_col_queries.gc_datostorreph;
       test_ladm_col_queries         postgres    false    1859    12            J1           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_ladm_col_queries       postgres    false    1903            K1           0    0    COLUMN gc_datostorreph.torre    COMMENT     l   COMMENT ON COLUMN test_ladm_col_queries.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_ladm_col_queries       postgres    false    1903            L1           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     l   COMMENT ON COLUMN test_ladm_col_queries.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_ladm_col_queries       postgres    false    1903            M1           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_queries.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_ladm_col_queries       postgres    false    1903            N1           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     k   COMMENT ON COLUMN test_ladm_col_queries.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_ladm_col_queries       postgres    false    1903            O1           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_ladm_col_queries       postgres    false    1903            p           1259    702157    gc_direccion    TABLE     @  CREATE TABLE test_ladm_col_queries.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 /   DROP TABLE test_ladm_col_queries.gc_direccion;
       test_ladm_col_queries         postgres    false    1859    12            P1           0    0    COLUMN gc_direccion.valor    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_ladm_col_queries       postgres    false    1904            Q1           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_ladm_col_queries       postgres    false    1904            R1           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_ladm_col_queries       postgres    false    1904            S1           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_ladm_col_queries       postgres    false    1904            q           1259    702168    gc_estadopredio    TABLE     B  CREATE TABLE test_ladm_col_queries.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 2   DROP TABLE test_ladm_col_queries.gc_estadopredio;
       test_ladm_col_queries         postgres    false    1859    12            T1           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1905            U1           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1905            V1           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_ladm_col_queries       postgres    false    1905            W1           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_ladm_col_queries       postgres    false    1905            X1           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_ladm_col_queries       postgres    false    1905            r           1259    702175 
   gc_manzana    TABLE     \  CREATE TABLE test_ladm_col_queries.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_ladm_col_queries.gc_manzana;
       test_ladm_col_queries         postgres    false    1859    12            Y1           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1906            Z1           0    0    COLUMN gc_manzana.codigo    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_ladm_col_queries       postgres    false    1906            [1           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     s   COMMENT ON COLUMN test_ladm_col_queries.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_ladm_col_queries       postgres    false    1906            \1           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_ladm_col_queries       postgres    false    1906            ]1           0    0    COLUMN gc_manzana.geometria    COMMENT     j   COMMENT ON COLUMN test_ladm_col_queries.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_ladm_col_queries       postgres    false    1906            s           1259    702185    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 /   DROP TABLE test_ladm_col_queries.gc_perimetro;
       test_ladm_col_queries         postgres    false    1859    12            ^1           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1907            _1           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_ladm_col_queries       postgres    false    1907            `1           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_ladm_col_queries       postgres    false    1907            a1           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_ladm_col_queries       postgres    false    1907            b1           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_ladm_col_queries       postgres    false    1907            c1           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_ladm_col_queries       postgres    false    1907            d1           0    0    COLUMN gc_perimetro.geometria    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_ladm_col_queries       postgres    false    1907            z           1259    702258    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_catastro character varying(255),
    numero_predial character varying(30),
    numero_predial_anterior character varying(20),
    nupre character varying(11),
    circulo_registral character varying(4),
    matricula_inmobiliaria_catastro character varying(80),
    tipo_predio character varying(100),
    condicion_predio bigint,
    destinacion_economica character varying(150),
    sistema_procedencia_datos bigint,
    fecha_datos date NOT NULL
);
 4   DROP TABLE test_ladm_col_queries.gc_prediocatastro;
       test_ladm_col_queries         postgres    false    1859    12            e1           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_ladm_col_queries       postgres    false    1914            f1           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_ladm_col_queries       postgres    false    1914            g1           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_queries       postgres    false    1914            h1           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_queries       postgres    false    1914            i1           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     M  COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col_queries       postgres    false    1914            j1           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_ladm_col_queries       postgres    false    1914            k1           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_ladm_col_queries       postgres    false    1914            l1           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_ladm_col_queries       postgres    false    1914            m1           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col_queries       postgres    false    1914            n1           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     L  COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col_queries       postgres    false    1914            o1           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_ladm_col_queries       postgres    false    1914            p1           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     o   COMMENT ON COLUMN test_ladm_col_queries.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_ladm_col_queries       postgres    false    1914            t           1259    702195    gc_propietario    TABLE     :  CREATE TABLE test_ladm_col_queries.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento character varying(100),
    numero_documento character varying(50),
    digito_verificacion character varying(1),
    primer_nombre character varying(255),
    segundo_nombre character varying(255),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255),
    gc_predio_catastro bigint NOT NULL
);
 1   DROP TABLE test_ladm_col_queries.gc_propietario;
       test_ladm_col_queries         postgres    false    1859    12            q1           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_ladm_col_queries       postgres    false    1908            r1           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1908            s1           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1908            t1           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_ladm_col_queries       postgres    false    1908            u1           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     v   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_ladm_col_queries       postgres    false    1908            v1           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_ladm_col_queries       postgres    false    1908            w1           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_ladm_col_queries       postgres    false    1908            x1           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     |   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_ladm_col_queries       postgres    false    1908            y1           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_ladm_col_queries       postgres    false    1908            u           1259    702205    gc_sectorrural    TABLE     
  CREATE TABLE test_ladm_col_queries.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 1   DROP TABLE test_ladm_col_queries.gc_sectorrural;
       test_ladm_col_queries         postgres    false    1859    12            z1           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1909            {1           0    0    COLUMN gc_sectorrural.codigo    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col_queries       postgres    false    1909            |1           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1909            v           1259    702215    gc_sectorurbano    TABLE       CREATE TABLE test_ladm_col_queries.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 2   DROP TABLE test_ladm_col_queries.gc_sectorurbano;
       test_ladm_col_queries         postgres    false    1859    12            }1           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1910            ~1           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     {   COMMENT ON COLUMN test_ladm_col_queries.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_ladm_col_queries       postgres    false    1910            1           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1910            �           1259    702953    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_col_queries.gc_sistemaprocedenciadatostipo;
       test_ladm_col_queries         postgres    false    1859    12            w           1259    702225 
   gc_terreno    TABLE     X  CREATE TABLE test_ladm_col_queries.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    area_terreno_alfanumerica numeric(16,2),
    area_terreno_digital numeric(16,2),
    manzana_vereda_codigo character varying(17),
    numero_subterraneos integer,
    geometria public.geometry(MultiPolygon,38820),
    gc_predio bigint NOT NULL,
    CONSTRAINT gc_terreno_area_terreno_alfanumerica_check CHECK (((area_terreno_alfanumerica >= 0.0) AND (area_terreno_alfanumerica <= 99999999999999.98))),
    CONSTRAINT gc_terreno_area_terreno_digital_check CHECK (((area_terreno_digital >= 0.0) AND (area_terreno_digital <= 99999999999999.98))),
    CONSTRAINT gc_terreno_numero_subterraneos_check CHECK (((numero_subterraneos >= 0) AND (numero_subterraneos <= 2147483647)))
);
 -   DROP TABLE test_ladm_col_queries.gc_terreno;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_queries       postgres    false    1911            �1           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1911            �1           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1911            �1           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_ladm_col_queries       postgres    false    1911            �1           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     u   COMMENT ON COLUMN test_ladm_col_queries.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_ladm_col_queries       postgres    false    1911            �1           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1911            x           1259    702236    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    identificador character varying(2),
    etiqueta character varying(50),
    tipo_dominio character varying(20),
    tipo_construccion bigint,
    planta character varying(10),
    total_habitaciones integer,
    total_banios integer,
    total_locales integer,
    total_pisos integer,
    uso character varying(255),
    anio_construccion integer,
    puntaje integer,
    area_construida numeric(16,2),
    area_privada numeric(16,2),
    codigo_terreno character varying(30),
    geometria public.geometry(MultiPolygonZ,38820),
    gc_construccion bigint NOT NULL,
    CONSTRAINT gc_unidadconstruccion_anio_construccion_check CHECK (((anio_construccion >= 1512) AND (anio_construccion <= 2500))),
    CONSTRAINT gc_unidadconstruccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.98))),
    CONSTRAINT gc_unidadconstruccion_area_privada_check CHECK (((area_privada >= 0.0) AND (area_privada <= 99999999999999.98))),
    CONSTRAINT gc_unidadconstruccion_puntaje_check CHECK (((puntaje >= 0) AND (puntaje <= 200))),
    CONSTRAINT gc_unidadconstruccion_total_banios_check CHECK (((total_banios >= 0) AND (total_banios <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_habitaciones_check CHECK (((total_habitaciones >= 0) AND (total_habitaciones <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_locales_check CHECK (((total_locales >= 0) AND (total_locales <= 999999))),
    CONSTRAINT gc_unidadconstruccion_total_pisos_check CHECK (((total_pisos >= 0) AND (total_pisos <= 150)))
);
 8   DROP TABLE test_ladm_col_queries.gc_unidadconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     u   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1912            �1           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_ladm_col_queries       postgres    false    1912            �           1259    702827    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.gc_unidadconstrucciontipo;
       test_ladm_col_queries         postgres    false    1859    12            y           1259    702248 	   gc_vereda    TABLE     |  CREATE TABLE test_ladm_col_queries.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 ,   DROP TABLE test_ladm_col_queries.gc_vereda;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_ladm_col_queries       postgres    false    1913            �1           0    0    COLUMN gc_vereda.codigo    COMMENT     n   COMMENT ON COLUMN test_ladm_col_queries.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_ladm_col_queries       postgres    false    1913            �1           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     w   COMMENT ON COLUMN test_ladm_col_queries.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_ladm_col_queries       postgres    false    1913            �1           0    0    COLUMN gc_vereda.nombre    COMMENT     T   COMMENT ON COLUMN test_ladm_col_queries.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_ladm_col_queries       postgres    false    1913            �1           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_ladm_col_queries       postgres    false    1913            �1           0    0    COLUMN gc_vereda.geometria    COMMENT     a   COMMENT ON COLUMN test_ladm_col_queries.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_ladm_col_queries       postgres    false    1913            E           1259    701746    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_col_queries.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 4   DROP TABLE test_ladm_col_queries.gm_multisurface2d;
       test_ladm_col_queries         postgres    false    1859    12            G           1259    701763    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_col_queries.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 4   DROP TABLE test_ladm_col_queries.gm_multisurface3d;
       test_ladm_col_queries         postgres    false    1859    12            D           1259    701735    gm_surface2dlistvalue    TABLE       CREATE TABLE test_ladm_col_queries.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 8   DROP TABLE test_ladm_col_queries.gm_surface2dlistvalue;
       test_ladm_col_queries         postgres    false    1859    12            F           1259    701752    gm_surface3dlistvalue    TABLE       CREATE TABLE test_ladm_col_queries.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 8   DROP TABLE test_ladm_col_queries.gm_surface3dlistvalue;
       test_ladm_col_queries         postgres    false    1859    12            N           1259    701838    imagen    TABLE     )  CREATE TABLE test_ladm_col_queries.imagen (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 )   DROP TABLE test_ladm_col_queries.imagen;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE imagen    COMMENT     ]   COMMENT ON TABLE test_ladm_col_queries.imagen IS 'Referencia a una imagen mediante su url.';
            test_ladm_col_queries       postgres    false    1870            �1           0    0    COLUMN imagen.uri    COMMENT     K   COMMENT ON COLUMN test_ladm_col_queries.imagen.uri IS 'url de la imagen.';
            test_ladm_col_queries       postgres    false    1870            �1           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_ladm_col_queries       postgres    false    1870            �1           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     j   COMMENT ON COLUMN test_ladm_col_queries.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_ladm_col_queries       postgres    false    1870            �1           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     _   COMMENT ON COLUMN test_ladm_col_queries.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_ladm_col_queries       postgres    false    1870            �           1259    702872    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.ini_emparejamientotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702343    ini_predioinsumos    TABLE     0  CREATE TABLE test_ladm_col_queries.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 4   DROP TABLE test_ladm_col_queries.ini_predioinsumos;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_ladm_col_queries       postgres    false    1923            �1           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_ladm_col_queries       postgres    false    1923            �1           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     m   COMMENT ON COLUMN test_ladm_col_queries.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_ladm_col_queries       postgres    false    1923            �           1259    703160    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_queries.lc_acuerdotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702355    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 ;   DROP TABLE test_ladm_col_queries.lc_agrupacioninteresados;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     |   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     e   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1924            �1           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     l   COMMENT ON COLUMN test_ladm_col_queries.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1924            �           1259    703169    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_queries.lc_anexotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702599    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 >   DROP TABLE test_ladm_col_queries.lc_calificacionconvencional;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_ladm_col_queries       postgres    false    1944            �1           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_ladm_col_queries       postgres    false    1944            �1           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1944            �           1259    702608    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_ladm_col_queries.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 @   DROP TABLE test_ladm_col_queries.lc_calificacionnoconvencional;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col_queries       postgres    false    1945            �1           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_ladm_col_queries       postgres    false    1945            �           1259    703259    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_queries.lc_calificartipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702863    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_col_queries.lc_categoriasuelotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703295    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_queries.lc_clasecalificaciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702944    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.lc_clasesuelotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703304    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.lc_condicionprediotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702366    lc_construccion    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    identificador character varying(2) NOT NULL,
    tipo_construccion bigint,
    tipo_dominio bigint,
    numero_pisos integer NOT NULL,
    numero_sotanos integer,
    numero_mezanines integer,
    numero_semisotanos integer,
    anio_construccion integer,
    avaluo_construccion numeric(16,1),
    area_construccion numeric(15,1) NOT NULL,
    altura integer,
    observaciones text,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_construccion_altura_check CHECK (((altura >= 1) AND (altura <= 1000))),
    CONSTRAINT lc_construccion_anio_construccion_check CHECK (((anio_construccion >= 1550) AND (anio_construccion <= 2500))),
    CONSTRAINT lc_construccion_area_construccion_check CHECK (((area_construccion >= 0.0) AND (area_construccion <= 99999999999999.9))),
    CONSTRAINT lc_construccion_avaluo_construccion_check CHECK (((avaluo_construccion >= 0.0) AND (avaluo_construccion <= '999999999999999'::numeric))),
    CONSTRAINT lc_construccion_numero_mezanines_check CHECK (((numero_mezanines >= 0) AND (numero_mezanines <= 99))),
    CONSTRAINT lc_construccion_numero_pisos_check CHECK (((numero_pisos >= 0) AND (numero_pisos <= 300))),
    CONSTRAINT lc_construccion_numero_semisotanos_check CHECK (((numero_semisotanos >= 0) AND (numero_semisotanos <= 99))),
    CONSTRAINT lc_construccion_numero_sotanos_check CHECK (((numero_sotanos >= 0) AND (numero_sotanos <= 99)))
);
 2   DROP TABLE test_ladm_col_queries.lc_construccion;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     w   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     |   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT        COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT        COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     h   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.area_construccion IS 'Área total construida.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0    COLUMN lc_construccion.altura    COMMENT     g   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.altura IS 'Altura total de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     y   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0     COLUMN lc_construccion.dimension    COMMENT     _   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0    COLUMN lc_construccion.etiqueta    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1925            �1           0    0    COLUMN lc_construccion.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_col_queries.lc_construccion.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1925            �           1259    703061    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.lc_construccionplantatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703277    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col_queries.lc_construcciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702381    lc_contactovisita    TABLE     5  CREATE TABLE test_ladm_col_queries.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_documento_quien_atendio bigint NOT NULL,
    numero_documento_quien_atendio character varying(50) NOT NULL,
    primer_nombre_quien_atendio character varying(100) NOT NULL,
    segundo_nombre_quien_atendio character varying(100),
    primer_apellido_quien_atendio character varying(100) NOT NULL,
    segundo_apellido_quien_atendio character varying(100),
    relacion_con_predio bigint NOT NULL,
    domicilio_notificaciones character varying(255),
    celular character varying(20),
    correo_electronico character varying(100),
    autoriza_notificaciones boolean,
    lc_datos_adicionales bigint NOT NULL
);
 4   DROP TABLE test_ladm_col_queries.lc_contactovisita;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_ladm_col_queries       postgres    false    1926            �1           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_ladm_col_queries       postgres    false    1926            �           1259    702617 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tiene_area_registral boolean NOT NULL,
    area_registral_m2 numeric(25,2),
    procedimiento_catastral_registral bigint NOT NULL,
    destinacion_economica bigint NOT NULL,
    clase_suelo bigint NOT NULL,
    categoria_suelo bigint,
    observaciones character varying(500),
    fecha_visita_predial date NOT NULL,
    tipo_documento_reconocedor bigint NOT NULL,
    numero_documento_reconocedor character varying(50) NOT NULL,
    primer_nombre_reconocedor character varying(100) NOT NULL,
    segundo_nombre_reconocedor character varying(100),
    primer_apellido_reconocedor character varying(100) NOT NULL,
    segundo_apellido_reconocedor character varying(100),
    resultado_visita bigint NOT NULL,
    suscribe_acta_colindancia boolean,
    lc_predio bigint NOT NULL,
    CONSTRAINT lc_dtsdcnlslvntmntctstral_area_registral_m2_check CHECK (((area_registral_m2 >= 0.0) AND (area_registral_m2 <= '10000000000000000000000'::numeric)))
);
 L   DROP TABLE test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     d  COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_ladm_col_queries       postgres    false    1946            �1           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT     
  COMMENT ON COLUMN test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_ladm_col_queries       postgres    false    1946            �           1259    702394    lc_datosphcondominio    TABLE       CREATE TABLE test_ladm_col_queries.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_total_terreno numeric(16,2),
    area_total_terreno_privada numeric(16,2),
    area_total_terreno_comun numeric(16,2),
    area_total_construida numeric(16,2),
    area_total_construida_privada numeric(16,2),
    area_total_construida_comun numeric(16,2),
    numero_torres integer,
    total_unidades_privadas integer,
    lc_predio bigint NOT NULL,
    CONSTRAINT lc_datosphcondominio_area_total_constrd_prvada_check CHECK (((area_total_construida_privada >= 0.0) AND (area_total_construida_privada <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_construid_cmun_check CHECK (((area_total_construida_comun >= 0.0) AND (area_total_construida_comun <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_construida_check CHECK (((area_total_construida >= 0.0) AND (area_total_construida <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_check CHECK (((area_total_terreno >= 0.0) AND (area_total_terreno <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_comun_check CHECK (((area_total_terreno_comun >= 0.0) AND (area_total_terreno_comun <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_area_total_terreno_prvada_check CHECK (((area_total_terreno_privada >= 0.0) AND (area_total_terreno_privada <= 99999999999999.98))),
    CONSTRAINT lc_datosphcondominio_numero_torres_check CHECK (((numero_torres >= 0) AND (numero_torres <= 1000))),
    CONSTRAINT lc_datosphcondominio_total_unidades_privadas_check CHECK (((total_unidades_privadas >= 0) AND (total_unidades_privadas <= 99999999)))
);
 7   DROP TABLE test_ladm_col_queries.lc_datosphcondominio;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_ladm_col_queries       postgres    false    1927            �1           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_ladm_col_queries       postgres    false    1927            �           1259    702402 
   lc_derecho    TABLE       CREATE TABLE test_ladm_col_queries.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    fraccion_derecho numeric(11,10) NOT NULL,
    fecha_inicio_tenencia date,
    descripcion character varying(255),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_derecho_fraccion_derecho_check CHECK (((fraccion_derecho >= 0.0) AND (fraccion_derecho <= 1.0)))
);
 -   DROP TABLE test_ladm_col_queries.lc_derecho;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0    COLUMN lc_derecho.tipo    COMMENT     U   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_ladm_col_queries       postgres    false    1928            �1           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1928            �1           0    0    COLUMN lc_derecho.local_id    COMMENT     ^   COMMENT ON COLUMN test_ladm_col_queries.lc_derecho.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1928            �           1259    702917    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_queries.lc_derechotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702836    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_col_queries.lc_destinacioneconomicatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703232    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.lc_dominioconstrucciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703349    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.lc_estadoconservaciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702416    lc_estructuranovedadfmi    TABLE     &  CREATE TABLE test_ladm_col_queries.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 :   DROP TABLE test_ladm_col_queries.lc_estructuranovedadfmi;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_ladm_col_queries       postgres    false    1929            �           1259    702423 !   lc_estructuranovedadnumeropredial    TABLE     >  CREATE TABLE test_ladm_col_queries.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 D   DROP TABLE test_ladm_col_queries.lc_estructuranovedadnumeropredial;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_ladm_col_queries       postgres    false    1930            �           1259    702764 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 Q   DROP TABLE test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702890    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.lc_fotoidentificaciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702431    lc_fuenteadministrativa    TABLE     0  CREATE TABLE test_ladm_col_queries.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    ente_emisor character varying(255),
    observacion character varying(255),
    numero_fuente character varying(150),
    estado_disponibilidad bigint NOT NULL,
    tipo_principal bigint,
    fecha_documento_fuente date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 :   DROP TABLE test_ladm_col_queries.lc_fuenteadministrativa;
       test_ladm_col_queries         postgres    false    1859    12            �1           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_col_queries.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1931            �1           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     k   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1931            �           1259    703205    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_col_queries.lc_fuenteadministrativatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702444    lc_fuenteespacial    TABLE       CREATE TABLE test_ladm_col_queries.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    nombre character varying(255) NOT NULL,
    tipo bigint NOT NULL,
    descripcion text NOT NULL,
    metadato text,
    estado_disponibilidad bigint NOT NULL,
    tipo_principal bigint,
    fecha_documento_fuente date,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 4   DROP TABLE test_ladm_col_queries.lc_fuenteespacial;
       test_ladm_col_queries         postgres    false    1859    12             2           0    0    TABLE lc_fuenteespacial    COMMENT        COMMENT ON TABLE test_ladm_col_queries.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_ladm_col_queries       postgres    false    1932            2           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_ladm_col_queries       postgres    false    1932            2           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     ^   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_ladm_col_queries       postgres    false    1932            2           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1932            	2           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     e   COMMENT ON COLUMN test_ladm_col_queries.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1932            �           1259    702457    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 7   DROP TABLE test_ladm_col_queries.lc_grupocalificacion;
       test_ladm_col_queries         postgres    false    1859    12            
2           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_ladm_col_queries       postgres    false    1933            2           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_ladm_col_queries       postgres    false    1933            2           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_queries.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_ladm_col_queries       postgres    false    1933            2           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     k   COMMENT ON COLUMN test_ladm_col_queries.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_ladm_col_queries       postgres    false    1933            �           1259    702908    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col_queries.lc_grupoetnicotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702467    lc_interesado    TABLE     A  CREATE TABLE test_ladm_col_queries.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    tipo_documento bigint NOT NULL,
    documento_identidad character varying(50) NOT NULL,
    primer_nombre character varying(100),
    segundo_nombre character varying(100),
    primer_apellido character varying(100),
    segundo_apellido character varying(100),
    sexo bigint,
    grupo_etnico bigint,
    razon_social character varying(255),
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 0   DROP TABLE test_ladm_col_queries.lc_interesado;
       test_ladm_col_queries         postgres    false    1859    12            2           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_ladm_col_queries       postgres    false    1934            2           0    0    COLUMN lc_interesado.tipo    COMMENT     b   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_ladm_col_queries       postgres    false    1934            2           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     o   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     w   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     o   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     q   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     s   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     u   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col_queries       postgres    false    1934            2           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     k   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_ladm_col_queries       postgres    false    1934            2           0    0    COLUMN lc_interesado.nombre    COMMENT     Z   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.nombre IS 'Nombre del interesado.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1934            2           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1934            2           0    0    COLUMN lc_interesado.local_id    COMMENT     a   COMMENT ON COLUMN test_ladm_col_queries.lc_interesado.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1934            �           1259    702481    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    telefono1 character varying(20),
    telefono2 character varying(20),
    domicilio_notificacion character varying(500),
    direccion_residencia character varying(500),
    correo_electronico character varying(100),
    autoriza_notificacion_correo boolean,
    departamento character varying(100) NOT NULL,
    municipio character varying(100) NOT NULL,
    vereda character varying(100),
    corregimiento character varying(100),
    lc_interesado bigint NOT NULL
);
 8   DROP TABLE test_ladm_col_queries.lc_interesadocontacto;
       test_ladm_col_queries         postgres    false    1859    12            2           0    0    TABLE lc_interesadocontacto    COMMENT     m   COMMENT ON TABLE test_ladm_col_queries.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_ladm_col_queries       postgres    false    1935            2           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     }   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col_queries       postgres    false    1935            2           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     }   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_ladm_col_queries       postgres    false    1935             2           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_ladm_col_queries       postgres    false    1935            !2           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_ladm_col_queries       postgres    false    1935            "2           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     {   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_ladm_col_queries       postgres    false    1935            #2           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_ladm_col_queries       postgres    false    1935            $2           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     |   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_ladm_col_queries       postgres    false    1935            %2           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     v   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_ladm_col_queries       postgres    false    1935            &2           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_ladm_col_queries       postgres    false    1935            '2           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_queries.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_ladm_col_queries       postgres    false    1935            �           1259    703106    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_col_queries.lc_interesadodocumentotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702989    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.lc_interesadotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702492 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    longitud numeric(6,1) NOT NULL,
    geometria public.geometry(LineStringZ,38820),
    localizacion_textual character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_lindero_longitud_check CHECK (((longitud >= 0.0) AND (longitud <= 10000.0)))
);
 -   DROP TABLE test_ladm_col_queries.lc_lindero;
       test_ladm_col_queries         postgres    false    1859    12            (2           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_ladm_col_queries       postgres    false    1936            )2           0    0    COLUMN lc_lindero.longitud    COMMENT     b   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_ladm_col_queries       postgres    false    1936            *2           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_ladm_col_queries       postgres    false    1936            +2           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_ladm_col_queries       postgres    false    1936            ,2           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1936            -2           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1936            .2           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1936            /2           0    0    COLUMN lc_lindero.local_id    COMMENT     ^   COMMENT ON COLUMN test_ladm_col_queries.lc_lindero.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1936            �           1259    702503    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 8   DROP TABLE test_ladm_col_queries.lc_objetoconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            02           0    0    TABLE lc_objetoconstruccion    COMMENT     ~   COMMENT ON TABLE test_ladm_col_queries.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_ladm_col_queries       postgres    false    1937            12           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_ladm_col_queries       postgres    false    1937            22           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_ladm_col_queries       postgres    false    1937            �           1259    703340    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.lc_objetoconstrucciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702512    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_oferta bigint NOT NULL,
    valor_pedido numeric(16,1) NOT NULL,
    valor_negociado numeric(16,1) NOT NULL,
    fecha_captura_oferta date NOT NULL,
    tiempo_oferta_mercado integer,
    numero_contacto_oferente character varying(20) NOT NULL,
    nombre_oferente character varying(255) NOT NULL,
    lc_predio bigint,
    CONSTRAINT lc_ofertasmercadoinmblrio_tiempo_oferta_mercado_check CHECK (((tiempo_oferta_mercado >= 0) AND (tiempo_oferta_mercado <= 1000))),
    CONSTRAINT lc_ofertasmercadoinmblrio_valor_negociado_check CHECK (((valor_negociado >= 0.0) AND (valor_negociado <= '999999999999999'::numeric))),
    CONSTRAINT lc_ofertasmercadoinmblrio_valor_pedido_check CHECK (((valor_pedido >= 0.0) AND (valor_pedido <= '999999999999999'::numeric)))
);
 @   DROP TABLE test_ladm_col_queries.lc_ofertasmercadoinmobiliario;
       test_ladm_col_queries         postgres    false    1859    12            32           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_ladm_col_queries       postgres    false    1938            42           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     ~   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_ladm_col_queries       postgres    false    1938            52           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_ladm_col_queries       postgres    false    1938            62           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_ladm_col_queries       postgres    false    1938            72           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_ladm_col_queries       postgres    false    1938            82           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_ladm_col_queries       postgres    false    1938            �           1259    702818    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_queries.lc_ofertatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702521 	   lc_predio    TABLE     8  CREATE TABLE test_ladm_col_queries.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    departamento character varying(2) NOT NULL,
    municipio character varying(3) NOT NULL,
    id_operacion character varying(30) NOT NULL,
    tiene_fmi boolean NOT NULL,
    codigo_orip character varying(3),
    matricula_inmobiliaria character varying(80),
    numero_predial character varying(30),
    numero_predial_anterior character varying(20),
    nupre character varying(11),
    avaluo_catastral numeric(16,1),
    tipo bigint NOT NULL,
    condicion_predio bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_predio_avaluo_catastral_check CHECK (((avaluo_catastral >= 0.0) AND (avaluo_catastral <= '999999999999999'::numeric)))
);
 ,   DROP TABLE test_ladm_col_queries.lc_predio;
       test_ladm_col_queries         postgres    false    1859    12            92           0    0    TABLE lc_predio    COMMENT     %  COMMENT ON TABLE test_ladm_col_queries.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_ladm_col_queries       postgres    false    1939            :2           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_ladm_col_queries       postgres    false    1939            ;2           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_ladm_col_queries       postgres    false    1939            <2           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_ladm_col_queries       postgres    false    1939            =2           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     t   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_ladm_col_queries       postgres    false    1939            >2           0    0    COLUMN lc_predio.codigo_orip    COMMENT     V   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.codigo_orip IS 'Circulo registral';
            test_ladm_col_queries       postgres    false    1939            ?2           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_ladm_col_queries       postgres    false    1939            @2           0    0    COLUMN lc_predio.numero_predial    COMMENT     (  COMMENT ON COLUMN test_ladm_col_queries.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_ladm_col_queries       postgres    false    1939            A2           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     1  COMMENT ON COLUMN test_ladm_col_queries.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_ladm_col_queries       postgres    false    1939            B2           0    0    COLUMN lc_predio.nupre    COMMENT     E  COMMENT ON COLUMN test_ladm_col_queries.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_ladm_col_queries       postgres    false    1939            C2           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_ladm_col_queries       postgres    false    1939            D2           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     p   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_ladm_col_queries       postgres    false    1939            E2           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_ladm_col_queries       postgres    false    1939            F2           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1939            G2           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1939            H2           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1939            I2           0    0    COLUMN lc_predio.local_id    COMMENT     ]   COMMENT ON COLUMN test_ladm_col_queries.lc_predio.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1939            �           1259    702663    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_col_queries.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 8   DROP TABLE test_ladm_col_queries.lc_predio_copropiedad;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702671    lc_predio_ini_predioinsumos    TABLE     
  CREATE TABLE test_ladm_col_queries.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 >   DROP TABLE test_ladm_col_queries.lc_predio_ini_predioinsumos;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703115    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_ladm_col_queries.lc_prediotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702935 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_col_queries.lc_procedimientocatastralregistraltipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702533    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_control character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    tipo_punto_control bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3) NOT NULL,
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntocontrol_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntocontrol_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 2   DROP TABLE test_ladm_col_queries.lc_puntocontrol;
       test_ladm_col_queries         postgres    false    1859    12            J2           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_ladm_col_queries       postgres    false    1940            K2           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     v   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_ladm_col_queries       postgres    false    1940            L2           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_queries       postgres    false    1940            M2           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_ladm_col_queries       postgres    false    1940            N2           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_ladm_col_queries       postgres    false    1940            O2           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT        COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_ladm_col_queries       postgres    false    1940            P2           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     r   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_queries       postgres    false    1940            Q2           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_queries       postgres    false    1940            R2           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_queries       postgres    false    1940            S2           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1940            T2           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1940            U2           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1940            V2           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_col_queries.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1940            �           1259    703268    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_ladm_col_queries.lc_puntocontroltipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702634    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_levantamiento character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    tipo_punto_levantamiento bigint NOT NULL,
    fotoidentificacion bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3),
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolevantamiento_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolevantamiento_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 8   DROP TABLE test_ladm_col_queries.lc_puntolevantamiento;
       test_ladm_col_queries         postgres    false    1859    12            W2           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_ladm_col_queries       postgres    false    1947            X2           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_ladm_col_queries       postgres    false    1947            Y2           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_queries       postgres    false    1947            Z2           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_ladm_col_queries       postgres    false    1947            [2           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col_queries       postgres    false    1947            \2           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_ladm_col_queries       postgres    false    1947            ]2           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_ladm_col_queries       postgres    false    1947            ^2           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     x   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_queries       postgres    false    1947            _2           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_queries       postgres    false    1947            `2           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_queries       postgres    false    1947            a2           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1947            b2           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1947            c2           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1947            d2           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1947            �           1259    703151    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_queries.lc_puntolevtipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702552    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    id_punto_lindero character varying(255) NOT NULL,
    puntotipo bigint NOT NULL,
    acuerdo bigint NOT NULL,
    fotoidentificacion bigint,
    exactitud_horizontal numeric(5,3) NOT NULL,
    exactitud_vertical numeric(5,3),
    posicion_interpolacion bigint,
    metodoproduccion bigint NOT NULL,
    geometria public.geometry(PointZ,38820) NOT NULL,
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_puntolindero_exactitud_horizontal_check CHECK (((exactitud_horizontal >= 0.0) AND (exactitud_horizontal <= 10.0))),
    CONSTRAINT lc_puntolindero_exactitud_vertical_check CHECK (((exactitud_vertical >= 0.0) AND (exactitud_vertical <= 10.0)))
);
 2   DROP TABLE test_ladm_col_queries.lc_puntolindero;
       test_ladm_col_queries         postgres    false    1859    12            e2           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_ladm_col_queries       postgres    false    1941            f2           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     r   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_ladm_col_queries       postgres    false    1941            g2           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_ladm_col_queries       postgres    false    1941            h2           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_ladm_col_queries       postgres    false    1941            i2           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     z   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_ladm_col_queries       postgres    false    1941            j2           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_ladm_col_queries       postgres    false    1941            k2           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_ladm_col_queries       postgres    false    1941            l2           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     r   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_ladm_col_queries       postgres    false    1941            m2           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_ladm_col_queries       postgres    false    1941            n2           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_ladm_col_queries       postgres    false    1941            o2           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1941            p2           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1941            q2           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1941            r2           0    0    COLUMN lc_puntolindero.local_id    COMMENT     c   COMMENT ON COLUMN test_ladm_col_queries.lc_puntolindero.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1941            �           1259    703052    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_ladm_col_queries.lc_puntotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702962    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_ladm_col_queries.lc_relacionprediotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702572    lc_restriccion    TABLE     R  CREATE TABLE test_ladm_col_queries.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    descripcion character varying(255),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 1   DROP TABLE test_ladm_col_queries.lc_restriccion;
       test_ladm_col_queries         postgres    false    1859    12            s2           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_ladm_col_queries       postgres    false    1942            t2           0    0    COLUMN lc_restriccion.tipo    COMMENT     n   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_ladm_col_queries       postgres    false    1942            u2           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_ladm_col_queries       postgres    false    1942            v2           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1942            w2           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1942            x2           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1942            y2           0    0    COLUMN lc_restriccion.local_id    COMMENT     b   COMMENT ON COLUMN test_ladm_col_queries.lc_restriccion.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1942            �           1259    703133    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_ladm_col_queries.lc_restricciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702998    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.lc_resultadovisitatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702679    lc_servidumbretransito    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_servidumbre numeric(15,1) NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_servidumbretransito_area_servidumbre_check CHECK (((area_servidumbre >= 0.0) AND (area_servidumbre <= 99999999999999.9)))
);
 9   DROP TABLE test_ladm_col_queries.lc_servidumbretransito;
       test_ladm_col_queries         postgres    false    1859    12            z2           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_ladm_col_queries       postgres    false    1951            {2           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     u   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_ladm_col_queries       postgres    false    1951            |2           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     f   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_ladm_col_queries       postgres    false    1951            }2           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1951            ~2           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1951            2           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_queries       postgres    false    1951            �2           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1951            �2           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1951            �2           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1951            �2           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     j   COMMENT ON COLUMN test_ladm_col_queries.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1951            �           1259    703043    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_ladm_col_queries.lc_sexotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702586 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    area_terreno numeric(15,1) NOT NULL,
    avaluo_terreno numeric(16,1),
    manzana_vereda_codigo character varying(21),
    geometria public.geometry(MultiPolygonZ,38820) NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_terreno_area_terreno_check CHECK (((area_terreno >= 0.0) AND (area_terreno <= 99999999999999.9))),
    CONSTRAINT lc_terreno_avaluo_terreno_check CHECK (((avaluo_terreno >= 0.0) AND (avaluo_terreno <= '999999999999999'::numeric)))
);
 -   DROP TABLE test_ladm_col_queries.lc_terreno;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE lc_terreno    COMMENT     t   COMMENT ON TABLE test_ladm_col_queries.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_ladm_col_queries       postgres    false    1943            �2           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     ^  COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0    COLUMN lc_terreno.dimension    COMMENT     Z   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0    COLUMN lc_terreno.etiqueta    COMMENT     u   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1943            �2           0    0    COLUMN lc_terreno.local_id    COMMENT     ^   COMMENT ON COLUMN test_ladm_col_queries.lc_terreno.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1943            �           1259    702654    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_ladm_col_queries.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 ;   DROP TABLE test_ladm_col_queries.lc_tipologiaconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col_queries       postgres    false    1948            �2           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_ladm_col_queries       postgres    false    1948            �           1259    703223    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_ladm_col_queries.lc_tipologiatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702692    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_col_queries.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    identificador character varying(3) NOT NULL,
    tipo_dominio bigint,
    tipo_construccion bigint,
    tipo_unidad_construccion bigint NOT NULL,
    tipo_planta bigint NOT NULL,
    planta_ubicacion integer NOT NULL,
    total_habitaciones integer,
    total_banios integer,
    total_locales integer,
    total_pisos integer,
    uso bigint,
    anio_construccion integer,
    avaluo_unidad_construccion numeric(16,1),
    area_construida numeric(15,1) NOT NULL,
    area_privada_construida numeric(15,1),
    altura integer,
    observaciones text,
    lc_construccion bigint NOT NULL,
    dimension bigint,
    etiqueta character varying(255),
    relacion_superficie bigint,
    geometria public.geometry(MultiPolygonZ,38820),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL,
    CONSTRAINT lc_unidadconstruccion_altura_check CHECK (((altura >= 1) AND (altura <= 1000))),
    CONSTRAINT lc_unidadconstruccion_anio_construccion_check CHECK (((anio_construccion >= 1512) AND (anio_construccion <= 2500))),
    CONSTRAINT lc_unidadconstruccion_area_construida_check CHECK (((area_construida >= 0.0) AND (area_construida <= 99999999999999.9))),
    CONSTRAINT lc_unidadconstruccion_area_privada_construida_check CHECK (((area_privada_construida >= 0.0) AND (area_privada_construida <= 99999999999999.9))),
    CONSTRAINT lc_unidadconstruccion_avaluo_unidad_constrccion_check CHECK (((avaluo_unidad_construccion >= 0.0) AND (avaluo_unidad_construccion <= '999999999999999'::numeric))),
    CONSTRAINT lc_unidadconstruccion_planta_ubicacion_check CHECK (((planta_ubicacion >= 0) AND (planta_ubicacion <= 500))),
    CONSTRAINT lc_unidadconstruccion_total_banios_check CHECK (((total_banios >= 0) AND (total_banios <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_habitaciones_check CHECK (((total_habitaciones >= 0) AND (total_habitaciones <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_locales_check CHECK (((total_locales >= 0) AND (total_locales <= 999999))),
    CONSTRAINT lc_unidadconstruccion_total_pisos_check CHECK (((total_pisos >= 0) AND (total_pisos <= 150)))
);
 8   DROP TABLE test_ladm_col_queries.lc_unidadconstruccion;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     w   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     e   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_ladm_col_queries       postgres    false    1952            �2           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     i   COMMENT ON COLUMN test_ladm_col_queries.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_ladm_col_queries       postgres    false    1952            �           1259    703079    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_ladm_col_queries.lc_unidadconstrucciontipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703187    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_ladm_col_queries.lc_usouconstipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702845 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_col_queries.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_ladm_col_queries.lc_viatipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703214    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.snr_calidadderechotipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    703250    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_col_queries.snr_clasepredioregistrotipo;
       test_ladm_col_queries         postgres    false    1859    12            |           1259    702277    snr_derecho    TABLE     g  CREATE TABLE test_ladm_col_queries.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 .   DROP TABLE test_ladm_col_queries.snr_derecho;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_derecho    COMMENT     _   COMMENT ON TABLE test_ladm_col_queries.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_ladm_col_queries       postgres    false    1916            �2           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     r   COMMENT ON COLUMN test_ladm_col_queries.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_ladm_col_queries       postgres    false    1916            �2           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_ladm_col_queries       postgres    false    1916            �           1259    703322    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_ladm_col_queries.snr_documentotitulartipo;
       test_ladm_col_queries         postgres    false    1859    12            }           1259    702286    snr_estructuramatriculamatriz    TABLE     G  CREATE TABLE test_ladm_col_queries.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 @   DROP TABLE test_ladm_col_queries.snr_estructuramatriculamatriz;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col_queries       postgres    false    1917            �2           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col_queries       postgres    false    1917            �2           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_ladm_col_queries       postgres    false    1917            ~           1259    702293    snr_fuentecabidalinderos    TABLE     u  CREATE TABLE test_ladm_col_queries.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 ;   DROP TABLE test_ladm_col_queries.snr_fuentecabidalinderos;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_ladm_col_queries       postgres    false    1918            �2           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_queries       postgres    false    1918            �2           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col_queries       postgres    false    1918            �2           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_queries       postgres    false    1918            �2           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col_queries       postgres    false    1918                       1259    702303    snr_fuentederecho    TABLE     n  CREATE TABLE test_ladm_col_queries.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 4   DROP TABLE test_ladm_col_queries.snr_fuentederecho;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_fuentederecho    COMMENT     k   COMMENT ON TABLE test_ladm_col_queries.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_ladm_col_queries       postgres    false    1919            �2           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_ladm_col_queries       postgres    false    1919            �2           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_ladm_col_queries       postgres    false    1919            �2           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_ladm_col_queries       postgres    false    1919            �2           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_ladm_col_queries       postgres    false    1919            �           1259    702782    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_ladm_col_queries.snr_fuentetipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702791    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_ladm_col_queries.snr_personatitulartipo;
       test_ladm_col_queries         postgres    false    1859    12            �           1259    702324    snr_predioregistro    TABLE     7  CREATE TABLE test_ladm_col_queries.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_orip character varying(3),
    matricula_inmobiliaria character varying(80),
    numero_predial_nuevo_en_fmi character varying(100),
    numero_predial_anterior_en_fmi character varying(100),
    nomenclatura_registro character varying(255),
    cabida_linderos text,
    clase_suelo_registro bigint,
    fecha_datos date NOT NULL,
    snr_fuente_cabidalinderos bigint
);
 5   DROP TABLE test_ladm_col_queries.snr_predioregistro;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_predioregistro    COMMENT     h   COMMENT ON TABLE test_ladm_col_queries.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     P  COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     T  COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_ladm_col_queries       postgres    false    1921            �2           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     o   COMMENT ON COLUMN test_ladm_col_queries.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_ladm_col_queries       postgres    false    1921            �           1259    702313    snr_titular    TABLE     �  CREATE TABLE test_ladm_col_queries.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 .   DROP TABLE test_ladm_col_queries.snr_titular;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_titular    COMMENT     l   COMMENT ON TABLE test_ladm_col_queries.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0    COLUMN snr_titular.tipo_persona    COMMENT     W   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.tipo_persona IS 'Tipo de persona';
            test_ladm_col_queries       postgres    false    1920            �2           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     m   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     r   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0    COLUMN snr_titular.nombres    COMMENT     a   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.nombres IS 'Nombres de la persona física.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     q   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     s   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_ladm_col_queries       postgres    false    1920            �2           0    0    COLUMN snr_titular.razon_social    COMMENT     }   COMMENT ON COLUMN test_ladm_col_queries.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_ladm_col_queries       postgres    false    1920            �           1259    702335    snr_titular_derecho    TABLE     2  CREATE TABLE test_ladm_col_queries.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_col_queries.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 6   DROP TABLE test_ladm_col_queries.snr_titular_derecho;
       test_ladm_col_queries         postgres    false    1859    12            �2           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_col_queries.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_ladm_col_queries       postgres    false    1922            �           1259    703366    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.t_ili2db_attrname;
       test_ladm_col_queries         postgres    false    12            �           1259    702711    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_col_queries.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 2   DROP TABLE test_ladm_col_queries.t_ili2db_basket;
       test_ladm_col_queries         postgres    false    12            �           1259    703358    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 5   DROP TABLE test_ladm_col_queries.t_ili2db_classname;
       test_ladm_col_queries         postgres    false    12            �           1259    703374    t_ili2db_column_prop    TABLE       CREATE TABLE test_ladm_col_queries.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 7   DROP TABLE test_ladm_col_queries.t_ili2db_column_prop;
       test_ladm_col_queries         postgres    false    12            �           1259    702720    t_ili2db_dataset    TABLE     z   CREATE TABLE test_ladm_col_queries.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 3   DROP TABLE test_ladm_col_queries.t_ili2db_dataset;
       test_ladm_col_queries         postgres    false    12            �           1259    702725    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 7   DROP TABLE test_ladm_col_queries.t_ili2db_inheritance;
       test_ladm_col_queries         postgres    false    12            �           1259    703386    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_col_queries.t_ili2db_meta_attrs;
       test_ladm_col_queries         postgres    false    12            �           1259    702747    t_ili2db_model    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 1   DROP TABLE test_ladm_col_queries.t_ili2db_model;
       test_ladm_col_queries         postgres    false    12            �           1259    702733    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 4   DROP TABLE test_ladm_col_queries.t_ili2db_settings;
       test_ladm_col_queries         postgres    false    12            �           1259    703380    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 6   DROP TABLE test_ladm_col_queries.t_ili2db_table_prop;
       test_ladm_col_queries         postgres    false    12            �           1259    702741    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_col_queries.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 1   DROP TABLE test_ladm_col_queries.t_ili2db_trafo;
       test_ladm_col_queries         postgres    false    12            ?0          0    701769    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_col_queries.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_ladm_col_queries       postgres    false    1864   ��	      �0          0    702881    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_col_queries.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1973   ��	      �0          0    703088    col_areatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1996   ��	      @0          0    701776    col_areavalor 
   TABLE DATA               �   COPY test_ladm_col_queries.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_ladm_col_queries       postgres    false    1865   ��	      [0          0    702045    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_col_queries.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_ladm_col_queries       postgres    false    1892   ��	      Q0          0    701954    col_baunitfuente 
   TABLE DATA               c   COPY test_ladm_col_queries.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_ladm_col_queries       postgres    false    1882   ��	      S0          0    701969    col_cclfuente 
   TABLE DATA               ]   COPY test_ladm_col_queries.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_ladm_col_queries       postgres    false    1884   �	      W0          0    702009    col_clfuente 
   TABLE DATA               W   COPY test_ladm_col_queries.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col_queries       postgres    false    1888   2�	      �0          0    703070    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1994   O�	      �0          0    702899    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1975   T�	      �0          0    703016    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1988   ��	      �0          0    703313    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2021   ��	      �0          0    703097    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1997   A�	      �0          0    703124    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2000   ��	      �0          0    702926    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1978   ��	      �0          0    702971    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1983   ��	      �0          0    703007    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1987   ��	      �0          0    702800    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1964   B�	      U0          0    701988 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1886   ��	      Y0          0    702026 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_mascl (t_id, t_ili_tid, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1890   ��	      T0          0    701977    col_menosccl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1885   �	      X0          0    702016    col_menoscl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_menoscl (t_id, t_ili_tid, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1889   +�	      �0          0    703331    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2023   H�	      ^0          0    702072    col_miembros 
   TABLE DATA               �   COPY test_ladm_col_queries.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_ladm_col_queries       postgres    false    1895   {�	      V0          0    701999    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_puntoccl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero, ccl) FROM stdin;
    test_ladm_col_queries       postgres    false    1887   ��	      Z0          0    702036    col_puntocl 
   TABLE DATA               �   COPY test_ladm_col_queries.col_puntocl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_ladm_col_queries       postgres    false    1891   M�	      O0          0    701933    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_col_queries.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_ladm_col_queries       postgres    false    1880   j�	      �0          0    702755    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1959   ��	      �0          0    702980    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1984   ��	      �0          0    703142    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2002   ��	      M0          0    701918    col_relacionfuente 
   TABLE DATA               c   COPY test_ladm_col_queries.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_ladm_col_queries       postgres    false    1878   �	      R0          0    701962    col_relacionfuenteuespacial 
   TABLE DATA               f   COPY test_ladm_col_queries.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_ladm_col_queries       postgres    false    1883   <�	      �0          0    703034    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1990   Y�	      \0          0    702054    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_col_queries.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col_queries       postgres    false    1893   ��	      K0          0    701898    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_col_queries.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_ladm_col_queries       postgres    false    1876   �	      ]0          0    702063    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_col_queries.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_ladm_col_queries       postgres    false    1894   ��	      C0          0    701819    col_transformacion 
   TABLE DATA               �   COPY test_ladm_col_queries.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_ladm_col_queries       postgres    false    1868   ��	      L0          0    701907    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_col_queries.col_uebaunit (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, baunit) FROM stdin;
    test_ladm_col_queries       postgres    false    1877   ��	      P0          0    701943    col_uefuente 
   TABLE DATA               �   COPY test_ladm_col_queries.col_uefuente (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, fuente_espacial) FROM stdin;
    test_ladm_col_queries       postgres    false    1881   ��	      J0          0    701888    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_ueuegrupo (t_id, t_ili_tid, parte_lc_construccion, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1875    �	      �0          0    702809 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1965   �	      �0          0    702854    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1970   ��	      N0          0    701925    col_unidadfuente 
   TABLE DATA               i   COPY test_ladm_col_queries.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_ladm_col_queries       postgres    false    1879   	�	      �0          0    703241    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_col_queries.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2013   &�	      I0          0    701877    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_col_queries.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_ladm_col_queries       postgres    false    1874   ��	      H0          0    701865 
   extarchivo 
   TABLE DATA                 COPY test_ladm_col_queries.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1873   ��	      A0          0    701790    extdireccion 
   TABLE DATA               )  COPY test_ladm_col_queries.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1866   ��	      �0          0    703286     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_col_queries.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2018   ��	      �0          0    703025    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_col_queries.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1989   ��	      �0          0    702773    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_col_queries.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1961   5�	      �0          0    703196    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_col_queries.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2008   ��	      F0          0    701847    extinteresado 
   TABLE DATA               �   COPY test_ladm_col_queries.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_ladm_col_queries       postgres    false    1871   5�	      G0          0    701859    extredserviciosfisica 
   TABLE DATA               V   COPY test_ladm_col_queries.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_ladm_col_queries       postgres    false    1872   R�	      D0          0    701832    extunidadedificacionfisica 
   TABLE DATA               P   COPY test_ladm_col_queries.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_ladm_col_queries       postgres    false    1869   o�	      B0          0    701811    fraccion 
   TABLE DATA               �   COPY test_ladm_col_queries.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_ladm_col_queries       postgres    false    1867   ��	      _0          0    702081 	   gc_barrio 
   TABLE DATA               m   COPY test_ladm_col_queries.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1896   ��	      `0          0    702091 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1897   ��	      a0          0    702101    gc_comisionesconstruccion 
   TABLE DATA               n   COPY test_ladm_col_queries.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1898   �	      b0          0    702111    gc_comisionesterreno 
   TABLE DATA               i   COPY test_ladm_col_queries.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1899   !�	      c0          0    702121    gc_comisionesunidadconstruccion 
   TABLE DATA               t   COPY test_ladm_col_queries.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1900   >�	      �0          0    703178    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2006   [�	      d0          0    702131    gc_construccion 
   TABLE DATA                 COPY test_ladm_col_queries.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1901   `�	      r0          0    702269    gc_copropiedad 
   TABLE DATA               l   COPY test_ladm_col_queries.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_ladm_col_queries       postgres    false    1915   }�	      e0          0    702143    gc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col_queries.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1902   ��	      f0          0    702150    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_ladm_col_queries       postgres    false    1903   ��	      g0          0    702157    gc_direccion 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_ladm_col_queries       postgres    false    1904   ��	      h0          0    702168    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1905   ��	      i0          0    702175 
   gc_manzana 
   TABLE DATA               w   COPY test_ladm_col_queries.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1906    
      j0          0    702185    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1907   + 
      q0          0    702258    gc_prediocatastro 
   TABLE DATA                 COPY test_ladm_col_queries.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_ladm_col_queries       postgres    false    1914   H 
      k0          0    702195    gc_propietario 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_ladm_col_queries       postgres    false    1908   e 
      l0          0    702205    gc_sectorrural 
   TABLE DATA               [   COPY test_ladm_col_queries.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1909   � 
      m0          0    702215    gc_sectorurbano 
   TABLE DATA               \   COPY test_ladm_col_queries.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1910   � 
      �0          0    702953    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1981   � 
      n0          0    702225 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1911   r
      o0          0    702236    gc_unidadconstruccion 
   TABLE DATA               ;  COPY test_ladm_col_queries.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1912   �
      �0          0    702827    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1967   �
      p0          0    702248 	   gc_vereda 
   TABLE DATA               ~   COPY test_ladm_col_queries.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_ladm_col_queries       postgres    false    1913   y
      <0          0    701746    gm_multisurface2d 
   TABLE DATA               G   COPY test_ladm_col_queries.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_ladm_col_queries       postgres    false    1861   �
      >0          0    701763    gm_multisurface3d 
   TABLE DATA               G   COPY test_ladm_col_queries.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_ladm_col_queries       postgres    false    1863   �
      ;0          0    701735    gm_surface2dlistvalue 
   TABLE DATA               o   COPY test_ladm_col_queries.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_ladm_col_queries       postgres    false    1860   �
      =0          0    701752    gm_surface3dlistvalue 
   TABLE DATA               o   COPY test_ladm_col_queries.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_ladm_col_queries       postgres    false    1862   �
      E0          0    701838    imagen 
   TABLE DATA               �   COPY test_ladm_col_queries.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_ladm_col_queries       postgres    false    1870   

      �0          0    702872    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1972   '
      z0          0    702343    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_col_queries.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_ladm_col_queries       postgres    false    1923   m
      �0          0    703160    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2004   �
      {0          0    702355    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1924   .
      �0          0    703169    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2005   �
      �0          0    702599    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1944   Z
      �0          0    702608    lc_calificacionnoconvencional 
   TABLE DATA               {   COPY test_ladm_col_queries.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1945   w
      �0          0    703259    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2015   �
      �0          0    702863    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1971   d
      �0          0    703295    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2019   �
      �0          0    702944    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1980   0
      �0          0    703304    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2020   B 
      |0          0    702366    lc_construccion 
   TABLE DATA               �  COPY test_ladm_col_queries.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1925   O#
      �0          0    703061    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1993   8+
      �0          0    703277    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2017   �,
      }0          0    702381    lc_contactovisita 
   TABLE DATA               ~  COPY test_ladm_col_queries.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_ladm_col_queries       postgres    false    1926   �-
      �0          0    702617 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1946   �-
      ~0          0    702394    lc_datosphcondominio 
   TABLE DATA                 COPY test_ladm_col_queries.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1927   �-
      0          0    702402 
   lc_derecho 
   TABLE DATA                 COPY test_ladm_col_queries.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1928   �-
      �0          0    702917    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1977   l5
      �0          0    702836    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1968   48
      �0          0    703232    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2012   �C
      �0          0    703349    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2025   VD
      �0          0    702416    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_ladm_col_queries       postgres    false    1929   G
      �0          0    702423 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_ladm_col_queries       postgres    false    1930   5G
      �0          0    702764 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1960   RG
      �0          0    702890    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1974   GH
      �0          0    702431    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1931   +I
      �0          0    703205    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2009   �N
      �0          0    702444    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1932   WQ
      �0          0    702457    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_ladm_col_queries       postgres    false    1933   �Q
      �0          0    702908    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1976   �Q
      �0          0    702467    lc_interesado 
   TABLE DATA               /  COPY test_ladm_col_queries.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1934   �V
      �0          0    702481    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_col_queries.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_ladm_col_queries       postgres    false    1935   �^
      �0          0    703106    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1998   �_
      �0          0    702989    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1985   �b
      �0          0    702492 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1936   �c
      �0          0    702503    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_ladm_col_queries       postgres    false    1937   z�
      �0          0    703340    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2024   ��
      �0          0    702512    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1938   p�
      �0          0    702818    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1966   ��
      �0          0    702521 	   lc_predio 
   TABLE DATA               M  COPY test_ladm_col_queries.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1939   }�
      �0          0    702663    lc_predio_copropiedad 
   TABLE DATA               Y   COPY test_ladm_col_queries.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_ladm_col_queries       postgres    false    1949   =�
      �0          0    702671    lc_predio_ini_predioinsumos 
   TABLE DATA               t   COPY test_ladm_col_queries.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_ladm_col_queries       postgres    false    1950   Z�
      �0          0    703115    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1999   w�
      �0          0    702935 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1979   ��
      �0          0    702533    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_col_queries.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1940   ߮
      �0          0    703268    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2016   ��
      �0          0    702634    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_col_queries.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1947   �
      �0          0    703151    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2003   ��
      �0          0    702552    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_col_queries.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1941   `�
      �0          0    703052    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1992   P�
      �0          0    702962    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1982   -       �0          0    702572    lc_restriccion 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1942   r      �0          0    703133    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2001   �      �0          0    702998    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1986   �      �0          0    702679    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1951   �      �0          0    703043    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1991   �      �0          0    702586 
   lc_terreno 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1943   u      �0          0    702654    lc_tipologiaconstruccion 
   TABLE DATA               z   COPY test_ladm_col_queries.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_ladm_col_queries       postgres    false    1948   �1      �0          0    703223    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2011   �1      �0          0    702692    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_col_queries.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_ladm_col_queries       postgres    false    1952   �7      �0          0    703079    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1995   �D      �0          0    703187    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2007   �E      �0          0    702845 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_col_queries.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1969   d      �0          0    703214    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2010   <i      �0          0    703250    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2014   �m      s0          0    702277    snr_derecho 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_ladm_col_queries       postgres    false    1916   p      �0          0    703322    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    2022   �p      t0          0    702286    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_ladm_col_queries       postgres    false    1917   �s      u0          0    702293    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col_queries       postgres    false    1918   �s      v0          0    702303    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_ladm_col_queries       postgres    false    1919   t      �0          0    702782    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1962    t      �0          0    702791    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_ladm_col_queries       postgres    false    1963   �v      x0          0    702324    snr_predioregistro 
   TABLE DATA                 COPY test_ladm_col_queries.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_ladm_col_queries       postgres    false    1921   �w      w0          0    702313    snr_titular 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_ladm_col_queries       postgres    false    1920   �w      y0          0    702335    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_col_queries.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_ladm_col_queries       postgres    false    1922   
x      �0          0    703366    t_ili2db_attrname 
   TABLE DATA               ^   COPY test_ladm_col_queries.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_ladm_col_queries       postgres    false    2027   'x      �0          0    702711    t_ili2db_basket 
   TABLE DATA               q   COPY test_ladm_col_queries.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_ladm_col_queries       postgres    false    1953   ��      �0          0    703358    t_ili2db_classname 
   TABLE DATA               M   COPY test_ladm_col_queries.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_ladm_col_queries       postgres    false    2026   m�      �0          0    703374    t_ili2db_column_prop 
   TABLE DATA               k   COPY test_ladm_col_queries.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_ladm_col_queries       postgres    false    2028   ��      �0          0    702720    t_ili2db_dataset 
   TABLE DATA               L   COPY test_ladm_col_queries.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_ladm_col_queries       postgres    false    1954   �      �0          0    702725    t_ili2db_inheritance 
   TABLE DATA               S   COPY test_ladm_col_queries.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_ladm_col_queries       postgres    false    1955   L�      �0          0    703386    t_ili2db_meta_attrs 
   TABLE DATA               _   COPY test_ladm_col_queries.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_ladm_col_queries       postgres    false    2030   �      �0          0    702747    t_ili2db_model 
   TABLE DATA               m   COPY test_ladm_col_queries.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_ladm_col_queries       postgres    false    1958   �      �0          0    702733    t_ili2db_settings 
   TABLE DATA               H   COPY test_ladm_col_queries.t_ili2db_settings (tag, setting) FROM stdin;
    test_ladm_col_queries       postgres    false    1956   <�      �0          0    703380    t_ili2db_table_prop 
   TABLE DATA               U   COPY test_ladm_col_queries.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_ladm_col_queries       postgres    false    2029   7�      �0          0    702741    t_ili2db_trafo 
   TABLE DATA               N   COPY test_ladm_col_queries.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_ladm_col_queries       postgres    false    1957   �      �2           0    0    t_ili2db_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('test_ladm_col_queries.t_ili2db_seq', 3071, true);
            test_ladm_col_queries       postgres    false    1859            �,           2606    701774 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_ladm_col_queries         postgres    false    1864            e.           2606    702889 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_queries.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_ladm_col_queries         postgres    false    1973            �.           2606    703096    col_areatipo col_areatipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_ladm_col_queries         postgres    false    1996            �,           2606    701784     col_areavalor col_areavalor_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_ladm_col_queries         postgres    false    1865            $-           2606    702050 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_ladm_col_queries         postgres    false    1892            �,           2606    701959 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_ladm_col_queries         postgres    false    1882            �,           2606    701974     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_ladm_col_queries         postgres    false    1884            -           2606    702014    col_clfuente col_clfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_ladm_col_queries         postgres    false    1888            �.           2606    703078 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_ladm_col_queries         postgres    false    1994            i.           2606    702907 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_ladm_col_queries         postgres    false    1975            �.           2606    703024 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_queries.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_ladm_col_queries         postgres    false    1988            �.           2606    703321 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_ladm_col_queries         postgres    false    2021            �.           2606    703105 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_ladm_col_queries         postgres    false    1997            �.           2606    703132 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_col_queries.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_ladm_col_queries         postgres    false    2000            o.           2606    702934 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_ladm_col_queries         postgres    false    1978            y.           2606    702979 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_queries.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_ladm_col_queries         postgres    false    1983            �.           2606    703015 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_ladm_col_queries         postgres    false    1987            S.           2606    702808 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_ladm_col_queries         postgres    false    1964            -           2606    701993    col_masccl col_masccl_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_ladm_col_queries         postgres    false    1886            -           2606    702031    col_mascl col_mascl_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_queries.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_queries.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_ladm_col_queries         postgres    false    1890            �,           2606    701982    col_menosccl col_menosccl_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_ladm_col_queries         postgres    false    1885            -           2606    702021    col_menoscl col_menoscl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_ladm_col_queries         postgres    false    1889            �.           2606    703339 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_ladm_col_queries         postgres    false    2023            4-           2606    702077    col_miembros col_miembros_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_ladm_col_queries         postgres    false    1895            	-           2606    702004    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_ladm_col_queries         postgres    false    1887            -           2606    702041    col_puntocl col_puntocl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_ladm_col_queries         postgres    false    1891            �,           2606    701938 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_ladm_col_queries         postgres    false    1880            I.           2606    702763     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_ladm_col_queries         postgres    false    1959            {.           2606    702988 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_queries.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_queries.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_ladm_col_queries         postgres    false    1984            �.           2606    703150 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_ladm_col_queries         postgres    false    2002            �,           2606    701923 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_ladm_col_queries         postgres    false    1878            �,           2606    701967 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_ladm_col_queries         postgres    false    1883            �.           2606    703042 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_ladm_col_queries         postgres    false    1990            *-           2606    702059 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_ladm_col_queries         postgres    false    1893            �,           2606    701903     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_ladm_col_queries         postgres    false    1876            --           2606    702068 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_ladm_col_queries         postgres    false    1894            �,           2606    701827 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_ladm_col_queries         postgres    false    1868            �,           2606    701912    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_ladm_col_queries         postgres    false    1877            �,           2606    701948    col_uefuente col_uefuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_ladm_col_queries         postgres    false    1881            �,           2606    701893     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_ladm_col_queries         postgres    false    1875            U.           2606    702817 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_ladm_col_queries         postgres    false    1965            _.           2606    702862 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_ladm_col_queries         postgres    false    1970            �,           2606    701930 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_ladm_col_queries         postgres    false    1879            �.           2606    703249 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_ladm_col_queries         postgres    false    2013            �,           2606    701882 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_ladm_col_queries         postgres    false    1874            �,           2606    701873    extarchivo extarchivo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_ladm_col_queries         postgres    false    1873            �.           2606    703294 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_col_queries.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_ladm_col_queries         postgres    false    2018            �,           2606    701798    extdireccion extdireccion_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_ladm_col_queries         postgres    false    1866            �.           2606    703033 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_ladm_col_queries         postgres    false    1989            M.           2606    702781 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_ladm_col_queries         postgres    false    1961            �.           2606    703204 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_ladm_col_queries         postgres    false    2008            �,           2606    701855     extinteresado extinteresado_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_ladm_col_queries         postgres    false    1871            �,           2606    701864 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_ladm_col_queries         postgres    false    1872            �,           2606    701837 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_ladm_col_queries         postgres    false    1869            �,           2606    701816    fraccion fraccion_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_ladm_col_queries.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_ladm_col_queries.fraccion DROP CONSTRAINT fraccion_pkey;
       test_ladm_col_queries         postgres    false    1867            7-           2606    702089    gc_barrio gc_barrio_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_queries.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_queries.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_ladm_col_queries         postgres    false    1896            9-           2606    702099 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1897            =-           2606    702109 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1898            @-           2606    702119 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_ladm_col_queries         postgres    false    1899            C-           2606    702129 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_col_queries.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1900            �.           2606    703186 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_ladm_col_queries         postgres    false    2006            G-           2606    702139 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_ladm_col_queries         postgres    false    1901            y-           2606    702274 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_ladm_col_queries         postgres    false    1915            K-           2606    702148 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_queries.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_queries.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_ladm_col_queries         postgres    false    1902            N-           2606    702155 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_ladm_col_queries         postgres    false    1903            R-           2606    702165    gc_direccion gc_direccion_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_ladm_col_queries         postgres    false    1904            U-           2606    702173 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_ladm_col_queries         postgres    false    1905            X-           2606    702183    gc_manzana gc_manzana_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_ladm_col_queries         postgres    false    1906            [-           2606    702193    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_ladm_col_queries         postgres    false    1907            s-           2606    702266 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_ladm_col_queries         postgres    false    1914            ^-           2606    702203 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_ladm_col_queries         postgres    false    1908            a-           2606    702213 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_ladm_col_queries         postgres    false    1909            d-           2606    702223 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_ladm_col_queries         postgres    false    1910            u.           2606    702961 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_col_queries.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_ladm_col_queries         postgres    false    1981            h-           2606    702233    gc_terreno gc_terreno_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_ladm_col_queries         postgres    false    1911            l-           2606    702244 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1912            Y.           2606    702835 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_ladm_col_queries         postgres    false    1967            p-           2606    702256    gc_vereda gc_vereda_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_queries.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_queries.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_ladm_col_queries         postgres    false    1913            �,           2606    701751 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_ladm_col_queries         postgres    false    1861            �,           2606    701768 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_ladm_col_queries         postgres    false    1863            �,           2606    701743 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_ladm_col_queries         postgres    false    1860            �,           2606    701760 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_ladm_col_queries         postgres    false    1862            �,           2606    701843    imagen imagen_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_ladm_col_queries.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 K   ALTER TABLE ONLY test_ladm_col_queries.imagen DROP CONSTRAINT imagen_pkey;
       test_ladm_col_queries         postgres    false    1870            c.           2606    702880 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_ladm_col_queries         postgres    false    1972            �-           2606    702351 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_ladm_col_queries         postgres    false    1923            �.           2606    703168 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_ladm_col_queries         postgres    false    2004            �-           2606    702364 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_ladm_col_queries         postgres    false    1924            �.           2606    703177    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_ladm_col_queries         postgres    false    2005            .           2606    702605 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_ladm_col_queries         postgres    false    1944            .           2606    702614 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_ladm_col_queries         postgres    false    1945            �.           2606    703267 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_ladm_col_queries         postgres    false    2015            a.           2606    702871 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_ladm_col_queries         postgres    false    1971            �.           2606    703303 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_ladm_col_queries         postgres    false    2019            s.           2606    702952 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_ladm_col_queries         postgres    false    1980            �.           2606    703312 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_ladm_col_queries         postgres    false    2020            �-           2606    702375 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_ladm_col_queries         postgres    false    1925            �.           2606    703069 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_ladm_col_queries         postgres    false    1993            �.           2606    703285 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_queries.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_queries.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_ladm_col_queries         postgres    false    2017            �-           2606    702390 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_ladm_col_queries         postgres    false    1926            
.           2606    702626 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_ladm_col_queries         postgres    false    1946            �-           2606    702400 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_queries.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_ladm_col_queries         postgres    false    1927            �-           2606    702411    lc_derecho lc_derecho_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_ladm_col_queries         postgres    false    1928            m.           2606    702925 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_ladm_col_queries         postgres    false    1977            [.           2606    702844 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_ladm_col_queries         postgres    false    1968            �.           2606    703240 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_ladm_col_queries         postgres    false    2012            �.           2606    703357 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_ladm_col_queries         postgres    false    2025            �-           2606    702421 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_ladm_col_queries         postgres    false    1929            �-           2606    702428 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_ladm_col_queries         postgres    false    1930            K.           2606    702772 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_ladm_col_queries         postgres    false    1960            g.           2606    702898 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_ladm_col_queries         postgres    false    1974            �-           2606    702440 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_ladm_col_queries         postgres    false    1931            �.           2606    703213 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_ladm_col_queries         postgres    false    2009            �-           2606    702453 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_ladm_col_queries         postgres    false    1932            �-           2606    702463 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_ladm_col_queries         postgres    false    1933            k.           2606    702916 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_ladm_col_queries         postgres    false    1976            �-           2606    702476     lc_interesado lc_interesado_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_ladm_col_queries         postgres    false    1934            �-           2606    702490 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_ladm_col_queries         postgres    false    1935            �.           2606    703114 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_ladm_col_queries         postgres    false    1998            }.           2606    702997 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_ladm_col_queries         postgres    false    1985            �-           2606    702501    lc_lindero lc_lindero_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_ladm_col_queries         postgres    false    1936            �-           2606    702509 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1937            �.           2606    703348 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_ladm_col_queries         postgres    false    2024            �-           2606    702518 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_ladm_col_queries         postgres    false    1938            W.           2606    702826     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_ladm_col_queries         postgres    false    1966            $.           2606    702668 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_ladm_col_queries         postgres    false    1949            *.           2606    702676 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_ladm_col_queries         postgres    false    1950            �-           2606    702530    lc_predio lc_predio_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_ladm_col_queries.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_ladm_col_queries.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_ladm_col_queries         postgres    false    1939            �.           2606    703123     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_ladm_col_queries.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_ladm_col_queries.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_ladm_col_queries         postgres    false    1999            q.           2606    702943 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_ladm_col_queries         postgres    false    1979            �-           2606    702542 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_ladm_col_queries         postgres    false    1940            �.           2606    703276 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_ladm_col_queries         postgres    false    2016            .           2606    702643 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_ladm_col_queries         postgres    false    1947            �.           2606    703159 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_ladm_col_queries         postgres    false    2003            �-           2606    702561 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_ladm_col_queries         postgres    false    1941            �.           2606    703060    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_ladm_col_queries.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_ladm_col_queries.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_ladm_col_queries         postgres    false    1992            w.           2606    702970 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_ladm_col_queries         postgres    false    1982            �-           2606    702581 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_ladm_col_queries         postgres    false    1942            �.           2606    703141 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_ladm_col_queries         postgres    false    2001            .           2606    703006 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_ladm_col_queries         postgres    false    1986            ..           2606    702688 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_ladm_col_queries         postgres    false    1951            �.           2606    703051    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_queries.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_queries.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_ladm_col_queries         postgres    false    1991            �-           2606    702595    lc_terreno lc_terreno_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_ladm_col_queries         postgres    false    1943             .           2606    702660 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1948            �.           2606    703231 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_ladm_col_queries         postgres    false    2011            4.           2606    702701 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_ladm_col_queries         postgres    false    1952            �.           2606    703087 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_ladm_col_queries         postgres    false    1995            �.           2606    703195 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_ladm_col_queries         postgres    false    2007            ].           2606    702853    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_ladm_col_queries.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_ladm_col_queries.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_ladm_col_queries         postgres    false    1969            �.           2606    703222 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_ladm_col_queries         postgres    false    2010            �.           2606    703258 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_col_queries.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_ladm_col_queries         postgres    false    2014            |-           2606    702282    snr_derecho snr_derecho_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_ladm_col_queries         postgres    false    1916            �.           2606    703330 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_ladm_col_queries         postgres    false    2022            �-           2606    702291 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_col_queries.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_ladm_col_queries         postgres    false    1917            �-           2606    702301 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_ladm_col_queries         postgres    false    1918            �-           2606    702311 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_ladm_col_queries         postgres    false    1919            O.           2606    702790 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_ladm_col_queries         postgres    false    1962            Q.           2606    702799 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_col_queries.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_ladm_col_queries         postgres    false    1963            �-           2606    702332 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_ladm_col_queries         postgres    false    1921            �-           2606    702340 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_ladm_col_queries         postgres    false    1922            �-           2606    702321    snr_titular snr_titular_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_ladm_col_queries.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_ladm_col_queries.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_ladm_col_queries         postgres    false    1920            �.           2606    703373 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 a   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_ladm_col_queries         postgres    false    2027    2027            =.           2606    702718 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_ladm_col_queries         postgres    false    1953            �.           2606    703365 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 c   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_ladm_col_queries         postgres    false    2026            @.           2606    702724 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_ladm_col_queries         postgres    false    1954            B.           2606    702732 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 g   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_ladm_col_queries         postgres    false    1955            G.           2606    702754 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 [   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_ladm_col_queries         postgres    false    1958    1958            D.           2606    702740 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 a   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_ladm_col_queries         postgres    false    1956            �,           1259    701775 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_col_queries.cc_metodooperacion USING btree (col_transformacion_transformacion);
 T   DROP INDEX test_ladm_col_queries.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_ladm_col_queries         postgres    false    1864            �,           1259    701786 &   col_areavalor_lc_construccion_area_idx    INDEX        CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_col_queries.col_areavalor USING btree (lc_construccion_area);
 I   DROP INDEX test_ladm_col_queries.col_areavalor_lc_construccion_area_idx;
       test_ladm_col_queries         postgres    false    1865            �,           1259    701788 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_col_queries.col_areavalor USING btree (lc_servidumbretransito_area);
 O   DROP INDEX test_ladm_col_queries.col_areavalor_lc_servidumbretransito_rea_idx;
       test_ladm_col_queries         postgres    false    1865            �,           1259    701787 !   col_areavalor_lc_terreno_area_idx    INDEX     u   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_col_queries.col_areavalor USING btree (lc_terreno_area);
 D   DROP INDEX test_ladm_col_queries.col_areavalor_lc_terreno_area_idx;
       test_ladm_col_queries         postgres    false    1865            �,           1259    701789 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_col_queries.col_areavalor USING btree (lc_unidadconstruccion_area);
 O   DROP INDEX test_ladm_col_queries.col_areavalor_lc_unidadconstruccion_area_idx;
       test_ladm_col_queries         postgres    false    1865            �,           1259    701785    col_areavalor_tipo_idx    INDEX     _   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_col_queries.col_areavalor USING btree (tipo);
 9   DROP INDEX test_ladm_col_queries.col_areavalor_tipo_idx;
       test_ladm_col_queries         postgres    false    1865            !-           1259    702052 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_queries.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 Z   DROP INDEX test_ladm_col_queries.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1892            "-           1259    702051 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_col_queries.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 X   DROP INDEX test_ladm_col_queries.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1892            %-           1259    702053 #   col_baunitcomointeresado_unidad_idx    INDEX     y   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_col_queries.col_baunitcomointeresado USING btree (unidad);
 F   DROP INDEX test_ladm_col_queries.col_baunitcomointeresado_unidad_idx;
       test_ladm_col_queries         postgres    false    1892            �,           1259    701960 $   col_baunitfuente_fuente_espacial_idx    INDEX     {   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_col_queries.col_baunitfuente USING btree (fuente_espacial);
 G   DROP INDEX test_ladm_col_queries.col_baunitfuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1882            �,           1259    701961    col_baunitfuente_unidad_idx    INDEX     i   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_col_queries.col_baunitfuente USING btree (unidad);
 >   DROP INDEX test_ladm_col_queries.col_baunitfuente_unidad_idx;
       test_ladm_col_queries         postgres    false    1882            �,           1259    701975    col_cclfuente_ccl_idx    INDEX     ]   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_col_queries.col_cclfuente USING btree (ccl);
 8   DROP INDEX test_ladm_col_queries.col_cclfuente_ccl_idx;
       test_ladm_col_queries         postgres    false    1884            �,           1259    701976 !   col_cclfuente_fuente_espacial_idx    INDEX     u   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_col_queries.col_cclfuente USING btree (fuente_espacial);
 D   DROP INDEX test_ladm_col_queries.col_cclfuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1884            -           1259    702015     col_clfuente_fuente_espacial_idx    INDEX     s   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_col_queries.col_clfuente USING btree (fuente_espacial);
 C   DROP INDEX test_ladm_col_queries.col_clfuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1888             -           1259    701994    col_masccl_ccl_mas_idx    INDEX     _   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_col_queries.col_masccl USING btree (ccl_mas);
 9   DROP INDEX test_ladm_col_queries.col_masccl_ccl_mas_idx;
       test_ladm_col_queries         postgres    false    1886            -           1259    701995 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     }   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_col_queries.col_masccl USING btree (ue_mas_lc_construccion);
 H   DROP INDEX test_ladm_col_queries.col_masccl_ue_mas_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1886            -           1259    701997 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col_queries.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 L   DROP INDEX test_ladm_col_queries.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col_queries         postgres    false    1886            -           1259    701996     col_masccl_ue_mas_lc_terreno_idx    INDEX     s   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_col_queries.col_masccl USING btree (ue_mas_lc_terreno);
 C   DROP INDEX test_ladm_col_queries.col_masccl_ue_mas_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1886            -           1259    701998 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col_queries.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_col_queries.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col_queries         postgres    false    1886            -           1259    702032 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     {   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_col_queries.col_mascl USING btree (ue_mas_lc_construccion);
 G   DROP INDEX test_ladm_col_queries.col_mascl_ue_mas_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1890            -           1259    702034 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_col_queries.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 K   DROP INDEX test_ladm_col_queries.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_ladm_col_queries         postgres    false    1890            -           1259    702033    col_mascl_ue_mas_lc_terreno_idx    INDEX     q   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_col_queries.col_mascl USING btree (ue_mas_lc_terreno);
 B   DROP INDEX test_ladm_col_queries.col_mascl_ue_mas_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1890            -           1259    702035 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_col_queries.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 K   DROP INDEX test_ladm_col_queries.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_ladm_col_queries         postgres    false    1890            �,           1259    701983    col_menosccl_ccl_menos_idx    INDEX     g   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_col_queries.col_menosccl USING btree (ccl_menos);
 =   DROP INDEX test_ladm_col_queries.col_menosccl_ccl_menos_idx;
       test_ladm_col_queries         postgres    false    1885            �,           1259    701984 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_col_queries.col_menosccl USING btree (ue_menos_lc_construccion);
 L   DROP INDEX test_ladm_col_queries.col_menosccl_ue_menos_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1885            �,           1259    701986 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col_queries.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 N   DROP INDEX test_ladm_col_queries.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col_queries         postgres    false    1885            �,           1259    701985 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     {   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_col_queries.col_menosccl USING btree (ue_menos_lc_terreno);
 G   DROP INDEX test_ladm_col_queries.col_menosccl_ue_menos_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1885            �,           1259    701987 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col_queries.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 N   DROP INDEX test_ladm_col_queries.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col_queries         postgres    false    1885            -           1259    702022 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_col_queries.col_menoscl USING btree (ue_menos_lc_construccion);
 K   DROP INDEX test_ladm_col_queries.col_menoscl_ue_menos_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1889            -           1259    702024 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_col_queries.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 M   DROP INDEX test_ladm_col_queries.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_ladm_col_queries         postgres    false    1889            -           1259    702023 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     y   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_col_queries.col_menoscl USING btree (ue_menos_lc_terreno);
 F   DROP INDEX test_ladm_col_queries.col_menoscl_ue_menos_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1889            -           1259    702025 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_col_queries.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 M   DROP INDEX test_ladm_col_queries.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_ladm_col_queries         postgres    false    1889            0-           1259    702080    col_miembros_agrupacion_idx    INDEX     i   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_col_queries.col_miembros USING btree (agrupacion);
 >   DROP INDEX test_ladm_col_queries.col_miembros_agrupacion_idx;
       test_ladm_col_queries         postgres    false    1895            1-           1259    702079 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_queries.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 N   DROP INDEX test_ladm_col_queries.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1895            2-           1259    702078 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_col_queries.col_miembros USING btree (interesado_lc_interesado);
 L   DROP INDEX test_ladm_col_queries.col_miembros_interesado_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1895            -           1259    702008    col_puntoccl_ccl_idx    INDEX     [   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_col_queries.col_puntoccl USING btree (ccl);
 7   DROP INDEX test_ladm_col_queries.col_puntoccl_ccl_idx;
       test_ladm_col_queries         postgres    false    1887            
-           1259    702006 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX        CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_col_queries.col_puntoccl USING btree (punto_lc_puntocontrol);
 I   DROP INDEX test_ladm_col_queries.col_puntoccl_punto_lc_puntocontrol_idx;
       test_ladm_col_queries         postgres    false    1887            -           1259    702005 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_col_queries.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 N   DROP INDEX test_ladm_col_queries.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_ladm_col_queries         postgres    false    1887            -           1259    702007 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX        CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_col_queries.col_puntoccl USING btree (punto_lc_puntolindero);
 I   DROP INDEX test_ladm_col_queries.col_puntoccl_punto_lc_puntolindero_idx;
       test_ladm_col_queries         postgres    false    1887            -           1259    702043 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     }   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_col_queries.col_puntocl USING btree (punto_lc_puntocontrol);
 H   DROP INDEX test_ladm_col_queries.col_puntocl_punto_lc_puntocontrol_idx;
       test_ladm_col_queries         postgres    false    1891            -           1259    702042 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_col_queries.col_puntocl USING btree (punto_lc_puntolevantamiento);
 M   DROP INDEX test_ladm_col_queries.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_ladm_col_queries         postgres    false    1891             -           1259    702044 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     }   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_col_queries.col_puntocl USING btree (punto_lc_puntolindero);
 H   DROP INDEX test_ladm_col_queries.col_puntocl_punto_lc_puntolindero_idx;
       test_ladm_col_queries         postgres    false    1891            �,           1259    701939 #   col_puntofuente_fuente_espacial_idx    INDEX     y   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_col_queries.col_puntofuente USING btree (fuente_espacial);
 F   DROP INDEX test_ladm_col_queries.col_puntofuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1880            �,           1259    701941 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_col_queries.col_puntofuente USING btree (punto_lc_puntocontrol);
 L   DROP INDEX test_ladm_col_queries.col_puntofuente_punto_lc_puntocontrol_idx;
       test_ladm_col_queries         postgres    false    1880            �,           1259    701940 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_col_queries.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 Q   DROP INDEX test_ladm_col_queries.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_ladm_col_queries         postgres    false    1880            �,           1259    701942 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_col_queries.col_puntofuente USING btree (punto_lc_puntolindero);
 L   DROP INDEX test_ladm_col_queries.col_puntofuente_punto_lc_puntolindero_idx;
       test_ladm_col_queries         postgres    false    1880            �,           1259    701924 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_col_queries.col_relacionfuente USING btree (fuente_administrativa);
 O   DROP INDEX test_ladm_col_queries.col_relacionfuente_fuente_administrativa_idx;
       test_ladm_col_queries         postgres    false    1878            �,           1259    701968 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_col_queries.col_relacionfuenteuespacial USING btree (fuente_espacial);
 Q   DROP INDEX test_ladm_col_queries.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1883            &-           1259    702060 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_col_queries.col_responsablefuente USING btree (fuente_administrativa);
 R   DROP INDEX test_ladm_col_queries.col_responsablefuente_fuente_administrativa_idx;
       test_ladm_col_queries         postgres    false    1893            '-           1259    702062 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_queries.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 W   DROP INDEX test_ladm_col_queries.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1893            (-           1259    702061 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_col_queries.col_responsablefuente USING btree (interesado_lc_interesado);
 U   DROP INDEX test_ladm_col_queries.col_responsablefuente_interesado_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1893            �,           1259    701904 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_col_queries.col_rrrfuente USING btree (fuente_administrativa);
 J   DROP INDEX test_ladm_col_queries.col_rrrfuente_fuente_administrativa_idx;
       test_ladm_col_queries         postgres    false    1876            �,           1259    701906     col_rrrfuente_rrr_lc_derecho_idx    INDEX     s   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_col_queries.col_rrrfuente USING btree (rrr_lc_derecho);
 C   DROP INDEX test_ladm_col_queries.col_rrrfuente_rrr_lc_derecho_idx;
       test_ladm_col_queries         postgres    false    1876            �,           1259    701905 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     {   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_col_queries.col_rrrfuente USING btree (rrr_lc_restriccion);
 G   DROP INDEX test_ladm_col_queries.col_rrrfuente_rrr_lc_restriccion_idx;
       test_ladm_col_queries         postgres    false    1876            +-           1259    702069 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_col_queries.col_topografofuente USING btree (fuente_espacial);
 J   DROP INDEX test_ladm_col_queries.col_topografofuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1894            .-           1259    702071 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_col_queries.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 U   DROP INDEX test_ladm_col_queries.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1894            /-           1259    702070 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_col_queries.col_topografofuente USING btree (topografo_lc_interesado);
 R   DROP INDEX test_ladm_col_queries.col_topografofuente_topografo_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1894            �,           1259    701829 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_col_queries.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 T   DROP INDEX test_ladm_col_queries.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_ladm_col_queries         postgres    false    1868            �,           1259    701830 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_col_queries.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 T   DROP INDEX test_ladm_col_queries.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_ladm_col_queries         postgres    false    1868            �,           1259    701831 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_col_queries.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 T   DROP INDEX test_ladm_col_queries.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_ladm_col_queries         postgres    false    1868            �,           1259    701828 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_col_queries.col_transformacion USING gist (localizacion_transformada);
 S   DROP INDEX test_ladm_col_queries.col_transformacion_localizacion_transformada_idx;
       test_ladm_col_queries         postgres    false    1868            �,           1259    701917    col_uebaunit_baunit_idx    INDEX     a   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_col_queries.col_uebaunit USING btree (baunit);
 :   DROP INDEX test_ladm_col_queries.col_uebaunit_baunit_idx;
       test_ladm_col_queries         postgres    false    1877            �,           1259    701913 #   col_uebaunit_ue_lc_construccion_idx    INDEX     y   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_col_queries.col_uebaunit USING btree (ue_lc_construccion);
 F   DROP INDEX test_ladm_col_queries.col_uebaunit_ue_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1877            �,           1259    701915 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_col_queries.col_uebaunit USING btree (ue_lc_servidumbretransito);
 M   DROP INDEX test_ladm_col_queries.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_ladm_col_queries         postgres    false    1877            �,           1259    701914    col_uebaunit_ue_lc_terreno_idx    INDEX     o   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_col_queries.col_uebaunit USING btree (ue_lc_terreno);
 A   DROP INDEX test_ladm_col_queries.col_uebaunit_ue_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1877            �,           1259    701916 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_col_queries.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_col_queries.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1877            �,           1259    701953     col_uefuente_fuente_espacial_idx    INDEX     s   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_col_queries.col_uefuente USING btree (fuente_espacial);
 C   DROP INDEX test_ladm_col_queries.col_uefuente_fuente_espacial_idx;
       test_ladm_col_queries         postgres    false    1881            �,           1259    701949 #   col_uefuente_ue_lc_construccion_idx    INDEX     y   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_col_queries.col_uefuente USING btree (ue_lc_construccion);
 F   DROP INDEX test_ladm_col_queries.col_uefuente_ue_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1881            �,           1259    701951 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_col_queries.col_uefuente USING btree (ue_lc_servidumbretransito);
 M   DROP INDEX test_ladm_col_queries.col_uefuente_ue_lc_servidumbretransito_idx;
       test_ladm_col_queries         postgres    false    1881            �,           1259    701950    col_uefuente_ue_lc_terreno_idx    INDEX     o   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_col_queries.col_uefuente USING btree (ue_lc_terreno);
 A   DROP INDEX test_ladm_col_queries.col_uefuente_ue_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1881            �,           1259    701952 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_col_queries.col_uefuente USING btree (ue_lc_unidadconstruccion);
 L   DROP INDEX test_ladm_col_queries.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1881            �,           1259    701894 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_col_queries.col_ueuegrupo USING btree (parte_lc_construccion);
 J   DROP INDEX test_ladm_col_queries.col_ueuegrupo_parte_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1875            �,           1259    701896 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_col_queries.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 O   DROP INDEX test_ladm_col_queries.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_ladm_col_queries         postgres    false    1875            �,           1259    701895 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     w   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_col_queries.col_ueuegrupo USING btree (parte_lc_terreno);
 E   DROP INDEX test_ladm_col_queries.col_ueuegrupo_parte_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1875            �,           1259    701897 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_col_queries.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 O   DROP INDEX test_ladm_col_queries.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_ladm_col_queries         postgres    false    1875            �,           1259    701931 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_col_queries.col_unidadfuente USING btree (fuente_administrativa);
 M   DROP INDEX test_ladm_col_queries.col_unidadfuente_fuente_administrativa_idx;
       test_ladm_col_queries         postgres    false    1879            �,           1259    701932    col_unidadfuente_unidad_idx    INDEX     i   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_col_queries.col_unidadfuente USING btree (unidad);
 >   DROP INDEX test_ladm_col_queries.col_unidadfuente_unidad_idx;
       test_ladm_col_queries         postgres    false    1879            �,           1259    701884 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_col_queries.col_volumenvalor USING btree (lc_construccion_volumen);
 O   DROP INDEX test_ladm_col_queries.col_volumenvalor_lc_construccion_volumen_idx;
       test_ladm_col_queries         postgres    false    1874            �,           1259    701886 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_col_queries.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 R   DROP INDEX test_ladm_col_queries.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_ladm_col_queries         postgres    false    1874            �,           1259    701885 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_col_queries.col_volumenvalor USING btree (lc_terreno_volumen);
 J   DROP INDEX test_ladm_col_queries.col_volumenvalor_lc_terreno_volumen_idx;
       test_ladm_col_queries         postgres    false    1874            �,           1259    701887 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_col_queries.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 R   DROP INDEX test_ladm_col_queries.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_ladm_col_queries         postgres    false    1874            �,           1259    701883    col_volumenvalor_tipo_idx    INDEX     e   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_col_queries.col_volumenvalor USING btree (tipo);
 <   DROP INDEX test_ladm_col_queries.col_volumenvalor_tipo_idx;
       test_ladm_col_queries         postgres    false    1874            �,           1259    701876 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_col_queries.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 L   DROP INDEX test_ladm_col_queries.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_ladm_col_queries         postgres    false    1873            �,           1259    701875 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_col_queries.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 L   DROP INDEX test_ladm_col_queries.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_ladm_col_queries         postgres    false    1873            �,           1259    701874 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_col_queries.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 L   DROP INDEX test_ladm_col_queries.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_ladm_col_queries         postgres    false    1873            �,           1259    701801 $   extdireccion_clase_via_principal_idx    INDEX     {   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_col_queries.extdireccion USING btree (clase_via_principal);
 G   DROP INDEX test_ladm_col_queries.extdireccion_clase_via_principal_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701805 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_col_queries.extdireccion USING btree (extinteresado_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_extinteresado_ext_drccn_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701804 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_col_queries.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701806 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_col_queries.extdireccion USING btree (lc_construccion_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701810 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_col_queries.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701807 $   extdireccion_lc_predio_direccion_idx    INDEX     {   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_col_queries.extdireccion USING btree (lc_predio_direccion);
 G   DROP INDEX test_ladm_col_queries.extdireccion_lc_predio_direccion_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701809 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_col_queries.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701808 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_col_queries.extdireccion USING btree (lc_terreno_ext_direccion_id);
 N   DROP INDEX test_ladm_col_queries.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701800    extdireccion_localizacion_idx    INDEX     l   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_col_queries.extdireccion USING gist (localizacion);
 @   DROP INDEX test_ladm_col_queries.extdireccion_localizacion_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701802    extdireccion_sector_ciudad_idx    INDEX     o   CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_col_queries.extdireccion USING btree (sector_ciudad);
 A   DROP INDEX test_ladm_col_queries.extdireccion_sector_ciudad_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701803    extdireccion_sector_predio_idx    INDEX     o   CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_col_queries.extdireccion USING btree (sector_predio);
 A   DROP INDEX test_ladm_col_queries.extdireccion_sector_predio_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701799    extdireccion_tipo_direccion_idx    INDEX     q   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_col_queries.extdireccion USING btree (tipo_direccion);
 B   DROP INDEX test_ladm_col_queries.extdireccion_tipo_direccion_idx;
       test_ladm_col_queries         postgres    false    1866            �,           1259    701856 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_col_queries.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 O   DROP INDEX test_ladm_col_queries.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_ladm_col_queries         postgres    false    1871            �,           1259    701857 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_col_queries.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 O   DROP INDEX test_ladm_col_queries.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_ladm_col_queries         postgres    false    1871            �,           1259    701858 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_col_queries.extinteresado USING btree (lc_interesado_ext_pid);
 J   DROP INDEX test_ladm_col_queries.extinteresado_lc_interesado_ext_pid_idx;
       test_ladm_col_queries         postgres    false    1871            �,           1259    701817 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_col_queries.fraccion USING btree (col_miembros_participacion);
 J   DROP INDEX test_ladm_col_queries.fraccion_col_miembros_participacion_idx;
       test_ladm_col_queries         postgres    false    1867            �,           1259    701818 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_col_queries.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 J   DROP INDEX test_ladm_col_queries.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_ladm_col_queries         postgres    false    1867            5-           1259    702090    gc_barrio_geometria_idx    INDEX     `   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_col_queries.gc_barrio USING gist (geometria);
 :   DROP INDEX test_ladm_col_queries.gc_barrio_geometria_idx;
       test_ladm_col_queries         postgres    false    1896            :-           1259    702100 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_col_queries.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 W   DROP INDEX test_ladm_col_queries.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1897            ;-           1259    702110 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_col_queries.gc_comisionesconstruccion USING gist (geometria);
 J   DROP INDEX test_ladm_col_queries.gc_comisionesconstruccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1898            A-           1259    702130 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_col_queries.gc_comisionesunidadconstruccion USING gist (geometria);
 K   DROP INDEX test_ladm_col_queries.gc_comisionesnddcnstrccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1900            >-           1259    702120 "   gc_comisionesterreno_geometria_idx    INDEX     v   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_col_queries.gc_comisionesterreno USING gist (geometria);
 E   DROP INDEX test_ladm_col_queries.gc_comisionesterreno_geometria_idx;
       test_ladm_col_queries         postgres    false    1899            D-           1259    702142    gc_construccion_gc_predio_idx    INDEX     m   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_col_queries.gc_construccion USING btree (gc_predio);
 @   DROP INDEX test_ladm_col_queries.gc_construccion_gc_predio_idx;
       test_ladm_col_queries         postgres    false    1901            E-           1259    702141    gc_construccion_geometria_idx    INDEX     l   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_col_queries.gc_construccion USING gist (geometria);
 @   DROP INDEX test_ladm_col_queries.gc_construccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1901            H-           1259    702140 %   gc_construccion_tipo_construccion_idx    INDEX     }   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_col_queries.gc_construccion USING btree (tipo_construccion);
 H   DROP INDEX test_ladm_col_queries.gc_construccion_tipo_construccion_idx;
       test_ladm_col_queries         postgres    false    1901            u-           1259    702275    gc_copropiedad_gc_matriz_idx    INDEX     k   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_col_queries.gc_copropiedad USING btree (gc_matriz);
 ?   DROP INDEX test_ladm_col_queries.gc_copropiedad_gc_matriz_idx;
       test_ladm_col_queries         postgres    false    1915            v-           1259    702276    gc_copropiedad_gc_unidad_idx    INDEX     k   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_col_queries.gc_copropiedad USING btree (gc_unidad);
 ?   DROP INDEX test_ladm_col_queries.gc_copropiedad_gc_unidad_idx;
       test_ladm_col_queries         postgres    false    1915            w-           1259    704018    gc_copropiedad_gc_unidad_key    INDEX     r   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_col_queries.gc_copropiedad USING btree (gc_unidad);
 ?   DROP INDEX test_ladm_col_queries.gc_copropiedad_gc_unidad_key;
       test_ladm_col_queries         postgres    false    1915            I-           1259    702149 "   gc_datosphcondominio_gc_predio_idx    INDEX     w   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_col_queries.gc_datosphcondominio USING btree (gc_predio);
 E   DROP INDEX test_ladm_col_queries.gc_datosphcondominio_gc_predio_idx;
       test_ladm_col_queries         postgres    false    1902            L-           1259    702156 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_col_queries.gc_datostorreph USING btree (gc_datosphcondominio);
 K   DROP INDEX test_ladm_col_queries.gc_datostorreph_gc_datosphcondominio_idx;
       test_ladm_col_queries         postgres    false    1903            O-           1259    702167 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_col_queries.gc_direccion USING btree (gc_prediocatastro_direcciones);
 N   DROP INDEX test_ladm_col_queries.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_ladm_col_queries         postgres    false    1904            P-           1259    702166 %   gc_direccion_geometria_referencia_idx    INDEX     |   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_col_queries.gc_direccion USING gist (geometria_referencia);
 H   DROP INDEX test_ladm_col_queries.gc_direccion_geometria_referencia_idx;
       test_ladm_col_queries         postgres    false    1904            S-           1259    702174 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_col_queries.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 Q   DROP INDEX test_ladm_col_queries.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_ladm_col_queries         postgres    false    1905            V-           1259    702184    gc_manzana_geometria_idx    INDEX     b   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_col_queries.gc_manzana USING gist (geometria);
 ;   DROP INDEX test_ladm_col_queries.gc_manzana_geometria_idx;
       test_ladm_col_queries         postgres    false    1906            Y-           1259    702194    gc_perimetro_geometria_idx    INDEX     f   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_col_queries.gc_perimetro USING gist (geometria);
 =   DROP INDEX test_ladm_col_queries.gc_perimetro_geometria_idx;
       test_ladm_col_queries         postgres    false    1907            q-           1259    702267 &   gc_prediocatastro_condicion_predio_idx    INDEX        CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_col_queries.gc_prediocatastro USING btree (condicion_predio);
 I   DROP INDEX test_ladm_col_queries.gc_prediocatastro_condicion_predio_idx;
       test_ladm_col_queries         postgres    false    1914            t-           1259    702268 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_col_queries.gc_prediocatastro USING btree (sistema_procedencia_datos);
 R   DROP INDEX test_ladm_col_queries.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_ladm_col_queries         postgres    false    1914            \-           1259    702204 %   gc_propietario_gc_predio_catastro_idx    INDEX     }   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_col_queries.gc_propietario USING btree (gc_predio_catastro);
 H   DROP INDEX test_ladm_col_queries.gc_propietario_gc_predio_catastro_idx;
       test_ladm_col_queries         postgres    false    1908            _-           1259    702214    gc_sectorrural_geometria_idx    INDEX     j   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_col_queries.gc_sectorrural USING gist (geometria);
 ?   DROP INDEX test_ladm_col_queries.gc_sectorrural_geometria_idx;
       test_ladm_col_queries         postgres    false    1909            b-           1259    702224    gc_sectorurbano_geometria_idx    INDEX     l   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_col_queries.gc_sectorurbano USING gist (geometria);
 @   DROP INDEX test_ladm_col_queries.gc_sectorurbano_geometria_idx;
       test_ladm_col_queries         postgres    false    1910            e-           1259    702235    gc_terreno_gc_predio_idx    INDEX     c   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_col_queries.gc_terreno USING btree (gc_predio);
 ;   DROP INDEX test_ladm_col_queries.gc_terreno_gc_predio_idx;
       test_ladm_col_queries         postgres    false    1911            f-           1259    702234    gc_terreno_geometria_idx    INDEX     b   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_col_queries.gc_terreno USING gist (geometria);
 ;   DROP INDEX test_ladm_col_queries.gc_terreno_geometria_idx;
       test_ladm_col_queries         postgres    false    1911            i-           1259    702247 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_col_queries.gc_unidadconstruccion USING btree (gc_construccion);
 L   DROP INDEX test_ladm_col_queries.gc_unidadconstruccion_gc_construccion_idx;
       test_ladm_col_queries         postgres    false    1912            j-           1259    702246 #   gc_unidadconstruccion_geometria_idx    INDEX     x   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_col_queries.gc_unidadconstruccion USING gist (geometria);
 F   DROP INDEX test_ladm_col_queries.gc_unidadconstruccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1912            m-           1259    702245 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col_queries.gc_unidadconstruccion USING btree (tipo_construccion);
 N   DROP INDEX test_ladm_col_queries.gc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col_queries         postgres    false    1912            n-           1259    702257    gc_vereda_geometria_idx    INDEX     `   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_col_queries.gc_vereda USING gist (geometria);
 :   DROP INDEX test_ladm_col_queries.gc_vereda_geometria_idx;
       test_ladm_col_queries         postgres    false    1913            �,           1259    701744     gm_surface2dlistvalue_avalue_idx    INDEX     r   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_col_queries.gm_surface2dlistvalue USING gist (avalue);
 C   DROP INDEX test_ladm_col_queries.gm_surface2dlistvalue_avalue_idx;
       test_ladm_col_queries         postgres    false    1860            �,           1259    701745 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_col_queries.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 W   DROP INDEX test_ladm_col_queries.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_ladm_col_queries         postgres    false    1860            �,           1259    701761     gm_surface3dlistvalue_avalue_idx    INDEX     r   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_col_queries.gm_surface3dlistvalue USING gist (avalue);
 C   DROP INDEX test_ladm_col_queries.gm_surface3dlistvalue_avalue_idx;
       test_ladm_col_queries         postgres    false    1862            �,           1259    701762 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_col_queries.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 W   DROP INDEX test_ladm_col_queries.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_ladm_col_queries         postgres    false    1862            �,           1259    701846    imagen_extinteresado_firma_idx    INDEX     o   CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_col_queries.imagen USING btree (extinteresado_firma);
 A   DROP INDEX test_ladm_col_queries.imagen_extinteresado_firma_idx;
       test_ladm_col_queries         postgres    false    1870            �,           1259    701845 #   imagen_extinteresado_fotografia_idx    INDEX     y   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_col_queries.imagen USING btree (extinteresado_fotografia);
 F   DROP INDEX test_ladm_col_queries.imagen_extinteresado_fotografia_idx;
       test_ladm_col_queries         postgres    false    1870            �,           1259    701844 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_col_queries.imagen USING btree (extinteresado_huella_dactilar);
 H   DROP INDEX test_ladm_col_queries.imagen_extinteresado_huell_dctlar_idx;
       test_ladm_col_queries         postgres    false    1870            �-           1259    702353 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_col_queries.ini_predioinsumos USING btree (gc_predio_catastro);
 K   DROP INDEX test_ladm_col_queries.ini_predioinsumos_gc_predio_catastro_idx;
       test_ladm_col_queries         postgres    false    1923            �-           1259    702354 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_col_queries.ini_predioinsumos USING btree (snr_predio_juridico);
 L   DROP INDEX test_ladm_col_queries.ini_predioinsumos_snr_predio_juridico_idx;
       test_ladm_col_queries         postgres    false    1923            �-           1259    702352 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_col_queries.ini_predioinsumos USING btree (tipo_emparejamiento);
 L   DROP INDEX test_ladm_col_queries.ini_predioinsumos_tipo_emparejamiento_idx;
       test_ladm_col_queries         postgres    false    1923            �-           1259    702365 !   lc_agrupacioninteresados_tipo_idx    INDEX     u   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_col_queries.lc_agrupacioninteresados USING btree (tipo);
 D   DROP INDEX test_ladm_col_queries.lc_agrupacioninteresados_tipo_idx;
       test_ladm_col_queries         postgres    false    1924            .           1259    702607 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_col_queries.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 X   DROP INDEX test_ladm_col_queries.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_ladm_col_queries         postgres    false    1944            .           1259    702606 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_col_queries.lc_calificacionconvencional USING btree (tipo_calificar);
 P   DROP INDEX test_ladm_col_queries.lc_calificacionconvencinal_tipo_calificar_idx;
       test_ladm_col_queries         postgres    false    1944            .           1259    702616 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_col_queries.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 X   DROP INDEX test_ladm_col_queries.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_ladm_col_queries         postgres    false    1945            .           1259    702615 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_col_queries.lc_calificacionnoconvencional USING btree (tipo_anexo);
 L   DROP INDEX test_ladm_col_queries.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_ladm_col_queries         postgres    false    1945            �-           1259    702378    lc_construccion_dimension_idx    INDEX     m   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_col_queries.lc_construccion USING btree (dimension);
 @   DROP INDEX test_ladm_col_queries.lc_construccion_dimension_idx;
       test_ladm_col_queries         postgres    false    1925            �-           1259    702380    lc_construccion_geometria_idx    INDEX     l   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_col_queries.lc_construccion USING gist (geometria);
 @   DROP INDEX test_ladm_col_queries.lc_construccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1925            �-           1259    702379 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_col_queries.lc_construccion USING btree (relacion_superficie);
 J   DROP INDEX test_ladm_col_queries.lc_construccion_relacion_superficie_idx;
       test_ladm_col_queries         postgres    false    1925            �-           1259    702376 %   lc_construccion_tipo_construccion_idx    INDEX     }   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_col_queries.lc_construccion USING btree (tipo_construccion);
 H   DROP INDEX test_ladm_col_queries.lc_construccion_tipo_construccion_idx;
       test_ladm_col_queries         postgres    false    1925            �-           1259    702377     lc_construccion_tipo_dominio_idx    INDEX     s   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_col_queries.lc_construccion USING btree (tipo_dominio);
 C   DROP INDEX test_ladm_col_queries.lc_construccion_tipo_dominio_idx;
       test_ladm_col_queries         postgres    false    1925            �-           1259    702393 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_col_queries.lc_contactovisita USING btree (lc_datos_adicionales);
 M   DROP INDEX test_ladm_col_queries.lc_contactovisita_lc_datos_adicionales_idx;
       test_ladm_col_queries         postgres    false    1926            �-           1259    702392 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_col_queries.lc_contactovisita USING btree (relacion_con_predio);
 L   DROP INDEX test_ladm_col_queries.lc_contactovisita_relacion_con_predio_idx;
       test_ladm_col_queries         postgres    false    1926            �-           1259    702391 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_col_queries.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 S   DROP INDEX test_ladm_col_queries.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_ladm_col_queries         postgres    false    1926            �-           1259    702401 "   lc_datosphcondominio_lc_predio_idx    INDEX     w   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_col_queries.lc_datosphcondominio USING btree (lc_predio);
 E   DROP INDEX test_ladm_col_queries.lc_datosphcondominio_lc_predio_idx;
       test_ladm_col_queries         postgres    false    1927            .           1259    702630 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 Q   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702629 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 M   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702628 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 W   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702633 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 K   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702627 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 \   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702632 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 R   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_ladm_col_queries         postgres    false    1946            .           1259    702631 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 \   DROP INDEX test_ladm_col_queries.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_ladm_col_queries         postgres    false    1946            �-           1259    702414 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_queries.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 L   DROP INDEX test_ladm_col_queries.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1928            �-           1259    702413 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_col_queries.lc_derecho USING btree (interesado_lc_interesado);
 J   DROP INDEX test_ladm_col_queries.lc_derecho_interesado_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1928            �-           1259    702412    lc_derecho_tipo_idx    INDEX     Y   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_col_queries.lc_derecho USING btree (tipo);
 6   DROP INDEX test_ladm_col_queries.lc_derecho_tipo_idx;
       test_ladm_col_queries         postgres    false    1928            �-           1259    702415    lc_derecho_unidad_idx    INDEX     ]   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_col_queries.lc_derecho USING btree (unidad);
 8   DROP INDEX test_ladm_col_queries.lc_derecho_unidad_idx;
       test_ladm_col_queries         postgres    false    1928            �-           1259    702422 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_col_queries.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 Y   DROP INDEX test_ladm_col_queries.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_ladm_col_queries         postgres    false    1929            �-           1259    702430 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_col_queries.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 \   DROP INDEX test_ladm_col_queries.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_ladm_col_queries         postgres    false    1930            �-           1259    702429 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_col_queries.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 N   DROP INDEX test_ladm_col_queries.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_ladm_col_queries         postgres    false    1930            �-           1259    702442 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_col_queries.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 T   DROP INDEX test_ladm_col_queries.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_ladm_col_queries         postgres    false    1931            �-           1259    702441     lc_fuenteadministrativa_tipo_idx    INDEX     s   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_col_queries.lc_fuenteadministrativa USING btree (tipo);
 C   DROP INDEX test_ladm_col_queries.lc_fuenteadministrativa_tipo_idx;
       test_ladm_col_queries         postgres    false    1931            �-           1259    702443 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_col_queries.lc_fuenteadministrativa USING btree (tipo_principal);
 M   DROP INDEX test_ladm_col_queries.lc_fuenteadministrativa_tipo_principal_idx;
       test_ladm_col_queries         postgres    false    1931            �-           1259    702455 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_col_queries.lc_fuenteespacial USING btree (estado_disponibilidad);
 N   DROP INDEX test_ladm_col_queries.lc_fuenteespacial_estado_disponibilidad_idx;
       test_ladm_col_queries         postgres    false    1932            �-           1259    702454    lc_fuenteespacial_tipo_idx    INDEX     g   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_col_queries.lc_fuenteespacial USING btree (tipo);
 =   DROP INDEX test_ladm_col_queries.lc_fuenteespacial_tipo_idx;
       test_ladm_col_queries         postgres    false    1932            �-           1259    702456 $   lc_fuenteespacial_tipo_principal_idx    INDEX     {   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_col_queries.lc_fuenteespacial USING btree (tipo_principal);
 G   DROP INDEX test_ladm_col_queries.lc_fuenteespacial_tipo_principal_idx;
       test_ladm_col_queries         postgres    false    1932            �-           1259    702464 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_col_queries.lc_grupocalificacion USING btree (clase_calificacion);
 N   DROP INDEX test_ladm_col_queries.lc_grupocalificacion_clase_calificacion_idx;
       test_ladm_col_queries         postgres    false    1933            �-           1259    702465 %   lc_grupocalificacion_conservacion_idx    INDEX     }   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_col_queries.lc_grupocalificacion USING btree (conservacion);
 H   DROP INDEX test_ladm_col_queries.lc_grupocalificacion_conservacion_idx;
       test_ladm_col_queries         postgres    false    1933            �-           1259    702466 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_col_queries.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 V   DROP INDEX test_ladm_col_queries.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_ladm_col_queries         postgres    false    1933            �-           1259    702480    lc_interesado_grupo_etnico_idx    INDEX     o   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_col_queries.lc_interesado USING btree (grupo_etnico);
 A   DROP INDEX test_ladm_col_queries.lc_interesado_grupo_etnico_idx;
       test_ladm_col_queries         postgres    false    1934            �-           1259    702479    lc_interesado_sexo_idx    INDEX     _   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_col_queries.lc_interesado USING btree (sexo);
 9   DROP INDEX test_ladm_col_queries.lc_interesado_sexo_idx;
       test_ladm_col_queries         postgres    false    1934            �-           1259    702478     lc_interesado_tipo_documento_idx    INDEX     s   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_col_queries.lc_interesado USING btree (tipo_documento);
 C   DROP INDEX test_ladm_col_queries.lc_interesado_tipo_documento_idx;
       test_ladm_col_queries         postgres    false    1934            �-           1259    702477    lc_interesado_tipo_idx    INDEX     _   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_col_queries.lc_interesado USING btree (tipo);
 9   DROP INDEX test_ladm_col_queries.lc_interesado_tipo_idx;
       test_ladm_col_queries         postgres    false    1934            �-           1259    702491 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_col_queries.lc_interesadocontacto USING btree (lc_interesado);
 J   DROP INDEX test_ladm_col_queries.lc_interesadocontacto_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1935            �-           1259    702502    lc_lindero_geometria_idx    INDEX     b   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_col_queries.lc_lindero USING gist (geometria);
 ;   DROP INDEX test_ladm_col_queries.lc_lindero_geometria_idx;
       test_ladm_col_queries         postgres    false    1936            �-           1259    702511 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_col_queries.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 R   DROP INDEX test_ladm_col_queries.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_ladm_col_queries         postgres    false    1937            �-           1259    702510 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_col_queries.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 U   DROP INDEX test_ladm_col_queries.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_ladm_col_queries         postgres    false    1937            �-           1259    702520 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_col_queries.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 K   DROP INDEX test_ladm_col_queries.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_ladm_col_queries         postgres    false    1938            �-           1259    702519 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_col_queries.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 M   DROP INDEX test_ladm_col_queries.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_ladm_col_queries         postgres    false    1938            �-           1259    702532    lc_predio_condicion_predio_idx    INDEX     o   CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_col_queries.lc_predio USING btree (condicion_predio);
 A   DROP INDEX test_ladm_col_queries.lc_predio_condicion_predio_idx;
       test_ladm_col_queries         postgres    false    1939            ".           1259    702670 %   lc_predio_copropiedad_copropiedad_idx    INDEX     }   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_col_queries.lc_predio_copropiedad USING btree (copropiedad);
 H   DROP INDEX test_ladm_col_queries.lc_predio_copropiedad_copropiedad_idx;
       test_ladm_col_queries         postgres    false    1949            %.           1259    702669     lc_predio_copropiedad_predio_idx    INDEX     s   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_col_queries.lc_predio_copropiedad USING btree (predio);
 C   DROP INDEX test_ladm_col_queries.lc_predio_copropiedad_predio_idx;
       test_ladm_col_queries         postgres    false    1949            &.           1259    704544     lc_predio_copropiedad_predio_key    INDEX     z   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_col_queries.lc_predio_copropiedad USING btree (predio);
 C   DROP INDEX test_ladm_col_queries.lc_predio_copropiedad_predio_key;
       test_ladm_col_queries         postgres    false    1949            '.           1259    702677 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_col_queries.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 T   DROP INDEX test_ladm_col_queries.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_ladm_col_queries         postgres    false    1950            (.           1259    702678 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_col_queries.lc_predio_ini_predioinsumos USING btree (lc_predio);
 K   DROP INDEX test_ladm_col_queries.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_ladm_col_queries         postgres    false    1950            �-           1259    702531    lc_predio_tipo_idx    INDEX     W   CREATE INDEX lc_predio_tipo_idx ON test_ladm_col_queries.lc_predio USING btree (tipo);
 5   DROP INDEX test_ladm_col_queries.lc_predio_tipo_idx;
       test_ladm_col_queries         postgres    false    1939            �-           1259    702547    lc_puntocontrol_geometria_idx    INDEX     l   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_col_queries.lc_puntocontrol USING gist (geometria);
 @   DROP INDEX test_ladm_col_queries.lc_puntocontrol_geometria_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702546 $   lc_puntocontrol_metodoproduccion_idx    INDEX     {   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (metodoproduccion);
 G   DROP INDEX test_ladm_col_queries.lc_puntocontrol_metodoproduccion_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702545 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (posicion_interpolacion);
 M   DROP INDEX test_ladm_col_queries.lc_puntocontrol_posicion_interpolacion_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702543    lc_puntocontrol_puntotipo_idx    INDEX     m   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (puntotipo);
 @   DROP INDEX test_ladm_col_queries.lc_puntocontrol_puntotipo_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702544 &   lc_puntocontrol_tipo_punto_control_idx    INDEX        CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (tipo_punto_control);
 I   DROP INDEX test_ladm_col_queries.lc_puntocontrol_tipo_punto_control_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702548 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX        CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (ue_lc_construccion);
 I   DROP INDEX test_ladm_col_queries.lc_puntocontrol_ue_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702550 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 P   DROP INDEX test_ladm_col_queries.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702549 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     u   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (ue_lc_terreno);
 D   DROP INDEX test_ladm_col_queries.lc_puntocontrol_ue_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1940            �-           1259    702551 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_col_queries.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 O   DROP INDEX test_ladm_col_queries.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1940            .           1259    702646 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (fotoidentificacion);
 O   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_fotoidentificacion_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702649 #   lc_puntolevantamiento_geometria_idx    INDEX     x   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_col_queries.lc_puntolevantamiento USING gist (geometria);
 F   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_geometria_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702648 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (metodoproduccion);
 M   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_metodoproduccion_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702647 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (posicion_interpolacion);
 S   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702644 #   lc_puntolevantamiento_puntotipo_idx    INDEX     y   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (puntotipo);
 F   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_puntotipo_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702645 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 U   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702650 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (ue_lc_construccion);
 O   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702652 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 V   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702651 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (ue_lc_terreno);
 J   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1947            .           1259    702653 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_col_queries.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 U   DROP INDEX test_ladm_col_queries.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1947            �-           1259    702563    lc_puntolindero_acuerdo_idx    INDEX     i   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_col_queries.lc_puntolindero USING btree (acuerdo);
 >   DROP INDEX test_ladm_col_queries.lc_puntolindero_acuerdo_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702564 &   lc_puntolindero_fotoidentificacion_idx    INDEX        CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_col_queries.lc_puntolindero USING btree (fotoidentificacion);
 I   DROP INDEX test_ladm_col_queries.lc_puntolindero_fotoidentificacion_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702567    lc_puntolindero_geometria_idx    INDEX     l   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_col_queries.lc_puntolindero USING gist (geometria);
 @   DROP INDEX test_ladm_col_queries.lc_puntolindero_geometria_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702566 $   lc_puntolindero_metodoproduccion_idx    INDEX     {   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_col_queries.lc_puntolindero USING btree (metodoproduccion);
 G   DROP INDEX test_ladm_col_queries.lc_puntolindero_metodoproduccion_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702565 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_col_queries.lc_puntolindero USING btree (posicion_interpolacion);
 M   DROP INDEX test_ladm_col_queries.lc_puntolindero_posicion_interpolacion_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702562    lc_puntolindero_puntotipo_idx    INDEX     m   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_col_queries.lc_puntolindero USING btree (puntotipo);
 @   DROP INDEX test_ladm_col_queries.lc_puntolindero_puntotipo_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702568 &   lc_puntolindero_ue_lc_construccion_idx    INDEX        CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_col_queries.lc_puntolindero USING btree (ue_lc_construccion);
 I   DROP INDEX test_ladm_col_queries.lc_puntolindero_ue_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702570 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_col_queries.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 P   DROP INDEX test_ladm_col_queries.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702569 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     u   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_col_queries.lc_puntolindero USING btree (ue_lc_terreno);
 D   DROP INDEX test_ladm_col_queries.lc_puntolindero_ue_lc_terreno_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702571 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_col_queries.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 O   DROP INDEX test_ladm_col_queries.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_ladm_col_queries         postgres    false    1941            �-           1259    702584 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_col_queries.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 P   DROP INDEX test_ladm_col_queries.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_ladm_col_queries         postgres    false    1942            �-           1259    702583 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_col_queries.lc_restriccion USING btree (interesado_lc_interesado);
 N   DROP INDEX test_ladm_col_queries.lc_restriccion_interesado_lc_interesado_idx;
       test_ladm_col_queries         postgres    false    1942            �-           1259    702582    lc_restriccion_tipo_idx    INDEX     a   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_col_queries.lc_restriccion USING btree (tipo);
 :   DROP INDEX test_ladm_col_queries.lc_restriccion_tipo_idx;
       test_ladm_col_queries         postgres    false    1942            �-           1259    702585    lc_restriccion_unidad_idx    INDEX     e   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_col_queries.lc_restriccion USING btree (unidad);
 <   DROP INDEX test_ladm_col_queries.lc_restriccion_unidad_idx;
       test_ladm_col_queries         postgres    false    1942            +.           1259    702689 $   lc_servidumbretransito_dimension_idx    INDEX     {   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_col_queries.lc_servidumbretransito USING btree (dimension);
 G   DROP INDEX test_ladm_col_queries.lc_servidumbretransito_dimension_idx;
       test_ladm_col_queries         postgres    false    1951            ,.           1259    702691 $   lc_servidumbretransito_geometria_idx    INDEX     z   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_col_queries.lc_servidumbretransito USING gist (geometria);
 G   DROP INDEX test_ladm_col_queries.lc_servidumbretransito_geometria_idx;
       test_ladm_col_queries         postgres    false    1951            /.           1259    702690 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_col_queries.lc_servidumbretransito USING btree (relacion_superficie);
 Q   DROP INDEX test_ladm_col_queries.lc_servidumbretransito_relacion_superficie_idx;
       test_ladm_col_queries         postgres    false    1951            �-           1259    702597    lc_terreno_dimension_idx    INDEX     c   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_col_queries.lc_terreno USING btree (dimension);
 ;   DROP INDEX test_ladm_col_queries.lc_terreno_dimension_idx;
       test_ladm_col_queries         postgres    false    1943            �-           1259    702596    lc_terreno_geometria_idx    INDEX     b   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_col_queries.lc_terreno USING gist (geometria);
 ;   DROP INDEX test_ladm_col_queries.lc_terreno_geometria_idx;
       test_ladm_col_queries         postgres    false    1943             .           1259    702598 "   lc_terreno_relacion_superficie_idx    INDEX     w   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_col_queries.lc_terreno USING btree (relacion_superficie);
 E   DROP INDEX test_ladm_col_queries.lc_terreno_relacion_superficie_idx;
       test_ladm_col_queries         postgres    false    1943            .           1259    702662 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_col_queries.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 V   DROP INDEX test_ladm_col_queries.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_ladm_col_queries         postgres    false    1948            !.           1259    702661 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_col_queries.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 N   DROP INDEX test_ladm_col_queries.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_ladm_col_queries         postgres    false    1948            0.           1259    702708 #   lc_unidadconstruccion_dimension_idx    INDEX     y   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (dimension);
 F   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_dimension_idx;
       test_ladm_col_queries         postgres    false    1952            1.           1259    702710 #   lc_unidadconstruccion_geometria_idx    INDEX     x   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_col_queries.lc_unidadconstruccion USING gist (geometria);
 F   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_geometria_idx;
       test_ladm_col_queries         postgres    false    1952            2.           1259    702707 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (lc_construccion);
 L   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_lc_construccion_idx;
       test_ladm_col_queries         postgres    false    1952            5.           1259    702709 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (relacion_superficie);
 P   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_relacion_superficie_idx;
       test_ladm_col_queries         postgres    false    1952            6.           1259    702703 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (tipo_construccion);
 N   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_tipo_construccion_idx;
       test_ladm_col_queries         postgres    false    1952            7.           1259    702702 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX        CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (tipo_dominio);
 I   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_tipo_dominio_idx;
       test_ladm_col_queries         postgres    false    1952            8.           1259    702705 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (tipo_planta);
 H   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_tipo_planta_idx;
       test_ladm_col_queries         postgres    false    1952            9.           1259    702704 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 U   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_ladm_col_queries         postgres    false    1952            :.           1259    702706    lc_unidadconstruccion_uso_idx    INDEX     m   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_col_queries.lc_unidadconstruccion USING btree (uso);
 @   DROP INDEX test_ladm_col_queries.lc_unidadconstruccion_uso_idx;
       test_ladm_col_queries         postgres    false    1952            z-           1259    702283 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_col_queries.snr_derecho USING btree (calidad_derecho_registro);
 K   DROP INDEX test_ladm_col_queries.snr_derecho_calidad_derecho_registro_idx;
       test_ladm_col_queries         postgres    false    1916            }-           1259    702284 "   snr_derecho_snr_fuente_derecho_idx    INDEX     w   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_col_queries.snr_derecho USING btree (snr_fuente_derecho);
 E   DROP INDEX test_ladm_col_queries.snr_derecho_snr_fuente_derecho_idx;
       test_ladm_col_queries         postgres    false    1916            ~-           1259    702285 #   snr_derecho_snr_predio_registro_idx    INDEX     y   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_col_queries.snr_derecho USING btree (snr_predio_registro);
 F   DROP INDEX test_ladm_col_queries.snr_derecho_snr_predio_registro_idx;
       test_ladm_col_queries         postgres    false    1916            -           1259    702292 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_col_queries.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 \   DROP INDEX test_ladm_col_queries.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_ladm_col_queries         postgres    false    1917            �-           1259    702302 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_col_queries.snr_fuentecabidalinderos USING btree (tipo_documento);
 N   DROP INDEX test_ladm_col_queries.snr_fuentecabidalinderos_tipo_documento_idx;
       test_ladm_col_queries         postgres    false    1918            �-           1259    702312 $   snr_fuentederecho_tipo_documento_idx    INDEX     {   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_col_queries.snr_fuentederecho USING btree (tipo_documento);
 G   DROP INDEX test_ladm_col_queries.snr_fuentederecho_tipo_documento_idx;
       test_ladm_col_queries         postgres    false    1919            �-           1259    702333 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_col_queries.snr_predioregistro USING btree (clase_suelo_registro);
 N   DROP INDEX test_ladm_col_queries.snr_predioregistro_clase_suelo_registro_idx;
       test_ladm_col_queries         postgres    false    1921            �-           1259    702334 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_col_queries.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 S   DROP INDEX test_ladm_col_queries.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_ladm_col_queries         postgres    false    1921            �-           1259    702342 #   snr_titular_derecho_snr_derecho_idx    INDEX     y   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_col_queries.snr_titular_derecho USING btree (snr_derecho);
 F   DROP INDEX test_ladm_col_queries.snr_titular_derecho_snr_derecho_idx;
       test_ladm_col_queries         postgres    false    1922            �-           1259    702341 #   snr_titular_derecho_snr_titular_idx    INDEX     y   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_col_queries.snr_titular_derecho USING btree (snr_titular);
 F   DROP INDEX test_ladm_col_queries.snr_titular_derecho_snr_titular_idx;
       test_ladm_col_queries         postgres    false    1922            �-           1259    702323    snr_titular_tipo_documento_idx    INDEX     o   CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_col_queries.snr_titular USING btree (tipo_documento);
 A   DROP INDEX test_ladm_col_queries.snr_titular_tipo_documento_idx;
       test_ladm_col_queries         postgres    false    1920            �-           1259    702322    snr_titular_tipo_persona_idx    INDEX     k   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_col_queries.snr_titular USING btree (tipo_persona);
 ?   DROP INDEX test_ladm_col_queries.snr_titular_tipo_persona_idx;
       test_ladm_col_queries         postgres    false    1920            �.           1259    704633 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_ladm_col_queries.t_ili2db_attrname USING btree (colowner, sqlname);
 I   DROP INDEX test_ladm_col_queries.t_ili2db_attrname_colowner_sqlname_key;
       test_ladm_col_queries         postgres    false    2027    2027            ;.           1259    702719    t_ili2db_basket_dataset_idx    INDEX     i   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_col_queries.t_ili2db_basket USING btree (dataset);
 >   DROP INDEX test_ladm_col_queries.t_ili2db_basket_dataset_idx;
       test_ladm_col_queries         postgres    false    1953            >.           1259    704631     t_ili2db_dataset_datasetname_key    INDEX     z   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_col_queries.t_ili2db_dataset USING btree (datasetname);
 C   DROP INDEX test_ladm_col_queries.t_ili2db_dataset_datasetname_key;
       test_ladm_col_queries         postgres    false    1954            E.           1259    704632 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_col_queries.t_ili2db_model USING btree (iliversion, modelname);
 J   DROP INDEX test_ladm_col_queries.t_ili2db_model_iliversion_modelname_key;
       test_ladm_col_queries         postgres    false    1958    1958            �.           2606    703404 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_col_queries.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_col_queries.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_ladm_col_queries       postgres    false    1868    11437    1864            �.           2606    703415 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_ladm_col_queries       postgres    false    11679    1925    1865            �.           2606    703425 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_ladm_col_queries       postgres    false    1865    1951    11822            �.           2606    703420 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_ladm_col_queries       postgres    false    1865    1943    11775            �.           2606    703430 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_ladm_col_queries       postgres    false    11828    1865    1952            �.           2606    703409 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col_queries.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_ladm_col_queries       postgres    false    1865    11923    1996            0/           2606    703868 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    1892    1924    11674            1/           2606    703863 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    1892    1934    11721            2/           2606    703873 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_ladm_col_queries       postgres    false    1892    1939    11741            /           2606    703708 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1882    1932    11711            /           2606    703713 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_ladm_col_queries       postgres    false    1882    1939    11741            /           2606    703723 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col_queries.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_ladm_col_queries       postgres    false    1884    1936    11730            /           2606    703728 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_queries.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1884    1932    11711            $/           2606    703803 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1932    11711    1888            /           2606    703758 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_col_queries.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_ladm_col_queries       postgres    false    11730    1886    1936            /           2606    703763 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    11679    1886            /           2606    703773 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col_queries       postgres    false    1951    11822    1886            /           2606    703768 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1886    1943    11775            /           2606    703778 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1886            )/           2606    703828 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_queries.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1890    1925    11679            */           2606    703838 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_queries.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_ladm_col_queries       postgres    false    1890    1951    11822            +/           2606    703833 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_ladm_col_queries.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1943    1890    11775            ,/           2606    703843 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_queries.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_ladm_col_queries       postgres    false    1890    1952    11828            /           2606    703733 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_col_queries.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_ladm_col_queries       postgres    false    1936    11730    1885            /           2606    703738 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    1885    11679            /           2606    703748 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col_queries       postgres    false    1951    1885    11822            /           2606    703743 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    11775    1943    1885            /           2606    703753 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1885            %/           2606    703808 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1889    11679    1925            &/           2606    703818 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_ladm_col_queries       postgres    false    1951    1889    11822            '/           2606    703813 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    11775    1943    1889            (/           2606    703823 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_ladm_col_queries       postgres    false    1889    1952    11828            9/           2606    703918 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_queries.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_ladm_col_queries       postgres    false    1895    1924    11674            :/           2606    703913 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    1895    1924    11674            ;/           2606    703908 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    1895    1934    11721             /           2606    703798 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_col_queries.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_ladm_col_queries       postgres    false    1936    11730    1887            !/           2606    703788 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_queries.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_ladm_col_queries       postgres    false    1887    1940    11746            "/           2606    703783 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_queries.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_queries       postgres    false    1947    1887    11798            #/           2606    703793 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_queries.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_queries.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_ladm_col_queries       postgres    false    1887    11759    1941            -/           2606    703853 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_queries.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_ladm_col_queries       postgres    false    1891    1940    11746            ./           2606    703848 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_queries.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_queries       postgres    false    1891    1947    11798            //           2606    703858 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_queries.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_ladm_col_queries       postgres    false    1891    1941    11759            /           2606    703663 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    11711    1932    1880            	/           2606    703673 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_col_queries.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_ladm_col_queries       postgres    false    1880    11746    1940            
/           2606    703668 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_col_queries.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_ladm_col_queries       postgres    false    1947    1880    11798            /           2606    703678 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_col_queries.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_queries.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_ladm_col_queries       postgres    false    1880    11759    1941            /           2606    703648 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_queries.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_ladm_col_queries       postgres    false    1931    11706    1878            /           2606    703718 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1883    1932    11711            3/           2606    703878 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_queries.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_ladm_col_queries       postgres    false    1893    1931    11706            4/           2606    703888 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    1893    1924    11674            5/           2606    703883 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    1893    1934    11721            �.           2606    703608 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_queries.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_ladm_col_queries       postgres    false    11706    1876    1931            �.           2606    703618 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_col_queries.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_ladm_col_queries       postgres    false    1928    1876    11694            �.           2606    703613 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_col_queries.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_queries.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_ladm_col_queries       postgres    false    1876    11769    1942            6/           2606    703893 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1894    1932    11711            7/           2606    703903 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    1894    1924    11674            8/           2606    703898 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_queries.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    1894    1934    11721            �.           2606    703502 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_col_queries.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_ladm_col_queries       postgres    false    1940    1868    11746            �.           2606    703507 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_col_queries.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_ladm_col_queries       postgres    false    1941    1868    11759            �.           2606    703512 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_col_queries.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_ladm_col_queries       postgres    false    1947    1868    11798             /           2606    703643 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_ladm_col_queries       postgres    false    1877    11741    1939            /           2606    703623 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    1877    11679            /           2606    703633 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_ladm_col_queries       postgres    false    1951    1877    11822            /           2606    703628 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1943    1877    11775            /           2606    703638 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1877            /           2606    703703 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_ladm_col_queries       postgres    false    1932    1881    11711            /           2606    703683 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    11679    1881    1925            /           2606    703693 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_ladm_col_queries       postgres    false    11822    1951    1881            /           2606    703688 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    11775    1881    1943            /           2606    703698 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    1952    11828    1881            �.           2606    703588 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    11679    1875            �.           2606    703598 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_ladm_col_queries       postgres    false    1875    11822    1951            �.           2606    703593 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1875    1943    11775            �.           2606    703603 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_ladm_col_queries       postgres    false    1952    11828    1875            /           2606    703653 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_col_queries.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_ladm_col_queries       postgres    false    1931    11706    1879            /           2606    703658 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_ladm_col_queries       postgres    false    11741    1939    1879            �.           2606    703568 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_ladm_col_queries       postgres    false    1925    1874    11679            �.           2606    703578 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_ladm_col_queries       postgres    false    1951    1874    11822            �.           2606    703573 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_ladm_col_queries       postgres    false    1943    1874    11775            �.           2606    703583 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1874            �.           2606    703563 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_queries.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_ladm_col_queries       postgres    false    2013    11957    1874            �.           2606    703557 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_col_queries.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_ladm_col_queries       postgres    false    1873    1932    11711            �.           2606    703552 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_col_queries.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_ladm_col_queries       postgres    false    1931    11706    1873            �.           2606    703547 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_col_queries.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_ladm_col_queries       postgres    false    1918    11651    1873            �.           2606    703440 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_col_queries.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_ladm_col_queries       postgres    false    2018    1866    11967            �.           2606    703460 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_col_queries.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_ladm_col_queries       postgres    false    11449    1871    1866            �.           2606    703455 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_col_queries.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_ladm_col_queries       postgres    false    1869    11439    1866            �.           2606    703465 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_ladm_col_queries       postgres    false    1866    11679    1925            �.           2606    703485 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1866            �.           2606    703470 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_ladm_col_queries       postgres    false    11741    1939    1866            �.           2606    703480 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_ladm_col_queries       postgres    false    1866    1951    11822            �.           2606    703475 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_ladm_col_queries       postgres    false    11775    1943    1866            �.           2606    703445 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_col_queries.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_ladm_col_queries       postgres    false    1989    1866    11909            �.           2606    703450 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_col_queries.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_ladm_col_queries       postgres    false    11853    1961    1866            �.           2606    703435 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_col_queries.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_ladm_col_queries       postgres    false    2008    1866    11947            �.           2606    703532 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_col_queries.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_ladm_col_queries       postgres    false    1872    1871    11451            �.           2606    703537 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_ladm_col_queries       postgres    false    1924    11674    1871            �.           2606    703542 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_ladm_col_queries       postgres    false    1934    11721    1871            �.           2606    703492 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_col_queries.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_ladm_col_queries       postgres    false    1895    1867    11572            �.           2606    703497 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_col_queries.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_ladm_col_queries       postgres    false    1949    1867    11812            </           2606    703924 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_col_queries.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    1897    11628    1912            =/           2606    703940 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_ladm_col_queries       postgres    false    1914    1901    11635            >/           2606    703929 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_queries.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_ladm_col_queries       postgres    false    1901    11865    1967            I/           2606    704019 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_ladm_col_queries       postgres    false    1914    1915    11635            J/           2606    704024 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_ladm_col_queries       postgres    false    11635    1915    1914            ?/           2606    703952 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_ladm_col_queries       postgres    false    1914    1902    11635            @/           2606    703962 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_col_queries.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_ladm_col_queries       postgres    false    1902    1903    11595            A/           2606    703967 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_ladm_col_queries       postgres    false    11635    1904    1914            B/           2606    703972 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_queries.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_ladm_col_queries       postgres    false    1905    1914    11635            G/           2606    704008 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col_queries.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_ladm_col_queries       postgres    false    2006    1914    11943            H/           2606    704013 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_col_queries.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_queries.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_ladm_col_queries       postgres    false    1981    1914    11893            C/           2606    703977 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_ladm_col_queries       postgres    false    11635    1908    1914            D/           2606    703985 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col_queries.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_ladm_col_queries       postgres    false    1914    1911    11635            E/           2606    704003 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_col_queries.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1901    1912    11591            F/           2606    703990 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_queries.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_queries.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col_queries       postgres    false    1967    1912    11865            �.           2606    703392 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_col_queries.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_ladm_col_queries       postgres    false    1861    11397    1860            �.           2606    703397 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_col_queries.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_ladm_col_queries       postgres    false    1862    11403    1863            �.           2606    703527 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_col_queries.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_ladm_col_queries.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_ladm_col_queries       postgres    false    1871    1870    11449            �.           2606    703522 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_col_queries.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_queries.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_ladm_col_queries       postgres    false    1871    1870    11449            �.           2606    703517 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_col_queries.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_ladm_col_queries       postgres    false    1871    1870    11449            W/           2606    704095 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_col_queries.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_ladm_col_queries       postgres    false    11635    1914    1923            X/           2606    704100 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_col_queries.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_ladm_col_queries       postgres    false    1921    1923    11662            Y/           2606    704090 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_col_queries.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_ladm_col_queries       postgres    false    11875    1972    1923            Z/           2606    704105 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_ladm_col_queries       postgres    false    1983    1924    11897            �/           2606    704436 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_ladm_col_queries       postgres    false    1944    11828    1952            �/           2606    704430 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_col_queries.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_ladm_col_queries       postgres    false    1944    11961    2015            �/           2606    704446 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_ladm_col_queries       postgres    false    1952    11828    1945            �/           2606    704441 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_col_queries.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_ladm_col_queries       postgres    false    1945    11941    2005            [/           2606    704128 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_queries.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_ladm_col_queries       postgres    false    11881    1975    1925            \/           2606    704133 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_queries.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_ladm_col_queries       postgres    false    1925    11911    1990            ]/           2606    704110 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_queries.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    11965    2017            ^/           2606    704115 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col_queries.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_col_queries.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_ladm_col_queries       postgres    false    1925    2012    11955            _/           2606    704148 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_ladm_col_queries       postgres    false    1946    1926    11786            `/           2606    704143 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_col_queries.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_ladm_col_queries       postgres    false    11895    1982    1926            a/           2606    704138 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_col_queries.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_queries.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_ladm_col_queries       postgres    false    1998    11927    1926            b/           2606    704161 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_ladm_col_queries       postgres    false    1927    11741    1939            �/           2606    704467 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_col_queries.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_ladm_col_queries       postgres    false    1971    1946    11873            �/           2606    704462 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_col_queries.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_ladm_col_queries       postgres    false    11891    1980    1946            �/           2606    704457 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_col_queries.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_ladm_col_queries       postgres    false    11867    1946    1968            �/           2606    704482 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_ladm_col_queries       postgres    false    1946    11741    1939            �/           2606    704452 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     <  ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_col_queries.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_ladm_col_queries       postgres    false    11889    1946    1979            �/           2606    704477 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_col_queries.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_ladm_col_queries       postgres    false    1986    1946    11903            �/           2606    704472 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_col_queries.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_ladm_col_queries       postgres    false    1998    1946    11927            c/           2606    704177 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    11674    1924    1928            d/           2606    704172 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    1928    1934    11721            e/           2606    704166    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_ladm_col_queries       postgres    false    11885    1928    1977            f/           2606    704182 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 Z   ALTER TABLE ONLY test_ladm_col_queries.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_ladm_col_queries       postgres    false    1939    1928    11741            g/           2606    704187 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_ladm_col_queries       postgres    false    1929    11786    1946            h/           2606    704197 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     F  ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_col_queries.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_ladm_col_queries       postgres    false    1946    1930    11786            i/           2606    704192 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_col_queries.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_ladm_col_queries       postgres    false    1960    11851    1930            j/           2606    704207 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col_queries.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_ladm_col_queries       postgres    false    1988    1931    11907            k/           2606    704202 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_ladm_col_queries       postgres    false    2009    1931    11949            l/           2606    704212 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col_queries.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_ladm_col_queries       postgres    false    1931    1973    11877            m/           2606    704222 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_col_queries.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_ladm_col_queries       postgres    false    1932    1988    11907            n/           2606    704217 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_ladm_col_queries       postgres    false    1978    11887    1932            o/           2606    704227 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_col_queries.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_ladm_col_queries       postgres    false    1973    1932    11877            p/           2606    704232 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_col_queries.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_ladm_col_queries       postgres    false    2019    11969    1933            q/           2606    704237 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_col_queries.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_ladm_col_queries       postgres    false    2025    1933    11981            r/           2606    704243 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_col_queries.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_ladm_col_queries       postgres    false    1944    11780    1933            s/           2606    704263 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_col_queries.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_ladm_col_queries       postgres    false    1934    11883    1976            t/           2606    704258 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_col_queries.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_ladm_col_queries       postgres    false    1934    1991    11913            u/           2606    704253 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_queries.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_ladm_col_queries       postgres    false    11927    1998    1934            v/           2606    704248 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_ladm_col_queries.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_ladm_col_queries       postgres    false    11901    1934    1985            w/           2606    704268 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    11721    1935    1934            x/           2606    704280 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_col_queries.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_ladm_col_queries       postgres    false    11718    1937    1933            y/           2606    704274 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_col_queries.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_ladm_col_queries       postgres    false    2024    1937    11979            z/           2606    704293 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_ladm_col_queries       postgres    false    11741    1939    1938            {/           2606    704285 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_col_queries.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_ladm_col_queries       postgres    false    1966    11863    1938            |/           2606    704304 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_col_queries.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_queries.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_ladm_col_queries       postgres    false    2020    1939    11971            �/           2606    704550 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_ladm_col_queries       postgres    false    1949    11741    1939            �/           2606    704545 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_ladm_col_queries       postgres    false    1949    1939    11741            �/           2606    704555 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_col_queries.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_ladm_col_queries       postgres    false    11670    1923    1950            �/           2606    704560 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_ladm_col_queries       postgres    false    1939    11741    1950            }/           2606    704299    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_ladm_col_queries.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_ladm_col_queries       postgres    false    11929    1939    1999            ~/           2606    704326 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_queries.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_ladm_col_queries       postgres    false    11977    1940    2023            /           2606    704321 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_queries.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_ladm_col_queries       postgres    false    11905    1940    1987            �/           2606    704309 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_queries.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_ladm_col_queries       postgres    false    11915    1992    1940            �/           2606    704314 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_col_queries.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_ladm_col_queries       postgres    false    11963    2016    1940            �/           2606    704331 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1925    11679    1940            �/           2606    704341 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_ladm_col_queries       postgres    false    1951    11822    1940            �/           2606    704336 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1943    11775    1940            �/           2606    704346 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1940            �/           2606    704497 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col_queries.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_ladm_col_queries       postgres    false    11879    1974    1947            �/           2606    704509 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_queries.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_ladm_col_queries       postgres    false    11977    1947    2023            �/           2606    704504 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_queries.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_ladm_col_queries       postgres    false    1947    11905    1987            �/           2606    704487 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_queries.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_ladm_col_queries       postgres    false    1947    11915    1992            �/           2606    704492 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_col_queries.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_ladm_col_queries       postgres    false    2003    1947    11937            �/           2606    704514 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1947    11679    1925            �/           2606    704524 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_ladm_col_queries       postgres    false    1951    1947    11822            �/           2606    704519 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    11775    1947    1943            �/           2606    704529 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1952    1947            �/           2606    704356 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_col_queries.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_ladm_col_queries       postgres    false    1941    2004    11939            �/           2606    704361 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_col_queries.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_ladm_col_queries       postgres    false    11879    1974    1941            �/           2606    704373 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_col_queries.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_ladm_col_queries       postgres    false    1941    2023    11977            �/           2606    704368 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_col_queries.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_ladm_col_queries       postgres    false    11905    1987    1941            �/           2606    704351 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_col_queries.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_ladm_col_queries       postgres    false    1992    1941    11915            �/           2606    704378 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    1941    11679    1925            �/           2606    704388 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_col_queries.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_ladm_col_queries       postgres    false    1941    11822    1951            �/           2606    704383 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_col_queries.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_ladm_col_queries       postgres    false    1941    11775    1943            �/           2606    704393 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_ladm_col_queries       postgres    false    1952    11828    1941            �/           2606    704408 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_col_queries.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_ladm_col_queries       postgres    false    1924    11674    1942            �/           2606    704403 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_col_queries.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_ladm_col_queries       postgres    false    11721    1942    1934            �/           2606    704398 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_col_queries.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_ladm_col_queries       postgres    false    2001    1942    11933            �/           2606    704413 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_col_queries.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_queries.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_ladm_col_queries       postgres    false    11741    1942    1939            �/           2606    704566 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_queries.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_ladm_col_queries       postgres    false    1951    11881    1975            �/           2606    704571 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_queries.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_col_queries.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_ladm_col_queries       postgres    false    1990    11911    1951            �/           2606    704420 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_queries.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_ladm_col_queries       postgres    false    11881    1975    1943            �/           2606    704425 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_queries.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_ladm_col_queries.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_ladm_col_queries       postgres    false    1990    11911    1943            �/           2606    704539 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_col_queries.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_ladm_col_queries       postgres    false    11828    1948    1952            �/           2606    704534 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_col_queries.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_ladm_col_queries       postgres    false    11953    2011    1948            �/           2606    704616 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_col_queries.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_ladm_col_queries       postgres    false    1975    1952    11881            �/           2606    704611 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_col_queries.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_ladm_col_queries       postgres    false    11679    1925    1952            �/           2606    704621 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_col_queries.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_ladm_col_queries       postgres    false    1990    11911    1952            �/           2606    704581 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_col_queries.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_ladm_col_queries       postgres    false    1952    11965    2017            �/           2606    704576 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_col_queries.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_ladm_col_queries       postgres    false    11955    1952    2012            �/           2606    704591 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_col_queries.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_ladm_col_queries       postgres    false    11917    1993    1952            �/           2606    704586 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_col_queries.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_ladm_col_queries       postgres    false    1995    11921    1952            �/           2606    704601 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_col_queries.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_col_queries.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_ladm_col_queries       postgres    false    1952    11945    2007            K/           2606    704030 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_col_queries.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_ladm_col_queries       postgres    false    2010    1916    11951            L/           2606    704035 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_col_queries.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_ladm_col_queries       postgres    false    1916    11654    1919            M/           2606    704040 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_col_queries.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_ladm_col_queries.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_ladm_col_queries       postgres    false    11662    1921    1916            N/           2606    704045 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_col_queries.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_col_queries.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_col_queries.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_ladm_col_queries       postgres    false    1917    11662    1921            O/           2606    704050 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_queries.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_ladm_col_queries       postgres    false    11855    1918    1962            P/           2606    704055 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_queries.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_col_queries.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_ladm_col_queries       postgres    false    11855    1962    1919            S/           2606    704070 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_col_queries.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_ladm_col_queries       postgres    false    1921    11959    2014            T/           2606    704075 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_col_queries.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_col_queries.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_ladm_col_queries       postgres    false    1918    11651    1921            U/           2606    704085 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_col_queries.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_ladm_col_queries       postgres    false    1922    1916    11644            V/           2606    704080 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_col_queries.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_col_queries.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_ladm_col_queries       postgres    false    11657    1922    1920            Q/           2606    704065 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_col_queries.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_ladm_col_queries.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_ladm_col_queries       postgres    false    1920    11975    2022            R/           2606    704060 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_col_queries.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_ladm_col_queries.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_ladm_col_queries       postgres    false    1963    11857    1920            �/           2606    704626 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_col_queries.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_ladm_col_queries.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_ladm_col_queries       postgres    false    11840    1953    1954            ?0      x������ � �      �0   �   x����
�0��{�=�l�պ%�^	c�)����z�^�R��v����HNQ��<�ω7�l���^��;�/��+3��ᡭtc�̀@܉F��_�T�����0X�
_sL��qC��!�spR���wcg�oDl�0��T�ļ:ъ+����rc�F�`�B>�p����C� А�v      �0     x�͑Aj�0E��)�&����qK7i
�t0y�ƌ�@��e]��X%�MI�uc����?_��:[U�M��j^��E�N�Q�"����Y�m��"���F����^��
��%ԗ;��Q��B��frۖ  �1ZN��N��d� l�Q0C��ݷ���B0�ϡ�֓� u���́��c�Q������H{���>�
~>�������\�����g/��Ў=�o��L���X�򏺁�������`�2�������{4,�8�g��!�RA~����cS�y����      @0      x������ � �      [0      x������ � �      Q0      x������ � �      S0      x������ � �      W0      x������ � �      �0   �   x���ˊ�0���S��Z/u9(�Vq%��D�@�)���n�����ڢ��ݹ�|��������z�ݻ�r%1���Rj�A%�
$���_Jc9�>TI�K����Z_u�w�4N� m��f�Ѭ�|$��V�V�f����adH�7��㐦v�qoH��"�:ǜ1Gd+/���A�`�F��!2�=�4P�x.��?�o�Q��V��E��׿GĹ�A��{�����M�"J���      �0   j   x�340��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X�����TA�ch5ЄT�8�K��!�AY\1z\\\ ֟G�      �0   �   x���M�0F��stm��B㊄�v4MjKh�>���[.fA�\���o&3/FIwɡ��iqY��QV3��oý���D�R+qRp�Ϣ�$�H@b��XY�;��9�p�QYl��AAC�̭j�@��(���!ܰ��0�,P
I���lt�'�#������^��[���r�����s���5zHw6�=���ȋw      �0   �   x�350��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ej`L�����y��PS]�J��f��m��[ijQb�Kj<Lb<XX!%U�!�ɔl��9�K���CY\1z\\\ z1r      �0   �   x�3�4��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���҂d�9}2�R���$S!f�^�S��WHE�ZeI�UF�!�%��aL.#�M2��/���O�L��������� w5p      �0   �  x����R1�k�S�07�����O�L*f<�n�et�C:y&y�Tti�b��;�3&��I�o���d�ev���^��^-�.�벻Iֱ�Y�L�{^4�x�}0����tvw3;�]�M-.��{Z9�E����m���D�i���4�5��}�Vԛ ӫ����Q�S�^D%�	Zk��y�5-��Z��e�]5G�[;{��SgB/69\w�c)���d|S#�q���m��W��m53�#���c�:�QF�?x������I�q�}A���M<�S����/��[x�������0Yu�"2PxE�8N
�H]�̿~"R�i���H���/�ba��>[P ��sLN#����U��[	e���ؙ� m�Q~��K~�hV�ITr�6rD���5ےC�������y\      �0   %  x��T�n�@����2�GkX�!@��He�����[���Q��U������h!R$�$�13;�bqV�ϗ���u���:)ǧM���*��xz��驸�'Ņ��dBu]��Hը�l
�s���)p��R��*���"t��WG�B+�ɩ�cm��-o�b�(����TS��FD�Q��?m��2ĉ[�v��fy~;Wu�zj�ԁt�������f�U�8�k��<@P&�S��'�a�&"�%�Mq�#5'wO�Z��N:�k-�D嫔�����a�?I��ޚ���9iЉ��
�u�|�[#R-�	Co��$�}�>p�q�7��	�aׁم.p�S��!&SUH=��h�c"�ZG��b�)�zS�1;�1�b�O��:^$;�̈�C�G�"|9v<|x���j��a���S�A����jU��<jfF.Q&�����9-���GN)+��-�񞹲�v2��;e��,��d��Q�8-VN�`u��=Ec�8�#���}8��Yq���T]M	<�{y�	�w�?����l��i��      �0   �   x����
�@�������Y,"H�D�@�u�	ە��z��z_,]�����0��1�3g��4���c�N<[%� �n�)Ŗk��h&X
�8�6�oX4���,��7'���*©6��<����.z}-��D:���q1�zeȨ�X��~=4G&�
ճE�����TJ'y��Z��
:��z u���a�c�����5�C      �0   |   x�345��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ԙ9�¹�)���E�P��
�A�&�X`�l�Of^j"�9��B��b���� �.Z�      �0   �   x�32��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2��ȈT�9C�!&AY\FƤ�b�\Z�ZT���
1
��edB�yƜ.����y�ə)0o�p��qqq \�\�      U0      x������ � �      Y0      x������ � �      T0      x������ � �      X0      x������ � �      �0   #  x��SKjA]K��a��k��@BV���]#*�T��#�q��B+a.�ꙑcBV��~��Ss��^��n��o�ͯ��j=F���uM>PV�ߣ�����^����b�4[���k�KM����O�B����
S$�"GN�v��S
в���ذ� #�9��[	�]{&�,]�}��^�l>���B����4^�tS� x��-;t<�
��9Y���%goG8�Ĩ����h��r����$�-�K$I#��D�Y�ʆ2��R���.�K=c�c��Ԯ��a���0C�
;��
P��`��g�`���	�b�V"W�cdL�L�;�}�xĬ�'���X����LE�9��^�������+�P����_��/o�4[r'�ͩ�Ӏ{���@��o�t��~��U��?b5��h�q?c�va�ȸ~4�h*��Y,��n�K��tU���j�렧�1���e����ޤ�e�{K(� �+��'1�ó���a���q)t4�29Ѡ��l���#�<Z6mt�<��
�q1�(j��n�\.� ��/      ^0   <   x�3�45���47�Q��F\F��`!c��1P�� �
Y������E�W� ���      V0   v  x�e�ۑ-�D��1f�7�c��o�%����_+h�CdI�{����������Կ��
���g���/���p��g`��M暍a2�_�����_��{�ϯɔ����0�H��5ҋM����śx��Lϋar�����̾[���d?!^#98_#9&��	L�0X����0��q�;�M{9��]{�c�Ol�_�9<ƿ&s��0����¾�|����&C6�,��w�󐌃K�[�,�s)�ޘ۶#��m=�����Y����C�aR��R0�1Lj:�\>�aag��}j3��NK���1L�����⾩>%c�� ;M����Q�'����b�\�0�25cx��������ܚ����0���P}j�xP}j2�,�1�����hL�9>8�>1axl�Ƙ�:c�چ����# �	��܅9��d0ƗD�nM���`���f����a���$�'�a�Yj/����;S}��4�%�g�b���9�|0�'{w�>�������V�)���eP}J7�!)ok�O��^���dv'W�S��4c��,�>����dq'ϥׄ�Ov'T���3���>]��	�O<$n���a���dcH�Ln�Ii���G�����4ٍarm�Y.�ا�&{6�^�dL)��N�<$���C��}��c/�>�\Fc
�[g~���Y�rn�����4�3_��,���l�X���kNL�}�a�6c̲leK���J�+MVc���n��tP����C}�>���`\?��0I0�^փ�>+X�{��Zf^��d.����`��v>4a����d������7���+�\��d7�IMgc�Ae�H�y�1Mc�|;A��F�O.�ꓫ��\X��#��\Y��09�`�L�`f^��Z����`��l���e�����e��0�
ok�^�L�3��n�����r�4�)x
��0Υ>�xw�1�G�w��PU[6�w�%����P��Z&Mc�ez[C
�9�c��̼V�����zc,�̥�vj�IZ}3��3�z�|�wsa�1Cg�V��OK_��ZGa�ϋ맵&?���ir
G�k�������ĵZ���>5S��!Is����
j1	3�L�<$Ø�s6F�O]�I�>��m�o��0=63*��փ0��9���95���{a&{ڝ"L�y1���0�g
��Am�G�y0���q.����m�`f^-c��c��M2��6ɺϰI�>�߳<���~|������� 䃩>˫t�>��7�ɹ�1
s��{��O�C<��s�r�.\?}/�"�0�����Yʫ������OL�0�1g�6Ό}�KmLY?�L�)���1���-Ό}����Ot�
�1L�Z4n�>Ӆ��s1f~�����:7c����;�fV���n����\XE3Q���sa���}T�&���I�>���?�>��0�,3�����U�i��xc^@c��z2d�1i����4�v�@D��49U�њP}���Ң3*Vߌ}��<>}3�Q"$a.l4���ɐk>�3������{/����>��cY�����T����ޘ�0f����Ow�C}�ƽ1íl̠R~�9�d̽<^UXun�8�^�u�`̠�1fy"L�������M�f�3���Ԉ�Sf�Yߴ^�Y��ƌ���K�>a�}�Z�a�/��,�Dc��o�Ʌ?�0c�Џ�;'�Sc�1���֌c%�A�O~q�;٘��1c�&|g^�&�,��Ga���n��0g���C�$<>����\F���׸��M	{�̼�R�k��y��9�
�ɣ3A�z7��i�0���d�w�{c���H���d�{/����^v��,�Ib R�)�M���rͅ�>J߂0�R��_w^��h�W�U�ye���fm����r�J�QJ��}�ן"L�i�L���U���x��ܻ:a�G}o�5��ׯ�.�/�	r*�'M\�&�:�j�r�����8;WcV�ˋ���X���g�����J�w�1�Ρs/�1_O��T��6Ȏ��J�W�y�ncVDf��	c�-caUgn��c&ݘ&�|fq����Ƭ��:�����/�~��j�;˅�y���>�(�jW�gN^��%jl1���OyC��胾1�R[܅?������Y�����y��o��o�� ���I�&���`M�����>m{l�����}a�E'c���#{�C\7���Y��@;�Tc��u�.�����X�T���A���׻�d�]w^�1?^��;|m(�����R��p/�zB71ˆ����KX>Ⱥ�z��0�>�57��e[}���pg�o�����K)�Ɵa��i����!��08j��p���q�t����Cyq��,���{�n�9$-
�}�����If^ϋ9�����,�����ʥ��w�>��~a�e6���L�`g죾7W�Hv�}T���Ӎ��Y�ы��q.�j�7�>�Zsa�Ƽ�J�\ط>V}f�^�<�V��gtaJ�c�p+��g��m����+�u^a7��cj��'S��y���wy���:g}7fJ��Yj��Α�s֓����tc���Fa�}���t"̪�2=�[gM�`j�	[��y��ƌ}�2C�Ug�$��"s/�1�ɘ�1c�+���o��1/��1��Fc"�.o7��V�d�Sl�ʼ�S�ve^z�9O�:��zya��u��N�>��:�Yt2���q0c��5c���i��6����2���,���d�=@�����y\��9j�7�#�aL�Ƽ�z1�$6��'�$c�`�|m�GC�c�mcV*��*�u����Y�}�?�c7�����ֹ�ם�z�ܻ1f�c^gc�B��[�z�Ƽ�Ƽn��A@4��|0է�d�D�뾯���>�%��q߼q�^o�O�*��׍{9��q�����6��?����XZO      Z0      x������ � �      O0      x������ � �      �0   `   x�3��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N�ˈc9�K��z�� x\Ƥd��7������ �F@�      �0   �   x�34���qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ehlI������������#K��q�M�0҈(�Z4'b*P@���J��`C26�I�IM��-���Ƀ��*zx3H�+F��� �$tB      �0   f   x�32���qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��edl@�9���EI�y���l�I�$�d���Á��b���� �rA�      M0      x������ � �      R0      x������ � �      �0   �   x�343��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP�\��5�\�T�bt1B h�)٦s��A����b���� ��p�      \0      x������ � �      K0   w  x�U�э�0D�7Ŝ�`�n�*����Hٯ�������~>�����k��}M��b����7�b�`�,_q��lLְ��1���\2c]�f7�]l)n�������e��dű�ed�E�[l��g�?,�v1��� ��|j���C�9=���T=n�_&�P]��"S.<8�]��ׂ���8��p���7."G�c�-zLk�E��8�-z� =�އ�໸��;����U.�q�_.6�z����=�/F�^��鑝;���H���������nN�����pzlšg���}l�9=Bq�pzD�%<�uw���/	�~�!��Gj����]��#䁺�~]=W.=\�U#��<b����j���Ĭr�������s]�?��      ]0      x������ � �      C0      x������ � �      L0   �  x�m�A�1E��aR�B\"'���#���ObWya�+� F֐_?�]v�/Yc�<_��H��X�E,b���sBN����ܦ}#yZ�����6���M0�^j�&���:��fr��c�(�����؉�~@/�u�+�
Q�o����s�p\~��^=��a��+&	��O�CQ�E�A۩ 52��
����N+��1T����T��g᪛sP7�TZAP�TWm*�C	�Ө 3�T�'�<��C����:�4H�6a4X,�;Ưֆ�	H�U8�L�9Hk'n�РLȻn.m+� ���j�"I���u�N�������م�zSs��~�m�eA}ܯ��L��MX+6�����x�>[X�$m
���ٞBU`�`�]�x�D�	UP,*���Z���J�*C�\W*��5���N\H�JjA֞#�A֖:�� ����X��ڙ��w{.����z�M1c       P0   '   x�347���!Cc#(��И������)W� J�
�      J0      x������ � �      �0   e  x���Mn�0���)|����e�.) �]!E�� KI���Eo�5��b�h�.R�<o�����	Z$/���j����(l����C+�U� IH�*&� �N���c5G�%����5�C�nm~�pv9['&�-/ge�ښ��h�3F+Ah%����
�&����[w���If����Rqb9�2]�`9�� Wח/��.�!{���� �%(-����qu�S�^��~�~@k�����\���x�M<AIin�Ӭyè<v�ѩͲ\c02�B�؛y�^.�e&��);�'ܚ�R#o��Ꚋ�����GyS����p�~������h'��5�-��L���0؇A|a�0�      �0   g   x��0��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��\�9=�R2�2SJs &��b���� n:�      N0      x������ � �      �0   j   x�313��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���̘4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��Dk      I0      x������ � �      H0   ,  x�͙mK�P�?��%i��~�1d:�s6
�ئ6[�BL���s��!5��g)��)��>�����*�h4�-�<�Lʢ��*,��ͳ4�Ӥ�\���L�,�U����$��گ��b�V����y�p�U��l�B2!EK2Y���g�P���_]~������=�Tě��"�!PI�ٟ́I2�]����@�t�E-�L7d���d���:Rb��H!�f�Z#�f�PL��u����tJR�I��ʛ�#�y�1�u�Lh^TA3�,�u�����w��
43�װ��8�Q6W'��^���x媛���Bq �Eǐ��,Og.�^�ҤvU�b��u��"��j�fM�<�(p���{�Bo$p$��I�
܇�z�$�)�Cp=�%�@� �( �G�M�@S�@���,%����f���@Sv��_�I�� Sr ]���HJH�-�`K	$� �d�����q����`Ju1��V� 5	 � �..�� ��f���
 * �X���
 *N�Y@08Q�_���������/&94�A����㐙KZmq�8,��@c䐘���z��O0~�!��O�4H?0e������f�z���" ٝ � d�l��]@0��`"�L� �Q�`�ਗ਼��l��|�:{t# @k�h?ݰ�\�tD(2�}�PHđ��i��m5�J��晘0
,��Z$K4�f*�� ^����A��{I�t����jvR=Wχ����eXz��&ބU���LGﺲF��ٗY�SV9�������x      A0   �  x���ˮ'@�ܯ�X,y��(��E�M6�2���R4�/�\��H(�<�G��>ԋ� J+4V��4�~%�0����6&S�@�����+�K�����K}��0A}��k���N�8~=���_��U�PƷ���_�|�����E��4�4:��'Ms��B�$р"��T��5��h"ӌ�����8��T)f�'N��t��/�|���#ߝ%r�B@�q
���8�q��%�ԐR�}���1�\<��v� �N�)���e�<�:��-���d��d,��m.É;�����cv��������ld��K��RNzp-g���;fWو*G�T1���!�m첢��,��le�}��0gZ8��zFH� ή�Uξ�^�䕲��Ϙ�9��l娜G ���Q�jg��$aw�����^����P��� ή�}��n��:��O�pv�QT�:
-B+�[s���>�����ʭQ��ײpf5T�ʸ����0* �
����$�ft�UF9*_Q�F��2bȾx�� ή2�*{��v�axO
��UvrT��h��J���y(� �*;Q���rM�.�-g�\�\���D�g�)&�w�B��Uv�ʳs�!/w���0�Ń8��NTY7S3g����cb�E���3ή�Um�F�����O�tgW�˵��[=;�Y�T����U��ʁ�
���w���8��^Ty�[}���fw����E����׹�X8���+LxgW��|�zX�io��g8����2�*ϜU8S���{��9�C��$�<�B,i�J$?�:�`Ю2�*wS��%���tοU���L�`��V�ũԌ������Z�+c�;�SK��@�v��\`hH��Ju�_&آ[
{���D�g�i�,�g���w®r�۾4�p�eu�X��WgW9�*��J���;K�ʛ����aW9�*ϛ2ўBy���®rU�A��˺Y��.�ϭN�U�rT�����;ݛ�A{:8����QTy@�J���'S�t�t���Q.08�b�խ�N�v�BÃ)4n*��qР���S-Vo�n'�<��s�o[����[�s� _��Qd�RӮs���|� $
�~�,�"l���U��HTz�H�tw��C5��sJ�5���P<�N�̎�ǅ|l�\���x�Z>��us&�&�"K����G��>�}�`�8�3@e9=��X�KA���r<];TS��c��V��X�f�����p͜�4cF�<9�똖���7�l��c^yP86c�F���9m�zR�6��+&�v|��y��N�5f~�g=&M7��Wr����A}���8b�_yP��S���=����b����1��~���)n���s�v������C��0�1B������y�6��o�?�_�ǡ�3k���zl�L�E������L�e��"Ѹ�����8,X��çQv��x��p=�1�����^�g���g>�5�ҧ�f�>�'��hU��:��x�@�Ll�H���;��[��]��cL&?����7��}OO���nXxf9_❽f:�ڄy��֫�/�7������>�~֓Ŵ�3��T#���~�������2�g}�5��\��[�5sf�c�IO�������߷���,*ga�X![�XZ'�??d�2'�� �v��A}�և��ʋ%����>�ǻ�sw ��b�K?]�3��"��������?Q!1      �0   �   x����n�0F���	�@1c�t�Cńd]SY�����'mpew������;84�Q��A]*U��4jg���9�6�m��7�bQ}�}���	Jh&���D���u��J�/���Y'�L���x�.Atm"6s,�=�]A3���C�'�qQ��z�:�!?fǚ��B�Z�5"wY[�4�]Ck��˺�k�s"]�W@�O&�Q��cKt에y�w�k�{�:~      �0   }   x�34���qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ԓl9�K� �A\�fd�f��Zs�4ϐl�9�S�\1z\\\ (+d�      �0   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Аl9�K� �A\�Fdf��Zs��ehL�qƜ��p�`L�=... hd?      �0   f   x�312��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����	�r���c�ᗯ��fM� �xB�      F0      x������ � �      G0      x������ � �      D0      x������ � �      B0   .   x�3�45�4�4�4�4�45���2�43��A�����b���� ?#
      _0      x������ � �      `0      x������ � �      a0      x������ � �      b0      x������ � �      c0      x������ � �      �0   �  x��V;OA�ϿbK�,c P&(
����N��,��1���t�)�)("����2�kcLH������~�7���p'�&UXSqf\h�'�<��<8o�..�����8&S�R��-V�>�eW�l'�2��Ƥf�f+��Y����:KʐrԠ�)��mLu�FU��l�� f���<�M0���m5_�Ck⌑��9L,*>Y�!�M-N�(O8U�/�V��������ͮ����<9_a�6�f�g`=0O}5��g^���iO�"����*��K�wx�W��:���BY�)���O��܂JWZ����8�.�ʖ�!�a]�_�Z��X�Q��2٠FMσ�������C�޽x����U>k�x5l+�k������o��`���|[�:AڜkL����,?�}�����u�W���/��� ��,˕Xc,<���i[�����ws"5�$�1ev{o��1z6���J�H喂�N�1(�r 6S��J�>�>��M�O���������elxu�%'l���49ܠ��N�R��Jj���a����r��`��C3��b����H��[�C��~(bu �Qv�!�l ��fR[���L�U��?��-�m^�������W�������;�e@�kN(yH��n���S��pT�!*�8�j|�-���Lp"��(>RE����CN��"S��X�c�E�g�s�L�S3I��bxY�'a�|���U���p�9���ՠ���f'      d0      x������ � �      r0      x������ � �      e0      x������ � �      f0      x������ � �      g0      x������ � �      h0      x������ � �      i0      x������ � �      j0      x������ � �      q0      x������ � �      k0      x������ � �      l0      x������ � �      m0      x������ � �      �0   �   x�342�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qYPѵ����I�9�B�x�������=... �o�      n0      x������ � �      o0      x������ � �      �0   �   x����
�0���S�dl�v^v�z��fP�mW�|_�ԋ�'�[��O�R�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B����F�      p0      x������ � �      <0      x������ � �      >0      x������ � �      ;0      x������ � �      =0      x������ � �      E0      x������ � �      �0   6  x����J�0���)�M?v5D�+�īAɶ(��)Y�r��b��"����)i~�@�����6{Y�2�[�j�N����6���</��V7��7���[��6
�P�t�_ƚPt��ɺx$3��U��$��٪J	�����Y���]Kkȃ�{%*מ��ͱ=|j��V�ө���8f	lL���1�+��Y
s��y�h��w�`���cO������8����V=�9�8p�S�� `���3��M�cNa�g�~���l#!LĜ�{"~�F�!!�)L^�H��
��D�0��f�1��Sn�      z0      x������ � �      �0   �   x�326���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\FƦ�;���%�8�H|�CR�������� �t^�      {0   �   x���Q
�0 ����@F����O��С۟ ���a��]�Ee��&��(�C,�{�I�dM�YN 	���� �en�`��o�c���~��m����t�irQ�#�&�AL0TV̥�h��b�f3����n�:羝</0      �0   �  x��\M��F=˿�/؀2�(����řd�'l�@h�=c&[�`�Oٛ�9�䖫�ؾ�n~���fwo�E�{�]���hg�M^�@Dr�j�>�C��_}������د�x��~��]�߭_��|���o'��7q·<���NnD��O��8�􊆭of4�a��$�������x�����HY �^���x���L�ʾI�$��<�xP�'"�S����%���9ۊ�����ď�^��f��=p8ۇAJ��Ɉ'��]�J��Q �㧘^��dR����Q�"���"�WϜ�ʖ���/��kԔ�V܀ȧ0��Ld"���P����'�����������e���w!^�3�沇0�����X`�%�1�">nl�X��ý�w�_n���0rk(�#2�"�mF�b�#�x�%���<��X�k�#
A�l��b�|,ǜ^Z��K�os<��� ����sɟs�_D�$�J�F�"jnK�r�(oQ��R �H����mhh��4V�������᧳z
8�
��R��}ܹ$�(p1c͜�[�R���C��XN��v2�Q�I��y�	D*���Y2��2sM�8������MX�|lF�}�r���C��ȕSӄ����:��EO�Y�2s3̌7��Nrր���c��?'G���N �Z�g�l�c�>-�S2�Gin�M͎�ڬ��MJ7��+��0�&bMcz\@C� ���ܙ�I�=�Z��5<V�|#LW�z�CL1Z��b<�S��7���0�~���Y>��u��Dk)<_�c˻��N�Ȟ�����9E�h��V�sw���<����f�頥���/�1�\������Z2�򀵴��so�6�:�.u�7����$� TI�a�S竺^��]X��Z�����M���!m�劃b����v�פ�/�[��-W�w�'ჲ@IF�?R��h�=�	2�?��Q�B�Ȱ���sq�!F�"��􊽥�Y���0��G�c��� �`�Z��oZ�x��x5FTtM�	�,��H�ֲ&p�~a�mά�qُqYÈ�g|ˏ�JS��]��!Ƀ��Ʊj@v�W )w���gμ����@�����z��_Y5�E��bw<T�J5.��7��/":�w<�1�ej�V��\`���Y���;�*�;��E��BZgL�n4��ǐp�]�.���$(�S*�����U��\f���E�׏ګP��E�BM D�^�n:����ǁ�E�l���$%���~�2�y����q�&Z��[�5���O�~��5�V� �TP��J� ��M[��t�)βI��O�SP�pΛ>@�u�Y�Ǜ|���(�Ȍ��!�q�b��Z[5�,�V���~��]� �k&#�ǄNT�;�U�@'�� $:GJCe̎g�D�	c��	b������l�~�Z49�^v�����V����Ԇo̱�c�V�L���T��]G\��s�{�rOr�����@�� b
��Iy���m1�R������.Dbm���5���V L�E�i� 1M�`c����L�S����h�힚Sє� ��Q�AH����2I��	4l��<E�ҳ������{�Ay�L��P�R��%��.��c��hg2��E��&Z�t���3����T��Z�.fm"�!"k}#�Q k�b\�Ip�en��rk����ѹC��.�k� �S�N�FZ������=��j�k��i\��R���ޏĚ6	�Ua�ʋ3��hE���,��놌�֊x�L���w�]�i8�vjW#b;�3[�hI�5�G�&&��7���Iا<IFX&�^ֲ.�V�jv�6���X�f�>�܀����<],���~D�e�v/B9��	a�5���G.k��o�*� ��t��U������q0x$X�P��>ـ�����!����0bo���RėA�ց��a����s�����
�ZD�A��`;E�N!rC#Ei+��i��7�;�u*3��1��&D��z���A&[��*8~�)S�y�lg�pg+kq'7Qy�����d��8�m+k9��[x�<C��"<&d��lk�:-\� ����ɓ�{@<�tXn-u���|�7u�v�?U!�V����CHM�0Ý���U٪Ze���#�?#�]����_6���*���-���sm����y}����;<�З���q�u<n�੃�RL�Su��(�84F'��[�כ�Ô�7�v���E�P�P[���b���U�I�C�Idu�]�D��8C�y�>(-�Ov2
�� y%��0����]ۈ�"L����jmrl���+�DB���A�~ҩ�,��VI��������j���V�����&�����bԇ"W�PkmCm+uC�~C�^C�*)�U��e���Mq�Mq�Mi3�qm�˗����w";yB�R�J�]�1�ؽ��S������1?c����%6r��2�d_[�̥�H���<��׫)��h�F�g7�%�%{��WSh��1��@�ƩH���4
�����5��U���Z�d��w����.�ߔ��#�U1\U�6r����ǬčuV^.��xC�x-n@}Ӧ�Y"�4cu��J��u�%���H�D�Z�-n�3��m��baY� S<����b�R�("�(D]n��$}.�*j�$Q�F��sn� ��n��sw�#R��mR�!R�:)�Z�$��X(VϷT���D(���B*Kx�+EQ2D���R�%�N�����O� 
3�I��^5�"�m����m�7l�`᰾we�.f���ٚ�!ڶ�ö�gm'}g*�v��,�N���ж��ttC\���M��fo	l�����<���?�9���*x��iN7�4]�d1�1!�؛�(��W����CMk�E����{��HR	�Zdx�!��y������!��y��ȣ�L���,&Ep�U�[MY;8���B�1|%��6�2:%��Z,Qu?L�-����:8�Z�o1y�'���ƶ�[?��*K��Aj�zO�Lm�W��K�Q���1�ى\���2�/�l1����9	���Q{(_W|~��(z ��hze\f$@j����������%x�H��`Ͽ�Zb�_hH�9�������I�b*�EL5OP+O�sQ�
q�l�ҁ\�͗�sw�4mA/����#�T��r�.g`6�^�n]��ꗛ�2]ЎxJ[�Tn�'Q�6��� L髲���Yzoc8UG�Js]�NB���,<�8�(�����j?P�%��Hoz@P>�
~��������'o�O<~��R��Pqovu3/��rG13��`��vɪѪ�$�8�P�_^C0��f�-���.��a'��|�!l�^q�*q�OД�"��Z<Ov���Ԣ��dG7�n�h<NsU�)?{,G�P��IC��,��d+��
B$�	ȴ���u�L�,�n�LJ�����/Z|v9�(�ֶ�����-�u%[ׯ��h�<�sz�@�.��UH��U(�F���R��>���%�sh�|�4����I�$c���|>��
ˀ�>XO%�܉�xQ�N*�H]G�,����W�䏠�TO�R�au䩛�5��F�*?��7W��|�X���H�g�����j(���\"��d�Iíu�ULNk�)#7��7<̸���x'Շ��y�[�V��ߍC��#���PZ��@~�I�1�G�y\4j�DS�NM==����a��Z�/���:~z���AaW����|��),�r3"y`NL�?��N��O�9�7�tt7X�#W��v��������G<}��r
FPB���*W׌�|k��]-&���{���(�~<��J`���WT��f��>�i�R�����E��Zj�6��g�K�Df�<�������h5�Q`؇,�����t��������P�j7��Ly����R�!��q���ճ��={�o<���      �0      x������ � �      �0      x������ � �      �0   �   x����
� ��>�O �Eێ�.��`��u����ڋ��b�CY���>����#�����1 �gyY�+v+y�?���?S�В�g�>�h��(Aw@i+A�a�Z,�^��kI#� ��
\ J�.8�cMq���`Rt����,�y�S�K�ɮ9��võ����=�~ �[H{��[��Oq\�ȱ����?	'��      �0   G  x��T�n�:];_1���Iq�e�.�Т� ƈ�UG%E�����������3�d���d�ș3眙���7�Y/ۛ�;��I�nn^��}��n�~{�������zs��m/���(������ͱ�P^wO^o%��M���ib25���s���h��-*w���0E��S�sd�����R�4��!��$����rn'q(�h�:.�c�L�去�:��m��I���P���C"�m����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���_��
�#�
 (���*�����I��6�������������/����K�Ce8��q����������(�sG��p'�T	EH�@�Q�mZ߅��A|�=��(xr��TTom��TFdȞg�!����`��	�F۹�?�����ZQ�,[@�N^��Pr�Z!ڽc�TL�r%�<F16I]�N�ċkk�F�Tr�d��� �W�9�"����0��Q�=�`6׏�ͣp^Mh��=�j�,L�S:���g�#Ztu�
4��4a�5A���g7q:<���Mq�������]]���9_����պa�w�x�1jfp[,� �r��-�R�����N�������l%TS����^�ixTH1�ap�����{+=����TI������N}�P����뎘0�:����0@Y��@�ʜ��`��K˱?�
�353?"���
B��\��v��0z���i�S�>�A��q�y�^M�0%�vnU��I@��l����z�gݭ������)      �0   e  x��T�n1<�~�?`Y%A�m3䀴� N�F=��M#?&~D"Ñ�'�Q�>�r �i�vOuW��g篛k?���|4�I�w�b������е��/���l�v���-Yn3?����IsS�:�@%^�WNi�j�e��MG�F9o���>�
��粉̯�%���e��Te'C���d{C�/ɬS����9��IرS��2�Z� �2���"�E?��(��e���o*r�J��Mq��Ȩ���T�I�^J>)�1��'�^�@�(1�5.Ց�D���ɀ�v�D���*
��L6�ڑν0��M���î�f��/�u����Ǎq�5��xh����'V�-p ��>�7H%_�%x`��)Ֆ��k�&������ТT��M��*�T�PZ�`��Fc���f�j�P�X���JT�2�jxuG�$�?�����u�����~��c��¿l.ɉ�(}I�_�2�hi�^E4�l�6|�a�U)0 F�͓y�S"[�˴��ȅ���� ���8�WM�5<ٰٮ��b\��	E����/���cP;;n���2�V�L�GJ�GW�-�@�ؑ��
[����� ���� ��/2fg6��M&�?>�!      �0     x��U=o9��_��Fd�GR�;%�We@�#.���
Q���+\]�v�ؽ!w%[�Ui$�.9���{��Տ���qH�6xK֧�^ݼ{��u�^�~����k�~}�Z���:����?|�fwf�gʆbYo��2�.��8���/��!�� �?�5�E|N�q��XS0�4}�ַX;F�H���]��H�i�h�6P�.��q��s�H�gc{����h|�
!��6�Bf��`�ߴ�_ �,����a�F
�bƦ�!~�:�����!��1����p8�q���J�87��-u��|LN��, ʖE%�{�]�0�Z���%E�j5�$���>��MM8�nnt)�B�5�]
�R5�s�J
r���^�N3�'iF6�0��A[�^pwލS�)\�Ż�:i��)�m���Q`z �@�W���ǆ� �o*�(=�^
��R4��~H�}ᝯ��KsM��4F;R�t>��	�i��
�U�15�����S�d�j�����
ŠM� ����ã�Q��bnV|0�o����۷���X\��]�\�~��Cue]>3����P0�Y����tG�*�B��e<gXR��T���e� G���lҹ�8cQ���
&0���mHy<�gaۋ����6���~�)�DqxiG�sN�_������jv�����2��;�U�}}=Q�]�$��ME=�y/�90�|��˿��RI~�"��\�1�~��z*I_��P
*[���G'�c7����C�?�����*��Ѽ I�}W!R��C{��U�X4v4aq&��{tT�[��U_�;j�Q>����঎���&:U(��ϕ�H���ǡ�FT���Uu��G�F�2�
z�2�s
�^Ovv��(��<��MtU�O�>�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyHO��(�#��EO�Qe�xy��Hݹ��^���������^�      �0   �  x��VMO1=;��G��(�@ɑ����=4��V��!1ڵۋ���S8����������I4@���(���{��Gqnr,LzZ*�L�NN?��?O�	ަc��� ��&�tlt��"��+�EUF\NE_L�3\����5��r�4V}3�C!���t�D�r#�����P%j���c��pt��@$g�s��6��Kv\�/W&+�e���q��EI�Y�3������&'��Z�)t��C�����w��f�{�D߯Ҍ�rmzZ��@���X��.�����&p��Zi�5�ӵ,D�fC+�wY��L�Ԭ�D�ռ�>'s���.��euq�\<�[��	����(ƑN��:
�0���<M���W� ���Q{�m;þMg�$Jb�bж�E���=\b���Bo�"��|_��Ε�J�ZG��]��b$����>^Þ�����t�O�Y����߉,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��j"��(W|�-9��WP�Q������d�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���Q��^���P�^4� >���Ƚ]Q%"�2W����u5�4��� �ms��sA�oq��g5eNw�.G�҉_G�ÿ�A_���IgΤI䉌x5<P�l��tY��8<Md���GCJ��:K0GŇ��*D�rˌYJO�"�`х��GY�����X?K�S�)�(|��N���1a�      |0   �  x��Yێ�6}vE~@�)i�$�X$�^�|�`w'���e�T�XIUO�w�]8PQ<��(�f%�ֳ���˪��WR���8{h��lc�4��5���}�_mօW���_�qa�h�Y�u��m�;�x���~��K�[y���EkH���0S�ڞ��ӷ1���Ϻ��`�5��h�h�)�ж��
�<S�C��� P9�Y�Р�f��1>��������������m����ӾP�����;� �ʢ�ՠՂ>�ו���)a�u���v�H�������O��u�4|�~������4������N�ؚc����1�xuwL������H�7s��!��B,x�)��I���svC{���3���5�Y�厅:�d��%��(�n�����q!�#L��fpG���K��fO+#�Y�cJ���h�`)q��7��ɇ���pI��c�H��[�)��_�m����Q� ��p��.��6�xO]"�}͞g��&'4���B�]Y�٢��Iy��F�wH�[� ��$�Ф_����
_����=u&r:ӷ ��M��8�Y��ܑO[v���5�s}��o���i�ƗZ��<�V)�(����'��n	��h�4KÚ���i0ʯ!h�x���x�B��z�'sfz_S�ζ�lB��?r�h-t�W��������Ԧ(	���js9.x�sL��5ju+)�b�R����)h�m�I��jK��La��Q˴U0MJ��t1�C9�ܨBI*s&�"���$M\^J�
��`�
	��*�ܵB�ķ:I�7��|��3ġ��mf�����(��U d�v�=R)��ܺJF={�KZ��(�����~��xX����&��ă��yT�Ai�3�fd�|�����N����e�_4��4��l� #�k�,���yQ#�Q+����tO3H>o]������.�(4C3�yy��p�'i��I6ϫ���G�mo��J����A�
U���.�:BT�]o+�u�+R>�[+�.s�_�{Om�#|�.�5��V��'>��"Z8U�y��ߛ�$L9霈j'E�4f�>A�]]o*��M���ϝ��5|��D:���|_�ٓ�?,3���v/R�¤%b�E�2*9{�F7O3� eo2����R���%|�̈E��#My��.V&U]�>1�.mCMr_��R"1������%��b���.u�'cWQ����0O[e�M�(��������������x��یE;Kt�D0�W��MF�=�k�&�)Qe��H�����Ͷ"�uG���~��F�ʌ�D����Sm���3E�5&�hǠ�2ʌ�XW�4z�E��S3�ϊN����0��̄���������lQ��I� ,��߆<V�9Q��on�l_΋p��6ƚ=���(Q^x�Ư�LD���	d�2Z�5�#M�N���~ƽa�����Y����Pm��bIG��[�.�֝K����!}�/	���M�l{�,˶(�y~�tc {���Gy
�/�Nq�-ٰF6j�dB���Y:�^�n���]���t�I���5��y�U7j��9ږ}0]���t�ґ8�C;���8���
��&�g:��dѶ��y���������W5��Kz�dG��Ů`0spӾvO��j	����i�-�p�题r�ԑ��Z1��0�O'޶�d �rSQd�c�M!�G���\QdEy �x�ª=O��{����-�����II2=`��f�Z��j�(+�hOU_:oN5O���҉�A�B�0sE[?i����^B3��yY�<���2����q"�#���"֔/���������A����6�� �S�����%D�Io�_�+C�ˡ����gr��k�ҙ���x�&}���G��/,N��G��r+ze�jp�)�z�"�46�+*s���fH1�o���XY�����/.��VƉ"R{�}O�`*���W�p�e��ل�:���/_������_0f��H������///��4|�      �0   q  x���KN1��3��P��²*�*��4r3.e�4�J�6��#�b83S^6�DN�G����dR,�A���Ҡ�m=��-f�z��z�~���h>�glC�Ig�Ҁ��H���}1.��h�G���oI��t`ՠJVap���KQ��%�j�P5�'Q'�V���è�&7gᭊ��Ş���و��F�F��8����jr`0�݀�@����/g�۳@^+�`[WǏ��F%U���a��Kj�Ya��=v��Li
���,lW�
[!����?�8o<q�C3�Z�����l!ӽ��,�9������_ˆnd�,��������,g�
�2��5Z�u4�Σ�ĳj�{�G�zT��'�;      �0   �   x���A
�0E��)r )-T�.q�օ�B3�@�Ԥ)��#x17*���̟7Û��I�,�v�fT�A'E���^H��j��J�������c��fF2��$)]��LٜL����ɀ�.�U��o� 0,LX0:�)�I�|.0�tL|j
Z7�?�+ң���1k���d�N3����_^���
:����      }0      x������ � �      �0      x������ � �      ~0      x������ � �      0   �  x��XɊ$�=G}E��n����u4���@��W��$��=��n�s*���n���|i�[,��r(���0J���W�&%h,�ʹV�� ��~������_E޿�T�d!R��K�����o?���_������Ao\���ҪF��i�-a��Uw[�%��;��<v�zԚF��B/Â���j-4iu�L�O���x����Va	R���^C_�!Jk��)�O�d��������3~����]z����+�"p�B�A�{�W����4x3��'�YgD���3�$�Y���V�]x~���|rx>�Y2� cmt;jh{S��5���(]u�T�DO<~�K)}�vv<9,�T�3�U1]�x�B⭥�P|=]{X_����8�}��Ik &:f�)K�����m^���M}+���/D���=�9^:d�����\S�=�U�rkد5�J���W���V�������l��2�ئ1+璳`���q9��py�9���384MrUh(˦K�D'`���S�H�z�n!�~Z��es�Ld��L)׀|��r�p���A����44��h̘��k@�S�nU�
d�U�J�A�Ȩ0����%K����_gh� ]s����[���?��anJC��F���~�B\e���AºG�+���1ݸM���g��f�2��ì��:`v;�#�X�ə�쟘H~�[�.3�B#�E��]y��v���RӺ^9[*�Z�:�iK�mbr��89T��9.��D�RH�t�А+��cH)q3wЂM�qn�Iʽw���Wa�S ����'﹋�!��p�,#,s�hw�{O�S��`��K��d�WdW���AK�P�����J�9Z�E���.Ϸ���#��H}d��S(�B 
���B�]Vڹ��1ୈ�S�y�fo;$�0\��L83\?ֱ
b_�V���a"bDy��
�?[]mHL��RY8U0�B�4������D��p}ytũ�A�+TK�)��أ<�%���t�8r*N�5CW8h�i���j3D�h`8�H�u�k_|ni��8�S��$q� �"����!���x�K����g�v7 ]q`�m��RŪ,�E�
��
�¤�*�k?+�;�î85�SR�R��N1h��qjJ��Ԓ\�ѭ��d�YR�_T�9� 8�;O\N��]�V�l��+M5�T��� jK�(�)�!��(�i����3Cq���
0}�04#�w�l��ܕ�Z׀�4|���&��*mB 0CM�'�Vd+t�T�5��5��h������=#�tL��	�*���Ù�7p���{��
O@�� ��ʃ_�B��W�5�(�2�p���^c��<S���8�b� ��W�쀂O����RʸW�x#ꔱ%i�<�&�@�ZZP����	x�����@�ؐ�������� ⊢דM�ӑ�f�8eJB��	@���	B�.V>��3��-��l�z^\"~�`��.h)�){�������w���ˑv�Ȳ�u�G�B�<�J�k���|��Jh�֝�'۳0X	iH@��f����,-��wZ����p���V�������YL����F�ʭ���P<��.VH��\laKqɄ]
b2%��ڞ�~(w_]i�}".P_В6Z����	�b��Q4��>+�[-u�!>F�:d��X^O�湔a		J�Ǐ��g�\�[-u���f/�Oy�x��í�:&5�5?���R��RWB�I�G���֑��gU�m�j�O��o��ԕ�ұ97��
��hk�=�^p�W����Jۭ����n���A�
nm?S�V�#�����̥t��ɕ�s�j�D�H���Bw۷����5�iOt��ɕ1��n�u���4��4�B��q%�vm����O��>���H���Oooo��G      �0   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���c,�v�\{1�S�q�=\\^�o�A?�{5�_Y����R{�}s_���OY�]���&-�^W��#}�5MàΊ&u>�姥ѻ��^���H���H[����?:��-��+:���#�&��j�Q>(R�h&��Qgm'�%�(m{-lܡA?����y�^[��w~ڑ����)gy��P
�"Pj�E���1p�J�

��AQ@Q@Q@Q . ���0�s��0��qp%�\	�W¹\¹����\� W�+��
p�J0�
X �`X �kp5�k�5�H����׀k�50m 70m�h�h��PH($
	��BB!��PH�&�f���V���\G�f��u�i�i�9F�1~�c\�h G�x/�봌��
	K�{!a+�*q%$K�J<[�6H���Jt[
(��+��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 ɰ��      �0   w  x��ZMo9=˿��1 x#;�{�z� ��`3�S ��dl�C6���M�9�[��c��H��,�ɠ�du7?__�*����w[Im���JQ*k�o_�����.����R���.����^.��U�ۼ.��5:��;������UTi���u��^��j��:bQ��Wj1/ħ ���h���V�T��p]o�)ʠ[��O��n#��5�h��-&��B�B�+%M+}aD�����\K�+z<;�x9ю�W7�����rnq`��n̈́���h�Z������tNt� ���E��k�jQ��Ma����F8�a0��BY��7ZNgnlaWג��E��Z�ҡp����|ºj�+�����tTLحП}4�kXLxKSI��a}��$���5���6�48Y2��&'|���^nv�m��LpP[��ȳ⽚�7�7�:[x�:n]I;���҆�T��0ņ��+�����e�N�<�ȱ�ɕ�2U�-�Н{���c�f��V���C܅Pռ�� ţ���Z��E��s��w7�o�w��/��Ľ?'�[�°X�Ѐr1�[��{s��� �Z��,UM�C[��V�W"� +n�'�c�
�'���=�?O �|0R3��S�� g���͔:�ȱMi^�m��~�F��:�㹵�w �|"��.�D���c�w�s�!Í(�*�#@�N�.F���%��}��p�X;��G�E[XXÇ��o�Db��8�n
ು����8�FX,C=�"h���Dh=�]��Q�J`姣X���	H[:vP橴��G�^
�'ƨd��L�*ʻn�'���L�y䭮�}ESp>y2"�f���x(B�?�D����nb�����/���Vй� �۔Q�=1��t��T+ �^s8I�(���Hp�J,�Z�
����/��E��(�/�`m zlw_JE$A��`}ys���RfK��t���J��6��t"{<��雇H��f��8�c��%�w~��(�
uU���&")v#>Kz �t��7H%?"X�����{�Wˁ�=+��)�m�{��C�C�XY�-3^<p6�/f������؏���j��`+4�#��aD��-N����3A�^�����!�0q%9����d���U�3��&h����}n�i�X-���S��z��VU������� 9�mO~�=���W^P��'��ʩ234�!5��ψd��QO� W�4�O��u���hE�\j�VMТKj��C��W��Q��T;�@ܥ�L��$^�-����0h��	� �|����Se���0��	�(��\��T�X�K�ah��Yhe��z"�*��v<�G��Ǉ;�Dޮ\DMc�)V 0y�����6|_"v�W���SJG�m�d�KX�{XN�?��@���|
�/?*��z+z�(��$0~��g2�W&ٖp����G�UUN��K\���sl���i�v�Fu��l$ε�*�.%d&�W(ٵז*���1�p��Y{
�D,�+�XD<��R���R)"�UȺR��k`��m���H���!X���6x���`w��Q�y�Hr>�*�^��q���ȴ��@_�=�
�o�î@��t�!���^q���{h*Z����MFU�l�wN-�Z	O��t�O�I��(� ��b��k�
+���a��2���]�M �����3f˝&=�)�*ț��΃����:����}_��MH�Ot1Z쾂[V8�Xg%�v)YT3i>�*�_<�����ݐ�<x��	��^ ���S�<���O[Ӭ2�CP$	�9��\[n#���Ƒ��%��
��ei�`��o���(b�xm�V[�+�L���Y H>���01j����ڴ�*2m)����܀�~��r��ГB麧�AK�����{��T��Տ�<+�L
+]�ܸx�R`��@ć��j�"ϢI�U�VȨT@cP���,�BK��D,\k����Ί��v�:7���e*Wp�;��J9ҁY�S&�<0I�����7NH`�N\'ޟ�8�x>{k[���Dq�p4���JQ���oC�I���c�	e� N��r�Y�b�V)ǁ�t6���P��*)9�nq��0��xeHA���@���R��5Ը�ې@�.����S�#/�PW���� 8�467����-�"���C�C�F�s0�烞Ck�&��x��*.,^F��	O�6�I��7��]�d�vǺs��L�F��Lg�	�c�\�ieW<�E�
�$ȸ@�k�CW���e�`4jZ��!Ra�-P�z�r`�V�LU8<{��׈z�t�;�l���R�(���t�|�6hX��8o��d'LT�	w����\> ��Pò�N�j-$�RLe��粕֟ι�' Y����`[�q�YJ�1J���15$����ѭ���S ?U�}���G�N�J��7������d1�P��SPMB�SMh8��I���<�+s�-#��T����?V��7���
q�,3gS]l�l���s �]�X~<�Vj�C�h�aA��nݩ��S�X +�r��W�JJh�*���r-~�P�]s��5�4�6V���B�~N��T����콀�	�����k���oI�U.�Q�*��R|"2���W�7�MW����g��&���!HV2@�:=�x���X������*T��l��Zro{�l�,��	�L��|��"����/?�k���2 C��IG���u'��<�b�KW`?��=��|Ӕ�6�#���P(�Z�`V�<Og�t����b�*s::����]`�F�?��Q���?�#�f�z��tS<��:�E�c[�d���E-T(�[|xD�l("b�z��x�nOcs�G+�Œ����]�p��t�GsJ���a:� �X�"��`�����~)���x������R�h      �0   �   x����
� ���)|QكMۡt
�/�I�k_�X�ҹ���_�j8���[&
>gt]?سC��~ÛA��Şg�Ė�c[�P�WZ�h�<��{��g��ɘd�7>�Mk�5pY��+�k~�K͕��\R�      �0   �  x��TMk1=ۿB��Iڦ�5qC/NM�)����@+m�a⟓�C�O��i�8!ǀ�ZI3��{3:;�4��-[�\�h�ƻfy��z�c�,y�,(5�O���r�\�D�_x9l��_f���5ٲZ��+�B�)�/&V�;�C�3E2[KQ�C�)�q�ت�v>�. H��_�`|�
1*�2�%)�@a&��n��ᨆ���AF��d� mH#6��uB�=;2nC+�he9Ε�Ǝ�z&H�#�4�#�d������IH	���÷%�ɚ�������M4>���.[
U�Ǐ�"��%�|�����רڬ��^�[�L%��v���Z����(}���AÉz\Kō��r���h�D�]Nz�^<��|K[�:�+��^�E���6��t<�7N����tH!�� �̖908јʸ�[C��Λ#Ť5�"�����FJ��R�����~~k?L.Am���}�ѵB��*Q��5Cg�y�Xs��M�2o�d�!�r��0`�5�ZL�m�ΐh���k*�#��S��~�k���Y�
zvrk����Ԁ��5�䋔9�m�ig�BkgE���!A��؎�S��l־��!'Ww��Щ�<}�ȣ�Fk��X����Px�CR�R
�'��5�������l�W���G~U��!�5��o��2��A�l�B��d�#�n����?�,�      �0      x������ � �      �0      x������ � �      �0   �   x���An�0EמS��@�%
�B�u�d�,9�(عXw�r1�$������%��,Ď����k�V��ͮ�,eI�,�ɯ���!�u�h��#ƫ���e!���k�;��'���u��H�8��Ԉc%fbh��s$�dv"�L�5���>�(�/�*�ҋ���yxK/�*
�5��Q�nߑ�{z�E�hN�1ř�v�~��e���}��^v)*m/���p���B�      �0   �   x���M��@�םS�	B�$:�����Д�(H�b�x�9�G�b&fpA�Ŭ��x�Q��Zm�S/v5��бۮ��f�ږ.��l��m�daO!s���Q�q��:p�SO��bM�9y��%��+��0���,p.���+�vD�,��y��8J2����ٺ2���Q��y@/�S����E�3�L�#�t�)��:9Q�%b���<�UU��֙�      �0   �  x��WI�eE\��tzJ/[�H-AohX!���	.�R-j�+������#�m�Å����-4��)�W��h�������������?�������_~����o�����__�8ۣÇ��i�ZIC��:Le{����%pp<���dN�t����($e�sv� �3��ae�3�`	�����_��+?�����"�X;�w�S��j��`y���i��kSj�F�̵�>��%�؞�kd�A�b�k��-'>sc|�X�� ǣ.�陴A/�V��l��Մ�v�y	� �O�mB�L�vh0'�c�QX�8?.���Yhث,ر.����g�[� ��bےV�̓X2�֤l��y,l���=��(��*�D'$b�h�+%�1؆7��C|��R��N1TIK�Mc�z�����P��c�7�u⾍TǤd�TxbhO�\�Ȑ��Sb�Z0nW���i��ض2ˉ�m@*�J��#��ɔуl�Z��{�z����Qj/�,`�,eC6�>1ش�-2�?�Sr�>�Zb�'��g�%�zZ�E�/�������O?Ԣ�4FѨ'���6�A��Af�V< ��G_F��Í"��*�B�&����Ϧ�\9�n��u�7ֹe]�����X4֣�r�N��l]��k�Uh��c�����Ş���:��Ʋ�8�Р!W�g�A/�:|���b��u�v�
��Y�F�d#𵹶�_�8c˾F�]�iC��B�e ����7�j}밺�ut{z��G:4w}}���K4�U�2<��z<]���Z�,A�J��U�o��A��F�y�v���5�!hJK�����"C�����J�@j�
Eq�qFȶ!�`�KH�s�ucpij�6Z"�E7<�)
4���>�8�����>+\�X/� �mv4(��v�]Äo���V`s�[��{h0Pd�B�!��ߗ��� ��hGy��r�:�?�-߹h#�-{�V����@�[�@�M���C�<�)	>�7'
h�_sl�G� a%��wy3����(�$��2��ۀ[<Po;�Ƭn���褣�;n��o����UQ�!ӄ?oFǅ+��X��u\���`2ԍ���Y^P��Q��}[��$���+4�xA��!r���"\��Z��w�u�Uh0�EKY"��{U9\��R>k�䲳�-24�����5��J뒙@�9��q�
f>�l�w��owD땳6�M�F�O�lf��UCV��Q������Y��d5����#��7�.n��
x��zf���[
�|V\MY6�b��M���4��3V8|(|b������D�s�`��Am@���̝����D�tTܙҬ��3�'�Q��=Ua��+9�f�z�z��;�n���������/�CP      �0   �  x��T;n�@��S��v�_)�Iȉǩ��(^��a�#@�M��]Z],o��%9�
��|߼�\]��n��V�I�:K։�g���Y=�U=�T����ǳi�9�O<i:�]L��[�w�K��:�>E\ʁ��<�X*^�Ŧ��-�{O��Cd�7���!��b�nͯ�&�	L�{"C���^w`�18q Jj�<�}���r����L�T����#�).td��?K��w<�D���eشp�d6Ԙe�?��5Pb�`�ƿZ.���ƣ7ϣ��w'j�Eu�Jo�_2�8jKw^䀹��(vR�Gi�u�g�b���4�`��6���O�ͳ�ҹ^�r�i�~&��r�qRF�8+Ab]�X�8:H���jH6e*�ʀt.v�ޟ���jb�*�Ц
CǊ{��^���$�#����$�R�U �2XFb�h�+2�KM� 6i�y�2S<37n�����nh�[��^�������nΡ������`�,c^r�{�(j��l�2�A5sZ��.��=}�1:��DzS]�E}[ ��\��V��(<�B�����2���n�r��)N��cൄ�'*᪺s�~A��Jwp�iN������;�(j�zBt	�x�V�ԎG��h�ii/7      �0   y   x����
1�s�.��?��HAA���I��?�֫��St�K�$��bJ=b���FP�Է�.��=k}���u�9��j�ev�=�����$5+�i�.�>�j`��?� �	 �s4�      �0      x������ � �      �0   �  x��V�nG<S_1G
P2����X��J�0@4w��1f��3���S�!_�:���/I�̮^W�������b�rr.%;ٜ6�TX���O��_כ56Kj7o��l����FV����f�����'�}i+�������4�oؙJϘ}W��cs�6%*:���E��P�+������5�V�����9%�o)h�a��	���hh+!%�:�i�4���Ɩ̵�����̮�Sm?�p��J��{��`iv���<�7A�`�Z9�t�ō:4b*�*~(X�gKM�����Z���;����i(�<d]�q�6j��sڼ�ߡ��Z�43W�A��Qs\P&u�9a�����$��&��p�;���n�t� ��!׊�RE��>M�l8� ��a��M������t��
`Ĭ�"���-���MR?u��q�|�R��9���������s!�Ω���㓔 Z�<�p�H����>u��][�5[��h�U�|*5�w�k��'o��6�߫�W5����J�y]���8�e�o@�\fb��% ���A-*��A4?�Y�SlL� �4��M��ѐ��Z_9��86�K��8�.c��*�] �0����r�7vc3�ǘ'3-#�1z!p�=���
��sj�r���UG���*}Uz�%��"��	$7�oF `��d�Ϩ���_ȶ��������fr	�í8Hf��x��]eB3Γj���M�����M�ߧ$�&�����v�-aխ��Ef>+�nT�d[�u�Mf�ُ[Ф$m�VX�����
��bo�a\�1�Ō��ٌ5���ǔ�yaF �G��a돩U_Q��&}������������數��@����$B���;:�L�`��-a��
ي��oR�04VUj��&�=�`�W��X��y���\ppz�Ή��
,����ؔ����	����r6k�發G)�'�.�U��N�XH͕ސ�:>|��U�Ǔ��a/(TZ�5���v�6�.������Ou#_%R���Z��?x-��g߃l���ɵ��{�{/�Xt2������KŜ�G�T����?��A�����Q ��/��c���Bӿ#y\��`E_z�Θ����_��ѻ��������      �0   �  x���]�G��{~��@�RI��;�������^���'����:���n�e�3n����*�Q��yKk�|w���]�����q����r؂G�#���O��g��˯����_��m|9�����������ꑗ����<� ��d��X�'`x��������������?���>e,[�XB��p���HޕJb>#�\���O�Y����v6���& l (Y��w,�\�Y�������]��y&q�4B��鴜d)�Ik'c9]XN`���+{�2=e٨��g_�7����]R���QU��6v��,G���xa9�	  J���,�qk���I��]6��p������d~��b�l�ᢄ��[�ﶀ~���V��-�Q��mr�r8�#d�u�S���JD��\�ܲ,�[��lr��e0`@ɂ��c9�e��Z�T_]��9�=�=��1&�5$�_,S���2�}Ef;��v�& l (Y0��,g����>��J����K�)�e�V(�u�i:����2�xa�� %F���"���[�y����b�#��vlli�����XΛjL�A��tѕ2��d[��H5�*F�`�c����`�R�J`k�{��p�*�Tnu�'�t���� %F�vx�,F��\�,M�r���j	�#��Z$�_U-��Lբ��E& l (Y0��<k��V�d7�*z�A��͖{h1����R��j�j*u���L � P�`eoy�:<D)Z%���ҝ����{�Q*ƽ�y���ֱFZ���P��,�X!
cɩ�k���R�ЏS�����^�4�,�x��-�Tv��
� ��d����,�%]��,��OG)�Ji����Li��x���J��3�ϒ9���_{z��}��
eQ��e�H"��9�6�./à1���
96R�J+S�.J��<���CN���)C{�;｜��F��+����1��>ނ��Z���-�i0OCP��!��T�Sp%OH��Ѻ� ����]�34�<[8C~3��j�j�z�XɬM�7r���Xv��}ة1z�J;&���z�oefq[Ƌ�)p� k����#f�Ȭ��!`F�*:&��汅K�^N�������5�UY*�zk���t��)�	  J�콛�*�[��dʍ�0PC~��/mǒ����c�����L	x1% �	  J��=�BUT6i?�W�]�C<�p�CZ�H��D��2��#EϨ1=�=� 6 �,�{����n+�DY&��w��r�+���Hs̈��MgY6~/�M����~�i�̿��}��S���걷�JaWC���X�	b����s��6��n��5�^���
�-++T~������&�A�c���F�G��Ⲳ��ξ+��+��W2�L����<�}�����>����<������c�7��ޯE�K��M��$G[JZH2#f�p��g#���<���O�e��!h�^t-�`���#{ϳ �&���J�a?���Ul��g������v��*ϚtѠ5^�52� ��d����,0Ƽ-FL��uǣ6רx��m�kC��<k*BcxcH`���#{ϳ�Ǎ��ޱ��E</)smW����'���~�(�Y������g�(J��=ςe�����+]�4'$)�]�q�����*Ky�5MQǋ��L � P�`d�}�"X�YX�0��1ƿ�Z�nҽ1`�=�TUO�E��gt4Wxq5�L � P�`d�y,;�qhy��t�D�Q��46iܡ/��t^���3u��B�.^\ᢰ��ĵ�d����,X�uk�T쵻.�"u{��nSY}��a�����Q�p�-Mǋ/L`���#{ϳ Z�[	{(~7e�pL�Kk�R�:_��΁2�,ua`
����n 6 �,X�[��"n����b�f�eo��!�lԉ��(���*�?���P{MruO�����J��$�V礈�J�����Y¨Q���eo��*Ky6S�;���L � P�`eoyNO?�{zz�?��>�      �0   �   x���K��0D��]4X���Ĝ�!8���B�ϸӛN/B@�У*8��v�%T�l5P�I؀A�bbᅼ���{}V�kǓ2�*��q{�>�}o�8s�z�.�m�}�o}m�_3�1��)8R�����$�Z "'����0�+���P�P0ý��)��vܒ�I'K��-E��{�c��.���	�����!�P����� �A�X2I�:�S>�����W��g��$�{      �0   �  x��T�n�@���2A�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝��ݳᨸu��]y��F�2Ζӫ���i9��ṟ�:*��鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ='gó���O��}���:�g=P9����OjںC�4Vy��N�B����J(`�&:oٝZ
�R4����@�G�X9/uqV�[���b}�ID���HuV�n�6���4��i�C�ݼ`;�f���0�����-�Qۧʬ`o��qJA+��Ed�`KT`-E��j:��Ni/�a%�FN���q8�s�:r���:�����r��
�����Pp���uC�K������E��Y���} ���y�Eߩ���������do�[9t��eE�lC�yN�]��VG�Iȸ�ύ���F�g��Tz��`�����c�{����뚣Yc%V�fFƓ{���!h�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�������_~��      �0      x���MN�0F��)� U�@W쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O.w�*rA-���^���U�R����^}�j^ԕz�=1%4��Ɛm��<{%N��Zc?0���oL��a@p��=y����Fy�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      �0      x��}Y�-7��k�
����h�P�w��_B:��7���R�R�p�f��D����2J���H�9�E�]p�GC��q��2�)���,�����?���V��Ї��L�]m����fI%����,�嚵��nVqHŸZޭ����&�_F�&\���C�������\����������q�Qvb�P'�'E;Od�X�a,+ndp�r,��w[��W.��F�yn�(펏�r�ʽ��ew�w����_,۝Z���畭j�V����|[�[���M��8{�lUl�t_����3z٩��멭�q�76�~�Z���[[o��:����x$
'�ĨsQRRL���܉Ԝ)��ϒM8~�c��Z��v�ϣ��uLۆ�D[���eg�� ?ې��h�M��.�,'�hF\Ɋ���YG.̤���f?�������>�l=�m�����l?�a��"K�#��;ܘ$������/I��c�ğ�f;��n�UB̗��q쟎��o�ᓍVJ�,��J�4Y��>��6^G%T�nN��/4�e}�eNI�.ny�~���M��2��9��m������B��+XY���,�̥Z4�uf�U�tX�%� a1	��9�L&2�B��?ynb4���i�	X\��4I_�?����d��B�e�n�+�M�GL���0�u�5
��H�xU19��5�f ��H��I9R�W1i�TΓ��p�V{@
��p�~̆�L��!�[i[�l<���
�j���T�ymH�w,fK�T�x�h��̻�����Kӛ�Z_:�X3h�HG���+c��^,���6�3�:\�W	��$�;^�sHLOZ�VI�c"T�/H���!5	y�5��л����U�86:��1\`Cf�1j��է��L;���Т�RN�D'س�f�\_x!&�e6W��B�,ذ����T�J�nV������M��c:�M��R��C��3t�ץqZ
�l���׷�7�����O,��7 ��^%�/|�iV=�W�8;��+k���<K�G����(�$AqFT���f]�����_��)�ߖÙ��puc��|����c�K�$�\ܝ8?��=��kp�7'��~(a���xvP�D�0���q62W����	�^�s��'rgt�.j����2p�U^�f����Vot3yZ^-�Y��<p,Y���\���y`&T1�����d���owh��_'>�`��SC�:���6�os#�8��_���c3�v���=��7[�:����YYe�K��ܺs\�A/�C'��L,�&�;�%G �`u]�` о�~�r#�i�p��
Hj ����7�aؔ+F(.�>T�$������D��y��P�oh>�쬚�+��zt�x�|U{V�6u��G~����U���J���� 2�6��/!���^����:Fc�K
؂U���5d3���V���0gG�POTL� �`	/*��'�̞X>�E�* {#��H�z^�}]��iiF�`FN@s8�P5#�(F��hʙHt�T�
v�e�m'�Q���5�bV�^�BՂ��?��>`)w�	{c@Oat�"@֒Dne�A�BA
�-�y�r��	��7�϶MN�aD�C�����I��P��4�R9-�"����5�O�G|�p�~u#8^3�{aP x��A�p���^C�]4P��EP/�n�����}��X׾�������T��P��))l0'EB*�?p3�zD����o�M���0������7dj�L��qx��PC8^�]��ܺ �+A� �-�8�3���z�6���:OD����`��6
'��'q,�2�R5����$���S,�;��(f3!n�8��J%�����x�}�=�:�Y��G��Y��R�W̛jr8��FG�V�KXd �ɰ�^�[�������d��-m��]��V�-��ц��,.�,�h� �	�5u�j��5Z��ro5No�*B��Wb�1�*O�ᆀs,p�cBkJIWwx($j��F��	=U�����qlΛ
Xv[j����p��h[�7,JJ���jn{_1����;7$�!5I�#X6Mh�	@�'���H�p٢�Ǣ[��X��U��	�s��X=9F�aX��Ćt�pHJ�f؉�x�ܭ�=5¿d +���)�$�	��R�Xaa�s�9�C��+nqE�0����W��6��!��bs����v}���ñW/���G*��)@MS��H�BMI�F��d	���y���J-l&sᄺŤ���<V�J�������natب�5� H�'� sbu	�bX�^�|��_pD:j�C��wl�����;CX��n6��~�rj��S( �Gk*�a-�IA���=�0i�R�l�m.����V�,��~t^V;�"mC�kC�j8fD%��c ��;3����J�u �!6_��q$٭�zz�~�@����FA�p.��A���Y^�u�z����S �Z�!�y'���5U�,��I�Ek�7_o���x)o��dp^3���N���Y��v�f�F$���6�2|IE�u$����l�vTI>�{z�T������U�Yh�*�g��nՏ ��$�����J�0�|�أ�
t�4�d�u��yM�q��K��\u�P!���Znᩕ�L �j�����[e�	����XI����D��P���+�"R3�HGJ��@np�Rײ��Ȫ V��N˫�C�M��σ:�F?�Y/�t��󏌚�c�}

�W��(5���˙� �0��Q�����5�3Y����r���Y��P��;�?U�`G��l\�ׄ<��@���b�^�7R�'���휝*
*��D:g�Y!�D8�d��i��
��w���]��}upo������s����*Aer��1��J&̅�_(�x���Ou��I��w�F�LE�}�[��Q�_�8�W�1���e�@�V�U���U�^cp�W���j6z�x��H�C/a��X腫/=a�Ez�+(ßM1�Z�(u���O��S���6�&ꠉ� 1��Z'j1J481�������U����8 e�v�/�ِ���@ MöM_8�i5�  �.3@޶w�U��/�������~�@����Q�'�a�� �@b�(�x	��`�v:��(�+rzj"~	W0lHLw,�]9�LY�%.���2৽%g� �_�����E����'��|)X�,�L��)�z@���,��Y��I��Jc|-�8 �@�k-�Pl�+������� ���-��G[�xTz6j��y�����nǠ��C�U��2���*��K�T���4>�RKWo��	R�����m*��'Zݡ�B_�O'��}�l~*��! =	/J�%"
�wV#yG���K�679���Y����BHj�뵣������M*`ݶ����5��g��`L��VkA1lk�[�Vt �r�T�R�^��F���e��oF����z]�
[jY�4>������T�)�s}�;����&���KC�Q��������|Zў���F�xʮ����Y�o��|��yq.F��}\����pb�=����+zоo��@>��%�����i��}ג$qþ�Y��y5귪�BA�؀j����p��WX'�u`ӛEJt�!ZǷ�~�>��\?�H��c�����j�Uc�2�f��փ߸�6��A���RK/sm��XĠȳe^�{�Y��?(sm g��[c����7y@��+U�m���7����#�]��jTf���=��|��]�;�N���7St�����T�~_�~?E �OzP��-��9�JT?a��
4�:B}��K���yq` N��=����y��Q6ӳJ͂@�~Ƥ6�&�L�)���T��9 ��@��L�</�_�;3�->y��\[�k���ц�,�^|��0"�WDj�\����^RT4$3q1v�����i�_�[?�(�tV�q��9�5HM�궅�3l*q���>�3JT��)�|A�l��U�n����	eB����xZCuǭZV���>(L~�s?�RUe8�k֚    KOb*���&jx���,v\�H��Kp�l�ּ�h���+.ǍvˠN�%Ƅ�/r�l�=(,6Շ@�_��h�>�?�XU1�Nr�pɒP$���ܵH���}���-�hv�2ד�pj��U�`+�1�;��F@���Q&�T���p��5�"�h�U�V�g�`�����\�V�.p=���#f��۠���g���]��b#y�g�q�ˠ��w':�k�ڍ�u�`���g��ڑ��z���"b��R�m��O/��'6�Ԥ��j(�A��&:G�hʲ�8�[���?��^1���G沨e��vW����S&��L3xB���kF��4��YwǨ����!����Bı� �v=�b���f�
�<�A)��k���f��i�[�}pB��U;�.����Aa�S(0`Mf���g����>%Fx̂A�2���U�2O�f�*v��[U#�Ԡr���Z�w��T��LL��Y �s}c��6�����enb9��֒/��w�8����-��E	�y����~�#��6��-/�ӿ��w��y1h�S�9w�31��}�Bs��"φ���<-h�	��-�f"�V�D9��T"� �%	6c2	RK�M�IԦo��n�L��+t����`v����}�!@SΧ�YRݐ����m�R�u6A�I����'{Xb�T nȑ�)1l$@�쁵Y�$+���W+b��-���Z��5���^���wԒ�B,���5/0?hwiF%�K����(K`8&�ګoJ�uZ�&w�ŗ � �f��f��ލ�	�p���ņ����y�4��\�>r�nH`Cj���$K!>���f�4ɬ�b��Ԃ���D�S��Nd=H��>�,~��@j\Ob.�>�:�I;��ڒ����K���=���)�6@j� �&8U ��Yɉ�C����	��0�I�[ѫ6[��_������[V���)^��O6d�	�Iy�mV�VbuP��4I����
-J�Co���kjF��~��٢~��_����.��(wl뉂�
��TcBdeHgq{���e^Ljp�z���S�\jX��z�hhVt�zl˽Fbbr���҇ʴz!ՏT�	:\M���!V,�(%A[�E���%�^Ӫ�w~�-��ڑ���aH���}�h#+����@:�M�g���)4��:�(|'Q%0��Uy�o��S�{�n�bC��Ys�E��n��6�\���WV�pU|��v�{��	�0?r�aCb��$Qr���jEi���^s0&�e��M����-Y���9n���pC@"BN6�֡1��� ���pV�u�����\F�]�e�/�Ԡ�\� 0}u�򾡖����������M5�p��b�\jSZ��X,��`�������+����YWɩ�r�'Y<	Ԡ�I�'J�y�E�430�\��\���;�~�$�o)ח��#��L�K��� e�����Lp5!�v@��D�Z������<�5#7�0]��V����:�
��^��Z���\�9x;q�>�Ϯ��6�g���ئ��h���/��߸�R��ήUiQ!���i�r���r�Vן��m�X���d�p��1��~,�Հ�t�죳zѨA�YE.��+о�AB՜�w8���]c�67p��c�_3_7.��@��jF���~n�+`�����ۨ����8�j�g�+�
W��h4��a�e�}�ݮ���
Xs����.}T[;/����o5^�+b�'h�����~�[�Y��~�53��{I�h}������%�@�2]���(�ң��U�;�����L��>�M��ȃ�$�j������D3�s���YLf�ɹ"DO{�Z�@���ߊ���	�i��3�GV|����W�M8�pI'���������2#F�Ĩ���P�����R����@<n���X�{�b���b//��TlԻ~��l��
2>*C���R�����`�^���B��[129g%$t��Re�h����ĉ��ł�D*}a$��I(���t��ٷd�]���r���Zw��j^�~p"Wa'��у���fЬ�7��I;p-�+tw��ɚ�
m���W��5��p��q]��gԙ�n����﯅�������N��f�v ��<�T\w��׎j������q��6;j^h����ۍ���ΩRݻN�T�2��H�Qw�W�'�(h�#p�ou}����ל�v�ف|Z�i}0}��ĎZ��BPz|�hO��r�sӢ'�:/X �Y�Ev��
{�'F]�����[M��o߿��������)�|]��;����~+��f���gn�w������>p
�O����JUjASH�NJt�և�����i�G�0��?�UXlH�:��(��t]��8��2[ຘ\)�vwL�i��i���9lHNAh6����#��XM��Yn�$�m�i�SSy����7޷��P7W�s�}���'I'i5�c��nCB�U�ߢq������X~��qz�4��6��5�?��rR������C5����+�+ֆ��-�W��hE+I�]��;G��;������}��x_C������ hި6����ƌ�]�W'"�(��`�c}}c�0{����Q�mJ�rR�٘�&zwGc����ٜ������F�;��	�׷x�����b��{xT�f�`C��ӯ�܁���H8���i6�T���@�Yը����'�L�U�ٻ����3�t�������\������׷�X�`}K0�=6��h=�_�Bp;�������$��m��Q7]�4�^��"�b3���G��R���-���>��<�ӊ�}�˨z��~�o��ښ��o$�鑛���$�����Y��^���G�__�;�H��T�83�������gɮv�~�'lv{����j�k���/{����ʧ��=&����� �t���:�ιB���&�Y����ǋ��>�h�Ϟ��Lu]��
��g����d����x����-r��M��-���C�
�l�u������r�>���m��:�}z�)��?KqѪ4vҴHc��d

��%��g/bT*�I�A{��k�خ�t����z8�V��Ң'(zo���{j�^c�\��$��þƆ�]���M��,���o�5��t�~������&��V�v���9��M�R/�D�'�KB�1 �?�����ʃ�r��8�r�7[^�|�[��:�lC��h��\���BfPc@ �b�1NL����T�Czڇn�k��HYm����\:֠��#��\?����ʆ��`�>��t���*�T�E����xel5Z��!�Mf���hdS��Y�rr=Ts4�ǳ��F.��5�^#<wf׈���tݾ�޷<<�F��&����Lڭf�����Э�X���y�C,�U:��ﯴu�Ԩ&�#��ܐ��4(���~����ߨev�o�S��4, �J}	O�@
ԗ��(�"3B������.���:�E������2.ķ�70 ��&!�z��H[��5�Q=D_�{-�A0��)�J�gZ\l����׍�F�+�s'ȧ���9׊>^Kmb���Z|�m�Ǟu}���������J�bCbR�6țBb���I��쪢MVHb�S�Xv8��/�Vt;�S�� 7�jm��Y��t�o��$��^�a��k"o�F�w��`{��i��֩��NʇoM�;�Az ��= �����ܲ��|�S�SuLM��ĳ�9�k�w�a�L�eDb����#o�|[�������������7�i�1=e��W*�����A�&Z�l����M���ӁO�i�(�2S}���,����3�7�r�_�1���Ą~k.
�|�}��U�9lPi�i��,�s=X�h�ՕK��V�/�=�y��w�4zD��g�TĠ�
�y�y��ֆ���M+�{#9�2L�ޏ�{(���[ �#7Y����ln�{�6+.��m�S4AO��ѱ����ۈ��ESXM�d�H�&�Y��GN\��.�� E�竵o�/���]�F�_��-�c�pq+M��g7� �  �S�u�8�+�pE×Q�YP�S�f�itO�>=`f�&� u0�:
'��@<��:��+�AΣ�=����0�z���+�8��\�M�π�^���k	���$#�:eG��Rj��FC}U���|��n��ӗ�{��^h�j[F#[(��^�мw�g�#VuFL�
�D��8�Ǹt��J��բ8/"�Y黡O�-[j]{!S3l`)���f6�A�O��e�
cUg�V�!;It��F���Lm}k�G�kG�T&ȿ����Z����k�J9��{�lf6J�<�G�Td@�ZM�u4S�i���ex�h��*Ř���Nv���o>4�Zo�����%G��)^�T@�ZO1j"(��Y�f)q��U�j��QL�ҙ��1W���}:��R�����-�ׇ���2�
���I�ǁĀ�}��_"Y�g"=�\�'�'�M�1[1�{�]0��b��o��.t�:���oh!U+G�:Z����q-@���t�~}s#�V������T���I�	{S�!��P�0�]�1z��LY�1��u}�%��	��<tu����Y�W%s�-�$1���6b�\��>9�� ��S��p��2�=m�̱��+ς���=����3�����)u �����zn��W��ћ�K�>=(��`U�$^QL�K�ʹ����+�`��r��a��Eᬤה��n\�(�؎�m}fpK�,���79�יǺ�����D�N�#lp����*�~�z����փ]3�[���3��svɧ�w6�!}:_��+=ڜ�����X+ض�Z�H�Q���5g�ذ�1AE���������O!HQh)��l'Go����O���u�g������O��J�B|�4F5�5ԭk5���U�z�u��ց��F/��t�G��[���6�:�ն|!=Fv���OE� 21y}���_����#ȷ��.+�]N�O��>U�������ʧDp9�����Cr*.�R*���r�f��\q"����-A����͗|������;R��){m4I�>�kx N��BUp�#տ��zJ��-�y/Vj��r0����zFz��(P����l𐚞�a������}V�q�կt[2Q�T��`�0Zg�� �]�FfZ+�bv�D����~�
�O%���!������}�����G�P0���{����ւ*���$	4R����??�t|Q+v����8[��� �konj�g�Fc#Z�ͽ9���p��Y-\���q�]�^M�T��:���E4��,j���\����E�Rn�cݴ=�OM᧦��a-��V�:i�֞�`j]f�!zP#Q��.w�(O��u��G��c�s��]�O%� 6Y�<���nZ�ڙS�$���e�b�������_ؒ��kF�%΍�����T���,�B	Z�	@)p����)���歠EF^��;�ִ�}5-�{������ro aVL5�'�ʄ��I w%��.����zO��lO-�Ӟ�w$��)$�L��sQ	x<�i����l�9ԗ�'s���SX�K�PY�HME1�c���j��)���S���B�w[�k��6���a�a���5�S[������YnL�Y=Ѡ>���R+�<qJrΥnDV%�an�������������"����Ҍ�F�>�@���<��G�T�a߱����-�ho��a�9��Ʈ�W���[�d�Gs��t��D]kE�G�Y�3��S���&���a���'�4S���b�l�,�S�?=�����D�_��ʄ��`���ɪ@"��"'����H���WLi���X�C���t�Ǡ�+�1z��b)z�k����Z��b��5S��a��
�ug� ҼeO���st�ydnh&�[��RK���*�.p�r����m)�������(t�� ��J�-�!�ַ�nM�Jb�Yf��;d��w�WO_i=unٖ�U�hf��;`���F�{.%�k/)<sf�%������l��$u64��j3��$$������JW�4������v����"��Ii�ӶNL�>�m$��w���u��$&*�,��������շa��p�������ͅ8*"&P�MU��<����Ko�o�⊍J}��Rz%%Z�T��OE �Ԥ��f��P�>�h�`$,)	&^1����O��)��TM%v��$�X}W�y����J�a|u<��s���ԟ�֎vdj�9��b}ʬV3G:a"Z�9|�V�ܙ����p.P����w�:���ژVYXV_�ө�̽�p�������=�RW���@��GEOMէ �sn��e$��*�J��ZCP�l}�E�JH�&q?� 7�^�ҕ�6zb���-��c
Y9�|!Z_�[�V'��i�#U�D;����S��2=l�h�L�� ���Ô��d�����5�0��3�h.��Qd�c�Ͼ��%pev�q|G���ނ���� B��K�Cu���X�]��3�d��4�0K˾Y�繵4���������4ʙT�1?�Qݏ��|��e�d��Q(QęR`t�������ٕs�s���v���?ۏ�~�R0)��P~kk3 ,.��+�0X��d���Sy��y�1���pv���h�\����.~q�X��9�V��=;�Ź��4xО"iE+N��йo���R�^�k��>߯e.�}��;�l /HA(o�DT�$S��7��2����c�O�p��COՇ�J�p�*V�2�>�K���닀|�����>���~�G�S�NJY��U�)|��Z���p�Û	��>�~Z��Խf�Ue�r=^w6��f���h=?y^h%� Au]�����]k�j9�Q;�题���ڣ��>`��_��m��#�i~'�&�7�3�3#�3�A�Zs�RPnM�������N�w�_d�1F�^�L�$�Z�ਃԌ�T���T$Wէ�&� =Mo}�����?����ӡU@      �0      x������ � �      �0   �  x��[KO�^ï��-M30���In$�&Y\Yj�t�PwW����7^f�E�]����w�Տy�H%�M$������<k�OO��U&r��W�Ly*U�\���^�\%W�)Y�&�m�\-���h�B�u�۔���J�}�e�p�\��*�y&4�g�{/���_�K�ϧ�Q���-o���K��2����%�?���,l�3-s�w���[������� ���8
(�6�����O�[Y�z��>�H�`$������0
��u`��7Z%7�5�.�Ԍe���t�(��{׭V5��-yY��H?�䲦Gy�)l�H�	�3�'L�F�,
����Z�1�y��"���
C&�Ә	k� �9���4Ȫg�A*��g�Qv;s��l0n�y K56��<
�W^�lo�#���wo �W��-ڥ�ᛨz'rX�y}���xs�S����y���r$�<� �W�)@>r N.���_P)��][ck�����GN��4Ff'1�����8n|:��^����k��SO��x�obb<�e/R���_n i�0=��I�f$�p���L{��߉Xe�;L���4���D��q���jO�󶐥���<�'��ٳ��N�ts'���3KUX4:�=N��2�wǱ�.*���2�_x�;U\����ɯɍ.y!ʆ�k�2k0Ik,�5X�In�`-S�5p�8q��<��-n�R���=<���ۖ��f�G�o+�s>�*�k,j�lu�kx��Wh�h�1���L�~��f!���d�ҴB����`s������%���e���As���ҫofe�7U�x*
��?igAc�ł=W_ˇ67��l�|�e7�N�,$��19+����O��*9���=�Y	�a,�I�y,I^�6���|��/Z� �Z�,�q:�d����-U�NTɲi�;b�Y�tRk��T����!5k),"��+��S�HY�5���T�7�#a
���*(X�^q��^#��w$�����F�%4���X4���	ƑJ$�c��zZ0�}-�,	B2�ϕn;�38�Q��	�⩐���K�@�>[�_pgo1���T5����؍cHV�3=
M�C��m	j�Ȝ��8"(r���7N&�:˫���X���S��Q ǃ �p��..3:r�r���Xg4�����enޑ�4���:dB�3s�&�4Ž(�3������_[��T��=<�`�8X�� �z�K��Ԛ&(�6��#RA��8��-�gC�l3k�_p��MCDQ�_R��-�vQ���`�gzuUt%Ef�{?f��,64�'�n��-��l��\��i3F���X�XU3:':[}+'X�$e �
y��?
v�P5BKC �sz-h�{G<�9N)�rݓ��^sT��#r��V�)�k�G�˖�o֝z��N1����5�>��%�\�4̥ӷ�zic���@���$�s�\7��L���s�X�����y\2�uw������D�i+XȒ��t�Wc��U���n�)��Rݖx��T�"�.2�қn�����;�W-��x `Or|�lC�&�O�vzl�n�n
"�;~O�a����e*+s~k��6΁�����4uLw��_�����/��4-f�i�5�خ�{Y&��]q���!O��T�a��̳�n�Q0%���Qm�Sԧ0�؉�q�D\�^T�����-{�8���ц�\��8Y��(�uG�݉�NC� 4Yn��I�����q���xh[�&��`6V� �I��F5�q��l��.Tn[�N��z7��W�1��6�\�)���0;٣+��;��I��t&z��7���o�u��svj�^X�8e^P+`�`�p�Y`��)�fg��3jYC~+�/sU�;����L�4<��(/7�s�-}'�����q��5��(���HL�5$q��C�") f��?OqfD��'�/`����D�3s���
�憸9A�e%}og}��s4��o���Mr��+�Q���5�b7���v��dck��g/��/e;��q����bA�?�k�f��] �}K�`��w5l��ѣ�;��S��擃vg��L�2��|�����8���x���v�q�)�
I��s�ɪ(��Ȧ�+7�@P0A^�L�r;F��A��3^i�I�6�Y./<FZxB�	u�p��g��,?[A��}��:M��ɺp�䫗%�SD���I�3��8���	B�S��|r�-*mr���dqǉBHJ��-^���;W��omg��Qk�N��r�p��t�"�f�ZOw!�ܬ��w'@!'�Y�BS�Y�ԇحh>Ag��B��'0!/bu�?�1i+̐�
�*��0N42�+]�Q��m�w�ֽ�۔�hM�m��k1��4Zk��P$�~
�ל?�+��H�0���c��(�S��Fs�laNڳ�;��҅���G�o�����i�9�Y�/ei�%|�Q۔���I�c�,�P�gEw�R�L�rAN�$�W�����.��.Q�1��HIy#�u�B!!��|m*��A^�%ϭlC;��	���22���l2���K:�7��>���]����t: �m�f���4�H�q�SP�D=���(i?��У�+#.%��hKJ�T�CH��ޭvR�tog:��7�b�(*�����:lJ F�rF���Z+Ce���'Y1��Hjt����v@p�
r3W�}� �Ig��{"��S�����~�Xm;{Z�C[*}PW����y8[���/�C�ɸ���T5vW}^�io�3Oԕx��u�6�rY�ao��/����a\�T黑��!?,N�4Od�K���߿�����x��(lpDկ%;�ṹ��Z�8�_�7������_��v���]�����5N�j��Qqt#S���y'EE����J�X�7���)~j���ُ�8i'J�W��@�c`q��%Q��p�Bl�n P��Qt�Pl+�<���d~�.��cWU5�Ȩ�:����b��U�*���qI5��N�L(%G`�a1��>��:��%��V��*��1o��N�~��#�����x�[Q������1�g�T��쨩N�DS<��mkQ�ʍ �8Q���c;�����A@'6�Bj�fW^��tc�%N�0����l7�q�����8v$3H/�9�����)�&oZ����2k1V��_Z����f(2]7t�gqbr�����|�R�.����e�<L�8� ��31��gc.z��Y���9y.�[ѻ}6�J��ӳ89�n��9}W�y@�������9�R      �0      x������ � �      �0   �   x���1n�@E��)� ���r�4�jlh�eƬw]p�����b�MPDM��ϟ����/f�=9���ÎUlS�m�}c�l��VvY6�ݟ�|�A�qg��@0��]nF�����4
\#�H�	���i�!m|���E[v��u�ܞQ�C�"�T	����A�RM�MyН�/ə��uT�ק�V��Iz������$!]#;���l�z�<�EQ|漞      �0   �	  x����n����O�蠻���{�d�IȲ��2��C�"R4�S�"/��\r���&�H�@rv�kO�9��h�T\���*[\R�I��jQ�R��;��N�My�d�ԧ?���z�cI[6�//?^����>>/��L��W�|��/��p�)�OV��4h��1;�wڌ����������};��hhr�s�=+ݪ(���@9�n4��{���3�
������B������n�~i7WwZ�ʆK�v,;��-��$��Z���*�1�\jVV|#�շ�O�i���K��K���%�_�}�|���⠴��ֻ���b�(�ړ��>k���2��I��=���)1���'6�<bq�|�Y����kn*HJ<�n]b�o|B�^K,/����:���:���vt��\uT��b�z���k��B��N����c\���!T�����*}��&!Ü�W���	�F��R��gz��C�?��_��<u��d�6^{�Zv�8%R	-�*��v�j�)qX%^T��� �� -�E�qↇZhòW!�x��j"�:�iÇEm<^�����>m � �sl�jR�XqIV�����`5fJ���\�5_�a���Kc<Q��-P}�Lp��cvt4�4�s/jgJ�$��n�^v���*�lyx!a,Ԅ1=��bR����PR��B�M
e�6m����xi`���_���������!~�+�Q%�1��G�)�����35o���#�?�<:r����j"�$C�dR�4��S���q���1��3��VkY�~�j>��,�┝���S��,$*8�|�kf����1/y ϗ5,�a��r�U4�v�LQ�"!��$3�=ن�,yH8��0E��1�b2��uAA�]5j�1��6a����O�r>6��ݔ
<%�4�/�]�ՓW���]Ȯ�9��-�[�Y�7�����n��3�L,Œ1~$h@SA �5�BUK2��xj�h햻�=u�93�x#GL���Z���p�0�Qb�&�!�y���엙���������ݯ���ն�G����8W1��0E#�R��E�zt���9b��EnO���N��n5��єR�щ�d����6
��>�9���y~3>��㥑��ٰ0E�=��%G<DS.�T�*����64zu���:>G�ߞ��w:�gy����\���	+q�!㄰Ǧ��z#S;g�E��<'�U�嶋Omg���L;}�z���ǪsI�Y�gD��\��*^\�QW7��	a�'�>���t��jS���<��9_����6Eլ �zL�:�����������؟�"����=�(c��q�ngOY�v��\��p<%��V�L[�.�aTrHe��T�;e�m����	.\ΣX:�P�/[�W+IłQ��.���jY.�<��%��+�Tgv����ۼCvT*�e@[q0B>Uk�&�\rĪ`��f�����C�{� XX�Go�@�#�U0b#3B���r�&����zm1��Q/�#�}{�!ݥ��o7dx����D\q��-6v��1�0n��-e���v�N_q4/��/�½����b�M�De�VFiG@���$͔Y��qLә�0/q��m��1���LS9��p���9c;����������ζZ�w�LԪn��c�
l�W�!Ė3��Wf���������?>����%�v��	,�K�Dh!��Th+r�N�Ԭ���Z���!z�V�L����|N�U5���ؘ5�mu�{͇P�ڣW-g�¾�c�U$,H��^[Oi�����4�������LVxW ��)c��k�V��л"�a�)�N���k�fv�(�ya�k�xl}<�"���#yW��5�K)��͵��tE��ꧻ�Ep�'�
�

���VVH�Vد5�[��thQdǝ�+��!u_Ɲ�7ןn/k�|�k*i��b���6g�0�z��+���5�_�d�r8T��s��*�?0|*�m��qTZEl��I��Kny��B�j�=->�|*§��b�d��!KV��b��S����k�9�.e�>D��h$v���dj}!��"�̻�Z���z�����Ԯ7�¡b�*�Z+ZN�9���h29���ǫ�?���O=�_��7lS�.��o��F�
�ƑmIZ�$��
�׃E���i�$��si�vT���\�����~iw��-􃓦k����԰J�8*�|Ԯ7*�u��ƒ�����O�GA�m�xu���2����<7X�E�낱U��1��?I��6-���h�x�I;}��qp2�`�����Q>6\U��@�R.Mc\=�[���<�K�����>�����ۧ__��__p;w��8��`F֮؊=P�iu�N$��P��F�K�m�O�<�o���>����c�=�,�z�'�;N�O�&�G��6l'ɪ���_Z�x��6���(K�x�Dv�۾/�ŏ�����/D8n�      �0      x������ � �      �0      x������ � �      �0   $  x��U;o�@��_qc�����i''5��@�Og��Q�G���t̐��U��I�$�'��#��Ǐ�|z�]a�����F�//.�?��R=���,�N��|�T��Vט=\g�l����`�ϾM�eռ%�`w��7/�k��ж�jm�(���ZP�a@\���?+�E\��F^���(?�O���;������n�^�OX��p��K�gѣ�(j�ݐJ��C�*e� ?�Z ۏ��*����޻IO���.p�-p��
������nq�;7Y\!:DNo{������q`���~E��1%ի����?2(������G�X$��n��P>4/��>hKJ�s���lR#��#l��/k�+�������ќX���mD�8�Գ.���>*�3�gӽ�t��ҝǼ���Kw��R���1ܖ~�>�r'ҝBAdb�K����9�Q�j 3���ľ߸H�K4D�~B&a�7	G���'z�/��xU�J�Ax0���v�5	%E��b�pc���N	�%i�%��k�6hR��(Q�*Iٴj�J��M�`#�	p(�Fjt�4���)��Y7�K�,f'S�f����|ov���mc�E�xG��h׌�$Z�D<�?c��(O��*Z�b��NZ%�(]��V�,)�wlU�dK4�Z���D ?D3RFpIX��`/Z��^��[Jv��S;��u�Wʖu�ӗI�C�V���ݠ��d�O�~�7�'�=H�������Ա0I4�&�9��A����<?u��\��r�i�U�n��iA��&���?t{�Y      �0   $  x��VMo7=K��?@P-%@[�$8=P��(z2 PܑKnH�P����CO���?�7$wW���t|0ŏ�7�w6�y��Ud�j����ή��wn?.WKڭne\�>[�L���O�)�t��F���架:~Ӎ=܍nF[i��Nۊ���9^;�m�)�B9+hC*b컐F������{�"P�DT$�F�"��!ۊ��#a`DĔ�>�q�ώ7T��V��H��1u%+
�9��fF���RB��#a����i-燽���UȊ�1F+��[Z�l�]����Aօ�h\��%����DK$�K���n�B<<)\	qG�kT���N�j���4;�,���]���������!��A��:�b�JP��>���% ��Z0�|���"\}x���Q|�edJ3��%>��O]��������)%~χ1x�G(�A_e�>�����Z�Ɖ�4��~��w�<E'fo����t<��\�"��=NI� ��q4_K�+�nP8�HZ+�.y4��'�"���Z,�>K�Pb�C�����^,���X5���ı�  ���j�4Ep�_�R�N�A��+�-L�P�l&�OItRN}B�u�ܣ p� $.�m���~<����]߃�3�>S�}�˄�� ǃ���6I��3���]r��^|�q��pk��m��������(�J9Ɨ��i5�9��sQ��\�Ԛa�#�e����e[4�{e�Ӕ6�'���q�c����;����|Xۍ�\�A�I۵����S��6�������7�4��%���Nu�F̯o�7��V�6p�[�=��e�s�E+lYJ�y���.�;ʖ�?V8ӕ��)�S�Gy�<os�t�W�u�/=�QB�,ٳr� ���P%���P:'��BY@V02��܁l߂Yꚛc҆��k��mi�}
߉����0��������)���#6/�)�������x�%���g`�ֲ4\������lV�[��q��͊|s}E�ݹ�=}i�(k��?G�D��D��r����C#������_�ӭ      �0      x������ � �      �0     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ����      �0   x	  x��ZI���<�^�� ���q�Z:�t@���O���͍	VvuW��lZ����E;i���(ϱ(�&J8�b����s��M&�d����1�_����&o�?��L�W�.lv냍��t��֤��Ϥ���ƻ����j����o����WC�[������������>���;.&�e(�)�6�cRְUd�UܽW���$7���F�J�NGp��]3���(�@ASȚ�䤨~aj*��U�F�mLu�Qz�k��'��м/qO�p��L����*�4:J[%�e[��s���л��nb.ǾQ�Y?�Qg1��OUJV-�b�n�HJ���\�mNZy�*� %�~z�Y�8�:��p�0�#�,��1Jv�67Y��X^��|�]$̳��aЀ��-rh���FQ�N�1��C�1��m3E�P�7��޲^�8?`��Kd�l��ը�Ur����ن���0�����v��W�	%�N=�T�'�M�U�ԫBU��9$�"���O��kƼS�͎a��)G[�N��4
(�䓯�5R1��2AI���mI��R��ka{l�F|\(¶�cqb�q���Nb��D����w�hI��$_(S�c4Ԧ�D���(z��y
�n�[�
�h,�)U�у#�S����a�a��ˇPֆ吧	n�j�d�ӂũEE6e%%1:��%��՘���1o��j*�[�y#rV�O�tԕ��Ƀ�h*�uH����0��e�0�.F4y8,o�14�Ô�n�&ip�1���j֖Bݘ`�W�#X-���q;f�}��p�S�-ܔJbQ݆%������>P�Ѽ�����2������1�r�ѱ*c֢�Nc�T�rs�,��P5mo�3z̛���qq����L�z��Ol���x��e9�(n�/au�U���	�7�".zj��Z���K�
Jޢ�`d��@q�������ui�x��0����0��6ȟoՐD��_���9�f���g�jq6.�1<� =�g5,�-"^�M�+�T���9�!�w��}�~��֙�a7K��o�qV�M4���ƒ # �"ZU���vv�}�O�����x��a���B!�ՖY9r�Q�\�l�b�� �g�χwS	����}����V|��!fp�0lW��)�G���j�[5DB�{U��v/��T#�I�F�EΘ��,3┕��3r���_����v�˟�O�$ݳm�����5��W��#��M�l��n*��A0|���&�TI��082n�Ri�w��0���7������*.Pq�&o���r	*U�E�
�A5����=����n�S��xd�s��+äk�w$�bJ�麿����%'��	�|�q�0S��J�N�*Hml>�j�O�,M�������f����"���=�;��t"|�+c̢���V{�^�!��U�|!���96C���p2`��I,ڡ�13�Fl�M��Y�"��n\��Z)����0쀁����f䍬1pF��b+'h��I�0/�Lo�Ja[��n��S����!�G����]��>�e��k��MunJ���AF�R)	�^b�)$��#~� ���6������"o�ׯ�0���'�T$qkU��X�Ŭd��1t]�����_D_�<��kks�d'�ڇW
tV�Aq/p�0Qi,?Qŕ�rيg��f�S�J��W?��]�4�����P���� 8��:��.��k��*�.6�y����~���i���k/���kRy�x r�ĠS��Alz_���َφ,>=c��1�$)�JT��s���� oK����_Gd�E��8�Î���Z��8��.�(W��8V�l/��ƾzD�c�Odܟ�E��}TX�U��dL*W��+�7#�����7�:�0���/pjMՕ%9���ō
�EJ�9X��0�#�u}ø�>��4T� ��$���|�͓-�֬�ՠ@	��n����5<�V���i���a
�����`��T(�(G�_�Z�m܇AǶ���:vlX�{�Y�8yi���e���cQ%iD�l$��a�|����O�?��7O٧е-*�S��v-*�DW��o���@/3�j���G-h�#c�x��g!�6)����0���ܸ��ny��=�����*�nX=Q�Wp�)�A0�C�=��V��>7��ބ_܀�f������1�<l�p]�8��B*��p�b[�/�� 82�_&�����ڱP�ݏ�'�O
YG�Al���N�5]?�D�V���"D~����o��Ro��T�.Į���*5j#B�6�����'-.�E�����BZ�l�xe��wC3!	�X�.�����˕���S/�)�<?��H��㗯���:���      �0   �   x���K
�0E��*����
J�*(�
�Dx�&%���q.����ĉ�s�SV%i��Ɖz0(A����w-?4�ѣ�ťy�pqL6��qp�ۓ�pgC�I.�Bn2=-Y���fF�`#��g��0S�=F��@`r+�;K(��_[F˪��� '�GT��z��ނ��Kh���[����.�]F)}$cz      �0      x���[�d��%���(z*Hԓ�g��h���ht�%P�s�C��-۞'�«"jϛw?�#�k�"�6�Ц�ε���Q.���IZ[8�d�s���	|�uǿ��a������w����~<��q����#�G�OΘ'}^��KO�p�]������4i��"��_�������v��������������^�����_���(��*+��+G��\}W��7�Đl_1�ᢶ/K�4��Ћ��SJ;��b�ǟw�4���*WLT�p&5�܈)7oV�H���'O#���c�{�>����T2���T�0Ǧ<8�A��#����|N#��c?/v�ӈ(F���b�BҬ.��d�*�ÈF7_��I�S�6�9�x�6��\l�I�H�{�]qTn��X��B(u�`��c��,?�ۈy2��5��>��*����$�P;���R�c��b��|�o��D��7���;[N�������u�C��N�Iy�q��?�ѳ�'w�O#�N/���4��!'A�0�ZSSR�[FtJѩ%��Ħt#��t�����[6�z=�_���ш��:���G`K����1�*i��9V��%��<q���5��>ߏ�N#��O�1U�3�S�0C���j�9D&Ĩ�׍85C,g�S��'�#�Q=W�RT�D.��j�z�D�V�%#��ގ�щ�cɼ=o�^��G������v�U*�T7��2��h	����֑�_�sg�_a�i� 6�#Hl���u�(��Q�9�̰�T�z�K���C�x�g���4�yp�i� 6ţ�:ܠ�l� ;.A��I��	�VX1≻�����O��!�/����}�D:���YĤj����0=�&���N������$�wtߓxK�=_No<�x�.�֝".���'BS�"�`�uI*�R�5/��i�'��8V�i� �ՇOUGݫ�`	pl���@�:*�p�/9�����N�?O��vo4Bۚ#Q�у�W�r=TX]TJ�S��r�f4J!�����{�w��dv���4\�j#�5����`h ��'qɱg�}���] 38���NQ2;k��fP�M��FtJ
ޔ�����Ɲ.ޏ/���w��c�Ib�SQ&Wt���ˁ�de �V�o��8��vgtl9�v��(�m�c��i���ե\U�:+�[o�x�,�����v�y:Bٚ��$�qAֈC�@
Ǯ�*�����ݭ�Xk���}����'����H��4D'!��8�D@<\���R�}z�O�ջ��)���;�4Bۦ�fB��	=���b���+��5,r��i���׹<����4B����Ӄ.KU�c'q�<�=�Y� ΐ���>��"���,�%��@�ٞ�`��cg��ϡZ26��k�3w�{F��@�K�S4���ͯ�FHf�̡��~\���ȱ3���ޛ��&MK%�i��s�D|ُ���v�]�vtDG��T��D�C�X�
�J�6���j�3�g�V;^�@��;vr�$����K.Z|~�q$EH�(�x��قK+��|���v1�,�|�/���|���TG��C8�c#�"�*����]�άAO�6���$�;K6|��?L��vv��: �(Q=��z���b��H���[(��ڷ=�{'�`Alv��H���Z�*�o]���W����c��g����^'AlDX� ����cT�� �y1���8a#Yާ7Ϥ�g�	v���gc�Uo��'�8`C����AIVNwI~z�ozj�z�	V�����K#X�C�?Bͪ4��(���7_��>�p������y��=>F����	\-e�N��^��u��1Y�{�/퐪�hw�d�,����K�B���:����8(���Њ@�[h��:�9��}FX}�)��}NjD)(gS�e��B�^�X{N�� 	�&����!���I�cԖC�'xǸNpULG��4�e6y,��N*��������4B� �"��*�(b��O'�4�Tc�K'AqƣDĉ�w!���8����ˠ⽑b]��d/9�|-5�;OR�=���%����mq����B�E�(���Z\E�+Fħ��}��9��z��FHf��ѭͅ�P�7PYk��9�I67k�ի[1bv��W-�$�v�b{��a|�M��Ś�Tn��5�P������29yy����<�m}=eAl�G
-��F��ځ�$����G3q����}��+Z����?��:��D� �Ff7���LE�Ң��D��"e��w<����c����V#�$rl�H^\T'A���<��� ����3�����]��y��*�b=[׆�*h#z�	.nB���V<��	"�w��,�E7>[#���;�ʉT���Xc��M�j
�q�>���i�a�����Rd�dv�Ŗ	�(h���;5R��2�ؼ���y+��7:�g8��<�V����/���dv��Yw
����q,=�|�#���[Ɯ�t�����Vb�p�ސ>�[�G�IOTV"2 w�x6���yW;$�>�ÝFb�x�Zu�� ��4��q9w)zJu	'����||	�ۿ4�{��NǾN�����yx,���*	+�p!������,1��H?����ӈ�$� ���wE�,�s�� ��[�a����O|㟀�o�=]@eϝFbG}T:�@ �E�H*��}3V�1�Rt�v�h6m�'ml��F;	S�L��R�uV�g�� ]��$v�U�%1�:�3�{r�XP�F2�HR
ԭئظ�| �RU��k������,�|�@���A��i�dv�����A��[w��%EqDPrK�-9�l)�`�?�g|>��� vt�N���e���R�b ��F�x�F;fR��u�Ӝ�����5�
bG�\�٫Q<���+�F�s�!S� �͗">ߟ�~�o�м^Ч�F�u�>8[T����1)�n($J��)1��V�Yݠ���4��4��4�:	 ��p+Y�@���ꔊ��Z3:[0���~������=��@K��1%E)�Y\�@dۈNF��8��9�5����|ވ�9�1o@�N#�#�f�p1�$zFf!�ESiHO�p/���T}R������S��>gI2��;xp@8�t�(� I������^�	�����gc�뙶!�]2�N����8�^��'Q#��sK�B/ӛ��6b6q�w�	b'���ܽѪZ(�خ
�;��d]��K��3�������c^�Ȼ3�#A�d�T)e��d���*D]*\������(H���[�e�g�l|��:	w$$?>:ɬ奈�@tJY5 �H���#�4A�wz�9�l�0���
���I�C]�kNt �A��]4*2��P�2���������N����gc���؈����Pj@�kW.��2#g��a�d�;~�6�o��F��g}�
b�x]�Iso��Oԁ;�
)����X̱�:�3��W�$A}��aAK��I�����FL����+��+��#So���2��	G�u�ovO��h�dv��MI�)�`�q�jV��
.���K81[H_�~���Y>��+���(H�ʨ��2@[@;�����)�>�XJO�)�M[�}�d��Al6G��5Y����u��\���m�HJe�/>^'&�Y�q�IБ��d-�kmF1(���Մ#ʾ.�EL�~�>}�(�y��{cûu�IأꖐYKK�b{)����a�i=5�K�}ՙ��9��/�^�s��쎘3��a�hU^��S�4V���3󟧀�38a9}3�9P�X�3�v��R�hܵ�#�
vLꚞm!Ơ����Cj�����M�ƖRk%��pt�]���E�ʭ�*���GdS�_�Aő�^'�."���*d�dv�o&ge�42Jf�-U!P	!��Q�|b�[���ķ��i��؜]=�oz�8	�q��Q=���^��r22�_���+���� 6���K^a9	�!s�;�ǿ���O~�t״���s�#�u�W��7 R�Rr*H!�E`�����V\w��e��i��_��'���>�Y�b�9"R�>�Ĵ�o�oX��ږ�]2DKe��ؼ_��:�|_6��    b!*%��1H�2	�.�k6����t".�;����}���'Go�{D�=�U��1�\W.�(�!1���R���Łp��	��ٙ9'F��50��>��IH�\	$\GO����ܚ�7��8�"����A�?��~��&/F�����M��pV� N+ �R�>������y��^��iD#���
O�I��53�kj�q�i�F����)�|r|=��N#����t�;y��9�pHM6����-Ua'�0��K|��Gcw�a��$�Q ȭR�e�q0"���1�A�ո6�r�pONw��w)ڝ��_'(2"�L�Y��b�#E�!�.f��?�:�}|;��g�&���FTl`�!=��� l��%/� n"���eė�f��0��u���v!�m�1t)��<#BT�vV�/���Z��ծ��]��9��V�&1Bۖ$�;�(N���1��7\5��5�ޭ)wiyk:��/�u 5$q�R�@&$��
��fy��4�0A;��b͓i'b{Al�P�X7�y#%�����l������#X~�D췵[��6^ҡ�!È*�sv�6g�{�T�^�Ns܃O���$�rfg�V�N" eߢ��E��$�PRbg�Cң.��M*�v���8�?[	`�N�u.�b
jhs����/���rCx��p���ܗ��GxCfg=\Tl�bW?�H�����4T�`QŸ��x���^F��n���/kvVaE���`��OԠ�U��Ȍ���zk͔��X��7�M)��ؚ��H%y|p��K�	8�$IŨ�׈�-���.�|h��4H%�z;iG�̎�����Q�(����� |���:�o��W���pvu�vg�CT1�Ⴭ����˄C��8��y9�Q��H�ߟG�G��LO�/�b�	I[F�VU��M�]���"�t�kͤW,X����X��8�c�u���a
��+�B�x�fR�pL��%���_." ݊�$��z�I��$��m]^�r�A[�c��&N���/��]�;"K�o2{�Ħp�j#��I��K��k�N-��z�� E^����u��y��T�xv^'Alb�{i�1k��{�i�F�.���mK-�B:�i>w�l�>�O���OT1���M�;U��,P '�	����5}�9����~����V�!���3 )�@�����U6��_��_\2�j���=gװ��mv�0�*��Z�`���c<g%
C�]	�xM;e�h��Z���������� ���H�SFt�T�E�3��1W&�Ԛ2_�	<�'�X���=]'AG���'��%Q���C+�i-dN1/�MŎ�w-�6V���7�t��=��H1�+*Y
���+c[�F4��J63�����2�O�w
D���Sy��H��hly�	I�(�� �.	��|������[�������q�\+�$U�����|�Psȗg��h���$6��΂��bx�S�bS�2:ۀ�\�K�.U;������5�A��)�iE��x$9dV��� ��J6�Ҷ��h)��R������S<ϊ*&H�!n]��L��1��F�F��#Sm�*>Ÿ9�o�cfz�zgR$����G�6�Y�8$��q��#���6�T����zb�O|^��2����WF�5Nz�����Edu����p,2;�{���A&�o��L#���XP����9"X I�e��ׁ�"y��2�������K���}��2k��7FH>���I�.RN�E��tTe��R7\J�=����||ON�ӈٿ�f���7FH>�,Xl .t�	_���I�T*[&m�,v�!�����D�?��m�t��^�Z��	'QE(Lz��4�Yܨ��^��S)������^�5�����r*�;n��$�w/���dG]�n	�g>a>�[(�r�O���b� v����\0���TҸS�bC��ɴ%#f��4�/N�F��S�=��a�.�֒�*�h���˞�<R������Y�O����/�\���k#�u�`o��P&�KdYdb��Z<���}���~����4Jl4�:	>�s�j�i)(W�5W]T�Z��-��f�և�['�zx���#��>z�mx=��p�_?��J(k�s�ߌNֽ�4�ĉ�5�賦 �#��9dGF.9*��R�,�	��UMu(n�Zo�\�d��4b�c��z+w�|�ӡY� Y�M�ɛ��9j@	��ԯ?UkN2_ĞrUo����#$��>i���dFNw�X����9�n�����׈��I����#��\֦�Ui��B����:����
8�	_xucⷶr'Al�,y!E�DA9Dq����yʬ}X�(�R,�oA��Nڤ�G��8�uሮu�]T_�f�sS1�Ʀ\�5�v��nq?��7�Ϲ8u�#�����f$y�(l�VwR��l�*݁��2�9d����2gX�d�����b}:B���U�U�':�V�	Ҿ ��Z���}��~��^T ���؞�>|l�ȱ^!�"=�9��wn)׵�����OUL}.J���:If�c�@Vu'�]�*��Ȭ6���"�.���s`��~�����������F��m����D5�� �a�xv�����[�f�{��$Ϩ�kN�]��\���<5T�y������'�c�Q<�����!��Q�ÀvP��}0s��F�gJ��5~y� ��o��`�����I�#�>.���I$Ȫ�|W�;��X��_���1���ш�$��jN��d��V�T��w��&�ʚ����5]R�Y���bC8>�V�L�*�B�Ϣ�)�ԛ�^�N��Ŀ���6�\������!�p��R�H�uDW��>�#�[od<���ؓ�����~c�dv!��փuix�ɪ,��r�>��2��Ј����Uƴ@��FHf�O�������:>B�-�R����\c����H����;�}���I;�c��KAL�*�gk �,*nnD�!�?1�=#�/�����~�c� 6Xv2�\�\�,�8Q����l����*t��/�5{�c��kgfw��F:"N�=�Ҟ��g)9٪���k�"���_�K�,�̹��y��F+�-����E��s1 v~P�q�;��
������z����X�^hS��Q�e;{�2\�e$wKF��F�w:J���s�A�7FbG�c�W��.�������H3�C/�OL�E{����Ž8�1B2;YR'ՎB	�,ovT�O�H���ڠ����;�~�;d�;����Eb!��8Z�1��Gc�]KC���K�g����oY�����쮾ؘ���G ��$�g-':��F���إ����[(����Z��o�Ď|xW[�ũ�;,��Rl-R&_:����>O�sD8��>��F\}��g�����0��ݾ:`2�KxĮ�2�B�t�b��5����#�$�9���X
n�!�\*8z�ǯ������י~&E����#�5�8�$Tb[��|+p�bE�g�$��6bJ�ش�A�d��R�R��zo�ؒrF�-"�G5�Y��o
����W'�̓p8�zB�ql��;�����L���"�����Hx�!k_��������Oև�V���7%�֊�\�L4u����sҎ��ԓ��ҽ����GV�ձ�S8���騞E�J�NY
����K��J�����07��N'o��W_l�G�r�A[9�'M	F�����%ܳb�B����WLّ�YԱ�k#��ؔ��L����u-�H�ޛ[U��ҝ�!���O\��:}�ގ�C��^\)�#���y����vHJ%�FUC�0�D�v�:=��O���/�v;��f�ؾ5W2��Z��Xށ����Ei@H^��]5����ǹ�-��esDgZ�i�(
�΂�%-�}J B�a�ڈ��
���Y���E��8�dvL���4R��p�8S�
���|o)����[���Mΰ����e{��k�ȇ�(:�AUD��{�rY���=���;����t�Ų;dW�U��t���]��	���.�F�3�����Y�<�Ϊ���ȱ�#��R%�k'�hl�`��7J}מ��=8o�k0    �z�~�@�ĉ�$�QsL`jAE���BW)V��h=��֪s^��� ��;��$�QPa䤺uM�gV�ܫ걲,l�Vڟ���B�p���$�'p�T�����sG����$���ގ��6b��N*.��>i16��B����� E�b-��ȸ�[�@�n�ի-�y�N��m���䮃�
cr�D.�eY��e����«���->2'Y�8�4�H�����C`�y�d��6|�W��������?�H~QQ�7F1�$LU]mmmw��d�B#�J��"��_F\*� �FD1��P��r�8+I�,�Ħ!��#��d��'� _#&�ra+���$��}ր���ʾ��lX"�!�C]���W?�Ӌ�;�b�:	�??dgTW53K��P�����o٭=�Ϥ�o��9z��\S��I��\)g8v��Gi�����VoK��.M�*�(���{��4�ňx�^��F�#�����ௐ$��I�箨��6b�_݋�#H�H�k>��{U��"�bѬJ�Eb�xk#jWt�0Y,��#���@�O�y�܂�6����I��	��^[�pm(�ޟ��z�|ǖm�d�ъ7>դ�X�AD0�8L�Q7�D ��J#�K���-��9�WdFJ�DH#cDR$��%D����������yp��96��$�pHK���	��9�)��C�䛎��Nb����6bV�S:7���$��	)} X��"<,�g�-9�]���g�^�^�^�k��w�i� 6�6Q9q�;��4�4Ц��mno4��bG�l!� M��$%�q'N�lw$�ߝs������q�Jj>pnͯ�;}���V�J��g$��Ʉ#�K��eE%�⡬�V`�.��%8E$�%��
��g�Lɶx2�̴�}W%������SH�t�d�Y,���>1��3=��bc� �IGȵ9��c��^M����ϸg!,1�"��~��˔�N#�H݁�M��EB�S���8���ж��ӷ��l�'qo�~�N�ݑHA.gD'kH�8r���ء!S����KF�Ҕn���sH�6Nw�lw$2��C��w1`W�UH��<g�(2���b���k��]��,J^��Al�<��/k��Fh2�SDC����vK`w�YJ�m�����������d��*P�4eE9�5�>������֮�LӖwf�=��NH�-����
L22�PIdk�)������oϮ!��7��D\j�;��̎�1����1e+��):�
yi̦֜ܒ�Td���\�����\'Al�<^��#h7��*e[��X.{|��<��_�<�mg�xbg]_TyvZ pM�#���LNұe׹[e}˸Ւ��q_�)��n�7��5ꉮc@�]�:$*#�)����D$,㞙Ţ�ln�t>~�ć�"\�ƈ�$�ЩQjUJ�Z��'�N��\K�|�K��s��C�u���K��F�0�Վd���
!{�T�k��`�鴊u	p�&�2Wv=��Y���Z��!pm������:K���S��c��k=�WO���{��rt����$i���G.��
O�V&p�G�U�4��k�SL�^_���[�����$������IrS�'�ի���v�2%����������A칵J ���S����UT��9�s��AH��i�����t���lC{�;sSYOp=(�"�I^K҈N���d��խ,=Mm��yKEL��اPEt�D��^TM�S�$�ũ�+�VB��֦��636w+��O�7� ]'�#Lɪ�<p٩�2½fnD���ө��s�܀����!<K�19�+W�/�cV���ՙ\i��?e�Ѿn#fǖ�{�Ķ|�h�.4�ׂ^d{KΪz�����D;f	��[lfnjVs��\'I�;ԑDس�N���q����2�\�um��w��=d7k��sn5B�:gb�RI��L�7�e6�uGz�l{Xr��Zc�g6g����b�1��OQV�hQ�L^��C�[���a�D��υ��V�IV�rgo���,5L'��i �n�u*:�D;f�������H��6j��N���k,*�D4���-�:Y�ReɱgRd�}�j�a�%��I���n����=n2Y��.�&�������	��Y���{��5�
b� ��_I�	$E'ڑ���q�ɦμF�g�_�ۈ�'�!����k-�ݓ�]�i�����y�ũ�+�~�I?_�u�=I�1�I�8�hG*A+���q������m�|���^#$�s@�\��'a��tdv&��p�;����&�3����(�L"�I^�j�CF>4|ډ�o!a}�}�?;�ާ7��=�������!��͑+s!-3�t��#N��eIk
�ӟ7J�M���_���'�:{"��w��y$��ɂu)X$E!7���v��Z�f���Zl���c�O��$��-bҐ�dyz̢�A;��zm��H ��j�5��ԋ��1B�C��|�do�r"S�AE��YJ-���bO5ϗ���.g~�5B���S�� �x��s�D��φ����������4d�7�c��Ekz�V�(�rM��/����k��T��-5�|~3���uư�P �e�q�c
V��ϕa.Pq�Ͷ�t-�..��bo#��2��Al��?���>��Y�@���&d��'ZӔ��TF{+�L�&����0&�c�f��'(KS��N0�\��㲭����u�q���s'N��2H�e"�d �F��&�CD �e"u�zmxbj���-�1�:��ʐ�|��&r��&���J#!3�4`�?�K�{r��?7��$��@G��;W5|���eȎ�.�V68����;��iD u�i� v�G���〉%u!��%�4�+�%����ٷk�O��4�ZT��cKf��@^������W�%ީ�ROi�����mg�_F� �����?����TnUKA���`LɺE�t_���)���vLG=�[[;���> �"�� <)�]�1� ��#ԥ��7}~m�{
�H��'�C]��3[I�OQv��g�kU��v�+T}�.�ƴ��^�|d�bS:��Q^�U��"�]^�䳡��^��[�#|�eQW���V�+2!��-�sV%�v2L�`q���m�:{�V�����fϟu��Ɩ�$"2���M�#B�f)��&}�6z��k�/Wٌ�A��sO�N$��� 7��.�_HOG!�&CVi�Q�;Қ��խ�a���Ӂ?�F��_� ���pOA���j2C% �q���^S�j�ʷ�q�xo7N/�a�w����)]2GT���J�Dh~��a���A�~cD��1\� y _.��(3]��E\ǚN۽%�s�ҹ3�p�x���%b�?�d�@�B��#���*�I�\���3�ӟ�=.KB�<?w��^����,�!#��S#�CԤ1^RuZj��D�oA��k����_� ��6\�"�4wMd�N�T\�u�:��Ff�%�{���dP׍6��t�8bҶ(�k��k�j���i^����5��憎o#��!#�;��Kк��t
�2�JLp���P..����[gx*����q凐�\��GsJQ{���TV�w�$�Aۚ�߬k<��nh��beCﾨ$�;�WF!Qi�'P�`�aZl�aɣ� �2�\3����h�`t��C*��V]���̖�iWq��Kއ���k!�(?%�^�����6d�At�Lm�A.e}tW\��=�����ך.�o��5���vg+�u��Q$�4>��3p��*��Si���ڰ�\�ŏϽ��*���m�U�(%z��#SC␑�8�ӫ-�����,���~w^��f��/_P:�cXmA4D�IVB���JS!3d��hk�A[z��I3���{�\��5����UF#@W�.U����&�a^�_B�K�y<j$�O�8�r5�"�1���hH3�L*׈�d��Z����ߜ�5��Ks�ࡷ���N|�L "�Jҩ8Dn�e�m�"��s������E3��~3�D��1f���aN{�r�*g��W��?��ߝV��C`7��_���*�Ȍ    �!u-=Y�RTa���E���t�nܛ4�M5Dq�je:��('�(��y�J�.��C]	U�5�řxzO_�4�Lg�lT���E�Jl4@�|ADu=�J䃒���h9/�K����J�u����m��4�P�V�D�P�P�j*��Ȳ�~	��ncx�׆)k��$�c��d�ZƐ���x�3���q���� �}�Ỻg'���E9���g��^��S�Ś��/l���3��|�W���wc\��)ⱷYɡyR�?�K����FB���ļÝ�N�w�w.ǽZE9C�4D�L6�,��
{�9�
d�do��;�>y�{���"W�(3lw��-A����g�Iɻ���鹧���?��h_�����l�>g�-+$�h���e�-W�T,f�������ek�F��`���M6
���E�f�P�Ɉ�Gr֮���e�9!�.m`��d���Z����nL*E� fS�Gz]�Zw���H�K�j�?��`�e���w��5�F��B��`y�k�� �׆�:��ȗ�IԊ�Y/p�8T62ԛdw��N��Q ��G�����Ÿ9�^��2�#���a��H�&�C� ����=؆�+��N��O�_ل9���N�i�;4��3�W)U��e����6-�)+6\�>��K�i.p|ڍq�]�� �8QW���lRñ��r�z	��!�k�x��Cv��9$�%��e�&9y�z��\�7��%�q���ܯ��`ڈq�j58k_G���2[C��*�)#}��sX����w��wi�3j����i�|� 鴭*��s�M�<ɑ�)�|�%���7��	�擷��g��OGd��Y�\��OדQ�0�SoN�һ�T����5�F��t;���tuGNrQ;���6
׷&^�˒O��F<9ޝK�	%��>���Sd/]%
7GV��z�6[�Z��p���s������w�%�ii�4�@+�q"!g��rsYqH� ���|5ρ>�^"��y��f����ԙSFvA$��骓n�",���:�i �׆�c��l|Q��9 �5؆�� C5�TU��*��:��hm�귱�������gc���Z�?��DHz�M��DSQ���d�ы��2���~a����F�'m�֤C{Q��$��{ܵʣ)�פ	%��M�-2��\�'x���Ӓ�>����)S���� �?��9�N�Ϯu	\5c��v_]#&|6��HS�%}��t��ȞR��'.��1|�Z���x�f�wl����cgl��P��^G�����YQz�]����9�ڵM��]����]���)�F���uE[�jZ4��д�0D|-����]�֌?��S��C��t���qc��*6�ʁ *��*�R�C#�pK6̙����EI����u�iO��T`\#g��r�Ey�G6���������kw�{�7�*e��%$�GH�g�n�*�ک0m����!&}�K^��ڿ7֌e���p�V4�O��a9ۍ*�!L�1{��w�R�}c���8�7*ɚt��@s5Z�]�վ4��r�B��IS�k���Z����(��s�-��c˖�t8/x+��TmWևhr��$�dõ����Q"���H��[b�s��:d�t$"#���(������V��z�`~��8ov���G68��[څl*�6�ѽj*��Z��zo8��?��O����U���c0b9"��U$h��V4t�f���ا�q��qS�v.�	�9�a�ME�V�L��8��,}(���g���C��!���7���BC+Bevx�ӂo<��e����J�|17���21����{B|Lژ��>C��8��6H��#'��WAw���0�R\��>�gx��f����,Y�n��o�s���*�?N�zC|g#;і�a��@7o��Lޤ��Vَn�9�G�#�XAާ0�K�th|��^���\5���w#�{����i����/�{�2gI*Q֢e��m\�׹7�pڸ��Jٍnm:�n��O/��%(���#i����ט��|�������:��gD����,R�!!.��2X&�`�k�oֹ�[Tԝ2���د!��Ӈd�l��E=��,PQ��������d���	��ŝ�� 8�bl�9E�2Y&���-R�ta�]�K�ޏ?��č���1��O���Dʿ[�U"���� m�)��UΞ���������Zt���#��$q�	�+���aXw"���a
/=�=�2�7�k#��Vt�d�5'�nV <�|�Pۺ)1�V����}�˓g~�p���[��KzC�{�.�4ȫ#�C��#8�ȡG'_z�v{�0'i�㚘�_� 8��!�|�,}3U���k�K26���+�9��y>��F.�q�:�t.eHW����N$g�1No����[g?�	����E�(���6\��գw��B�|:�jťq��Zl���WH?g�,��g��c�u d�^��q��l�T��)�hM]�|>�^���9���;��܈q���z}$SL�A��%��T4��k��������(��>=��yn�Ee:>���p�&r3N3��!KϺ(	���#5�A���~��|b�X_�m�@�#����`H��Ӕ�q��k�b��?�V�<i&^��|�ON�(�R/N+ߪ�>Z�ɗ�������}�{t��䭲]��jY�^�Hˎ[���#����˚`�1�M?u��6�_����3���Uz�j��FI�\���X��sX���<Iu�WE�چ�Gh�E�	� �}��̡ ��B���l��n��R%3/��B+�% j+��FҎ([D2'����f�g}J����Sd~n�S����'�֬)Ƥl���U|���Ͳ�smm�5�z�7NϾcЏ��[֠[�G��F��!D@4|�5V-Dc�Hh�%����}���'�x����>��䕽&�5�9�4�*�;�׭����9���|�zڹ�S��[#��4е1���O�-�֔�%�y���������d�t }K���?߬�{�gl�3��R^/ݥ�O?��37u�������O��x�Z� q��N
�e�d*�X2b>P������F����#��pGK�rVEi2v\-��v��o��U�Zw��X���#&�}�wv!P��!+ɏk�4
� T������j��5��ԯ[��EЉvn�����3�X�K��LN�ĈM���轙�w�k`:|���->>wr&��BD.�K
C�9�.b�%I��7�vM���r����m�~X7�r��"�L9u�A�v�lV�RsJ�Rb��k��¼��t?�V���4�oTfQd�p��PQ�&����&	w���+�A�5��ƾ�n�>2���J��E�Y���:�Ⱦ�4��:�~ޚp3��q���}�6���$qS��`S+H���6���k��gm#}7����)���� x52� S��J���m�.�޸�j�6mM���t=M\Ni;��:R";�[t��ǈ	P���
�ҍ���Ȓ��T��Z�E��Q�{�g�����������Q���H��E�}�p-�_/]�{A�u�]=���9#��m�G��g�VyQ$s]�)��e���2R�%Ǿ��n����ym=	�n#2�>b�"�؍��g`^�8u�4@:�2	��3���9���QY���s+�dE�Z)�V.����H� ���c�Q��R�J�~����)�`d�9"r�R�|kzp${U#2�Z�FbHZ��_7���'f���zR�I ��A��A�ۚ���+v�����/=0�h��~�E�'x�N#�$D��!�	R�cY�Ķ�'���`|��l}����O5kwV9��� ��a���MU�B���ȡfel��	�iM��k���mg�+?�sd��؉�j��]Ec��U%y��Y#�+Ң�O��F��`զ�s�F�+m�G�u�q�����E��B&�\���f�Yp5�[���Lo��_i�;����$ڧ�R���/,]�p	�H�����BUs����Y[m�#�ƣ�ow#,�{��1pM�02 "���l��Z�t~�ӥ�{-s�h� v
�/��E�خ�H�ؑ�&������f�|����S��έۆ��� �  ��:��p����y ^�SI�,��V{�_� ����Y��$�����G��*��8Bli,rq��9f�%?_�?��鍕#246��pi����J+��59��~�#XqXۀy�@���Ey:|6��5�C#r@�a�u�/�("����:\
Vjk�R��罉��N�E;�DE�Ҳ9Z܇tM���)(���T��q��{�|������$����(YZ��[|��5��E mRY��YSFZ\�-��^���}1_�d�N#�E��j�MKߴ�I)q
	Q�y~��@��=����Jzm=	AlF�� MMJ[ѭ���%jmf�um�lҎ���Ө�sQ_�/wB�뱎��u�ZI�DT�~6@�D*���?�����V2h�7�N��d��7F�倏AΆ 8��U�'+�eG�뗌���߿^�nYy�q;����8-����x� ٪�T�������R.����|
Nn�;��$�vp:7:��UhZ�g�]�H(TPB��ǰbČF�P0�O�F;~c���C�)xU�^��5B��w��M}�%N�O��^�]�SQ����{m������7W��A�@7կVuJ���	��j����I}ڍ;w��������2�B��o)���r�����9?��5�1g��8�_�ܑ�d��8��I/c�RW��A5��mm}ɈIYmx�����L;����/��׿�?���      �0   �  x��U�n�0<�_�0�8'=N�4@��kj���H����CN��X�;���Q�%9�;;��ϫ+۰��E��$�����W���zɛzA��1����&�`���V���auc}�\�e����Tc	m��.�v/h,�#�܆�hXPg�4��#58��&!���E)U�{��Ԯ5�"�iT����NI�ּFz��母��<@I+�Sё#�tl��Ԁ���G��
�����@� �F5� :ݹ�EZ�&����՛U�7z�E\��SL a�(=o�ʜH��#>G���~"�B���@��p,��h}	X-�^���7��O9�W]�p�jU �$Xh(?U�,�����M�I]�1�5j��EnЦ9EyO�/���]"(n;�(��R<�>L�5��H$_�
S�{Yn��4.�@�q���6��One�"ɭ�O���4:�N� ��X*.��)J��2<�n7�J���t9؜�yΎ�>Z}S�����(��v&�!�ݍ����
�4���r��
�����z�(����n�Oq-��t����bca����
O�%��N>�Y�o�t2�
s����=L}�B������w����a��MrX*� �u��d��\c�|:�Y��H��l���W;�8m��fdyl}�m>�9t���V���D���&�����֣�ld����1By�.�����L&�?�í,      �0   5  x����j�0�g�)nl!�8��ѤNcJ��u	�$$9׵/V�v��N�i'I�������X[E���i��fkdY<���R�t�K�r��ٴ\�W��ʓb��Ί݋��
}$�2�<TxN�]
|I���1E�l'P�@�����n�c������h�\l�fc;�~�2*U���8�(��Q�[J�SB��i S�?�jKa$�ȟK�8pL��X���*m5�xd��;��j`����t��v[����[��o�\��ԇ�$ ���1ц��{��^���V��V�PG6�O�oFC�ۭ��M�,��s�      �0     x�m��j�0��}I�,�ײCat��X��@/����d�A(���/�`S��z��D<�؜a�4eVL��=\���#9`�Ia)�<�.�/����xz>HPw7�)�4]�Q��^�#vM<5�iO���^	�6�0*$��$B��CD�&�6�Ӟ���E�p�CĕH�l�;��h� U	�L�I�֬D��ׯ�g�}���4s �Mˀ�D%��{��̀��X�����P�E��|���+"̽�q����	��ѝ�:\�a�Jv�      �0   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|v}��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
u�vj�`��<�j|�N��_^�f�%�R��+<v�nz7}�l>�9��������v��b �U���G.�bp>bQa�
e��k�l.�s8M˙ܤ����S����nO���i~��~[o�����Ӎ�vDvv������ -gP2Sko�Q��fe3�4�[j��z�X�>U�Xm
xZkq���a&��[�/~�r"��x��Sd����^m�_���ϰ��,EZ�sX#���tn��	"��0B�|Q��ɼA�g�~�f����ݺ���Vuovjv9�k����i)���%¿���3W�c��E�q��iٛ��J�&	�GBbPR��Iܐ��\�ʴ_W��%�
Y�-�˰�k��kB��0Qn��41�P��g>pτ�Qօ��]�|{^�<#���2t�5��Mh�J#��E�:�hV�̄�O�3��K�J�F r k�a�&��WO�xj�S+l^��UUeQ��>V�0�=��?f-E�6��#M���M�y��
�֮A.2n"�©)�-gmA��ڂw��x~n��'�&��%G�� �;X1��}~�~q��Թ,�Jkng�G'��7���xs9��o����q��(���P���)uNQ���\�	*�2ԍ]:�ք��[�/ў`y�K�@�mzS���P\J�o[�����QU��ukm�B���%ZdAS�:Zq5�
`ҫ�-	i[f.�L�W���
L���D���k�|�Sdܶ�)y���U=�Z0R���[�N��1��u���wA�`\���Km]�E�(�H ~�0|��bb��N"�f����
(�+���K���3X�Yc�^`&����&�jd���[�f��h�R��pbj��iY`y`�[-8J~�8���~_�v�u��E�o��*��~��?��$G�|��A�s�9kG_/VPbJqf,�,r.�-l�];��@G��F��|M���50�"�� �`궣�]���bl���se|>;M��Frt>"~��X@��	F/|�1�᫁0���|�$�+���)��9]��N�%�r�4}{JvBV��|ۮݙWH������*�Z��P�k���)�wq�z���ܢ����r~Z,�G��������ǂ�c딊���T�V�PR�3�v��m�M��4�OY��iIu67"��!��;���u��II{���N� �4#��`Z��5�eY�h��o)E4Мl-�7�����-�W�����`���tu�ҵx��
U�1N8 $���.�O�5������N���nB��h����BTk[�v�R%{+�m ���NGl��y�BEi�SM'��:�xln=Tؓ��-��/`g,:ͅ�m[XPV4A�r��)�#k��؂�Ek��~p�,q��'��`�[�R���N�򠆧�LTi�vl����k����p;�+��t���]�Ε�I��w�)�-�z���%E0��),�"�ܩceĤN5ǀ�1��a",��jJ�t�K���'�]���iH31`��Ϥ�G�Մ.@ z��Se���K)XB�����E*?�Y�u.�#,��S��`������h��`bl��淑p��ϛ����B��Wql���J��i�,�{,.����AD�}�����yuRe2��d{5�7&E���`�b�]�!�S�k�AfU@y�)6�e�I�b��z����$���T�����H�/�0�H4&���]_K?q}+���|�l�:�M�q;a��=��戟�� ���\F#G+�\JUg�"I1����+4�I���B��󺈭�0|�6�@.���}3���D=U�ֱc�|���Z������u]O�����,���G�4��6�12�I�@eZ�HL�v�����v�r"�I��|�][";�+h۱�'����k#�B���`��Zo��vjƳ37s����	�(\R����ɒmJ-���d��Z�t�ps�� �N�����_cba�פ���A
}��]�`TK���
�]ݴ7�@����ҋ��4�k������zk�AH�`�&Cc�R��6e����9�G���G��ar���x�����w���P[��n��].[�)B�×l������Y+"�	����V
���E/`W���B��2�L�yA9���5N��
���T��%}ߢ��m�`գ��9.œ�#g@BJ<a���^�{7v
a2����|t�??���'?]�L.���h{=^�[��#oE�-&�D(Î��^k��Y��ѣcem�
���C`ȕ��w&�($�;+���4fO~�h��F�{�	�x���̳�-.�'�oUg���Ab�����-�n��ٳ�=P      �0   �  x���An�0E��)x�n��]N�h�,� -N�h�@RFz�������I)�d'@����33�ϫ;��D_��Ӱx����[nVzEG�4I?���^-�7��K��GN�[��մ�y�$�����Q�i���$��6�e������7rh�A��|�ޚ��~��� ����g�S{c�z��(DT��^�D����Z	%���Z
Q����$uҦk!��.��}�t�9pb
���y��q�}۾��ʑ��-�klTB�1%4t�Xԋ"�ȩ���;Ψc�e&�:�h�I��/�&X�z���_C>���ڞ��7� Ot01�"���0��Њ�()�P�<LE,D䝣l�o5�,���\T?�Zى�'nؽ}�eP�N��|~v��/���ʧ�p�`��$��A%<�J����{B��r�{��N>Z��l���j���|����<�x�%��z�XO&�+ü�      �0   5  x����n�0���S��l�vn�W	ic���&� �����K�K9�'�O���A!�[<��j�Ҹ=�=�^N���+�I�]V������ڟ��Jx���*�f3��^	�Ĥ����z!ƈ�{4b:�:ҷ��%��]�֢&�3�i����E�AZ�#O�mrV;��FӼ�l�P�]�xu!���7ţM.f��d��}�'��bn~��A�֓��Y7�|��OĠ�F=�(���A[tR_��y�՛�h^��oE�[ڐyB�3'��s�X���"���Uެ�r�ؼVXogu]��#�M      �0   �   x���1
�0 �99EN��Υ�ZDq*|>ɯj~H�^��	�����M�Ե����Ф)8t�#�f۵�K7hq���J��t�SH,���D��+S�o�_<RK�H����<���H�D�Y�z��jĎ��tկs��y=k9h)�	2S      �0      x��]َ�8r}V����DJz2l`�����	2�l�8#g���܆+���vK%���8
����<�eۮ�1���V�-��nAI��}��˖��_a��\p��3�Q��_��������?gg7j��Hݾ71���o?&��d,��]�S���a��ѩ�,�������ԯǏI$3�Ԟ�Ϋ0iA��}�<O���3n�T�"Ŀ*�F�/�[���������c�7�y���;�
�$��̯�`��jY�����t�r�O����������+�	���p�[������na�N��{'��9?��z]�!`5�	�A�]YX��̋m��� �u_�\�����a�h�0��A��Y���,&i«����
t"x���;��Ǜ"�~�}�����zV��jq��V1-�z=>�#�h��x;i��^��}ߞ��>���zŎ�s��ql�\��RnU�w���˔��`�����c�I�.���|6�י�_�g����*�q����oE��A�i���OJOVN\/�I~�r	�zHP�IH)p<��4��Z�"LOI��㳶sXr_�n
iN��x�UY� �OY�Ǐ6���� ��\�P8>�LA��x~)"w2��p|��Z&�z<η�x]�q\@V�$������5���-�\�mA!��L�[����F��|��+��w�$7U��/~�}&0��<�� o��O;�I��_�I;�B�s�v�K���K��Q���&�>^m>/u�^}�/�[pĖ�lE�n��Ӭl��gF*g���ݪ��M�_�c?2�&�Z�v�Z[;�H�1�O8���^���X��<���ì��,�(�hp�y�R����{���O�eP����xc�'Ӈ�lU�d|�T�<�!~����A�e���vc�����m����Ж{�_��2|�2��f��ї� Za������'���W�0 �+�!�� ���� �`S[Hd=��I�N��|��
���\�\� �F|��B���7;c:��Ф�@'�DT��["�����}��YQ#;�穔t�xU+�YЗc`Ƅ�.���ap����J�?zWp��Y �u�$)XPb��}^�H�m���Ѿ*��a4u;$�ZUB���e$Va��)ReH�8��0���h�M�Ց��8��9��_H�`"�1,�R��07Z�Z�A�[�_D���0&/΀e�@��8N�|F��������z"`\�gt�%���V��}�wa�q�j����4M�<��[��˺C��0.��'�lC��y]��S���6(_��@\�_�o��z�%r�S�0��6�;�	�����4��`v ��k�m|�rJ2�4Jm (Q�¢>��Z�^�O�a��"Q��9?]��z��X��N�]�34�p�Vv8���BX�"�e�\T�����a��Ms�H�i){�����ڜb�Z΋v��3	�d�5��W�P�{߷k�L^�0�mSp/ˎ]^L��`k��Ў������z�]�5�*)���S��;�dD�EN>�IO7y"�� 6x_gI�E��C �Zzu_�Ex�57�Mwk a1A�4��Uk�V>.�z����Y���I>�z��PM�4gދ�i��5�����\�pQ�e��
H܃kj�9Lp膘.�ݽ��ܗ[OG����:o4�#�w�8YӖ�pVz^�| 3̚w��b!�D�D��gF�e��3u�љGG�k7* ޸;�],�k�����͏j��pb��w'�����l@� w�V����א�U�s{X��6�+�Rol��`�R�aS�\Rq�#>�N�g�����M�&�z翋#�\���̙��s.�26,��b���*w��m�3_�\��������%g�H6YDt[�#�w��$(�,}�����)�yT��
�B���G�b�"�c���*�+���9~r����� ��zrr��O	<��J�v�g�|��_*py�r�\��8E�뜐�l=�ݯ�8J�G	b�/B|��T�������
;(OaM�%�LO)A�$"vA4�}�he�	m�&�}a�oT�h��廔 ��2�L`Y���l��k�<��x���e�Nc&�ؼs>��#ǶRA]*8u0]��<5��KC�+�����]�
�
��2��jE�N�Y[dN<���@7O��Ц��6޽�W��*��8����s�L�LEΝ���ؼf؅�WNf�-��ڙwfev3�^�GX����ī���#�鄧H~ϣ��S���iN�W�����su|�R�iJ�D���y"��!=٪ȕq���py���"�F�KC��P��� ��� �쒮�1e�R$�.Lq��R�H2���/�j��2�j~��I�Kx23q���x]5��35S\ig8���C��ܥ�.k�������.��S��jĜ�Ч>x�'8]m��|	�����bP����|�R�[,��\- HGP�S\q�[c��q�?�*t����*�`�a`��fX��cRn���l���9*/_��`�*�-�B{�T�_�o0m�~|�z����%;�/�,3e/}�i����*Z22��w��u�G��aͥ1�<�#���/v�`������VM�h��_"�Zr�R31_������u�%:����lg��w�Ӳa��]��lӛ�E �|�,�nn�RX5h/2�/�}�P+���Ǫ0��ͬE�~"��O-����c͵5�E|�#��g��3UR�J�Zn��8S%t�.O�����[�'�<"~3L?���K-�^���cz׷�X"�p)>8Pncd`��\��[��غ�s߄���Z����j?A�����
���"H�}XX(�G�\ֽ D��c6��x=�I\�w��!�+B��D�O�|vIHf����]�@ӫ�X�bVp�r9S/�]���yQ>�qZ�H<�`"��wa�j  ��| yyg8����b�5�JY�����09۫�`A#�V��o��B�/�vs�bl^]� ����r�lZi�@B��y�FN6,B������46;[p<�(�G�Z���
ʑ�w�|��s��у+#b ���	U���q��g{a}
�|��y��s�4	�Y#�saY��Փ�bĜ�/�L;�dLR$��ey�ىx�pc��%\�CDL�s}j�Q�TL�1��m� l���v�޷h�
s����W)��O��Z����H�o�<wih��+>��$~�|S[ݺ�}A��8^8�|���
��^o�x����kΩ2r\�Y��v��&�꿊~)P�z����Q�`z߷k�2��ܰI�Zk9��~1��+��JA~�;�?.0�&��E~�����Ի�([3��ar���4ў��{�4���ߺ�)sX�N����f��2_�mALiw�S����@�E�
�+Bmې+��`�����My�ġ��/^�/�&�����D"GW�=8lD�2$A"�2����>	D�m���VD�ۤ�������y����mO��مP��B�m��|�̋�� �><].զ��f���r���&���]�:)Y�q�-��#�5�����eLD�>�4��cy?���M�{-ǁ��ʉ�?�����r~j���_��{�o*�gb��S���1�v��D�>O�1�5�D"G�+]���v]�g��rE���wr��qr��?�n�d�pQ����S��������p����8��B���ݦ�����>H-!߽51�5"��M��ה��ojn�^4�ا�X��B�0ã�
��I<�S)�����R��6ѹ=?26i��V��~���T�$�c��B8�h�EJ��'r� AD�G�������;z����O�o]�:���c� gx&�-9�"	�١N��tG_�w�+�?��2�F��7�V3쎪p(�h}��%Z��'�mo�wo�4f$�j�m���֥�}�V/gp��zr����+h+��*6Ɏ�:@���+�$�N�m�E����^�9����@5[�aA�1�o�G���zꨉ��h�˖�D�����1�-#�����|`�8��Ȟ-�    ��Oͷ�
Hm��a��c��'�.g��L&�a=Wla�-!���R�w|(��_M�j�j�q{��"ڃ�뉝Ε��i0U>������f�����8Q�+��ؼ#�C0��֌`���v8�8�_5s۞�	���z��RR��+
�bs9���l���� ����cpT~��U��V��h	������Z�O�nP֛ݭ;��a�eޚ��n'����P���˕�5؛����?��o��9x�w����nn�~��������vs�z�z$��l�<G��B���ղ�?��#@nB:�K�r�C�Am�:5`��3�y�VF����c]�ɹ/�����lq�n��݆�|���)ZXT*V+�W����Z������=���v�A	�s����^kf%�!���s ź�b��y�wT�lQhx��H����I��#i��e����g�r���d{�������i�^0�lw���&f��@]}�����
-����Qn��[_��G�x,�Jޒwg�A�yC������T���h���ӻC�wR���T߹�Hge������x&�s�-G%[M�Y0஝?��<�5��p�l�v���㆛tg�R����G�Zv+.���������<.V�p��تc;���d��W�߼4<��Io��Q�*mGN������x̖Jr<֣Z��*�?D��X;HK}�בx~�7 �ɻ���H���G��fS�����-�e�ٜȩ�.�牷�u��H�o�����d5�T6�Tc�m;|JuYJ#័-���!�XM�xc�1{�-�>�]B��5������o3��[uZ�K�ދ�B��������Bٖ}C��'����h|�������*9���xFR��7k�x|>S��L�g�`<ŗ�B
f�=�J��,ٺ������D�����b�%�v�����YT������w��!�zaSi@���|�[�[���Q�.į���e1Q㑿p*�w� s�����kK�=;�-�;~G���׈*Y*����j��6�ֆj�]��q-~@|=�j�������v�W>G��f��S��]FN�;x=���O*O�o�&�!^�_�ַ������7>������_��Zᶃ��,��.�6�.M���%�¯r @��p���l�ޚ������ ���/�L ���M�{�8�6��mB�����h�<�> �$��X�� ��I.��t��NRhОI>����Q����[�S���Z�:��}�Z���[�o��?>���O鎗��:� ~"=�#��x?��}F��&�����1�(M�[����ƣ��P�c�7%�x��`!��%ޅ��w�,(������o3;��_��N����DRx ��`��K��ÕQI��!O�b��O���G	�C�_E��|�k�C�v�4�/�D���#ߤT뮈�.�G�;�0��e���#}l����-����m���xH��y��L��a�y�U�]�W��c ꃌT�ߏ?ƣ����G�x�U�\����[�dT�����������/\p����[��k���|�>��N��t��a�"U��Z*��x}zT[�|�����l�@���	�E~p|�G���d�Lz�/|-����#���wq|v���^C��CL���.�ͨ[u+�+I~������W�(>�H�z�u��D�ȧ��Q}W����]>t�������v�������.!�|O�P�M�]%�����o�jl�j���_�B�{hxl| ����?���86���CM
_2ɖqD{��D�g�?E��dj<~��o����==�[#�`�Du�C{�[G�&3a��~��.��\��w���u7X�(��?��ۻ�y�	|58s�K��j�r���ؘ0�t�r��9AsG�|U��>�Tz��~ըљD�3��2��eX��noF��]o��7כ���)�=4z{t�� ��1�[��[1�[��[��[Q��ԣ��HE@hq��*��"j�!�wVH�V`�Vx�v�魹A���?�"�H!L� ѳ{ʠ��B��CD�?���O���zho��cJ��"]���a�m}��ٻ��w�h��T�W.���m�Ɗ�L�U�*�Y����)�'}�I<E�c7�:S��<eu��
�Y���7�4��������1�M>����'�+
�����&3\�AI��/2�ܓ��O�aOП*N٫ޞŽ=�{{.��t��58~�Ð��;�Zǣ|( qL����Ǩ�j={{N����=���|��x�+������.���w�\�b ?Nvn&wn���en�B޲J�샎���c̖�m]t1��FG�aMa��`h�_�o5y�����E���q��f*
�������yǮ�ԑ8fl5Th�ϻ�e������);��������Y+�F��4�8��̟\Us<�����/m��S�$u�b��uiP��g�p�5r�L�>0����v���Jw�u]bȿ��.|�j������,w�����{�F��t�x�g���u�][�m�:幏�\7���M�"��d�ǩ䋷�U������E@��'� ��_��=D���2.T�i�tlYՖ%����f�e��烏�������v-ԪIKU1��{=?��+9�71�0��9��������)�3��9 ��o�⨨s|
�^�v���Z��{y�Q�G����{|�Q�G�מFR�����,�>�%7���`"���*iⲮrZRU,h�'pk���Z�CU�`Vь�>?rЅz|���Y��*CN'���-H�"Z'jUV�z'ϙ*ULƈ����X���i�����@b|��1{���E��(��U�F�*���a	�WQ4}�URσ����S��G��F�q~TY��I3��-�ɟ�KJ���Uvy�t�ܗ��ƥU��99Q�o-�3*�fo�>ˠ�,;V��y|�wTr|�4�1������H��J���KML����|������<CxU���������VEZ�	��5����oYY9x�pF&>��X��=�+��7����?E��P�x�297q�dA���Cܧ���"C�=��V6<��Ҁ]�c"�.<��f7�ݬ2�?t��d��ۮK��^�&�</����.~y�����o��$�����j]�z��Y��,Ko�7Kԛ���r��\��.�}E�l���vgf[W��P�C��v���ڌZ��3����q�j�Z��|l�3(6Tdg�z�J�AA�8�+�P�W|�Z�}���i}0u����(��N$��2m�5��[ԳLc_�*'j�����BE��ei�Jq̻���<}�鵖��b�i];;-`lj'�Tz��"M�����g���ݓ��C㯖��=��t������y�t�7�Yޓ��cW�T�y�jYI�8^� �B�vr���*�ތ�wW��x�	/�ߪ���@o���nҽݪ{�aww�.����Z1x��ӻ������vc��;[�+(.�` �/�WC��L㤥��O����? ~:@�>��~��=.`M�����^oǾ�fj^X�zr��^���XO��ً������V�k��|�%o�pr{~������}8O�s2{�5�[9�U~i�jIf%h,_�|z}�O7��nJ��O7�n7���:OG��n���Z2�j��fD�� �oU��X��{������?}o~���>?}o~���?�Zߛ�
�nw/�����=>�%8�NɂV�\1��m��X�-W�(7H��D��jy�K�t~�>VĪ!��VZ����p[ޢ!NX�?�>�?�9���C�����`�z�>�A���Nt����<x7Ċi������m�Lh�A�	IA��ت��m�Nt���]����^�̖�l9z�����ؽPX���Z�5��!b���{���ek��:k~톯�f�a�����3� ���A�D�p��n�vgg�P�	��Z=6ywǩX����w�Gu�y�ܰr��f�\���6s�� ��ί��`ݔs_�\$�u�����@h��u3V+]��So��ǽ-�����Ʒ�B   �?�5@�J��T؅x_�ғW��Bb)����U���e>�����{>�Вi�],��b������������Y���^�t��׎�%�T�:��P��j�4���[����qm����y��q�T�4\������*L��A�fIu��k��:��v,����q�w}{�57 tb _zIwhfW���[=ۜ]|M�V��&��0����r�t�s��z���=R�I��>b�����o��z���C��������o��7�      �0      x������ � �      �0   �  x���n�8Ư�S�����	���*lW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>���;���{���n��F8���Ʒ�ޏ>�gc�2�|��?;�G��4�	�X��L�w��1a�IW]���j�s�9Cj�ЭH���v��qL�A���꿜��b�D��CD��I�FŜ�c�.'�Y9I�DX>.^�"�7hB%�(�;F�8�ݓ�7p	�7�:��:�)�9~Ƃ�U���%�m�{���,RA~��B@�w�Fs$
	!s�5���&��G�y!b�_�DlF�El"KD�^����|AS��S���]�	^|'9P�pF�t�y(��J�2A@�7�̸t��3�gF�Ό� �"��U�F�E����[��"��A�d��VSCC��\b=Y=,�A~��"inW0�\`��0{�d뵓m���y¡��K��C}}����Wqn$\�s±e�]o#�o��]����i�:����s�a�J��2
s�GI�1�gC��]�j�w2/"xLD��5��kʏ�
�w:��S1l�bS��X¡�CI�s�KO��x.3g+�)3�e;��V��h�T�_��g�I��%����=+��!����IC.Jw�#XU�=	��jL�0ܧ�����r�oߞ�����fW��=J��Q � j�^���ɡ\k��ʀ՞�}c�Fp��o�.^� ;)A�4#"%xQ~�����'�e�B�@t�*R�x�|��s�e�s�, W��ȡԁ,��2�iu':-�¡���;?S���.��~a`���A�j�R]����Z�*ߤ��U���К��:�%+D�jO��:Eo����:�8~�񔈒�v)x���a3r���7�oŮO��ۺ�k5ze�7e�v>5u�����3 �N��9����v0e��W=�W�&��j+:�B~π1�c���nð�����Mz�)\0^�P]�]=����5�:�:8@��8�a�'�ܖ�͠1��z?��SϨ���ԧ����j1ؾ���f���bVk��<�%�y*,�U/�/o��hVo�ޚ�j#�[��z&�Jߩ_��F�ղ,���j�^V���mPf�K��j][ԇa��i��{�@DeԶ�sJR����߶Z��S[�Z��dF�ulqS��LX)3���[�zo��0���S�:H��4[��byG8��D�Ut�+����
ZU�XE��Y�"�Z������i�4.G�5����R��*("����ѕr�P���2W;XwL_(f�)����c�0W <�e}{[5�/���Ӛ���VߩC��LX�-X����}ޑ|��Ŏ���cJ�^78o�sObk��մ/0��^U �y�g���n�:[�vf��2�Cgkʗj����ޅsj��$���j�����pjؗ�-~�r����\��'s��1h����̵R��|ػvaN�~�3�f*����kOu����GX]%�~w2힜����!�      �0   -  x��[ˎ�8<��b@	�"%qn�`1����O`���������m׎��ؙ]��,��R(�AJ�B���2D	��
��eZM����e���a��U�r,_�U�Ċ��˧`-U� �X�}�
Y^����6V΂~�V��`�mF���|b�w�o��'T�<QW���&ft�-R�;r����|��B˩�m�Ϲw-�-�y|-`$���9v!����l]�>��+�!��Zl�9��;~�T���/����':m~��/?��m~������?���_eV�#�U@p�l��se�d�,HKZ���#T�^�$�`�=���'(xb��-8�p��~��'�I�����n"��w�����I1t]���#�!�MF�K|G�h���3 �!�G|b�H��������4�'HԴtw�7�$�3UÔ��̄�\6����uq�ȸ�U�ᤝ�v#'lO�p:����m����"x���,��ͱ	��,�X;�]-:_�a{�!�N��~]:�o8
Y�^?��.wt#������)�._�������M�f��y��8�A�Ō����0�� ��Xд;9a[��P�˫,c����EoPQz��!��r�ɟ[��YѾږ���>չ����������n���e*�y��-7]��-��1��������#���6�=��;�{h���m�a�5�`WoD,�aX�P�aI`��9��
�NP�
��FB�@�����&q�����E
O�l�ʖ����B
e�r�ޠɱOR�I_�s�Hs�{>���죕ĺ�'Q^rm����ߔZ�p
 i!�3��`��ɰã��a�2����m�Ln�NɮAR.&f��I"��_�VV�O���Ӷ�v��.��g��jg��N������N�*4�ߋ��)����`qʼ�SR�@z��w�O�x���e��I��8K�\gy�a��\�Em�Fϯ�ӓW<���w����CqGy=���ے� �}��ɷT�b�m{$φ�֢zh��Ww�R�����2������U�R/�s�� ���T�����,�R���&yɝ�Q̐8շfH �e������_j!�$f�E��E���3��d��nBxMp�g�o�C�%w��Σ?�W�rۉ'.�b]��f� *�m����!d'�<��;���n�c��������e0n Ny��+��{�Cv�W�Y6 Kz�Q�sQqu����X�:'�~p.����:����s��&�_%�x�J��]���|c�읿�ޝ�B�krvDН���MDA����ie�1B�D��EtkhLA�2�Qf�;��݂��ӣ��=E� ���/���M������A�e-�����(��6��~�B+��ct�G<J��������xn���'I8��bDPI<+���l�2�dq�y�dJ�)(��Y�V���3.HV��4PE�
�݁��'eq�:a�Tׅ._UㄪX�>�KAҹ�j�X
��]nշ��	�\�p�t�_����oZ��hJ=)�sv#�H���$C^W�����$��R���6ػw���M��ZV�A\�Vx����-�>۽�Ԫ{7f������Ǿn�x�'���]p}�^M�ݞby��*��k�G|q<\_����o�O��ja�"�f\��&3Z)A@�\g;�	� ��N���bX7#�)�Mڼ �|���d���.���AW�i�q�ԟ�ae4Ol�8/��Ѓ�S~[��vk�
�ZR:U�XQ$um��ٰ����i�[�m��������p�Pޚ��G�r��8�m v�R6s]�)���.�`�������l+�r�5"�G|iE4�*��b��R�"\����{s!h�}�0hu��H4°jw4!҈R��.���,[)J�N�?��l`O���:�s��X�-��玶�Ε�\�g��?Gq��:��,�p�hq��_�K�!��#��z��sw�7]�Fl���(���]/.w"3@cy]�`�����J4m�+��ޖ�G�R��J�*����0�^,��y����I[:t!�[������"�w�<��^n���E<�}��̇��5EHx���㿉��S�p�08�ݿ�\�� �*�Hi��"<�o��<�m7t�n���~C4�C�^0�'S�.�Mgs�{:}"�y���z�8��Žm��i��<��D�����D�bI�@q_1�&�;��;����~��00.�hX�h��h�W��i��:�T�uT��n	X-M�XE�Q�N�סv�³g�я������;'43B�#��3�D�b!��kE/	�G��.��+G�/V@���~����㿉��b��B�%�d�dD��rt��8Ѐ�E�!��RxzdںF�G�T*�5zYnꌓn�&�����éto0 S�zq�{å���.����~m��p*8^hsė&�p��;���hI��a�$5N`���a7L&;4�*U��7�����P�b|t�ˁ-AB|i�}����}��[� ^�hʾI�^e����B�j��$�ұ/R��b�.q<�}�和��ZL|�7݊R�x�C f�����jX������DI��w�(�t;h�Mk�̑Xw�>�G�-k����s�ߗ��{���)d]��b>�.6���*��R��Kܿ�!W��m���E��hj.4����A�I�l�HZ�8��O�v�֥B����(�抾s��� JUJ{5`�7����d�E@yˇ��'J�{Ϡ�@�j�o��l��h�g�з���S�������/Pn���6��=(5���LjV�Ķ2H��J^\mkø���� ,P�I�ao�Jl����$'����[?�����IP���i��4�6�4�l&��qt���o��&��Ȟ
K�"I����x-?�{�or��E��-	-�nA'���ҐgN�u;,
.��v����s!������rF��c<e���%�(�W4k���ݿ���jI� ��(f��8�ň�CC�e�n���E���r^a�����Y�R~*�g��0��?��ݞ�B��2S��t�͙��dp]da�$y���ٶ�I\�r��ʏ��Rq�_i���!��aE��1�%M��2���@�j�d��-8�!��v�#g�o��i?_�z����qM?���Sw�)T�@��	3{#7Y��$M�F-6��Mv3M[?~�iDFE���t��<K�`�m�����Ǟ�E�SFv��G�0��ɭ��r���K??�x�Z���d�,
u1��㿩�5ce'�q��f^@�VO�G\��)n@\]������.;���z��ɬ�¬��)�ۗ���mpn��M�ߴ���]N�M��
"{�����逿��j_�����/B���<���o������˗�j;�K      �0     x����J�@���)�JI�^z�"�
��
�twԑt&d7E|-�s�HROJ�m���ϗb���8lĔmC,	����U����d*�0�����W	���6U���Q��CO�4)x���v���t�q��5���:�':��eVl�Yp����D�����l��XB;?ߣO��,ʕ�f��xd��/s�80@׳@���>���<��{�1�7��7�d|�A:�	!�`�[�4��m$>�[b���=`�]�l_����L1	r��8�`�̲���2�      �0      x��]K��F�>K�G;���/�c}ؐZ=c�J�K���"XM�Da�`��7:���W7����6�̬B$-ɘ��ݍP��@������U<;=y��-l�fO�<KM��b��ɳ7�?�=��ٍif?�̎����~�ݏ7��_e�{��_?�����if�'����E����l3[�zVf5}����[<q��葯����<�$���:�[$��m���I��:���$mm��UY�'˷�<��̳��o�	n��.���.%4tm���w����c�V���U��ˌf�g�ʕ�]�E��U�[W4D����L;9̴�bv�3fNgw̾�Y��|��4�ۈfpt��K���[���1|�
���|9=̗$H�,��)�$H�dn2�!AD����z�?5UeR���pVY�xF4��h�om���7��,��MYNU󛎘�yo~7�6��|������W�_J��$ť��2��Ս����_��*3��߂.��,le��oMRcCV�*h刐�6��F�Ӫ-��ռ�6�ۚ��x�o��^�o�S��9z�¦��k0Zڬ��ICW�ƅɉO#�4���%b3�s�������m?�(�\�����~�"j
L���oeR�ë���A��5Ղ%�^j+/msbc.�i����h��n������ڮ��b�Q*����_b�2�0�9X���s���]ee����@J��G�S�g~��4!eK/I����/Du\�`�E��&)x��5�n[5��J�A�&l����T43�:	�w`>����/�lm��k�z�K
y1W#���K��!�		����I�x�W��4B�0��x=����/MN��Ȭ��N�Atޏ�C���C�Y���P�x�f�_�uS�&� �ܑ�4���>��-I���`�H��d.�[S޺�aIJʙ�33Τ����h2�q����j�&O�mV�E�K��E|>;���>�m��z��+�B? ӯ0�)͊�窵��AK0��T�@�H&��&#�`.���-z�n��o��ú�֬b�f'v��g����]�	gO6�ƀݓ>��Iw�'I\�_@��$zI҈u�6�Jo�E[hL�W�Y��b�i?ND�f����dB���ӊ��!��e�b�h6oM�ddS��zʐ 󺱂o���MM*�6J����*#�K~��`V��ݾ/� 6&iL�s�	�dBU�礪J�n�����'��[CpvvL�U{��ə@<�#�YPE��-�Lۍ!�U�ņ���6��g���Yv���&�����s[-!�Eru��f�m4�<�^���ON?���~��ݹq���6��U��P�[X j�z.ύXҨP��#iW-��D��h{���z����_������c�H�`�QrKp�6�l��#Ы����A��VkyEgZx�;]��*L�@t��N]����<Ƚ���;*4��g��l�:�`S"Fp�o.po��{2�I-�OF�4��g#���L��>#�l.`��	l�)j6fc����O��b���}��;|N���=�4��o�g���� bEƸA'SR+[�7K�Y����3�9b��x3֫�0�]y,�K���I�� ^Fx���� �����0�5�����/EΧ[g�Yә�����܊}kbܢM1N���ܱ33QI�*�}RT����&e��h&��l�-�}�tr�	��q�O�:�'��p�K��/��2Z��M���]/�#�
(v*�4�ǯ@�ڴ�u3r�-!F.i��ZAN�-�<�j�-� x�7�ë
qG�X�eފ/Y��
G���0T�P��lh.���F.x�d�h���w�@�e1�%c�0ƛ<���58����� ��\��n��1.��u�xy;GD������;|��A�G8���ZCk�j�y.�9���p �ܰ�x
Y�2JZ�efޚ��_���_n���KX��a�9�0�J�
�܈�?���LJ��e8 4ZTz����V�2^��Z�s.
4���'�05�1x0b�W���>�ԝ������î��m��Qމ#�^�r6^�7�gd�����>Vҙ�Ϣ(��
g�v~��#���N�"�~Kz7�)�����c.mK��X5�C5�E�a�}�bߤy[��cע�#�[
��	��d6j�)�/9�.�٤G_k�����C�JW[�E��b�xz>d�>��o�s3�X1��:���ж����n��d�?s�3�+��aD�K�s�"?` x��ÈZ�t�a�TZ��y@j���Z" lH��o� �F*�
��0p�߫��J���N/?EzP�� ��=�R��w���z�I��y=����
�]�0�2�4�Oc�}���ٳlm������1��"vL=�tpQ"	U�/��0���Eꎃ��*�cB�G������ir�P��ʒ=��A�g�;����!.��~�D�J�}W ��dH��S�9��8}o*�>b���(��B��z�e�r� L=O��(��P��1���R�&��B �RV�l����>��N0�����B�#ٷ����p�>�����H�ͬ\�C?��U<��	�u�����K"�)��a*F�4� �.'y�B����6u�m/����9)�j�Z�	�4�T{��ۏs���h>�C��+A�]�q�}W�8i|�^���5%���%1I92R�ǅ#5;IHg:�����P$����	�Q�=�q�D��T���*��I$���@Գ�~r��u�ϟ�zvq`��TX<� ����a�m:q�ň�5�g7YaW�������*�d���MCn��9ka?ݸe�}��Q'[~yx��+ۦaڸ�KV䆥�CN� Ƴ��8��C>X�� ��E$��5}�hdX���;?>��(Ϯ}W,Z2�]Fj��O�j�k��!>%E�2��2�e�V����b�;?ޝ\ͮ��s��I����%O}�����/ƀ����g������aV�����\G�:�5W�T\�4���"2�]J�h���O��xp��!�x��_�V=��3֌�`�g1k^�<Gu���[�={���"�[�R8Q���&Ue��HI��g���ͼ�X�G���}���V�6��@�������h��	I֋�pNn�j�8ԥ�v�F\���ֵ��j�����0�<IA�T�9.d���XZs-!f��T��3�f�<�������*��&�b���V����RGܞ�%�Ư�K!ha�4r��<(~B,Xg��诅K[)A���پ��2F�;���bd;�0��Ti��f�No�>���l�(;�M�W�W{]H���dZ�U��$QR~��c����}�J>V���|��댼���W$��O�$[72.�HM��Ă�}8cY�D��������J��K[�4v����=1��-����/�}�*�J�-Ƀg�~1ԝ_9�g��̾%�7k����
w��D���,ON�$��x���Q"%������DG�20��-��]��\��Z)�O����j��o��ŏ�Bb��i�		1�l6����
��A
m������uzCV�1���b�z+h�.\{9*�_���D`���XH��%����`���8�(jnETw԰A�2��N[��2���g"u��������l��)�'�F�K�N�[����Z	��ۧ��.����ɀ�[).��¼��32f~]������xAR�� \8������!"Ĵ1�uz:dLCvH��1"Ǵv�R[�67Z�w۩*���J�"��8�� �a�Q�{�ܵVJP�-#3͕���"4�N���Ski���j���o�׉�����\n�l,�t���H9 �!o�N�{W�� ��VJP�E A��:��ļ�_i��ʤd" ��G��J$��ŽϬ���i
�oq5:*�x����Q͎C���8^�H�a��3�_>#f���!��.���� [z�3t�Si��ˆ1��R��\ZHQ;�ԍ֋/[;YK�,\0~��Ʒz��%����L�#��������Ҭ�WV�������"�Nd� n  5��"ck�}v�+]D.+#$����J���������M��v�r<�
r��ʪ�U�&+lt���3	�Uܼ��r+�q@���Pq�Q
��,�`������Y1���G�f��(�_�0x���}��H��C]�^���y���n��mE�cj���o��(����b\�A��!�����,M�pw4;W?n1�.���'8w����V�ѹ�V<cHJQ��+i^�(iH��i�n��
	��X<���(���}�jX9�\s짯�"
'�~!�v���)4�f�A��{1��$����a��lx�t���
wܰ�+�*��}�hK���.��2�৮�2�n�5�t(��bQ������ ���GP�Fuz�yT%s�Rn�w&���d�*iM��&J#
�_���� ׋!r}�v_�^ߔ�����JeeL�MH�s�D3�C����B����la0�A�ϓ�D��C�Y`S�t>����{�EPY�����}�ݫ����E�fUj�KC�~/����EPE˼�5۸���Fr���Г~�"pv"-R�����\��H@����VI�-� \�hM>�w�?c���?�+��#z/lA�\~���n��4�BUO{!����9�"9Ĳ�8�C�(��*�e�X�6a�Rl�&�k��L|����R��cp������<{����l�Q�WH�ԓ��Itbj��-�+�h��y�DרS@��'zѢr+7�#�Y�������|_g��d."�s���ogf<U����K�s�[$�_hP�v5^\>b���	���|j
>/g�����nD8h��(���M6j.��<>�b08Kу��W�+PR����sj򪷿��W(�~MO"��"��-��%f���QC�o��.���7��6W����1��J9��T���O�:���Bd�G\��xwj�g�� �w��	��3�7�E�wl�q��r�.��щ%|]N:�8ԓ�����~�b71���q��T���6/�s:v9�	�51�=>��n/���7fe*�Q����{0^���Ե�X΢��K��˙[9�`��O���8�c���q�~��ޝ�\|�h��w�A8�!�P���:�}�5'����o?6�(@��5y,]㈖K�Em��pD+R�l�^��Z�e�HS�H�4�AY��!iz�hFLR{YdܫX��$��[�D$��?b� ���/O�K�f�wM��r7Z��4£��C�V�[=zk��3�d��@���z��<�o����_�'1��i\R2��Z1���v�B�H�ĕ��Hm����ܩ�0QT3�D�j�a���-�x/�<���$�3�;�q��v�wuX�z_�^Y��)�������:��ψ�B�����$��>��@�-��69�����M��I�|����kAr�߰�e��e�O���W��0sz�:B^N=�.}�<{���XM���.���ͧ�	�t��C�@D���|n�;1��iլ�4$��+B�QN�a�7�x�1��r�Q�.XF�R�gѴ�Ruv/ S�%�њn멘�c@��E�t"|aW]���88C�wG����K����"*к懠�UY��_��L�q�O���g�#�\=�R��A8U��@_2�A�U�[S�����R#_XѠܝ�_�côd�1��w���|�<������f�A}����䭅�v����~�~��G����K�Ճ�H�V���G�����u��e��l�jT�lz��|���X�ݡ!�����]��0�7c ��U�MUE-j�3z�e� �+!�~��K��ե�O�я��	��(:����#������4{�Ѭ���������OHι�nW-��Єa<�e=�w�c����<{�c�@t�`o\��0=W�%X�N� ���
���)7�쨹��1H��8b?��gw9�;=�>B��z���sУ����Ě����t�/�Ƃ��[�=��\��P�LRRQ�/�X1�^�Y�n���^�ݽ�-��j�G��07�lKO���
�߇ʭ�Z9�&���� }�S2ok>�'�B=��c�V'���9&]�W/���	�}�Z�+R9?���<����K���yV�z�~ ��h ,ѩ��� ��糉J���FG$F�;�z4J<֣�#Ft���;P����F��I�~WvWI,�u9eQ�_�UO�Jȇ�F "o|A�:��կJ������6��Ύ��\y��[������p��3z��s�;u֭ �a�e�<���+�����@:q'�*y	�S�єn�ef���+	�����u�`u����Bc���������s�p{�߿!��[���LAG񬢣����c�.��S�oR�9e�"�����K''%�rA[wEɩ��ǁi*'.U%����W����n,��:��C��3�H�y�i���83M��ߠ;�Ke���M|2n�����z�G�L|dý�@����R��̌��W�@t����g��&����V��4:#y0��K�&�IW�8Aă`�uN�����Q�Q_:�dlH�^�����2�F�n�v�,� �{ZT�uEՌ5h9N� �+L�2�2���2Nu/�'6'�K�{��P=�V�V9����[�⫯&Q��k���5�0ȕ<�r�q9�_Z�Nk{rc��o�������P���Z:��^����Q��Qh�3���1h�ڣ�;DU�~�� f�+)2���3�>��8����EL��!5�c�xwo�yq���}*�#��kѝ��B-�7����j�������]Ѿv���v�d��>�ט���%j4�a����6��K��ѳ�;JN���m�c���]ߛ�c Z�R.�߰$"�þ).v�U~#W|�0!)����ƀ�kV��ۡ1�K��	!���#-�'��X�g�������#\@:�d��A���"�$P�"�<h��=�����̂��;\���0�8>�ƏdGX��1Tzf���� ��ؓ6��?��ᵕL >p�~�:}�肆R�7��:'��c��G��L��˃�Q�S�z�r���ǡ�0\5ƏJNr����RDE�@���*����i�F1�3�რ����.'V������vj��R�kF�^�Y��+_g�<a�\j���Mj�f�QS�u�5��v5�2r^{���ʀ1�-�h�{@dr�D �K\�Y✊�Jt���n�L��J���T����J.)0�*���yg�MX�J[&#����A�NN�6���@�j�t�qx�s�sg,E��=�.��$�P،bZ�1���#�Wn�Y�p�����04����d}8�u�Xc"��%U^ p��"0��~��sD&�w��l�1�(�����Ue�E�.^�N�n��
?� ��������I6�xs�y�xC��˿�הw���ɒ��c`(�t����~�`C�p�TCf��T��e���~�mqO��/=*c���1/�}�q�R���gr,ڌC�b�U��ύ�n�v3M�~4�Ce-2���l����������;���G��4I�RO��{����X-�� �F��ȱ�?ef�'d_Y����Q�sg4C�ȣ>A{׸)�٢�ְ՚��֡2K#�|������x	�      �0   �  x��VM��6=˿�����l�osr>�9���I������s�C�[��c}3e;m/���Λy�7W��P����Y��~����z�ެ�߬t���ܜ��W��V�M����Ϋ��R����d|^��Iu^%�Z�k�[�T��e�WM$�c��<o46���n���'���6�r:ay?|K����J|Г�f��iy�v��I�g^�]��7�� .���c9���h�U�1Q�#?!>���@��O?����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۽�B�O�؄8F~�����̋j�#�[G9����=����Z!���޶6rAdJO��V��	I��iN<6%z�xc��P�3P��CqY��q!v��[8�r���uk�O(���ش�N�����BDπ߮K����y�^U����K���)�}��I���8W̷�ΐb:;4Ꞙa:C)��h��� b��|�z�(!LJ��Bb���!��y���{�V��.�:]�&h�qNȏ��>L;CZܞ��zC,3��7Ys�{�h���˙S�E�S�\e-Z*2p,���y�wp%����]��:x��'[(�����V
��O$���J��-�}t���v9/��:�R���
^H�����?���,S�P�3�9�����ż�?��M��_F�X"���Ӫ�R�����=Xz7�h*��R�T��ݢ��2���%�cL;!]<K�⮕�����[����δ��W�p*��L�����R�ɺ+3&�Q{-�7X�!�|[K���5�"�<�����s���E'7�ndO�>"�$K���;�����!K��;~�A�ӿ;�PFz���$��3syQ}(��X&�D��>o�������&���Y
��*�;� 96ݾqY�w��<�B�.�	z4�N�-@72?
�Y�;�5�^8"l����a�:y/�9��������%�D:x2��$��Z�YD=s�.���o�>���>�U�*��y�Rg���\����%�y���E=��k԰z��[`�a���9Ϛ��ͻ��FF��Μ��k��le1ʽ��w��1�c��<�BO��Xq�Č^�lC��;�Ca��H �9���/�óŗ��b�z��$      �0   w  x��V�n�6<;_��0K�h�=�N
,P���'-�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�z�q<��ѝۿ�a�]�|x����׫�٪�4���^ן�'sr���b��s��/���cM겯�fA��S�b����e'�NF�|L�	��e^��i�F�X�Bl��y�-�Iy�Z����5&��՞�D�S�`��Q���^2�X0�6����u���/���m݊���Ê	!�v�Ï;���l�F����r��m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,��bm�� �r��
�W�W�W�W�R�U!Jnn�W�+���Jp%�\	�Wʤ�$�u�ez$eLҘ��ı�&5%!%e�!�q�8$��L����Z���7i$�%BJp%BHP"�D	��,a*�qM����d$�&���<{�+d�_T���W�����0Ȇ4x�f��Q�joN��OC�	ac��Gݚ0x�������]`.��!�X�O��JW� ���Hk���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
��߯�Eߞ�.����i@51b?�C�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f���R��-���al��ó��Ǳ��/~}�B;�Qظ�ac�a��	�krg�쫉�;��+{�^�5�u!�)�>r��S�H��?�o�C���?�ߺN׃9�鸻����z�$y_�$���p�GkҾ�h.����u�Պ�6_F�ˇ���Ɛ��-���Ű[�O��q�'����uhG�꾷����[G�e�1����!˝���1*��kLZ��M�8�c:J�9�x[N���a<���<e��z�����x�xQ��_ĺ�{@ _ѓ�U=vC�Q�cLF0]BP�-��L��	#;:O�}�nTt�e��h���4���`ͨ/��%�Hf�[,�8�֐7���&�(gם�zch�;���D]���7�w�����4yҡj��Ϊ#�z�E�
jŪ�_/<�ә�s�Chq�r��,���nuss�/�A�      �0   �  x���Mn1���)�lÈ�4?�"�@IەC��
�8�4A��� Yu��\�����mw���̈|��xt�qrӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��pF����SͲ8;;y?=:>~���[E�C:�{LZG�gT�E�}b��B��$/�4�G�@ւ��⑚��#�]�\�"CL�"�q4��XP�g�d{��`%���d�*�V�ѭG�-H*�.��$_%GN�?ў�����`\�x�k|�:�*�ߍs��m��g��#��{��2�+q		���l9�ɿmh�KPl�~��.�ee��U}��v���HC��y(D_Oܑ!KP�����*:4�x�J����Q�?$��Q*a@M�ۢ�W��4^�l�|����uNa����Ȩx`���W�\�C���!����T�X�M�#k�W�T�ֹ�;]؎ϑ��u0:����O*vT�f��*�՚QZ�����^��}����"B3�:H��r�ߥ<y�R~����[*d��v⡮��!&����|:���!�O      s0      x������ � �      �0     x��U=oA��_1e"Y�8qjB$d�$�%��-x��]�(䧤s�"E�.-,on��X({����y3\�wiQ��Tn>�!�.�醴�/���/��N����fS���׮���bdJ�#N�*�e%�e1���8��t�����q�d��g#Ss����y��[���*��i�*�Ϊ
Y*��pr��h�����r���%��5�잭��*U.t \������;��L�h�	�f��2��	��z]e\K�&ȥ�Z�].Y[I���gGv�ϖB�������"�<)��T�Y�j�A�C�!\?<"�\�+�e1�̲�W4����U�L^�y^$`cE�p�5��5����y�r_P0�q
��a	�PO��R��4|���ƋJXFya+���ù��3�MT�L6���x������QThc��7�������AZ�>�l��(���I�~7v����h;�͛����14�ĺ��Y�	���sI�$�R`֮^�(�����fy=\P�P��Y���,���_��)Ѓ���M�"o����o�4��}7}��<�]6�Ƅw�lۃ}����������B:݇��~UL?On�V��Q��~X�'[�Ev!�rDI��gᱣP�<�\����#�U%�#c��	��s���È��q��)b$�<��.�KMI^Y���U����5�ʃu�V R�[��>G�R�M�%� ��$���g��������}�9�N�%Ҭ��-s(DXK���^��)��eB�f�$Ў�{�|�;��h��Ɯ���z���<��      t0      x������ � �      u0      x������ � �      v0      x������ � �      �0     x��T�n�P];_q?���[DA������5�'t"����J�����c��̵�&�*�(���3^���s3hǽ֟}̃����[�sU�/��Sf����Z�\V���6i���KL���Ǻ8;~xG�͎�Kڑ�˚c�V��ީ��)̯7!�c��A��;n�5�������VZ�n�dU;�9�L���	a#K����0�g���>{d��M@O����U���p�J���lNS@d�N���RZvx�/���6m�zq�� �t�X�>��U�1�ART_����޼$ �gf#!{�i�T���3�6qd�zy ��&
rm5p f��n/7�x�rҀ��\'f\��Jg��Z�@ �̠H�5u~z�g�|zԛ�B��E�69l�v���02� �~��3�-�}\�ޜF����^}+T��(�O��f�%��Y�<�� �I̻8̸�\M��S2�f�B��� M�4�S��GV�G�ɮ�h��lo2im�Ė�V8:hf
(7�kͻ�+]�ޞ����b���j��	��'���'�md|a�"5\�p!�$��sW�j����q��)��^'�x�ѻ���O|��a�O����Լ�Zn�n&*�r�MRF��84�/7��b�o� �      �0     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      x0      x������ � �      w0      x������ � �      y0      x������ � �      �0      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
��|(��5�zk�m]~��V�t�}m��y@>�e&?���t�]S���<��'>>w�8�����ǩ� �ѹA����麼G�/ԡ�u_7G2��k���\a�H����/]����#{�÷����tUsFm1�ӳ<����bҒ��<�nzh�q���������3���+��W���a$/��g�t����dΖߧ�<�%#]��k�]��E~3y����ٽ>�|-�� Q	R�4�s��~y=������}MM��<�.L0ķ�D��􁟔W-&Df/;C��2o�C�`5{�ˀ��/��@��R�^���?6��]��V�k>���ۦ����"/��.2<�N���F��/��9�#�̮/�1�l���T��|��pr�$��keOxU7�f2}F�Ru�>��ogܶ9x��Y�
�DF�ЉD�u��>R����Q���"��|x�-����X٣IT* @���o�P&@g  4�ŵ
�	��-�&�A���h��j=*E���K�~��[��̾�����M�K��߿��ʇ�W_���w}�/��vj���U��������Sy�]#tե�%[[�ے/$J��s�H\��'���ꨢ҄��g�ӗG����6�I����t��J�F��%�ʏ�wd6��3t#����c7�<�7��o?S%������3qS��Z��|RA���ż�1�,b2 ���wt�����x���T0���J�N\���z���*Ǐ�Hnc2Em@��1�ФB��92	Fq���	m�B�]�}�n�g�O�o�4�h8<�_dP�z��v2�:W'~U�7�@�o2��ն��~^BC��|��2�5�_�'yM-��+�X�w5�CEfQ˶F���І}{�ɥF�
����5:̖�ɤ8|?)���V��J�T�:�QBD(���9�6t��+��^(�H���1P�ʯ&c��/��;.���3�U?�W:?oŹ[�'XL�T��˯D`rIE�P/O�q��K�3^W\5�ǅ8��	��L���nlؠ�]WQ�d������j�������9.��S�Y紑YN�l�ҙ=��dq��!��]�ŉ���;������3}�z-�7�Bݼ�;��?>�yN�	j���a�y��J���R<�� 6��Js�	kMG�$yй�����v,Ъ�P]o4���c&V+Ū���z�	�併��<ߩo�}�O�T��%3�V\���t?��vͯ�6T��tx�ǆcT���}�_�Y47F�Cy��]s:��3"�P4��{�uM�D�I6�R,�6�N(FT��F"�+�|�>a��߇g���;�ޙ�F)E|�s]H�B��f&�**~��T-�2I�)p=xfh��7�� �x�0ޅ���v�{?SP���(
ۥ��W$0މ�*���X�>݀��G�B�]GJ�x����]��Dh�B�.7�����҃�Ǎ��*[N_~>r�^.Em:�w_�@�-_�%�A�Zo��o�om��i����n�'̝>����b��y�n�Abc�4� 	em�?���
��V�B7].p,�<���9���`*k8�:FJ�<T�u�#tC ���8=��B4��e7����̠Y����m�l���i��\��q8.�/̰������B�Is�����I޻��S�f�>�(L�9%�+/�hy��+��=���OͿfL�� ��� ���O��3Г<�[ɠ�+�Ѻ
�`a@N�k0fc���sl,shK�C����x� L�~h�1��W�q,`[i�E"
��Z�W�{3��a�N���n;W�i�{�\4��#,L�T�A9�mG���^Kat�)rOV�Id�)$�eD��Y��e2���<��E�i���7��l,�^ES�$ʹ�1%�}�|��`E�'u�9T0�'e�4��Nl��1s�h �>�߉e�x��c��U/��bB�#ڢ�҅�af	a�p�()Y�59f���àᲚCU�cMO�E�3:X�f9K�Kʝw3O�{o������5g�!/ 2rT��5	�.P�����6��)�`���:&#��8Z���p�����V�C�<z�Δ��aF�0:�*�:(�{K�1_U3ȺF�7j�Ju\ˮ��YF_m���5����j�>��
R��gJ�"�S�ե��<�a��u(��0�P�&I������W�[�/�&ǬC�S�I���
)�v�|C��D0�m�����Ɇ�k��dH����כZ��Y�J��G�ꉬ)T��36KK�b�zU�	�®�ؙ���7���%���%'tx���M��)�F~��g#����l�q{�SF:���U{�沵��BA@�R�ݎ�ɂZ9�-�隨X�3�̦�&��"z����grKy5�N<=�WC�/։��9+/�[6��<�/�+�\kn�4�g����I�B��^h䦟�q�<�ܦ���eV��2؛b%�5���#�N�!��(�����i����S7UW�`���p�oؘM��E�ϐd�֟��~��r���F��5|̉5�UC������Ȟ� "-�{^U�<�N��jCI��m������|�?q���Ԝ�Nv���j�]#��k4��ssj�6����/����ћ�Z�'�h�|��C'�����pL�!x�̖�"�J'c���#
�a'����m%{�ds�7g#�/ex��gOݨ�u�-�ZE��.��N��py�J`%Bd< %��h��h ����m�D!I�Tw�6���n���S|@�_�7�������=�9g���y��8�wAZ�%�:��bܑ�g�wy�uF���tD�����門M��E��A�����hZ��%2z_���}����/��J6,8����e`q42O�3y��� �x.7���%������U������P��WDO���R��Tˎ��pB�)ܓlۛ��P�w!Bc������"�t 	�=�g<�aj���Fն��?���8����BY��q���I�'ͦ�[��N�!\����G"��A^ټGC�,���#24C�JV�퀌���vEk������V��� -��._��q2���a�O�/�K�e�\I�'K�a�X��"pG��7��k���tO�\3�P��l�*���/�p�����3���[�d^�o�3��j�mߝFr��^�s�Y�f�0��n�{1�#�{,n$Bx��>�i�@��Z�LCS閃Fc������ÿ����}�ǉ�avv�g�h��%L�<�/�b(�C��=ʪ���c��'"2[�c��Q5����C���9��V��h�;��e�S�C9$��~�	�إgB��O�S��cY�����dW&`��.�A&�8|$����VU�=*�G;���F%!i��Pj�C�k��p��##�w�'�W�����W͹�(��\15�Cq��a��p���^)k E��X�-����Vv�,i>,�h�S�񱺥��f���V,[3�����`�eJ���s�a]ʵ�"��H�^�`"���!��^��Z8tj����BsQ$����m� y�:$x7����`�U�p�P.���6"v.�.<n�|�DT�ƞ��߂a������+]̉/l4P��)u�&2(F����Rj)/��D�VK�ЀǭGgF s������js�^��~���ľ�夆G� )����lw����@c/�#r�1 ]��=��s�M�9��"1ϑK���qt���N���DAY�I��SSd��D�&��rPԴ��yhȢ�W�Ҡ\���#���:44�a�5���'����ʄ�"�Iݞ}�    M�ғ���p�o�D���'7������^�QQA��I��rA����p���ń(w%�,*$��ҡ9}�bW� B3��|*����O� '
ݽ-֡A+��9b�.�zǤ���"B�t""¯�Ե��& �(�$����<��h^P��I�d�Ĺb!dq�c��m4���^�ќE�^�qx�sI���^\~|�3o�e�y�U��]�hWL��ϵ~�Vѭ"[���N��1����k�;�L`�&5Ā�㌰�Z�?��G;��Y�;���E�͈P+ԁ�G�X�&l�����/_s�E��
�^l�Vh�� �{������|?��ԓ�{�7����CaI�c��^YD9�vn0��:�9��c=�NriC�Lv�e5s)��Tܭ�$K�)	k�7w��P$z�z�:6!%���̷S�v�p�� ����D����6�_K�_�MO
���G����i��.8$ݜΦI�FzK�VH�TcUHMr�������a�y)�q�uQ@���L�QY{���[T����y{z/�"����_y���{���W�tA����l��V]���Iƥ�ZD=U*eX����r �__�h��%=hˤ��κ������N�>m�d�쵭������|#��-�z^T�ū"�������+0B�굪Ɓ����ۛdԲ�� �h+�.�(mۥ��ܐ����<����d��J_�ۋ3K�	YC�hV�T�\YC��2��*SE�RaZ�0�3_�Ea6�T��"��8mͲ(�vg�Z�v�↻��ׯ����?��)�GF�y�,jv&�7I���Z��tO����᪥�N����v�J:d�I�B!-��n5.��3�Ý��N��n�r�&��]Ùǽ�×������3��1�jeaHB;�p�i���z���(�5-|L�[��~��_u4Z�m��y}s�z{{�֥�F�5騅�L�� ���?6h�|�.>��<�RA��G�\>����c#�7��T�V>]��8�b��+�������HP�C[y���H�� ����A9+�Q�M,�,T���ŉ &���bʑ8�($���#�N� K��}u)���}�uB&7Ϭ��uf�0��&-y�Z[z|'u�?A�z��jE_&�Z��@A�ʄV�:�FaiVԬ-�@��TEa$g�A��������|D?B��L&q�F�lј�(2�)��,|Ė|��ɹ�N�Ԋ� )��Ld9��_#����rs��Ӏ��Fʱ��<�L�ҤD@������Ge?�\
�3��ѓ'3Kб��]��/o[�F����6o�ZS&4�(����&�:��[����d��v�$K4cZY�li�N��tQc���ۉ���ē�o3�/��?�Q8	N1��zSF��$ C'��c����Q��E��1�����!%����"�w�.+�������<���L�W��8Qؐ�`��ǚ�%/) 6�R�=ڴ7)(ӬwdU�K��K9"�_:c������������PY��'� �D	Խ�xnw:B�Y��9hf�"��,�8�� ���7M��P�@�i�7�6[WbX�nK_�Hf����N�8a��0G��AقL���fĪ]��	Ã�ČX��Z��%unw��r�}l����/J�z�;��7�L��ΎtZ�������_������l~	�����HN���۵`y	�΅<T:f0Ia���#t�U8�h���H��{�&��y��pn����<+geV&%����(�@��S���Pne0[A���)�5�����K�����%��<(_\]�e�^ǂ�����w��.H ���$��S��X
�O���JH����s:��<3,)�7$Ӕ#Ô��������!�>c6AMP��Q|C!�-����9�����Ze�kh4jNM50_�;�}D�hho�|U;�IL��$�Z�'�L��ͷ:�cqwBG��)迆���~�K�l�H�V9�������JTn��*£-茈غ�
��"P�w\���B#�g0�8�ڑ���>r�͗sF���trdLd�;�3�kb#˖)R��0��=ڞ��~}#�A�v�V�<3����E�v�3��$_#QmgY+ �hE`�E6��ˌ_�Vݱ���0v����u��Qc� $:q�~HюW��֞*���`U5���+ݡm��v����M����q�UW��������w5Otw@v�T$�C
�& ��.�t��v����6 ̛sZf27�s�JN�r_��P��})�6Y�\uZÏ3�;9gZd��W�Daa�e!�2e=��TZO"ރ�^��~��9��R��d�:b�[$Bs�s2���H�2�g]��T@�A� %���j� 	�T�ߒ�c+�>h6B�K>j��*��mn�߰<��x���"��y���N]Э+�W.8p5O>�L%\A��d�A�{���ۏ�&2vlD[��(�Ш 	'�w�}� ��dhHQY��J�}!y�P� Qe�=�Ơ<����&�ݗ;��D�5nOg�'�)�u`�mY�!.���������Q[�W��*|m:C�
mJ���U3���n|�j�V���^���4�6
_��,�T�G#���(;%�'C��a��֚GF�)��U:?KU "�`D��xA/��o������^��+�*�.�W�fg5b͍d��'QI���s&Ê�[���f���T#\����/!�˾(����k�>F��ގ�0�]��b�fr���uk,�/և"��ȡ���8Ԣ��{r�mG^3�A�:���C�W��T9��ۊ�y�Vғ�*I��)�2�zQ���.֫2EC3�e��V�~f��6-�޲j�ct�60\��Wy^3fqy��s���V��#�ю�t(�˛���J�b�q�>�~�s�Yɫ��CY��C#����b]UZ��K֧d� H��2��*��WD2����St�F]:��(��Na��dY�,yT�%���L)�(`v����-E��'M��X�4���m	l�"�ю{��TԲYw.�8����X-KǦ��Ad��H����(���^���8�R�[���[*�W�?ׂy�ҟgTK��(5��2N�@ SfP(��*d��DL��,�|N�p6��A��V����p�,Wd,��j����Sx���D�F|I6it�S�/Ա��t	��u1kݏ��E�/�#��]-�����+�`n�] ���~#_食�rYD�:wq_�J/��O<s2!��Eu ����?uK,|�k�brOQ�((Z�D����Q$��ҿ�u������VZҼ�_OI����F��=ߥ�@��W�5�Yt�[�W��i��*AѠw7��"��� :�J@H�Z@�2AI�����'hK�$��5,YU(TyU"C�����@��d��L~��U��;!4�g~�'n:&��M���Fp��Eeh'����ĕ��x��t�)L�%�5~�Z��?h���X�� z�����S,u�?�.ݩK���^
�����sox��7y�`ۿ�/�KFp(#�0�W�����
�S��W�b��"�z���=ǈ��b!�=�coug\~�F)��~BQc���7��kM�����p׺�d;rZg`�,�����a�h�Ύ�+�7�ڝsOD8�-�����+�o�`#�ǔ�&Ar������:6���,�"����lt\���z[�X�%rC�*��zV;�/�+c]��Ǿ���U����5�E���0B�j�x��8.�{>_�ˑf����	W�6�0o�+���XKI�(HZ��!���صU�B��Hc��e.���t?W^㓄9�����]��o�^�))˟/$��o�DA��{�'��!^ʷ p*�0����/fP�q��x�Q���lPIS��e߂z�5���#]�w'�7���x�F�dWl	�3[)��δX��V$��B�Ǘ��CQ{DW�\^�M����l�. j���zM�l�wL:��+�,%�'Kx�CL��^��0���%�0��+J�
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      �0   �   x���]�0����$J��R"�	]	c�)s�mJ?��������pއ��"i��~��H������Vh�g�wڲ]��hɝ��QS�KF�e��(�Y���p]�qF��I�Y�uڰ��3V�o��A����R�� ͗e����p�"}����ǋ�Gͺڎ��uRra�oj֚{      �0   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       �0      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
�_努\P�8!���d~+v���e��ꡝb����k8��*��o��~e����w5_:�u�g\��|�����TkPl��|���U�4�Գ�f��߁�^5m��[3���!^ɥU(&��f�Z������x���O��<2u���uߞ�u(����̻�r���jg�ƦݏS�g͉�y����FM����w㎟4B;�K��3���B��K����&L��LT=�u����mL��-��z�/\�����x�?Ʋ�,�>$�Nr��ƌ�y|����������cE/H��.�k|N
Z�тr��/��:��n8_�ʒ����Sr�� �wþ�Fa�8���2Mk�y�{Z�������^��G?K�������T��ҸpL��v�&�08���MՈ$=��fǆD�Cn�c?��!w���Θ��Tp½����/��s_�����0���IS�l��6u����Q������A5�vV+孖8���1�����i�Η;���@���h�}I��@O���Gb�L�P��6f;+GK4������6^��|`�n�9
��_ʘ�h��qH���wƏ]�a;���C��q3X<��:�j����K5\��<���إ֡��qp����e���63�:�M���� c!->i�fּ�&a�p,uh1�w��=S�4�y��M�Ol;w��39�/���k��a|��
�e�3c��d5u�MM�C;��d� n�k*m�-���l+:���e�(cD�P,��^Y��zj>t" ���~|I�������eȓY��m �G{�3�Σ������o��o;E�]�Ź�H�y'��e�c�dTe����؝�?4��@}������g�fk�Bk�W���$�A�ZXR����3�q���u�i>㷯�O��_��}�����8�}[�	���tb��__���ͫ����mɈ��ɳ��nɈ�(�<OlA=��,�;l����x _#�u��&r|�P���l�޼-bҿ�=��~�!���|�$A�(��<�(D��0>�\�0�[���G��Am�A�{؟B��OIA�V��	���(h)��J�9w�U(�#ؒm��y���wl�n�YB���\�2�a8QʨH�/3�=j�N�ڤ�����|����YbkZ�� J�;7�UG��3�
z*,���V�������S"*�{��˷13�T��Ȭ��n�g��t)��ㅹ*��J��"!����y<�����m'"2	gJ�*Ro�Hݏ[X�q���&��yF�6̳"���)a,�fܘ)�gϔ�3iJ����q+{e����2�
�0kJI/�]=XJ!%�r'"m"�����&�n~�R&�C�Lξ�<���\)������ŉ���<~���܍�F�,��$K��^ʊG���2��y�`�([1����\K�����O�����9��Q����h+a�lap����qrҵ����fK3W�	W*L�>*��i�G0����j#� ���s{qB���W(�4��[y��2�0��@�Dlm�	����X��y�N�Y|	eJpsv��<��*V2��f u\�0�ALo &\&=)�ۦ�y��R��4�k�{G<$7ꘁ�њ][rw��:뇤7Ax��GYψ]��5�˩�x5�o���P;��̎��	��*̣yB5�0�O�"�ۜ
��2��eb��_�+��"皗�����v������RP>�R}�Uy,É�#��#2�9�J�ټXx ��2k/�훗����
����ø@���t��\�y�nvLt��U;�d���;�r����k?�^u�Ǚ�a�d��L�4u�>���V�|?Na�I���Y��Y���a�|�>����#=꼱��s�XC?9���>3���E��֧�����G�:nϩdaɢ�e�V./��2y��?�p��;\h���b�d��K���lɤ�:���l�(�Qp� �F����~�������=Np� ң�<�:��ļ�[f�|�[^~B��4	�l�OfCʲQ�2l��e�ļ"q��D���������qk�=("h��/�4����SQ*�<��Y��R<�\CM��ҳ�3�MuU�P�H� �z'�e5��A�_u&3[g6��"�V�xSQF��7�d�n�LsM<��Q��F�����Zv�'Ё�����_���"V�5��G�J"�o)+�Og��P�8t����Wa��ˑ�����b۱�o�c}h��YJ������Cl!�B�ܲ��M�O���S�-�_2�h����EBR�7�qf�DC��]�` Lk����H	����g�,a��B��VTB�D#�5y%C�d蘕a�Va�����
|�4^؍]-j��]��<��Dj"����m8��K�:�JΡ�.�cj߳�u�����=�,N�C�c��΂P}�����|$t/o�at>o�a`>�/���qy��&7������A$�fV��߸���Ӹ�n'�w��ZuN���+�)4��-��J���5�t�	�$~"o��E/�Aط �����%@���G2���Oa�9x�i��z�`����zI��j~�B]�D@���L0L�8�����1��l� ���ˑ0�J,�P��s~�d1�2��~� &ȕ۸u�\Ж'I�Z�W����BEN!i�9u1O�D����/�.�LY%��)Q���^¿l̞IQ6fϮ(a���2V��(�̌.�^�/�>��� ��D}�;A���Z����g4�R����N�)�q1|�Wd+��b�֡m��ͱe�g�y���%QJV�,>I���B�v�p�[&y�ȸ��Â�#z^��>�i�Q�]�o�(���=@!؅v��9�i��(��I8ɇ�~�VR�1����I�V4���Q��S:��L�IZD ��!Ԣ2��ķ�@�`@p`���w|����� ��L��E����.��du��y!)��߁bN�����MΈ$w:�Rjլ0',���V������,���L�FR��̯R�*���N��~��	��_)�U{��)�A3E���+�2���2����1E�nЫ��M_�ۜ;@����&d $��)��_^��ׅ8���-���ϰ�C��k6c�76��9�@h5�HA�.��w�e���W�<�hKRfHo�o^�G)qή/�iA 8�A��Þ���������nYȖ�_�~����YØG�S\R�V�y��ʢ��J[�.J��AȢ�X�/�?I��.��������';7�z^�՛ٳ������St�(�����;��D))��HY8%Rm�[�/ް#FyQ"��PN��6¯_��~/(��j����s]�ra�O$n�8�e�X���e}
��()*(��/��J� �/� /x��,�[�JԻ��Y32yl��m��r����r'(��    ��]9ty����PyӠz�ӝk�dqZ��(θ5�aEJ�����N�����V�Q,���B�=\*Do�W/o_�{����>P��<P�����uDxU�\�RʍhX���C��t{��X}� &˦K��"��ʫ�2x�2�f�/͜(��:U��5t�/͌�⥹��Љo߈D�U��h��J��`9�w[���]����x^�ħ�->�c���F�"f��ƽ-��%8���П��073�U���g�=f���e��0�PY5��U����=WUy���\Qѹ��sY�檚M�O��q���4��]o��ZĽ<��+ܕ6w�q~�(���8$a�b�yJ�8%V�U���¬h�tOة��fB�S�t�� <J��7� �����h-������HhI|�l!�f���`�K�+���m�Q/�����5�#J�P�us�*EǓmb�����F$�X�9�ӢX۪����I&e�+�0x�h����g�G�D�bkg�0>1[�ȥ{�/���vE����n���ɮ�������E���g+����6�[��v��\P��Yދ>�לe"��w�]_,�ޠ+v�\��R�v��������}�N�:�t"��
�Ro%M-sοF#���U�ܮ�W��@�Da���"��1糸u^/�:/��l���L���3�:/o�D�f�u^+�:/�i���EU����8G�T�ڊa����*��P���
�$�^�yf�0?����m�)w�R�ܡ/Ĺ����k��f@�P=1���)3UP���p��>zu��$rR0wtO�Ǳ%����/1_�"_!,%щ����GkKr�w?/�$��!����b�G�~�سX5����k�ڜK nr����b�:�s�wa��B��zI���s����Ưɏ�p�[�B�������r ��J�# �,�@<�?�>	�>	���C��N���9n�m�
�Tp�jd������Ɋ��ݘ�PE��h��cO뤋5�.w	�U��I:y\�X�tG/�.�J$�]Ak��Wxn����j���CV,M7���сl	t� [)�A�
���<;�AE
�q�\~����b
���\q�J�K�8[W�Zux�nj.=��pC̋��S�4%^ұU)*�uh"��4U�K��#��97-�8d=`YHM���oɸ��r�}�����+JI�= hE�}■b�(�^|T�4�3z.��/�)�
�et�Kf9�0Zti����F����5�_H7�H���vdu��� �g5Ơ.�!.8���E��H^��9����^���/�<�{�4��<m(J)�U?�O������%���ŗ���{
�G����L�l�\.����*�l%Q����ŃD*xm�E:o	�'�?h
.��J.�*�3r򭛨��e/���9Ԭ憹��g۽]������:A\���\O)�Zܹ���p0K,E�v�}���������=�������7=���y�[��V,)���_���l�2�h���.�4�;�izb�B���Z�~<˫����ۅ��	��[SG@��� ����Nfi�xy�&��t'Mu�� W�K	�v�4��m���Y �y7I�
��7����e�w�$��ѫ�]t��[�y)�r�6�x.LT$m��������vJ})X_BH%���8��&�
�>������Y�]q�<�[�$!�))�^�w��k�e����������4�So\��\j�B��T����\	J�(����g���}qOQ�4��V�z��FT�'iv�M�����V��kb����[�5_�<��>�`��8t@��<����b��F�Z��\�(�!�������b,�} ސ���`-��mD�^���?���y� �P��_�c�Mf �ڽ��K���u�Q��Z��f\/0Ċ��� [vqT���8C�jI��1g��q{� �V�򲢦_x�2��Ո�6��)*5�˄�/	U	�t6L��v�=�pW1�^B�I��W��侨�r�m�=`}�APs�� ĴR^{Z'�׬~X/L��a���Jy^lt�4;P�N�s['����E;��<.E�d� �*�����ƴ��ј�+V��~��?���A�9��)�R�&U�DEX�sSm�raդd����!�M�t�~��/�C���l9�9�3,�D�4;c����7��j!���(l���~~�՚y�G�F�D㯒K2�8l�\���.$�^�e��x�n��Z@�1D�*�ͥ��2IC!op7(�v�D���
o������p^s�^^_fhV;^v%�=��$���{'���2k&�m�E��E�H�B�%���%V�iU�S2+�_�&�>~�^2(�
Hŭ{&����~�	��n�f�64��&��Q�V�ʚ������qJ�w:���JD�����e�q�"�)P���x�K�h|�<\��-;�J�"���X��XX;.�������2�w-;�f��A�ֱ6 ���;��Ep�K��4�
*��]��i�my�[9���9m�RCb�X"�(X�����s����l7տ�����:���x'T��Rg�Qˏ�tYͿ��B]��|�믠|5㟼��Em��"K����#���n�!�\tf`g��g�T�Q�'�� ���r]�pi�b�|c0˫�zqՎ���5��QK���d�ud6��A5���n�<�;d�Fp}�����{[�C`W�ye�D�V,�VUܫ���y7�](��w��ĐcZ��6�Ye�����h'ZK�;��f�Fƽ���7U.H+:U�`���i�����pM���G�jE8�k{�\6L��9\�������T.OV
n�.���.ah$�#?"(��W�t���.��s�����;�A	��Yz�{X��p͐MO _���29�2p�{��4��x/\�H��N����;đ�j��5,hf�,��c�צ��v�m��Y�J����J���V ��|���^JlYz�³W���ۑ*6m%�6s_:<E-3���MBP�A����j�f�Z?N���M��]�]�����CyV� �бe��<���4-�L&�ů�l.}-Ǫ{�V���L�:y�d()��gEhQ��HW��%���Plson�"��[r����P쾅�!�1C���S��g�Wp�f��$���IaH}룀ƽ6Pq��J�%YæF��雚��]F�a���v�H�ԑ���v���|�[�8p�����x�B���<��-��]<��M9򘍣�������$�Dꨋ���g$6�$Ɓ��n�$�/�����v6�ξ���4��_e՛s�/�v�˒�q+�Gv��T..��N�8O�cG�l�SE{��!���b���:r�g�z��i��f�3,�U}1���N�h���]��io�����!����ʵ_��tIUtV���UE��Ȫ謁�U�Y���lnUt���v�$�e<�����2f�%.�#@h%�KE`�Ke`�e�{��=˟'lbX*#�bX.�kcX(��cXȌmJ��|m�s�XX�R��B�$E��X@N0u%h�u��*Є�M��q�z����w̵}M�(Z��E���][i<M�f�;�lA����0�������|��(��~	Β��c�{�#���*g�E���~EZ|\�߉�,������ɠkB5j��V�]��^R�1����[��h�cߞ�n뗗�#���P_�eX2��yeg�|8�������'q��|jJ�4�g�λ�R�'����e�D��@p{	7�	A���2W�r1+��>�@�9��Gn�s�:���pC�=2���%� 	.-�_&�K����b�$��ĂR%��������`��_DE�F�F"j&Qڐ���+E�H��)��eám�B��@[���ߤ#�U-� �P6̔�9�Cz�N�1��6C6�R�9��Vw�D�ٵl�����dܕ�x� tdxF��9�����/�H�o�ō�%��}����t�G��,�E[�W 3ޣ-�)l�X`��{�o!+e����|	�� 7  ʩm[��o��NpI�j��;l��˕��%`Qڵ��E�1ڵ��<L�]��w� />���o1/�2q5��V"U�+/�Ѕ�^�����ȶV&!�$�.�ȓ�� ֻ<*�u���N\6Ycsb�8��А�sM�����%�ʼ.�赍@��R̷���A=V�1^�"L���`��~�b!��*hR��n���+���T��o�P���4o��lk(��r����E��.?�����I7UQ˧G�����_�����^&<�p�{�}�����*��u)JݲVK`#9ln$��d�ȑ���Б���ؑ><����B�nK��t��n_HTVIA֠dP0ډ�D��R��ɠ�49��2P��������� �'�����+bA@���7��w[-��<}�M۷";���_H��1O�Mό>�*�@���=����J8c���G)`�=��t+	!�aq�>,X���O�W/o_�{�����G�FFr�B�?����3�\G?�!��� �bt�@�Gl}G;��x���-r̩L��ĵ�#\�.�Z&�̝i��7777�[u
      �0   9   x�3���,,M-�L-��I-K�+I��L�+ɏON,I,.)J�ѫ(I�5�������� ��      �0   �  x��ZKs�8>�CM6��=�d�B���T��,��l�+�����mI��<,9�L�dIV������d����y�y�����߲�	c*�hKʌ�Pʻ���B�,�$O8%��,����9;DQ��^��$S$�,SB�BI���A4��� �L�J`�{7�)�<MuO|*r}���1��=�1��b����xO5�lB�ѺܦV�YV��(�V(!ORX�D]y6�ӈ�~�Ԩ'�,�Fu���as/�;�C+�$d{ۘ��L��4�N*+��;P�� 2Oބ�l��[�"��r"Y��J�Q��$<��I�
x6�&q�3�Q�@��%Ǝ���l�~aG��F��}v�J�b/�N�!�XB�z;&a4J��`�g�����#�٦�1���!�B�u�7Sb�d��a л���t�D�%������������oF��d9Y�U/�hQ&��K�#��1uo\�%?��=1/��A��4OFBUJ� JrZ&��/� �8
�<�L�"��֗�r�X@b���HR�y�!pzxZ�T�D �vB�v-��d��3C�I��{�$+�-ܮc��	C\y�9<��D��rK2� ��b�<�s���AEJ*r)r��	qt�b��̙��%�D'�!D�!H|= Q�Q��!@N�,�6~RT����tp�x~���ɭ�=���P@��3��D�@i�#�����}2�Wf��$�����h|���Up5�����(9���P� �S�a',�;#zF���z0�^�d�Sr�8�UW��#�Z[>�±�ث
�c�wV�:��b����j����	.C���܏DV���O�s):q>/f>���P힚hR�i2��4��gՁwժ��-��T!��*�m 9A"7��~�7��D�9i�՗�_`*^ �n"<��e�R��
�*�t�D��/d�Ƀ�q�S޻���yZސ�D*B$�E2G�Ճ��}}��� 7EQ�hӵ\�e����j���Ɗc�d�T�"?ŀ~�W�[�&������$ôu%# Bz��0�7[1��C5��_A����2_i��5o�����џF��Ţ	��-΋A#�d�(�\���No�mg.��J8F��%�p����5dI�Z�1j��!Nz��dϐ\���j)XQ�}n�Y��� ��-g�
f�zSUb����N���a�(ժ�x�_OR�eu��1B�zI�q�;�6")�;դa�;b��n����N4pަ;,�Y�Z(s�'O �]�%XD
g(�rxǧ���K�=�"�#ۄ���۶�� J;��לI�nl;5�R�ClNЋb�������3u��lr��dEkj=1�uM
��.�r���Bc�b����<U6tR7,WX}��d���k�~uGͣB#��E'��H��X�O]P�?+�=|���>�k�1�n,��l�@��X�b:Z����po�c8_�8�aP�w�Շ��n��9���h4���zB      �0      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
`r����H���{�)�Kfش��ޥ�U��ه�Ra���,�3����ٔ�2�~9��!xL���W�N<Ӯf�?M|���;����U���/�L4s�HF�������#�������{J��!{@�t+�X�#���K�jR����w���3���2�>*�G��fٕ���X�T���yh̳�z��o2���.������s,�P$�~� �O���t��l������O'���zNE��*�Ƣ�y�T���*�?��T�Bh�ܯ9S���δ����?ufȉ�f/$ߝ������W8M����������ufZ���~���_w���.�F�~-y�'�(�Ӂ���=����A��@ڷ09uQ�{!!��_��pIo���_��p��g����X���6_oh50|_K5VnIC�+q��
�+�w׷��o�||�I�©Hm�E�>�9|	�6��*�����"��;g��2��IJ]�@�'�b�`�;!H"�I�]��@�g+�aΪ�k�2g$�Gb;\�qO�����|����&���s 12/�5
�s�|�+(�ڱ��ٯ����������q�`�s_]�_^�����f��`�
(��N�L��Rvk�O)�:O�g]��2��")���B��Q&��dHe{��Νך *�3�p?ő
��P7 �����>{���^ķ�H_>P������0ǎ��
��r��hNUr[��m\T��"�I�l �M�8�Z�R��V�â>����q�^��p
���"{���2}�v�������?���*�<��#V�b�f�l�h}��lʬ�j�w���4ң�����$6�/[V�t��ob<�!"N��ۿ,�F:���K7��I��u�ߒ"�VU��.�Q�ڊh�P&�.�H�&kN���*�4-u��M��0p\%Q��#�vZ0�K�xu@�>�%����J�A���7a���	Y1�7x��Z���j�DAK_�XԮ��|5/�o�m�����Q�X=�QG}�d_J�Y���
��m%�}�ʞ�)$|!/��MR�'�(4�W�Oq*�|!�� �&�A/:��Y�f�;]�B�W�A?��%�NN@w#���"���Л/
F�}tY̗�
���*ҋ�KU�WQ����T'����U0%�j���ґ��)�-�R��H=H��G�[�E�%��7.`�������6ݓ�V��ܞ�K�"~ws�Wh�#Ӭ��\���Y0�%�W�JS���իi�H7�\��jN�\��R6�� ���O�^+�0�d�j�I��jj	V`P0�k���MP��p ul|Oê�1�V�͘�{k����0�e��-ñ`՘��Fn��<ZDv��<��!�9�>���x�T����	�����N�fcjc�]R۶ombtްz���'�s��O ͘��9�����������l@*3�;k�/'/��FY�t��xϏ��߯��@κ�;���#��(��&)�"�V��W��˦��<�5iC������ϯߋ�u�4-�My,��䩔�J��������g��w�g+ǯi��W�Lv��Q��C��!Y�ymL��컏�����)j�O����V9K�p?�J��9�HQ������S����	�A�Fն���b$c��=S��&�É}��qi*��\��υ׌pv^"�>�F��!� e��z`��&z�K�kݐ��$_���x����gh�P3�Z:2O$���f���NӱGO||b�`�����-.w���wt�؇�g#h��6Ԥ{\�bt��aخ�uwY��/�H�# �퍻>��>(2��6C�t���K������#~��k�4)�0l��+�����Xt��j���6��q������OF}"�9s�Ǝ�ɻ�d���c#���Nxi�w��ul�K�ak��@
(�n��:BT���~I;1)����- 1��OvbBm���>nS�����<s,�w:�e?"yCO߾��wn���/A�IGS߼�9��%�!c0�LL'���>UIQ�s��7��rʛD뱬mG��;�}��H��zIZ�<�*�V�}d�LP��m Y�6�#��C���\��:я�g) �����T�e�[����#Q�?��W�'ӑ@~��o�H �=fI���}#��c���!=����s�Dś����� ��oξ�C��B�P8��'#8g�Om���� �I,����w�҃0nY��� [�wN08�<�F����A5�ϰ�b��n"= qN��:c`���7l���"hF��"�2:sk����]d�5��*$���hH����OF��evt��f��峷�8-¼C���" ���j�����C�$���r�����{�@�OC`>�<���;����A��3���ɣD�����<���e�p��i�K}�l�娙�-�m�͍�m����"��~�J����PjVe&��\u�Ӹ�n���W��?������:'e��I���P令�N��bO�5YG�tW!E��H7#E��j��F����E�H��@,&�ǂX-�2؇SF,|:~�D������w3����� #V��ήb�����'#�-�����@?2���W�'讹*��tI�Z!�4@�@�<V�����p1���@���K���v�6�M]a�)0���F��Ez���¼i���'_���-p�|�����CW��$x��DR�i�H&0�F.�RVӱ��F�ǵ�WF$��pF>������D��TC��]U�X~UK¬o�-�QzJ�.j�c�INE����v�1���f�����<+��?�=46�
H��͔����h���͢po����:98R_���;1x����Q��@�O�^�TSf�l��Ǻ:7�ǌ�*>���Pà��G7������Q��@�r�Q oQ1�$�b���u;!�Ñ�?|󎚇)�,Xm+Y��̖��wJ��)�޼;���a��`U���u[��D� gD���ͺw��΁Zjm�W����n�ٹ\K�C,D�;��~�/����F���8�V���z���`��@p�e�k�i���5�^8#������HP)��e9�Up�m�s}�Voh�ب�p���d�m��a��eJ��=N�>5rʭ�������Q����З��͵Q'Ͷ* �pP�}8H��h��9�! ��{I�I��E�$��.��I���('Ն�%UR�~ʒ��t,wI�sOر�<��������>a06��0|2&�k�[�06�2l����h}�.��U7�`�v;),?������y��ê�g��L    �i���Y3e���h���{�f��(/7�)ٔ�r�v�f
@3\g�G�^��( ��©I;��$������]�]���Te�y�?D�j@=E�/�Ds"��<ߝ�����ԫ���蹅�7"af���s>��������3٬n��[5�����O��<����d�}��w׷Ĝ�E���������iܮ����ǀe�v��d�4�V�iz|В�GUO�i~�]Vo6=P+��i]�jb��h�>9H��1IHkͷ�CN4g
(PZg�#���սm�ٮ�ߓ�����&�	M��eCM�&�>B�q�[B���L�>i������a悑�a�g��?���UD(73�!��9dW5�(c��*�����3x�̌��;{x�xDj�.�������jX�Z�y�G�ڀ\�
��oG��:u�Q�X!P��zL��.�~n(i3_�:����j��{�ц��97c;0�
N��e��Fn���!>b��j��J�B"���DἬ#>�Rמ���П�{��� �C�����rs��p�i^,�6����'�K|CDP�qߴ�m:yj���%�� g#[�TPD�vf�D���)�k���	�Ǭ	W*鬇o 	��B��*Ocd��V�W��P0�
6�J��JD�L^�����gЈ�@N C�������F�ErU��f���|���@�}C����`�QQJ̺z������;�������N6������:h\�_�ͩs�Sr�������99�[��?�����Z��$���b����ї ��@�+[���i�%F����+�:���R�U)e�+��j_�� 3��`vxE�4�wNf�?��"�FM�p���jf� �X�5�z�%1 3̾e� >�ߊ}"k�8��dz�./��D��Q*9����"n�6 �&
���[T`R��!��[�V�N1��V��N�5��t�#+����M�]�۰=��Z+[���B㘜'tCI�zI�!;d]��7�}"4''�a! �Lȸ7��b#�����Y���� ;h[��]Ta`o��Iz4�F���/(�R̛~�RЛ%���Q���5 _�:H+��
H�T���g�����:Tr`-��)�AoUd���E�J?�NP��Ӗr\9������F&�������_�B��W1��{˔xaw�5+)���H��2R�@oD}�U�<¢��L�cZ�Ϋ�	�m�W>�[|�^m�s��a$��{�=�2�Ѷ�o�"k�N��u���I�Q���*Z���PG�M�+�����3��ii�7A�-p��a6^�����&3��oZVa�q"�O߯Q�阱���c�K��Y�*vR�R;+��� >��]���UF���~�hې0�%l��n�ZF�s��<���>��Nwpa� ��7*��T%E�ݎI4�[�`�� J�M�,��nGjY����a?�>Lf!��Z��cn�Y�(WCD�4�J�i2N�']��*h����1�khSm�x�[0if	is�sP��=g.۔�e{D����e�{;���5���.�S�`>���|#��������[�\R_7H�+�2H۵�2}G[��v��ѐ�A��;@
�c>����'��@݈<c���������gU�Aa�$���'�<��m��O�	>�"������>?)|�.rog�6N�
�;8'*̛7sA�QķP��	�`s29��D?�ώ��P3N��(ҟE�n��!5�&�sl�n���50�T(jߝJ�d�	���Z�6�W��~y8&�-�l��;2��
��2"�h`�!���`Ұ�������]X� �E��(�d'����E~�a��״�z�+����UI���=�0�Z$���ݶm�ٶqǦe������f�ω9� �	Fy>ޔ�R du6�7�߮��">�ڍ�^
�[�F�a��w�_�jѢk����~{���d�zꇯ16V�O}�} ��b�í���!��G�S��v3��}�1��zؤ�1�؊GoU]ߏxjW����f�`(��39OƓ���2�R2̲1K3>@�Ics�LF|��ּ�U@���°�~��pF�	E:��b������l��NGR=��L��`��"��b3U���} �'��/���Q��$�C,�/H] �)N�'�\VYB(*1T��b�}3֊�-���Ө����]1{*�3'};UܳN��W�>��%۟R ���u5X�n����ř�1=ɓ����l�����>
\��IE�0���!,���e�=+�!_g=<T�k���-�
�����$5���0:��� �Ӈ��пO�1����(q	(w����{�%߸�W���zĶ�:�O���o�x+�Hs���n��"e��*�GۯJ�l㒩t�s^U,��ۃypIo��£e>���ئ��F&���S���R��Ni�j"��>�D��,�_��H�F��"���ҘG����I`>���y6Є�����<{s:y�$:�H�Q�vDD�4`lg�MO�`��{�����n[���m$��C:#�C�Չ���!x�h!DU0�6�S;��Y�wχ�x�-iy�e#t?ޥ%��-���WN
 �Ǎ^��`��P�^��!�����,q��3�i7��f���a���l�]�gR�NU�`Jh�9��ϣ�4��1�,��$�0��<��
��5\�2��]�����>���B�� ��Tc��7k�VX`W��v�������{}{��P�FPV��s�� �itG�s2"Ѭ��U��rkZ�PN4�.��� �� �� p�~Z?��g�G��9�c�]�Zz��W���7��U`�?G\�8��v�ƃb��˖���ۄ
1/�U��m�!"-�Z���i��bjQk��yT�`���
���[�
́���>PK��+Ō!�+x�!�G8=A?��_n`8��z��bg���wzLaZ���^���)�qPoz"P	E�d#��J���U��:�l{����
hp0T6Z���������ֲ���	�x��V±vv�p�J��g4gH����h�K��FI~�M���6-��g,�L\ Ǭ�No���:D-��Hl����A��DtE7� #t[,��1����B��LmG~�4���a��v��k~G���%;��{@HQ��cXMK�݄yy��!E#U�t^���-۠���{x����-��xǎ��=|��RȽ128�P6�t�P�� �t}Aj�pp�����L�V|d-Ӯ&�+{p������]�!�GT��K�0�-��+W��+�-_Xem,^����j���`<��D�� ��)�B�Duk��Pt-XG&�;�Aj�R����mqоA�җzHwS=��mH~	7����dQ;A�����L��nk+�ͧ��jJ�B��~��O�92���@��E��}��t+�H��`������F��S����$&�ؑ7�aݝ�ImX��H.��}R���K|ݵ���;=�K��s
-�K��Ǜ���m;����.d,i�Y���U�(`E1�`���Eۜ,.�X�G��h�ww����.�]ق���*"�޻*+Xv4D4�P*���,u��.V�g�|�dIP��Z>�����e������i��ma���X�.�;�'�ã�ED�/��0d�]7i��QP��oC��m��f�A��3�k"��u;o��cp�tK�y�
���[\�ٸ��鍢/INo�,�w� ��*�^;'�z�T���D�za������K�HN�ʢ�{P��L<�Ǿ,~0�<�[�<��?o�ů�������ůM��V�Bڦ���dP2��ZkkV20�?a����L	�y<���[�r14��~��#.�]�>���+�l����/#�E���$�CM��P?w�;��X�mH��T�y�:��ĩ�F ���yP+������ى>Tٷ$�-�k���2l4��V#6-D��ε�Q���qF�/e�UeNmP�`֜�,�P���ۦ`ƌ�t��#a�|Nb�    +1�\�m�Ř����̰��A�zlZ`w��������=��Ym�R����!8� �p���/��?W�h'�_��R�cg� �>.�Q��oK[R��oKr��B飯�Wr��7-��i�x������*Mnȷ�Ȋ ���|�wb&_u-��sO�25�y��P���d1�*Д��;��bd�|uw��FnS=}EP6R��d\�%���*#`N%^BA=�$xk��p܎:�p?C��';����&�.�1FUx�	#;�B��u\F��f��� `>R M���i
��935ɜ*��hlU�sO9|Vh#�v@�R��&�����)�D͗�1��xt?�v��P6�zD�������(���cN`�5\�&����l�����x��%�Oe<����	�F����1v����X���]�%�ћS�H(��-�m����OQ����?h��;ߥqq��YgP|��[�@�iWW��W�	�������� �ǿ:���y��A�{c��3����C��Fsd��sO�Ya;��`Az�ƃ�i���4w8SS�Y*�Fj?-a�͌<��с�C��s��1�b�/23���k��i��CX��l�]�[;	fj�,�;:�u@�c���M��� ��й�O�r��r�߰�p�
 �L�)`����2��H��v2���%>9 Q�_�6�޶S��"I�5q��&H?��x�>�5��W��ߔ�������ၽ��n�oa��4@��r����H�����u����Rl26�Z?d@�,�@�}�w��(�x�c�o_�=:ٺ�zxk%�f��+��{�YYF���Xs�ܢ�.��IQ?�G�<g�6(р��_��g��l6L�A�}��Y1��lK#�V�WϓG� J��zwI/ŗ�JJ��"ɦ"W/�1�^��C�O�!uK�D��j}U�ģ��x�Y�,y�d��Q����,Þ�����xKRR��א��ؐ��"�x�a���6��z7~,�	U��0~o4^T��4QK�yBn���zO���6a�.�Z�r	��
�7�ي�I�\�s\m�^O'�s��m-k�\0���^�x�o���I7�gy�����@3��S+,h�R��X�:z��\	���y��*�w�@�8,�E�K���o���l#�R���Z�"�*[��F��T��5e����F�ݕk��?��3k�psLD"݂%�;K,`�|�`���뻐. ��=3��� [��Q�:�T��%�'uU�᯿zQ�y��I�FGIjb��Jk�EKL�ۄH������wE�?�����FI�bg{C͗1�y�h���!��v�����-2�f暉�e&W^Id����t.ܴ��ބ�şd�e�B�<JE�*�zVL��7��o�lF<0|٣$�}�am���<�C@;s\�c7��j������YN��⶿�����st��ľ~/�T�6���+o��J}��K����R�C�t�I<!���6J%���]]F��|�8'9k���r��M]q]cy�G�H��1oM��ۼ]�%k� �Ɉ7z�����$����a��*.�.�8ِ����y���7p��������wƥ�.M��!0/p��/�X�R'[��Jh�M�3�JU[}�Ƞ�܅�k6i!�N���$)H�?K�ȍ6+ҕ�~��������{]��q�a:�E�����!T��f��ǴE�����R���E��P��5������z^�H��jHP/��8B,�b�앞����]w_����l;���}@�c�K ?�X
߽gP�%�9�8Et�>�i��l_�ڡz�T8qf+F⼤�'���%y��O��/�y�%ݵ@��y�W�&�G�������l��h؛h�ZzA������~|�-�uޥ�q�L��Za��밮�=z�^_��A(���M�	(W)4��U)?����+�'xaR?q^N!�88�`VU)3��h��Z|��<�~��(,~�>'��h޲�o8�D���^Ǜo��T,�4oXK�����������$��~��#c����c�����+哰h�%(��ki�28$5K���5�gHf�3�����k��Kq�ff��Io�#�-d}L���YR�����EY�grU���)����J0W��A��5	'��G�X��*X�5��E����r�&!L�&J{<����t�cY\<��Ǘ82͆&��4���j�������>��'�j��?J2$����?isC�R�i��M�d���c	�n����E�5{��_8>��<��*�A���ek�rÚ��C��0�6 �}�5������@P��'��Jc�i��ǎ1�$�3Fo����X��h����l�|���Q�G�@�!z^6pJ呙pb���B�� �m�í#�� �ߝ��r~y�,SP�ߞ�u0K6��`2OA"��I�ﲚ��Ϸ�`r;����?L��N�}wֲ�ݩ�C��'V���M��Ӵ4�=����	r�	蚈vفЏ��(�Xe����w�3�L���$*9	�j�ϡk�Zknw�z����Ѷ�;�U@�􂪠n�C?���FfT�kG%|��-���Ca���q�c�?��Ma41���F��Ȅx��d�7}/��[d�e]
�e-���/�>3��4��#���񉽋���N8�V����������a���0ڪ4h�cTҫ+9mD����A|b8.�dKRk#}��TBr��(�f��o��5���6~��!�,�j�O��D�CC���*�o�����Z}���΀�ⱀ ���j�9���Zd/�E�����	`�e�!���b46�������j�1��0�°̲'l��5}�h?�I*(���׼+kH�06S�%�Ye�/��yM9�,%���Ғ����q��L$��ܻ�G�:���	��,�Qz!�|��(m?i^�".,25�4���
w���C�0��N���lo�.:Y[��.օLgO�Ӌ��	=�.��![*��W���39�e/N�����6q!�5��H�4���>��x�9�/�˜�t�.�3 �ż����^�c0}��D��PS��xz�M��M5�əo��D��֊'��R�s�����V�!� �����1>\�@�K���7�T؉L
��T�=�y�_�Co�����j����a�>8ka�ja�KR�lr���+Ʋ��u#ŷ2���M��r�aC��AĴ�2L=׼��w���q\bf�~���TϤ�G��c�O���|8��`��q�Q#���hE��<92Pn��6�k���F�`\*�F�l�zO]�����o�G>}{4PZKCv��a�3f�gA ,$#��ɳ`t"	�:��G��� `u�	�.�5|zR1���Uq v���]yD�O�����ϵ5����njnYb��a2����[N��tQ���ǩ�J:H�'�j83��*3�JYzs*�3y!0�;d&�{��/��2%ͧ���k����w�*��S�����*q��6�O���[b�B�#O�gV�3{�m�I���aõx����]����0����q@n��ŀgG����w;�h\z���D �J�6C�_�i�#�t�H�7��M�8�#a-w����v����*��!��6Y ��[,V�y��)�������r0��S2W�+��B?�f��۪�>#l��
�U"�+�p���MPi0)�hk-�~�̩\�'�>	��Y�4^��F�>"A�R��2��Yg��̫ez���w�1��SjbtHm�R,�A_�;<��l��_��TܰYȯ�^�I�L��X��=�{8K���4
��]�&45n;}��hv:��iu\nޅN�u)�ڡ)�]X܆�&��:�s�Di��GV�4'�D�_��G=�f�žk}o$��<&�"kZj�R���LY"N������fќ�Y��:���Dl<E�X����Ojȳhd������X���m@��uQ��"��0K ��*���Q��g?���"?��� ��>�F<�3`:�N=X2z�Rr���EV�Z�U�&�����!����� t  ��hvUS5,?%F"�e�����+�nlv��B+��+���h���p��(�K`�A�qdl����}s�݀u= ���|EJ����7��U]��}�r��O�R+NġdQ�Y����?"���q�a��S0A��/F�����9���J�ô[����5��Y����@�лs,sW�� º����A�z:��hv��'�8n����[�z����+�E�Y.kV�Rt��o'��2bV8/@r5�����jN&3	^����$�H�&��#䁯����h/���u	�\����c�(ca�@��ˬ�B9UU�P����Wc�W���/l��oY4U��/�ﱼ���V>VAD~_�v!�8O���C�u�޴ΌXC�vm��; T�Nb����KR��{�;V$�[�$R�-߶4������`,@���	P�*<e�R�k��0��@A���<��j$�a���V@�+��)�o�Lu�S-ӾH��/��p������u��)�Qc'ɢ���{�Y:�pN�a�q>����p�ʡ�<�	=�6�F�ˬ�����(ݒ�l:_�W��W���D� 9���X��6�A�'���n��� ��f�/�e��7����%�����}��'2�f�����O��Eό���O8 ��3��	HNfwE��i)�����fɆ���$?��5��H�mf^���(���!@>jy�{)+8r�V�����	'�ރ&�cjIf\��H`n���r,F�:�.`�����8"��5���'�ȺU�P����cz�ư�\؛���ǖ�;苬o{{��~�p�#[[��o_M8cOj��_ؓ���Y2�B9��U�d���$j�z،W.f����]N�Ҽ�¦�Ґ%���R<�WW��WF�� �����>DQK��%;-��m̅Ի���q�]�@� >���ޙb�o�zR�+c��&�_@'��1s���g���=e�R*�uN6�=A?�`u��=�-aT�� ���!ي��,k7�'�)�CN��r_����Y�|�H�N�J/^���.�g>"�p�^��r;(̍L
�E+���DĿLG��E��0���،B��Y�wBH�r�����<�Q
�"{#�`��4�eС�.aD�y��H4�QC�V��2:�}8�_F�+��|6�t ��@�?0�� {0�>���:��z5l��0 �X
��B�(���msOH�l=ES�!ߒ"�������$_u�Z"?� ?�M���7�r ����5[���_��
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      �0      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
���AR=�c~t}�a���x�����ݰ|'-R���4�*}������7�O���'B���U=z�~�������yw�������=��;}s)EL:���΋蟎ߟ�st��'���ev޽?=�Ǘ�#�{�G�\\�_>�~=�-ߞ�~{�{�X��C���dQ�u<)A#�i������f~G3��1�t������>ڋ�ݍ�ɵ�gm���ͱ���gI���t�����7���AQ��Fʧ4�%M��O��t��(�9���6�>~3<#<�_F�.���Dq-���a�������=؉���&��=L�O08t��d��	��v�L�t�o�,��3]����Ox���+��L_�qcR��7F����F�e�OF;����Ƴ�:���,�&�W��<���b�c�}k�������?��ߧ��_'���C���⍈���C�A�p
q��q�~B�y�O��_���:-�?\kӜ/�X�;�e�JE��U���	�'`f��� �J�����x���
X,���:�.���d�%ʛD�`:F�4Lu���zp�e���xxl�-c�l �8���z�����Vt�3`N2�ϡ��=�q���8#.��������ke�A�TVo͑4K�j�����_���I�F�:f��}b#��D6μ�FL}]��ia�^l4�i��(uB���e��7�w���?3yp��o������3
V�(e���f��蚷�8	w�h��e���"�X��_I��Yͭ��$�xr��j�"^(�4�1
����+��Mg��6������6���mtRA�>O&IyM�aQm�Ƴ,Γ����S$�XW��'��j��@2S�J'���M���7��@�ݜ��ş��Ͼ<�}bo�?(A�;�ħ�oSzO�7�I|{��ɧ�	��|V̋l��4<�����U@Qը����7Y��q����� K��J�g)�Tx�v��N7@tb�y�����y�_�KvQ�X�5���&�PsZз���UB����j��E� �`�T���s�A�e�1|{v1�p^P�bAT������ J㝇>����c������`euqX��*Ŕ�.�U�(&. ���/�?f)�G�����IKU
eX�i��2OB7D�e�ݩ+�,fe�~�Vs�f��h,�}��FF)�c�&I���'%�ibU�I.�Z, !��	�!u��?�%�(l�@fT�H��`��*R�?UPgW�4)�%��W�~3dX�A����MRa�=��cJ��1�����T��Y� Ne�dݲ-2羲	-��dN51�y�$���p$�q�G�9L�;I��	�i��0�>4�/E(:�y?|�'f����S=v�A���#Ax^*UQ���%U���8�N}�����t���k:P�l7�dD'F7nO�Ľ�p2�,cl4�j|Χ<�N��Vs�o��[t`��D��0���%-�y��](�Y]�D��W)���_P�HG���w ti�#�|�$����N]���C�(���7�'�-4�L��A̛�Q��H�u�1?���R���;"ޓ�o�n0R��@�A�K0t�s���,���۰�E
��Q�>Y2^����_U_0"�'�J�Y���ӂw��PyN`ePK�'��օ�U��{���^�[H �	_�㣛`Y��|��L4>����u+��+��$D�� ���%�(=5�b�T��,͋��Ĵ]Er��퉙;͙�����t

&�ZHM���|ZE�A1+�Ίđ��ڼ��1�{깪�$΄$�Jt2c_���){km��i�rwߘW���(T��� \AyE�J�!kV��T+*�VP󆥹�cmzJ�`AWU�Ą�똈}YJd��W�nGop\0�'�4�'9Mw�CnxI��\U95�ĥ�.
��n^Ƃw�'J\[
�����rVҥ5-:΋��-�Ӗ��X��A�;�3آ	�5I����fx�]E��`��T��j���dM��2�o�ѽ
؆��xM�o}��o��w����N��Z��#4�~�Tv���6����PN�F̖?�w�ބ⬩m���̄~%�	����=�g�~E7��⚐�`��uF�TY�d������}k��M����!:��w�[�*R~9<5/�:_"�Dp���Y�{����M�����"�iRM{[TZ��5o����^�wR���6h+�6�U��ynV]#)Ӻ���݃?U�vxD��:_��_�HzN��~�G��U���E��7�{�5���d�[<���>���R�4)��hg':4��4;�JaGJՌ�}1�����RG|�zB���Y��LԮp�J�zl�m���a�k��RA|3M�e�O���W�'�=�N��O3��������d�B���qC�X��n���M��E?o��I�#i�<��wۖ��fEe�H��@:!�6�������Fֵk������h���zT���Ч_�Q>��N���鸘���8���&ڡI���a7;g\��0��Ͽ��5���eb<�>:�N�"=��Oq��)O�eq����W8�%�x�����#��Cah�qi�\�T]P/$�A�#h��XP�-%�zAB{!�s"r�T��@y�M}����sBJ/�!��ĩ=���<������V�����wR����������^�)�,�'��5ˁ "*x�� ��[���j9���C�E�%����Nt��Sv�a����p8�9/��8���OP9�����}d����C<N�I�np��͞Q��x��qc�]j�U�s��b;�H�ۋ���髣�����t�|�o���Y"J��q�H*�a�Et|~�T�����I8�;Bz����-Jy��@@׹��H��-�����B�;|�o[�99}�q�,-Y�	G2�ٕ���T�DnK% U
@�GZl��D
�k}������^y=@���B�/� �=o� 	����̴ͪ&���������=�����\z;D�8�����9XI�1{i����m�el����`�o�Ƹ�3}��(��d6ϊ�ߝ�]|��`o������{��݂��8��,^w�x���S���=�����"��_?{����ٓ�g�{��_~���'z�'�c��7��$����=�xN?ş���ǿ�x��=4���f    ��������ǁ3�!�ܑc_�3}S�t��?j��n���-"Wr�(h���&^��_��l^�+i^N�V?h̝�5'E�^�\>^y�j>^n��v;'��I:]��t�7�,�-��V
'��}��Tn����״�o޿{rt�<f ݵR�i�a��]s>n*��p��!��J��Yt���rOy���Pv�}7<+�|q��60/���<�h0�?E��
�`U����k8<����ߧq �l��p&�@�@N���c<��\7��e���ٸ�v|J<�����c�lmNZ��P2.}��=�H!�qC����1�^���cmm �C�v��U��tC�u@�mLY�5Z������ٴ�"�ڮ�&�+���]����E��i*4�U�v,���4<��P]z`��}�"��|^�'��"��q(��/{�rM����o�#ZA,���K9���ߢV��A��_g��Hɒ0d�{f�{�a�⢛��7MP��y��+T%&��ċ�ǿ �[�D� �������='�6����q%I��*SH��d��IC��F|>����L�v(Q[�c_�c���f���U2m�Dyc»�O{���C] �c���r���e�l��=�	�Xv^T{�%��e������2�)bUߜ^zw����n��y�o��~���������"z�N�0��m�룅~���+�4+F$�6e_������B����Ͻh��jKx��dx�����:���}���ͫ��F��ۧ� H�\ż&�A۔e�m�� ���Dߧ�cށ�D�ѹ����q�p���4���U-��Ƈ�Z���jed���Hj3�`�:WW(�E�Q݈�U�z��:΅x�'~��������L�,F�*J&�����KH9(/��KD#`,8�~u9y�>_L�S�ćx3���1{��Y�g�ýy�KӸ�h,�����]��5����+D�#�oA5֍� �M��,k\����>�U*����{���r���Z��%�� ޅ��(g��H`��
k$��]N��]6�� m�y�\�]D�˟� �ϊ,���?��O�������Y�_h�C��,�ڥ�𔚥��J/�,'�qC�81�]�w�.����f�Æ:�0ʴ��*�<kG���@�siFh�}��38��F�d.��WY��Ρ�;�����i��UG/��N�Q�-�ۤ��2��'��5���񕵮0[-(�\y�x�_�����7�nm� ���Uղ��S0�L�.��q�d����u�.E��a�S_1�:1<H6|� �z�R���ꉭ�Yk��5�ѩ�l5 4�08(�Uz�/u�Z0��+�X�n.��cH�Rk$;�z'�Fb8:�&f���;a1}T�������h�j����y�Ѡ�&��7瀿�I���t���ф<`� ��M��A�kĀ���^f>�?1o�ȸ^��<1k�t^C)��e���`y=�j����P��S��޽}/��t�d�u�����蚮�D:ײv�e��.I�[<_�h�ʗ1.����Flt�2^���#~1R�1�|@���T������}ؑ��<�2����Q����/+o??��5&>}.�{���N<��|����uZ��2|�jt�s��B��3�\�A(�p'	-���vgN�f��;к�/��=��F�]r��TA�Z��FM�'��(�I_!�M�O8���<ߗ)ͻ��OV�oC�6I��_޾Z��ZI��8��~�I�?�㠛&1t�:<��m@|��M��%�Bh�YAX9J�!�̽|t���Zn��p$͕w�rg0-B	,�=�Q:���Tl�'��~��(�����H�t������J�N|�L�{
]Sn!����-�玮̂h'�c��4N\>�C�-�h�Y��z{'񤒨c��#:2�ܻo�E��"̀s!O������N�麩�j��/�6w�y��ƞ��U���t6DZ2v&������l^U�x1I$��ۣ�EQ��[Hs���ų�n/p�y�Ȍ�K��@]"��G�0l��䶌2��`����`\jA�X�i?V��m���U�P�a<N˗rU����63ׄ�Xt1N[ܸ�zޱ��ƕ������-�x˱6i�g��t��;4�E"��5�C�i3g	گ�(��e����z�Ⱥ����/�y2I;.��K��;�Sp���^=z+	�Q�I�/n�G�N$��ZB�$��;����*e����~@���Am�~g'��f��P�i(jV��Y��ςE��ͤ�m��*�bW8�C!q����l0#���1�����^]��X����@�y�Yڻ&�q7㙑KM��Ԁ��?]�D%ř=U����4�E2S��D���?v��J�1�q."Vf�Ip��4��R�UD<pV(.W�_uCz 
����C���	[I�Q�F�n���o����;ڟ�]�t;Ʈr��B�����s��Ha�����j0/�	��rR�9|��U/Ȧq�s������d��ꇀiȯs{����Қp��34dn��{��ͣ���cW-��;#jd1�[V�M;@pF�m�"�}fʒ9g����gBt�2�W������u��F����������w߷C�p6�Ivׅ���q�&zU�9��/�RVo
ϕ��U+��Q��u)��n	ϯ�<����SU�Wt�!�yѬd�v���r�!�LM����L+rtSo4�V�8m� �\V���`D����H�";p�f�DjL�h!����Nt�L��N���s��Y�yJ��>�E���}��:?�d}ĺ�U��wu�H/aZ���j�\R**���Uq�Y�TzD�Z�!��U�>�{�2Y?�!k7zh��M�%s�U�tLx���v��YZ����8cX���%;+��O��tg+�W��;�ʉ��v�g�>"�Z����x%��%��Sun�1�����Sl'����Zp��������6�W����W��j|����tt�)lc�;3��=g��D���T��c�6"΢o�1��0�zV�MC�lt�TH�_�����/Exi��~�L��zH���lB��Q߉.jx�	�B�C��7|�V�Lյ��.Sb�����Z���>�1¯�S��ݘ��NMvG�7��3�ڴ��Gn�F�Z�%�VB�9}�(t�L3����6�U躸x�����E6�C�b��k�������ߙO���M^>OL���_c�o������,��%]ܜ&�?��xb��s3�f�#��S�"+F\��
s�.�����6�{=�0c����4�l��N'~�kQ���+x 뱻��u�z݊����,1�^�*�@oCB�l�'���H��7[�In�;��_1����^s��K'z�QO�ylq�Ҕ��;�\{�m�k}٦}h���=��rK~c4�dBM��K{���X|�5��^e�M�څ�jW����s�j�I52x�!�=^ژ���܈ϧx���^��D��\�R�����`�kέ`��j����3m�7�ٶ�p�7��Y��F[�H��*��j˒d���O;R�����@/Ơ�v��H��!���)q���1��j$yu~��P��W�c�$g�2P�����Ї�hW��U7������v�b��{e�)�$�$E��!�:O?3q��1��dب����\�����8���;>N2�_a
����2A��Tk��z1N�L΁.����in0��d I88/�u2�+��������M�ݕ�z[%D��\����p��|,�t� d����eӲg⒑ ��/����ւ�u��Ol��ǖ~��h}n�N�[W�Գ,˦QO�8���N�Y���h#P�
,'�'�v�M9��{�,�y%ʇ�{p-�Z5͕�7��)����d�n���Hn�ޚ�c�����6�M�  =?=z�p�KY��l�f	)�Fw��8��!�k���d�t-d��#��j�3X�})
m�ޤ:X��yaL�O���;��A>�dns��(D]��uVTN��P�0���]8�)7�Yѯ���D��Rh�"�:��U䅧�CY�E�����!B�o�Me�t8�3��\s��^�6R    �&�j����;7�\�9��Ѭ��ZLW!��h�!�7���3���������"�
�u�q?�(q��>�Z���6�S0�%R�poo\;u�?���Ì�����1��=��S��|s� Jg���ʉ���@{W�N�W�*K+[L��L;�B���y�JF�q�Nk��$e�oZ�dE���*�3��ό�y;_��<���	��
�����E#�B�2f�������_��aHm�~^�+��ɽ���X��<LG>���_Æ>g��	��)�@��k"��[1Dl�B+�2�p�$a�u�g��$���r85�B򉣦u3�cL2�a��2v=����&&�y����qrLԭz����vܔ�t"C�E�Dp +��|Z*��R�<4�O.	}�?"s���<�J_�Ё>��{���u�%b]q�2?e��e3Zp��Q\Ţ��ԋ�i$��Y��C��6�Y'6�����U�U��c�Q6�S��!�ꇫQ��i�kլs�p=x���`wG���#�Ӭ���9냋(v0�lu�z9�ܧ˖���M���reg���87����'�24bS9�mLv;�R�f2㹵�Wc�Uc�
���L�c��s[!�[�%㯟�oo��m
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O��?����x����ӝ�����;_��	h����mrM��b���@��7�;�٬����G�H���SɾKW�����N%̿��$_�h�,iu��LU�~�}�h3.�-)op�\���ĭ,�DN"�#t�6��|�����2�N9XI	����:������>����{�h6}��������nEg�ϣ��O�/�.�Owv��/.Q����|{t����\���>w��e�T��';���=�X D � ��gwgoO��1F7�8z��?Ħ�����Ǻ����H}m�����/��EtZ'��t�9�ވ�����*�h�W_�f��F߾jخ~���{��=����.��vr�A�Mn=���)'��v>B��kB�W�ͳ
�	��(��.h5�K��Ӭ��.��"#I�������>m�ms"(�[� �
�'غ �t�H����]Q�̋��OP/�� �Nˆ�x�V��/�H2�a��B1<��0�N�!����]�^H�>Nxg�`15�j�����`�H�_MO������AV�(a�{֨���e�o��;\���i���+���4�yC��;oO�֭��>�ȟ�T n���-�����H��{O���a��r�6��H�ź�7���_�m�Z^Mx����v*��*�"7�ǜ�T!���ƞnr:B�����C����ƛɠf�Q{S��Jۇ��P��`�Q�yn�7$頪G���=�B:8�(9CY0��+��3^Ҹ0}�Z�?!��$ѹ�����ν�d���qoZ�d7�c��v�@���xSXD3�l�` �I�b��C ybv���&kj�Ӛ�K��Ho:{tfF�dDZ��b*F�"����N�Szi��s��!dcsR-���B m��*ڲWg�oĕ�r�x�_[��C�L��m>�k�sF{$|�f�&@\*�ġa�,�)/2X&y��IIz��J#؏�]ō+��Ñ��K�������]g<����Ka#p�-��^ǥH�ǹy�9��w�Ƀ��)`��ɧyV�l\CA�=����i7�guܼ�.%O�E����y�:w%jK�7QC�qh@6�.�U)��w`x|-Qy��6m��i��,vTA3�!�Gۓ�;Q��H]���5\L��l�8��ӽw*ۖp��a��c�c����X������/����Lb=��+��B�ұ�dQ�|�9/������0��~@W��y���&	�S��D6:�;���TA�pԏ�L���AXH4 �7rm{�4�K����3lemO��~;�y�+�&(���G�B�6;A,�~RL��i��'#f3+��V|�v�ӽ}��P�1���>���W��c�e��Ox4��.�@	��N&>|1��q#>����T�-��Q�TH�����霨S2Aa���bN��7N�Ӭ��JP��������7� "s��q3���N
0�Y{D��OLD�q}��b
�'���D6; ��Z���T�Ѽ�<ŏf�n��cMu���*V�"Aq�Y��A洗�»�b��x��X?B��Lw'�\)Y�u0�����N���nH�Ǣࡉ�x �7ˏ7)@�)/���_x���4��H`���e��:^0Cmd3߷_���M�Ua���v���u���5}r������m���q�!�K�-���R�H�f�[/����C:B��|�]�s�qv��(�l�
G�ed.e�ʨ-�jb�.���m,��e	�N-�~n�v���[*1�����-�1Љ�N&�OZ+�Bs��'��|�4�1v��HF������3Z�M�znr/���o�M)�q<Nf0�8��9���ȻT�Zƕ��ݛ!��?f��l]���7���������ޣç{���o߼��=z�4:;:�|��(:��<���V{>?���&�8=����1���EaʸE5m�=�u�?��O��w�*z�����h3�w� ���������ţG��w���M�uY�;)�G_���'��K|�=$������#F��w���;į��7��ޟ_^t����}p���j�m�V�[l��+W�HbB��O5���	��=�K[#�V�����Qל����k�b������bu9��+�P�V�aB�ܽO��ԛ�{h�=|�p˓OP[�@�C�:�b���\���sesnP��`��f�r3o S �|�̲��?� �p&/U�M���tw\�R�w���?ɢ�8�.ɲ�G0P"-��UL&1J�A�r�L,�i�<��hg$,��~�I��d}��ۉw�y��bn�C1��~�����wM@y���}� A`�L�
���B 1��zY�b�H4w�_g��;��|�z�y�.��d�>�n���5G�g�(��W��c�O7\=ݖ�_��� @�_���z��0ξ�?�X��]����V
�m��5��4�LR>�1��ڷ-j�u���k����d����cvl��}D��N�٭��يN m}��ĩ7YL�sW%�T�s����\��N�Y��-L��(�e}H/�k4��_�̮�H�A݈>�Y��u���I�eV;&LI���" �� �~?�҈���9-��2&}?<�o7�\"�3[�����\}4o���`� r�@�1�֖,�}�&*r�3��D�0ث@�a�A�	D���D��"q{(����b���@�T�x��_y��@�����ȇ������@8�i=|g��\�u�j�ԒSn?�0�hZ^#��6��$j ݅`�ث���6�j����9��D�z3W�_���_��j]k��W b���H�E�� �^G�h�W��(�Um�T�.����cw��^�<K�1qL^?��M�"BQ��\�� �L�$�Eե��А5�aj�$y�C<gc��Β��5�_�քZ�8�y��zq�/�    b��g���"K����A_]]�]� a�1\� ¤���$*������!Y��D*������62X�e=I��;�J�ג2�B�__j�O:V�dͪ�0/��k��
��"��݁7{cAЋU�0���y���X��sZ�O=�I���s�� ��V�"��7�FF�z�#�,+).�D�\#K�d�b�A6��9��|	窘a�]R��.�߱6�$V�����f��s�%
@
��H_�_e�����.�a�䋯w�n֫����{�b`�^J�C�wz@����t���c:M^�����[���}��W 龙�pM��@}Cr ��4���[X�uJcz-,jȘ�e-kN��%�������k�B�MH0��ێU-l�SA"0� Y�<��G�*�Q���Q�s��]u��ID!��n�z�d>�jP��s��-.��:��'�{�iCR~k\��7��&�e���j�3��W��G�2�"��t�6���Ǖ}�,���W�!���Z3���9{�䚬�l5'|���\�=P��&zT����ؤ��O�� ���-���"�(�}�����X�q��
ϓ��D(��Ӱ(��9�� SR���3����/�"�Vtڮ�>tE]3.8����V�`^�0�_�;s�\�]���#h&���L0��1�)I�w�q�F�l�=wX՛6��t�W����ٮc����t&�BH��VM� |G��":�/��ē�w{K˸�}3��=�u��6��K��ly�4���8����=�1�(�ħ����Y��}/��;t'�M���"�ڒ۞?5ِL�y����e#��XW0����Zl����T��rr;�0xk=�,Y+�m�΅��=�w�������v6��/�'dp��$�~��N{M�,Wބ��{�Q�|c`��G=�1�X�����H�;�8�q���Ka�[2��}��f���rٽ��x�܃56X�].�^��c�z��J,�.7�.'m��~�����wV|S�ݶ;�S	sr*՘~|Jg����n44ԑ�w���H��']�Y�����I�����R�(��mt��xO���U�o���cQ���k��R����7�w�l�t�Q����/�}n���X���*���0w�1q�5]�e�zE��X;�E,�[�DL_QJ�>Gߞ�b �o+w��Y�ǈLOsB�	��'�5ATzZ'�{p� ���%{-Ԟ_��*��#nq⽽�迫�,�}�I����AC��6�p:J'��_$��kD3w�.�l��鎩�8Nl{�8�c�d����'s�X����<82yu��m�,�1�.|?�m����k�����$��*�[i6VLb�c{=��Ũ��yh�5�Z0=2H�pHػ�$z��vA��H�gOЊ�+4�^��kǧ��ﲯ�݉�h��\,�.�J�&N�9*f���[y.[������ 6���&h���}�L ��&�$�J\.�!��J�Z p=�{�dE�@SyJ�D����RM��㞓R�e�ؤ��hWX7֟jU\�X�*��:Z���l�,�r�!���2�'1�����u$����u<���}����;ki	�r�t#a�Sm�K��A�v׷�8�Qxnuw�y݇���l4oQj������+�H�馩4��yޫëo�>��b����)�ss�9����c}�uX�b�k�j1-3��x޿��z��0��d2�9�wvIr4�̷ ]�*{������Y�m���Bc��]4��Wx�7$M�/+��w�_#['�N����1#^t,uطQ��^�=\g�+[�	��j8I��E��@�a���'����jQ��o\���uǢmT�dzj~H~.ѭ}V'��0����X��!�k��@�G6٫�e��~�ߧ��5�sŭ��W�a�
��(�>U�(��E�%���h��>��T���<QG���<rp�XIwh�œ]Zx�dR�U� �u�ЁX\���&����Z� 51�LstM�O���
X,��=e��GP�H�?�r�_aV��r�v�a?.��PyLl'[�[��a��ߞ~�ݽMq>-*�n��k��vw��v4v����?Y��S��>��i�=l9���ӵ8�A?.f�dNބ�� ($��Y��?�E�N�B��9�+�Bq5�����Aw���lAn[T$J-tb� ��\�H\v#�G!Qa	w���׾�%XϢ�_7����N����ҫ�랽 i����q�4:�b�͇g�y��7�(Vks�<'����D������CQ���\\�S<��ʑk�%H�.��L�
���2��M����n����6g;���no)+I$�_VLAF��f�K?k�h��U
�䂖�*�
M$	�cϧ�������@J�<��d�d�o���#� I>�"m���.�c!b�^��(��w����>�`�o�8�ֹq��K�}�X 8P$�_6%�>�'�vZ�2�d+���{�e�sSa�W���΍]��������n�UN��5�9�"��ssj�b��f���&}��vspރ��6&��-�<}�W}����/�v꿮N"5�#�0 �S�i_Opv��-gi�}�мD�Y�iq���%�57�&�[�#9��lDl��ǻ� _Q*�a��4g�D��Vt�+''9B���]0���n��3�)�jX�(F��4H�iZ�<l+g�k:L�b��`��������c¹��[��t�w.i>�����T�������'�P�xvQ�����m0�y��J=gsl��,��:$\$�Irbsf7��z>��K$Vmꥩ��O���<F_���[�n�G�31x�2Q��z�z�|5�DOMT"��@�VeBIf��q�J�Z2L��R8�5���c~-ٖo�
�9ù�&�&��ұ&ղ���y�k�r����H�.3ac%��5��QW,�6!�����DSB!�[?sb|�ͮ�$"��Sws͔1�Z��$�̒��Q�r��@} {�Il�(K��G0y��D����=<<`bk�=���w��b�hs�p�8����TxG*V�r)�j���c�Ke�Z�%��QpT���[��ը�1���P+__�����E&��t���nI�*8D0Z$���ٜ�.gT�v����Zk��晩+~��=F�!T#v���%��p��
A��#\��Z����]�c	�ʐ����[]
G7��v�Pt��ĸ�%�T�"Ǆ���UOq6�T�'i���'f���ى��I<0<�x��a?"xQ�~P�y�$�JqR�S���
�7�i�"��N����aH3��O�o*���eb�?�ͨ�2�m��d&�8���e��F"��@R��N��8(�B���͌m-,&���jloe����6��pD�����&�K�Tӂ���@iF2�s���7���z�3G���Ȥɽ�p/;L}��R�`ԓ�bԙ�A}�>-���6�]�Ru�#�z�0Jy�%��8q�
j�������s�eV�W�.�(_(bw3U{��O�����Z��B��IQA��2]�=Q���g��l��V�q\icK��QLCð��H�?�%č�&���[��0+��VE�"�	�?3��V�Xe{�KN�z	�6ܥ�B�cu�I(=d\	���	���z\���$�x��	ET��D��V�CB��Wz>�ˌ���LZ
u�0���,�����LF)�n+ �Y�ٺm]�}�'bz��B1�0��Zɡ��y=<s�[>�r#QVO�ʇ&����𥒁p�� [�Pͧd�(aq�b�t��
�AW~*">��=��t�k�;b�����5�s\4R�Ƀ抔�غH�+�ؐeA�9���Z*�3o���/�[��&C�ǼZ�p�����K	@�~S���wk�b���eü����>�(`=�<���E�"�b�{�nX�����	?�!'8��¤��j{k[SA�ѭ����.|Ɖ*�TA��F��qK��k�"�F����dT���)K��&B��-����*e炂qޔg��ºi���ub/���w�mrCАmf��ᾅC�� ���!�*X�
6T=P�C@    �S�6��慲��c�lj��p19�f�.�c����B`	X<?L�-⯵����
�C��u�C�aﮜ�wM��uRC�����������x�2�ܱ����?1�9-)�m�|:z�͕�G9&Y�'b!p�OaD�7W�7TH�T@u�]]�s��'�=5Η?d��}���������69��+:��A��Wd��e���2�a^{'�Iv�ɽ)�˃v�H�H|CC�ǘ���λy���2;�ή���S"��qrmu6L\nOVTV74.��G/,VWak;$��E�.�n@c��ٳ3p�l$E��'u�AߒK��3aq,���$�v��^�Ԡ!]�,8��=�aF����qc��b�g¼&��C�Z�؋�r�� �M+��A+��!9�x���"l�7�Aױ�eUHqƩ�N�(��P��2����&Q����M�;P�;5���"��I��JN�G՗��]����a�V6�IYd�z��z�m�� G�0v3hZ�W)�3�T!�{��L�"�����z�Eg/|N�~?�X�Y9�K�1QV>�FYdʸN�~s?[?�߷��e�3�R��4�։��^P��KQF��Ar` ��J�=oJ;�v�0z�s�}���\��h�D>2��/�RG�zè 	3h+�7s��g�o�ǂ����<�漙���*�Z0�i+�z)X�}oP�B�g2� :ZpU_u���,��6�"=�dC�t'�Z3�i@�V�R�u<�=5po)5���hjnp&ƶ��n�}p�����-B�v�I�Cm�r'UK���A�sg����l�iWY:��<S����軍��{ޱ�����v�>?nM���[��!�>�n!� ��x��	��U��N�������Ve��!�,V��S������2�DȢA+��V�B���a�����c�M`Utgl�����Θ%W�q���������d�ot�_fM��u����R�sO2���"�]eQ�F� R��QbR��Ve��x�k�K=��z/T������h	�`�ӂ:�ZQ���3;4����n��߈������dd�2�\�-f�)�)OJL�  �y�91�ۃ�1f�Wb�"�eYt�<�4�}���C�e�7B���wU1�:��{���߻��g��/fS�� P+]� Op��β1�J�Vm&�t8t�/�J��8��&-N+M�3�k�E	I�.��**E�۾���]�9Ή�nfy�55����!"��"r�V�cJ֗Y�X��h�=����g$�XP�ęx&�N���5Ģe�-�3č�Y��0�d�V��i׬�6�%�J"?��D�K6��w��$ .�G����FGoš���
��ΎѸ?���6�J@�zW�&����?n�o��M͗=\j+��x��ޚ�q�TO��?ە���f<����}f��5Z�,��u�1�yg���F�ˎ�<s
v��Ԕ?->ǥ����[��q%]	%,j|E��KIx�#n"�Ì�L������������h���=�����S���<�?������������c�����=|��/���>�����b���x���x���� ��� ��������c�{�v���1�=FϏ��1z~�/�'h�����4~��O��	?A�'��?�O��S4~��O��)?E�h�����3������34y�&���9�{�v���9�=G����9:}�/�����_�C|q�/��!�8����_���>��𿼁�������{�ټѼ����l�Z`�� �@t�M���g���b�C|q�.�����"�������}l8b[�ç���A����%�'M�����t��c
>���"��'3>T\�lZ䅺Q��u��f�T�Ld�t��չe��e�|0T+�N���%Z��	"�YE���~�������ob!Bwd:Sc��/?.|Ԓ�E��k�򬨒�����V����&n[�D��.�4��8�
��Wƶ[�'�,h����:�0 D�@ڑZ,��mfC	��!�|��Lm�i0%f��A0�N���-�l��{
�+��w�9�)�xɣ6#ѽLc��X���q���g�@Y;�Ck�R��TLl��D�0N8A�"���xQI��Of~/�� n�����8�1���Q^F�41�[[��zTL<��3ݻ>|�>M:A4��"���f+�I��6���X}љ��`: ^�w�ԅ�Ϊv^��!�������f?v;>�A�$4�ޮ�/���|��=q�p<s�y�[�Jgs�J'=���eDp<pcy�O7̳���d����g�^�U��G�y+!�bs������E��Mrù����u�D�r��ɤ�\\x��{�$.�-�����C$�u��dr@��uTivm����92��i&��mu���-�6��E�.�X�H�>!���' ƭ2\��ƸMqU§n 8��n��&9�����2�n ��h*	L`״���>c�6Qͺ�NY����-]��F���c2L�j�B�^�}B":�B'����k30�3YZ�&ةǍ�E[��q&�T����^��,D�^�
�iV�v���ȫ�U9��G��4E��L�49�#3�uUV����o��q�����6DY��%��m�������*�R�侁�����f���8
��&��B�c�[C��G.��b��^[�-&��
�gn��|Z�,�E�sŷ[P"�$V�U�P^���:FE��]�ga0���~ݦ����FQ���}�QSy�M1��$�jҟ�	lT�	QY�܌?��|p��q��E�N�I�eTL��KG���
������t<��7��z��6�by%�W���yx�v_%�����&�	.6�P��5R�"s_��9�SY|��Q����g�!��_�1e^xύ�����c�[�	v�[��:�'������Ҹ����Wulv�h�;bN]X��&'f��5X䡣��XE�S�!�݋�(�ǅ&�C�Z���6	TT����zwH<�#>j��GNx`�>����Е��j�m����3��ȇG��m�R8����=1���QAsr��98v���r򈯼�ꏢ�N�Z8�i�48!15�[�\�³!)�E0�4$J3����M7�֗yֱT�iT�u��Q���s��$Z<���_�k����*�M�n�A��<1������:�=�]Cq�ͧq2w!���H�:��kWR����<���v�(���-�h�,;}����f�.\��71�~�]K�u)%�xZU�A�'��!�/'�x́�+a'�&���y�.6�Hc`LL�X��ޙ��ů���0�c#Z@�Ȑ����|�agR"F?#�Wr�m���`�%��Yp��1J|Q͹�5��-���Z�DJ��[1�0�<]'Z<JT��ŕ�/9���/��na�l��t/bM�r�x%�<߸C?�r�6ӂ��^�>�M�q�]�:�n6�?#���	�_��	v^�!j�e 9<��SV@���+;��Ŋ��/��h ��E�N�XA�9�WK�Z:�IZrx�r�6��P�ɯ��U�k��R�wf��}W 4H��u�[��Ru����	x(�$��k���[��P�����D21|H�8�<@�"��v���r���0�H�>yQJ}]����� yaN��%(HO�sr�5y��Hb;5IO}w:��[+םW�.P���WmR�9F���
���]�4�\X��G��B$�d���L���R�M�Y|��&F]��>&�9�Ʃ���S��NLjdT1�=�A���f#<�%�l���S\���I'��zU��2�(��/l�S|E �p�Rǎ!���!k�hV�\�	j��ǘ��� ��jX(��?��W1`}�N�be2��HW5"�3�E������4���R>/�a_��ʷ��ml�;�d��P<Mb2Ƀ0V��`���vƿ6�5����"��Xe�����ח�@w������+v�܍nuA�Foћ�)K����ʶ��8�����^,�U͸F�@�e�=B\�D�߄X�Z#]��b����T�@�ٷ]���&���    �N��f��6	IȪ�-��֣1t��	ÇçHX���J=I�CQ�S��xt�8��	Jv��9���#��)zs)i#�&ڎ��#�y�� mu����u���!�W5���B�y6��h���h�o��U�'ីp1U�<A�)$�8�J	��W:��51ҁ�5X��cr�j}=|� ��������I�Y�����r��܂-C�&Cv΅������Dx�l���\<��D�1�Tr���x�I*�t�ۄ{Ĉ�+*�k���������L�/��o����;�c��u��ݑ��p���ܮ���%�>
��u�ǰ9�҅�7�|d��K"�[�b�K}<-�y�k�M)�������!2�i��AS�GR;Z��9�^s�Y-�r?? �(&+'Fb�v�Ֆ�Ls����o�����1[.�H��:hq��N���K��&��W֍3;�û4L�#�eFȻ��%!�D�t�̬��D8qh�p�<ӘsO�/% {��cL΃����Z�[�[�ܟH�0�<�s\�%�RM�VD�'�Sq�גm��Q#FJMfƾ��_x;�^�PPH���2�78�nz�El*Eh���s�:�e��j���c�(� ��J�T`�G��ur��	E���q79i ���UԬ�6`����P�9�_�m����|JV+�ĵ� D����!*:��U���׭�*�v\	��j�D��mO�7�m����m�,�`1�=�Yk>��6�)���̪��B@˛I�h<yU��?9�6��Э��b��Q���y�@��� s�	�<P��g+/��Ţ��mqK��W�j�cV��Af�9�j+�L�I=i�\�W�q�G1}/]q��d�f�~����4�"8��x\��R����~�E���o)}�z9���Uz��vo�w��|�N�.ƪk�2�x릪$ghF��`[�k]+=�dt8�Jk�Un����L������'�}(�V� �{����������Cd~�I�\B�h�`�FS3ф�k����5�읾T��iG~��⫍���+21��
&�(�,��3EVb�T��$�YY��j��$Yv�I��(����!B
��'�M��`�?�0����W�25�
d+}9���4Q�(<ێ	 �¾HW�ƃ�H\�1 �5M�yȝ�>�GO��9I6�0���x)t2�����iQ��3��:!q~4f����#�%���j�7�6�H`ܤ8gq��l�d#���B�Q�A�ɢt�yѾ�4C�UI6^�-\̤�5"�%�63kV�����ޗR���-�Ǿ�����fȭ�!��=�ք� *��o��ۣ��ċԣ�>����Nz%������d�
IM�%�5�����D���JPl�|�hMLz�D�C6SOpH$[�9���<.�D�i"���'���S۹���ڜ�>�Ys�A��Y��8����1.o�	�'t��@,i�hƞ�h�s�^TFB��B2�k[�W?ֺ�������3��&ևZƜ}]�ѣ�_�Yq�B�ꈖ<�*$�M3x�FqP$:b�o �p�8��pcc��g=���.��)b��4�@�hG�,��=�NOl�r���wT�M�V��Lr"���+�	���B2�g"�H�'F��J>�4�x՘m�#��p%ρp"��m�>R����|J���jї�gg�,�,��[�G�M�ɉ� �8k�&�Z��+�1�R&K�ؕUPԹ^� �I�EӃ��{�O��� ��+D6�@B,�	��޳��
.�9�T�����ے$�U,�.��q�`\&��CVԪ��3��L1x�{�^� <�d���{�3��P/0��.FG����!��Y,G��q�X��w�b�8������1�w$H�?�;�p���U�L���38O���-9��v����Ny����z�2Vˮ��k���+Y�p�E�1���~����K]�5!%�'�A�8:3a�c����`���]&��i=x�������'���qI8��(*:���;B���1m����1I\Et���$~�0#IO'�q���V�=��	�z[;͞�	����Im���)Ӵ�1o������l���Ĥ��s!F�X���b���NC����lzZ�K*c�m��j�<���շ��|�.�
�7�ErW ߺ��y��&&�i�;��h�]&�BH,iB�$dB���*G!����q�&#�Y# ��oFt�h;#�M�ã�uc�O�j�a�w{�i~�<��J���y�\�d�!�'�*�R����5{[�g6���8�N�Mi�Ei�	��.Hۜ����qRK,��#L3v����X_�|��<NB�jQ��}�C尜��'�
�{S�Y/5������
� c>�B`�4n)�C�rB&,�G � ��:����~rm���ɢ��/�D�.�!`.-zp���j}�˟���GTpm Bq�\ i(��$�Ĩ{%�AR*�d�M�?^����7��l|!�,����Z����Kja����t�L�{υ��9�˸$�=$�ނ����y�X޹�Z��l�����Ú3�����,����#[$C,		Z�P�;$����rb'���*��LZ�z�eFZ2룈��ܰ��7��4�L��o�&Q�6c�=�@�5��~1dz�ƬZ��q�
%�h��� >����I����Mw�O���Էe5�#�݄����G�m�������$Vᆝy��M�35h�Nۼ0����'��3	���3���P�gnp�ݞ�� 3�� ���g7~3<�WD�K�23�U)��ƴ�H��{U��)���8�q�*0�8�Z�-�ڦ�&�7h�t��@��oƑ�ac��oI-J�~�΋/"[�R	���8A
Kh��[B�N��@��Z���k�\��ga�0�>�W�8;�u:�IR%ե%�~��	�a�M8�<J��އ\�O�iZ��˸��a]v\҄��zb��ˮ0/��)�*y_j�Ө�
b&c���
O�F� /�l�
�e����=ά���\IC�ٚ�M�4��!�������`.0��&���I�f^1?�T�!j����/d�B���ǿ�;����'c+uĖ+5�'���J��I?���m��)�|M95*ɯ,���#a26��0���9�S �߁<
^���ŖQV
����o�]Ϯ�Wmn0�i5�=Z/����}U��n��n�<����w��5�8���L9wtV*��htA�0�(�3{���5�f�{#�㖜��󎁲�n)�M8.���[#�Z�yLn�:�7��)d��e���dxɴ����r���5�UgˢK�Cf�!gǒ�
�rh�j�du6��Kp��9B��OOyT���s��Fhf�ĴE�垫�8�*�!�%��l��@�f���x��aV^�pzK�<]D�����/hԏ1Ma�>�H��y��{N��p�Suה��<�p5��/������?zsR!h�V��?g��x߀��߅~�s>G��E�	�/pS�c7ኺ'LP:i?�3tcg�@.��=g��'�(�rch�u�#$Z YV��%�fA��|?s�;��������W��S�zq�XGÀ�xe����/�z�v��\G���������\EMS��(�Jf��../���D�1���m�,fq3i�54R�w�=f,�:�#ԅ�=a���s��fe\��R���~&%y�*�����Z�1�_b��/���Q]�3f�-x�g�O��F��x!�a�|rb`3eVyQ��F)�������_0���p�dk�V��� ����/"�`!��P�5��h�AB9�4�M�8(��1s���혦�0����w��U�*�"�D�q36U1S�<iY�<�M�˘�Oh��D�'S*ʉL��*�)J��K��pzN5�.�T�;�nUwDэH�<i�Uqxxb6��).J:Zy��rІ.�?d�,�&�Z5y�[P��`NdT�f��6��&Rx��=�%W�oO<N�P�|;�	Y|�Q=�(�/�FV��y7�������Xf�    3�]h	�t��;a���$�b=<`v��x�Pv�d�po{	sC-{�%��b�b,��%ݺ�i�4�T��܀[��#���8������_\���yQ51������vmk������X�z�Sn�C9��?����/�9�a�"M/��;k!kN!�P(EϓF��L��>���=�A�9.�TH�A6j�~��6�H�)ݞ��;��h����X'rH.��]t7��-i��KLy[�[�Tqt%(z'�nGWt�W��a�l8|W�%0�8���e��pZw$�Ⱦ2�
���YL����~�e���\�|D�	`ߵ�t�u���Yr+mNH�ߡpk��9�J�q��2bu��)�s�p�$٪ݻ�L���E�h�N3zvM�6��u�oO����{ڮ8��54�٘�8ϷM��]�)��3=6�w�u^�v���c91B�5
͝��(8�d�Ry�$�	��fZ�އq/�I�3�������C=6?Z�ݵ�ܞ�4B�L��+���&���-�	�zp�i��]��E����}�|�����%��6�{JLkE7ġ�S7��Ļ�(&���XF8�*��8��Î��k܁_{�Ԙ��'4�M�����1G��9Tn�	�oaY�A0+�`����}h��r� @X|�eȂ�gq#��Ho��N������-��F&���f�p}��T^W���r�����*�X�\ʼ��l�MW[BL�!Z"�M#��-~��\�X=�3O��&#��h5���i�w(��!	|[�菙���Gx����'&�Ӳ& ���R�ʄzڠ�k�v����K�19�%iE9��~9w���DS(YVX�x@Qj3[$����XP�WE�!K+H�[�&���j�|]��#�O<�� ������ܹ:H :D�1��3�����`^77uuu��6��
E�4z_m�����蹇�w|��!bKφ�+����/�0��0HwÎEpc�[����rx��t�8��N��f8Ï�P�K��7��wX.��9��EY4-Nh!�����涊����Qd�rģ�VVȥ!���Lq�8�w�\��J�w�inJ?������npp�Sˌ-u3�Ԫ;�c��Mg4��9��pB�q���p�P�v�#���K	T%��
�H��j���_��C{��*z~�=�&�&R����]3$���7�8�����-^/���Q��y��5��	�HR���;�A�0�d�>M5�{c����n�S�&���]��������>~+_D^�y�=�B�X��p���Z�y��_���C���������9�Ǝ��1�s;�!M���PJ�ЉÙ�0�2���f�t\f�����e�T�yG	{ܡ��YsЇ���]̣�T$U�P!{f2���	f{R6�~m?+�l4nh<\1'b�$I2H~�4��1�駘��L�G����gk'��9��)���7���,�����Zq{�4�3�ꪌѬ��%4v]�^�����-~Bx��q'��Z�\��H��'췈T��9�`4穖i�2M��Eh3�HTx���<6"L�����j	v�����A���D��.��:h�*4jvv��z{˩�V]ѝ<��[y�YHw˟�u��"dI_t��h��i[_b��&t$]�
���J[�ڣ�$���xl��ɱig��-G���J�z�v	���uӾ3m;/[�v�}{Dы�'�\���5����kj��)V]O���_J5�C�I�EM��gxmA��PT/�����i<Js��~I�8v2�6�R�y*����Û�:P��[�$̼�)1���l���`�����%���{�N�r2h�^>@���T&q�B򧪆ܖ�����p��2;lj�7���A��|��1.y�gȞ�m ?I�D\n�D��.g�L�X?�c�E)H�p�MM���mHy�`}�`����qo0�c¶�yVX8�EN�-��:d�j<M��I�G�y��r��IQ��fZ"��R���FaL|z�� ��6z0��͚�xGս�l&�J
Z���'�F�FSk�����ƿ �:�#.��x[g�KƦ�qo1n]z��}�}�n<L��O����_�u���^�@0N=��ub��#�Xq^�ɷ]�.�e��۩{v��}qnqSz����;��c~�G��NY�f��M��@�ѱ����Td��C�ۺ˞�����S�Q��(�o����o��o��z{�*�o��+���L�x����Ǥ���x�~=n����wSF�_��w����2#�e.K�${�-����v8Ϧ�����ֹn����ֹ��͈�i_V`\������;��z��ܓ�8OZV';�Y�����8gT�ď<�3���k�&q��ME�V~_0�ר�!R���9ٓ�ǥ&����	�`IGk��(�%bD�T���O��]�<~�u1_��:͐ȁ�RT���/�]��Ĕˣ��|��CV�r�i}�G�R[�t/�h9�o
-�$I�������Məh��[�Y�N���hi�$K F�7şDV:��e�Ĝ�0��S���4�-Z���:�>PiYs��w�&g���/��S,��%Z\�Vp*kIA	��KSӊx�j|�5��N�%ʣ�ɨ���Bl�P���`@��S��%ZJs��Z��i��h�0�H�n[
�fw��:�^� �g׫ù��V*�ծx�Wt�"�� ���+�'1����mV�8׳W���g!��Ι�!����d�
���	K��~��EȄ8)*�v��A�B_���ʚ��d	
�6�1=����Og���J���P�Klm��'�)İ��6 ��ֳp�������?�����d�<��L���ȏ�V̸\��E������M��t��z^#4ߵ�Н���B��,��æ9eݾ`�FZƭ仪��˱ 44�:ڊ�]�P U����MŐa\q_i�����O��]V
���Tn�H7)�� &�g[����>��{b��}ȕĹڬ�Jc£��Wr'�P�)}��2��;Vc�߷Dv���=�����d/R�SV��A�3��2[��dt'"�)L'��n�>�R�����9�L/:C/ ����To�F9��}��FS��"�6�q5���{�ǘ�Z����4����Us���_.���dN��&>"�0�5� #Y �NM���oUs"zv{�	پgt<w+B���������?�����J
.�_M��S�(M�w�L2┢��Bl윭��lRC���hE����4�%'����Y�Jدe���E�4uG�o�َ%({Bh�w�w��J�7�·MZ"�4����[ޗ���۹��1a�@�ԑҒ���	��Q����̈́�_������y��V���Y�-�-�7������ra3W}G�VGk&�4Ͳܬ!����(
.'~�z�f���,�o�LY>�~���
�ǜRD-��*v �
T�=p^�t����M�íU����v�kΣ	θq]1�V���1J���{3:�],��l=�՜E�6���3�U�FP��3��vU`n����:�ؓո�n=Z7Rw�m����uʌ����w�7Ή.v�R�E���e�5�"��I��2�@)�j�Q����J�E?i�Q	����C�P(>m6�Ac���Y�M�� ���JX\�4�B�a�D҇�#��IȦ��_b���I��/9�ް�\S�يI��䕍���X6�E*iO?�긖ێ+BU "W�qQ�b%'�H<��.9��A<��we�2�7�b�t����1�v�٪�o�A��[���`T�T�g�ܗ�w��7���a�����\�t3��eк���F��J�M�n��K�U347�MYd�_������,?>*�7��
�TN4+7�[A��&V��-�u`W�`Q��,��.n�'��U���`Q����$��4Ay��(��R�q]K�""��)�G�bg�1Q0�.Ey�*��5c�n4c���\@�8B�k�B��l #Lb]�"�p�mJ0*肢��d�P�!.�}!�W��3s|��EvSK    g��Zɭw34TO+ӯ7Ê!�P��<��F*T3=�^���2e�����z������jc�N��Z�����Z<�vk�H��ݷ!�[8u�{���X�<'�>g��+bb{����9����Z�ze�A0Ư����R(b���g�7}�ɡ&�Chl�e1�ȁ-@Z����R�]N�A�銚�'�?M� ���M��a����U��c�3���:u>�&6Eq"��.����gEh��w�� �R�t��ꊲ!�B�-k��Tn"�� 9}���m��$����7T�<�ZF�H�,x�ր�e˟P���, ��=JӜ��BK*<E^q��qS�ܹJ�-�`����V@�d�'FqT�Kq9���*Z��y(�����{���F��	�3�[��2�ɇH����@Fk$�ER����9 '�j�;��UVfݿ�v��e,�ȉդ�Y�5�I����q���TDdEXu�����׹���{׭4H��d<L�DÊA�T�,F���JS�a��ҔI�RUL\I��aQ� �U�ŏ%�`8s[P�<f`�3+qT�2FIL`��yyt9Gm)�ˤ��)Q��|�tA(���^|D���DM��#����,��c���h�-в٨��n���Ht� �=k{��U�6Y�F_�Q�
*7����3N����W�ȷ3�Wi��uF�Q�%}���|Y�ʕ�1B��v��OI2���K��'O[�ݺ}�`���.`��s�AE���<Js)�μ^gf�3���e���}�%�:�-�����"�8X�����8+�j�zu��p��:�o�<��5�
��% D����4#U�P(i�%����ǉA��/�6:aM�_��L���ϗ���\R	�������>.mg�OU�ܴ�Ė��j�`��yp��}�}q�>x�>x�>8v<�u������C��C��C�'.�/�^^���^G.+��x�P8�tō�#�W���4�A�]R��4����sbr(�Q�;��%8�=DCj��c^>��9{�JM�FA��n���T�Je�+����%�o��JMǓ+�	�U�'�F�����e�����;�^.��7�+�
�-�h����4�]\)kZ��h\G�J& ���4��  }pI�F���&pL��r�*j
]���!�P�8FO!S��"Z�eݥH�=�8kD�����h�)����C
fz��3"�_��d��9����.urL���Xc���
5���s��UF(���YqKP�/9�W(|��%��I�5K�lYy�i�.F/�#�zH�������*%���P�9f��V��2����'F:;��J	�L$px�a��Q9�p	̢�b�S�D,:�bXGO�jZG��tn�9��5� ������*�0I3�AS�*���:�ү�����:&�Ni�<%�|��o��YA��G��^�֍sqh|t�߼�{j��x����)N��>�g��(��͢-&��J24o�N(�L3)Y��P)�f���$�,�>��{�`l���*��	t��^�q�9>�\�]���lEI�֨�)Ȟ�s.v7ׅ����ieOf��R .�.��ח!*�Y�/��|�e���c��R��W�Βy��IH�n�x�Wu|jf^h�Cn�G#Y�vh>�����B-_��4�	�d�:�@�ty�P3"�6��	�\k�>@i���84F�Q����I�./�g�w��E��՜��oF�۵���w�sFh�b���(By����zL 
��;��)�e��'�#��S�#��:*��1Et�Q��;M��m��P��GJJ[{Ϲ"������q�'���.�6`|���WLa��2+��RY2cD-	�}� w�w]k��9����4�q�
5�~��4�53-j�HF`�P@C_Ut|���,�sQt,�����?;���}��bv˹��b=�� �iG��}R
�7D1m���8I��ގ�����C�8(�3����'��q���
m"�	�8�L�7�� �A�a�HsOFHK��﮼����/%��Ҩ��5�������Q����#��i��j�V�m+X�qBr������vxp���r��S�#nNA;��7F����^g���|�q�0��'uʁ�i)�2���u`�x7G��]1md����!6�4�ȼ�e�rY)^�>ɸ���W��&��v5��x���D�V�����E�Si O3�4R_�àV�b*p��+��<!�]��0
�qR��,6�ԙ�ߙN7��;�cI�f��	[(�J�wuR�!�J!|b�e��;�䟞Ҝ��eQ �`��H��Id\G<��_z�Ɓ�UJ~W\�Pᩬ,�$�����3�a�=�W�B�Jj��pcF�8��f "Di#�:wj\-�@d�N?�B�q4!c�S��斥EA٬g�_��S^�W�j�����ܹ�'�Ĥ8�흢�Y���9�EP���;E�A��\���#�#�^Rd����f������x|�'Κ�o��s=��y�`���$�:1��	���P��Ysjz�lc��Q��	�!�h�WK\�!�7>Q r�Zp�wSh���LiT<QJ�u��eT�U��NSLz��� :_����;TO�l�bz��V�	u]ME�D����x���X�	��^�f��!<5�J�9�R�0p�	���J�)��%�[�?���9ƪXP��p69�x·�x�����fk˅���{k�W[xH��҉�-
�!�LA�j.��*]a�$�iM���q�*�� �5���d>���܈��(sTY� rV�Ģ1Jڤ���XUI��Ld��!��^�qc��ؾ�@ �צ�GXs�|���X9L$�d7��$tCT�J�l���Axs@m3Y~���Y<b,�`l5%�`Fa��ؐȓ\
;��T�;#�H?�ڠ�A�p-Jm4~I���f��)N�-L��oј���KC�d��۽�I�fQ��T�+zR�C]���L)�z\��%�Fh���a��d1͍ؔ�Y��pOo.1ZD8P-�Ǚ[�h?|[�;�;>����oLc���F'��C�`�x�'�4���-����8�I�F��=z����R��r5E�G�TA��7�>A"��MOz�
�VA�e�8#�m�C7/=���?R��
l�#��J�:b�+�mI���"!ՏSӉtQ��>��F�A(܂���[�	1��O�!��#� ��T�Cd�D�(5q;���L��f�<��<w��
4
K��f�F�N��9�n.�L����sR�,{Ko}*.#%^b��LL� ����qȐE����0tyP�o'�BЍA��4r!e��n���43K3��0.T��,�W�('��1,X�6���������&��_���*���� �/J��*�����+���P2���^�B,����-�B��ݽ|�870/Y1I�_�)�A3/�䤜Ɵ����y�Do���[���P��yUQ�
�ar�Yo���'x�Ww�2��!U0M��Q����L��;q�%͊�މ'��3�a�!�)A��!���Yj�U��i>��}dp���=M��<��Wqny�����3�ׁA�^s��s��9���Ry�5J�A���3�����������a���o��EN���z�v�FmfKO��/9aˊm�r�-��-�c`��/�b�fW4�
q��	�����\Ϣ��Io�M��f��g�֩P��I;l��e��ˤ�|.�{#��1�
e	ʖ��uf��uişo.�`�Tg�9�N�!�z<�4�z�,�T�,��|�9~ŅpWL�U��T�K���'�y`c>_�1מ�7�����K�T���<6��N���u��l��+6\��L�N�Vf�0�s�ڹX�+cm�u'�
�\UB�����ع,�R�c�C3&(0�v�V.�(�ri�F.Q�$r*7ng����V�h��n:�����o�̧[����(�A��ݠ��nޠ?㔮�繥��ƣ׆�Ә�~���=Knwn��Y�3�>����]�Ҋ=}�i���`�
#�_���B!�oX+     u�'%1�I�Sj�4�ā�9���t��B�u�y��3��i����e�i�g�b(�m�R�Y����^#�6k(prB��n��u�_i$P���^xax���W�B:s�6��Xf�f؋�(�6+��#�jn�i3p=����L>�6Cx�%��9�}̥������
X�|�u�����{9�Zc�N�R��.MK�N�<����� !u�V�|��������oX�e�7���Z�$�� ���	��zo��J p���w̿1*?m��8��b���l�[�D?��e'z����y�F�lZn,=���V�����̕
؅�J����d���,��m�ê��W���Əl�q��G����f盟I���4�
Q�1�K�śה�����
���9�����B��z?��K��A�����ϊ�9מqq�����|������=�w|K��oL
7��gs�;?�Dps�`���&���_�Ao$�=�(�e�к���ߟ���+i��N���J�u�u`e�C+� Oo�[�=Ck�Ceͱ��ۈ�9���,!K�c/�����~�c����)q(���l��b'�>{~sr�^�߽=��=�/��BÂ�}�]���L{I@����O!�y�6p�pXu�S7�x=�����Z�*��Be�g[�M%��'N�+FZ>�y�2a
�_[D�[��ɧ�R���p��RL+(� Y�B�-��g�Aȱ>-���)`@�b��q"��P���0W��U��t����)�էN�I��6�"K��B���	L(�k��kڷ[T��>O�8i��q�N	QZ�� ��T۩\��<�/�y����C�W����׃烇�4��� ��%�mg�`�����c]�Y�<�~(��I����i�,���{����x�~�xs�dmu�8Y�9MK�T���4���y�>- K�(S��i�O�o�I��(9�MG �8!�U�{��$�/3��;�<��88|�,��3���U ��D�s5�2�����3�DF�(V� W�3!�X�)�[��9�D��	e��
�]撢)���ja��7��>��,:3���߷c�:�q8�S Ɣ��.ىY��@^{vc�9��c��Os�D�i���N��E3��K�xq|� �4|vR"�l��!Vv�9CiP;���@�#�@ a��S�3 ���kR�s->(����m����	@���R5teEn]���H>p���c�N�׏bo��p~;Po�9���6�\1MuK"�Y����5)��_�r�g��0*���$�(�	ځT4���Y�zH�Z����(��t�' �!����t]@_���Â�r%�<�����P�K�Q�0�BXHv���a^^����&ΨH6k�fa}z���k�f��]B��2
���_�y*w%N @�X�0������NCl4�tj�ܚv�7䍠�t ���l|9�o��a��Y�0��q]J,*9I\��#F��/Ec�yy����P�V�' [���K��
�b�I�T^���y�2j���uu0���7�@VR� 2U�b�� ��A���ө ��#M>n��^
y}�>{_˷��IVD��)���>��^����Z����0�'�9��(�=1�Xs���&5b8`i>U@4������	�̶�Y�>4�����
K�|Ru���C,d�+���JM��
���Hf4ź�9a��� 9v�8~�Mr�u8����e�Rb�h�~��4`��
\d�A$c�k�_���Ҝ��d�%tB��q�5p=���t5����`R��bD]Aɰ�� /S��,�8�@����o)5�k��3�#6�Xz���a	�]K58D��>�(��~ލ�8�l��Ѿke�^j���q,彪j���l�����y	�2G�
fq�B�ǉq���h��7�֞�S��â$0i:� �g���)��N�h����U����2l [��O�k+p� L-��F�8�9�f`�f���_4(#���R��RhM�ƾ�y�e7�wjT�6tz�WP�c��b��Ml$�E<U쪧��>P%�<��Q<��9�{��LV�R:�s 85�k���#�y\9Z*���2��)&֮��b,F��6��{s/�����G'�Z��X�f;yf�����pMx�W�y!2F1L2"�U&�X'�k�g���d�9z?� ��8��d�X>�c�|�PY)��*���0(�+�o%�E ZS$�׋�У-�:�ձ�HU@��4}C?d8�j̬Z( x����X�e�	���S�a�)�:l�ّ+����%���Y+��m���+݊������؛��&��s/� ��X����H�F�@�2�#c'V�{��͍+q{T�@�*?2�<e]qR���⣖���\�c��񽸿��N�W��@���¬8�?��<<"遳�o������gG��qp)�a��!�]�A� ���tU	O
�o��q�o�奔�aid���ц��o�댻�M�+�(u�5�l�?(X_w����5��Κ8�\��,|��P;�`L�1$kA��ȃ��t��M�e����!�j�P�+��b�4B��������BA���C��̈́����+$,�D�r���{�����!+f��1� �ҡ�,�cr^����lx-A8���c�����������U��,����+�JQ���+f�kΗ�	Ǔ��Ҝ��94_7��f�Ԁ�iKa�j&(���ZU.�:�F,���������9��CS��a:��˫�j��,e��5}��KYT���*�#�i3�T��:���1��+�d��)���oé���Hk �����[z�R0��Z�AL؟��̓{zÃ�cvp�p����Mz�D�jyy=R��!ͤ>�f��M�tCX���!�5AgI��v^�'B�(�1�C�S���Ֆ�JjrJ@L���B�mA/�M�HH�H����r��V��S�n�B���g�����S�P��Na`/�I���+pE��<w
��e�M��%C!��E�q�a3�HN|��F��_�Z`��T#Z�Rk��U�Ud�U���ߍ�t.F�P�����m��}�]��>��q��Y3k2�_�T�_�l�����֥�����k
"�j�zhhũ ��T��� �t�-u@K�.�[��5�}©,�����~�S����T^%������II��!b)X���x�͹����0�N�h��itRg�
�h���� r���V[6lf�:�K��K�VuI�N
�E�ٛ'��Rȟa��X&��+�5.F5�@��|�CVL`��ˤ;ܟ3�S�y!�l�ZP���6#I(DT���Q��2�D�����¿B�D��*�7��w�B����? !�o<��~�5�C5���=�m�(�����1�g��]=�ƑI	,r	�QMv����	i��a�����(��Wf��t�U7������u�^Fx���&��uj���-C��JUS�C�ۍ7QI��XZ.�ZNPz|�m�?�A��S�/�()v��(s�y�\YDM�j���쉪��Fq�,��g)j�=4a�s�82����������$  ���I���H�Wc� �U�h����X�˶�9Y���6F_dɄ2d˸�!~4x��g���~�0D��ަw�ū��dY��j�Ȇ��6�V��U�$?\w�6s߯�ڛ��#n�n�ZE ��Q=�Q��w�3�;e9��o4�����+�Ǩ�w,��c��L�}2�tX��<�BV�?\��]aAa(�k)��M	bIf�laӜѨ�M#6�S���H���X�)T�̀��F���!��,���.���ѷ�?�,�9$F�C���d��˅+��PB��3L&�/-�]���L|�b�k�N٬�J`o�J�$�z=��ict���Cz�Yϧ&��l�"N�R�d�X�!\�6N�1vx�R�,Bឆڮ��6��&��+J=�d��2�q��TPniʡl��H MgYZ��`%�%    F�46
	C��,s2�����LR=HV��`	+}��Q���c� &CM�Z*p����0i�w)��ƕ��"ŭ�*#v7��&d&tCRt��ٹ��	r4t��[5��{��.���r�"2!�'?hM��zj �j���y��KG��5����P�� B5��ĕ�B�4��7p�@
��Z�H�x��Ǆ�3,P����&xN��QaEM����J]R��
O��Zl���`Y��V`�4���
���[���	l��Xc9
6��陘��-2����4��|��oc\Y�S�S��ŏ�z38*U
75l��`o���*#�<pP^�%Wfe�2O,g+&���n=��A���%�1֗MؽP3}%��_�[%�(��!�s�\w8���V=�D/aH7�r����
�5�$2a��+?�A`�&|���	�@8����hC@\
�E����"����?���X|��p��Dn�P8C�^���X)��C&�N)~����}[{�=Z�zF)����x�
e���{\���Yᰀ?W��T|"�QI��x�K����o���~�����y��=^�Nn��B���SS����z��v�Ǝw�SY�IP�Y,5��U�!!VZ ���ЀI�R�8��<�dF<B(�Id�e�+��O1���\�z���[��	ǋ�z[��J�{yl�~��N�cq��0���T���L�9f^�2qE�bo�eh=�-�g�W��}�-~�Ŵ �6��<�$+���
>���OQ�<�BKA�*x���|� ������zd����Jl��8�!�3����/=�M���A�k
u�3��B��p�%A�> �K�H>]� �(�L��֊��ȹaH�k���S0�>��޶� tH [ _�g4[��;0l���B��C����21U�X<�8��ŏ;x��4N*�c ��s@�|h���8l�Jt.���%#�?\�}\�D5���>�%(��7�Z-� ����,�ks ^�~�BёX�����ݨBzb��e(s��(����>����/߂i�g�&(���@�2�V�%#�K?�n�׹PfXn�0�{�ۤC�E�Y1BU��Ԙ�Z/�+�C,��Z�f�C"!�\;�)�!ށ$�~x`���PH�D�΁�����f5l�ɍ�hM�g=�ٲ�P+Q��3G��hT֟�k��7�h���r��#�N�-�W�`T!p2�Z���IC��t\ �2x*3V�����������~%w�YJ�2�l�9]�t�f����$�I������:�%��V!;�r�4}��&�i�񩄋�dQA_%c������`h	������]X�����,�G�jN��͞��#�?0��kх= ����� 3x�o�e�����>h `� �U!�a[(�w3����w2�:����]�L�z�C��	��7%�]��A$���jf��w�͔_�>���,z��9�qU����;F����ۀ��K4合&P�؊*"
�H�y�]�C�m}<�#����z��Q�&AЫ$P���C�D�f^&��1ZH�8�!�o�
�Ud�`W� f�q�跡�|�� �n���bV����9q�D�,�o�G���~r�A ��t� M���^�T��MV�7������?���h��{��ؗ�g5����xK����P�"�j��Z�l������?�o�tnQ2��>��$+�j\�q��a��8�;t�}��M��^�>�?lrWʁ*6�>�
9 0<��ca�x̀�p1Q-��YV�a�G�:+�����Mj�ctS oK�dX2���8�N�`�?�m�2����` YC��'�U���ʎֈQ[&q����R����Z��2�I,7�&2ę���#���AvC��C0K"�|�\��K�^[=���|R�#T=��`"�p�
�{ �8�u�7 �R��4g��e�~%�\�L�.��o`b�˫<{�ټ�O�� �FZ�yTH��$�?b������Kѐ�͓)�"eu��)�IW8J)L��)��v~��"&ﺪZ�/����$���AdRՂ�BJOf�Ƥ(�&�e�d�`Ѿ�������Y�{F��@�oL���Ly}z�T�T�^�`k�� �Zcl_r�h���\:d�A=E.q<+` ���)�^- N|	ˠW۶-C��h���~n(?�g3Z!+ԫe�b�i�+�3�M�f������hMsŪu$�(&�¸`��1�N���Mf\��O�$�.�F_���_y`pq�hI�*.5 7!TnŞ��0����o\�U@ʯQ�0�[m����/8I��"9 �Ƨ�p	��i2��:��キ�x����8�"��f��ь=0���@��m�(`o0h��&�G�-���3
Uέ]?�L]  �A�82���iB6Y:s��1q��
W���r��T�l��kMV}8w�_=��R�Y=Þ���P+-�G�G���S�&��<O&�dj?��+�v����q�f�>� h�uQ�l����JΎ�M�q�923
O��PC�Ȥ�7*����"ō�Άr5���>3�z��c�����5hC�ſ���3WI+�f�!Ρ��'��'��M�+�}cϞ,���S^��s�s�r?����ELr������& 7��«�8�B�a� ��|��A]L�xT(�����0
��ݪ��iY@��N�<����4��'$I� ��F�r��J�������A0��Q�')�:�����Њ�n�<	�L�1��yj�Ǒ{dɌ���T�؉͖�Tt�%\�<y0-ڠHq��-J�T��q�i�&�GQ���M]�O���*�T�b\�*2���������tT�#�9��E\�Vp�ʹ��x�akZ�X�����v��w�Q	�����r;��
y����@�?G߂�
�Q��_���4Jf��_�O[�(K��N�rP�R�O���ō�.%�8cK�!�k7^O�r�2�*��8�*�Ij]
I�x-G1�)&����OJ���e��Z��il�2��X�ȀnK��b-0MS����0��t��nNژIC!D4�u^ �DMC�M������V|X䊪m��^�e���
���U�9�"Zj�#P��%���V2h�`�&�6�53Wָ�,�6���
�Y&X����6E�u���Dٔ���$_� I�:a�B�29M�X� �|��_�����LeۛD��J��aT;S$^b~")���»����:'�*F��y��̘a�6���w�Y~'�P�}J��x�OBzV������B����YB]�_xl�~�VCmW��@|8��}�-f�>
/6��4���QkZ�����'V*ȋ.���=�7�Z����� ��[p=:�S�O����:\��=4�����
'�x7#��װ��M�IC>B,Dj.���iX�@�;	q��ʂ1�u�k����<z���⊣l�
q�H�Qx����SY�8�B��30'ZEF	� �C���W���P�$7G��o�T�8F�@��dT�R``HV���M_r����i@��V+��`N�|����ʻ���A��9��fK��.R'�
�����S|�&<�f��4�=��72w)o3n�q��&A��J߁��mA�hI0�ښ|zX{�+�'}��6Q8�!�P�%�l$���Zi��
6���bɒHb:П$ӈeB��ֵ��1��$��\�*�)�(�v��:ۑp�j��Z�RN�-m���Y��J̔�\��1�V�� �f�*��'����G��-X`L�$K,�$��F�-�ȿd�zq���u�
�2�D%�,���Zk g4�a
�Hn��k�
6����g��E�G�3)ϲ�
�d��r!!�o�V��0�X�@*8�r�PD�(����ڣ�]1"��ͯ�"�M(�i�94&����w��#�S/��c���ɲhR��E�h΅�Z�z�������@Q��&zI�Q"�%I�؜-.�    gQ�\������,�#�%�܍n^��+��5I��2���#��@r ��c H*!���@���=r�����]�ob�6�k~��a��v"J�rQ�' {&*��� �o?c�s�TI1GBaI��H�[#u�����i�;�x�l�h�� c���&l2�8ɩ�[�Z|��vĀ���������E��ܼ�`��8o��1T�0$�%A+Q�)�����,�Z�d�<G܊"Ṇh�bX-�����o�h�'!������I�#e-yЏ��+p��o�.No�7'�o��7��������P�d˗���Mt~q{v���f�ݻ�S������
���hn�wS��,���<��qñ�����1^[j#���8F\r���tXs�`�Ps2)��$�/�.C��I�-@�F#jE�oNnn@������j��[M�-4v�0Y�Ͷ��jв��4�k��t�Y����%;"i��������]d�$5�0]���_+�:���y�VqN�N)�eC�!�y_s�_b���B�E-z_�P�dڱ"�������>��>�Vq�/��<���*2DY\�8lە�,=	����'$,r�XA�n����q���X�����lw<h�(�K�������e*S-sKݝ����@�[ �V�y�9cx���,�58�I�i��G���'�'����݊Y���o�Q��M�Q��D�p�)��+wQn?i{��$�[�� &2� �X<X4q�%D��Y~h)<^�O�|��K�JzB��[�{s�{�D�)�fŀ/aMqBrx�o��j<t�S!���7T8�ڂ���Nt�����j���M�lէ����^��ǫ�&��<����Q���I|�z\�H(q�H3i��Mx�bFO��x'"qCe�n3V2{걗��C$s��ۛ'�q����Ցw�@�⿋�륬��p�m�Ů�2�п���t`�URkR��e������~�7����q�_�L��/w��lJq�l�$�� ����ݍ��RH�.5�Cкd���l�X-����Wx�+����$�5�Os(�O�*(@����(#$�Dp��Q��������=�av�?��@�̗��߲���?�/'���ګ�߿Z;R�.8�ӯ2eč7�4���L
��.�bl)	g������D�$�A�81���R�)6�Ho�@�@{�M�==��K|9 h�U3���#7ɤ�bɿ��Il���i6�';�%Y�����˘� ����	�}S��g$D�ʍ�8'3q��
%11�L�DWu���` ���"�SIY������4mL�5¥JA9]o�5�hN!�Bm�׼hB^Ǚ�ڲ�1�����O��6h+cSD@�����m��KO��>z�C���QȮN0�c4/1x��{{4�X1�vp�o$��i��}�L�Y{�����U<_Sy.1�� ��Rq";n�U�S���|svr���u�������x^����f@Sp |6��3��_���JS&�&���!���)y?��^�䦊g���Eۅ�z���I�SZ����~p˝��/���\���2�����s����H�����n��L�:H#��Q�������ڰ�1��Ƕ|��1n�Z��O�nV�t[�K�:Np��躛N�U_��@u���)ʡ�V#꜠��Bbs�g�!w�a���kٻ����p��������L )���-�8	4��b`��#��d���',k�r�^_��/�tq�h��2'�8�P���3�q�ynGA��x;���XG���i6y�����J�ɵ�ҢJs��lG@m�tc̻��_�i��bT��+OjBh�M,9逯�¦)Er���
���0 k9^|A�C�L��BQ�pC	�������G*���ˊc}fr�%��^���O�Ȟ��Ӗ��1�*3�_�e��ɱ�k2�;k�m�1P���v�ƹ!�>Ba������?+�W|58�O ے�y������7�%���X�|��M���e]�(���\rs{����������K�d7�z���餈.�ϯ,��T��Y��1�T7��M��ug&D�&�$)�r��˧�(�߬1y��F��lʳ�쮞M�ȉ8�� ��*� ���`�:�wR��ċ��<�$+�6�~�N#g����9 �J��Aβk�v�C:�y�J"�g�\�u��Hs ѱ�g��ӕG�ڕKD���"����'I5*S�҄B��Ò����bQ�˪Fx'�Q�\]��1�h4��$_䄗̈;�{���+E�o	����/�g�W���P���
	��N�5fù����C�����ӎBWh�	�R�Y�U�8�է��I^̩����3ȟ��&�A��iI���3|� �
f�\jT����M�W��o��Bk&�k�8S+ܠP)�05b������ v�bF�+k�����Y���`ӆ�; ��X:B��b`�j�"~�=T���U�h�����X!��+6d�<�s)Ŝ��>�*��@��:�o6hI��
,�82��l(0��z����E�e:e�^�a�!�۬qДڦӴ�?�%�Q-UD��=D�,Sߎ5ƹ�%�U�@J�?�����~׎=@�e*=\�Di�X���>h��.,d��i�Qcdѣ���q<�=&�k���s7Ԧ�ڕ�?���"�_���B�Ŧ��f�����n�M6F�t���h�d���*��j�t��.�i��O�`�TZN?��Y�☃'+�냔+!9p~[g��]�l�?p�RAK�4�C�����_�k�!�.�@ے�1�2�樂�� ��Y�l]<�k|�DЬϻ��=N�Ŭ�NT����`
���3��ˮQ,�\�:�r.�ڻ"/27�ȷI����3��g�1<��д�i����eaH�^\~T�-冃�$�~��AU��!�v[:Z5	�O�i�֝6�Cڀ�ǈ*��(���D#��v��HJ�vWEx�~H�3�H��F�a|��H�RF|�U�T�&ކ�h�ޓ�f�$Q�=��I��0�t�g5��a�.ﺓw�w��dDT7R ��6�\�C�M�i�	�@O�DSL��i�yS�vb�mjMVޚo �ܔ����ُ�B�}1��M�&I�v}�@�&p���Y���Y:�~ I	"/���< ^C��pW��#�����t��KqI��+���++!�5˭K�J,�n�嬣Nj�xiJ0��9�l}�؟����3�_`�:���j�(5=��V{G�V�I]��zyG��Pk�_�+�!��6}��>>7�����A���8Jh(�!~)���"J��3f����6��B=u����%f)�>�
���%:��(iy�aC3��5�6x<���� Z%~6��'��j��=$R�����!�ޛ�0I�ˠT/޸.T���Y� )�xK
�r&��j �\<�u6	5ꅛ��Юk�;��`�3���vq="(�8׭OP2��6N7qe.R<�s�%�f�R'�ҏ��$��ͩ d�PS�c�`[��i)��<�F�ĆcFo����F��������-�·�4s��I����]��I�c(���ð�t�c�b��"ԛ�[���)I*�E��.��w��0��nª[��t��)�����d�F)���J����R�$=o'�R����~��97k߆#q��M:!��a�Ă��̴>D�D|�1��N�ߟ_]�9�b����v9h�����X3K�8U��f<�:��:�k��Pw��f@6/+�>�b(qb�V�y8ȚN�#HR569-��%=w�j?.�3���h0c
����������+j��v�>b1*�<k�}��K��G�r3�6l�n�ܚ�����9�oN��ȃ�k�ȕ�������`��:<=��B�7���Ĩ�^"e�B�z��`�B-cSv Z��=�W��G�܌Z���� ���.)&�&�ɤ��#��9�x���'�»da$����Ä&ѓ}���W3�閦3�yv�u���m�)jv�q���+n��Ĳ_    �!��,z�K�r�?[����)��r�Ż��3&�)��_��o�9��k-Ou[J�`�ŏ��,��T�6|�!�n��� g���8:i��sm�����F����b��c�?���t���|�C��iG�㘫!���'�
�4sRVLX��Y;W�{��%�ڤ� URCm�������o'�1�l����r�� 6<'T㎦�Ǯ۰cǨF�fx��� :F�r������_�vv��_��o�샳Os�3��w����̒��QE�X9���Pԩ�	F�q��I"f��?�(��*�±�omA�!1�V|����������� j����\Xj ��
�觭�{l�rO�Y�h�v����"Uz�eȟ�Ӭ���x@��A�5[w��[�-u8��&U�rјkP�����f�CW�풅B;��T�F�?��~<� i����3���rt����x�z�����#��
D:��=�c=�(d��1�������J5�H2Jݥ9Kw��}���NT�HkP�^��:�����m��)��.�P�Ɓ�rۭ�G��=����۴-��N������By���&j�H�����q�am�f��Wڹ��R��e��N�1z�ڊ�D�)3Y�FϿ^>~9���Z\{�����]��}�=��yH�\����N6:�_�Y2�Z��hֽMZ�!MA�FyTq&�����/��1�x�Aq�� -`H�5僴�)L���B�mc@��LК��868	c�֑�%6^�RBQ�t�T�ر*
c�CL��+&a"m8|�^�u�]CM�� � ��ΰ��R��+�s�������kgR���Q�u&��
_�B9bA?Ma���MlԢ�n�V����L��*D�䩙i��r���}�+�O� �lOWE�,�f:Z"wQ���TLE��e��r�����%��f頚�x%�Bh|�c��~� �Գm	hN�ZEgh݀��΋�AZ: �2-�vNﲣ�v� ���-v��B�v3��'�U4�b)-
R��H�}~� �`iW��i�$���\����\�9�8��m����[�"қ���G����Hy?�L����ʎX�k�f ��#8����+�w�^����΀��G��F~���ǡW��	g2s��U��m���3<k	������������OQ��;�g��DFZ����Z*��ɚ2��)S��gcA���D6O@�$8
��9,{�e���u���s�z.�G���ax����1w�c%�l�f�6�=��)k1y7\8Yc����X�j�{Z�����ԍ�G�,� '{�i���N�FާǢ�-���"�Z,�#�CSC�nT�sI��h���?�Ǚ~B�+"��@�2��"ru,�.� �����K����wi�l!���-�2����������ޮ��o}���'��1���(�̠O��vؙ菟�)���ݶ`y�0ad��<���N����(8��
N��!<��R�%��j1ؗ�1X�a;�ĝC����n�E"�/����ZO���m�X{�vx��ѮjV�F�-����p�PI[�X�¨�&�c`�����ۿ�E����?��dsaWqu/�W�}�Ŕ��@�����4�!�y��b���xyjUUJ�R�_��9��v��Tm��B�L�&_�@�#�R�w5��L\���(�Ƀ޹��7����B�+J
8��4��Ko�X���οm����ɀ`y�,��5�Iu�AdK@%O�}L1�_%���3ve`ƺ��M��zߖ�N�ۛM�]�Q^�&��l��P9���'a@��5UG3���yd��ho�U:���!�6ǣm,�E�AT�b ��A��A
`�#�ےͫ27�������ۉ'�*i�GR���g-���L`�$۪)�ʰ5M�zPL��$j�F6G�r�X@J��;�O�1�&<��C]��gl���h�Bj�p׆��y��"d颪�`���r���K�0�ť�[P��ọu%����Ł�WpJ
�'�b��^�V�T����!L�P+K�KTM ˁh��pmZ��B��ќ��RD��Hk%K~�`;W���7�	0X7���D|7�T6��Z�ܷ~��"������,�b�����k`rTV�����[7�Τ�)�����c�u���Ն��Yphfĝ��~��[w��G��7janTڧ����-Ĺiq�@���m9'��o�x��x�_nT^�������yw�Z^�c�L�|1+r@4�Eh����mb��&�Yi.y ��Oc�a����kOK+�6WS��259��}��ikC�%�쟟ܞ_^D�h�qތ����[���3i<klS�2`�w{Ώ��"h�HH�4�s���8��/~�����0��-u7��X�ҀLeu���x�a�B�=,~��bdة����hBM_�+�4�>�F�yF�.�jPh��&ˣ���������O���`0��,��ɣv������yUO��o�P�ȷ(�]_��yj��R*:��	�G��O��や^�_��\�o�6A�,���F��,.R5��Aڀ���Ӽ/�6i��>��5�]����ʦ�HD�CN1�T���fGJ�������}}�B-n���[)}�w���-��4�6!�0Ɛ��Wۭ�!��7���20G�6�]��P'��4>X�i��4�n�-%�A�E��9�˥��1�`��
�`��/�J���<�\Ef�����K�XFwC�"���s���AC�������TN��3�T/~ԁa��@����������o��.���j� ᮚ-Ili���``���a_0��RhPU`��RYU-�����&TCxT#�Jl�i�IRXt�у1���ȗӴ��ɤy���+@l}i���Z����xN0s��ִ��a2"V{<F�˂�21�V���T�{�_�J���mg�0��;���6���
�^;(�2汥(�.(L�5�t�R�b��0���m��S�E �gdD��q�}��@�p��>;X��W����ؘ9�ب�I|K�	V7�a�:����J5Xb�1TohY��N[e��9j�����~L+?����2P���t$�����Qp�rE����)��=xY%ߛ�[%�WQ>�)�dj�#�u��EK2m��}Ý��t�V�5�شG�v(�����%,ØeD0Ɩ����|W�w����]"�\$�7 Cۿ8�����Tzņuý}��}�=x�n�%V�7��g�o�V�¦��{���m�u�B7�Z��ۭ�x�C"q2^>�j&Ä騗�'����*c���u�IN�d\���t����MCҖ6,6lO=�3$�y׈������F�ڰ|�o�yC2B�sl�J��ia
�kо��6QX�2�O˩b[)���4Y4̋j(�mЙ�[ꖴ�V�CZfq��Ak�F�j�$X�7˞��5n9���p��c��W�͚�5|������g�G���]����ã��������Q������B/'�~$�P�����Y�����M> z�TX ��6�Ç�|������S�9��l�3��G<t�ߟ]����aw��������hi�N/ߞ�_��ỷ��"�����/�//�O��㗜�Hz��]��ɿz��Y�?�zח�����g�}�Я��	��|�Oo�/΢��������u��ws{}r����7O#1>��L���w�ѥx������{��^�.n�]{��v�����a/zvh|v�}����A�y>h=��� ~�����~�X��o�j�^�~�f��M����Z� ���}?��o���6��R[q������v��[�fi>��
�<�Rv�+,��:���	O!��7�,o�Ip�f/�Qˣl �8��In�H�h{���A�-t�Bko��{s�g�-�q�-t��ri
l��mn��Hn���2Ȇ��&��f��!%��w��Zy�����*q�;\�����~�Ȓ	4�mI���H~Z�yS���i6/^]���'4�}(��'J?�}�lwO�RQt������&8k=kb�=�����b�>�UCv�ET��L�T�em�    ��bf�]}�ֆ*�
k���<[�����c;گ�~��1��X�3��"���W%�y2��h^ ��v�v����*�ci͓��R=��0?�G=w('&��$.�IO�=��#!��S�&%V�U.�$h���s��µ�1�,�2dYzN��U�F�t�J�������w��\�9������_m���+�d�5$���q��q�K�m��`��v<�ױ��(���#��W�ٚ�6;�]�N5AC۔�-l9]q�X3XNI��z���0�y�<��r�<˸<vI	�$[���6�XX�Jz��z��O����a9�ӧ�
�l��)�h$ѫoQ�GW1������6�CH@I�0��f[�]��\�4+��fJ��N�n^�Ff*o�*���,���YfWq	�s��JIi�'z7�wl�:���.w
��:r�@Ğv �� �]����t��	�g���nC\V꒎׾��4ԭpP+�'�uc��6'� ��9�T��`�"��O> T����_䡶���a�>���U4�d]m'��B�ɂ`��W���$ ��L�@gPg �C�@��)�NEO �[�Q�N�B[rG����\a�_�Զ �7T捠�0�	�2�za&&�ĎW��r8A�7��Yt��I�-B@c�f"�E�ׂ�����7]	�C����8��(+6o�xʝ�(;/��7��&��o�!����B���v�X�	1s���6u|^�q�\Ӡ�c5�����O��3-�^��;b�c-1��T΍ʏԂ��-O�*AW2�#�"Z��>���4z�-:q�b��s��ʭ��ym7
��UpU�n��Q��S��{��w3�G�@ 0v���aY���o0܉_���:gB݀,�8QH��P{�A⽸C��s)>�
,��]a��zf��4� ���J߷���F]��6��`��J� ���Ɓ#�����Ыb��q���ڰ�3 ������6����
 A��i@R�г�^̔z��E-_9�q2M!4��5��, S�d��I,yND���a�U���!��c�ÿFH����4�VB��AvZUv��m�2$*1�.%<�ɿ"*�%ؠ;@~���3hݕ��e_e��.彪�����u([���;,��~:0:��l�p�%k8�0���*��C3��ױe7_��u������>}�(Y�26.ۣ�f�����ױ�aE�,x9B	�(���3a*mXM��ْ�r//Q~�9��z6OŎ�1�ڪ	ܔ���_5���J]���i45���I�Y��Hl�o�g�f�I�k����N��?	��m�d�>}7u� W8M>�y�'[�P5��V��6�U"���̤�r`6����?7un#��6ך��a�ll��5�Eu�I�.����x�c���0t���N�{�D=Y��MJ{�:+���_&E^�6W+ǐ�-���&\-3�`�����P��U��Z���8hɊ�J��p�j�Ų��I�:6ŀ�qD�L���-����avIݫ���C:�h�%e�ܧWis����L�Ͷz,<�8�����C�����!6Wv���	S��/�A�c.���ʑnaM@���Wq��3̮�^������9���jZv"�Y�	����вg�@H]1p���^�"�6�KKR�}lul �g���@���F�3��j^����2���b�(�
�#���g�<�9<;]�H�����ׂ"ת��kj`;g������"��oC�!���	5�4�45��:�����F�^[ 3�mu�T�6�o{��)�3��,=�i�8v!#�M4J�C��)BTn���Вƻ0Q�[�t�SE3dU���rG�ϚC['���]��J��o_rE� �5��9�=e��}��mB0O��<!�mp�^/Q���S����/e�A[w�x�J:�喷��9��).<���/�cc:�����Zl��m��|p�ϛ���@��E/7�}���cU]�T�lpF�94�Gլ��$2C�YN��vq����N<r���"��t#oms�=<�#5ō8���qo3T�-5��P��)XӲ(Ƌ/�T9�$�ێ�|�ҾS~@�:Tc�Q�DvӸo�u`N��yl`��>N�u�x�m
�U6Bg1�Y?g� oҭ���7R ���r�2ۖ���0c����R�6H����4�I����W�K�j�P=��N���;�7�E�<�v�C=��k6�.�~᜞�������ʝmc��#�o�}�@Pq��~���Yɭ��J24
��e���(9$p����LgƢN��t��7����^G�&���R��d�e��x~^o;�?�j8X6_�Gb���,	BA?	X��1f�HW�:!(
j�K�>��Q�����&%�8�K�u�Wә�ەԽ��8IQc��ES�@�o���;��İ��{�뼄	����ۊM=���)|����=��zŪ��N���Ql�>�*�(+���E�W2�@)�N�lٟ4Y_y��=unӁ�[M�u�YlE4�gKN��7*��͘�A�'��7�G�7DU�vy�h*���Bf>f�9u�˺��$�s��um:[��Bo��Zz�-�rZ_W�Jvm�vlG������K*�
|�=Fr�#�w�p�&������q��,��2�8�����옆�U�N��ؑ�6���V�#(B]z�
sB%H��D��A�����;k�)Ӳ�K�6�EH��بw#s�#��ݖ(��NLH'z�u��/K�ftk=�?�I!����lj43K�c�����n�dc�_n���r����T��'e��5��ũ)�Q��L�R*{��_[�ƿ�Ԛ��t����:il[�m�[i��J��V�/�``����� fĭ�j�	�܁]6&���
um)���Y���VRBv�lY~����b�PID�L��]�\33~��)RZ�[���a����aSD�׏��B�6%�E�T3_g":��-����1d	^߆Ӧ�m����]q��O7��G2;�������]�𮥶מo�P�
�"�9K0� >��)�\�������Ewi5B��M��=�V��J�Rv�2`Qj������5K�)�=���̊(͓?Ջ/��T$�'��$����-�4����.t�y:��:g*�L�j�����?NǦ5,4]��N�+���y�#d�ht01*�*�d���Q`K��T!]�t!'��M��!����\����,�.�]]��'�bYF1AQU����+�k-Ou[*���?�kTU��9�) k�8�����h<�ם�r�l��G'�97�����Pn�"�K����� ����2#׊���k���<�J'j���P�R�o�=�N����0YL5�/�Ɨ�}��G��l{���i+Jw�*z}򝬪z���v�04���ڣ�)�'{xV��+��3c�Ϸ:
�J�����q&�mы�>�c�?�I5�c0S��W��$�{�gp���4U>�J���T"�D��Kd�=2��e�Y��n��3s��?����8\��6��h�TLS����$�3v?�"�`��⋸�F|M�z
�!]$�������# �����o�8�\t4��������i�d����e~�=�>PZ�0��3��;p#`�&�V4��1�|mS9O�������OS�;���t&>(���}���ڥ���y��0�W�<%�$(��y�"QŹ��4M�i�1�J?�Mm�ms&/3˸i��jiN��r�ya�	��.��(�h|P���R��?��3d�f�ԅ�w�g3�>U1(���	_R[cIn�}:�뚆e���hp�U)y��fi�f��I� ���M�E�u]�fk�j���޿��$�a���m�A�Q�L8�}p�c����ۿ1;0
�7BK�YNಡ�5٭��ˋ�o��r�wf�� �Ɯ����x��+�/����3Ҽe��ݵ�p>��*��P��vA R�(���B��ӵF�J�D�M��ĞX�{����V�&���5������0���4�k�cl�[O���ղ4���}�3;�|eM���^J�=_F�@��#��p��u7    ��HYF8��[�^鼲�4��^��}XdR�'�
�7Mu�eye�4��|������#���9�l;`��#J �J�����?��ǈ�%�xv�9�ׯ�$�'�4�뇆��g��hb�%�b!�	%u�.~��*�ؚ`MP�,�B߁���%fT�N4)>�%��Kh$��u(S��0�{)�	{X]����
r6$��C�� ���I9߉����~��+S��?v�p����#����K����`ϥcϥcϥcϥc����}�R��R��R��R��R��R��R������������v�v�v�v�N�K؁KǁKǁK�s���.�]:��t<wg�K�swƞ��>w)=t	;t	;t	;t	;t	;t	;t	;t	;�s��ȥ�ȥ��%��%��%��%��%��%��%�K�w�^���p�x�v�������Kw>^�t�t�x���ҝ��.a/�	z�R�ҥ��K�K�K�K�K�K�K�K�K�K�K���wݎwwݞw}f�s{��{�~�c�����8�����������e�.<pŁ{�^�ݺ�������cw�]J��)9v��cw���:v��c��;vo�c��;vo�c��:v��c�����k#���O���Iś�I�������p����+��a�w1�R ���R(g9���4�"xY2W���x qw�=���	;<h��S���C�D�ܲQ#j�̬�wW��_��=�G�0w䞎#W�;r���{��}{���#��������G��>r7�{ҏܝ}�
sG�V?r����Տܭ~�r�#O�;p�=t�l�nk>�Lh������jpK�����oL<�
�f�yR�TyFP;���m�b���o��ݹ���Q�2����b���Sz��Y�[ X�3n�
K@�i~dz�Ĭ���PL��(�ԁ�p':����$�	���� m�Ft��I�7���}�[P^�
Ч�mm�&�fy:�5'����$��l��|9�<5���x�_�K4�sj9��C��5��[ܶ��;��,@g7�;��@�.!�P��Q��i���Ό�{����|���us�y�I��C��iZ��C|6���_��JGm�H�]�OR���!u_�r_d�I�bu���o1O��u�d�c��EOV{�e���jth���La'z��ʈp��OL�w����y�J��+��"��˖"�;��V�?�����h C5� ��S� �@��`XN&FeZ��=����U�z�=@�B	d�. ܙx,���b��c�}�W)2`�X�b��?� =Nd`]�4ˊ�Φ{�.���;H�����/~ȊI\�Y	#b��ࠇ��/_b�����V�F݈���dF31p�z��|�%]�x~�<l�H)!�+39g�VN3&�8vr�p�˱��S0��n�@pT�jѕqR)��{#x�� �S0���%��M���0�n��F�mGU|$.�1�w�B��|�C.�>d1a**��*��� �bb��NtU�!��NA��-����0c�`�>#��ˌBn���ܪ�E����c���+��ps6�*�((O��E>%O��m�b&��`-� ����8��3��#��8�a���I!RF�ºn��0����F,�;g��"3z����� OsBf���*w����A�q&�a�BFw�QL�=ȃFl���X<�D�uoӃ�@�D�e�[�ÛԮ�h+��]���Wa��
6��e�}�.p�G���LU�����q��@F�!�ਔ��w�c
�M�`��t�Zﴆ͟�v�s�(܆p�O����/SO�!?�2�)8�H؝,�掀	O>����}��g.'���<�W'C83�Z���QS��!
��#c3���Nϙ|��Of�M�;�p[��z��O.�o��(�9X��5BJ�E �#bm⮥ n����n��WF�� o�F��ߚ
��튅�X�X�A9O���>�c��)F�������[�{abqېȸ�ȠԹ������|�O�jd~*�������)�'p3%6��3��G���A��-� >]�PE@�0�B�b��>B�0�qِ���
�frd�@#��E|T��T\2^K���&��W��Nk�&�`
Y�b�����,�ܓs����)G�+�?�{1+�Ô�����um�B�̻xw~eŽ�_����M#�[XY<���lU
�Z$?�	�v�*�z����R�`"�I�Y�T�'�ૌ���U���~*��(����v~�
�2%�Fh.�@:�&����X�7	lgd-�"� �p�7_�ߢ�����dh�OaK��Zzǐ�1�b���LA�QeT|�H$��q9�@XBͷ���N��WP��m��C�4��G7h�A������H��,Bu�1F"�+�*�(!V��d�Hj|� �����*�	�`a��.ى?�fB�x;8����U��
�R���t�+9�a���lxS8�����P�5�X�I9oT����e��8��wbr�H��K���JG�R���]����/�C3�Q��S�<�������Q����vkr�ͧ��/W5���j�x��\)��؎��e�6iX)��Pdpk�$�,&���������$4�6%�'��%G��6��L���;b:�r�HԖ�ȁ�aY<�_��_:3uj²t�Bu�R��8c<�x���~����f���\[>+~�H���GUT\�q�*4��Z��5��vx�}�m.�f!hgP��ͼ����J��{F�O��C=m_؂;�V*���8���A�ٻ:�=�I'V~4O�6�3��ps`H�z8m%�	�?�H  �����ʹ7��08���8��ȿ��젱"��+�O�b�!�^��1%�
�v,�$ ���H�I~�q�)����Z���Uh��^^��9�Pl
Γ�8s�o҅�&U[|�T:�m� p'.&�2�+29����ڒj��W�I�@I�f2Cs��N8R��Ȱ%r%�KV".gZ��E�I��@;L`������Wj��30�T��Z%�p�Ì�M�(�}蟨N���-g<����u�_Jź!Z����f9�ז*�3O��^���t#�FnH��)�8�\�R�b;�+i#���q�-]�]��~�Ĉ"A8�!`.=)GoJk�D:�8���n&���C�N~����C�.�1F�ˍ(�$��Nb�!��ݪ��
��uĥ��֪�d!�W��/�sC2niM�V���X��j��ڌ����ɕ ���N���X;�	�_B��X��Ili�?CM��������%��h��� �$AkY��4K��(ڲD�KZ��QtpIaPo����0�;:�(��TP���iLB�K��B�	�n��Q�J:�}��g7q�֌Pf]�]�0F4�d��_/���ۿ!g���pma��I��4IGO�6P��d����+����,�=��uW�c��� qb��b���m�mr���E�1��~;�f��^EL��a�qB���v��R��sp[N`�a�=N����d<N�����J�+F^��y ��$��I����s�2V>+����1Ia�9c�~�+������5i>h��-Y"\��_�!��A�!;�ŦI!*����S��b㲆�>Dú���Hx����9u&�}��*��K9Ηh�۷��(�8��$���Q��`p��a����>�~���U�WͿ�ٕK�g�.�,�L�bK���UsTs?��<�_|A$6	��9+(ζ�Ѕ���YN�o~f��d}���4/��@}�a�@�ܮ��|+�	����t8�V�A[^�Rh� ��@Y�R��R�	�B���{�d�YTE�?&U�!d�Z&Cu�W���W�B�����*���W�\+����a��JF(��O㶨��lf\&O�?9������X���fG��vV[��L�0`y�&��P��� ��S��,U^����'�4E0�+�j�yu�U�[�%Fw	+��fJ����[~U����vi�]`�i� ;  3+r�k����fIdϒ)m���+E��Jo�sv@�d���>@�eX!�ٍ�챶�sW~�P� �Y��^��Q�*��$ܾFxZj�6Ǹ�A�"��
p"���g>�� 6����K4��l^���?�O(��xn�����?D.њ�I�f���_�Φ��&91&�2�`<�wDd�3�S���������Y�ʍ��7�S%~7�J�7�E׻
pP{��k��؃�@�K���T~��=p�>x��ݐ��.�Ͽ�4w#��%��!��|��\�:ߡ�n�/z�J��ҥ�e��ؐ�c�����#S����n��إk�BPPMa��_KE�gWB���ĝ��n��ۀQ��j���t-쒫]�d�W 롃mZMh<0e��[5H!�7��O,�Ds���u���p���%%�@w����^�A�ߚ!
-�^�-cv��Xⴷ
�C��R�N�qOF+�S��.Ϯ/N�<5E��!��M-:i�h%<\9�Cl;)BIiЛ>R�����`]iԳ4A��ZT���Q�j8����w�w���l� �;|�|����������ϝ�����?&�      �0   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      �0   �  x��Z�n�8>�O����)��Ǭ7m�m� ?=0h�VXH�@IF���������v8�)Q����[Z#���͌r�-U�Z�����B��2�]�l����J�\o�nW\�Thη\��6�R�2g�f�b�G�J#Pf��x��~|������*7�o�r���o��K�$�:zx[�J-U�����?_=<,�v�݀6�a�`r��o�;�=�{��m�d�ҾMi�� Y��A�4��U<������o�o�l�5�u�e
F�{�]1w 8&]ޖ�ZW,�V�����zV!A�Y��N��n���t>e���x�'�x����\��0�;}оuG�}�l���>��&OO�oC%?��
Q�T�F�T)xY%~в
����'�� 7��\���m��>	��lY+뀆c�R��Hl�o+���w��Ȓ�"�@Q�aR���4F(��ǁ�ȏ��UVl����i����fZ�.�˂e�R�6��g��T���=A$��w�kN>i#_��Yn#�}fp,�L��8��5�g��ΛB(0�6{t�'�I*e�����M���>��L����<:�s�/���l�Q���������;fŁFq����4 �Ua�!��S���dЈ�ܗ�s*H�|xҵ���	'�HxP^�DUC޵��Mv�0@�*���n�,���3�xIQ����[�O?���Z�%�/r�p%���Ď�{Y��	V���!��8���g�3ƾd�%�0@�
a8�Z�B�g��#���$�V$��`Əh1f�����c~�e3�
N�M�����fK`p�$}��I�0)�3|8�gt���������&����ke�	�#�_ǥj��̂�k��pV%#r�rԲ`��a�I�P$g�����[0��t&m�MI�4�����ɑ�d�Mf�/������o?������j��Awd�b�c&l�y��DǶ�i�D�o�����n��]f�RGƞe�2&0��g�,;,�]M����u��}2M�e�U#rZ6f��W:�/���b�XW-��,�W]'[�<�1*e,�zaj�Mxg�^x�0h���:�f&�� J�7��sݓhI������ ��P��a���_�
�h{����� k����Y�A��dێ�&��z�kr�� ޫ��9�]z��x��<�㊂9����p�@K0��6�ѓ̉��y&�;�\�wnoz�)���r�0�J�B�.��_�3�J������[�5�����"ΣA��)6�)�Y�.uf�^G$���i#:�Ȥ��w�K���t��i�'��P��%�������r�!H�׶|�* +���W�Yى���a���J7�ϖ	^�-(^~K�׸q��Գ�e�,�x{|��p��::�"I)�`���#�}�A�J!R��9H��U�Q>G��豩5"��O8�mr�IQ?�b��߁_1�Ps6�U��'?}<Yn�s�����Og��1Jz�A�f�'D�Ef� 2Xs�}�o6�p�O�<d�5�S]�:����N\����JKm�t��2#K$����h���'#/�0���,Z���͂�T
M��B�:1�1U�������?�Ko�F�����iL\��)~������Q��y�!�����.}��	�l�?����m��Gm����f�����HTv
Cdԕ�$0LZ�����]
C�*�; )a�3�U���>�%�p���ϘH:z4r�s���9g; �$xivG���Q�8Ov�;fQ��c?7���a��y:<Ȱ�ч==f��1�;Ǹ��j:�v��-,�eV\D�$naw��-���Y<�\Xo��fe
�m���\���O ��$*�O��&�?.gT�6���-�tiD�%����@k���ω�$7�\����ݧM�3�S��,�|�����O�'�)	�1Q���ƓW��%�q�iI�(Jp���r���k����7j��b�Z���w�      �0   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     