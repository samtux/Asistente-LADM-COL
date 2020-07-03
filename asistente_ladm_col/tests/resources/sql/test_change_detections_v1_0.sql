PGDMP         3                x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   {=           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            |=           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            }=           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ~=           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    740823    test_change_detections    SCHEMA     &   CREATE SCHEMA test_change_detections;
 $   DROP SCHEMA test_change_detections;
             postgres    false            �
           1259    740824    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_change_detections.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE test_change_detections.t_ili2db_seq;
       test_change_detections       postgres    false    8            �
           1259    740860    cc_metodooperacion    TABLE     [  CREATE TABLE test_change_detections.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 6   DROP TABLE test_change_detections.cc_metodooperacion;
       test_change_detections         postgres    false    2732    8            =           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_change_detections.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_change_detections       postgres    false    2737            �=           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     {  COMMENT ON COLUMN test_change_detections.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_change_detections       postgres    false    2737            �=           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_change_detections.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_change_detections       postgres    false    2737            �=           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_change_detections.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_change_detections       postgres    false    2737            �=           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_change_detections       postgres    false    2737                       1259    741972    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_change_detections.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_change_detections.ci_forma_presentacion_codigo;
       test_change_detections         postgres    false    2732    8            5           1259    742179    col_areatipo    TABLE     �  CREATE TABLE test_change_detections.col_areatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_change_detections.col_areatipo;
       test_change_detections         postgres    false    2732    8            �
           1259    740867    col_areavalor    TABLE     �  CREATE TABLE test_change_detections.col_areavalor (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_change_detections.col_areavalor;
       test_change_detections         postgres    false    2732    8            �=           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_change_detections       postgres    false    2738            �=           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_change_detections       postgres    false    2738            �=           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     P  COMMENT ON COLUMN test_change_detections.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_change_detections       postgres    false    2738            �=           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     ~   COMMENT ON COLUMN test_change_detections.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_change_detections       postgres    false    2738            �=           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     y   COMMENT ON COLUMN test_change_detections.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_change_detections       postgres    false    2738            �=           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_change_detections       postgres    false    2738            �=           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_change_detections       postgres    false    2738            �
           1259    741136    col_baunitcomointeresado    TABLE     3  CREATE TABLE test_change_detections.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 <   DROP TABLE test_change_detections.col_baunitcomointeresado;
       test_change_detections         postgres    false    2732    8            �
           1259    741045    col_baunitfuente    TABLE     �   CREATE TABLE test_change_detections.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 4   DROP TABLE test_change_detections.col_baunitfuente;
       test_change_detections         postgres    false    2732    8            �
           1259    741060    col_cclfuente    TABLE     �   CREATE TABLE test_change_detections.col_cclfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 1   DROP TABLE test_change_detections.col_cclfuente;
       test_change_detections         postgres    false    2732    8            �
           1259    741100    col_clfuente    TABLE     �   CREATE TABLE test_change_detections.col_clfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 0   DROP TABLE test_change_detections.col_clfuente;
       test_change_detections         postgres    false    2732    8            3           1259    742161    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_change_detections.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.col_contenidoniveltipo;
       test_change_detections         postgres    false    2732    8                        1259    741990    col_dimensiontipo    TABLE     �  CREATE TABLE test_change_detections.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_change_detections.col_dimensiontipo;
       test_change_detections         postgres    false    2732    8            -           1259    742107    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_change_detections.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_change_detections.col_estadodisponibilidadtipo;
       test_change_detections         postgres    false    2732    8            N           1259    742404    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_change_detections.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.col_estadoredserviciostipo;
       test_change_detections         postgres    false    2732    8            6           1259    742188    col_estructuratipo    TABLE     �  CREATE TABLE test_change_detections.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_change_detections.col_estructuratipo;
       test_change_detections         postgres    false    2732    8            9           1259    742215    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_change_detections.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_change_detections.col_fuenteadministrativatipo;
       test_change_detections         postgres    false    2732    8            #           1259    742017    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_change_detections.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.col_fuenteespacialtipo;
       test_change_detections         postgres    false    2732    8            (           1259    742062    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_change_detections.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_change_detections.col_grupointeresadotipo;
       test_change_detections         postgres    false    2732    8            ,           1259    742098    col_interpolaciontipo    TABLE     �  CREATE TABLE test_change_detections.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_change_detections.col_interpolaciontipo;
       test_change_detections         postgres    false    2732    8                       1259    741891    col_iso19125_tipo    TABLE     �  CREATE TABLE test_change_detections.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_change_detections.col_iso19125_tipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741079 
   col_masccl    TABLE     e  CREATE TABLE test_change_detections.col_masccl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 .   DROP TABLE test_change_detections.col_masccl;
       test_change_detections         postgres    false    2732    8            �
           1259    741117 	   col_mascl    TABLE     G  CREATE TABLE test_change_detections.col_mascl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 -   DROP TABLE test_change_detections.col_mascl;
       test_change_detections         postgres    false    2732    8            �
           1259    741068    col_menosccl    TABLE     q  CREATE TABLE test_change_detections.col_menosccl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 0   DROP TABLE test_change_detections.col_menosccl;
       test_change_detections         postgres    false    2732    8            �
           1259    741107    col_menoscl    TABLE     Q  CREATE TABLE test_change_detections.col_menoscl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 /   DROP TABLE test_change_detections.col_menoscl;
       test_change_detections         postgres    false    2732    8            P           1259    742422    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_change_detections.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_change_detections.col_metodoproducciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741163    col_miembros    TABLE     +  CREATE TABLE test_change_detections.col_miembros (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 0   DROP TABLE test_change_detections.col_miembros;
       test_change_detections         postgres    false    2732    8            �
           1259    741090    col_puntoccl    TABLE     ;  CREATE TABLE test_change_detections.col_puntoccl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    ccl bigint NOT NULL
);
 0   DROP TABLE test_change_detections.col_puntoccl;
       test_change_detections         postgres    false    2732    8            �
           1259    741127    col_puntocl    TABLE     !  CREATE TABLE test_change_detections.col_puntocl (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 /   DROP TABLE test_change_detections.col_puntocl;
       test_change_detections         postgres    false    2732    8            �
           1259    741024    col_puntofuente    TABLE     J  CREATE TABLE test_change_detections.col_puntofuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 3   DROP TABLE test_change_detections.col_puntofuente;
       test_change_detections         postgres    false    2732    8                       1259    741846    col_puntotipo    TABLE     �  CREATE TABLE test_change_detections.col_puntotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_change_detections.col_puntotipo;
       test_change_detections         postgres    false    2732    8            )           1259    742071    col_redserviciostipo    TABLE     �  CREATE TABLE test_change_detections.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_change_detections.col_redserviciostipo;
       test_change_detections         postgres    false    2732    8            ;           1259    742233    col_registrotipo    TABLE     �  CREATE TABLE test_change_detections.col_registrotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_change_detections.col_registrotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741009    col_relacionfuente    TABLE     �   CREATE TABLE test_change_detections.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 6   DROP TABLE test_change_detections.col_relacionfuente;
       test_change_detections         postgres    false    2732    8            �
           1259    741053    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_change_detections.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 ?   DROP TABLE test_change_detections.col_relacionfuenteuespacial;
       test_change_detections         postgres    false    2732    8            /           1259    742125    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_change_detections.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.col_relacionsuperficietipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741145    col_responsablefuente    TABLE     ?  CREATE TABLE test_change_detections.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 9   DROP TABLE test_change_detections.col_responsablefuente;
       test_change_detections         postgres    false    2732    8            �
           1259    740989    col_rrrfuente    TABLE       CREATE TABLE test_change_detections.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 1   DROP TABLE test_change_detections.col_rrrfuente;
       test_change_detections         postgres    false    2732    8            �
           1259    741154    col_topografofuente    TABLE     5  CREATE TABLE test_change_detections.col_topografofuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 7   DROP TABLE test_change_detections.col_topografofuente;
       test_change_detections         postgres    false    2732    8            �
           1259    740910    col_transformacion    TABLE     �  CREATE TABLE test_change_detections.col_transformacion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 6   DROP TABLE test_change_detections.col_transformacion;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_change_detections.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_change_detections       postgres    false    2741            �=           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_change_detections       postgres    false    2741            �=           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_change_detections       postgres    false    2741            �=           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_change_detections       postgres    false    2741            �=           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_change_detections       postgres    false    2741            �
           1259    740998    col_uebaunit    TABLE     V  CREATE TABLE test_change_detections.col_uebaunit (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    baunit bigint NOT NULL
);
 0   DROP TABLE test_change_detections.col_uebaunit;
       test_change_detections         postgres    false    2732    8            �
           1259    741034    col_uefuente    TABLE     _  CREATE TABLE test_change_detections.col_uefuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    fuente_espacial bigint NOT NULL
);
 0   DROP TABLE test_change_detections.col_uefuente;
       test_change_detections         postgres    false    2732    8            �
           1259    740979    col_ueuegrupo    TABLE     G  CREATE TABLE test_change_detections.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_construccion bigint,
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint
);
 1   DROP TABLE test_change_detections.col_ueuegrupo;
       test_change_detections         postgres    false    2732    8                       1259    741900 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_change_detections.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_change_detections.col_unidadadministrativabasicatipo;
       test_change_detections         postgres    false    2732    8                       1259    741945    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_change_detections.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.col_unidadedificaciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741016    col_unidadfuente    TABLE       CREATE TABLE test_change_detections.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 4   DROP TABLE test_change_detections.col_unidadfuente;
       test_change_detections         postgres    false    2732    8            F           1259    742332    col_volumentipo    TABLE     �  CREATE TABLE test_change_detections.col_volumentipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_change_detections.col_volumentipo;
       test_change_detections         postgres    false    2732    8            �
           1259    740968    col_volumenvalor    TABLE       CREATE TABLE test_change_detections.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 4   DROP TABLE test_change_detections.col_volumenvalor;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_change_detections.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_change_detections       postgres    false    2747            �=           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     n   COMMENT ON COLUMN test_change_detections.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_change_detections       postgres    false    2747            �=           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_change_detections       postgres    false    2747            �=           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_change_detections       postgres    false    2747            �=           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_change_detections       postgres    false    2747            �=           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_change_detections       postgres    false    2747            �=           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_change_detections.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_change_detections       postgres    false    2747            �
           1259    740956 
   extarchivo    TABLE       CREATE TABLE test_change_detections.extarchivo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_change_detections.extarchivo;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_change_detections.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_change_detections       postgres    false    2746            �=           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     z   COMMENT ON COLUMN test_change_detections.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_change_detections       postgres    false    2746            �=           0    0    COLUMN extarchivo.datos    COMMENT     a   COMMENT ON COLUMN test_change_detections.extarchivo.datos IS 'Datos que contiene el documento.';
            test_change_detections       postgres    false    2746            �=           0    0    COLUMN extarchivo.extraccion    COMMENT     q   COMMENT ON COLUMN test_change_detections.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_change_detections       postgres    false    2746            �=           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_change_detections       postgres    false    2746            �=           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     t   COMMENT ON COLUMN test_change_detections.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_change_detections       postgres    false    2746            �=           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_change_detections.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_change_detections       postgres    false    2746            �=           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_change_detections       postgres    false    2746            �=           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_change_detections       postgres    false    2746            �
           1259    740881    extdireccion    TABLE       CREATE TABLE test_change_detections.extdireccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_change_detections.extdireccion;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE extdireccion    COMMENT     v   COMMENT ON TABLE test_change_detections.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_change_detections       postgres    false    2739            �=           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_change_detections       postgres    false    2739            �=           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_change_detections       postgres    false    2739            �=           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_change_detections       postgres    false    2739            �=           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     g   COMMENT ON COLUMN test_change_detections.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_change_detections       postgres    false    2739            �=           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_change_detections       postgres    false    2739            �=           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_change_detections       postgres    false    2739            �=           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_change_detections       postgres    false    2739            K           1259    742377     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_change_detections.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_change_detections.extdireccion_clase_via_principal;
       test_change_detections         postgres    false    2732    8            .           1259    742116    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_change_detections.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.extdireccion_sector_ciudad;
       test_change_detections         postgres    false    2732    8                       1259    741864    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_change_detections.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.extdireccion_sector_predio;
       test_change_detections         postgres    false    2732    8            A           1259    742287    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_change_detections.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_change_detections.extdireccion_tipo_direccion;
       test_change_detections         postgres    false    2732    8            �
           1259    740938    extinteresado    TABLE     �  CREATE TABLE test_change_detections.extinteresado (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 1   DROP TABLE test_change_detections.extinteresado;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE extinteresado    COMMENT     w   COMMENT ON TABLE test_change_detections.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_change_detections       postgres    false    2744            �=           0    0    COLUMN extinteresado.nombre    COMMENT     d   COMMENT ON COLUMN test_change_detections.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_change_detections       postgres    false    2744            �=           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_change_detections.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_change_detections       postgres    false    2744            �=           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_change_detections.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_change_detections       postgres    false    2744            �=           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     z   COMMENT ON COLUMN test_change_detections.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_change_detections       postgres    false    2744            �=           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     q   COMMENT ON COLUMN test_change_detections.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_change_detections       postgres    false    2744            �
           1259    740950    extredserviciosfisica    TABLE     �   CREATE TABLE test_change_detections.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 9   DROP TABLE test_change_detections.extredserviciosfisica;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_change_detections.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_change_detections       postgres    false    2745            �=           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_change_detections.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_change_detections       postgres    false    2745            �
           1259    740923    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_change_detections.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 >   DROP TABLE test_change_detections.extunidadedificacionfisica;
       test_change_detections         postgres    false    2732    8            �=           0    0     TABLE extunidadedificacionfisica    COMMENT        COMMENT ON TABLE test_change_detections.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_change_detections       postgres    false    2742            �
           1259    740902    fraccion    TABLE     �  CREATE TABLE test_change_detections.fraccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 ,   DROP TABLE test_change_detections.fraccion;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_change_detections.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_change_detections       postgres    false    2740            �=           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_change_detections.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_change_detections       postgres    false    2740            �=           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_change_detections.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_change_detections       postgres    false    2740            �
           1259    741172 	   gc_barrio    TABLE     S  CREATE TABLE test_change_detections.gc_barrio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_change_detections.gc_barrio;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_change_detections       postgres    false    2769            �=           0    0    COLUMN gc_barrio.codigo    COMMENT     g   COMMENT ON COLUMN test_change_detections.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_change_detections       postgres    false    2769            �=           0    0    COLUMN gc_barrio.nombre    COMMENT     S   COMMENT ON COLUMN test_change_detections.gc_barrio.nombre IS 'Nombre del barrio.';
            test_change_detections       postgres    false    2769            �=           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_change_detections       postgres    false    2769            �=           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_change_detections       postgres    false    2769            �
           1259    741182 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_change_detections.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 E   DROP TABLE test_change_detections.gc_calificacionunidadconstruccion;
       test_change_detections         postgres    false    2732    8            �=           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_change_detections       postgres    false    2770            �=           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_change_detections       postgres    false    2770            �=           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_change_detections       postgres    false    2770            �=           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_change_detections       postgres    false    2770            �=           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_change_detections       postgres    false    2770            �
           1259    741192    gc_comisionesconstruccion    TABLE     *  CREATE TABLE test_change_detections.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 =   DROP TABLE test_change_detections.gc_comisionesconstruccion;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2771            �=           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2771            �=           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_change_detections       postgres    false    2771            �
           1259    741202    gc_comisionesterreno    TABLE     $  CREATE TABLE test_change_detections.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 8   DROP TABLE test_change_detections.gc_comisionesterreno;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2772            �=           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2772            �=           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_change_detections       postgres    false    2772            �
           1259    741212    gc_comisionesunidadconstruccion    TABLE     0  CREATE TABLE test_change_detections.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 C   DROP TABLE test_change_detections.gc_comisionesunidadconstruccion;
       test_change_detections         postgres    false    2732    8            �=           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2773            �=           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_change_detections       postgres    false    2773            �=           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_change_detections       postgres    false    2773            ?           1259    742269    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_change_detections.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.gc_condicionprediotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741222    gc_construccion    TABLE     U  CREATE TABLE test_change_detections.gc_construccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_change_detections.gc_construccion;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_change_detections       postgres    false    2774            �=           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_change_detections       postgres    false    2774            �=           0    0    COLUMN gc_construccion.etiqueta    COMMENT     f   COMMENT ON COLUMN test_change_detections.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_change_detections       postgres    false    2774            �=           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_change_detections       postgres    false    2774            �=           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     x   COMMENT ON COLUMN test_change_detections.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     }   COMMENT ON COLUMN test_change_detections.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     y   COMMENT ON COLUMN test_change_detections.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_change_detections       postgres    false    2774            �=           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     g   COMMENT ON COLUMN test_change_detections.gc_construccion.area_construida IS 'Área total construida.';
            test_change_detections       postgres    false    2774            �=           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_change_detections       postgres    false    2774            �
           1259    741360    gc_copropiedad    TABLE     �  CREATE TABLE test_change_detections.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 2   DROP TABLE test_change_detections.gc_copropiedad;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_change_detections       postgres    false    2788            �
           1259    741234    gc_datosphcondominio    TABLE     �  CREATE TABLE test_change_detections.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_change_detections.gc_datosphcondominio;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_change_detections       postgres    false    2775            �=           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2775            �=           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2775            �=           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2775            �=           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2775            �=           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_change_detections       postgres    false    2775            �=           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_change_detections       postgres    false    2775            �=           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_change_detections       postgres    false    2775            �
           1259    741241    gc_datostorreph    TABLE     �  CREATE TABLE test_change_detections.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_change_detections.gc_datostorreph;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_change_detections       postgres    false    2776            �=           0    0    COLUMN gc_datostorreph.torre    COMMENT     m   COMMENT ON COLUMN test_change_detections.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_change_detections       postgres    false    2776            �=           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     m   COMMENT ON COLUMN test_change_detections.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_change_detections       postgres    false    2776            �=           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT        COMMENT ON COLUMN test_change_detections.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_change_detections       postgres    false    2776            �=           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     l   COMMENT ON COLUMN test_change_detections.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_change_detections       postgres    false    2776            �=           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_change_detections       postgres    false    2776            �
           1259    741248    gc_direccion    TABLE     B  CREATE TABLE test_change_detections.gc_direccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 0   DROP TABLE test_change_detections.gc_direccion;
       test_change_detections         postgres    false    2732    8            �=           0    0    COLUMN gc_direccion.valor    COMMENT     j   COMMENT ON COLUMN test_change_detections.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_change_detections       postgres    false    2777            �=           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_change_detections       postgres    false    2777            �=           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_change_detections       postgres    false    2777            �=           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_change_detections       postgres    false    2777            �
           1259    741259    gc_estadopredio    TABLE     D  CREATE TABLE test_change_detections.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 3   DROP TABLE test_change_detections.gc_estadopredio;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_change_detections       postgres    false    2778            �=           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_change_detections       postgres    false    2778            �=           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_change_detections       postgres    false    2778            �=           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_change_detections       postgres    false    2778            �=           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_change_detections       postgres    false    2778            �
           1259    741266 
   gc_manzana    TABLE     ^  CREATE TABLE test_change_detections.gc_manzana (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 .   DROP TABLE test_change_detections.gc_manzana;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_change_detections       postgres    false    2779            �=           0    0    COLUMN gc_manzana.codigo    COMMENT     q   COMMENT ON COLUMN test_change_detections.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_change_detections       postgres    false    2779            �=           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     t   COMMENT ON COLUMN test_change_detections.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_change_detections       postgres    false    2779            �=           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_change_detections       postgres    false    2779            �=           0    0    COLUMN gc_manzana.geometria    COMMENT     k   COMMENT ON COLUMN test_change_detections.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_change_detections       postgres    false    2779            �
           1259    741276    gc_perimetro    TABLE     �  CREATE TABLE test_change_detections.gc_perimetro (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_change_detections.gc_perimetro;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_change_detections       postgres    false    2780            �=           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_change_detections       postgres    false    2780            �=           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_change_detections       postgres    false    2780            �=           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     y   COMMENT ON COLUMN test_change_detections.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_change_detections       postgres    false    2780            �=           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_change_detections       postgres    false    2780            �=           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     j   COMMENT ON COLUMN test_change_detections.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_change_detections       postgres    false    2780            �=           0    0    COLUMN gc_perimetro.geometria    COMMENT     g   COMMENT ON COLUMN test_change_detections.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_change_detections       postgres    false    2780            �
           1259    741349    gc_prediocatastro    TABLE     �  CREATE TABLE test_change_detections.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_change_detections.gc_prediocatastro;
       test_change_detections         postgres    false    2732    8            �=           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_change_detections       postgres    false    2787            �=           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_change_detections       postgres    false    2787            �=           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_change_detections.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_change_detections       postgres    false    2787            �=           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_change_detections.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_change_detections       postgres    false    2787            �=           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     N  COMMENT ON COLUMN test_change_detections.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_change_detections       postgres    false    2787            �=           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_change_detections       postgres    false    2787            �=           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_change_detections       postgres    false    2787            �=           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_change_detections       postgres    false    2787             >           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     y   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_change_detections       postgres    false    2787            >           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     M  COMMENT ON COLUMN test_change_detections.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_change_detections       postgres    false    2787            >           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_change_detections       postgres    false    2787            >           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     p   COMMENT ON COLUMN test_change_detections.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_change_detections       postgres    false    2787            �
           1259    741286    gc_propietario    TABLE     <  CREATE TABLE test_change_detections.gc_propietario (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_change_detections.gc_propietario;
       test_change_detections         postgres    false    2732    8            >           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_change_detections       postgres    false    2781            >           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_change_detections       postgres    false    2781            >           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_change_detections       postgres    false    2781            >           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_change_detections       postgres    false    2781            >           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     w   COMMENT ON COLUMN test_change_detections.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_change_detections       postgres    false    2781            	>           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     y   COMMENT ON COLUMN test_change_detections.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_change_detections       postgres    false    2781            
>           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     {   COMMENT ON COLUMN test_change_detections.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_change_detections       postgres    false    2781            >           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     }   COMMENT ON COLUMN test_change_detections.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_change_detections       postgres    false    2781            >           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_change_detections       postgres    false    2781            �
           1259    741296    gc_sectorrural    TABLE       CREATE TABLE test_change_detections.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 2   DROP TABLE test_change_detections.gc_sectorrural;
       test_change_detections         postgres    false    2732    8            >           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_change_detections       postgres    false    2782            >           0    0    COLUMN gc_sectorrural.codigo    COMMENT     {   COMMENT ON COLUMN test_change_detections.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_change_detections       postgres    false    2782            >           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_change_detections       postgres    false    2782            �
           1259    741306    gc_sectorurbano    TABLE       CREATE TABLE test_change_detections.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 3   DROP TABLE test_change_detections.gc_sectorurbano;
       test_change_detections         postgres    false    2732    8            >           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_change_detections       postgres    false    2783            >           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     |   COMMENT ON COLUMN test_change_detections.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_change_detections       postgres    false    2783            >           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_change_detections       postgres    false    2783            &           1259    742044    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_change_detections.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_change_detections.gc_sistemaprocedenciadatostipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741316 
   gc_terreno    TABLE     Z  CREATE TABLE test_change_detections.gc_terreno (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_change_detections.gc_terreno;
       test_change_detections         postgres    false    2732    8            >           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_change_detections       postgres    false    2784            >           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_change_detections       postgres    false    2784            >           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_change_detections       postgres    false    2784            >           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_change_detections       postgres    false    2784            >           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     v   COMMENT ON COLUMN test_change_detections.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_change_detections       postgres    false    2784            >           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_change_detections       postgres    false    2784            �
           1259    741327    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_change_detections.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_change_detections.gc_unidadconstruccion;
       test_change_detections         postgres    false    2732    8            >           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_change_detections       postgres    false    2785            >           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_change_detections       postgres    false    2785            >           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     v   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_change_detections       postgres    false    2785            >           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_change_detections       postgres    false    2785            >           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_change_detections       postgres    false    2785            >           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_change_detections       postgres    false    2785            >           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_change_detections       postgres    false    2785             >           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_change_detections       postgres    false    2785            !>           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_change_detections       postgres    false    2785            ">           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_change_detections       postgres    false    2785            #>           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_change_detections       postgres    false    2785            $>           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_change_detections       postgres    false    2785            %>           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_change_detections       postgres    false    2785            &>           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_change_detections       postgres    false    2785            '>           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_change_detections       postgres    false    2785            (>           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_change_detections       postgres    false    2785            )>           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_change_detections       postgres    false    2785                       1259    741918    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_change_detections.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.gc_unidadconstrucciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741339 	   gc_vereda    TABLE     ~  CREATE TABLE test_change_detections.gc_vereda (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_change_detections.gc_vereda;
       test_change_detections         postgres    false    2732    8            *>           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_change_detections.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_change_detections       postgres    false    2786            +>           0    0    COLUMN gc_vereda.codigo    COMMENT     o   COMMENT ON COLUMN test_change_detections.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_change_detections       postgres    false    2786            ,>           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     x   COMMENT ON COLUMN test_change_detections.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_change_detections       postgres    false    2786            ->           0    0    COLUMN gc_vereda.nombre    COMMENT     U   COMMENT ON COLUMN test_change_detections.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_change_detections       postgres    false    2786            .>           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_change_detections.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_change_detections       postgres    false    2786            />           0    0    COLUMN gc_vereda.geometria    COMMENT     b   COMMENT ON COLUMN test_change_detections.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_change_detections       postgres    false    2786            �
           1259    740837    gm_multisurface2d    TABLE     �   CREATE TABLE test_change_detections.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 5   DROP TABLE test_change_detections.gm_multisurface2d;
       test_change_detections         postgres    false    2732    8            �
           1259    740854    gm_multisurface3d    TABLE     �   CREATE TABLE test_change_detections.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 5   DROP TABLE test_change_detections.gm_multisurface3d;
       test_change_detections         postgres    false    2732    8            �
           1259    740826    gm_surface2dlistvalue    TABLE       CREATE TABLE test_change_detections.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 9   DROP TABLE test_change_detections.gm_surface2dlistvalue;
       test_change_detections         postgres    false    2732    8            �
           1259    740843    gm_surface3dlistvalue    TABLE       CREATE TABLE test_change_detections.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 9   DROP TABLE test_change_detections.gm_surface3dlistvalue;
       test_change_detections         postgres    false    2732    8            �
           1259    740929    imagen    TABLE     +  CREATE TABLE test_change_detections.imagen (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 *   DROP TABLE test_change_detections.imagen;
       test_change_detections         postgres    false    2732    8            0>           0    0    TABLE imagen    COMMENT     ^   COMMENT ON TABLE test_change_detections.imagen IS 'Referencia a una imagen mediante su url.';
            test_change_detections       postgres    false    2743            1>           0    0    COLUMN imagen.uri    COMMENT     L   COMMENT ON COLUMN test_change_detections.imagen.uri IS 'url de la imagen.';
            test_change_detections       postgres    false    2743            2>           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_change_detections.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_change_detections       postgres    false    2743            3>           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     k   COMMENT ON COLUMN test_change_detections.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_change_detections       postgres    false    2743            4>           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     `   COMMENT ON COLUMN test_change_detections.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_change_detections       postgres    false    2743                       1259    741963    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_change_detections.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.ini_emparejamientotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741434    ini_predioinsumos    TABLE     2  CREATE TABLE test_change_detections.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 5   DROP TABLE test_change_detections.ini_predioinsumos;
       test_change_detections         postgres    false    2732    8            5>           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_change_detections.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_change_detections       postgres    false    2796            6>           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_change_detections.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_change_detections       postgres    false    2796            7>           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     n   COMMENT ON COLUMN test_change_detections.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_change_detections       postgres    false    2796            =           1259    742251    lc_acuerdotipo    TABLE     �  CREATE TABLE test_change_detections.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_change_detections.lc_acuerdotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741446    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_change_detections.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 <   DROP TABLE test_change_detections.lc_agrupacioninteresados;
       test_change_detections         postgres    false    2732    8            8>           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_change_detections       postgres    false    2797            9>           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     }   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_change_detections       postgres    false    2797            :>           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     f   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_change_detections       postgres    false    2797            ;>           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2797            <>           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2797            =>           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2797            >>           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     m   COMMENT ON COLUMN test_change_detections.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2797            >           1259    742260    lc_anexotipo    TABLE     �  CREATE TABLE test_change_detections.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_change_detections.lc_anexotipo;
       test_change_detections         postgres    false    2732    8                       1259    741690    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_change_detections.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 ?   DROP TABLE test_change_detections.lc_calificacionconvencional;
       test_change_detections         postgres    false    2732    8            ?>           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_change_detections       postgres    false    2817            @>           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_change_detections       postgres    false    2817            A>           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_change_detections       postgres    false    2817                       1259    741699    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_change_detections.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 A   DROP TABLE test_change_detections.lc_calificacionnoconvencional;
       test_change_detections         postgres    false    2732    8            B>           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_change_detections       postgres    false    2818            C>           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_change_detections       postgres    false    2818            H           1259    742350    lc_calificartipo    TABLE     �  CREATE TABLE test_change_detections.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_change_detections.lc_calificartipo;
       test_change_detections         postgres    false    2732    8                       1259    741954    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_change_detections.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_change_detections.lc_categoriasuelotipo;
       test_change_detections         postgres    false    2732    8            L           1259    742386    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_change_detections.lc_clasecalificaciontipo;
       test_change_detections         postgres    false    2732    8            %           1259    742035    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_change_detections.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_change_detections.lc_clasesuelotipo;
       test_change_detections         postgres    false    2732    8            M           1259    742395    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_change_detections.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.lc_condicionprediotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741457    lc_construccion    TABLE     �  CREATE TABLE test_change_detections.lc_construccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_change_detections.lc_construccion;
       test_change_detections         postgres    false    2732    8            D>           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_change_detections       postgres    false    2798            E>           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_change_detections       postgres    false    2798            F>           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_change_detections       postgres    false    2798            G>           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_change_detections       postgres    false    2798            H>           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     x   COMMENT ON COLUMN test_change_detections.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_change_detections       postgres    false    2798            I>           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     }   COMMENT ON COLUMN test_change_detections.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_change_detections       postgres    false    2798            J>           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_change_detections       postgres    false    2798            K>           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_change_detections       postgres    false    2798            L>           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     {   COMMENT ON COLUMN test_change_detections.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_change_detections       postgres    false    2798            M>           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_change_detections       postgres    false    2798            N>           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     i   COMMENT ON COLUMN test_change_detections.lc_construccion.area_construccion IS 'Área total construida.';
            test_change_detections       postgres    false    2798            O>           0    0    COLUMN lc_construccion.altura    COMMENT     h   COMMENT ON COLUMN test_change_detections.lc_construccion.altura IS 'Altura total de la construcción.';
            test_change_detections       postgres    false    2798            P>           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     z   COMMENT ON COLUMN test_change_detections.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_change_detections       postgres    false    2798            Q>           0    0     COLUMN lc_construccion.dimension    COMMENT     `   COMMENT ON COLUMN test_change_detections.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_change_detections       postgres    false    2798            R>           0    0    COLUMN lc_construccion.etiqueta    COMMENT     {   COMMENT ON COLUMN test_change_detections.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_change_detections       postgres    false    2798            S>           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_change_detections       postgres    false    2798            T>           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_change_detections       postgres    false    2798            U>           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2798            V>           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2798            W>           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2798            X>           0    0    COLUMN lc_construccion.local_id    COMMENT     d   COMMENT ON COLUMN test_change_detections.lc_construccion.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2798            2           1259    742152    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_change_detections.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.lc_construccionplantatipo;
       test_change_detections         postgres    false    2732    8            J           1259    742368    lc_construcciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_change_detections.lc_construcciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741472    lc_contactovisita    TABLE     7  CREATE TABLE test_change_detections.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_change_detections.lc_contactovisita;
       test_change_detections         postgres    false    2732    8            Y>           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_change_detections       postgres    false    2799            Z>           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_change_detections       postgres    false    2799            [>           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_change_detections       postgres    false    2799            \>           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_change_detections       postgres    false    2799            ]>           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_change_detections       postgres    false    2799            ^>           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_change_detections       postgres    false    2799            _>           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_change_detections       postgres    false    2799            `>           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_change_detections       postgres    false    2799            a>           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_change_detections       postgres    false    2799            b>           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_change_detections       postgres    false    2799            c>           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_change_detections       postgres    false    2799                       1259    741708 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_change_detections.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 M   DROP TABLE test_change_detections.lc_datosadicionaleslevantamientocatastral;
       test_change_detections         postgres    false    2732    8            d>           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_change_detections       postgres    false    2819            e>           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_change_detections       postgres    false    2819            f>           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_change_detections       postgres    false    2819            g>           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_change_detections       postgres    false    2819            h>           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     e  COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_change_detections       postgres    false    2819            i>           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_change_detections       postgres    false    2819            j>           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_change_detections       postgres    false    2819            k>           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_change_detections       postgres    false    2819            l>           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_change_detections       postgres    false    2819            m>           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_change_detections       postgres    false    2819            n>           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_change_detections       postgres    false    2819            o>           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_change_detections       postgres    false    2819            p>           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_change_detections       postgres    false    2819            q>           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_change_detections       postgres    false    2819            r>           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_change_detections       postgres    false    2819            s>           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_change_detections       postgres    false    2819            t>           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_change_detections.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_change_detections       postgres    false    2819            �
           1259    741485    lc_datosphcondominio    TABLE       CREATE TABLE test_change_detections.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_change_detections.lc_datosphcondominio;
       test_change_detections         postgres    false    2732    8            u>           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_change_detections       postgres    false    2800            v>           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            w>           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            x>           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            y>           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            z>           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            {>           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_change_detections       postgres    false    2800            |>           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     {   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_change_detections       postgres    false    2800            }>           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_change_detections       postgres    false    2800            �
           1259    741493 
   lc_derecho    TABLE       CREATE TABLE test_change_detections.lc_derecho (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_change_detections.lc_derecho;
       test_change_detections         postgres    false    2732    8            ~>           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_change_detections       postgres    false    2801            >           0    0    COLUMN lc_derecho.tipo    COMMENT     V   COMMENT ON COLUMN test_change_detections.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_change_detections       postgres    false    2801            �>           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_change_detections.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_change_detections       postgres    false    2801            �>           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_change_detections       postgres    false    2801            �>           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_change_detections       postgres    false    2801            �>           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2801            �>           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2801            �>           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2801            �>           0    0    COLUMN lc_derecho.local_id    COMMENT     _   COMMENT ON COLUMN test_change_detections.lc_derecho.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2801            "           1259    742008    lc_derechotipo    TABLE     �  CREATE TABLE test_change_detections.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_change_detections.lc_derechotipo;
       test_change_detections         postgres    false    2732    8                       1259    741927    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_change_detections.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_change_detections.lc_destinacioneconomicatipo;
       test_change_detections         postgres    false    2732    8            E           1259    742323    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.lc_dominioconstrucciontipo;
       test_change_detections         postgres    false    2732    8            R           1259    742440    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.lc_estadoconservaciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741507    lc_estructuranovedadfmi    TABLE     (  CREATE TABLE test_change_detections.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 ;   DROP TABLE test_change_detections.lc_estructuranovedadfmi;
       test_change_detections         postgres    false    2732    8            �>           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_change_detections       postgres    false    2802            �
           1259    741514 !   lc_estructuranovedadnumeropredial    TABLE     @  CREATE TABLE test_change_detections.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 E   DROP TABLE test_change_detections.lc_estructuranovedadnumeropredial;
       test_change_detections         postgres    false    2732    8            �>           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_change_detections       postgres    false    2803                       1259    741855 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 R   DROP TABLE test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_change_detections         postgres    false    2732    8                       1259    741981    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.lc_fotoidentificaciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741522    lc_fuenteadministrativa    TABLE     2  CREATE TABLE test_change_detections.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 ;   DROP TABLE test_change_detections.lc_fuenteadministrativa;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_fuenteadministrativa    COMMENT     	  COMMENT ON TABLE test_change_detections.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_change_detections       postgres    false    2804            �>           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_change_detections       postgres    false    2804            �>           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_change_detections       postgres    false    2804            �>           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_change_detections       postgres    false    2804            �>           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_change_detections       postgres    false    2804            �>           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_change_detections       postgres    false    2804            �>           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_change_detections       postgres    false    2804            �>           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_change_detections       postgres    false    2804            �>           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2804            �>           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     l   COMMENT ON COLUMN test_change_detections.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2804            B           1259    742296    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_change_detections.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_change_detections.lc_fuenteadministrativatipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741535    lc_fuenteespacial    TABLE       CREATE TABLE test_change_detections.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_change_detections.lc_fuenteespacial;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_fuenteespacial    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_change_detections       postgres    false    2805            �>           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_change_detections       postgres    false    2805            �>           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     _   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_change_detections       postgres    false    2805            �>           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     q   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_change_detections       postgres    false    2805            �>           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     j   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_change_detections       postgres    false    2805            �>           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_change_detections       postgres    false    2805            �>           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_change_detections       postgres    false    2805            �>           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_change_detections       postgres    false    2805            �>           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2805            �>           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     f   COMMENT ON COLUMN test_change_detections.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2805            �
           1259    741548    lc_grupocalificacion    TABLE     �  CREATE TABLE test_change_detections.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 8   DROP TABLE test_change_detections.lc_grupocalificacion;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_change_detections       postgres    false    2806            �>           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_change_detections       postgres    false    2806            �>           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT        COMMENT ON COLUMN test_change_detections.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_change_detections       postgres    false    2806            �>           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     l   COMMENT ON COLUMN test_change_detections.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_change_detections       postgres    false    2806            !           1259    741999    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_change_detections.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_change_detections.lc_grupoetnicotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741558    lc_interesado    TABLE     C  CREATE TABLE test_change_detections.lc_interesado (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 1   DROP TABLE test_change_detections.lc_interesado;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_change_detections       postgres    false    2807            �>           0    0    COLUMN lc_interesado.tipo    COMMENT     c   COMMENT ON COLUMN test_change_detections.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_change_detections       postgres    false    2807            �>           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     p   COMMENT ON COLUMN test_change_detections.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_change_detections       postgres    false    2807            �>           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     x   COMMENT ON COLUMN test_change_detections.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_change_detections       postgres    false    2807            �>           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     p   COMMENT ON COLUMN test_change_detections.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_change_detections       postgres    false    2807            �>           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     r   COMMENT ON COLUMN test_change_detections.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_change_detections       postgres    false    2807            �>           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     t   COMMENT ON COLUMN test_change_detections.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_change_detections       postgres    false    2807            �>           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     v   COMMENT ON COLUMN test_change_detections.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_change_detections       postgres    false    2807            �>           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_change_detections       postgres    false    2807            �>           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     l   COMMENT ON COLUMN test_change_detections.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_change_detections       postgres    false    2807            �>           0    0    COLUMN lc_interesado.nombre    COMMENT     [   COMMENT ON COLUMN test_change_detections.lc_interesado.nombre IS 'Nombre del interesado.';
            test_change_detections       postgres    false    2807            �>           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2807            �>           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2807            �>           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2807            �>           0    0    COLUMN lc_interesado.local_id    COMMENT     b   COMMENT ON COLUMN test_change_detections.lc_interesado.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2807            �
           1259    741572    lc_interesadocontacto    TABLE     �  CREATE TABLE test_change_detections.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_change_detections.lc_interesadocontacto;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_interesadocontacto    COMMENT     n   COMMENT ON TABLE test_change_detections.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_change_detections       postgres    false    2808            �>           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     ~   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     ~   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     |   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_change_detections       postgres    false    2808            �>           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     }   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     w   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     q   COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_change_detections       postgres    false    2808            �>           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT        COMMENT ON COLUMN test_change_detections.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_change_detections       postgres    false    2808            7           1259    742197    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_change_detections.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_change_detections.lc_interesadodocumentotipo;
       test_change_detections         postgres    false    2732    8            *           1259    742080    lc_interesadotipo    TABLE     �  CREATE TABLE test_change_detections.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_change_detections.lc_interesadotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741583 
   lc_lindero    TABLE     �  CREATE TABLE test_change_detections.lc_lindero (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_change_detections.lc_lindero;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_change_detections       postgres    false    2809            �>           0    0    COLUMN lc_lindero.longitud    COMMENT     c   COMMENT ON COLUMN test_change_detections.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_change_detections       postgres    false    2809            �>           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_change_detections       postgres    false    2809            �>           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_change_detections       postgres    false    2809            �>           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2809            �>           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2809            �>           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2809            �>           0    0    COLUMN lc_lindero.local_id    COMMENT     _   COMMENT ON COLUMN test_change_detections.lc_lindero.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2809            �
           1259    741594    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_change_detections.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 9   DROP TABLE test_change_detections.lc_objetoconstruccion;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_objetoconstruccion    COMMENT        COMMENT ON TABLE test_change_detections.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_change_detections       postgres    false    2810            �>           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_change_detections       postgres    false    2810            �>           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     j   COMMENT ON COLUMN test_change_detections.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_change_detections       postgres    false    2810            Q           1259    742431    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.lc_objetoconstrucciontipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741603    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_change_detections.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 A   DROP TABLE test_change_detections.lc_ofertasmercadoinmobiliario;
       test_change_detections         postgres    false    2732    8            �>           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_change_detections       postgres    false    2811            �>           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT        COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_change_detections       postgres    false    2811            �>           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_change_detections       postgres    false    2811            �>           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_change_detections       postgres    false    2811            �>           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_change_detections       postgres    false    2811            �>           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_change_detections       postgres    false    2811                       1259    741909    lc_ofertatipo    TABLE     �  CREATE TABLE test_change_detections.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_change_detections.lc_ofertatipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741612 	   lc_predio    TABLE     :  CREATE TABLE test_change_detections.lc_predio (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_change_detections.lc_predio;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_predio    COMMENT     &  COMMENT ON TABLE test_change_detections.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     u   COMMENT ON COLUMN test_change_detections.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.codigo_orip    COMMENT     W   COMMENT ON COLUMN test_change_detections.lc_predio.codigo_orip IS 'Circulo registral';
            test_change_detections       postgres    false    2812            �>           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     g   COMMENT ON COLUMN test_change_detections.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.numero_predial    COMMENT     )  COMMENT ON COLUMN test_change_detections.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_change_detections       postgres    false    2812            �>           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     2  COMMENT ON COLUMN test_change_detections.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.nupre    COMMENT     F  COMMENT ON COLUMN test_change_detections.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_change_detections       postgres    false    2812            �>           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_change_detections       postgres    false    2812            �>           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     q   COMMENT ON COLUMN test_change_detections.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_change_detections       postgres    false    2812            �>           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2812            �>           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2812            �>           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2812            �>           0    0    COLUMN lc_predio.local_id    COMMENT     ^   COMMENT ON COLUMN test_change_detections.lc_predio.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2812                       1259    741754    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_change_detections.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 9   DROP TABLE test_change_detections.lc_predio_copropiedad;
       test_change_detections         postgres    false    2732    8                       1259    741762    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_change_detections.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 ?   DROP TABLE test_change_detections.lc_predio_ini_predioinsumos;
       test_change_detections         postgres    false    2732    8            8           1259    742206    lc_prediotipo    TABLE     �  CREATE TABLE test_change_detections.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_change_detections.lc_prediotipo;
       test_change_detections         postgres    false    2732    8            $           1259    742026 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_change_detections.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 J   DROP TABLE test_change_detections.lc_procedimientocatastralregistraltipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741624    lc_puntocontrol    TABLE     �  CREATE TABLE test_change_detections.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_change_detections.lc_puntocontrol;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_change_detections       postgres    false    2813            �>           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     w   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_change_detections       postgres    false    2813            �>           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_change_detections       postgres    false    2813            �>           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_change_detections       postgres    false    2813            �>           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_change_detections       postgres    false    2813            �>           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_change_detections       postgres    false    2813            �>           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     s   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_change_detections       postgres    false    2813            �>           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_change_detections       postgres    false    2813            �>           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_change_detections       postgres    false    2813            �>           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2813            �>           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2813            �>           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2813            �>           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     d   COMMENT ON COLUMN test_change_detections.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2813            I           1259    742359    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_change_detections.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_change_detections.lc_puntocontroltipo;
       test_change_detections         postgres    false    2732    8                       1259    741725    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_change_detections.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_change_detections.lc_puntolevantamiento;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_change_detections       postgres    false    2820            �>           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_change_detections       postgres    false    2820            �>           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_change_detections       postgres    false    2820            �>           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_change_detections       postgres    false    2820            �>           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_change_detections       postgres    false    2820            �>           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_change_detections       postgres    false    2820            �>           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_change_detections       postgres    false    2820            �>           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     y   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_change_detections       postgres    false    2820            �>           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_change_detections       postgres    false    2820            �>           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_change_detections       postgres    false    2820            �>           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2820            �>           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2820            �>           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2820            �>           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     j   COMMENT ON COLUMN test_change_detections.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2820            <           1259    742242    lc_puntolevtipo    TABLE     �  CREATE TABLE test_change_detections.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_change_detections.lc_puntolevtipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741643    lc_puntolindero    TABLE     �  CREATE TABLE test_change_detections.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_change_detections.lc_puntolindero;
       test_change_detections         postgres    false    2732    8            �>           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_change_detections       postgres    false    2814            �>           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     s   COMMENT ON COLUMN test_change_detections.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_change_detections       postgres    false    2814            �>           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_change_detections       postgres    false    2814            �>           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_change_detections       postgres    false    2814            �>           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     {   COMMENT ON COLUMN test_change_detections.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_change_detections       postgres    false    2814            �>           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_change_detections       postgres    false    2814            �>           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_change_detections       postgres    false    2814            �>           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     s   COMMENT ON COLUMN test_change_detections.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_change_detections       postgres    false    2814             ?           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_change_detections       postgres    false    2814            ?           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_change_detections       postgres    false    2814            ?           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2814            ?           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2814            ?           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2814            ?           0    0    COLUMN lc_puntolindero.local_id    COMMENT     d   COMMENT ON COLUMN test_change_detections.lc_puntolindero.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2814            1           1259    742143    lc_puntotipo    TABLE     �  CREATE TABLE test_change_detections.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_change_detections.lc_puntotipo;
       test_change_detections         postgres    false    2732    8            '           1259    742053    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_change_detections.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_change_detections.lc_relacionprediotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741663    lc_restriccion    TABLE     T  CREATE TABLE test_change_detections.lc_restriccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_change_detections.lc_restriccion;
       test_change_detections         postgres    false    2732    8            ?           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_change_detections       postgres    false    2815            ?           0    0    COLUMN lc_restriccion.tipo    COMMENT     o   COMMENT ON COLUMN test_change_detections.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_change_detections       postgres    false    2815            ?           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_change_detections       postgres    false    2815            	?           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2815            
?           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2815            ?           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2815            ?           0    0    COLUMN lc_restriccion.local_id    COMMENT     c   COMMENT ON COLUMN test_change_detections.lc_restriccion.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2815            :           1259    742224    lc_restricciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_change_detections.lc_restricciontipo;
       test_change_detections         postgres    false    2732    8            +           1259    742089    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_change_detections.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.lc_resultadovisitatipo;
       test_change_detections         postgres    false    2732    8                       1259    741770    lc_servidumbretransito    TABLE     �  CREATE TABLE test_change_detections.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 :   DROP TABLE test_change_detections.lc_servidumbretransito;
       test_change_detections         postgres    false    2732    8            ?           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_change_detections       postgres    false    2824            ?           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     v   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_change_detections       postgres    false    2824            ?           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     g   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_change_detections       postgres    false    2824            ?           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_change_detections       postgres    false    2824            ?           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_change_detections       postgres    false    2824            ?           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_change_detections       postgres    false    2824            ?           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2824            ?           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2824            ?           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2824            ?           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     k   COMMENT ON COLUMN test_change_detections.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2824            0           1259    742134    lc_sexotipo    TABLE     �  CREATE TABLE test_change_detections.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_change_detections.lc_sexotipo;
       test_change_detections         postgres    false    2732    8                        1259    741677 
   lc_terreno    TABLE     �  CREATE TABLE test_change_detections.lc_terreno (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_change_detections.lc_terreno;
       test_change_detections         postgres    false    2732    8            ?           0    0    TABLE lc_terreno    COMMENT     u   COMMENT ON TABLE test_change_detections.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_change_detections       postgres    false    2816            ?           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_change_detections       postgres    false    2816            ?           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_change_detections       postgres    false    2816            ?           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     _  COMMENT ON COLUMN test_change_detections.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_change_detections       postgres    false    2816            ?           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_change_detections       postgres    false    2816            ?           0    0    COLUMN lc_terreno.dimension    COMMENT     [   COMMENT ON COLUMN test_change_detections.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_change_detections       postgres    false    2816            ?           0    0    COLUMN lc_terreno.etiqueta    COMMENT     v   COMMENT ON COLUMN test_change_detections.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_change_detections       postgres    false    2816            ?           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_change_detections       postgres    false    2816            ?           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2816             ?           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2816            !?           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2816            "?           0    0    COLUMN lc_terreno.local_id    COMMENT     _   COMMENT ON COLUMN test_change_detections.lc_terreno.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2816                       1259    741745    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_change_detections.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 <   DROP TABLE test_change_detections.lc_tipologiaconstruccion;
       test_change_detections         postgres    false    2732    8            #?           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_change_detections       postgres    false    2821            $?           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_change_detections       postgres    false    2821            D           1259    742314    lc_tipologiatipo    TABLE     �  CREATE TABLE test_change_detections.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_change_detections.lc_tipologiatipo;
       test_change_detections         postgres    false    2732    8            	           1259    741783    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_change_detections.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 9   DROP TABLE test_change_detections.lc_unidadconstruccion;
       test_change_detections         postgres    false    2732    8            %?           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_change_detections.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_change_detections       postgres    false    2825            &?           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_change_detections       postgres    false    2825            '?           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_change_detections       postgres    false    2825            (?           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_change_detections       postgres    false    2825            )?           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_change_detections       postgres    false    2825            *?           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_change_detections       postgres    false    2825            +?           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_change_detections       postgres    false    2825            ,?           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_change_detections       postgres    false    2825            -?           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_change_detections       postgres    false    2825            .?           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_change_detections       postgres    false    2825            /?           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_change_detections       postgres    false    2825            0?           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_change_detections       postgres    false    2825            1?           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_change_detections       postgres    false    2825            2?           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_change_detections       postgres    false    2825            3?           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_change_detections       postgres    false    2825            4?           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_change_detections       postgres    false    2825            5?           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     x   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_change_detections       postgres    false    2825            6?           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_change_detections       postgres    false    2825            7?           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     f   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_change_detections       postgres    false    2825            8?           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_change_detections       postgres    false    2825            9?           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_change_detections       postgres    false    2825            :?           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_change_detections       postgres    false    2825            ;?           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2825            <?           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_change_detections       postgres    false    2825            =?           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_change_detections       postgres    false    2825            >?           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     j   COMMENT ON COLUMN test_change_detections.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_change_detections       postgres    false    2825            4           1259    742170    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_change_detections.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_change_detections.lc_unidadconstrucciontipo;
       test_change_detections         postgres    false    2732    8            @           1259    742278    lc_usouconstipo    TABLE     �  CREATE TABLE test_change_detections.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_change_detections.lc_usouconstipo;
       test_change_detections         postgres    false    2732    8                       1259    741936 
   lc_viatipo    TABLE     �  CREATE TABLE test_change_detections.lc_viatipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_change_detections.lc_viatipo;
       test_change_detections         postgres    false    2732    8            C           1259    742305    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_change_detections.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.snr_calidadderechotipo;
       test_change_detections         postgres    false    2732    8            G           1259    742341    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_change_detections.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_change_detections.snr_clasepredioregistrotipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741368    snr_derecho    TABLE     i  CREATE TABLE test_change_detections.snr_derecho (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 /   DROP TABLE test_change_detections.snr_derecho;
       test_change_detections         postgres    false    2732    8            ??           0    0    TABLE snr_derecho    COMMENT     `   COMMENT ON TABLE test_change_detections.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_change_detections       postgres    false    2789            @?           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     s   COMMENT ON COLUMN test_change_detections.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_change_detections       postgres    false    2789            A?           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_change_detections       postgres    false    2789            O           1259    742413    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_change_detections.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_change_detections.snr_documentotitulartipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741377    snr_estructuramatriculamatriz    TABLE     I  CREATE TABLE test_change_detections.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 A   DROP TABLE test_change_detections.snr_estructuramatriculamatriz;
       test_change_detections         postgres    false    2732    8            B?           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_change_detections       postgres    false    2790            C?           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_change_detections       postgres    false    2790            D?           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_change_detections       postgres    false    2790            �
           1259    741384    snr_fuentecabidalinderos    TABLE     w  CREATE TABLE test_change_detections.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 <   DROP TABLE test_change_detections.snr_fuentecabidalinderos;
       test_change_detections         postgres    false    2732    8            E?           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_change_detections.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_change_detections       postgres    false    2791            F?           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_change_detections       postgres    false    2791            G?           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_change_detections       postgres    false    2791            H?           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_change_detections       postgres    false    2791            I?           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_change_detections       postgres    false    2791            �
           1259    741394    snr_fuentederecho    TABLE     p  CREATE TABLE test_change_detections.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 5   DROP TABLE test_change_detections.snr_fuentederecho;
       test_change_detections         postgres    false    2732    8            J?           0    0    TABLE snr_fuentederecho    COMMENT     l   COMMENT ON TABLE test_change_detections.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_change_detections       postgres    false    2792            K?           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_change_detections       postgres    false    2792            L?           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_change_detections       postgres    false    2792            M?           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_change_detections       postgres    false    2792            N?           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_change_detections       postgres    false    2792                       1259    741873    snr_fuentetipo    TABLE     �  CREATE TABLE test_change_detections.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_change_detections.snr_fuentetipo;
       test_change_detections         postgres    false    2732    8                       1259    741882    snr_personatitulartipo    TABLE     �  CREATE TABLE test_change_detections.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_change_detections.snr_personatitulartipo;
       test_change_detections         postgres    false    2732    8            �
           1259    741415    snr_predioregistro    TABLE     9  CREATE TABLE test_change_detections.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_change_detections.snr_predioregistro;
       test_change_detections         postgres    false    2732    8            O?           0    0    TABLE snr_predioregistro    COMMENT     i   COMMENT ON TABLE test_change_detections.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_change_detections       postgres    false    2794            P?           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_change_detections       postgres    false    2794            Q?           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_change_detections       postgres    false    2794            R?           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     Q  COMMENT ON COLUMN test_change_detections.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_change_detections       postgres    false    2794            S?           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     U  COMMENT ON COLUMN test_change_detections.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_change_detections       postgres    false    2794            T?           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_change_detections       postgres    false    2794            U?           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_change_detections       postgres    false    2794            V?           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_change_detections.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_change_detections       postgres    false    2794            W?           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     p   COMMENT ON COLUMN test_change_detections.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_change_detections       postgres    false    2794            �
           1259    741404    snr_titular    TABLE     �  CREATE TABLE test_change_detections.snr_titular (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 /   DROP TABLE test_change_detections.snr_titular;
       test_change_detections         postgres    false    2732    8            X?           0    0    TABLE snr_titular    COMMENT     m   COMMENT ON TABLE test_change_detections.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_change_detections       postgres    false    2793            Y?           0    0    COLUMN snr_titular.tipo_persona    COMMENT     X   COMMENT ON COLUMN test_change_detections.snr_titular.tipo_persona IS 'Tipo de persona';
            test_change_detections       postgres    false    2793            Z?           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     n   COMMENT ON COLUMN test_change_detections.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_change_detections       postgres    false    2793            [?           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     s   COMMENT ON COLUMN test_change_detections.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_change_detections       postgres    false    2793            \?           0    0    COLUMN snr_titular.nombres    COMMENT     b   COMMENT ON COLUMN test_change_detections.snr_titular.nombres IS 'Nombres de la persona física.';
            test_change_detections       postgres    false    2793            ]?           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     r   COMMENT ON COLUMN test_change_detections.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_change_detections       postgres    false    2793            ^?           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     t   COMMENT ON COLUMN test_change_detections.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_change_detections       postgres    false    2793            _?           0    0    COLUMN snr_titular.razon_social    COMMENT     ~   COMMENT ON COLUMN test_change_detections.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_change_detections       postgres    false    2793            �
           1259    741426    snr_titular_derecho    TABLE     4  CREATE TABLE test_change_detections.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_change_detections.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 7   DROP TABLE test_change_detections.snr_titular_derecho;
       test_change_detections         postgres    false    2732    8            `?           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_change_detections.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_change_detections       postgres    false    2795            T           1259    742457    t_ili2db_attrname    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 5   DROP TABLE test_change_detections.t_ili2db_attrname;
       test_change_detections         postgres    false    8            
           1259    741802    t_ili2db_basket    TABLE       CREATE TABLE test_change_detections.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 3   DROP TABLE test_change_detections.t_ili2db_basket;
       test_change_detections         postgres    false    8            S           1259    742449    t_ili2db_classname    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 6   DROP TABLE test_change_detections.t_ili2db_classname;
       test_change_detections         postgres    false    8            U           1259    742465    t_ili2db_column_prop    TABLE       CREATE TABLE test_change_detections.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 8   DROP TABLE test_change_detections.t_ili2db_column_prop;
       test_change_detections         postgres    false    8                       1259    741811    t_ili2db_dataset    TABLE     {   CREATE TABLE test_change_detections.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 4   DROP TABLE test_change_detections.t_ili2db_dataset;
       test_change_detections         postgres    false    8                       1259    741816    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 8   DROP TABLE test_change_detections.t_ili2db_inheritance;
       test_change_detections         postgres    false    8            W           1259    742477    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 7   DROP TABLE test_change_detections.t_ili2db_meta_attrs;
       test_change_detections         postgres    false    8                       1259    741838    t_ili2db_model    TABLE        CREATE TABLE test_change_detections.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 2   DROP TABLE test_change_detections.t_ili2db_model;
       test_change_detections         postgres    false    8                       1259    741824    t_ili2db_settings    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 5   DROP TABLE test_change_detections.t_ili2db_settings;
       test_change_detections         postgres    false    8            V           1259    742471    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 7   DROP TABLE test_change_detections.t_ili2db_table_prop;
       test_change_detections         postgres    false    8                       1259    741832    t_ili2db_trafo    TABLE     �   CREATE TABLE test_change_detections.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 2   DROP TABLE test_change_detections.t_ili2db_trafo;
       test_change_detections         postgres    false    8            �<          0    740860    cc_metodooperacion 
   TABLE DATA               �   COPY test_change_detections.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_change_detections       postgres    false    2737   f�	      ?=          0    741972    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_change_detections.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2846   ��	      V=          0    742179    col_areatipo 
   TABLE DATA               �   COPY test_change_detections.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2869   I�	      �<          0    740867    col_areavalor 
   TABLE DATA               �   COPY test_change_detections.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_change_detections       postgres    false    2738   u�	      �<          0    741136    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_change_detections.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_change_detections       postgres    false    2765   ��	      �<          0    741045    col_baunitfuente 
   TABLE DATA               d   COPY test_change_detections.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_change_detections       postgres    false    2755   ��	      �<          0    741060    col_cclfuente 
   TABLE DATA               ^   COPY test_change_detections.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_change_detections       postgres    false    2757   ��	      �<          0    741100    col_clfuente 
   TABLE DATA               X   COPY test_change_detections.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_change_detections       postgres    false    2761   ��	      T=          0    742161    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_change_detections.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2867   �	      A=          0    741990    col_dimensiontipo 
   TABLE DATA               �   COPY test_change_detections.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2848   �	      N=          0    742107    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_change_detections.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2861   ��	      o=          0    742404    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_change_detections.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2894   V�	      W=          0    742188    col_estructuratipo 
   TABLE DATA               �   COPY test_change_detections.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2870   ��	      Z=          0    742215    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_change_detections.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2873   ��	      D=          0    742017    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_change_detections.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2851   R�	      I=          0    742062    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_change_detections.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2856   ��	      M=          0    742098    col_interpolaciontipo 
   TABLE DATA               �   COPY test_change_detections.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2860   m�	      6=          0    741891    col_iso19125_tipo 
   TABLE DATA               �   COPY test_change_detections.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2837   ��	      �<          0    741079 
   col_masccl 
   TABLE DATA               �   COPY test_change_detections.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2759   ��	      �<          0    741117 	   col_mascl 
   TABLE DATA               �   COPY test_change_detections.col_mascl (t_id, t_ili_tid, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2763   ��	      �<          0    741068    col_menosccl 
   TABLE DATA               �   COPY test_change_detections.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2758   ��	      �<          0    741107    col_menoscl 
   TABLE DATA               �   COPY test_change_detections.col_menoscl (t_id, t_ili_tid, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2762   ��	      q=          0    742422    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_change_detections.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2896   ��	      �<          0    741163    col_miembros 
   TABLE DATA               �   COPY test_change_detections.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_change_detections       postgres    false    2768   2�	      �<          0    741090    col_puntoccl 
   TABLE DATA               �   COPY test_change_detections.col_puntoccl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero, ccl) FROM stdin;
    test_change_detections       postgres    false    2760   ~�	      �<          0    741127    col_puntocl 
   TABLE DATA               �   COPY test_change_detections.col_puntocl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_change_detections       postgres    false    2764   �	      �<          0    741024    col_puntofuente 
   TABLE DATA               �   COPY test_change_detections.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_change_detections       postgres    false    2753   !�	      1=          0    741846    col_puntotipo 
   TABLE DATA               �   COPY test_change_detections.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2832   >�	      J=          0    742071    col_redserviciostipo 
   TABLE DATA               �   COPY test_change_detections.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2857   ��	      \=          0    742233    col_registrotipo 
   TABLE DATA               �   COPY test_change_detections.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2875   `�	      �<          0    741009    col_relacionfuente 
   TABLE DATA               d   COPY test_change_detections.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_change_detections       postgres    false    2751   ��	      �<          0    741053    col_relacionfuenteuespacial 
   TABLE DATA               g   COPY test_change_detections.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_change_detections       postgres    false    2756   ��	      P=          0    742125    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_change_detections.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2863   �	      �<          0    741145    col_responsablefuente 
   TABLE DATA               �   COPY test_change_detections.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_change_detections       postgres    false    2766   ��	      �<          0    740989    col_rrrfuente 
   TABLE DATA               �   COPY test_change_detections.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_change_detections       postgres    false    2749   ��	      �<          0    741154    col_topografofuente 
   TABLE DATA               �   COPY test_change_detections.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_change_detections       postgres    false    2767   P�	      �<          0    740910    col_transformacion 
   TABLE DATA               �   COPY test_change_detections.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_change_detections       postgres    false    2741   m�	      �<          0    740998    col_uebaunit 
   TABLE DATA               �   COPY test_change_detections.col_uebaunit (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, baunit) FROM stdin;
    test_change_detections       postgres    false    2750   ��	      �<          0    741034    col_uefuente 
   TABLE DATA               �   COPY test_change_detections.col_uefuente (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, fuente_espacial) FROM stdin;
    test_change_detections       postgres    false    2754   ��	      �<          0    740979    col_ueuegrupo 
   TABLE DATA               �   COPY test_change_detections.col_ueuegrupo (t_id, t_ili_tid, parte_lc_construccion, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2748   ��	      7=          0    741900 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_change_detections.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2838   ��	      <=          0    741945    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_change_detections.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2843   I�	      �<          0    741016    col_unidadfuente 
   TABLE DATA               j   COPY test_change_detections.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_change_detections       postgres    false    2752   ��	      g=          0    742332    col_volumentipo 
   TABLE DATA               �   COPY test_change_detections.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2886   ��	      �<          0    740968    col_volumenvalor 
   TABLE DATA               �   COPY test_change_detections.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_change_detections       postgres    false    2747   W�	      �<          0    740956 
   extarchivo 
   TABLE DATA                 COPY test_change_detections.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_change_detections       postgres    false    2746   t�	      �<          0    740881    extdireccion 
   TABLE DATA               *  COPY test_change_detections.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_change_detections       postgres    false    2739   �
      l=          0    742377     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_change_detections.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2891   k
      O=          0    742116    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_change_detections.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2862   _	
      3=          0    741864    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_change_detections.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2834   �	
      b=          0    742287    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_change_detections.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2881   v

      �<          0    740938    extinteresado 
   TABLE DATA               �   COPY test_change_detections.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_change_detections       postgres    false    2744   �

      �<          0    740950    extredserviciosfisica 
   TABLE DATA               W   COPY test_change_detections.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_change_detections       postgres    false    2745   	
      �<          0    740923    extunidadedificacionfisica 
   TABLE DATA               Q   COPY test_change_detections.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_change_detections       postgres    false    2742   &
      �<          0    740902    fraccion 
   TABLE DATA               �   COPY test_change_detections.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_change_detections       postgres    false    2740   C
      �<          0    741172 	   gc_barrio 
   TABLE DATA               n   COPY test_change_detections.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_change_detections       postgres    false    2769   �
      �<          0    741182 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_change_detections.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_change_detections       postgres    false    2770   �
      �<          0    741192    gc_comisionesconstruccion 
   TABLE DATA               o   COPY test_change_detections.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_change_detections       postgres    false    2771   �
      �<          0    741202    gc_comisionesterreno 
   TABLE DATA               j   COPY test_change_detections.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_change_detections       postgres    false    2772   �
      �<          0    741212    gc_comisionesunidadconstruccion 
   TABLE DATA               u   COPY test_change_detections.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_change_detections       postgres    false    2773   �
      `=          0    742269    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_change_detections.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2879   
      �<          0    741222    gc_construccion 
   TABLE DATA                 COPY test_change_detections.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_change_detections       postgres    false    2774   
      =          0    741360    gc_copropiedad 
   TABLE DATA               m   COPY test_change_detections.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_change_detections       postgres    false    2788   
      �<          0    741234    gc_datosphcondominio 
   TABLE DATA                 COPY test_change_detections.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_change_detections       postgres    false    2775   
      �<          0    741241    gc_datostorreph 
   TABLE DATA               �   COPY test_change_detections.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_change_detections       postgres    false    2776   <
      �<          0    741248    gc_direccion 
   TABLE DATA               �   COPY test_change_detections.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_change_detections       postgres    false    2777   Y
      �<          0    741259    gc_estadopredio 
   TABLE DATA               �   COPY test_change_detections.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_change_detections       postgres    false    2778   v
      �<          0    741266 
   gc_manzana 
   TABLE DATA               x   COPY test_change_detections.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_change_detections       postgres    false    2779   �
      �<          0    741276    gc_perimetro 
   TABLE DATA               �   COPY test_change_detections.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_change_detections       postgres    false    2780   �
      =          0    741349    gc_prediocatastro 
   TABLE DATA                 COPY test_change_detections.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_change_detections       postgres    false    2787   �
      �<          0    741286    gc_propietario 
   TABLE DATA               �   COPY test_change_detections.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_change_detections       postgres    false    2781   �
      �<          0    741296    gc_sectorrural 
   TABLE DATA               \   COPY test_change_detections.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_change_detections       postgres    false    2782   c'
       =          0    741306    gc_sectorurbano 
   TABLE DATA               ]   COPY test_change_detections.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_change_detections       postgres    false    2783   �'
      G=          0    742044    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_change_detections.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2854   �'
      =          0    741316 
   gc_terreno 
   TABLE DATA               �   COPY test_change_detections.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_change_detections       postgres    false    2784   S(
      =          0    741327    gc_unidadconstruccion 
   TABLE DATA               <  COPY test_change_detections.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_change_detections       postgres    false    2785   �J
      9=          0    741918    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_change_detections.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2840   �U
      =          0    741339 	   gc_vereda 
   TABLE DATA                  COPY test_change_detections.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_change_detections       postgres    false    2786   ^V
      �<          0    740837    gm_multisurface2d 
   TABLE DATA               H   COPY test_change_detections.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_change_detections       postgres    false    2734   {V
      �<          0    740854    gm_multisurface3d 
   TABLE DATA               H   COPY test_change_detections.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_change_detections       postgres    false    2736   �V
      �<          0    740826    gm_surface2dlistvalue 
   TABLE DATA               p   COPY test_change_detections.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_change_detections       postgres    false    2733   �V
      �<          0    740843    gm_surface3dlistvalue 
   TABLE DATA               p   COPY test_change_detections.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_change_detections       postgres    false    2735   �V
      �<          0    740929    imagen 
   TABLE DATA               �   COPY test_change_detections.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_change_detections       postgres    false    2743   �V
      >=          0    741963    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_change_detections.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2845   W
      =          0    741434    ini_predioinsumos 
   TABLE DATA               �   COPY test_change_detections.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_change_detections       postgres    false    2796   RX
      ^=          0    742251    lc_acuerdotipo 
   TABLE DATA               �   COPY test_change_detections.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2877   oX
      =          0    741446    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_change_detections.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2797   Y
      _=          0    742260    lc_anexotipo 
   TABLE DATA               �   COPY test_change_detections.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2878   �Y
      "=          0    741690    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_change_detections.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_change_detections       postgres    false    2817   ?i
      #=          0    741699    lc_calificacionnoconvencional 
   TABLE DATA               |   COPY test_change_detections.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_change_detections       postgres    false    2818   \i
      i=          0    742350    lc_calificartipo 
   TABLE DATA               �   COPY test_change_detections.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2888   yi
      ==          0    741954    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_change_detections.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2844   Ij
      m=          0    742386    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2892   �m
      F=          0    742035    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_change_detections.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2853   p
      n=          0    742395    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_change_detections.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2893   't
      =          0    741457    lc_construccion 
   TABLE DATA               �  COPY test_change_detections.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2798   4w
      S=          0    742152    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_change_detections.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2866   
      k=          0    742368    lc_construcciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2890   ��
      =          0    741472    lc_contactovisita 
   TABLE DATA                 COPY test_change_detections.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_change_detections       postgres    false    2799   h�
      $=          0    741708 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_change_detections.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_change_detections       postgres    false    2819   ��
      =          0    741485    lc_datosphcondominio 
   TABLE DATA                 COPY test_change_detections.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_change_detections       postgres    false    2800   ��
      =          0    741493 
   lc_derecho 
   TABLE DATA                 COPY test_change_detections.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2801   ��
      C=          0    742008    lc_derechotipo 
   TABLE DATA               �   COPY test_change_detections.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2850   Q�
      :=          0    741927    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_change_detections.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2841   �
      f=          0    742323    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2885   ��
      s=          0    742440    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2898   ;�
      =          0    741507    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_change_detections.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_change_detections       postgres    false    2802   ��
      =          0    741514 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_change_detections.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_change_detections       postgres    false    2803   �
      2=          0    741855 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2833   7�
      @=          0    741981    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2847   ,�
      =          0    741522    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_change_detections.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2804   �
      c=          0    742296    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_change_detections.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2882   ��
      =          0    741535    lc_fuenteespacial 
   TABLE DATA               �   COPY test_change_detections.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2805   <�
      =          0    741548    lc_grupocalificacion 
   TABLE DATA               �   COPY test_change_detections.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_change_detections       postgres    false    2806   ť
      B=          0    741999    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_change_detections.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2849   �
      =          0    741558    lc_interesado 
   TABLE DATA               0  COPY test_change_detections.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2807   }�
      =          0    741572    lc_interesadocontacto 
   TABLE DATA                 COPY test_change_detections.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_change_detections       postgres    false    2808   |�
      X=          0    742197    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_change_detections.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2871   u�
      K=          0    742080    lc_interesadotipo 
   TABLE DATA               �   COPY test_change_detections.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2858   n�
      =          0    741583 
   lc_lindero 
   TABLE DATA               �   COPY test_change_detections.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2809   ��
      =          0    741594    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_change_detections.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_change_detections       postgres    false    2810   _�
      r=          0    742431    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2897   |�
      =          0    741603    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_change_detections.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_change_detections       postgres    false    2811   U�
      8=          0    741909    lc_ofertatipo 
   TABLE DATA               �   COPY test_change_detections.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2839   r�
      =          0    741612 	   lc_predio 
   TABLE DATA               N  COPY test_change_detections.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2812   b�
      '=          0    741754    lc_predio_copropiedad 
   TABLE DATA               Z   COPY test_change_detections.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_change_detections       postgres    false    2822   "�
      (=          0    741762    lc_predio_ini_predioinsumos 
   TABLE DATA               u   COPY test_change_detections.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_change_detections       postgres    false    2823   ?�
      Y=          0    742206    lc_prediotipo 
   TABLE DATA               �   COPY test_change_detections.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2872   \�
      E=          0    742026 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_change_detections.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2852   ��
      =          0    741624    lc_puntocontrol 
   TABLE DATA               �  COPY test_change_detections.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2813   �      j=          0    742359    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_change_detections.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2889   �      %=          0    741725    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_change_detections.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2820   �      ]=          0    742242    lc_puntolevtipo 
   TABLE DATA               �   COPY test_change_detections.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2876   }      =          0    741643    lc_puntolindero 
   TABLE DATA               �  COPY test_change_detections.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2814   E      R=          0    742143    lc_puntotipo 
   TABLE DATA               �   COPY test_change_detections.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2865   5Q      H=          0    742053    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_change_detections.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2855   T       =          0    741663    lc_restriccion 
   TABLE DATA               �   COPY test_change_detections.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2815   WU      [=          0    742224    lc_restricciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2874   }V      L=          0    742089    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_change_detections.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2859   �`      )=          0    741770    lc_servidumbretransito 
   TABLE DATA               �   COPY test_change_detections.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2824   ub      Q=          0    742134    lc_sexotipo 
   TABLE DATA               �   COPY test_change_detections.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2864   �c      !=          0    741677 
   lc_terreno 
   TABLE DATA                  COPY test_change_detections.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2816   Zd      &=          0    741745    lc_tipologiaconstruccion 
   TABLE DATA               {   COPY test_change_detections.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_change_detections       postgres    false    2821   {�      e=          0    742314    lc_tipologiatipo 
   TABLE DATA               �   COPY test_change_detections.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2884   ��      *=          0    741783    lc_unidadconstruccion 
   TABLE DATA                 COPY test_change_detections.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_change_detections       postgres    false    2825   ��      U=          0    742170    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_change_detections.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2868   ��      a=          0    742278    lc_usouconstipo 
   TABLE DATA               �   COPY test_change_detections.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2880   �      ;=          0    741936 
   lc_viatipo 
   TABLE DATA               �   COPY test_change_detections.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2842   d�      d=          0    742305    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_change_detections.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2883   !�      h=          0    742341    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_change_detections.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2887   ��      =          0    741368    snr_derecho 
   TABLE DATA               �   COPY test_change_detections.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_change_detections       postgres    false    2789   d�      p=          0    742413    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_change_detections.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2895   ��      =          0    741377    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_change_detections.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_change_detections       postgres    false    2790   ��      =          0    741384    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_change_detections.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_change_detections       postgres    false    2791   ��      	=          0    741394    snr_fuentederecho 
   TABLE DATA               �   COPY test_change_detections.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_change_detections       postgres    false    2792   ��      4=          0    741873    snr_fuentetipo 
   TABLE DATA               �   COPY test_change_detections.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2835   �      5=          0    741882    snr_personatitulartipo 
   TABLE DATA               �   COPY test_change_detections.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_change_detections       postgres    false    2836   ��      =          0    741415    snr_predioregistro 
   TABLE DATA                 COPY test_change_detections.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_change_detections       postgres    false    2794   ��      
=          0    741404    snr_titular 
   TABLE DATA               �   COPY test_change_detections.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_change_detections       postgres    false    2793   ��      =          0    741426    snr_titular_derecho 
   TABLE DATA               �   COPY test_change_detections.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_change_detections       postgres    false    2795   ��      u=          0    742457    t_ili2db_attrname 
   TABLE DATA               _   COPY test_change_detections.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_change_detections       postgres    false    2900   �      +=          0    741802    t_ili2db_basket 
   TABLE DATA               r   COPY test_change_detections.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_change_detections       postgres    false    2826   ��      t=          0    742449    t_ili2db_classname 
   TABLE DATA               N   COPY test_change_detections.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_change_detections       postgres    false    2899   R�      v=          0    742465    t_ili2db_column_prop 
   TABLE DATA               l   COPY test_change_detections.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_change_detections       postgres    false    2901   ��      ,=          0    741811    t_ili2db_dataset 
   TABLE DATA               M   COPY test_change_detections.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_change_detections       postgres    false    2827   �      -=          0    741816    t_ili2db_inheritance 
   TABLE DATA               T   COPY test_change_detections.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_change_detections       postgres    false    2828   1      x=          0    742477    t_ili2db_meta_attrs 
   TABLE DATA               `   COPY test_change_detections.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_change_detections       postgres    false    2903   �!      0=          0    741838    t_ili2db_model 
   TABLE DATA               n   COPY test_change_detections.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_change_detections       postgres    false    2831   �W      .=          0    741824    t_ili2db_settings 
   TABLE DATA               I   COPY test_change_detections.t_ili2db_settings (tag, setting) FROM stdin;
    test_change_detections       postgres    false    2829   ":      w=          0    742471    t_ili2db_table_prop 
   TABLE DATA               V   COPY test_change_detections.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_change_detections       postgres    false    2902   <      /=          0    741832    t_ili2db_trafo 
   TABLE DATA               O   COPY test_change_detections.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_change_detections       postgres    false    2830   �C      a?           0    0    t_ili2db_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('test_change_detections.t_ili2db_seq', 3310, true);
            test_change_detections       postgres    false    2732            !9           2606    740865 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_change_detections         postgres    false    2737            �:           2606    741980 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_change_detections.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_change_detections         postgres    false    2846            &;           2606    742187    col_areatipo col_areatipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_change_detections         postgres    false    2869            '9           2606    740875     col_areavalor col_areavalor_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_change_detections         postgres    false    2738            �9           2606    741141 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_change_detections         postgres    false    2765            �9           2606    741050 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_change_detections         postgres    false    2755            �9           2606    741065     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_change_detections         postgres    false    2757            �9           2606    741105    col_clfuente col_clfuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_change_detections         postgres    false    2761            ";           2606    742169 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_change_detections         postgres    false    2867            �:           2606    741998 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_change_detections         postgres    false    2848            ;           2606    742115 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_change_detections.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_change_detections         postgres    false    2861            X;           2606    742412 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_change_detections         postgres    false    2894            (;           2606    742196 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_change_detections         postgres    false    2870            .;           2606    742223 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 x   ALTER TABLE ONLY test_change_detections.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_change_detections         postgres    false    2873            ;           2606    742025 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_change_detections         postgres    false    2851            ;           2606    742070 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_change_detections.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_change_detections         postgres    false    2856            ;           2606    742106 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_change_detections         postgres    false    2860            �:           2606    741899 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_change_detections         postgres    false    2837            �9           2606    741084    col_masccl col_masccl_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_change_detections         postgres    false    2759            �9           2606    741122    col_mascl col_mascl_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_change_detections.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_change_detections.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_change_detections         postgres    false    2763            �9           2606    741073    col_menosccl col_menosccl_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_change_detections         postgres    false    2758            �9           2606    741112    col_menoscl col_menoscl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_change_detections.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_change_detections.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_change_detections         postgres    false    2762            \;           2606    742430 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_change_detections         postgres    false    2896            �9           2606    741168    col_miembros col_miembros_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_change_detections         postgres    false    2768            �9           2606    741095    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_change_detections         postgres    false    2760            �9           2606    741132    col_puntocl col_puntocl_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_change_detections.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_change_detections.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_change_detections         postgres    false    2764            v9           2606    741029 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_change_detections         postgres    false    2753            �:           2606    741854     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_change_detections         postgres    false    2832            ;           2606    742079 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_change_detections.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_change_detections.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_change_detections         postgres    false    2857            2;           2606    742241 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_change_detections         postgres    false    2875            o9           2606    741014 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_change_detections         postgres    false    2751            �9           2606    741058 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_change_detections         postgres    false    2756            ;           2606    742133 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_change_detections         postgres    false    2863            �9           2606    741150 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_change_detections         postgres    false    2766            c9           2606    740994     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_change_detections         postgres    false    2749            �9           2606    741159 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_change_detections.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_change_detections.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_change_detections         postgres    false    2767            @9           2606    740918 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_change_detections         postgres    false    2741            h9           2606    741003    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_change_detections         postgres    false    2750            |9           2606    741039    col_uefuente col_uefuente_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_change_detections         postgres    false    2754            `9           2606    740984     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_change_detections         postgres    false    2748            �:           2606    741908 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_change_detections         postgres    false    2838            �:           2606    741953 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_change_detections         postgres    false    2843            r9           2606    741021 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_change_detections         postgres    false    2752            H;           2606    742340 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_change_detections         postgres    false    2886            Y9           2606    740973 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_change_detections         postgres    false    2747            R9           2606    740964    extarchivo extarchivo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_change_detections         postgres    false    2746            R;           2606    742385 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_change_detections         postgres    false    2891            39           2606    740889    extdireccion extdireccion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_change_detections         postgres    false    2739            ;           2606    742124 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_change_detections         postgres    false    2862            �:           2606    741872 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_change_detections         postgres    false    2834            >;           2606    742295 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_change_detections         postgres    false    2881            L9           2606    740946     extinteresado extinteresado_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_change_detections         postgres    false    2744            N9           2606    740955 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_change_detections         postgres    false    2745            B9           2606    740928 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_change_detections         postgres    false    2742            :9           2606    740907    fraccion fraccion_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY test_change_detections.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 P   ALTER TABLE ONLY test_change_detections.fraccion DROP CONSTRAINT fraccion_pkey;
       test_change_detections         postgres    false    2740            �9           2606    741180    gc_barrio gc_barrio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_change_detections.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_change_detections.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_change_detections         postgres    false    2769            �9           2606    741190 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_change_detections         postgres    false    2770            �9           2606    741200 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_change_detections         postgres    false    2771            �9           2606    741210 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_change_detections.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_change_detections.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_change_detections         postgres    false    2772            �9           2606    741220 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 ~   ALTER TABLE ONLY test_change_detections.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_change_detections         postgres    false    2773            :;           2606    742277 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_change_detections         postgres    false    2879            �9           2606    741230 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_change_detections         postgres    false    2774            :           2606    741365 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_change_detections         postgres    false    2788            �9           2606    741239 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_change_detections.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_change_detections.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_change_detections         postgres    false    2775            �9           2606    741246 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_change_detections         postgres    false    2776            �9           2606    741256    gc_direccion gc_direccion_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_change_detections         postgres    false    2777            �9           2606    741264 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_change_detections         postgres    false    2778            �9           2606    741274    gc_manzana gc_manzana_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_change_detections         postgres    false    2779            �9           2606    741284    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_change_detections         postgres    false    2780            :           2606    741357 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_change_detections         postgres    false    2787            �9           2606    741294 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_change_detections         postgres    false    2781            �9           2606    741304 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_change_detections         postgres    false    2782            �9           2606    741314 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_change_detections         postgres    false    2783            ;           2606    742052 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 |   ALTER TABLE ONLY test_change_detections.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_change_detections         postgres    false    2854            �9           2606    741324    gc_terreno gc_terreno_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_change_detections         postgres    false    2784            �9           2606    741335 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_change_detections         postgres    false    2785            �:           2606    741926 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_change_detections         postgres    false    2840            :           2606    741347    gc_vereda gc_vereda_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_change_detections.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_change_detections.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_change_detections         postgres    false    2786            9           2606    740842 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_change_detections         postgres    false    2734            9           2606    740859 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_change_detections         postgres    false    2736            9           2606    740834 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_change_detections         postgres    false    2733            9           2606    740851 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_change_detections         postgres    false    2735            G9           2606    740934    imagen imagen_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY test_change_detections.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 L   ALTER TABLE ONLY test_change_detections.imagen DROP CONSTRAINT imagen_pkey;
       test_change_detections         postgres    false    2743            �:           2606    741971 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_change_detections         postgres    false    2845            ):           2606    741442 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_change_detections         postgres    false    2796            6;           2606    742259 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_change_detections         postgres    false    2877            -:           2606    741455 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_change_detections         postgres    false    2797            8;           2606    742268    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_change_detections         postgres    false    2878            �:           2606    741696 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_change_detections         postgres    false    2817            �:           2606    741705 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_change_detections         postgres    false    2818            L;           2606    742358 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_change_detections         postgres    false    2888            �:           2606    741962 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_change_detections         postgres    false    2844            T;           2606    742394 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_change_detections         postgres    false    2892            ;           2606    742043 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_change_detections         postgres    false    2853            V;           2606    742403 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_change_detections         postgres    false    2893            2:           2606    741466 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_change_detections         postgres    false    2798             ;           2606    742160 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_change_detections         postgres    false    2866            P;           2606    742376 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_change_detections.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_change_detections.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_change_detections         postgres    false    2890            8:           2606    741481 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_change_detections         postgres    false    2799            �:           2606    741717 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_change_detections         postgres    false    2819            =:           2606    741491 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_change_detections.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_change_detections.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_change_detections         postgres    false    2800            A:           2606    741502    lc_derecho lc_derecho_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_change_detections         postgres    false    2801             ;           2606    742016 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_change_detections         postgres    false    2850            �:           2606    741935 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_change_detections         postgres    false    2841            F;           2606    742331 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_change_detections         postgres    false    2885            `;           2606    742448 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_change_detections         postgres    false    2898            F:           2606    741512 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_change_detections         postgres    false    2802            H:           2606    741519 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_change_detections         postgres    false    2803            �:           2606    741863 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_change_detections         postgres    false    2833            �:           2606    741989 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_change_detections         postgres    false    2847            M:           2606    741531 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 n   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_change_detections         postgres    false    2804            @;           2606    742304 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_change_detections         postgres    false    2882            R:           2606    741544 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_change_detections         postgres    false    2805            Y:           2606    741554 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 h   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_change_detections         postgres    false    2806            �:           2606    742007 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_change_detections         postgres    false    2849            \:           2606    741567     lc_interesado lc_interesado_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_change_detections         postgres    false    2807            b:           2606    741581 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_change_detections         postgres    false    2808            *;           2606    742205 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 t   ALTER TABLE ONLY test_change_detections.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_change_detections         postgres    false    2871            ;           2606    742088 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_change_detections         postgres    false    2858            e:           2606    741592    lc_lindero lc_lindero_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_change_detections         postgres    false    2809            h:           2606    741600 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_change_detections         postgres    false    2810            ^;           2606    742439 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_change_detections         postgres    false    2897            k:           2606    741609 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_change_detections         postgres    false    2811            �:           2606    741917     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_change_detections         postgres    false    2839            �:           2606    741759 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_change_detections         postgres    false    2822            �:           2606    741767 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_change_detections         postgres    false    2823            p:           2606    741621    lc_predio lc_predio_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY test_change_detections.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 R   ALTER TABLE ONLY test_change_detections.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_change_detections         postgres    false    2812            ,;           2606    742214     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY test_change_detections.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 Z   ALTER TABLE ONLY test_change_detections.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_change_detections         postgres    false    2872            ;           2606    742034 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_change_detections.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_change_detections         postgres    false    2852            u:           2606    741633 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_change_detections         postgres    false    2813            N;           2606    742367 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_change_detections.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_change_detections.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_change_detections         postgres    false    2889            �:           2606    741734 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_change_detections         postgres    false    2820            4;           2606    742250 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_change_detections         postgres    false    2876            �:           2606    741652 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_change_detections         postgres    false    2814            ;           2606    742151    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY test_change_detections.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 X   ALTER TABLE ONLY test_change_detections.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_change_detections         postgres    false    2865            
;           2606    742061 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_change_detections         postgres    false    2855            �:           2606    741672 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_change_detections         postgres    false    2815            0;           2606    742232 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_change_detections         postgres    false    2874            ;           2606    742097 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_change_detections         postgres    false    2859            �:           2606    741779 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_change_detections         postgres    false    2824            ;           2606    742142    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_change_detections.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_change_detections.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_change_detections         postgres    false    2864            �:           2606    741686    lc_terreno lc_terreno_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_change_detections         postgres    false    2816            �:           2606    741751 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_change_detections         postgres    false    2821            D;           2606    742322 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_change_detections         postgres    false    2884            �:           2606    741792 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 j   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_change_detections         postgres    false    2825            $;           2606    742178 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 r   ALTER TABLE ONLY test_change_detections.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_change_detections         postgres    false    2868            <;           2606    742286 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_change_detections         postgres    false    2880            �:           2606    741944    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY test_change_detections.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 T   ALTER TABLE ONLY test_change_detections.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_change_detections         postgres    false    2842            B;           2606    742313 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_change_detections         postgres    false    2883            J;           2606    742349 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 v   ALTER TABLE ONLY test_change_detections.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_change_detections         postgres    false    2887            :           2606    741373    snr_derecho snr_derecho_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_change_detections.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_change_detections.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_change_detections         postgres    false    2789            Z;           2606    742421 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_change_detections         postgres    false    2895            :           2606    741382 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 z   ALTER TABLE ONLY test_change_detections.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_change_detections         postgres    false    2790            :           2606    741392 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 p   ALTER TABLE ONLY test_change_detections.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_change_detections         postgres    false    2791            :           2606    741402 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY test_change_detections.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 b   ALTER TABLE ONLY test_change_detections.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_change_detections         postgres    false    2792            �:           2606    741881 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY test_change_detections.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 \   ALTER TABLE ONLY test_change_detections.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_change_detections         postgres    false    2835            �:           2606    741890 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 l   ALTER TABLE ONLY test_change_detections.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_change_detections         postgres    false    2836            !:           2606    741423 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_change_detections.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 d   ALTER TABLE ONLY test_change_detections.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_change_detections         postgres    false    2794            $:           2606    741431 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY test_change_detections.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 f   ALTER TABLE ONLY test_change_detections.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_change_detections         postgres    false    2795            :           2606    741412    snr_titular snr_titular_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY test_change_detections.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 V   ALTER TABLE ONLY test_change_detections.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_change_detections         postgres    false    2793            e;           2606    742464 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 b   ALTER TABLE ONLY test_change_detections.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_change_detections         postgres    false    2900    2900            �:           2606    741809 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_change_detections.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 ^   ALTER TABLE ONLY test_change_detections.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_change_detections         postgres    false    2826            b;           2606    742456 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_change_detections.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 d   ALTER TABLE ONLY test_change_detections.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_change_detections         postgres    false    2899            �:           2606    741815 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY test_change_detections.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 `   ALTER TABLE ONLY test_change_detections.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_change_detections         postgres    false    2827            �:           2606    741823 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 h   ALTER TABLE ONLY test_change_detections.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_change_detections         postgres    false    2828            �:           2606    741845 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 \   ALTER TABLE ONLY test_change_detections.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_change_detections         postgres    false    2831    2831            �:           2606    741831 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_change_detections.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 b   ALTER TABLE ONLY test_change_detections.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_change_detections         postgres    false    2829            9           1259    740866 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_change_detections.cc_metodooperacion USING btree (col_transformacion_transformacion);
 U   DROP INDEX test_change_detections.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_change_detections         postgres    false    2737            "9           1259    740877 &   col_areavalor_lc_construccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_change_detections.col_areavalor USING btree (lc_construccion_area);
 J   DROP INDEX test_change_detections.col_areavalor_lc_construccion_area_idx;
       test_change_detections         postgres    false    2738            #9           1259    740879 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_change_detections.col_areavalor USING btree (lc_servidumbretransito_area);
 P   DROP INDEX test_change_detections.col_areavalor_lc_servidumbretransito_rea_idx;
       test_change_detections         postgres    false    2738            $9           1259    740878 !   col_areavalor_lc_terreno_area_idx    INDEX     v   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_change_detections.col_areavalor USING btree (lc_terreno_area);
 E   DROP INDEX test_change_detections.col_areavalor_lc_terreno_area_idx;
       test_change_detections         postgres    false    2738            %9           1259    740880 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_change_detections.col_areavalor USING btree (lc_unidadconstruccion_area);
 P   DROP INDEX test_change_detections.col_areavalor_lc_unidadconstruccion_area_idx;
       test_change_detections         postgres    false    2738            (9           1259    740876    col_areavalor_tipo_idx    INDEX     `   CREATE INDEX col_areavalor_tipo_idx ON test_change_detections.col_areavalor USING btree (tipo);
 :   DROP INDEX test_change_detections.col_areavalor_tipo_idx;
       test_change_detections         postgres    false    2738            �9           1259    741143 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_change_detections.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 [   DROP INDEX test_change_detections.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_change_detections         postgres    false    2765            �9           1259    741142 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_change_detections.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 Y   DROP INDEX test_change_detections.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_change_detections         postgres    false    2765            �9           1259    741144 #   col_baunitcomointeresado_unidad_idx    INDEX     z   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_change_detections.col_baunitcomointeresado USING btree (unidad);
 G   DROP INDEX test_change_detections.col_baunitcomointeresado_unidad_idx;
       test_change_detections         postgres    false    2765            �9           1259    741051 $   col_baunitfuente_fuente_espacial_idx    INDEX     |   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_change_detections.col_baunitfuente USING btree (fuente_espacial);
 H   DROP INDEX test_change_detections.col_baunitfuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2755            �9           1259    741052    col_baunitfuente_unidad_idx    INDEX     j   CREATE INDEX col_baunitfuente_unidad_idx ON test_change_detections.col_baunitfuente USING btree (unidad);
 ?   DROP INDEX test_change_detections.col_baunitfuente_unidad_idx;
       test_change_detections         postgres    false    2755            �9           1259    741066    col_cclfuente_ccl_idx    INDEX     ^   CREATE INDEX col_cclfuente_ccl_idx ON test_change_detections.col_cclfuente USING btree (ccl);
 9   DROP INDEX test_change_detections.col_cclfuente_ccl_idx;
       test_change_detections         postgres    false    2757            �9           1259    741067 !   col_cclfuente_fuente_espacial_idx    INDEX     v   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_change_detections.col_cclfuente USING btree (fuente_espacial);
 E   DROP INDEX test_change_detections.col_cclfuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2757            �9           1259    741106     col_clfuente_fuente_espacial_idx    INDEX     t   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_change_detections.col_clfuente USING btree (fuente_espacial);
 D   DROP INDEX test_change_detections.col_clfuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2761            �9           1259    741085    col_masccl_ccl_mas_idx    INDEX     `   CREATE INDEX col_masccl_ccl_mas_idx ON test_change_detections.col_masccl USING btree (ccl_mas);
 :   DROP INDEX test_change_detections.col_masccl_ccl_mas_idx;
       test_change_detections         postgres    false    2759            �9           1259    741086 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     ~   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_change_detections.col_masccl USING btree (ue_mas_lc_construccion);
 I   DROP INDEX test_change_detections.col_masccl_ue_mas_lc_construccion_idx;
       test_change_detections         postgres    false    2759            �9           1259    741088 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_change_detections.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 M   DROP INDEX test_change_detections.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_change_detections         postgres    false    2759            �9           1259    741087     col_masccl_ue_mas_lc_terreno_idx    INDEX     t   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_change_detections.col_masccl USING btree (ue_mas_lc_terreno);
 D   DROP INDEX test_change_detections.col_masccl_ue_mas_lc_terreno_idx;
       test_change_detections         postgres    false    2759            �9           1259    741089 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_change_detections.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 M   DROP INDEX test_change_detections.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_change_detections         postgres    false    2759            �9           1259    741123 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     |   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_change_detections.col_mascl USING btree (ue_mas_lc_construccion);
 H   DROP INDEX test_change_detections.col_mascl_ue_mas_lc_construccion_idx;
       test_change_detections         postgres    false    2763            �9           1259    741125 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_change_detections.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 L   DROP INDEX test_change_detections.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_change_detections         postgres    false    2763            �9           1259    741124    col_mascl_ue_mas_lc_terreno_idx    INDEX     r   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_change_detections.col_mascl USING btree (ue_mas_lc_terreno);
 C   DROP INDEX test_change_detections.col_mascl_ue_mas_lc_terreno_idx;
       test_change_detections         postgres    false    2763            �9           1259    741126 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_change_detections.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 L   DROP INDEX test_change_detections.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_change_detections         postgres    false    2763            �9           1259    741074    col_menosccl_ccl_menos_idx    INDEX     h   CREATE INDEX col_menosccl_ccl_menos_idx ON test_change_detections.col_menosccl USING btree (ccl_menos);
 >   DROP INDEX test_change_detections.col_menosccl_ccl_menos_idx;
       test_change_detections         postgres    false    2758            �9           1259    741075 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_change_detections.col_menosccl USING btree (ue_menos_lc_construccion);
 M   DROP INDEX test_change_detections.col_menosccl_ue_menos_lc_construccion_idx;
       test_change_detections         postgres    false    2758            �9           1259    741077 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_change_detections.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 O   DROP INDEX test_change_detections.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_change_detections         postgres    false    2758            �9           1259    741076 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     |   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_change_detections.col_menosccl USING btree (ue_menos_lc_terreno);
 H   DROP INDEX test_change_detections.col_menosccl_ue_menos_lc_terreno_idx;
       test_change_detections         postgres    false    2758            �9           1259    741078 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_change_detections.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 O   DROP INDEX test_change_detections.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_change_detections         postgres    false    2758            �9           1259    741113 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_change_detections.col_menoscl USING btree (ue_menos_lc_construccion);
 L   DROP INDEX test_change_detections.col_menoscl_ue_menos_lc_construccion_idx;
       test_change_detections         postgres    false    2762            �9           1259    741115 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_change_detections.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 N   DROP INDEX test_change_detections.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_change_detections         postgres    false    2762            �9           1259    741114 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     z   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_change_detections.col_menoscl USING btree (ue_menos_lc_terreno);
 G   DROP INDEX test_change_detections.col_menoscl_ue_menos_lc_terreno_idx;
       test_change_detections         postgres    false    2762            �9           1259    741116 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_change_detections.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 N   DROP INDEX test_change_detections.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_change_detections         postgres    false    2762            �9           1259    741171    col_miembros_agrupacion_idx    INDEX     j   CREATE INDEX col_miembros_agrupacion_idx ON test_change_detections.col_miembros USING btree (agrupacion);
 ?   DROP INDEX test_change_detections.col_miembros_agrupacion_idx;
       test_change_detections         postgres    false    2768            �9           1259    741170 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_change_detections.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 O   DROP INDEX test_change_detections.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_change_detections         postgres    false    2768            �9           1259    741169 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_change_detections.col_miembros USING btree (interesado_lc_interesado);
 M   DROP INDEX test_change_detections.col_miembros_interesado_lc_interesado_idx;
       test_change_detections         postgres    false    2768            �9           1259    741099    col_puntoccl_ccl_idx    INDEX     \   CREATE INDEX col_puntoccl_ccl_idx ON test_change_detections.col_puntoccl USING btree (ccl);
 8   DROP INDEX test_change_detections.col_puntoccl_ccl_idx;
       test_change_detections         postgres    false    2760            �9           1259    741097 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_change_detections.col_puntoccl USING btree (punto_lc_puntocontrol);
 J   DROP INDEX test_change_detections.col_puntoccl_punto_lc_puntocontrol_idx;
       test_change_detections         postgres    false    2760            �9           1259    741096 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_change_detections.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 O   DROP INDEX test_change_detections.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_change_detections         postgres    false    2760            �9           1259    741098 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_change_detections.col_puntoccl USING btree (punto_lc_puntolindero);
 J   DROP INDEX test_change_detections.col_puntoccl_punto_lc_puntolindero_idx;
       test_change_detections         postgres    false    2760            �9           1259    741134 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     ~   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_change_detections.col_puntocl USING btree (punto_lc_puntocontrol);
 I   DROP INDEX test_change_detections.col_puntocl_punto_lc_puntocontrol_idx;
       test_change_detections         postgres    false    2764            �9           1259    741133 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_change_detections.col_puntocl USING btree (punto_lc_puntolevantamiento);
 N   DROP INDEX test_change_detections.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_change_detections         postgres    false    2764            �9           1259    741135 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     ~   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_change_detections.col_puntocl USING btree (punto_lc_puntolindero);
 I   DROP INDEX test_change_detections.col_puntocl_punto_lc_puntolindero_idx;
       test_change_detections         postgres    false    2764            t9           1259    741030 #   col_puntofuente_fuente_espacial_idx    INDEX     z   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_change_detections.col_puntofuente USING btree (fuente_espacial);
 G   DROP INDEX test_change_detections.col_puntofuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2753            w9           1259    741032 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_change_detections.col_puntofuente USING btree (punto_lc_puntocontrol);
 M   DROP INDEX test_change_detections.col_puntofuente_punto_lc_puntocontrol_idx;
       test_change_detections         postgres    false    2753            x9           1259    741031 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_change_detections.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 R   DROP INDEX test_change_detections.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_change_detections         postgres    false    2753            y9           1259    741033 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_change_detections.col_puntofuente USING btree (punto_lc_puntolindero);
 M   DROP INDEX test_change_detections.col_puntofuente_punto_lc_puntolindero_idx;
       test_change_detections         postgres    false    2753            m9           1259    741015 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_change_detections.col_relacionfuente USING btree (fuente_administrativa);
 P   DROP INDEX test_change_detections.col_relacionfuente_fuente_administrativa_idx;
       test_change_detections         postgres    false    2751            �9           1259    741059 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_change_detections.col_relacionfuenteuespacial USING btree (fuente_espacial);
 R   DROP INDEX test_change_detections.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_change_detections         postgres    false    2756            �9           1259    741151 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_change_detections.col_responsablefuente USING btree (fuente_administrativa);
 S   DROP INDEX test_change_detections.col_responsablefuente_fuente_administrativa_idx;
       test_change_detections         postgres    false    2766            �9           1259    741153 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_change_detections.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 X   DROP INDEX test_change_detections.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_change_detections         postgres    false    2766            �9           1259    741152 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_change_detections.col_responsablefuente USING btree (interesado_lc_interesado);
 V   DROP INDEX test_change_detections.col_responsablefuente_interesado_lc_interesado_idx;
       test_change_detections         postgres    false    2766            a9           1259    740995 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_change_detections.col_rrrfuente USING btree (fuente_administrativa);
 K   DROP INDEX test_change_detections.col_rrrfuente_fuente_administrativa_idx;
       test_change_detections         postgres    false    2749            d9           1259    740997     col_rrrfuente_rrr_lc_derecho_idx    INDEX     t   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_change_detections.col_rrrfuente USING btree (rrr_lc_derecho);
 D   DROP INDEX test_change_detections.col_rrrfuente_rrr_lc_derecho_idx;
       test_change_detections         postgres    false    2749            e9           1259    740996 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     |   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_change_detections.col_rrrfuente USING btree (rrr_lc_restriccion);
 H   DROP INDEX test_change_detections.col_rrrfuente_rrr_lc_restriccion_idx;
       test_change_detections         postgres    false    2749            �9           1259    741160 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_change_detections.col_topografofuente USING btree (fuente_espacial);
 K   DROP INDEX test_change_detections.col_topografofuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2767            �9           1259    741162 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_change_detections.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 V   DROP INDEX test_change_detections.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_change_detections         postgres    false    2767            �9           1259    741161 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_change_detections.col_topografofuente USING btree (topografo_lc_interesado);
 S   DROP INDEX test_change_detections.col_topografofuente_topografo_lc_interesado_idx;
       test_change_detections         postgres    false    2767            ;9           1259    740920 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_change_detections.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 U   DROP INDEX test_change_detections.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_change_detections         postgres    false    2741            <9           1259    740921 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_change_detections.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 U   DROP INDEX test_change_detections.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_change_detections         postgres    false    2741            =9           1259    740922 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_change_detections.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 U   DROP INDEX test_change_detections.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_change_detections         postgres    false    2741            >9           1259    740919 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_change_detections.col_transformacion USING gist (localizacion_transformada);
 T   DROP INDEX test_change_detections.col_transformacion_localizacion_transformada_idx;
       test_change_detections         postgres    false    2741            f9           1259    741008    col_uebaunit_baunit_idx    INDEX     b   CREATE INDEX col_uebaunit_baunit_idx ON test_change_detections.col_uebaunit USING btree (baunit);
 ;   DROP INDEX test_change_detections.col_uebaunit_baunit_idx;
       test_change_detections         postgres    false    2750            i9           1259    741004 #   col_uebaunit_ue_lc_construccion_idx    INDEX     z   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_change_detections.col_uebaunit USING btree (ue_lc_construccion);
 G   DROP INDEX test_change_detections.col_uebaunit_ue_lc_construccion_idx;
       test_change_detections         postgres    false    2750            j9           1259    741006 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_change_detections.col_uebaunit USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_change_detections.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_change_detections         postgres    false    2750            k9           1259    741005    col_uebaunit_ue_lc_terreno_idx    INDEX     p   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_change_detections.col_uebaunit USING btree (ue_lc_terreno);
 B   DROP INDEX test_change_detections.col_uebaunit_ue_lc_terreno_idx;
       test_change_detections         postgres    false    2750            l9           1259    741007 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_change_detections.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_change_detections.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2750            z9           1259    741044     col_uefuente_fuente_espacial_idx    INDEX     t   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_change_detections.col_uefuente USING btree (fuente_espacial);
 D   DROP INDEX test_change_detections.col_uefuente_fuente_espacial_idx;
       test_change_detections         postgres    false    2754            }9           1259    741040 #   col_uefuente_ue_lc_construccion_idx    INDEX     z   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_change_detections.col_uefuente USING btree (ue_lc_construccion);
 G   DROP INDEX test_change_detections.col_uefuente_ue_lc_construccion_idx;
       test_change_detections         postgres    false    2754            ~9           1259    741042 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_change_detections.col_uefuente USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_change_detections.col_uefuente_ue_lc_servidumbretransito_idx;
       test_change_detections         postgres    false    2754            9           1259    741041    col_uefuente_ue_lc_terreno_idx    INDEX     p   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_change_detections.col_uefuente USING btree (ue_lc_terreno);
 B   DROP INDEX test_change_detections.col_uefuente_ue_lc_terreno_idx;
       test_change_detections         postgres    false    2754            �9           1259    741043 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_change_detections.col_uefuente USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_change_detections.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2754            [9           1259    740985 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_change_detections.col_ueuegrupo USING btree (parte_lc_construccion);
 K   DROP INDEX test_change_detections.col_ueuegrupo_parte_lc_construccion_idx;
       test_change_detections         postgres    false    2748            \9           1259    740987 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_change_detections.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 P   DROP INDEX test_change_detections.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_change_detections         postgres    false    2748            ]9           1259    740986 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     x   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_change_detections.col_ueuegrupo USING btree (parte_lc_terreno);
 F   DROP INDEX test_change_detections.col_ueuegrupo_parte_lc_terreno_idx;
       test_change_detections         postgres    false    2748            ^9           1259    740988 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_change_detections.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 P   DROP INDEX test_change_detections.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_change_detections         postgres    false    2748            p9           1259    741022 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_change_detections.col_unidadfuente USING btree (fuente_administrativa);
 N   DROP INDEX test_change_detections.col_unidadfuente_fuente_administrativa_idx;
       test_change_detections         postgres    false    2752            s9           1259    741023    col_unidadfuente_unidad_idx    INDEX     j   CREATE INDEX col_unidadfuente_unidad_idx ON test_change_detections.col_unidadfuente USING btree (unidad);
 ?   DROP INDEX test_change_detections.col_unidadfuente_unidad_idx;
       test_change_detections         postgres    false    2752            T9           1259    740975 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_change_detections.col_volumenvalor USING btree (lc_construccion_volumen);
 P   DROP INDEX test_change_detections.col_volumenvalor_lc_construccion_volumen_idx;
       test_change_detections         postgres    false    2747            U9           1259    740977 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_change_detections.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 S   DROP INDEX test_change_detections.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_change_detections         postgres    false    2747            V9           1259    740976 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_change_detections.col_volumenvalor USING btree (lc_terreno_volumen);
 K   DROP INDEX test_change_detections.col_volumenvalor_lc_terreno_volumen_idx;
       test_change_detections         postgres    false    2747            W9           1259    740978 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_change_detections.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 S   DROP INDEX test_change_detections.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_change_detections         postgres    false    2747            Z9           1259    740974    col_volumenvalor_tipo_idx    INDEX     f   CREATE INDEX col_volumenvalor_tipo_idx ON test_change_detections.col_volumenvalor USING btree (tipo);
 =   DROP INDEX test_change_detections.col_volumenvalor_tipo_idx;
       test_change_detections         postgres    false    2747            O9           1259    740967 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_change_detections.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 M   DROP INDEX test_change_detections.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_change_detections         postgres    false    2746            P9           1259    740966 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_change_detections.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 M   DROP INDEX test_change_detections.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_change_detections         postgres    false    2746            S9           1259    740965 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_change_detections.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 M   DROP INDEX test_change_detections.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_change_detections         postgres    false    2746            )9           1259    740892 $   extdireccion_clase_via_principal_idx    INDEX     |   CREATE INDEX extdireccion_clase_via_principal_idx ON test_change_detections.extdireccion USING btree (clase_via_principal);
 H   DROP INDEX test_change_detections.extdireccion_clase_via_principal_idx;
       test_change_detections         postgres    false    2739            *9           1259    740896 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_change_detections.extdireccion USING btree (extinteresado_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_extinteresado_ext_drccn_id_idx;
       test_change_detections         postgres    false    2739            +9           1259    740895 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_change_detections.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_change_detections         postgres    false    2739            ,9           1259    740897 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_change_detections.extdireccion USING btree (lc_construccion_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_change_detections         postgres    false    2739            -9           1259    740901 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_change_detections.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_change_detections         postgres    false    2739            .9           1259    740898 $   extdireccion_lc_predio_direccion_idx    INDEX     |   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_change_detections.extdireccion USING btree (lc_predio_direccion);
 H   DROP INDEX test_change_detections.extdireccion_lc_predio_direccion_idx;
       test_change_detections         postgres    false    2739            /9           1259    740900 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_change_detections.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_change_detections         postgres    false    2739            09           1259    740899 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_change_detections.extdireccion USING btree (lc_terreno_ext_direccion_id);
 O   DROP INDEX test_change_detections.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_change_detections         postgres    false    2739            19           1259    740891    extdireccion_localizacion_idx    INDEX     m   CREATE INDEX extdireccion_localizacion_idx ON test_change_detections.extdireccion USING gist (localizacion);
 A   DROP INDEX test_change_detections.extdireccion_localizacion_idx;
       test_change_detections         postgres    false    2739            49           1259    740893    extdireccion_sector_ciudad_idx    INDEX     p   CREATE INDEX extdireccion_sector_ciudad_idx ON test_change_detections.extdireccion USING btree (sector_ciudad);
 B   DROP INDEX test_change_detections.extdireccion_sector_ciudad_idx;
       test_change_detections         postgres    false    2739            59           1259    740894    extdireccion_sector_predio_idx    INDEX     p   CREATE INDEX extdireccion_sector_predio_idx ON test_change_detections.extdireccion USING btree (sector_predio);
 B   DROP INDEX test_change_detections.extdireccion_sector_predio_idx;
       test_change_detections         postgres    false    2739            69           1259    740890    extdireccion_tipo_direccion_idx    INDEX     r   CREATE INDEX extdireccion_tipo_direccion_idx ON test_change_detections.extdireccion USING btree (tipo_direccion);
 C   DROP INDEX test_change_detections.extdireccion_tipo_direccion_idx;
       test_change_detections         postgres    false    2739            H9           1259    740947 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_change_detections.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 P   DROP INDEX test_change_detections.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_change_detections         postgres    false    2744            I9           1259    740948 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_change_detections.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 P   DROP INDEX test_change_detections.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_change_detections         postgres    false    2744            J9           1259    740949 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_change_detections.extinteresado USING btree (lc_interesado_ext_pid);
 K   DROP INDEX test_change_detections.extinteresado_lc_interesado_ext_pid_idx;
       test_change_detections         postgres    false    2744            79           1259    740908 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_change_detections.fraccion USING btree (col_miembros_participacion);
 K   DROP INDEX test_change_detections.fraccion_col_miembros_participacion_idx;
       test_change_detections         postgres    false    2740            89           1259    740909 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_change_detections.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 K   DROP INDEX test_change_detections.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_change_detections         postgres    false    2740            �9           1259    741181    gc_barrio_geometria_idx    INDEX     a   CREATE INDEX gc_barrio_geometria_idx ON test_change_detections.gc_barrio USING gist (geometria);
 ;   DROP INDEX test_change_detections.gc_barrio_geometria_idx;
       test_change_detections         postgres    false    2769            �9           1259    741191 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_change_detections.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 X   DROP INDEX test_change_detections.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2770            �9           1259    741201 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_change_detections.gc_comisionesconstruccion USING gist (geometria);
 K   DROP INDEX test_change_detections.gc_comisionesconstruccion_geometria_idx;
       test_change_detections         postgres    false    2771            �9           1259    741221 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_change_detections.gc_comisionesunidadconstruccion USING gist (geometria);
 L   DROP INDEX test_change_detections.gc_comisionesnddcnstrccion_geometria_idx;
       test_change_detections         postgres    false    2773            �9           1259    741211 "   gc_comisionesterreno_geometria_idx    INDEX     w   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_change_detections.gc_comisionesterreno USING gist (geometria);
 F   DROP INDEX test_change_detections.gc_comisionesterreno_geometria_idx;
       test_change_detections         postgres    false    2772            �9           1259    741233    gc_construccion_gc_predio_idx    INDEX     n   CREATE INDEX gc_construccion_gc_predio_idx ON test_change_detections.gc_construccion USING btree (gc_predio);
 A   DROP INDEX test_change_detections.gc_construccion_gc_predio_idx;
       test_change_detections         postgres    false    2774            �9           1259    741232    gc_construccion_geometria_idx    INDEX     m   CREATE INDEX gc_construccion_geometria_idx ON test_change_detections.gc_construccion USING gist (geometria);
 A   DROP INDEX test_change_detections.gc_construccion_geometria_idx;
       test_change_detections         postgres    false    2774            �9           1259    741231 %   gc_construccion_tipo_construccion_idx    INDEX     ~   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_change_detections.gc_construccion USING btree (tipo_construccion);
 I   DROP INDEX test_change_detections.gc_construccion_tipo_construccion_idx;
       test_change_detections         postgres    false    2774            :           1259    741366    gc_copropiedad_gc_matriz_idx    INDEX     l   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_change_detections.gc_copropiedad USING btree (gc_matriz);
 @   DROP INDEX test_change_detections.gc_copropiedad_gc_matriz_idx;
       test_change_detections         postgres    false    2788            	:           1259    741367    gc_copropiedad_gc_unidad_idx    INDEX     l   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_change_detections.gc_copropiedad USING btree (gc_unidad);
 @   DROP INDEX test_change_detections.gc_copropiedad_gc_unidad_idx;
       test_change_detections         postgres    false    2788            
:           1259    743109    gc_copropiedad_gc_unidad_key    INDEX     s   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_change_detections.gc_copropiedad USING btree (gc_unidad);
 @   DROP INDEX test_change_detections.gc_copropiedad_gc_unidad_key;
       test_change_detections         postgres    false    2788            �9           1259    741240 "   gc_datosphcondominio_gc_predio_idx    INDEX     x   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_change_detections.gc_datosphcondominio USING btree (gc_predio);
 F   DROP INDEX test_change_detections.gc_datosphcondominio_gc_predio_idx;
       test_change_detections         postgres    false    2775            �9           1259    741247 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_change_detections.gc_datostorreph USING btree (gc_datosphcondominio);
 L   DROP INDEX test_change_detections.gc_datostorreph_gc_datosphcondominio_idx;
       test_change_detections         postgres    false    2776            �9           1259    741258 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_change_detections.gc_direccion USING btree (gc_prediocatastro_direcciones);
 O   DROP INDEX test_change_detections.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_change_detections         postgres    false    2777            �9           1259    741257 %   gc_direccion_geometria_referencia_idx    INDEX     }   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_change_detections.gc_direccion USING gist (geometria_referencia);
 I   DROP INDEX test_change_detections.gc_direccion_geometria_referencia_idx;
       test_change_detections         postgres    false    2777            �9           1259    741265 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_change_detections.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 R   DROP INDEX test_change_detections.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_change_detections         postgres    false    2778            �9           1259    741275    gc_manzana_geometria_idx    INDEX     c   CREATE INDEX gc_manzana_geometria_idx ON test_change_detections.gc_manzana USING gist (geometria);
 <   DROP INDEX test_change_detections.gc_manzana_geometria_idx;
       test_change_detections         postgres    false    2779            �9           1259    741285    gc_perimetro_geometria_idx    INDEX     g   CREATE INDEX gc_perimetro_geometria_idx ON test_change_detections.gc_perimetro USING gist (geometria);
 >   DROP INDEX test_change_detections.gc_perimetro_geometria_idx;
       test_change_detections         postgres    false    2780            :           1259    741358 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_change_detections.gc_prediocatastro USING btree (condicion_predio);
 J   DROP INDEX test_change_detections.gc_prediocatastro_condicion_predio_idx;
       test_change_detections         postgres    false    2787            :           1259    741359 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_change_detections.gc_prediocatastro USING btree (sistema_procedencia_datos);
 S   DROP INDEX test_change_detections.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_change_detections         postgres    false    2787            �9           1259    741295 %   gc_propietario_gc_predio_catastro_idx    INDEX     ~   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_change_detections.gc_propietario USING btree (gc_predio_catastro);
 I   DROP INDEX test_change_detections.gc_propietario_gc_predio_catastro_idx;
       test_change_detections         postgres    false    2781            �9           1259    741305    gc_sectorrural_geometria_idx    INDEX     k   CREATE INDEX gc_sectorrural_geometria_idx ON test_change_detections.gc_sectorrural USING gist (geometria);
 @   DROP INDEX test_change_detections.gc_sectorrural_geometria_idx;
       test_change_detections         postgres    false    2782            �9           1259    741315    gc_sectorurbano_geometria_idx    INDEX     m   CREATE INDEX gc_sectorurbano_geometria_idx ON test_change_detections.gc_sectorurbano USING gist (geometria);
 A   DROP INDEX test_change_detections.gc_sectorurbano_geometria_idx;
       test_change_detections         postgres    false    2783            �9           1259    741326    gc_terreno_gc_predio_idx    INDEX     d   CREATE INDEX gc_terreno_gc_predio_idx ON test_change_detections.gc_terreno USING btree (gc_predio);
 <   DROP INDEX test_change_detections.gc_terreno_gc_predio_idx;
       test_change_detections         postgres    false    2784            �9           1259    741325    gc_terreno_geometria_idx    INDEX     c   CREATE INDEX gc_terreno_geometria_idx ON test_change_detections.gc_terreno USING gist (geometria);
 <   DROP INDEX test_change_detections.gc_terreno_geometria_idx;
       test_change_detections         postgres    false    2784            �9           1259    741338 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_change_detections.gc_unidadconstruccion USING btree (gc_construccion);
 M   DROP INDEX test_change_detections.gc_unidadconstruccion_gc_construccion_idx;
       test_change_detections         postgres    false    2785            �9           1259    741337 #   gc_unidadconstruccion_geometria_idx    INDEX     y   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_change_detections.gc_unidadconstruccion USING gist (geometria);
 G   DROP INDEX test_change_detections.gc_unidadconstruccion_geometria_idx;
       test_change_detections         postgres    false    2785             :           1259    741336 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_change_detections.gc_unidadconstruccion USING btree (tipo_construccion);
 O   DROP INDEX test_change_detections.gc_unidadconstruccion_tipo_construccion_idx;
       test_change_detections         postgres    false    2785            :           1259    741348    gc_vereda_geometria_idx    INDEX     a   CREATE INDEX gc_vereda_geometria_idx ON test_change_detections.gc_vereda USING gist (geometria);
 ;   DROP INDEX test_change_detections.gc_vereda_geometria_idx;
       test_change_detections         postgres    false    2786            9           1259    740835     gm_surface2dlistvalue_avalue_idx    INDEX     s   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_change_detections.gm_surface2dlistvalue USING gist (avalue);
 D   DROP INDEX test_change_detections.gm_surface2dlistvalue_avalue_idx;
       test_change_detections         postgres    false    2733            9           1259    740836 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_change_detections.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 X   DROP INDEX test_change_detections.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_change_detections         postgres    false    2733            9           1259    740852     gm_surface3dlistvalue_avalue_idx    INDEX     s   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_change_detections.gm_surface3dlistvalue USING gist (avalue);
 D   DROP INDEX test_change_detections.gm_surface3dlistvalue_avalue_idx;
       test_change_detections         postgres    false    2735            9           1259    740853 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_change_detections.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 X   DROP INDEX test_change_detections.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_change_detections         postgres    false    2735            C9           1259    740937    imagen_extinteresado_firma_idx    INDEX     p   CREATE INDEX imagen_extinteresado_firma_idx ON test_change_detections.imagen USING btree (extinteresado_firma);
 B   DROP INDEX test_change_detections.imagen_extinteresado_firma_idx;
       test_change_detections         postgres    false    2743            D9           1259    740936 #   imagen_extinteresado_fotografia_idx    INDEX     z   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_change_detections.imagen USING btree (extinteresado_fotografia);
 G   DROP INDEX test_change_detections.imagen_extinteresado_fotografia_idx;
       test_change_detections         postgres    false    2743            E9           1259    740935 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_change_detections.imagen USING btree (extinteresado_huella_dactilar);
 I   DROP INDEX test_change_detections.imagen_extinteresado_huell_dctlar_idx;
       test_change_detections         postgres    false    2743            ':           1259    741444 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_change_detections.ini_predioinsumos USING btree (gc_predio_catastro);
 L   DROP INDEX test_change_detections.ini_predioinsumos_gc_predio_catastro_idx;
       test_change_detections         postgres    false    2796            *:           1259    741445 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_change_detections.ini_predioinsumos USING btree (snr_predio_juridico);
 M   DROP INDEX test_change_detections.ini_predioinsumos_snr_predio_juridico_idx;
       test_change_detections         postgres    false    2796            +:           1259    741443 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_change_detections.ini_predioinsumos USING btree (tipo_emparejamiento);
 M   DROP INDEX test_change_detections.ini_predioinsumos_tipo_emparejamiento_idx;
       test_change_detections         postgres    false    2796            .:           1259    741456 !   lc_agrupacioninteresados_tipo_idx    INDEX     v   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_change_detections.lc_agrupacioninteresados USING btree (tipo);
 E   DROP INDEX test_change_detections.lc_agrupacioninteresados_tipo_idx;
       test_change_detections         postgres    false    2797            �:           1259    741698 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_change_detections.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 Y   DROP INDEX test_change_detections.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_change_detections         postgres    false    2817            �:           1259    741697 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_change_detections.lc_calificacionconvencional USING btree (tipo_calificar);
 Q   DROP INDEX test_change_detections.lc_calificacionconvencinal_tipo_calificar_idx;
       test_change_detections         postgres    false    2817            �:           1259    741707 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_change_detections.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 Y   DROP INDEX test_change_detections.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_change_detections         postgres    false    2818            �:           1259    741706 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_change_detections.lc_calificacionnoconvencional USING btree (tipo_anexo);
 M   DROP INDEX test_change_detections.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_change_detections         postgres    false    2818            /:           1259    741469    lc_construccion_dimension_idx    INDEX     n   CREATE INDEX lc_construccion_dimension_idx ON test_change_detections.lc_construccion USING btree (dimension);
 A   DROP INDEX test_change_detections.lc_construccion_dimension_idx;
       test_change_detections         postgres    false    2798            0:           1259    741471    lc_construccion_geometria_idx    INDEX     m   CREATE INDEX lc_construccion_geometria_idx ON test_change_detections.lc_construccion USING gist (geometria);
 A   DROP INDEX test_change_detections.lc_construccion_geometria_idx;
       test_change_detections         postgres    false    2798            3:           1259    741470 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_change_detections.lc_construccion USING btree (relacion_superficie);
 K   DROP INDEX test_change_detections.lc_construccion_relacion_superficie_idx;
       test_change_detections         postgres    false    2798            4:           1259    741467 %   lc_construccion_tipo_construccion_idx    INDEX     ~   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_change_detections.lc_construccion USING btree (tipo_construccion);
 I   DROP INDEX test_change_detections.lc_construccion_tipo_construccion_idx;
       test_change_detections         postgres    false    2798            5:           1259    741468     lc_construccion_tipo_dominio_idx    INDEX     t   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_change_detections.lc_construccion USING btree (tipo_dominio);
 D   DROP INDEX test_change_detections.lc_construccion_tipo_dominio_idx;
       test_change_detections         postgres    false    2798            6:           1259    741484 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_change_detections.lc_contactovisita USING btree (lc_datos_adicionales);
 N   DROP INDEX test_change_detections.lc_contactovisita_lc_datos_adicionales_idx;
       test_change_detections         postgres    false    2799            9:           1259    741483 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_change_detections.lc_contactovisita USING btree (relacion_con_predio);
 M   DROP INDEX test_change_detections.lc_contactovisita_relacion_con_predio_idx;
       test_change_detections         postgres    false    2799            ::           1259    741482 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_change_detections.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 T   DROP INDEX test_change_detections.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_change_detections         postgres    false    2799            ;:           1259    741492 "   lc_datosphcondominio_lc_predio_idx    INDEX     x   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_change_detections.lc_datosphcondominio USING btree (lc_predio);
 F   DROP INDEX test_change_detections.lc_datosphcondominio_lc_predio_idx;
       test_change_detections         postgres    false    2800            �:           1259    741721 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 R   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_change_detections         postgres    false    2819            �:           1259    741720 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 N   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_change_detections         postgres    false    2819            �:           1259    741719 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 X   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_change_detections         postgres    false    2819            �:           1259    741724 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 L   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_change_detections         postgres    false    2819            �:           1259    741718 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 ]   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_change_detections         postgres    false    2819            �:           1259    741723 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 S   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_change_detections         postgres    false    2819            �:           1259    741722 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_change_detections.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 ]   DROP INDEX test_change_detections.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_change_detections         postgres    false    2819            >:           1259    741505 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_change_detections.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 M   DROP INDEX test_change_detections.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_change_detections         postgres    false    2801            ?:           1259    741504 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_change_detections.lc_derecho USING btree (interesado_lc_interesado);
 K   DROP INDEX test_change_detections.lc_derecho_interesado_lc_interesado_idx;
       test_change_detections         postgres    false    2801            B:           1259    741503    lc_derecho_tipo_idx    INDEX     Z   CREATE INDEX lc_derecho_tipo_idx ON test_change_detections.lc_derecho USING btree (tipo);
 7   DROP INDEX test_change_detections.lc_derecho_tipo_idx;
       test_change_detections         postgres    false    2801            C:           1259    741506    lc_derecho_unidad_idx    INDEX     ^   CREATE INDEX lc_derecho_unidad_idx ON test_change_detections.lc_derecho USING btree (unidad);
 9   DROP INDEX test_change_detections.lc_derecho_unidad_idx;
       test_change_detections         postgres    false    2801            D:           1259    741513 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_change_detections.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 Z   DROP INDEX test_change_detections.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_change_detections         postgres    false    2802            I:           1259    741521 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_change_detections.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 ]   DROP INDEX test_change_detections.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_change_detections         postgres    false    2803            J:           1259    741520 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_change_detections.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 O   DROP INDEX test_change_detections.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_change_detections         postgres    false    2803            K:           1259    741533 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_change_detections.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 U   DROP INDEX test_change_detections.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_change_detections         postgres    false    2804            N:           1259    741532     lc_fuenteadministrativa_tipo_idx    INDEX     t   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_change_detections.lc_fuenteadministrativa USING btree (tipo);
 D   DROP INDEX test_change_detections.lc_fuenteadministrativa_tipo_idx;
       test_change_detections         postgres    false    2804            O:           1259    741534 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_change_detections.lc_fuenteadministrativa USING btree (tipo_principal);
 N   DROP INDEX test_change_detections.lc_fuenteadministrativa_tipo_principal_idx;
       test_change_detections         postgres    false    2804            P:           1259    741546 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_change_detections.lc_fuenteespacial USING btree (estado_disponibilidad);
 O   DROP INDEX test_change_detections.lc_fuenteespacial_estado_disponibilidad_idx;
       test_change_detections         postgres    false    2805            S:           1259    741545    lc_fuenteespacial_tipo_idx    INDEX     h   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_change_detections.lc_fuenteespacial USING btree (tipo);
 >   DROP INDEX test_change_detections.lc_fuenteespacial_tipo_idx;
       test_change_detections         postgres    false    2805            T:           1259    741547 $   lc_fuenteespacial_tipo_principal_idx    INDEX     |   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_change_detections.lc_fuenteespacial USING btree (tipo_principal);
 H   DROP INDEX test_change_detections.lc_fuenteespacial_tipo_principal_idx;
       test_change_detections         postgres    false    2805            U:           1259    741555 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_change_detections.lc_grupocalificacion USING btree (clase_calificacion);
 O   DROP INDEX test_change_detections.lc_grupocalificacion_clase_calificacion_idx;
       test_change_detections         postgres    false    2806            V:           1259    741556 %   lc_grupocalificacion_conservacion_idx    INDEX     ~   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_change_detections.lc_grupocalificacion USING btree (conservacion);
 I   DROP INDEX test_change_detections.lc_grupocalificacion_conservacion_idx;
       test_change_detections         postgres    false    2806            W:           1259    741557 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_change_detections.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 W   DROP INDEX test_change_detections.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_change_detections         postgres    false    2806            Z:           1259    741571    lc_interesado_grupo_etnico_idx    INDEX     p   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_change_detections.lc_interesado USING btree (grupo_etnico);
 B   DROP INDEX test_change_detections.lc_interesado_grupo_etnico_idx;
       test_change_detections         postgres    false    2807            ]:           1259    741570    lc_interesado_sexo_idx    INDEX     `   CREATE INDEX lc_interesado_sexo_idx ON test_change_detections.lc_interesado USING btree (sexo);
 :   DROP INDEX test_change_detections.lc_interesado_sexo_idx;
       test_change_detections         postgres    false    2807            ^:           1259    741569     lc_interesado_tipo_documento_idx    INDEX     t   CREATE INDEX lc_interesado_tipo_documento_idx ON test_change_detections.lc_interesado USING btree (tipo_documento);
 D   DROP INDEX test_change_detections.lc_interesado_tipo_documento_idx;
       test_change_detections         postgres    false    2807            _:           1259    741568    lc_interesado_tipo_idx    INDEX     `   CREATE INDEX lc_interesado_tipo_idx ON test_change_detections.lc_interesado USING btree (tipo);
 :   DROP INDEX test_change_detections.lc_interesado_tipo_idx;
       test_change_detections         postgres    false    2807            `:           1259    741582 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_change_detections.lc_interesadocontacto USING btree (lc_interesado);
 K   DROP INDEX test_change_detections.lc_interesadocontacto_lc_interesado_idx;
       test_change_detections         postgres    false    2808            c:           1259    741593    lc_lindero_geometria_idx    INDEX     c   CREATE INDEX lc_lindero_geometria_idx ON test_change_detections.lc_lindero USING gist (geometria);
 <   DROP INDEX test_change_detections.lc_lindero_geometria_idx;
       test_change_detections         postgres    false    2809            f:           1259    741602 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_change_detections.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 S   DROP INDEX test_change_detections.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_change_detections         postgres    false    2810            i:           1259    741601 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_change_detections.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 V   DROP INDEX test_change_detections.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_change_detections         postgres    false    2810            l:           1259    741611 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_change_detections.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 L   DROP INDEX test_change_detections.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_change_detections         postgres    false    2811            m:           1259    741610 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_change_detections.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 N   DROP INDEX test_change_detections.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_change_detections         postgres    false    2811            n:           1259    741623    lc_predio_condicion_predio_idx    INDEX     p   CREATE INDEX lc_predio_condicion_predio_idx ON test_change_detections.lc_predio USING btree (condicion_predio);
 B   DROP INDEX test_change_detections.lc_predio_condicion_predio_idx;
       test_change_detections         postgres    false    2812            �:           1259    741761 %   lc_predio_copropiedad_copropiedad_idx    INDEX     ~   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_change_detections.lc_predio_copropiedad USING btree (copropiedad);
 I   DROP INDEX test_change_detections.lc_predio_copropiedad_copropiedad_idx;
       test_change_detections         postgres    false    2822            �:           1259    741760     lc_predio_copropiedad_predio_idx    INDEX     t   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_change_detections.lc_predio_copropiedad USING btree (predio);
 D   DROP INDEX test_change_detections.lc_predio_copropiedad_predio_idx;
       test_change_detections         postgres    false    2822            �:           1259    743635     lc_predio_copropiedad_predio_key    INDEX     {   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_change_detections.lc_predio_copropiedad USING btree (predio);
 D   DROP INDEX test_change_detections.lc_predio_copropiedad_predio_key;
       test_change_detections         postgres    false    2822            �:           1259    741768 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_change_detections.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 U   DROP INDEX test_change_detections.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_change_detections         postgres    false    2823            �:           1259    741769 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_change_detections.lc_predio_ini_predioinsumos USING btree (lc_predio);
 L   DROP INDEX test_change_detections.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_change_detections         postgres    false    2823            q:           1259    741622    lc_predio_tipo_idx    INDEX     X   CREATE INDEX lc_predio_tipo_idx ON test_change_detections.lc_predio USING btree (tipo);
 6   DROP INDEX test_change_detections.lc_predio_tipo_idx;
       test_change_detections         postgres    false    2812            r:           1259    741638    lc_puntocontrol_geometria_idx    INDEX     m   CREATE INDEX lc_puntocontrol_geometria_idx ON test_change_detections.lc_puntocontrol USING gist (geometria);
 A   DROP INDEX test_change_detections.lc_puntocontrol_geometria_idx;
       test_change_detections         postgres    false    2813            s:           1259    741637 $   lc_puntocontrol_metodoproduccion_idx    INDEX     |   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_change_detections.lc_puntocontrol USING btree (metodoproduccion);
 H   DROP INDEX test_change_detections.lc_puntocontrol_metodoproduccion_idx;
       test_change_detections         postgres    false    2813            v:           1259    741636 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_change_detections.lc_puntocontrol USING btree (posicion_interpolacion);
 N   DROP INDEX test_change_detections.lc_puntocontrol_posicion_interpolacion_idx;
       test_change_detections         postgres    false    2813            w:           1259    741634    lc_puntocontrol_puntotipo_idx    INDEX     n   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_change_detections.lc_puntocontrol USING btree (puntotipo);
 A   DROP INDEX test_change_detections.lc_puntocontrol_puntotipo_idx;
       test_change_detections         postgres    false    2813            x:           1259    741635 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     �   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_change_detections.lc_puntocontrol USING btree (tipo_punto_control);
 J   DROP INDEX test_change_detections.lc_puntocontrol_tipo_punto_control_idx;
       test_change_detections         postgres    false    2813            y:           1259    741639 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_change_detections.lc_puntocontrol USING btree (ue_lc_construccion);
 J   DROP INDEX test_change_detections.lc_puntocontrol_ue_lc_construccion_idx;
       test_change_detections         postgres    false    2813            z:           1259    741641 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_change_detections.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_change_detections.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_change_detections         postgres    false    2813            {:           1259    741640 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     v   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_change_detections.lc_puntocontrol USING btree (ue_lc_terreno);
 E   DROP INDEX test_change_detections.lc_puntocontrol_ue_lc_terreno_idx;
       test_change_detections         postgres    false    2813            |:           1259    741642 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_change_detections.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_change_detections.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2813            �:           1259    741737 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_change_detections.lc_puntolevantamiento USING btree (fotoidentificacion);
 P   DROP INDEX test_change_detections.lc_puntolevantamiento_fotoidentificacion_idx;
       test_change_detections         postgres    false    2820            �:           1259    741740 #   lc_puntolevantamiento_geometria_idx    INDEX     y   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_change_detections.lc_puntolevantamiento USING gist (geometria);
 G   DROP INDEX test_change_detections.lc_puntolevantamiento_geometria_idx;
       test_change_detections         postgres    false    2820            �:           1259    741739 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_change_detections.lc_puntolevantamiento USING btree (metodoproduccion);
 N   DROP INDEX test_change_detections.lc_puntolevantamiento_metodoproduccion_idx;
       test_change_detections         postgres    false    2820            �:           1259    741738 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_change_detections.lc_puntolevantamiento USING btree (posicion_interpolacion);
 T   DROP INDEX test_change_detections.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_change_detections         postgres    false    2820            �:           1259    741735 #   lc_puntolevantamiento_puntotipo_idx    INDEX     z   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_change_detections.lc_puntolevantamiento USING btree (puntotipo);
 G   DROP INDEX test_change_detections.lc_puntolevantamiento_puntotipo_idx;
       test_change_detections         postgres    false    2820            �:           1259    741736 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_change_detections.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 V   DROP INDEX test_change_detections.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_change_detections         postgres    false    2820            �:           1259    741741 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_change_detections.lc_puntolevantamiento USING btree (ue_lc_construccion);
 P   DROP INDEX test_change_detections.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_change_detections         postgres    false    2820            �:           1259    741743 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_change_detections.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 W   DROP INDEX test_change_detections.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_change_detections         postgres    false    2820            �:           1259    741742 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_change_detections.lc_puntolevantamiento USING btree (ue_lc_terreno);
 K   DROP INDEX test_change_detections.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_change_detections         postgres    false    2820            �:           1259    741744 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_change_detections.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 V   DROP INDEX test_change_detections.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2820            }:           1259    741654    lc_puntolindero_acuerdo_idx    INDEX     j   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_change_detections.lc_puntolindero USING btree (acuerdo);
 ?   DROP INDEX test_change_detections.lc_puntolindero_acuerdo_idx;
       test_change_detections         postgres    false    2814            ~:           1259    741655 &   lc_puntolindero_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_change_detections.lc_puntolindero USING btree (fotoidentificacion);
 J   DROP INDEX test_change_detections.lc_puntolindero_fotoidentificacion_idx;
       test_change_detections         postgres    false    2814            :           1259    741658    lc_puntolindero_geometria_idx    INDEX     m   CREATE INDEX lc_puntolindero_geometria_idx ON test_change_detections.lc_puntolindero USING gist (geometria);
 A   DROP INDEX test_change_detections.lc_puntolindero_geometria_idx;
       test_change_detections         postgres    false    2814            �:           1259    741657 $   lc_puntolindero_metodoproduccion_idx    INDEX     |   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_change_detections.lc_puntolindero USING btree (metodoproduccion);
 H   DROP INDEX test_change_detections.lc_puntolindero_metodoproduccion_idx;
       test_change_detections         postgres    false    2814            �:           1259    741656 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_change_detections.lc_puntolindero USING btree (posicion_interpolacion);
 N   DROP INDEX test_change_detections.lc_puntolindero_posicion_interpolacion_idx;
       test_change_detections         postgres    false    2814            �:           1259    741653    lc_puntolindero_puntotipo_idx    INDEX     n   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_change_detections.lc_puntolindero USING btree (puntotipo);
 A   DROP INDEX test_change_detections.lc_puntolindero_puntotipo_idx;
       test_change_detections         postgres    false    2814            �:           1259    741659 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_change_detections.lc_puntolindero USING btree (ue_lc_construccion);
 J   DROP INDEX test_change_detections.lc_puntolindero_ue_lc_construccion_idx;
       test_change_detections         postgres    false    2814            �:           1259    741661 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_change_detections.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 Q   DROP INDEX test_change_detections.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_change_detections         postgres    false    2814            �:           1259    741660 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     v   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_change_detections.lc_puntolindero USING btree (ue_lc_terreno);
 E   DROP INDEX test_change_detections.lc_puntolindero_ue_lc_terreno_idx;
       test_change_detections         postgres    false    2814            �:           1259    741662 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_change_detections.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 P   DROP INDEX test_change_detections.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_change_detections         postgres    false    2814            �:           1259    741675 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_change_detections.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 Q   DROP INDEX test_change_detections.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_change_detections         postgres    false    2815            �:           1259    741674 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_change_detections.lc_restriccion USING btree (interesado_lc_interesado);
 O   DROP INDEX test_change_detections.lc_restriccion_interesado_lc_interesado_idx;
       test_change_detections         postgres    false    2815            �:           1259    741673    lc_restriccion_tipo_idx    INDEX     b   CREATE INDEX lc_restriccion_tipo_idx ON test_change_detections.lc_restriccion USING btree (tipo);
 ;   DROP INDEX test_change_detections.lc_restriccion_tipo_idx;
       test_change_detections         postgres    false    2815            �:           1259    741676    lc_restriccion_unidad_idx    INDEX     f   CREATE INDEX lc_restriccion_unidad_idx ON test_change_detections.lc_restriccion USING btree (unidad);
 =   DROP INDEX test_change_detections.lc_restriccion_unidad_idx;
       test_change_detections         postgres    false    2815            �:           1259    741780 $   lc_servidumbretransito_dimension_idx    INDEX     |   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_change_detections.lc_servidumbretransito USING btree (dimension);
 H   DROP INDEX test_change_detections.lc_servidumbretransito_dimension_idx;
       test_change_detections         postgres    false    2824            �:           1259    741782 $   lc_servidumbretransito_geometria_idx    INDEX     {   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_change_detections.lc_servidumbretransito USING gist (geometria);
 H   DROP INDEX test_change_detections.lc_servidumbretransito_geometria_idx;
       test_change_detections         postgres    false    2824            �:           1259    741781 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_change_detections.lc_servidumbretransito USING btree (relacion_superficie);
 R   DROP INDEX test_change_detections.lc_servidumbretransito_relacion_superficie_idx;
       test_change_detections         postgres    false    2824            �:           1259    741688    lc_terreno_dimension_idx    INDEX     d   CREATE INDEX lc_terreno_dimension_idx ON test_change_detections.lc_terreno USING btree (dimension);
 <   DROP INDEX test_change_detections.lc_terreno_dimension_idx;
       test_change_detections         postgres    false    2816            �:           1259    741687    lc_terreno_geometria_idx    INDEX     c   CREATE INDEX lc_terreno_geometria_idx ON test_change_detections.lc_terreno USING gist (geometria);
 <   DROP INDEX test_change_detections.lc_terreno_geometria_idx;
       test_change_detections         postgres    false    2816            �:           1259    741689 "   lc_terreno_relacion_superficie_idx    INDEX     x   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_change_detections.lc_terreno USING btree (relacion_superficie);
 F   DROP INDEX test_change_detections.lc_terreno_relacion_superficie_idx;
       test_change_detections         postgres    false    2816            �:           1259    741753 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_change_detections.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 W   DROP INDEX test_change_detections.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_change_detections         postgres    false    2821            �:           1259    741752 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_change_detections.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 O   DROP INDEX test_change_detections.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_change_detections         postgres    false    2821            �:           1259    741799 #   lc_unidadconstruccion_dimension_idx    INDEX     z   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_change_detections.lc_unidadconstruccion USING btree (dimension);
 G   DROP INDEX test_change_detections.lc_unidadconstruccion_dimension_idx;
       test_change_detections         postgres    false    2825            �:           1259    741801 #   lc_unidadconstruccion_geometria_idx    INDEX     y   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_change_detections.lc_unidadconstruccion USING gist (geometria);
 G   DROP INDEX test_change_detections.lc_unidadconstruccion_geometria_idx;
       test_change_detections         postgres    false    2825            �:           1259    741798 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_change_detections.lc_unidadconstruccion USING btree (lc_construccion);
 M   DROP INDEX test_change_detections.lc_unidadconstruccion_lc_construccion_idx;
       test_change_detections         postgres    false    2825            �:           1259    741800 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_change_detections.lc_unidadconstruccion USING btree (relacion_superficie);
 Q   DROP INDEX test_change_detections.lc_unidadconstruccion_relacion_superficie_idx;
       test_change_detections         postgres    false    2825            �:           1259    741794 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_change_detections.lc_unidadconstruccion USING btree (tipo_construccion);
 O   DROP INDEX test_change_detections.lc_unidadconstruccion_tipo_construccion_idx;
       test_change_detections         postgres    false    2825            �:           1259    741793 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_change_detections.lc_unidadconstruccion USING btree (tipo_dominio);
 J   DROP INDEX test_change_detections.lc_unidadconstruccion_tipo_dominio_idx;
       test_change_detections         postgres    false    2825            �:           1259    741796 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     ~   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_change_detections.lc_unidadconstruccion USING btree (tipo_planta);
 I   DROP INDEX test_change_detections.lc_unidadconstruccion_tipo_planta_idx;
       test_change_detections         postgres    false    2825            �:           1259    741795 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_change_detections.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 V   DROP INDEX test_change_detections.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_change_detections         postgres    false    2825            �:           1259    741797    lc_unidadconstruccion_uso_idx    INDEX     n   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_change_detections.lc_unidadconstruccion USING btree (uso);
 A   DROP INDEX test_change_detections.lc_unidadconstruccion_uso_idx;
       test_change_detections         postgres    false    2825            :           1259    741374 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_change_detections.snr_derecho USING btree (calidad_derecho_registro);
 L   DROP INDEX test_change_detections.snr_derecho_calidad_derecho_registro_idx;
       test_change_detections         postgres    false    2789            :           1259    741375 "   snr_derecho_snr_fuente_derecho_idx    INDEX     x   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_change_detections.snr_derecho USING btree (snr_fuente_derecho);
 F   DROP INDEX test_change_detections.snr_derecho_snr_fuente_derecho_idx;
       test_change_detections         postgres    false    2789            :           1259    741376 #   snr_derecho_snr_predio_registro_idx    INDEX     z   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_change_detections.snr_derecho USING btree (snr_predio_registro);
 G   DROP INDEX test_change_detections.snr_derecho_snr_predio_registro_idx;
       test_change_detections         postgres    false    2789            :           1259    741383 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_change_detections.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 ]   DROP INDEX test_change_detections.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_change_detections         postgres    false    2790            :           1259    741393 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_change_detections.snr_fuentecabidalinderos USING btree (tipo_documento);
 O   DROP INDEX test_change_detections.snr_fuentecabidalinderos_tipo_documento_idx;
       test_change_detections         postgres    false    2791            :           1259    741403 $   snr_fuentederecho_tipo_documento_idx    INDEX     |   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_change_detections.snr_fuentederecho USING btree (tipo_documento);
 H   DROP INDEX test_change_detections.snr_fuentederecho_tipo_documento_idx;
       test_change_detections         postgres    false    2792            :           1259    741424 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_change_detections.snr_predioregistro USING btree (clase_suelo_registro);
 O   DROP INDEX test_change_detections.snr_predioregistro_clase_suelo_registro_idx;
       test_change_detections         postgres    false    2794            ":           1259    741425 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_change_detections.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 T   DROP INDEX test_change_detections.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_change_detections         postgres    false    2794            %:           1259    741433 #   snr_titular_derecho_snr_derecho_idx    INDEX     z   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_change_detections.snr_titular_derecho USING btree (snr_derecho);
 G   DROP INDEX test_change_detections.snr_titular_derecho_snr_derecho_idx;
       test_change_detections         postgres    false    2795            &:           1259    741432 #   snr_titular_derecho_snr_titular_idx    INDEX     z   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_change_detections.snr_titular_derecho USING btree (snr_titular);
 G   DROP INDEX test_change_detections.snr_titular_derecho_snr_titular_idx;
       test_change_detections         postgres    false    2795            :           1259    741414    snr_titular_tipo_documento_idx    INDEX     p   CREATE INDEX snr_titular_tipo_documento_idx ON test_change_detections.snr_titular USING btree (tipo_documento);
 B   DROP INDEX test_change_detections.snr_titular_tipo_documento_idx;
       test_change_detections         postgres    false    2793            :           1259    741413    snr_titular_tipo_persona_idx    INDEX     l   CREATE INDEX snr_titular_tipo_persona_idx ON test_change_detections.snr_titular USING btree (tipo_persona);
 @   DROP INDEX test_change_detections.snr_titular_tipo_persona_idx;
       test_change_detections         postgres    false    2793            c;           1259    743724 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_change_detections.t_ili2db_attrname USING btree (colowner, sqlname);
 J   DROP INDEX test_change_detections.t_ili2db_attrname_colowner_sqlname_key;
       test_change_detections         postgres    false    2900    2900            �:           1259    741810    t_ili2db_basket_dataset_idx    INDEX     j   CREATE INDEX t_ili2db_basket_dataset_idx ON test_change_detections.t_ili2db_basket USING btree (dataset);
 ?   DROP INDEX test_change_detections.t_ili2db_basket_dataset_idx;
       test_change_detections         postgres    false    2826            �:           1259    743722     t_ili2db_dataset_datasetname_key    INDEX     {   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_change_detections.t_ili2db_dataset USING btree (datasetname);
 D   DROP INDEX test_change_detections.t_ili2db_dataset_datasetname_key;
       test_change_detections         postgres    false    2827            �:           1259    743723 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_change_detections.t_ili2db_model USING btree (iliversion, modelname);
 K   DROP INDEX test_change_detections.t_ili2db_model_iliversion_modelname_key;
       test_change_detections         postgres    false    2831    2831            h;           2606    742495 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_change_detections.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_change_detections       postgres    false    2737    2741    14656            i;           2606    742506 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_change_detections       postgres    false    14898    2798    2738            j;           2606    742516 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_change_detections       postgres    false    15041    2738    2824            k;           2606    742511 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_change_detections       postgres    false    2738    14994    2816            l;           2606    742521 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_change_detections       postgres    false    2825    15047    2738            m;           2606    742500 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_change_detections.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_change_detections       postgres    false    15142    2738    2869            �;           2606    742959 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_change_detections       postgres    false    14893    2797    2765            �;           2606    742954 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_change_detections       postgres    false    14940    2765    2807            �;           2606    742964 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_change_detections       postgres    false    2812    14960    2765            �;           2606    742799 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    2755    2805    14930            �;           2606    742804 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_change_detections       postgres    false    2812    2755    14960            �;           2606    742814 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_change_detections.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_change_detections.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_change_detections       postgres    false    2757    2809    14949            �;           2606    742819 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_change_detections.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    2805    14930    2757            �;           2606    742894 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    2761    2805    14930            �;           2606    742849 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_change_detections.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_change_detections       postgres    false    14949    2809    2759            �;           2606    742854 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_change_detections       postgres    false    14898    2798    2759            �;           2606    742864 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_change_detections       postgres    false    15041    2759    2824            �;           2606    742859 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_change_detections       postgres    false    2759    14994    2816            �;           2606    742869 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_change_detections       postgres    false    15047    2759    2825            �;           2606    742919 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_change_detections.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    2763    14898            �;           2606    742929 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_change_detections.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_change_detections       postgres    false    2763    15041    2824            �;           2606    742924 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_change_detections.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_change_detections       postgres    false    2816    14994    2763            �;           2606    742934 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_change_detections.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_change_detections       postgres    false    2763    2825    15047            �;           2606    742824 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_change_detections.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_change_detections       postgres    false    2758    14949    2809            �;           2606    742829 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    2758    14898            �;           2606    742839 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_change_detections       postgres    false    2824    2758    15041            �;           2606    742834 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_change_detections       postgres    false    2816    14994    2758            �;           2606    742844 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_change_detections       postgres    false    2825    2758    15047            �;           2606    742899 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    2762    14898            �;           2606    742909 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_change_detections       postgres    false    15041    2824    2762            �;           2606    742904 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_change_detections.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_change_detections       postgres    false    14994    2762    2816            �;           2606    742914 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_change_detections       postgres    false    15047    2825    2762            �;           2606    743009 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_change_detections.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_change_detections       postgres    false    2768    2797    14893            �;           2606    743004 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_change_detections       postgres    false    2768    14893    2797            �;           2606    742999 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_change_detections       postgres    false    14940    2807    2768            �;           2606    742889 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_change_detections.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_change_detections.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_change_detections       postgres    false    2809    2760    14949            �;           2606    742879 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_change_detections.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_change_detections.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_change_detections       postgres    false    2760    2813    14965            �;           2606    742874 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_change_detections.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_change_detections       postgres    false    15017    2760    2820            �;           2606    742884 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_change_detections.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_change_detections.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_change_detections       postgres    false    14978    2760    2814            �;           2606    742944 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_change_detections.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_change_detections       postgres    false    2764    14965    2813            �;           2606    742939 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_change_detections.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_change_detections       postgres    false    2820    2764    15017            �;           2606    742949 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_change_detections.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_change_detections       postgres    false    2814    2764    14978            �;           2606    742754 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_change_detections.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    2805    2753    14930            �;           2606    742764 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_change_detections.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_change_detections.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_change_detections       postgres    false    14965    2753    2813            �;           2606    742759 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_change_detections.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_change_detections.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_change_detections       postgres    false    2753    2820    15017            �;           2606    742769 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_change_detections.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_change_detections.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_change_detections       postgres    false    2753    14978    2814            �;           2606    742739 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_change_detections.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_change_detections.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_change_detections       postgres    false    2751    14925    2804            �;           2606    742809 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_change_detections       postgres    false    2756    14930    2805            �;           2606    742969 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_change_detections.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_change_detections       postgres    false    14925    2766    2804            �;           2606    742979 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_change_detections       postgres    false    2766    2797    14893            �;           2606    742974 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_change_detections       postgres    false    2766    14940    2807            �;           2606    742699 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_change_detections.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_change_detections       postgres    false    14925    2749    2804            �;           2606    742709 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_change_detections.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_change_detections.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_change_detections       postgres    false    14913    2801    2749            �;           2606    742704 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_change_detections.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_change_detections.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_change_detections       postgres    false    14988    2749    2815            �;           2606    742984 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    2767    14930    2805            �;           2606    742994 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_change_detections       postgres    false    2767    14893    2797            �;           2606    742989 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_change_detections.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_change_detections       postgres    false    2767    14940    2807            {;           2606    742593 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_change_detections.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_change_detections       postgres    false    2813    2741    14965            |;           2606    742598 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_change_detections.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_change_detections       postgres    false    14978    2814    2741            };           2606    742603 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_change_detections.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_change_detections       postgres    false    15017    2741    2820            �;           2606    742734 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_change_detections       postgres    false    14960    2812    2750            �;           2606    742714 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    14898    2750            �;           2606    742724 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_change_detections       postgres    false    2750    2824    15041            �;           2606    742719 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_change_detections       postgres    false    2816    2750    14994            �;           2606    742729 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    15047    2825    2750            �;           2606    742794 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_change_detections       postgres    false    14930    2805    2754            �;           2606    742774 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_change_detections       postgres    false    2754    2798    14898            �;           2606    742784 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_change_detections       postgres    false    15041    2754    2824            �;           2606    742779 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_change_detections       postgres    false    2816    14994    2754            �;           2606    742789 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    15047    2825    2754            �;           2606    742679 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_change_detections       postgres    false    14898    2748    2798            �;           2606    742689 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_change_detections.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_change_detections       postgres    false    2824    2748    15041            �;           2606    742684 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_change_detections       postgres    false    2816    14994    2748            �;           2606    742694 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_change_detections       postgres    false    2825    15047    2748            �;           2606    742744 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_change_detections.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_change_detections       postgres    false    2752    14925    2804            �;           2606    742749 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_change_detections       postgres    false    14960    2812    2752            �;           2606    742659 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_change_detections       postgres    false    14898    2798    2747            �;           2606    742669 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_change_detections       postgres    false    2747    15041    2824            �;           2606    742664 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_change_detections       postgres    false    2816    14994    2747            �;           2606    742674 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_change_detections       postgres    false    15047    2747    2825            �;           2606    742654 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_change_detections.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_change_detections       postgres    false    2747    15176    2886            �;           2606    742648 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_change_detections.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_change_detections       postgres    false    2746    2805    14930            �;           2606    742643 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_change_detections.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_change_detections       postgres    false    2804    2746    14925            �;           2606    742638 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_change_detections.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_change_detections       postgres    false    2746    14870    2791            n;           2606    742531 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_change_detections.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_change_detections       postgres    false    15186    2891    2739            o;           2606    742551 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_change_detections.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_change_detections       postgres    false    14668    2744    2739            p;           2606    742546 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_change_detections.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_change_detections       postgres    false    14658    2742    2739            q;           2606    742556 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_change_detections       postgres    false    2739    14898    2798            r;           2606    742576 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_change_detections       postgres    false    15047    2739    2825            s;           2606    742561 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_change_detections       postgres    false    2739    14960    2812            t;           2606    742571 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_change_detections       postgres    false    15041    2739    2824            u;           2606    742566 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_change_detections       postgres    false    14994    2739    2816            v;           2606    742536 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_change_detections.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_change_detections       postgres    false    15128    2739    2862            w;           2606    742541 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_change_detections.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_change_detections       postgres    false    15072    2739    2834            x;           2606    742526 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_change_detections.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_change_detections       postgres    false    2881    2739    15166            �;           2606    742623 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_change_detections.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_change_detections       postgres    false    2744    2745    14670            �;           2606    742628 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_change_detections       postgres    false    2797    2744    14893            �;           2606    742633 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_change_detections       postgres    false    14940    2744    2807            y;           2606    742583 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_change_detections.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_change_detections       postgres    false    14791    2740    2768            z;           2606    742588 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_change_detections.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_change_detections       postgres    false    2740    2822    15031            �;           2606    743015 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_change_detections.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    14847    2770    2785            �;           2606    743031 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_change_detections       postgres    false    14854    2787    2774            �;           2606    743020 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_change_detections.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_change_detections       postgres    false    2840    2774    15084            �;           2606    743110 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_change_detections       postgres    false    14854    2787    2788            �;           2606    743115 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_change_detections       postgres    false    2788    14854    2787            �;           2606    743043 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_change_detections       postgres    false    14854    2787    2775            �;           2606    743053 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_change_detections.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_change_detections       postgres    false    2775    14814    2776            �;           2606    743058 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_change_detections       postgres    false    2787    14854    2777            �;           2606    743063 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_change_detections.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_change_detections       postgres    false    2787    2778    14854            �;           2606    743099 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_change_detections.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_change_detections       postgres    false    2879    15162    2787            �;           2606    743104 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_change_detections.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_change_detections.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_change_detections       postgres    false    2787    2854    15112            �;           2606    743068 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_change_detections       postgres    false    14854    2781    2787            �;           2606    743076 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_change_detections.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_change_detections       postgres    false    2787    2784    14854            �;           2606    743094 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_change_detections.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_change_detections       postgres    false    2774    2785    14810            �;           2606    743081 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_change_detections.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_change_detections.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_change_detections       postgres    false    15084    2785    2840            f;           2606    742483 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_change_detections.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_change_detections.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_change_detections       postgres    false    2734    2733    14616            g;           2606    742488 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_change_detections.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_change_detections.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_change_detections       postgres    false    14622    2736    2735            ~;           2606    742618 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_change_detections.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_change_detections.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_change_detections       postgres    false    2744    2743    14668            ;           2606    742613 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_change_detections.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_change_detections.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_change_detections       postgres    false    14668    2744    2743            �;           2606    742608 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_change_detections.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_change_detections       postgres    false    14668    2744    2743            �;           2606    743186 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_change_detections.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_change_detections       postgres    false    2787    2796    14854            �;           2606    743191 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_change_detections.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_change_detections       postgres    false    14881    2794    2796            �;           2606    743181 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_change_detections.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_change_detections       postgres    false    2845    2796    15094            �;           2606    743196 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_change_detections       postgres    false    2797    2856    15116            (<           2606    743527 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_change_detections       postgres    false    2825    2817    15047            )<           2606    743521 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_change_detections.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_change_detections       postgres    false    15180    2817    2888            *<           2606    743537 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_change_detections       postgres    false    2825    2818    15047            +<           2606    743532 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_change_detections.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_change_detections       postgres    false    2818    15160    2878            �;           2606    743219 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_change_detections.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_change_detections       postgres    false    2798    2848    15100            �;           2606    743224 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_change_detections.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_change_detections       postgres    false    2798    2863    15130            �;           2606    743201 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_change_detections.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_change_detections.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_change_detections       postgres    false    2798    2890    15184            �;           2606    743206 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_change_detections.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_change_detections.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_change_detections       postgres    false    2798    15174    2885            �;           2606    743239 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_change_detections.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_change_detections       postgres    false    2799    2819    15005            �;           2606    743234 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_change_detections.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_change_detections       postgres    false    2799    2855    15114            �;           2606    743229 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_change_detections.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_change_detections.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_change_detections       postgres    false    2799    2871    15146            �;           2606    743252 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_change_detections       postgres    false    2800    2812    14960            ,<           2606    743558 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_change_detections.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_change_detections       postgres    false    2844    2819    15092            -<           2606    743553 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_change_detections.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_change_detections       postgres    false    2819    2853    15110            .<           2606    743548 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_change_detections.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_change_detections       postgres    false    2841    2819    15086            /<           2606    743573 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_change_detections       postgres    false    14960    2812    2819            0<           2606    743543 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     >  ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_change_detections.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_change_detections       postgres    false    15108    2819    2852            1<           2606    743568 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_change_detections.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_change_detections       postgres    false    15122    2859    2819            2<           2606    743563 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_change_detections.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_change_detections       postgres    false    2871    15146    2819            �;           2606    743268 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_change_detections       postgres    false    2801    2797    14893            �;           2606    743263 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_change_detections.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_change_detections       postgres    false    2801    2807    14940            �;           2606    743257    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_change_detections.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_change_detections       postgres    false    2801    2850    15104            �;           2606    743273 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_change_detections.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_change_detections       postgres    false    2801    2812    14960            �;           2606    743278 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     -  ALTER TABLE ONLY test_change_detections.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_change_detections.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_change_detections       postgres    false    2802    2819    15005            �;           2606    743288 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     H  ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_change_detections.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_change_detections       postgres    false    2819    15005    2803            �;           2606    743283 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_change_detections.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_change_detections       postgres    false    2833    2803    15070            �;           2606    743298 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_change_detections.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_change_detections       postgres    false    2861    15126    2804            �;           2606    743293 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_change_detections       postgres    false    2882    2804    15168            �;           2606    743303 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_change_detections.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_change_detections.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_change_detections       postgres    false    15096    2804    2846             <           2606    743313 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_change_detections.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_change_detections       postgres    false    2805    2861    15126            <           2606    743308 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_change_detections       postgres    false    15106    2805    2851            <           2606    743318 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_change_detections.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_change_detections       postgres    false    2805    15096    2846            <           2606    743323 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_change_detections.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_change_detections       postgres    false    15188    2892    2806            <           2606    743328 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_change_detections.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_change_detections       postgres    false    15200    2806    2898            <           2606    743334 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_change_detections.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_change_detections       postgres    false    2806    2817    14999            <           2606    743354 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_change_detections.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_change_detections.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_change_detections       postgres    false    2807    2849    15102            <           2606    743349 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_change_detections.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_change_detections.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_change_detections       postgres    false    2807    2864    15132            <           2606    743344 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_change_detections.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_change_detections.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_change_detections       postgres    false    2871    2807    15146            	<           2606    743339 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_change_detections.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_change_detections       postgres    false    2858    15120    2807            
<           2606    743359 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_change_detections       postgres    false    2807    14940    2808            <           2606    743371 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_change_detections.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_change_detections       postgres    false    2806    2810    14937            <           2606    743365 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_change_detections.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_change_detections       postgres    false    2897    2810    15198            <           2606    743384 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_change_detections       postgres    false    2811    14960    2812            <           2606    743376 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_change_detections.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_change_detections       postgres    false    2811    15082    2839            <           2606    743395 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_change_detections.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_change_detections.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_change_detections       postgres    false    15190    2893    2812            ><           2606    743641 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_change_detections       postgres    false    2822    2812    14960            ?<           2606    743636 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_change_detections       postgres    false    14960    2812    2822            @<           2606    743646 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_change_detections.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_change_detections       postgres    false    14889    2823    2796            A<           2606    743651 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_change_detections       postgres    false    2812    2823    14960            <           2606    743390    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 W   ALTER TABLE ONLY test_change_detections.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_change_detections       postgres    false    2872    15148    2812            <           2606    743417 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_change_detections.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_change_detections       postgres    false    2813    15196    2896            <           2606    743412 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_change_detections.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_change_detections       postgres    false    2860    15124    2813            <           2606    743400 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_change_detections.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_change_detections       postgres    false    15134    2865    2813            <           2606    743405 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_change_detections.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_change_detections       postgres    false    2889    15182    2813            <           2606    743422 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_change_detections       postgres    false    14898    2813    2798            <           2606    743432 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_change_detections       postgres    false    15041    2813    2824            <           2606    743427 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_change_detections       postgres    false    14994    2813    2816            <           2606    743437 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    2813    2825    15047            3<           2606    743588 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_change_detections.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_change_detections       postgres    false    2847    15098    2820            4<           2606    743600 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_change_detections.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_change_detections       postgres    false    2896    2820    15196            5<           2606    743595 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_change_detections.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_change_detections       postgres    false    2860    15124    2820            6<           2606    743578 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_change_detections.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_change_detections       postgres    false    2820    15134    2865            7<           2606    743583 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_change_detections.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_change_detections       postgres    false    2820    2876    15156            8<           2606    743605 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    2820    14898            9<           2606    743615 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_change_detections       postgres    false    15041    2820    2824            :<           2606    743610 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_change_detections       postgres    false    2820    2816    14994            ;<           2606    743620 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    2825    2820    15047            <           2606    743447 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_change_detections.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_change_detections       postgres    false    2814    2877    15158            <           2606    743452 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_change_detections.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_change_detections       postgres    false    2847    2814    15098            <           2606    743464 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_change_detections.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_change_detections       postgres    false    15196    2814    2896            <           2606    743459 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_change_detections.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_change_detections       postgres    false    15124    2860    2814            <           2606    743442 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_change_detections.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_change_detections       postgres    false    2865    2814    15134            <           2606    743469 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_change_detections       postgres    false    2798    2814    14898            <           2606    743479 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_change_detections.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_change_detections       postgres    false    2814    15041    2824             <           2606    743474 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_change_detections.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_change_detections       postgres    false    14994    2816    2814            !<           2606    743484 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_change_detections       postgres    false    15047    2825    2814            "<           2606    743499 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_change_detections.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_change_detections       postgres    false    2815    14893    2797            #<           2606    743494 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_change_detections.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_change_detections.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_change_detections       postgres    false    14940    2807    2815            $<           2606    743489 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_change_detections.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_change_detections.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_change_detections       postgres    false    2815    2874    15152            %<           2606    743504 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_change_detections.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_change_detections.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_change_detections       postgres    false    14960    2815    2812            B<           2606    743657 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_change_detections.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_change_detections       postgres    false    2848    2824    15100            C<           2606    743662 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_change_detections.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_change_detections       postgres    false    2863    15130    2824            &<           2606    743511 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_change_detections.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_change_detections.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_change_detections       postgres    false    2816    15100    2848            '<           2606    743516 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_change_detections.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_change_detections.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_change_detections       postgres    false    2816    2863    15130            <<           2606    743630 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_change_detections.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_change_detections       postgres    false    2825    2821    15047            =<           2606    743625 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_change_detections.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_change_detections       postgres    false    2884    2821    15172            D<           2606    743707 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_change_detections.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_change_detections       postgres    false    2848    15100    2825            E<           2606    743702 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_change_detections.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_change_detections       postgres    false    2825    14898    2798            F<           2606    743712 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_change_detections.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_change_detections       postgres    false    2825    2863    15130            G<           2606    743672 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_change_detections.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_change_detections       postgres    false    2825    2890    15184            H<           2606    743667 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_change_detections.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_change_detections       postgres    false    2885    2825    15174            I<           2606    743682 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_change_detections.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_change_detections       postgres    false    2866    2825    15136            J<           2606    743677 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_change_detections.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_change_detections       postgres    false    15140    2825    2868            K<           2606    743692 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_change_detections.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_change_detections.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_change_detections       postgres    false    15164    2880    2825            �;           2606    743121 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_change_detections.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_change_detections.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_change_detections       postgres    false    15170    2883    2789            �;           2606    743126 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_change_detections.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_change_detections.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_change_detections       postgres    false    14873    2792    2789            �;           2606    743131 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_change_detections.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_change_detections.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_change_detections       postgres    false    14881    2789    2794            �;           2606    743136 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     -  ALTER TABLE ONLY test_change_detections.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_change_detections.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_change_detections.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_change_detections       postgres    false    2790    2794    14881            �;           2606    743141 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_change_detections.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_change_detections.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_change_detections       postgres    false    15074    2791    2835            �;           2606    743146 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_change_detections.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_change_detections.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_change_detections       postgres    false    2835    2792    15074            �;           2606    743161 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_change_detections.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_change_detections.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_change_detections       postgres    false    15178    2794    2887            �;           2606    743166 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_change_detections.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_change_detections.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_change_detections.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_change_detections       postgres    false    2791    14870    2794            �;           2606    743176 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_change_detections.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_change_detections       postgres    false    2789    2795    14863            �;           2606    743171 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_change_detections.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_change_detections.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_change_detections       postgres    false    2795    14876    2793            �;           2606    743156 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_change_detections.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_change_detections.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_change_detections       postgres    false    15194    2895    2793            �;           2606    743151 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_change_detections.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_change_detections.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_change_detections       postgres    false    15076    2793    2836            L<           2606    743717 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_change_detections.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_change_detections.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_change_detections.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_change_detections       postgres    false    2826    2827    15059            �<      x������ � �      ?=   �   x����
�0��{�=�l�պ%�^	c�)����z�^�R��v����HNQ��<�ω7�l���^��;�/��+3��ᡭtc�̀@܉F��_�T�����0X�
_sL��qC��!�spR���wcg�oDl�0��T�ļ:ъ+����rc�F�`�B>�p����C� А�v      V=     x�͑Aj�0E��)�&����qK7i
�t0y�ƌ�@��e]��X%�MI�uc����?_��:[U�M��j^��E�N�Q�"����Y�m��"���F����^��
��%ԗ;��Q��B��frۖ  �1ZN��N��d� l�Q0C��ݷ���B0�ϡ�֓� u���́��c�Q������H{���>�
~>�������\�����g/��Ў=�o��L���X�򏺁�������`�2�������{4,�8�g��!�RA~����cS�y����      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      T=   �   x���ˊ�0���S��Z/u9(�Vq%��D�@�)���n�����ڢ��ݹ�|��������z�ݻ�r%1���Rj�A%�
$���_Jc9�>TI�K����Z_u�w�4N� m��f�Ѭ�|$��V�V�f����adH�7��㐦v�qoH��"�:ǜ1Gd+/���A�`�F��!2�=�4P�x.��?�o�Q��V��E��׿GĹ�A��{�����M�"J���      A=   j   x�340��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X�����TA�ch5ЄT�8�K��!�AY\1z\\\ ֟G�      N=   �   x���M�0F��stm��B㊄�v4MjKh�>���[.fA�\���o&3/FIwɡ��iqY��QV3��oý���D�R+qRp�Ϣ�$�H@b��XY�;��9�p�QYl��AAC�̭j�@��(���!ܰ��0�,P
I���lt�'�#������^��[���r�����s���5zHw6�=���ȋw      o=   �   x�350��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ej`L�����y��PS]�J��f��m��[ijQb�Kj<Lb<XX!%U�!�ɔl��9�K���CY\1z\\\ z1r      W=   �   x�3�4��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���҂d�9}2�R���$S!f�^�S��WHE�ZeI�UF�!�%��aL.#�M2��/���O�L��������� w5p      Z=   �  x����R1�k�S�07�����O�L*f<�n�et�C:y&y�Tti�b��;�3&��I�o���d�ev���^��^-�.�벻Iֱ�Y�L�{^4�x�}0����tvw3;�]�M-.��{Z9�E����m���D�i���4�5��}�Vԛ ӫ����Q�S�^D%�	Zk��y�5-��Z��e�]5G�[;{��SgB/69\w�c)���d|S#�q���m��W��m53�#���c�:�QF�?x������I�q�}A���M<�S����/��[x�������0Yu�"2PxE�8N
�H]�̿~"R�i���H���/�ba��>[P ��sLN#����U��[	e���ؙ� m�Q~��K~�hV�ITr�6rD���5ےC�������y\      D=   %  x��T�n�@����2�GkX�!@��He�����[���Q��U������h!R$�$�13;�bqV�ϗ���u���:)ǧM���*��xz��驸�'Ņ��dBu]��Hը�l
�s���)p��R��*���"t��WG�B+�ɩ�cm��-o�b�(����TS��FD�Q��?m��2ĉ[�v��fy~;Wu�zj�ԁt�������f�U�8�k��<@P&�S��'�a�&"�%�Mq�#5'wO�Z��N:�k-�D嫔�����a�?I��ޚ���9iЉ��
�u�|�[#R-�	Co��$�}�>p�q�7��	�aׁم.p�S��!&SUH=��h�c"�ZG��b�)�zS�1;�1�b�O��:^$;�̈�C�G�"|9v<|x���j��a���S�A����jU��<jfF.Q&�����9-���GN)+��-�񞹲�v2��;e��,��d��Q�8-VN�`u��=Ec�8�#���}8��Yq���T]M	<�{y�	�w�?����l��i��      I=   �   x����
�@�������Y,"H�D�@�u�	ە��z��z_,]�����0��1�3g��4���c�N<[%� �n�)Ŗk��h&X
�8�6�oX4���,��7'���*©6��<����.z}-��D:���q1�zeȨ�X��~=4G&�
ճE�����TJ'y��Z��
:��z u���a�c�����5�C      M=   |   x�345��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ԙ9�¹�)���E�P��
�A�&�X`�l�Of^j"�9��B��b���� �.Z�      6=   �   x�32��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2��ȈT�9C�!&AY\FƤ�b�\Z�ZT���
1
��edB�yƜ.����y�ə)0o�p��qqq \�\�      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      q=   #  x��SKjA]K��a��k��@BV���]#*�T��#�q��B+a.�ꙑcBV��~��Ss��^��n��o�ͯ��j=F���uM>PV�ߣ�����^����b�4[���k�KM����O�B����
S$�"GN�v��S
в���ذ� #�9��[	�]{&�,]�}��^�l>���B����4^�tS� x��-;t<�
��9Y���%goG8�Ĩ����h��r����$�-�K$I#��D�Y�ʆ2��R���.�K=c�c��Ԯ��a���0C�
;��
P��`��g�`���	�b�V"W�cdL�L�;�}�xĬ�'���X����LE�9��^�������+�P����_��/o�4[r'�ͩ�Ӏ{���@��o�t��~��U��?b5��h�q?c�va�ȸ~4�h*��Y,��n�K��tU���j�렧�1���e����ޤ�e�{K(� �+��'1�ó���a���q)t4�29Ѡ��l���#�<Z6mt�<��
�q1�(j��n�\.� ��/      �<   <   x�3�45���47�Q��F\F��`!c��1P�� �
Y������E�W� ���      �<   v  x�e�ۑ-�D��1f�7�c��o�%����_+h�CdI�{����������Կ��
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
�}�����If^ϋ9�����,�����ʥ��w�>��~a�e6���L�`g죾7W�Hv�}T���Ӎ��Y�ы��q.�j�7�>�Zsa�Ƽ�J�\ط>V}f�^�<�V��gtaJ�c�p+��g��m����+�u^a7��cj��'S��y���wy���:g}7fJ��Yj��Α�s֓����tc���Fa�}���t"̪�2=�[gM�`j�	[��y��ƌ}�2C�Ug�$��"s/�1�ɘ�1c�+���o��1/��1��Fc"�.o7��V�d�Sl�ʼ�S�ve^z�9O�:��zya��u��N�>��:�Yt2���q0c��5c���i��6����2���,���d�=@�����y\��9j�7�#�aL�Ƽ�z1�$6��'�$c�`�|m�GC�c�mcV*��*�u����Y�}�?�c7�����ֹ�ם�z�ܻ1f�c^gc�B��[�z�Ƽ�Ƽn��A@4��|0է�d�D�뾯���>�%��q߼q�^o�O�*��׍{9��q�����6��?����XZO      �<      x������ � �      �<      x������ � �      1=   `   x�3��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N�ˈc9�K��z�� x\Ƥd��7������ �F@�      J=   �   x�34���qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ehlI������������#K��q�M�0҈(�Z4'b*P@���J��`C26�I�IM��-���Ƀ��*zx3H�+F��� �$tB      \=   f   x�32���qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��edl@�9���EI�y���l�I�$�d���Á��b���� �rA�      �<      x������ � �      �<      x������ � �      P=   �   x�343��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP�\��5�\�T�bt1B h�)٦s��A����b���� ��p�      �<      x������ � �      �<   w  x�U�э�0D�7Ŝ�`�n�*����Hٯ�������~>�����k��}M��b����7�b�`�,_q��lLְ��1���\2c]�f7�]l)n�������e��dű�ed�E�[l��g�?,�v1��� ��|j���C�9=���T=n�_&�P]��"S.<8�]��ׂ���8��p���7."G�c�-zLk�E��8�-z� =�އ�໸��;����U.�q�_.6�z����=�/F�^��鑝;���H���������nN�����pzlšg���}l�9=Bq�pzD�%<�uw���/	�~�!��Gj����]��#䁺�~]=W.=\�U#��<b����j���Ĭr�������s]�?��      �<      x������ � �      �<      x������ � �      �<   �  x�m�A�1E��aR�B\"'���#���ObWya�+� F֐_?�]v�/Yc�<_��H��X�E,b���sBN����ܦ}#yZ�����6���M0�^j�&���:��fr��c�(�����؉�~@/�u�+�
Q�o����s�p\~��^=��a��+&	��O�CQ�E�A۩ 52��
����N+��1T����T��g᪛sP7�TZAP�TWm*�C	�Ө 3�T�'�<��C����:�4H�6a4X,�;Ưֆ�	H�U8�L�9Hk'n�РLȻn.m+� ���j�"I���u�N�������م�zSs��~�m�eA}ܯ��L��MX+6�����x�>[X�$m
���ٞBU`�`�]�x�D�	UP,*���Z���J�*C�\W*��5���N\H�JjA֞#�A֖:�� ����X��ڙ��w{.����z�M1c       �<   '   x�347���!Cc#(��И������)W� J�
�      �<      x������ � �      7=   e  x���Mn�0���)|����e�.) �]!E�� KI���Eo�5��b�h�.R�<o�����	Z$/���j����(l����C+�U� IH�*&� �N���c5G�%����5�C�nm~�pv9['&�-/ge�ښ��h�3F+Ah%����
�&����[w���If����Rqb9�2]�`9�� Wח/��.�!{���� �%(-����qu�S�^��~�~@k�����\���x�M<AIin�Ӭyè<v�ѩͲ\c02�B�؛y�^.�e&��);�'ܚ�R#o��Ꚋ�����GyS����p�~������h'��5�-��L���0؇A|a�0�      <=   g   x��0��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��\�9=�R2�2SJs &��b���� n:�      �<      x������ � �      g=   j   x�313��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���̘4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��Dk      �<      x������ � �      �<   ,  x�͙mK�P�?��%i��~�1d:�s6
�ئ6[�BL���s��!5��g)��)��>�����*�h4�-�<�Lʢ��*,��ͳ4�Ӥ�\���L�,�U����$��گ��b�V����y�p�U��l�B2!EK2Y���g�P���_]~������=�Tě��"�!PI�ٟ́I2�]����@�t�E-�L7d���d���:Rb��H!�f�Z#�f�PL��u����tJR�I��ʛ�#�y�1�u�Lh^TA3�,�u�����w��
43�װ��8�Q6W'��^���x媛���Bq �Eǐ��,Og.�^�ҤvU�b��u��"��j�fM�<�(p���{�Bo$p$��I�
܇�z�$�)�Cp=�%�@� �( �G�M�@S�@���,%����f���@Sv��_�I�� Sr ]���HJH�-�`K	$� �d�����q����`Ju1��V� 5	 � �..�� ��f���
 * �X���
 *N�Y@08Q�_���������/&94�A����㐙KZmq�8,��@c䐘���z��O0~�!��O�4H?0e������f�z���" ٝ � d�l��]@0��`"�L� �Q�`�ਗ਼��l��|�:{t# @k�h?ݰ�\�tD(2�}�PHđ��i��m5�J��晘0
,��Z$K4�f*�� ^����A��{I�t����jvR=Wχ����eXz��&ބU���LGﺲF��ٗY�SV9�������x      �<   �  x���ˮ'@�ܯ�X,y��(��E�M6�2���R4�/�\��H(�<�G��>ԋ� J+4V��4�~%�0����6&S�@�����+�K�����K}��0A}��k���N�8~=���_��U�PƷ���_�|�����E��4�4:��'Ms��B�$р"��T��5��h"ӌ�����8��T)f�'N��t��/�|���#ߝ%r�B@�q
���8�q��%�ԐR�}���1�\<��v� �N�)���e�<�:��-���d��d,��m.É;�����cv��������ld��K��RNzp-g���;fWو*G�T1���!�m첢��,��le�}��0gZ8��zFH� ή�Uξ�^�䕲��Ϙ�9��l娜G ���Q�jg��$aw�����^����P��� ή�}��n��:��O�pv�QT�:
-B+�[s���>�����ʭQ��ײpf5T�ʸ����0* �
����$�ft�UF9*_Q�F��2bȾx�� ή2�*{��v�axO
��UvrT��h��J���y(� �*;Q���rM�.�-g�\�\���D�g�)&�w�B��Uv�ʳs�!/w���0�Ń8��NTY7S3g����cb�E���3ή�Um�F�����O�tgW�˵��[=;�Y�T����U��ʁ�
���w���8��^Ty�[}���fw����E����׹�X8���+LxgW��|�zX�io��g8����2�*ϜU8S���{��9�C��$�<�B,i�J$?�:�`Ю2�*wS��%���tοU���L�`��V�ũԌ������Z�+c�;�SK��@�v��\`hH��Ju�_&آ[
{���D�g�i�,�g���w®r�۾4�p�eu�X��WgW9�*��J���;K�ʛ����aW9�*ϛ2ўBy���®rU�A��˺Y��.�ϭN�U�rT�����;ݛ�A{:8����QTy@�J���'S�t�t���Q.08�b�խ�N�v�BÃ)4n*��qР���S-Vo�n'�<��s�o[����[�s� _��Qd�RӮs���|� $
�~�,�"l���U��HTz�H�tw��C5��sJ�5���P<�N�̎�ǅ|l�\���x�Z>��us&�&�"K����G��>�}�`�8�3@e9=��X�KA���r<];TS��c��V��X�f�����p͜�4cF�<9�똖���7�l��c^yP86c�F���9m�zR�6��+&�v|��y��N�5f~�g=&M7��Wr����A}���8b�_yP��S���=����b����1��~���)n���s�v������C��0�1B������y�6��o�?�_�ǡ�3k���zl�L�E������L�e��"Ѹ�����8,X��çQv��x��p=�1�����^�g���g>�5�ҧ�f�>�'��hU��:��x�@�Ll�H���;��[��]��cL&?����7��}OO���nXxf9_❽f:�ڄy��֫�/�7������>�~֓Ŵ�3��T#���~�������2�g}�5��\��[�5sf�c�IO�������߷���,*ga�X![�XZ'�??d�2'�� �v��A}�և��ʋ%����>�ǻ�sw ��b�K?]�3��"��������?Q!1      l=   �   x����n�0F���	�@1c�t�Cńd]SY�����'mpew������;84�Q��A]*U��4jg���9�6�m��7�bQ}�}���	Jh&���D���u��J�/���Y'�L���x�.Atm"6s,�=�]A3���C�'�qQ��z�:�!?fǚ��B�Z�5"wY[�4�]Ck��˺�k�s"]�W@�O&�Q��cKt에y�w�k�{�:~      O=   }   x�34���qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ԓl9�K� �A\�fd�f��Zs�4ϐl�9�S�\1z\\\ (+d�      3=   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Аl9�K� �A\�Fdf��Zs��ehL�qƜ��p�`L�=... hd?      b=   f   x�312��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����	�r���c�ᗯ��fM� �xB�      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<   .   x�3�45�4�4�4�4�45���2�43��A�����b���� ?#
      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      `=   �  x��V;OA�ϿbK�,c P&(
����N��,��1���t�)�)("����2�kcLH������~�7���p'�&UXSqf\h�'�<��<8o�..�����8&S�R��-V�>�eW�l'�2��Ƥf�f+��Y����:KʐrԠ�)��mLu�FU��l�� f���<�M0���m5_�Ck⌑��9L,*>Y�!�M-N�(O8U�/�V��������ͮ����<9_a�6�f�g`=0O}5��g^���iO�"����*��K�wx�W��:���BY�)���O��܂JWZ����8�.�ʖ�!�a]�_�Z��X�Q��2٠FMσ�������C�޽x����U>k�x5l+�k������o��`���|[�:AڜkL����,?�}�����u�W���/��� ��,˕Xc,<���i[�����ws"5�$�1ev{o��1z6���J�H喂�N�1(�r 6S��J�>�>��M�O���������elxu�%'l���49ܠ��N�R��Jj���a����r��`��C3��b����H��[�C��~(bu �Qv�!�l ��fR[���L�U��?��-�m^�������W�������;�e@�kN(yH��n���S��pT�!*�8�j|�-���Lp"��(>RE����CN��"S��X�c�E�g�s�L�S3I��bxY�'a�|���U���p�9���ՠ���f'      �<   �  x��Xˎ�H<��EF&��$��<.��z }�n�l�~�R.�3�V��.t��rT� ��� �v�mD���6�I���`�7�o�,����/���~�������m�f��b��-��X�~EQ��?��9^������W��ڂ�B$@KT��PD}��􅵖l0��ĳKT����(���D�(�;xl�E1��lZ���k����Z�ph`��7�	<��8�_�8��΢�����>�������/߾��2�ރ}ޅ�vy�2,�f�E�χ)�v��CV��)��Y�T�d�5��LH?�+P�dZ��F�q�+`ɋu��W�^�<,a��<ō�02�u���A�_�灔w:�@�3�!^0p��ѡ:`�ɡm��p���h�Uh�,��5���֢'��#X���5^��జ��3�+ܫ���w�q'>������`F����U�`�Id2�~A����ɼu7x�H�R����q=?	I �t�!IպD]Gb%Y���$z�=|���p�s�z׽z^�p&��<n�yga�G$��?dFu���4MFl�y�߇��ͽg69���c:4�*x��c�֌�ڸe�pZ��1^�U�%��N�ޜ�����c<ϧt
�d��̳֯ݙW����۸.V��f�y�8N��x�1����ͳ7\V�>���E�\�V=�M�����9K��u#?5YJ���:c!5�ŝ�{fpEg�%���w�2�fX�ۺ�4������2ʝ���F�u���O����:x�;>i'wc�^��N���j�T�Eu���T�:�;�A=6��;4F_}I��9�T��V�u0����|����5w�΋�+�B;�v�y�xc;�e���' ����"�e�U����pfL}7ⷨo6�\R=�G�VW(]�v���#�h�Ш���NN�l8��&�����k|��<�u�Ae�� :�Z��W�;�0�#�}E�IYF&���y����_��������f�{цuDf���U���j���b-�	�0�M����55���P�����"�'���PS!�ԣ�����;5�E&5�ш�yU�]�yt��4�h�o��U�O�u$�,��󢭟�7_�'6�E��G���J1�C��� �T��ǔJ,�s��U�zJ-AG�u���?�w(ULv�c8����������}�Q��N�/��ˬ�^��g���ܣ�v�M7�w��ѐKɲ=�%�6/+O(��B|���&8a�r�y����a����$���Buju���b$�P���5%�X��y6��2k���:ag��b6&��ΰ�?3�~s^��?L�N�u��Q�(dS��PM=�x�jˍJŌA��� �e����uQ�B�6m�O�!
ժ{@w¾T�l�n�i��n�s�z���i�8.l�Wf��H��D���;Y��x�աoj��a��+�>�>�uvf#QC߉�TU��w�/�*4:ax�(:�-�D��kGi�5�[�|ث����L�d��;���i_@��I���\�O��GR�=&X[�&�}�b�2{Lh�)ir��J���ƿZ���	�a�/k�ef\-�2�x��ՂOw��Y�������=�̥��� ��x]�t�z�)�b��-94�1�Ϻ_;˛J�����ѡ.�����}�Njh�z��Z��iE݋��g������I�"�}��T�k5*?梁L��J�uŦ�zxȺ� ��4D��d/ֿ?~�}||�����      =      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      =   �  x��Y�n9<���f&���`��������FI�Բд��m��Ԍ�FDR����G��Z��JN�hKٹ������?��������D�oX2z{��������}�J�in]�~)���8S$���d��{�S}�����S��f&V�u�3)OѼ,�@3s�鄦\��R�sRcKŚ��ni��ޱ����=��[_���^��24CsԆܓW�i�n�yL=�y��	���4佖��27���XOe��\U��1[٫�	MV��u�Q��������ȒJ�����f�LmT>��z]zCS�rd�_y-Q5<k(Ka��Mg.í�.�����h�T��\'4q�<V�Ԭ��@�.#�,�����N��N��ֺ:����KOq QC�ƒ�RE�L5�r�#{��ь�ժ�� r����dmLtjY�Kzy�͋E����	��EOh�Z}�0���3�_���F{�:[k�cm�=����ol�S;����Ahd�=M���`<be<�Y�E?���h����m���˵ u=�Sn����:H��\k����"�I9����,T�F�Zs*�W��DkJ�5[���0�S޼,�@�Wj�3-9��J��};�N}��ֆQ��r�kϵ8�x��q9vʮA�1���:%AK���2<�����|F����8��x����dT��>wڞ�s����y�4Q�.�9C-����=.��X%Ʉ��
�\����(��٧�9{DS�F�O>�r�Uj��� �� I��Mz��hF�>����y��&�i���:qIv��4l��Jb����3KX�������:Oh����B,�hH3�V�[�4px�\P���{��8�E.�E΄Lw�cp6oI��(���Z~��J�y�l���T�[o��%�v��=Y-2tZ�.�i�^��R�u�'4w
���w
�W�`���!Lc�X��k�4[}�W�������f�oN��� � ܈ٌ�����-�㴝��U��s��6T� �)
��7o������7��}1:�i����#-H��i�eg��*��34�ț�di�w
�rg��+����ڿg�[��8�`|��<T�%LA�<ѩ����V^��	�̓��C�}�۔6�Oǜ�D��ٿE��	�ӻ�Yy�Z	���'#�u̕1�"��UEvy�*���o�>Αoh"�C%*>h�:[��Z7��Ｍ��bb����Ҩ��D��w}ػ�=a`�������Ս$�0�������c��~qo}��f��i�z�*N�$�A���5m{.5z;��{�c�'�?���@����^����ٱ�׹��*����=MίK�3����1L)$f�Q�Qq�1$g��[�q_Ө��V�S�io$S�12�~'7�1�/j(̆(�Y1~q�x؛T�#�R�56�u{�N>VN#��놢��N�7�O]xtQւxp�4	O����[�V
b`+ ��K5����	��NAϼ6�(��Y�\Fik��!���w��vӆ7�����]��qb(���TI*�{��\�B�M���Fѩ�����l�W�v�,�5d#�')�/���y*D�+B63�w8�?w�u�}��^�0i�i�6��a����9SD^λ;�9�ڏ��>kɇ�w`���5A�i��
B~O�Ok1-�S�2����i�����'����3���	:+8���3��%�JȤ�Z���}����ě�ϔ���=�]s�.U'��:4|F�V/Ә����{�H�'�#��(��,v�$W��Y�N_Ȩs׭<E�
��<��\C�`�r�����4_��dW�'Kk�{��h<k�Paʶ�b��~C����Җ�I�0`��Z7�V)��g�ͩ�8�P��Tγ�٧�tb�s���������T3hD�C��k�b.����z߽�~�a4QNz�|QUx{-��~z�ៜyZF���#D����I����6�@}ީ������ ���      �<   �  x�}�9��7��V�P�8���N�:�h�%Cn-��^�7և,t�&;P����s.K(��� !��U��g��T3҈�s�����j�?��������?���������}��k�����_˷���|�Ҿ����|���?j_����
�$6�7��Q�V������j45�*�E�W����Fv�pR��TDaR�'4�\���TL�Č��Ik��TqQō*�T񤊗��I����9b�b1ɧb��ɳ�W����F�v�tR�O��d��,���h�Ģ���pk���Z������Tl7��~�/~f��I��Tp�K�&wo�֢&�K�vǭ��k��v�EE�TtRхJA�c�>�b9���;�[�M����K�zڙoT�S�I�*7��ʕ%���v[L��F��Ӹ�,*٨d���J.T~R1֊,��MV�s���C�m�Z�%t�T��t�ҝJO*�PM3D�������`�p�����Q
>t�r��mTn�r'���j��>Z"s*�nŨ59>�(9u��j^n������O����qR�'�(:#���W���2���>Z[�}��7���v>��7�/*���{����;调-�l��l�R-���v��Χ����4��S�m<$�n�=�b+��-C����Y��v��λ��t;_ܞf:���o�ۭ7�����u�D�r7*����w*��.���ۉ�Z��b�N��!g�!���g:Ss��7*z���jw��n����L�d�0���8n�a4���ٴ�S�W�+�r�ln���r�].nO3�=��sN&�4�h�)3�J����@H_���es��n���rq{����=d��҂t��8��	�/�d-�|�Zn�����]N����i�s�G������c�@&��w��%���wp�]6���v9�.��n�t{�g���a<a����c��x�^t\���es��n���rq{��ܓ�ƎSf�HuRE4d0�hޕ{���v��.���t�\���W�?��
��#(�-v0V��'
���T����]v���v��=�ΐ3����T{SSJ�����|���}�]6���v9�.7��L��PUa����I�qs�V)r=W�ܮ��uw��n���?���S����_���?���?M�����sV17{�o8�}�"�,��r��.���z�]�������✱�ϰ�}�%L���aG�lC�@ ܨ��us���������4��-����L�����t�2fÌ�5\������^w���z}�z��I�O�Cz�����b�t15�����/7��z�\����t��v=��T��!8R�y4f�L����C���\�.���z�]������-O*}��#�F/f�3�R	��5�G�R�;�\���uw����׮'+�
=�Q�A�����Ih��E�]����W��z�\����t�^\ouR����U!��&�E-�� R��Uڝj�^7���z=]��]O�M��x�9#�fh��+q397��Q�ԕt�.t�^7���z=]��]Ov������K�/+����C��fT�ѐ�*�\�6׻���t���x&Uz�!ͪ�#&1I@X+��$���������v��ݝnw7�#�,f�ى�`�sj�L����%u�������#��ƶ?��/l��:L)=m�WP0<�w��Ѱ�r�(����&�m0���s,��P�@�0;�ӼGY�:��Q�meH��븾6��[�����e.+4E�H��Ru�7m���9�����Y��|ݹ���7�p��&ҧ"DzAM�Eǻ�TL'EYX������e˖=Z�d�=��B�.����Fc>�w��fq�K�^�re��=U�P�d
�C�H�J(��Б�QTM&��1MÕz=C+R�D��̓�qb�7���b]C	.)c�Z�Zl�9:������4��dϒ3J.IB�7Q|���d3Jń�A!��p�vH����dˑ=F��a���6Ⱥ��̷�� ��
�o�Z�-�ǵ��
�B���3D���f��}�a@�Y6�cqԆ�����І#g�]��Q��׻�c�P���3D��/0�WC�7��/s<ν�A,���g�%mڬM����6]�M��1?%����O@�$��+6dш��aL�R-sӦn��M���f�'{k�e>x�A�<��\�Vz�>ܟh�6�.p:N�af
��,!M؛� X6�E�.�/�@�|�Z�M�[�N�������Ƿ��� �i�C      �<      x������ � �       =      x������ � �      G=   �   x�342�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qYPѵ����I�9�B�x�������=... �o�      =      x��]K��r��B��w���+����/�'%$��+T��z�vTEwQuqE����H�d���<IŰi��f��l{ �%�O�ӱ{27U�+]����?��W�cT�)�'�D�+]�>���[Rћl��X�(�暲�e�����dB���M���d��]���i�.
��O��&��B�홊N螋���](�O{Uε@ʛO��7���E����v:��OH.������=�a�O}��ݨ���e�\��7gJ(�3WJH-��]�Q�&7
f|�#�[)�^?��ŒS���U���hz��{~�����=��O��O{�椈⧽V�Js��O�6*��C�b�U�iiP1VA����%�����4��Z$3�sp:�6f�B�n$�M���ֵi�G��[��FZY��p�O(�C��yv�QCݝs��<w2�=��ᷓ�������V�p%��Vy�Ƽ����g_}��?���D>fW��Sm�D�i~cz�}�]�*�l�?$c;���$�-��r���`L�B�V���ƚ<�";������57�O}�m��떂��o
?/>�ʒ\�)F�*�Y����fb�Åy�S6�t��er��X���A���>����n~%_̽Q<��v��|ؔ6k�s�O������U�q8sܢ��h��y��+��6Ic�>�jݗ�`�ӛ�(�b�SLhq|�s�v�q�E�K&�qQ���
���^g�lu�U%̲�a��SK:N��1Q���i/�ԘG������а\Ӎ�؈N�7랴�G:�׋�N���{A����$[>�1l�.t/#O=JCO�h�����3���k�cJ>�H�+7-"���4��[T**��ݼ)��`�d�ۥ�HeaFSc���@S��]�Bpp�NɎ�|q����B�ܔlh�d�5i/��LsajF�l1�hj�nKLW�Mm�@zbQ�Oq�"2{ƴ�6-j!?X�foI�v��+�6�ϹY:��������|�����i��݅����u�K��y؃�=7)����O�Ĉ�;?%��bkiEO�QA/\���*��f�fL�S��SM�
�l_=����7e��|���A�C���#n����M�0�`�=8�|].�~�ƝKjF'�/H֘ҭ5�G�|��N�r����ƾ �\��$��HlD|u���C���/��qtÃ��u�:��	 2�g�B1Q#�������dh 1�����q��uڂ���77m�Z��������m��/�B@8��҆Y���kcJ�[DP"m�M�O�\���Rp'��������_ׯ�'R��(ϑ=���*sd!U��Ҟ�r�%M�7�4b�H���S���j����WԪI��F�8P%�(dU�ĄpX�DS���\��I�ٿU�Y'5K��<9�)��_��iܖ�Nʾ0k�0���q��NZ@��aZ3�J�����Z�W#��� ���(i8�D�SC�re"��j�@yҾ��bɹ�y��V��v�t������>[<�S�ս�~�1T���{9��W�>:���|�Ei�<S���`z!����`>�o�9�O[f��,'����V��z>4*�m��ڟ>�}�`�`����=6�AO��g<n��tO��>�Z�x 8n �e��ڬ LU'���D�s-�H���~c�"y�� 6۝C��_��W5J������p�H� ���I�� sF����w�X�������2@Y�=O��F�ն,��2��ȁ����1�g$z3~�4%���X'Vt���i��:�q{%�3
Ma0����'_�/��^����X?`j[:(�ؒ���k�;O�ҍAm�d�����^��
�k; Pz��m���b���g��W�-�.���~�@�V;�^pH���,x#�s�왓��&�A~en�	�<��|@"�|���@[��3��Lf����;Ӵ:�Z,)?L�`g�����6�L��0�uћ9��}A/��#"\�Ù��=kp�+kj.�1p��=P��:u�߂ǬxЊG�柱�;Τ�F7�9�Nվ^[4�.���T���]���uY@�}%��/
	,+4AupN u4�n� Ц�!V	@oJִO{G !���dBt�oW�K9�x��.�3����!��*>��9˂}�mJS&g�h6�����;"��$��7�� �kj�ꂽ:�xּ��}҄zL�čJn?�G0%�k��?�Ϭ��Fa���s;Uxl���_��0[����ƃ9޽���s�?���h�za�!*8K(��*ps�ZweyY#U�Yd�;#|Q������_�\fuU��|V԰�Hpo��v/�.p
�&a�}�]�O3��fo/���Ŋ��(����%8̶D;p%�Z�㟍�1r�\�^/���(�'��ʹ]��|k�W�-���`��H]ے8�6%�7���p����)���p���J�U8�o1p����T"�g4I�����;u]���T�E�|�e_d�K���Tʹ�������?d�g��z�jrE�Ol5zf� �J��"�Lo��Ο�QJ�x��[���B%=��� �gHF�t��}(����j�Z�+E�W0`�����wj�%tKM�Y��>,\;é�!4�jps�,��)�T�<�qz��� �.��I1�V2><�@fZ2ű�	O�������x��2/x�?�j�)���22�2��m*�n5-ӨN��J�"��B�U ��x�:lUPv��J��_płK��^��^����>?�6��9��jH�3��>3���X�򂫼�j���#��t�/�9��68˴�hh{��<^z�����y�p^��_Vk�)���A�4��1�&r��ӊC��*�w�N�L�O�c�*�!������9��Ñc���5�՚�j|����I��i{��?=m��ql羫ד��8o���ks]�.�� ��%~"n5��� L�E����E8w��Xg���iV���pT':n@m�?�9V�!#�L@�Ux,A�I��V1��+~Z��F��d�l��K�q�hz�����%�n���z�q ��y�=td�^�8����fٻ�q�z�7�
h`�#����̵"�F���q��NΜ�U>G}!�ԳE��s�$�,<��Q�T��ı�?��c�%�o&����9�]�7�_;���h�~���i�M����0�����RQ�M��W��$'����^m��9P�l�Ġ��2�O{�1 ��%GC�(}�;4؁ �<cd�Y���� ��.�  5����㻪��B � -�˶eH�(c�F#\�O�
4Fr���O�8��kPn�`��@���9~H�U8�y��i%51g�
LR���UA$ʨ2�_vZ8�u����~�[)?f�<�^�z� ���]1�F��
�me�o5��xʆۙ���n��4н=rB;mƦx�@N�;n�'�|J�_�A~W��G�7�Éޒ��D�%�U�䜫��?�� o�P���b]��fw`���\|��S�pS�A|��-ׯ��{k�I��]K�S-������dD=L^ F�m�Rb��@p��TU@���I"���,���t{���ϧߎ��$�[w\+�,�ѝG��7Ƈ��q��N�z���7-e�H�6,ۚR�<�J�k��Bro���zH��$���q��dD?|�A;���k%v0ƣ�=h��P��EO?�A�T��\�%�u˟�{��ϒa������<�B�x<��_n3��40�<�f��wJ���=�<ڤ�3�)�#�LDk�
x���bN��D�y�E_���T�U�(%h��b��6��	.��J�7&����|f~������$:=xh=j��ʦ:����u�&Zɏ#{��큻��ូ� �w���=�S������n���uL��w��wƧ:�J�-�!l��E��i����VM�h|dlRՏ�<o��>�W荬&xXq\��ks�V�1����/0�M����C����M?�z��`���7�&^ׯW�~W�B�e,a�`������os\�Ρg�-܌��֘T������Ӫ2�p�XMK0�,:+X|����d�^�K    ��?k�T䌸�7(Ӿ�o��ܞ��1��Π�^�f�RwE���3����=s���E�fHK�$R��q�j�d���C;$Fc�В�$��1��,b䪀�5�_�wZ1v��^������
�f͋׮��^�n�n0���f<"�	���:��&V�ë���̮�ϒ}�'KF�`v�4����c����4(�y�<L���u�z��5�߭�-� ��d�u�|/ib��i)Q�$,y���^��k^��Ct� PiU}���o�t��p�Áe�H��2�W,S�}?7��s����� }t~^���E������#�d��#Kɠ(5�r*:q~���J����1���Y#hAA%���[Be�~>��bؒLr���x��ȗ�7��5�j�����qL&���$����q����<�9�����&�.��C�P�{s6�{J����~�d���[}�̇�H���;g������x[
�����[,PZ�~@�pm�f�#�B�R큉p�1���ԋ��
ދF����lR� �DH����m�\���ۜ9��_;m��3�~���<�oodt0O��#8xC(��0G���=�}���N?�_�)
cZ�H���������_�O�1�]�#q6E̞׺!��NI*����d]u�F�ZY�K� 
�Z�Kǈzv^/L�t����"�{��Ιp���zJc�na���fNdE�1$�0Y�\4&;��`p�6@��}���=INV�a��uvw��F��bFP��_�HXU4�*"V�����0kc���0��@��?M�I���JS�_�x�A��=^�����Ϋ�!₀������ 2BE��?�s&�o�?C��Kg��� >�X��t&�W�B�'���׫��E��Nɺ��0QM'���5�dE�N1�>�<�|�Ɗ:Y���x�q�-��a��P����\i:}ڳ��²"��BeH��:�3܅�[��?��s��Ɋ�� rpU����J8r	j������T@6!��q��"�w{SZ�r��'�U��,�5����V����><�;3R�``����~"t<U/1#��:�z9����a��G.&֯��$���}��v�,�8k��y����
4��u�����.vUw���X���
�{����u���_\���Hψ����������|����j���f^���A�N@�^�벲�+��� -��L ^ڙ> 	VU����t�'�{è�vA���
b�<�� -�Y����`���Yj��B��,���l�␚c�Ϊ&/X���˺��	��ֽ�3������PE��?���~K>�5��5	�ݴ�~�ƽ������83�����/��:��v{��i�:cR�z�o��F������J�F�f�2}9�k�F��IÈhW�d��<�լ(%�17�;�����p���f�Zs_��/����֦Ҧ͒����l�b%����+ދ㼗ݓ���U2�dg�ؚ_\���{Wk}Xz�h�3"��K��y�	nx���A�� d�ê�iU	���ZUb�*�֕R��l{��+M���hG<�;lo'��q���7<J�)\׿oya�T���\�H0 \_�9�1�@}��#�:m�v�n�y�x��9�j�����4.����$gh�C�u��-yWe��5�L��Rs�<L��F-�U�r�cʽ2 �=y�B Ua@�-����LIP>Pk�ˢ���:R���,�1Z+Y���
�BA��1�b#�m�8B����C�%����@U� O�-��B�Fya����,9����'A�'��<���� ��> ^@�����ұ*aƣ�gRS�Q�d%sc�R"B^�����"�����}��Mυ�r���-��N��Z|2;��:��ْKQ#M�/^J!/������8�HRJ7�U��%��*�@$�p�0Ka�� ��Hf�.����g<"y���#d����|�C����"��U<�r 9�4�w�diYu�z隵MPD�g�L�� F�� �E﹚Q�(b�	������t���$��(�� �!H�Ն������C�<��% X(�O��P��<�DYA�-	�E<��n��g� n��� d�,/���WG.r��5ʐ��?f�q ��G��3,�;&�d0�Q��r6g������ݡ�^I]9"y���������>�{Jd"���+���z�U�_!��X!��YUK����>��>��>�չW�s��;�~�cd��d�ce��e�c���'/�kb"��X򜇀-�~t�l^���A[���	[������\8��)��y�8h�Ј��VK�d<К��� ���B�9�z٩��K��?ڕ7�?���v޻R�ď��YVv'���E� X����4�Q,���!x#�d��lli2E8�.��
#,����=�ƙB���o�k�O�xy�ϫӒ��p���������o����)�.�7�ႀ9?�:#�Ղ8PKN�����_�\�G��y��u��Ld�'���AK;�\��F�!����d��в��ƺ�'�c�S 9)��M�{/�gx�r�'����'�t$�_����ͅ��Xv�8�8e�/R�C_�i�D�dk�`�F�]��G��:�B��@E׹��(r�YAT�,��)�=|'o������w��vI���3C)��K.:e% &s�G L��o*	��=�������I���O�xMy���Q�8��9>�e�/�:�G��2�	t%��`�I6
L��Wiǝ�{Ē�
��[�
�2���8���B_�e�aj��$��s%[�B����D��'��ZR0���骝��t���i��gJ� �,���o���i@�)J���8�3�G�E�����#|E%�@��CIN<q`?<��O��$�����ݏ5�T " $�o�������r�P�_i� � ����������A�F����b�bD�S��=���'����Ӫ�I�9�3���&PWpj�� _��� p��W>�ꛫ<=h��w��3�5�8��*Ŋ�sU ���p��8w��σ+�ݱ�G�[t��~c�[Ż��a���ì��\�p�?������湪���D�7�?+��D�?Q��rT^��E2���֣ya�S��u]�h	�`L���$�"�ˍ����$k o��e|�@DRɸ�/^s{�&�=1��ul�x��k<C���yX�y:o���m���QV>��֟�柌���h��٬��|wO�J����Yk���3riririri�+��B%��MR��*^��� �-������&��[.�Q}L�����ZAm##����`���ŗ��C�������Iv����#��a*{�,����o�Ƨ�s-���/�[���i�O�� ��v*�r8>��f���ە�u���:���´:qfub��ěՉ9��6�襽"L�����������\����'T��+���]Q�{���>Mqu�������3xW��+�J7�<�W .�z�Z�����^����qi5�N�Ǉ/p���O�Gܔ}lWo�2S�}K� ����98Jک����[Z�������!x5G�����+>y�B@������ <�.7��T��w����|��V|�T��~�dg�b�g!���h�k��[_���<WX�w�t��g08�};�ٗ�7~W�a`7�<�=��ӟ�����y/�\�~�#�����}-�����w��:�vu�������3xWg��� ^�!�:�xu���M|%�i[��+^��9�(�ehy���?�5�b�W�g�p���8���@�����n�'a�r� ����rr:�iI�_�" h%>?�)r��M�@fG�����ʙ�i�Nj4���?�/&����'��72��e���%�.�ʭ��0j$�W-���f�H(%^�L�xJA+����_�C�?�W^�$S!�y�0�C%~CÔO�s V�ϻ1}}\x���b�}�������t ^  �:Ztq�J�� �~��G>|�b�T4R��wk�<m�h�!Yg��Oϙ�"L�[bv��g��?����ӵ�����iW|(?���JZ�����?�*�z�IN��o彚�^��l���y���[���cp�x�y�v6C�n����2���@g��������`~�����"�������N��-�xc�b<����^�W|�><�v}����N��z�Ghw�v1�m���>��>��>�Չ��}(�},�}0�=�ou���d���v���V'%�NZZ�Դ:�iuR��M��7���������ï޸����#�ڛ��۹���[�ڛ��ۺ:;gu����0C�G�'������T$~�ݻ[�f�J+����@�Gܜ�Up��.�C��n]|Æ�0��E��'|�g= s�_�M[{a뒝�V*�rP��9��2��9�qu�����Y��͒������dW����w����z��꽃����g��\�@7L�i�aV��3ݶ�����@�L�����|8���zy�ˢ�su��w+E��I$�۽Z烻Zϗ���ˋ~�v�Guu���\�չb�sɾ{bk�������� ~�8k      =   �
  x��Zˎ�<��B?����,� _�|Z���-�޵W��8_�c֣������P���fgedfD���}���x��M�A�qQ¯vk0n$I�ܑ�~�c������ǎm';�u���_��~�0~�HJ�Fʆ� ���)�����2������<�\o��w�q+��2:�!�4Lr���&i�/��O�+6�+��>p�L��g���l]<�#Y
�Í�)ؾ'��a_��������ɹwL>t�U����Rjz1V��Db��A�r�y����������O z�Cu�����e|����6~�4������񧊐r;B�_��oҾ!c4�+�O��*E��F'.&����EC���fU"%|�n�8(�S�DadI'u�?H�M/C��Y�/�jj�f��Z��Nh��)��v6�f��;�
 ���� R!�*���ꍟȞ���eFƞ)[��Qz"�H�Г��Y2�P�#j�,r��Lڧ��H�+�po\	.���Gg���$	�T	���Ӻ(�Bk�g��*�����jq�z�"�u*�~�⬞:��e����o�������~5O��x�|���3��D������O��x$�C
�L��|��_��r%&�����o�ƕ̸LA��Л��H�I���f6���
��~�9?.�|����:�`�/,��zkO3N3�!��'�Ҡ{͍�6��֗þ�?�
7X�De�����Q��R��8V,�?{%�Qt�����? �nD��7�8h����-��Y�L�Y���*@��C��P�;���v҉^�()ړPۃG�s#GY�u���Qr�	�Ӎ�8%��B���\N� t_;�=0��+�5H�I�+@��.��%�nFz#����Pmz2����#�9@j'�볒�"N��7"�c�Q��w���}�Ս.�]*!ٳ�d<��u�d|�!�2ؓ�tA���ZC�I�Q�K��LQqC<������$���f��d�[l�H����sDx/�WM��wD�ۛnG�{"���CNW·��ʗVSB�r.�G�T��(C��Y4
t�!^�)i���Q#�H�BW�#C��pZ<��Dl}�xr,
Vh����/1m4��h����oи�y��|�q}#��r����3��e�qC�`�I9dk���@��i4�D�э��O=���n��?�p�N�+���.�ڒ���bT�f�6뉦οb�1��rod��j��7S:U]��G���R�+�Ļ�K��仲/k4Dg���ڥV��TT�*���^Z�G�ҩ�1UJ�!�����c*<�[F�� A�9OP����I ū�@�֙��>j׵�T֑�F������ `�*��)�	F��I�����!k_b>1�5d̍��߫����LW�������)���~0�@4�|� �e$ta�V'g+�t ����u�y��9,����=���d������u54�yW���"�u���f�c�x�;��WS	�{a_��{���������m���_W��3�c��>��6�ܻt�'M���l�9(�1�k[� �C��V����ַ�Y�1}o��������CBi�)}C?G3
"�G�*�n���Ƙ�_���ho�^����|��ྯץ]Q�.��ل�m(SR�����A2������)͇}°B�d{o�,F����tR��Q�����_�GU|Pz�Q0,ֺ����bԋa���f�o��h�^�Ux.y�*:�E��x�)�4쀡z8oB��+Z��=���eoR�������#x$�2-0Q>d/{L����y��8��2���EH
��1HaE.�n���&�c{��Gڕ ��qًE�*�^�ߢ<���]%B��s�fH����
[��tF�-C�Xb�f�G����������!\�ġ�!��?��_񠊇��nQ��)ˬ1��q�μI�L��^i����K<�a�d�C�� $�Sh͏���M���(�{G�}ʖ��R�(�Ǆ}��*�{�ܲ�r\�t��?��y��*D�)����<��q��� ����j�/N]� _%:6��ٞ�c�G'��ǧ�J�!b�6��iz9@.2}�u{��>��G����ز�	|��Cy��C-����c+>���0��j1��k�0u ��mTO�<�_}A��8�-��T��w�g�����k�ɘ�9�s�[���!ù�9e4��Z�p_���O>GO�����례�ߌtpZK5��g���p��u�)�(8��Ű�%�`�M0M3�����.|Q>���}��|�zѲ^���\�Q:��
a��}lЁ�X�D����a0�A<����>U�u��.I,m[�^���c}�[	�j��s�Wx\��w:�0w��	?CE[^նN6�uwt���Ӈ��~?�}�.�o���d�Yr�Yǿ�u΃��=�"���XZ��CcK�'B�J�W�d�W���s�"�Z_�h����s�՘`V�B��{2-�e߻^���>�RzȺ���>o�q�B��jͲ�� g�2�tj�XfZ�Z��#u��)���5%wm���1�|�Z��K=T�ͪE1J������_�cpo���Cf���q>���ג���#���6F9�2��F؟���	jl5ʩzz6:E1#&m��0l�N#���Pm��$��AVr/;mw�m߲}�]�S�ٜ����;,�n�$� �٭$���oo2���h����A�i��U�@���>�߷��[�<��Ǽ���ݻw��
�O      9=   �   x����
�0���S�dl�v^v�z��fP�mW�|_�ԋ�'�[��O�R�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B����F�      =      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      �<      x������ � �      >=   6  x����J�0���)�M?v5D�+�īAɶ(��)Y�r��b��"����)i~�@�����6{Y�2�[�j�N����6���</��V7��7���[��6
�P�t�_ƚPt��ɺx$3��U��$��٪J	�����Y���]Kkȃ�{%*מ��ͱ=|j��V�ө���8f	lL���1�+��Y
s��y�h��w�`���cO������8����V=�9�8p�S�� `���3��M�cNa�g�~���l#!LĜ�{"~�F�!!�)L^�H��
��D�0��f�1��Sn�      =      x������ � �      ^=   �   x�326���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\FƦ�;���%�8�H|�CR�������� �t^�      =   �   x���Q
�0 ����@F����O��С۟ ���a��]�Ee��&��(�C,�{�I�dM�YN 	���� �en�`��o�c���~��m����t�irQ�#�&�AL0TV̥�h��b�f3����n�:羝</0      _=   �  x��\M��F=˿�/؀2�(����řd�'l�@h�=c&[�`�Oٛ�9�䖫�ؾ�n~���fwo�E�{�]���hg�M^�@Dr�j�>�C��_}������د�x��~��]�߭_��|���o'��7q·<���NnD��O��8�􊆭of4�a��$�������x�����HY �^���x���L�ʾI�$��<�xP�'"�S����%���9ۊ�����ď�^��f��=p8ۇAJ��Ɉ'��]�J��Q �㧘^��dR����Q�"���"�WϜ�ʖ���/��kԔ�V܀ȧ0��Ld"���P����'�����������e���w!^�3�沇0�����X`�%�1�">nl�X��ý�w�_n���0rk(�#2�"�mF�b�#�x�%���<��X�k�#
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
FPB���*W׌�|k��]-&���{���(�~<��J`���WT��f��>�i�R�����E��Zj�6��g�K�Df�<�������h5�Q`؇,�����t��������P�j7��Ly����R�!��q���ճ��={�o<���      "=      x������ � �      #=      x������ � �      i=   �   x����
� ��>�O �Eێ�.��`��u����ڋ��b�CY���>����#�����1 �gyY�+v+y�?���?S�В�g�>�h��(Aw@i+A�a�Z,�^��kI#� ��
\ J�.8�cMq���`Rt����,�y�S�K�ɮ9��võ����=�~ �[H{��[��Oq\�ȱ����?	'��      ==   G  x��T�n�:];_1���Iq�e�.�Т� ƈ�UG%E�����������3�d���d�ș3眙���7�Y/ۛ�;��I�nn^��}��n�~{�������zs��m/���(������ͱ�P^wO^o%��M���ib25���s���h��-*w���0E��S�sd�����R�4��!��$����rn'q(�h�:.�c�L�去�:��m��I���P���C"�m����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���_��
�#�
 (���*�����I��6�������������/����K�Ce8��q����������(�sG��p'�T	EH�@�Q�mZ߅��A|�=��(xr��TTom��TFdȞg�!����`��	�F۹�?�����ZQ�,[@�N^��Pr�Z!ڽc�TL�r%�<F16I]�N�ċkk�F�Tr�d��� �W�9�"����0��Q�=�`6׏�ͣp^Mh��=�j�,L�S:���g�#Ztu�
4��4a�5A���g7q:<���Mq�������]]���9_����պa�w�x�1jfp[,� �r��-�R�����N�������l%TS����^�ixTH1�ap�����{+=����TI������N}�P����뎘0�:����0@Y��@�ʜ��`��K˱?�
�353?"���
B��\��v��0z���i�S�>�A��q�y�^M�0%�vnU��I@��l����z�gݭ������)      m=   e  x��T�n1<�~�?`Y%A�m3䀴� N�F=��M#?&~D"Ñ�'�Q�>�r �i�vOuW��g篛k?���|4�I�w�b������е��/���l�v���-Yn3?����IsS�:�@%^�WNi�j�e��MG�F9o���>�
��粉̯�%���e��Te'C���d{C�/ɬS����9��IرS��2�Z� �2���"�E?��(��e���o*r�J��Mq��Ȩ���T�I�^J>)�1��'�^�@�(1�5.Ց�D���ɀ�v�D���*
��L6�ڑν0��M���î�f��/�u����Ǎq�5��xh����'V�-p ��>�7H%_�%x`��)Ֆ��k�&������ТT��M��*�T�PZ�`��Fc���f�j�P�X���JT�2�jxuG�$�?�����u�����~��c��¿l.ɉ�(}I�_�2�hi�^E4�l�6|�a�U)0 F�͓y�S"[�˴��ȅ���� ���8�WM�5<ٰٮ��b\��	E����/���cP;;n���2�V�L�GJ�GW�-�@�ؑ��
[����� ���� ��/2fg6��M&�?>�!      F=     x��U=o9��_��Fd�GR�;%�We@�#.���
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
�^Ovv��(��<��MtU�O�>�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyHO��(�#��EO�Qe�xy��Hݹ��^���������^�      n=   �  x��VMO1=;��G��(�@ɑ����=4��V��!1ڵۋ���S8����������I4@���(���{��Gqnr,LzZ*�L�NN?��?O�	ަc��� ��&�tlt��"��+�EUF\NE_L�3\����5��r�4V}3�C!���t�D�r#�����P%j���c��pt��@$g�s��6��Kv\�/W&+�e���q��EI�Y�3������&'��Z�)t��C�����w��f�{�D߯Ҍ�rmzZ��@���X��.�����&p��Zi�5�ӵ,D�fC+�wY��L�Ԭ�D�ռ�>'s���.��euq�\<�[��	����(ƑN��:
�0���<M���W� ���Q{�m;þMg�$Jb�bж�E���=\b���Bo�"��|_��Ε�J�ZG��]��b$����>^Þ�����t�O�Y����߉,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��j"��(W|�-9��WP�Q������d�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���Q��^���P�^4� >���Ƚ]Q%"�2W����u5�4��� �ms��sA�oq��g5eNw�.G�҉_G�ÿ�A_���IgΤI䉌x5<P�l��tY��8<Md���GCJ��:K0GŇ��*D�rˌYJO�"�`х��GY�����X?K�S�)�(|��N���1a�      =   �  x��Yێ�6}vE~@�)i�$�X$�^�|�`w'���e�T�XIUO�w�]8PQ<��(�f%�ֳ���˪��WR���8{h��lc�4��5���}�_mօW���_�qa�h�Y�u��m�;�x���~��K�[y���EkH���0S�ڞ��ӷ1���Ϻ��`�5��h�h�)�ж��
�<S�C��� P9�Y�Р�f��1>��������������m����ӾP�����;� �ʢ�ՠՂ>�ו���)a�u���v�H�������O��u�4|�~������4������N�ؚc����1�xuwL������H�7s��!��B,x�)��I���svC{���3���5�Y�厅:�d��%��(�n�����q!�#L��fpG���K��fO+#�Y�cJ���h�`)q��7��ɇ���pI��c�H��[�)��_�m����Q� ��p��.��6�xO]"�}͞g��&'4���B�]Y�٢��Iy��F�wH�[� ��$�Ф_����
_����=u&r:ӷ ��M��8�Y��ܑO[v���5�s}��o���i�ƗZ��<�V)�(����'��n	��h�4KÚ���i0ʯ!h�x���x�B��z�'sfz_S�ζ�lB��?r�h-t�W��������Ԧ(	���js9.x�sL��5ju+)�b�R����)h�m�I��jK��La��Q˴U0MJ��t1�C9�ܨBI*s&�"���$M\^J�
��`�
	��*�ܵB�ķ:I�7��|��3ġ��mf�����(��U d�v�=R)��ܺJF={�KZ��(�����~��xX����&��ă��yT�Ai�3�fd�|�����N����e�_4��4��l� #�k�,���yQ#�Q+����tO3H>o]������.�(4C3�yy��p�'i��I6ϫ���G�mo��J����A�
U���.�:BT�]o+�u�+R>�[+�.s�_�{Om�#|�.�5��V��'>��"Z8U�y��ߛ�$L9霈j'E�4f�>A�]]o*��M���ϝ��5|��D:���|_�ٓ�?,3���v/R�¤%b�E�2*9{�F7O3� eo2����R���%|�̈E��#My��.V&U]�>1�.mCMr_��R"1������%��b���.u�'cWQ����0O[e�M�(��������������x��یE;Kt�D0�W��MF�=�k�&�)Qe��H�����Ͷ"�uG���~��F�ʌ�D����Sm���3E�5&�hǠ�2ʌ�XW�4z�E��S3�ϊN����0��̄���������lQ��I� ,��߆<V�9Q��on�l_΋p��6ƚ=���(Q^x�Ư�LD���	d�2Z�5�#M�N���~ƽa�����Y����Pm��bIG��[�.�֝K����!}�/	���M�l{�,˶(�y~�tc {���Gy
�/�Nq�-ٰF6j�dB���Y:�^�n���]���t�I���5��y�U7j��9ږ}0]���t�ґ8�C;���8���
��&�g:��dѶ��y���������W5��Kz�dG��Ů`0spӾvO��j	����i�-�p�题r�ԑ��Z1��0�O'޶�d �rSQd�c�M!�G���\QdEy �x�ª=O��{����-�����II2=`��f�Z��j�(+�hOU_:oN5O���҉�A�B�0sE[?i����^B3��yY�<���2����q"�#���"֔/���������A����6�� �S�����%D�Io�_�+C�ˡ����gr��k�ҙ���x�&}���G��/,N��G��r+ze�jp�)�z�"�46�+*s���fH1�o���XY�����/.��VƉ"R{�}O�`*���W�p�e��ل�:���/_������_0f��H������///��4|�      S=   q  x���KN1��3��P��²*�*��4r3.e�4�J�6��#�b83S^6�DN�G����dR,�A���Ҡ�m=��-f�z��z�~���h>�glC�Ig�Ҁ��H���}1.��h�G���oI��t`ՠJVap���KQ��%�j�P5�'Q'�V���è�&7gᭊ��Ş���و��F�F��8����jr`0�݀�@����/g�۳@^+�`[WǏ��F%U���a��Kj�Ya��=v��Li
���,lW�
[!����?�8o<q�C3�Z�����l!ӽ��,�9������_ˆnd�,��������,g�
�2��5Z�u4�Σ�ĳj�{�G�zT��'�;      k=   �   x���A
�0E��)r )-T�.q�օ�B3�@�Ԥ)��#x17*���̟7Û��I�,�v�fT�A'E���^H��j��J�������c��fF2��$)]��LٜL����ɀ�.�U��o� 0,LX0:�)�I�|.0�tL|j
Z7�?�+ң���1k���d�N3����_^���
:����      =      x������ � �      $=      x������ � �      =      x������ � �      =   �  x��XɊ$�=G}E��n����u4���@��W��$��=��n�s*���n���|i�[,��r(���0J���W�&%h,�ʹV�� ��~������_E޿�T�d!R��K�����o?���_������Ao\���ҪF��i�-a��Uw[�%��;��<v�zԚF��B/Â���j-4iu�L�O���x����Va	R���^C_�!Jk��)�O�d��������3~����]z����+�"p�B�A�{�W����4x3��'�YgD���3�$�Y���V�]x~���|rx>�Y2� cmt;jh{S��5���(]u�T�DO<~�K)}�vv<9,�T�3�U1]�x�B⭥�P|=]{X_����8�}��Ik &:f�)K�����m^���M}+���/D���=�9^:d�����\S�=�U�rkد5�J���W���V�������l��2�ئ1+璳`���q9��py�9���384MrUh(˦K�D'`���S�H�z�n!�~Z��es�Ld��L)׀|��r�p���A����44��h̘��k@�S�nU�
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
nm?S�V�#�����̥t��ɕ�s�j�D�H���Bw۷����5�iOt��ɕ1��n�u���4��4�B��q%�vm����O��>���H���Oooo��G      C=   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���c,�v�\{1�S�q�=\\^�o�A?�{5�_Y����R{�}s_���OY�]���&-�^W��#}�5MàΊ&u>�姥ѻ��^���H���H[����?:��-��+:���#�&��j�Q>(R�h&��Qgm'�%�(m{-lܡA?����y�^[��w~ڑ����)gy��P
�"Pj�E���1p�J�

��AQ@Q@Q@Q . ���0�s��0��qp%�\	�W¹\¹����\� W�+��
p�J0�
X �`X �kp5�k�5�H����׀k�50m 70m�h�h��PH($
	��BB!��PH�&�f���V���\G�f��u�i�i�9F�1~�c\�h G�x/�봌��
	K�{!a+�*q%$K�J<[�6H���Jt[
(��+��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 ɰ��      :=   w  x��ZMo9=˿��1 x#;�{�z� ��`3�S ��dl�C6���M�9�[��c��H��,�ɠ�du7?__�*����w[Im���JQ*k�o_�����.����R���.����^.��U�ۼ.��5:��;������UTi���u��^��j��:bQ��Wj1/ħ ���h���V�T��p]o�)ʠ[��O��n#��5�h��-&��B�B�+%M+}aD�����\K�+z<;�x9ю�W7�����rnq`��n̈́���h�Z������tNt� ���E��k�jQ��Ma����F8�a0��BY��7ZNgnlaWג��E��Z�ҡp����|ºj�+�����tTLحП}4�kXLxKSI��a}��$���5���6�48Y2��&'|���^nv�m��LpP[��ȳ⽚�7�7�:[x�:n]I;���҆�T��0ņ��+�����e�N�<�ȱ�ɕ�2U�-�Н{���c�f��V���C܅Pռ�� ţ���Z��E��s��w7�o�w��/��Ľ?'�[�°X�Ѐr1�[��{s��� �Z��,UM�C[��V�W"� +n�'�c�
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
q�,3gS]l�l���s �]�X~<�Vj�C�h�aA��nݩ��S�X +�r��W�JJh�*���r-~�P�]s��5�4�6V���B�~N��T����콀�	�����k���oI�U.�Q�*��R|"2���W�7�MW����g��&���!HV2@�:=�x���X������*T��l��Zro{�l�,��	�L��|��"����/?�k���2 C��IG���u'��<�b�KW`?��=��|Ӕ�6�#���P(�Z�`V�<Og�t����b�*s::����]`�F�?��Q���?�#�f�z��tS<��:�E�c[�d���E-T(�[|xD�l("b�z��x�nOcs�G+�Œ����]�p��t�GsJ���a:� �X�"��`�����~)���x������R�h      f=   �   x����
� ���)|QكMۡt
�/�I�k_�X�ҹ���_�j8���[&
>gt]?سC��~ÛA��Şg�Ė�c[�P�WZ�h�<��{��g��ɘd�7>�Mk�5pY��+�k~�K͕��\R�      s=   �  x��TMk1=ۿB��Iڦ�5qC/NM�)����@+m�a⟓�C�O��i�8!ǀ�ZI3��{3:;�4��-[�\�h�ƻfy��z�c�,y�,(5�O���r�\�D�_x9l��_f���5ٲZ��+�B�)�/&V�;�C�3E2[KQ�C�)�q�ت�v>�. H��_�`|�
1*�2�%)�@a&��n��ᨆ���AF��d� mH#6��uB�=;2nC+�he9Ε�Ǝ�z&H�#�4�#�d������IH	���÷%�ɚ�������M4>���.[
U�Ǐ�"��%�|�����רڬ��^�[�L%��v���Z����(}���AÉz\Kō��r���h�D�]Nz�^<��|K[�:�+��^�E���6��t<�7N����tH!�� �̖908јʸ�[C��Λ#Ť5�"�����FJ��R�����~~k?L.Am���}�ѵB��*Q��5Cg�y�Xs��M�2o�d�!�r��0`�5�ZL�m�ΐh���k*�#��S��~�k���Y�
zvrk����Ԁ��5�䋔9�m�ig�BkgE���!A��؎�S��l־��!'Ww��Щ�<}�ȣ�Fk��X����Px�CR�R
�'��5�������l�W���G~U��!�5��o��2��A�l�B��d�#�n����?�,�      =      x������ � �      =      x������ � �      2=   �   x���An�0EמS��@�%
�B�u�d�,9�(عXw�r1�$������%��,Ď����k�V��ͮ�,eI�,�ɯ���!�u�h��#ƫ���e!���k�;��'���u��H�8��Ԉc%fbh��s$�dv"�L�5���>�(�/�*�ҋ���yxK/�*
�5��Q�nߑ�{z�E�hN�1ř�v�~��e���}��^v)*m/���p���B�      @=   �   x���M��@�םS�	B�$:�����Д�(H�b�x�9�G�b&fpA�Ŭ��x�Q��Zm�S/v5��бۮ��f�ږ.��l��m�daO!s���Q�q��:p�SO��bM�9y��%��+��0���,p.���+�vD�,��y��8J2����ٺ2���Q��y@/�S����E�3�L�#�t�)��:9Q�%b���<�UU��֙�      =   �  x��WI�eE\��tzJ/[�H-AohX!���	.�R-j�+������#�m�Å����-4��)�W��h�������������?�������_~����o�����__�8ۣÇ��i�ZIC��:Le{����%pp<���dN�t����($e�sv� �3��ae�3�`	�����_��+?�����"�X;�w�S��j��`y���i��kSj�F�̵�>��%�؞�kd�A�b�k��-'>sc|�X�� ǣ.�陴A/�V��l��Մ�v�y	� �O�mB�L�vh0'�c�QX�8?.���Yhث,ر.����g�[� ��bےV�̓X2�֤l��y,l���=��(��*�D'$b�h�+%�1؆7��C|��R��N1TIK�Mc�z�����P��c�7�u⾍TǤd�TxbhO�\�Ȑ��Sb�Z0nW���i��ض2ˉ�m@*�J��#��ɔуl�Z��{�z����Qj/�,`�,eC6�>1ش�-2�?�Sr�>�Zb�'��g�%�zZ�E�/�������O?Ԣ�4FѨ'���6�A��Af�V< ��G_F��Í"��*�B�&����Ϧ�\9�n��u�7ֹe]�����X4֣�r�N��l]��k�Uh��c�����Ş���:��Ʋ�8�Р!W�g�A/�:|���b��u�v�
��Y�F�d#𵹶�_�8c˾F�]�iC��B�e ����7�j}밺�ut{z��G:4w}}���K4�U�2<��z<]���Z�,A�J��U�o��A��F�y�v���5�!hJK�����"C�����J�@j�
Eq�qFȶ!�`�KH�s�ucpij�6Z"�E7<�)
4���>�8�����>+\�X/� �mv4(��v�]Äo���V`s�[��{h0Pd�B�!��ߗ��� ��hGy��r�:�?�-߹h#�-{�V����@�[�@�M���C�<�)	>�7'
h�_sl�G� a%��wy3����(�$��2��ۀ[<Po;�Ƭn���褣�;n��o����UQ�!ӄ?oFǅ+��X��u\���`2ԍ���Y^P��Q��}[��$���+4�xA��!r���"\��Z��w�u�Uh0�EKY"��{U9\��R>k�䲳�-24�����5��J뒙@�9��q�
f>�l�w��owD땳6�M�F�O�lf��UCV��Q������Y��d5����#��7�.n��
x��zf���[
�|V\MY6�b��M���4��3V8|(|b������D�s�`��Am@���̝����D�tTܙҬ��3�'�Q��=Ua��+9�f�z�z��;�n���������/�CP      c=   �  x��T;n�@��S��v�_)�Iȉǩ��(^��a�#@�M��]Z],o��%9�
��|߼�\]��n��V�I�:K։�g���Y=�U=�T����ǳi�9�O<i:�]L��[�w�K��:�>E\ʁ��<�X*^�Ŧ��-�{O��Cd�7���!��b�nͯ�&�	L�{"C���^w`�18q Jj�<�}���r����L�T����#�).td��?K��w<�D���eشp�d6Ԙe�?��5Pb�`�ƿZ.���ƣ7ϣ��w'j�Eu�Jo�_2�8jKw^䀹��(vR�Gi�u�g�b���4�`��6���O�ͳ�ҹ^�r�i�~&��r�qRF�8+Ab]�X�8:H���jH6e*�ʀt.v�ޟ���jb�*�Ц
CǊ{��^���$�#����$�R�U �2XFb�h�+2�KM� 6i�y�2S<37n�����nh�[��^�������nΡ������`�,c^r�{�(j��l�2�A5sZ��.��=}�1:��DzS]�E}[ ��\��V��(<�B�����2���n�r��)N��cൄ�'*᪺s�~A��Jwp�iN������;�(j�zBt	�x�V�ԎG��h�ii/7      =   y   x����
1�s�.��?��HAA���I��?�֫��St�K�$��bJ=b���FP�Է�.��=k}���u�9��j�ev�=�����$5+�i�.�>�j`��?� �	 �s4�      =      x������ � �      B=   �  x��V�nG<S_1G
P2����X��J�0@4w��1f��3���S�!_�:���/I�̮^W�������b�rr.%;ٜ6�TX���O��_כ56Kj7o��l����FV����f�����'�}i+�������4�oؙJϘ}W��cs�6%*:���E��P�+������5�V�����9%�o)h�a��	���hh+!%�:�i�4���Ɩ̵�����̮�Sm?�p��J��{��`iv���<�7A�`�Z9�t�ō:4b*�*~(X�gKM�����Z���;����i(�<d]�q�6j��sڼ�ߡ��Z�43W�A��Qs\P&u�9a�����$��&��p�;���n�t� ��!׊�RE��>M�l8� ��a��M������t��
`Ĭ�"���-���MR?u��q�|�R��9���������s!�Ω���㓔 Z�<�p�H����>u��][�5[��h�U�|*5�w�k��'o��6�߫�W5����J�y]���8�e�o@�\fb��% ���A-*��A4?�Y�SlL� �4��M��ѐ��Z_9��86�K��8�.c��*�] �0����r�7vc3�ǘ'3-#�1z!p�=���
��sj�r���UG���*}Uz�%��"��	$7�oF `��d�Ϩ���_ȶ��������fr	�í8Hf��x��]eB3Γj���M�����M�ߧ$�&�����v�-aխ��Ef>+�nT�d[�u�Mf�ُ[Ф$m�VX�����
��bo�a\�1�Ō��ٌ5���ǔ�yaF �G��a돩U_Q��&}������������數��@����$B���;:�L�`��-a��
ي��oR�04VUj��&�=�`�W��X��y���\ppz�Ή��
,����ؔ����	����r6k�發G)�'�.�U��N�XH͕ސ�:>|��U�Ǔ��a/(TZ�5���v�6�.������Ou#_%R���Z��?x-��g߃l���ɵ��{�{/�Xt2������KŜ�G�T����?��A�����Q ��/��c���Bӿ#y\��`E_z�Θ����_��ѻ��������      =   �  x���]�G��{~��@�RI��;�������^���'����:���n�e�3n����*�Q��yKk�|w���]�����q����r؂G�#���O��g��˯����_��m|9�����������ꑗ����<� ��d��X�'`x��������������?���>e,[�XB��p���HޕJb>#�\���O�Y����v6���& l (Y��w,�\�Y�������]��y&q�4B��鴜d)�Ik'c9]XN`���+{�2=e٨��g_�7����]R���QU��6v��,G���xa9�	  J���,�qk���I��]6��p������d~��b�l�ᢄ��[�ﶀ~���V��-�Q��mr�r8�#d�u�S���JD��\�ܲ,�[��lr��e0`@ɂ��c9�e��Z�T_]��9�=�=��1&�5$�_,S���2�}Ef;��v�& l (Y0��,g����>��J����K�)�e�V(�u�i:����2�xa�� %F���"���[�y����b�#��vlli�����XΛjL�A��tѕ2��d[��H5�*F�`�c����`�R�J`k�{��p�*�Tnu�'�t���� %F�vx�,F��\�,M�r���j	�#��Z$�_U-��Lբ��E& l (Y0��<k��V�d7�*z�A��͖{h1����R��j�j*u���L � P�`eoy�:<D)Z%���ҝ����{�Q*ƽ�y���ֱFZ���P��,�X!
cɩ�k���R�ЏS�����^�4�,�x��-�Tv��
� ��d����,�%]��,��OG)�Ji����Li��x���J��3�ϒ9���_{z��}��
eQ��e�H"��9�6�./à1���
96R�J+S�.J��<���CN���)C{�;｜��F��+����1��>ނ��Z���-�i0OCP��!��T�Sp%OH��Ѻ� ����]�34�<[8C~3��j�j�z�XɬM�7r���Xv��}ة1z�J;&���z�oefq[Ƌ�)p� k����#f�Ȭ��!`F�*:&��汅K�^N�������5�UY*�zk���t��)�	  J�콛�*�[��dʍ�0PC~��/mǒ����c�����L	x1% �	  J��=�BUT6i?�W�]�C<�p�CZ�H��D��2��#EϨ1=�=� 6 �,�{����n+�DY&��w��r�+���Hs̈��MgY6~/�M����~�i�̿��}��S���걷�JaWC���X�	b����s��6��n��5�^���
�-++T~������&�A�c���F�G��Ⲳ��ξ+��+��W2�L����<�}�����>����<������c�7��ޯE�K��M��$G[JZH2#f�p��g#���<���O�e��!h�^t-�`���#{ϳ �&���J�a?���Ul��g������v��*ϚtѠ5^�52� ��d����,0Ƽ-FL��uǣ6רx��m�kC��<k*BcxcH`���#{ϳ�Ǎ��ޱ��E</)smW����'���~�(�Y������g�(J��=ςe�����+]�4'$)�]�q�����*Ky�5MQǋ��L � P�`d�}�"X�YX�0��1ƿ�Z�nҽ1`�=�TUO�E��gt4Wxq5�L � P�`d�y,;�qhy��t�D�Q��46iܡ/��t^���3u��B�.^\ᢰ��ĵ�d����,X�uk�T쵻.�"u{��nSY}��a�����Q�p�-Mǋ/L`���#{ϳ Z�[	{(~7e�pL�Kk�R�:_��΁2�,ua`
����n 6 �,X�[��"n����b�f�eo��!�lԉ��(���*�?���P{MruO�����J��$�V礈�J�����Y¨Q���eo��*Ky6S�;���L � P�`eoyNO?�{zz�?��>�      =   �   x���K��0D��]4X���Ĝ�!8���B�ϸӛN/B@�У*8��v�%T�l5P�I؀A�bbᅼ���{}V�kǓ2�*��q{�>�}o�8s�z�.�m�}�o}m�_3�1��)8R�����$�Z "'����0�+���P�P0ý��)��vܒ�I'K��-E��{�c��.���	�����!�P����� �A�X2I�:�S>�����W��g��$�{      X=   �  x��T�n�@���2A�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝��ݳᨸu��]y��F�2Ζӫ���i9��ṟ�:*��鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ='gó���O��}���:�g=P9����OjںC�4Vy��N�B����J(`�&:oٝZ
�R4����@�G�X9/uqV�[���b}�ID���HuV�n�6���4��i�C�ݼ`;�f���0�����-�Qۧʬ`o��qJA+��Ed�`KT`-E��j:��Ni/�a%�FN���q8�s�:r���:�����r��
�����Pp���uC�K������E��Y���} ���y�Eߩ���������do�[9t��eE�lC�yN�]��VG�Iȸ�ύ���F�g��Tz��`�����c�{����뚣Yc%V�fFƓ{���!h�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�������_~��      K=      x���MN�0F��)� U�@W쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O.w�*rA-���^���U�R����^}�j^ԕz�=1%4��Ɛm��<{%N��Zc?0���oL��a@p��=y����Fy�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      =      x��}Y�-7��k�
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
Y9�|!Z_�[�V'��i�#U�D;����S��2=l�h�L�� ���Ô��d�����5�0��3�h.��Qd�c�Ͼ��%pev�q|G���ނ���� B��K�Cu���X�]��3�d��4�0K˾Y�繵4���������4ʙT�1?�Qݏ��|��e�d��Q(QęR`t�������ٕs�s���v���?ۏ�~�R0)��P~kk3 ,.��+�0X��d���Sy��y�1���pv���h�\����.~q�X��9�V��=;�Ź��4xО"iE+N��йo���R�^�k��>߯e.�}��;�l /HA(o�DT�$S��7��2����c�O�p��COՇ�J�p�*V�2�>�K���닀|�����>���~�G�S�NJY��U�)|��Z���p�Û	��>�~Z��Խf�Ue�r=^w6��f���h=?y^h%� Au]�����]k�j9�Q;�题���ڣ��>`��_��m��#�i~'�&�7�3�3#�3�A�Zs�RPnM�������N�w�_d�1F�^�L�$�Z�ਃԌ�T���T$Wէ�&� =Mo}�����?����ӡU@      =      x������ � �      r=   �  x��[KO�^ï��-M30���In$�&Y\Yj�t�PwW����7^f�E�]����w�Տy�H%�M$������<k�OO��U&r��W�Ly*U�\���^�\%W�)Y�&�m�\-���h�B�u�۔���J�}�e�p�\��*�y&4�g�{/���_�K�ϧ�Q���-o���K��2����%�?���,l�3-s�w���[������� ���8
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
r3W�}� �Ig��{"��S�����~�Xm;{Z�C[*}PW����y8[���/�C�ɸ���T5vW}^�io�3Oԕx��u�6�rY�ao��/����a\�T黑��!?,N�4Od�K���߿�����x��(lpDկ%;�ṹ��Z�8�_�7������_��v���]�����5N�j��Qqt#S���y'EE����J�X�7���)~j���ُ�8i'J�W��@�c`q��%Q��p�Bl�n P��Qt�Pl+�<���d~�.��cWU5�Ȩ�:����b��U�*���qI5��N�L(%G`�a1��>��:��%��V��*��1o��N�~��#�����x�[Q������1�g�T��쨩N�DS<��mkQ�ʍ �8Q���c;�����A@'6�Bj�fW^��tc�%N�0����l7�q�����8v$3H/�9�����)�&oZ����2k1V��_Z����f(2]7t�gqbr�����|�R�.����e�<L�8� ��31��gc.z��Y���9y.�[ѻ}6�J��ӳ89�n��9}W�y@�������9�R      =      x������ � �      8=   �   x���1n�@E��)� ���r�4�jlh�eƬw]p�����b�MPDM��ϟ����/f�=9���ÎUlS�m�}c�l��VvY6�ݟ�|�A�qg��@0��]nF�����4
\#�H�	���i�!m|���E[v��u�ܞQ�C�"�T	����A�RM�MyН�/ə��uT�ק�V��Iz������$!]#;���l�z�<�EQ|漞      =   �	  x����n����O�蠻���{�d�IȲ��2��C�"R4�S�"/��\r���&�H�@rv�kO�9��h�T\���*[\R�I��jQ�R��;��N�My�d�ԧ?���z�cI[6�//?^����>>/��L��W�|��/��p�)�OV��4h��1;�wڌ����������};��hhr�s�=+ݪ(���@9�n4��{���3�
������B������n�~i7WwZ�ʆK�v,;��-��$��Z���*�1�\jVV|#�շ�O�i���K��K���%�_�}�|���⠴��ֻ���b�(�ړ��>k���2��I��=���)1���'6�<bq�|�Y����kn*HJ<�n]b�o|B�^K,/����:���:���vt��\uT��b�z���k��B��N����c\���!T�����*}��&!Ü�W���	�F��R��gz��C�?��_��<u��d�6^{�Zv�8%R	-�*��v�j�)qX%^T��� �� -�E�qↇZhòW!�x��j"�:�iÇEm<^�����>m � �sl�jR�XqIV�����`5fJ���\�5_�a���Kc<Q��-P}�Lp��cvt4�4�s/jgJ�$��n�^v���*�lyx!a,Ԅ1=��bR����PR��B�M
e�6m����xi`���_���������!~�+�Q%�1��G�)�����35o���#�?�<:r����j"�$C�dR�4��S���q���1��3��VkY�~�j>��,�┝���S��,$*8�|�kf����1/y ϗ5,�a��r�U4�v�LQ�"!��$3�=ن�,yH8��0E��1�b2��uAA�]5j�1��6a����O�r>6��ݔ
<%�4�/�]�ՓW���]Ȯ�9��-�[�Y�7�����n��3�L,Œ1~$h@SA �5�BUK2��xj�h햻�=u�93�x#GL���Z���p�0�Qb�&�!�y���엙���������ݯ���ն�G����8W1��0E#�R��E�zt���9b��EnO���N��n5��єR�щ�d����6
��>�9���y~3>��㥑��ٰ0E�=��%G<DS.�T�*����64zu���:>G�ߞ��w:�gy����\���	+q�!㄰Ǧ��z#S;g�E��<'�U�嶋Omg���L;}�z���ǪsI�Y�gD��\��*^\�QW7��	a�'�>���t��jS���<��9_����6Eլ �zL�:�����������؟�"����=�(c��q�ngOY�v��\��p<%��V�L[�.�aTrHe��T�;e�m����	.\ΣX:�P�/[�W+IłQ��.���jY.�<��%��+�Tgv����ۼCvT*�e@[q0B>Uk�&�\rĪ`��f�����C�{� XX�Go�@�#�U0b#3B���r�&����zm1��Q/�#�}{�!ݥ��o7dx����D\q��-6v��1�0n��-e���v�N_q4/��/�½����b�M�De�VFiG@���$͔Y��qLә�0/q��m��1���LS9��p���9c;����������ζZ�w�LԪn��c�
l�W�!Ė3��Wf���������?>����%�v��	,�K�Dh!��Th+r�N�Ԭ���Z���!z�V�L����|N�U5���ؘ5�mu�{͇P�ڣW-g�¾�c�U$,H��^[Oi�����4�������LVxW ��)c��k�V��л"�a�)�N���k�fv�(�ya�k�xl}<�"���#yW��5�K)��͵��tE��ꧻ�Ep�'�
�

���VVH�Vد5�[��thQdǝ�+��!u_Ɲ�7ןn/k�|�k*i��b���6g�0�z��+���5�_�d�r8T��s��*�?0|*�m��qTZEl��I��Kny��B�j�=->�|*§��b�d��!KV��b��S����k�9�.e�>D��h$v���dj}!��"�̻�Z���z�����Ԯ7�¡b�*�Z+ZN�9���h29���ǫ�?���O=�_��7lS�.��o��F�
�ƑmIZ�$��
�׃E���i�$��si�vT���\�����~iw��-􃓦k����԰J�8*�|Ԯ7*�u��ƒ�����O�GA�m�xu���2����<7X�E�낱U��1��?I��6-���h�x�I;}��qp2�`�����Q>6\U��@�R.Mc\=�[���<�K�����>�����ۧ__��__p;w��8��`F֮؊=P�iu�N$��P��F�K�m�O�<�o���>����c�=�,�z�'�;N�O�&�G��6l'ɪ���_Z�x��6���(K�x�Dv�۾/�ŏ�����/D8n�      '=      x������ � �      (=      x������ � �      Y=   $  x��U;o�@��_qc�����i''5��@�Og��Q�G���t̐��U��I�$�'��#��Ǐ�|z�]a�����F�//.�?��R=���,�N��|�T��Vט=\g�l����`�ϾM�eռ%�`w��7/�k��ж�jm�(���ZP�a@\���?+�E\��F^���(?�O���;������n�^�OX��p��K�gѣ�(j�ݐJ��C�*e� ?�Z ۏ��*����޻IO���.p�-p��
������nq�;7Y\!:DNo{������q`���~E��1%ի����?2(������G�X$��n��P>4/��>hKJ�s���lR#��#l��/k�+�������ќX���mD�8�Գ.���>*�3�gӽ�t��ҝǼ���Kw��R���1ܖ~�>�r'ҝBAdb�K����9�Q�j 3���ľ߸H�K4D�~B&a�7	G���'z�/��xU�J�Ax0���v�5	%E��b�pc���N	�%i�%��k�6hR��(Q�*Iٴj�J��M�`#�	p(�Fjt�4���)��Y7�K�,f'S�f����|ov���mc�E�xG��h׌�$Z�D<�?c��(O��*Z�b��NZ%�(]��V�,)�wlU�dK4�Z���D ?D3RFpIX��`/Z��^��[Jv��S;��u�Wʖu�ӗI�C�V���ݠ��d�O�~�7�'�=H�������Ա0I4�&�9��A����<?u��\��r�i�U�n��iA��&���?t{�Y      E=   $  x��VMo7=K��?@P-%@[�$8=P��(z2 PܑKnH�P����CO���?�7$wW���t|0ŏ�7�w6�y��Ud�j����ή��wn?.WKڭne\�>[�L���O�)�t��F���架:~Ӎ=܍nF[i��Nۊ���9^;�m�)�B9+hC*b컐F������{�"P�DT$�F�"��!ۊ��#a`DĔ�>�q�ώ7T��V��H��1u%+
�9��fF���RB��#a����i-燽���UȊ�1F+��[Z�l�]����Aօ�h\��%����DK$�K���n�B<<)\	qG�kT���N�j���4;�,���]���������!��A��:�b�JP��>���% ��Z0�|���"\}x���Q|�edJ3��%>��O]��������)%~χ1x�G(�A_e�>�����Z�Ɖ�4��~��w�<E'fo����t<��\�"��=NI� ��q4_K�+�nP8�HZ+�.y4��'�"���Z,�>K�Pb�C�����^,���X5���ı�  ���j�4Ep�_�R�N�A��+�-L�P�l&�OItRN}B�u�ܣ p� $.�m���~<����]߃�3�>S�}�˄�� ǃ���6I��3���]r��^|�q��pk��m��������(�J9Ɨ��i5�9��sQ��\�Ԛa�#�e����e[4�{e�Ӕ6�'���q�c����;����|Xۍ�\�A�I۵����S��6�������7�4��%���Nu�F̯o�7��V�6p�[�=��e�s�E+lYJ�y���.�;ʖ�?V8ӕ��)�S�Gy�<os�t�W�u�/=�QB�,ٳr� ���P%���P:'��BY@V02��܁l߂Yꚛc҆��k��mi�}
߉����0��������)���#6/�)�������x�%���g`�ֲ4\������lV�[��q��͊|s}E�ݹ�=}i�(k��?G�D��D��r����C#������_�ӭ      =      x������ � �      j=     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ����      %=   x	  x��ZI���<�^�� ���q�Z:�t@���O���͍	VvuW��lZ����E;i���(ϱ(�&J8�b����s��M&�d����1�_����&o�?��L�W�.lv냍��t��֤��Ϥ���ƻ����j����o����WC�[������������>���;.&�e(�)�6�cRְUd�UܽW���$7���F�J�NGp��]3���(�@ASȚ�䤨~aj*��U�F�mLu�Qz�k��'��м/qO�p��L����*�4:J[%�e[��s���л��nb.ǾQ�Y?�Qg1��OUJV-�b�n�HJ���\�mNZy�*� %�~z�Y�8�:��p�0�#�,��1Jv�67Y��X^��|�]$̳��aЀ��-rh���FQ�N�1��C�1��m3E�P�7��޲^�8?`��Kd�l��ը�Ur����ن���0�����v��W�	%�N=�T�'�M�U�ԫBU��9$�"���O��kƼS�͎a��)G[�N��4
(�䓯�5R1��2AI���mI��R��ka{l�F|\(¶�cqb�q���Nb��D����w�hI��$_(S�c4Ԧ�D���(z��y
�n�[�
�h,�)U�у#�S����a�a��ˇPֆ吧	n�j�d�ӂũEE6e%%1:��%��՘���1o��j*�[�y#rV�O�tԕ��Ƀ�h*�uH����0��e�0�.F4y8,o�14�Ô�n�&ip�1���j֖Bݘ`�W�#X-���q;f�}��p�S�-ܔJbQ݆%������>P�Ѽ�����2������1�r�ѱ*c֢�Nc�T�rs�,��P5mo�3z̛���qq����L�z��Ol���x��e9�(n�/au�U���	�7�".zj��Z���K�
Jޢ�`d��@q�������ui�x��0����0��6ȟoՐD��_���9�f���g�jq6.�1<� =�g5,�-"^�M�+�T���9�!�w��}�~��֙�a7K��o�qV�M4���ƒ # �"ZU���vv�}�O�����x��a���B!�ՖY9r�Q�\�l�b�� �g�χwS	����}����V|��!fp�0lW��)�G���j�[5DB�{U��v/��T#�I�F�EΘ��,3┕��3r���_����v�˟�O�$ݳm�����5��W��#��M�l��n*��A0|���&�TI��082n�Ri�w��0���7������*.Pq�&o���r	*U�E�
�A5����=����n�S��xd�s��+äk�w$�bJ�麿����%'��	�|�q�0S��J�N�*Hml>�j�O�,M�������f����"���=�;��t"|�+c̢���V{�^�!��U�|!���96C���p2`��I,ڡ�13�Fl�M��Y�"��n\��Z)����0쀁����f䍬1pF��b+'h��I�0/�Lo�Ja[��n��S����!�G����]��>�e��k��MunJ���AF�R)	�^b�)$��#~� ���6������"o�ׯ�0���'�T$qkU��X�Ŭd��1t]�����_D_�<��kks�d'�ڇW
tV�Aq/p�0Qi,?Qŕ�rيg��f�S�J��W?��]�4�����P���� 8��:��.��k��*�.6�y����~���i���k/���kRy�x r�ĠS��Alz_���َφ,>=c��1�$)�JT��s���� oK����_Gd�E��8�Î���Z��8��.�(W��8V�l/��ƾzD�c�Odܟ�E��}TX�U��dL*W��+�7#�����7�:�0���/pjMՕ%9���ō
�EJ�9X��0�#�u}ø�>��4T� ��$���|�͓-�֬�ՠ@	��n����5<�V���i���a
�����`��T(�(G�_�Z�m܇AǶ���:vlX�{�Y�8yi���e���cQ%iD�l$��a�|����O�?��7O٧е-*�S��v-*�DW��o���@/3�j���G-h�#c�x��g!�6)����0���ܸ��ny��=�����*�nX=Q�Wp�)�A0�C�=��V��>7��ބ_܀�f������1�<l�p]�8��B*��p�b[�/�� 82�_&�����ڱP�ݏ�'�O
YG�Al���N�5]?�D�V���"D~����o��Ro��T�.Į���*5j#B�6�����'-.�E�����BZ�l�xe��wC3!	�X�.�����˕���S/�)�<?��H��㗯���:���      ]=   �   x���K
�0E��*����
J�*(�
�Dx�&%���q.����ĉ�s�SV%i��Ɖz0(A����w-?4�ѣ�ťy�pqL6��qp�ۓ�pgC�I.�Bn2=-Y���fF�`#��g��0S�=F��@`r+�;K(��_[F˪��� '�GT��z��ނ��Kh���[����.�]F)}$cz      =      x���[�d��%���(z*Hԓ�g��h���ht�%P�s�C��-۞'�«"jϛw?�#�k�"�6�Ц�ε���Q.���IZ[8�d�s���	|�uǿ��a������w����~<��q����#�G�OΘ'}^��KO�p�]������4i��"��_�������v��������������^�����_���(��*+��+G��\}W��7�Đl_1�ᢶ/K�4��Ћ��SJ;��b�ǟw�4���*WLT�p&5�܈)7oV�H���'O#���c�{�>����T2���T�0Ǧ<8�A��#����|N#��c?/v�ӈ(F���b�BҬ.��d�*�ÈF7_��I�S�6�9�x�6��\l�I�H�{�]qTn��X��B(u�`��c��,?�ۈy2��5��>��*����$�P;���R�c��b��|�o��D��7���;[N�������u�C��N�Iy�q��?�ѳ�'w�O#�N/���4��!'A�0�ZSSR�[FtJѩ%��Ħt#��t�����[6�z=�_���ш��:���G`K����1�*i��9V��%��<q���5��>ߏ�N#��O�1U�3�S�0C���j�9D&Ĩ�׍85C,g�S��'�#�Q=W�RT�D.��j�z�D�V�%#��ގ�щ�cɼ=o�^��G������v�U*�T7��2��h	����֑�_�sg�_a�i� 6�#Hl���u�(��Q�9�̰�T�z�K���C�x�g���4�yp�i� 6ţ�:ܠ�l� ;.A��I��	�VX1≻�����O��!�/����}�D:���YĤj����0=�&���N������$�wtߓxK�=_No<�x�.�֝".���'BS�"�`�uI*�R�5/��i�'��8V�i� �ՇOUGݫ�`	pl���@�:*�p�/9�����N�?O��vo4Bۚ#Q�у�W�r=TX]TJ�S��r�f4J!�����{�w��dv���4\�j#�5����`h ��'qɱg�}���] 38���NQ2;k��fP�M��FtJ
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
Nn�;��$�vp:7:��UhZ�g�]�H(TPB��ǰbČF�P0�O�F;~c���C�)xU�^��5B��w��M}�%N�O��^�]�SQ����{m������7W��A�@7կVuJ���	��j����I}ڍ;w��������2�B��o)���r�����9?��5�1g��8�_�ܑ�d��8��I/c�RW��A5��mm}ɈIYmx�����L;����/��׿�?���      R=   �  x��U�n�0<�_�0�8'=N�4@��kj���H����CN��X�;���Q�%9�;;��ϫ+۰��E��$�����W���zɛzA��1����&�`���V���auc}�\�e����Tc	m��.�v/h,�#�܆�hXPg�4��#58��&!���E)U�{��Ԯ5�"�iT����NI�ּFz��母��<@I+�Sё#�tl��Ԁ���G��
�����@� �F5� :ݹ�EZ�&����՛U�7z�E\��SL a�(=o�ʜH��#>G���~"�B���@��p,��h}	X-�^���7��O9�W]�p�jU �$Xh(?U�,�����M�I]�1�5j��EnЦ9EyO�/���]"(n;�(��R<�>L�5��H$_�
S�{Yn��4.�@�q���6��One�"ɭ�O���4:�N� ��X*.��)J��2<�n7�J���t9؜�yΎ�>Z}S�����(��v&�!�ݍ����
�4���r��
�����z�(����n�Oq-��t����bca����
O�%��N>�Y�o�t2�
s����=L}�B������w����a��MrX*� �u��d��\c�|:�Y��H��l���W;�8m��fdyl}�m>�9t���V���D���&�����֣�ld����1By�.�����L&�?�í,      H=   5  x����j�0�g�)nl!�8��ѤNcJ��u	�$$9׵/V�v��N�i'I�������X[E���i��fkdY<���R�t�K�r��ٴ\�W��ʓb��Ί݋��
}$�2�<TxN�]
|I���1E�l'P�@�����n�c������h�\l�fc;�~�2*U���8�(��Q�[J�SB��i S�?�jKa$�ȟK�8pL��X���*m5�xd��;��j`����t��v[����[��o�\��ԇ�$ ���1ц��{��^���V��V�PG6�O�oFC�ۭ��M�,��s�       =     x�m��j�0��}I�,�ײCat��X��@/����d�A(���/�`S��z��D<�؜a�4eVL��=\���#9`�Ia)�<�.�/����xz>HPw7�)�4]�Q��^�#vM<5�iO���^	�6�0*$��$B��CD�&�6�Ӟ���E�p�CĕH�l�;��h� U	�L�I�֬D��ׯ�g�}���4s �Mˀ�D%��{��̀��X�����P�E��|���+"̽�q����	��ѝ�:\�a�Jv�      [=   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|v}��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
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
���C`ȕ��w&�($�;+���4fO~�h��F�{�	�x���̳�-.�'�oUg���Ab�����-�n��ٳ�=P      L=   �  x���An�0E��)x�n��]N�h�,� -N�h�@RFz�������I)�d'@����33�ϫ;��D_��Ӱx����[nVzEG�4I?���^-�7��K��GN�[��մ�y�$�����Q�i���$��6�e������7rh�A��|�ޚ��~��� ����g�S{c�z��(DT��^�D����Z	%���Z
Q����$uҦk!��.��}�t�9pb
���y��q�}۾��ʑ��-�klTB�1%4t�Xԋ"�ȩ���;Ψc�e&�:�h�I��/�&X�z���_C>���ڞ��7� Ot01�"���0��Њ�()�P�<LE,D䝣l�o5�,���\T?�Zى�'nؽ}�eP�N��|~v��/���ʧ�p�`��$��A%<�J����{B��r�{��N>Z��l���j���|����<�x�%��z�XO&�+ü�      )=   5  x����n�0���S��l�vn�W	ic���&� �����K�K9�'�O���A!�[<��j�Ҹ=�=�^N���+�I�]V������ڟ��Jx���*�f3��^	�Ĥ����z!ƈ�{4b:�:ҷ��%��]�֢&�3�i����E�AZ�#O�mrV;��FӼ�l�P�]�xu!���7ţM.f��d��}�'��bn~��A�֓��Y7�|��OĠ�F=�(���A[tR_��y�՛�h^��oE�[ڐyB�3'��s�X���"���Uެ�r�ؼVXogu]��#�M      Q=   �   x���1
�0 �99EN��Υ�ZDq*|>ɯj~H�^��	�����M�Ե����Ф)8t�#�f۵�K7hq���J��t�SH,���D��+S�o�_<RK�H����<���H�D�Y�z��jĎ��tկs��y=k9h)�	2S      !=      x��]َ�8r}V����DJz2l`�����	2�l�8#g���܆+���vK%���8
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
�nw/�����=>�%8�NɂV�\1��m��X�-W�(7H��D��jy�K�t~�>VĪ!��VZ����p[ޢ!NX�?�>�?�9���C�����`�z�>�A���Nt����<x7Ċi������m�Lh�A�	IA��ت��m�Nt���]����^�̖�l9z�����ؽPX���Z�5��!b���{���ek��:k~톯�f�a�����3� ���A�D�p��n�vgg�P�	��Z=6ywǩX����w�Gu�y�ܰr��f�\���6s�� ��ί��`ݔs_�\$�u�����@h��u3V+]��So��ǽ-�����Ʒ�B   �?�5@�J��T؅x_�ғW��Bb)����U���e>�����{>�Вi�],��b������������Y���^�t��׎�%�T�:��P��j�4���[����qm����y��q�T�4\������*L��A�fIu��k��:��v,����q�w}{�57 tb _zIwhfW���[=ۜ]|M�V��&��0����r�t�s��z���=R�I��>b�����o��z���C��������o��7�      &=      x������ � �      e=   �  x���n�8Ư�S�����	���*lW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>���;���{���n��F8���Ʒ�ޏ>�gc�2�|��?;�G��4�	�X��L�w��1a�IW]���j�s�9Cj�ЭH���v��qL�A���꿜��b�D��CD��I�FŜ�c�.'�Y9I�DX>.^�"�7hB%�(�;F�8�ݓ�7p	�7�:��:�)�9~Ƃ�U���%�m�{���,RA~��B@�w�Fs$
	!s�5���&��G�y!b�_�DlF�El"KD�^����|AS��S���]�	^|'9P�pF�t�y(��J�2A@�7�̸t��3�gF�Ό� �"��U�F�E����[��"��A�d��VSCC��\b=Y=,�A~��"inW0�\`��0{�d뵓m���y¡��K��C}}����Wqn$\�s±e�]o#�o��]����i�:����s�a�J��2
s�GI�1�gC��]�j�w2/"xLD��5��kʏ�
�w:��S1l�bS��X¡�CI�s�KO��x.3g+�)3�e;��V��h�T�_��g�I��%����=+��!����IC.Jw�#XU�=	��jL�0ܧ�����r�oߞ�����fW��=J��Q � j�^���ɡ\k��ʀ՞�}c�Fp��o�.^� ;)A�4#"%xQ~�����'�e�B�@t�*R�x�|��s�e�s�, W��ȡԁ,��2�iu':-�¡���;?S���.��~a`���A�j�R]����Z�*ߤ��U���К��:�%+D�jO��:Eo����:�8~�񔈒�v)x���a3r���7�oŮO��ۺ�k5ze�7e�v>5u�����3 �N��9����v0e��W=�W�&��j+:�B~π1�c���nð�����Mz�)\0^�P]�]=����5�:�:8@��8�a�'�ܖ�͠1��z?��SϨ���ԧ����j1ؾ���f���bVk��<�%�y*,�U/�/o��hVo�ޚ�j#�[��z&�Jߩ_��F�ղ,���j�^V���mPf�K��j][ԇa��i��{�@DeԶ�sJR����߶Z��S[�Z��dF�ulqS��LX)3���[�zo��0���S�:H��4[��byG8��D�Ut�+����
ZU�XE��Y�"�Z������i�4.G�5����R��*("����ѕr�P���2W;XwL_(f�)����c�0W <�e}{[5�/���Ӛ���VߩC��LX�-X����}ޑ|��Ŏ���cJ�^78o�sObk��մ/0��^U �y�g���n�:[�vf��2�Cgkʗj����ޅsj��$���j�����pjؗ�-~�r����\��'s��1h����̵R��|ػvaN�~�3�f*����kOu����GX]%�~w2힜����!�      *=   -  x��[ˎ�8<��b@	�"%qn�`1����O`���������m׎��ؙ]��,��R(�AJ�B���2D	��
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
"{�����逿��j_�����/B���<���o������˗�j;�K      U=     x����J�@���)�JI�^z�"�
��
�twԑt&d7E|-�s�HROJ�m���ϗb���8lĔmC,	����U����d*�0�����W	���6U���Q��CO�4)x���v���t�q��5���:�':��eVl�Yp����D�����l��XB;?ߣO��,ʕ�f��xd��/s�80@׳@���>���<��{�1�7��7�d|�A:�	!�`�[�4��m$>�[b���=`�]�l_����L1	r��8�`�̲���2�      a=      x��]K��F�>K�G;���/�c}ؐZ=c�J�K���"XM�Da�`��7:���W7����6�̬B$-ɘ��ݍP��@������U<;=y��-l�fO�<KM��b��ɳ7�?�=��ٍif?�̎����~�ݏ7��_e�{��_?�����if�'����E����l3[�zVf5}����[<q��葯����<�$���:�[$��m���I��:���$mm��UY�'˷�<��̳��o�	n��.���.%4tm���w����c�V���U��ˌf�g�ʕ�]�E��U�[W4D����L;9̴�bv�3fNgw̾�Y��|��4�ۈfpt��K���[���1|�
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
?� ��������I6�xs�y�xC��˿�הw���ɒ��c`(�t����~�`C�p�TCf��T��e���~�mqO��/=*c���1/�}�q�R���gr,ڌC�b�U��ύ�n�v3M�~4�Ce-2���l����������;���G��4I�RO��{����X-�� �F��ȱ�?ef�'d_Y����Q�sg4C�ȣ>A{׸)�٢�ְ՚��֡2K#�|������x	�      ;=   �  x��VM��6=˿�����l�osr>�9���I������s�C�[��c}3e;m/���Λy�7W��P����Y��~����z�ެ�߬t���ܜ��W��V�M����Ϋ��R����d|^��Iu^%�Z�k�[�T��e�WM$�c��<o46���n���'���6�r:ay?|K����J|Г�f��iy�v��I�g^�]��7�� .���c9���h�U�1Q�#?!>���@��O?����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۽�B�O�؄8F~�����̋j�#�[G9����=����Z!���޶6rAdJO��V��	I��iN<6%z�xc��P�3P��CqY��q!v��[8�r���uk�O(���ش�N�����BDπ߮K����y�^U����K���)�}��I���8W̷�ΐb:;4Ꞙa:C)��h��� b��|�z�(!LJ��Bb���!��y���{�V��.�:]�&h�qNȏ��>L;CZܞ��zC,3��7Ys�{�h���˙S�E�S�\e-Z*2p,���y�wp%����]��:x��'[(�����V
��O$���J��-�}t���v9/��:�R���
^H�����?���,S�P�3�9�����ż�?��M��_F�X"���Ӫ�R�����=Xz7�h*��R�T��ݢ��2���%�cL;!]<K�⮕�����[����δ��W�p*��L�����R�ɺ+3&�Q{-�7X�!�|[K���5�"�<�����s���E'7�ndO�>"�$K���;�����!K��;~�A�ӿ;�PFz���$��3syQ}(��X&�D��>o�������&���Y
��*�;� 96ݾqY�w��<�B�.�	z4�N�-@72?
�Y�;�5�^8"l����a�:y/�9��������%�D:x2��$��Z�YD=s�.���o�>���>�U�*��y�Rg���\����%�y���E=��k԰z��[`�a���9Ϛ��ͻ��FF��Μ��k��le1ʽ��w��1�c��<�BO��Xq�Č^�lC��;�Ca��H �9���/�óŗ��b�z��$      d=   w  x��V�n�6<;_��0K�h�=�N
,P���'-�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�z�q<��ѝۿ�a�]�|x����׫�٪�4���^ן�'sr���b��s��/���cM겯�fA��S�b����e'�NF�|L�	��e^��i�F�X�Bl��y�-�Iy�Z����5&��՞�D�S�`��Q���^2�X0�6����u���/���m݊���Ê	!�v�Ï;���l�F����r��m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,��bm�� �r��
�W�W�W�W�R�U!Jnn�W�+���Jp%�\	�Wʤ�$�u�ez$eLҘ��ı�&5%!%e�!�q�8$��L����Z���7i$�%BJp%BHP"�D	��,a*�qM����d$�&���<{�+d�_T���W�����0Ȇ4x�f��Q�joN��OC�	ac��Gݚ0x�������]`.��!�X�O��JW� ���Hk���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
��߯�Eߞ�.����i@51b?�C�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f���R��-���al��ó��Ǳ��/~}�B;�Qظ�ac�a��	�krg�쫉�;��+{�^�5�u!�)�>r��S�H��?�o�C���?�ߺN׃9�鸻����z�$y_�$���p�GkҾ�h.����u�Պ�6_F�ˇ���Ɛ��-���Ű[�O��q�'����uhG�꾷����[G�e�1����!˝���1*��kLZ��M�8�c:J�9�x[N���a<���<e��z�����x�xQ��_ĺ�{@ _ѓ�U=vC�Q�cLF0]BP�-��L��	#;:O�}�nTt�e��h���4���`ͨ/��%�Hf�[,�8�֐7���&�(gם�zch�;���D]���7�w�����4yҡj��Ϊ#�z�E�
jŪ�_/<�ә�s�Chq�r��,���nuss�/�A�      h=   �  x���Mn1���)�lÈ�4?�"�@IەC��
�8�4A��� Yu��\�����mw���̈|��xt�qrӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��pF����SͲ8;;y?=:>~���[E�C:�{LZG�gT�E�}b��B��$/�4�G�@ւ��⑚��#�]�\�"CL�"�q4��XP�g�d{��`%���d�*�V�ѭG�-H*�.��$_%GN�?ў�����`\�x�k|�:�*�ߍs��m��g��#��{��2�+q		���l9�ɿmh�KPl�~��.�ee��U}��v���HC��y(D_Oܑ!KP�����*:4�x�J����Q�?$��Q*a@M�ۢ�W��4^�l�|����uNa����Ȩx`���W�\�C���!����T�X�M�#k�W�T�ֹ�;]؎ϑ��u0:����O*vT�f��*�՚QZ�����^��}����"B3�:H��r�ߥ<y�R~����[*d��v⡮��!&����|:���!�O      =      x������ � �      p=     x��U=oA��_1e"Y�8qjB$d�$�%��-x��]�(䧤s�"E�.-,on��X({����y3\�wiQ��Tn>�!�.�醴�/���/��N����fS���׮���bdJ�#N�*�e%�e1���8��t�����q�d��g#Ss����y��[���*��i�*�Ϊ
Y*��pr��h�����r���%��5�잭��*U.t \������;��L�h�	�f��2��	��z]e\K�&ȥ�Z�].Y[I���gGv�ϖB�������"�<)��T�Y�j�A�C�!\?<"�\�+�e1�̲�W4����U�L^�y^$`cE�p�5��5����y�r_P0�q
��a	�PO��R��4|���ƋJXFya+���ù��3�MT�L6���x������QThc��7�������AZ�>�l��(���I�~7v����h;�͛����14�ĺ��Y�	���sI�$�R`֮^�(�����fy=\P�P��Y���,���_��)Ѓ���M�"o����o�4��}7}��<�]6�Ƅw�lۃ}����������B:݇��~UL?On�V��Q��~X�'[�Ev!�rDI��gᱣP�<�\����#�U%�#c��	��s���È��q��)b$�<��.�KMI^Y���U����5�ʃu�V R�[��>G�R�M�%� ��$���g��������}�9�N�%Ҭ��-s(DXK���^��)��eB�f�$Ў�{�|�;��h��Ɯ���z���<��      =      x������ � �      =      x������ � �      	=      x������ � �      4=     x��T�n�P];_q?���[DA������5�'t"����J�����c��̵�&�*�(���3^���s3hǽ֟}̃����[�sU�/��Sf����Z�\V���6i���KL���Ǻ8;~xG�͎�Kڑ�˚c�V��ީ��)̯7!�c��A��;n�5�������VZ�n�dU;�9�L���	a#K����0�g���>{d��M@O����U���p�J���lNS@d�N���RZvx�/���6m�zq�� �t�X�>��U�1�ART_����޼$ �gf#!{�i�T���3�6qd�zy ��&
rm5p f��n/7�x�rҀ��\'f\��Jg��Z�@ �̠H�5u~z�g�|zԛ�B��E�69l�v���02� �~��3�-�}\�ޜF����^}+T��(�O��f�%��Y�<�� �I̻8̸�\M��S2�f�B��� M�4�S��GV�G�ɮ�h��lo2im�Ė�V8:hf
(7�kͻ�+]�ޞ����b���j��	��'���'�md|a�"5\�p!�$��sW�j����q��)��^'�x�ѻ���O|��a�O����Լ�Zn�n&*�r�MRF��84�/7��b�o� �      5=     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      =      x������ � �      
=      x������ � �      =      x������ � �      u=      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
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
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      +=   �   x���]�0����$J��R"�	]	c�)s�mJ?��������pއ��"i��~��H������Vh�g�wڲ]��hɝ��QS�KF�e��(�Y���p]�qF��I�Y�uڰ��3V�o��A����R�� ͗e����p�"}����ǋ�Gͺڎ��uRra�oj֚{      t=   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       v=      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
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
      ,=   9   x�3���,,M-�L-��I-K�+I��L�+ɏON,I,.)J�ѫ(I�5�������� ��      -=   �  x��ZKs�8>�CM6��=�d�B���T��,��l�+�����mI��<,9�L�dIV������d����y�y�����߲�	c*�hKʌ�Pʻ���B�,�$O8%��,����9;DQ��^��$S$�,SB�BI���A4��� �L�J`�{7�)�<MuO|*r}���1��=�1��b����xO5�lB�ѺܦV�YV��(�V(!ORX�D]y6�ӈ�~�Ԩ'�,�Fu���as/�;�C+�$d{ۘ��L��4�N*+��;P�� 2Oބ�l��[�"��r"Y��J�Q��$<��I�
x6�&q�3�Q�@��%Ǝ���l�~aG��F��}v�J�b/�N�!�XB�z;&a4J��`�g�����#�٦�1���!�B�u�7Sb�d��a л���t�D�%������������oF��d9Y�U/�hQ&��K�#��1uo\�%?��=1/��A��4OFBUJ� JrZ&��/� �8
�<�L�"��֗�r�X@b���HR�y�!pzxZ�T�D �vB�v-��d��3C�I��{�$+�-ܮc��	C\y�9<��D��rK2� ��b�<�s���AEJ*r)r��	qt�b��̙��%�D'�!D�!H|= Q�Q��!@N�,�6~RT����tp�x~���ɭ�=���P@��3��D�@i�#�����}2�Wf��$�����h|���Up5�����(9���P� �S�a',�;#zF���z0�^�d�Sr�8�UW��#�Z[>�±�ث
�c�wV�:��b����j����	.C���܏DV���O�s):q>/f>���P힚hR�i2��4��gՁwժ��-��T!��*�m 9A"7��~�7��D�9i�՗�_`*^ �n"<��e�R��
�*�t�D��/d�Ƀ�q�S޻���yZސ�D*B$�E2G�Ճ��}}��� 7EQ�hӵ\�e����j���Ɗc�d�T�"?ŀ~�W�[�&������$ôu%# Bz��0�7[1��C5��_A����2_i��5o�����џF��Ţ	��-΋A#�d�(�\���No�mg.��J8F��%�p����5dI�Z�1j��!Nz��dϐ\���j)XQ�}n�Y��� ��-g�
f�zSUb����N���a�(ժ�x�_OR�eu��1B�zI�q�;�6")�;դa�;b��n����N4pަ;,�Y�Z(s�'O �]�%XD
g(�rxǧ���K�=�"�#ۄ���۶�� J;��לI�nl;5�R�ClNЋb�������3u��lr��dEkj=1�uM
��.�r���Bc�b����<U6tR7,WX}��d���k�~uGͣB#��E'��H��X�O]P�?+�=|���>�k�1�n,��l�@��X�b:Z����po�c8_�8�aP�w�Շ��n��9���h4���zB      x=      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
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
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      0=      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O�����x����;{ϟ����jx4�L@>ŗo�kb�����?���9��f��5?��G��Š�J�]���gE�_t*a��7&�BDc��cI���g�*�;��KF�qAlIy���*��%ne�$�s��y��跑������=��u���HJP�7�ֱ�gowg�������G����'��޾w+:{�}r~yta�x����}q��Ee��ۣ�G���h�`g��kd.�2�<��=t��r  	L?�;{{�.�i0�����t�!6��>���D�h�����}iXU/��:��>��I�F<�<�W�Gӽ�B<0k~8P�0���P�v������|�����Et�������nr�����O9ή�2�^Z�2n�U�NdG!dvA�Y\�`�f%�u�%I�E�~n7�isn�A�ߪ`W`?��% (ؤ3GJ����d^,�x�z9<Iv�X6�ôJ��D�i���i���t�9ep9T�~��z�BR�q�;����T��$���Gr�jzژH���� %��F!X��ݳF]�\,ۘ|c�ܙ�j4g O�T,�\��Ԉ��!���y{�n���G�T�p;\�l1�p̬^FB��s��{�50��������F�.�u��Ȟ/�m����h�3<��N�SIW1�y�=�t`�
I�.���0�t��rD�������7ެH5;�ڛ�GU�>\�8��~�2��s{�� IU=�eT����E�ʂ��\�'4��ƅ铀�Բ��		'��%��<<p��&��`�{�2$�����[
.Wƛ�"��`�^ x�Kҥ�4 ����D�7�XS��ք\���Gz�ٳ�33b$#��S1��d�4�vҝ�KsP���ň!��jɟ?h#��Tі�:�#��7���ē���:@ebVn�Y^��32��#�7�5! �*P�&�faLy��2�t�MJ��[%P�~$�*n\�g��$�XRF��ή�?�
8�i���x�4\
�{l���:.Ej �=��{�A��[O�M��N>ͳ�`�
�����<GN�9=�����p)�x�,B�O�3׹#(Q[:���@��@vA�J�e�C ��k��c�F�i#?�M��d��2���<ڞ݉�?e@�@�b�����b�f��a����Sٶ�s�M�C{�����]D��� ����`��� �_�wj��m&���;�y�ַD�������x��[d%��7	H���'8&�ё��8��
b��~g�����B�����k�ۤq\�L�M�a+kx��o��I�C_�6Aa��=��	b��ېb�O�E=	1�YQ4�໷K���Cߘ�r��/����=X��*{,���£��uzH�w2���������i\V��l�%��B�M�N�D��	
���szſqz�f��U��̌'�̼���{������wR������ �vb"Ҏ�\�S >�ݞ'���fк�P=ȥ�x`����)~4�ep�Ek"�.�V��	�c�Jf2����^�����te�;��J��¬��XՍ�Ex�`v"�NwC58Ml��y�Y~�I2Ny9����Cǅ��Ecl�-;���j#�����.�mJ�
�����lͨ������S�57�n����y^o����D�.0C�z������]�3��-��h���n@�g{T8*.#s)��WFm�UCϝp��mc	(/(Kx=pj��s{�CF�R��px~~��h��Nlu�0��Z��C=��ç9�y�s�F2:8|v��������n��s�{�OM~C�mJq��q2��ơ��I|�Dޥ��2�����tIM�13P�d����o�9�G��߽��>݋^���}t���������WG�i����ݷ������=7���9g���ō�~>.
S�-��i��Y���9~�澓Wѻ��N�F����I��]F_}X,�/=����CD��ob��2�I��>�
��?9��]��!�}E�1:}�����!~����yw����S]>��ە�V�n˷��b��^�
F��~��4�L�ol�����H^����<G�p�5���\U�4X���L�ܷ���iH�_���d�j���}�l��L�C���K�[�|��*�zԉ�%�"�̞�(�s�"�۔�0Ӑ���y	p�	�f�������`�3y�B�l������z���c���I]���tI�M>�A�i���bj0�Q�*�hfb�N;��iUD�8#`�S���Mb�%�hD�N���;ؕ�{p��9�p�+�7�.�;h��]�K	�gbW(���@�	���R+l@����:�}ޱ��k׋�ta�_$�Ytk�/׭9?3E��/��������\���X�K "�2h�_׋�q�%7�qǲ�G�R�o�l��̧q�`���Ɏy?�־mQ��C�(�]�>Н�%+'�n'�c��`�#��Dw��nņ���Vth�Cg&N��b���*��
�{ ���:�lu�*na�@D�,�C�x�\�!��
gvD��F�iͪ��(�(O�.��1�`J� ��~@��Q.X�F��i����q�0���}�)���٢uH7���y;�����������O��d�4Qa��at'���^N �/&
�CX�C��=pk�*�B�����K�zt\�?�G>$��\p�O�L��;�vx�Z��T�����r���D���	w&Q �.��^�`<��W� ����!v'�՛�8��,���2W�Zk0U���@�.�,��:�D��u�D9�j���hw�fw��\��YZ��c���'mh��j��4xf�&�-�.=7ׄ��aS�%�K�9[��u�|,���Z��&d���A���Ջ3��xa    #6��8�Gl�YZ%E�������	��&Um�,� Q�w�ؘ���ɲ]$R���G4 �]����|(�I��q�VZ�������R�~ұ�'kV=��x�_S�Uh��0w����^������γ���e�ӊ|�OZ'^�K�x�մ
a��y42
0X�SYd�XIqq$��Yz%c��-�	��D�K8W�����f�u	���Y�$��>�n.6�%��-Q Rp�H�E���(���_�v��%_|��p�^EuΘ���k�R���BF���|�Kfv`��i�b��� ؐ�2 ��0�['�H��\�k����`줡V_��R�S�kaQCƴ�,kYs��-�Enυ�H_#�oB���v�ja��:�a�*�� U?�U���r�4������ƈW�M"
aww��K'�HWۀ�����oq-��?�ރ_L���[��ľ�6�/��W˟����<���<���!�=��sgy��f�b1vOךAĭ���%�d-�g+�9����2�Z�5ѣ��l}�&U]|���޽m�=�ɸEQ�͔�7�ʏ�WTx���'B�O��E�������*�5�� m�ɷ��v���+�q��%e`%���ʅ)��ޙ����b�nA�0�<�>g����Έ�NI�X�c�+6ze��ê޴)Ƨ[�
����v�E5ť30yB
�jR� �{8��ѡ	$��o��[Z����V{,��?]��g�s�������,L���IDq'>5\�]Βؼ�{Iwߡ;�m��/�Ԗ����Ɇd��+�N�(�}Ǻ������b�~�M�������a���[�9`�Z�l�u.�~�ɾ���-���>��y]^x�?!�ۼ&���Dt�kRf��&�o(�õ����˧<�ጡ�*�@u&��Fr݉���<�u\
�ߒ�n��43����,�Ǜ/������r9�Z�^��sV�`aw�!Gu9i{'l8��O�����s����݉�J��S����S:��Ώw�٠��t��P%�DJ�?��
�2������H*O�?�v��BFٟm����{��֯j�5E��ow_Ӧ�"�/迱�{6`Ct����T'^~�]�sC��_�
��W�,����������,3�+R����ѐ/b�#ݲ%b��R���9����[����z<Fdz��L8�=�	���:�߃��&.��k����LU���7q����G�]�d���OZ�_��v���Q�8I��"�E\#���-pIg��LwL��qb�����lx�&ӄ�67X8����bؐż��i��ɫK<nse9��u��)ns�5�_{���|l8�G$9WWq��J��b{���i�-F�4�C{�yւ鑉h@B�C�޽'ѻE�3� ��E={�Vt]�Y�:�^;>]�|�}��N�Fî�b��pYTz�@0q��Q1%\��s)�ʘf���t�9�U6A����g1�7Q%�T��r��x�Tb�j ��y�36$+
��SZ�� Z�/W�j�T����g,+�&=��D��º	��T��j�W�`N���} eCg��^��8a�9=���%��#I�� ��,��cu�@��YKKp���	Ӟjc\¨�"�����y݈�s�����>�Ⱦ>f�y�R�~f�_&^GjtH7M�����^^}��Y ���^f~O�@����Ή�@ �뻮Â��_+<P�i	�!E����� D�����'���y��K��Ie��:V��x�o��Ϣn��%�AE��3�!!h��|Y9Ǿ#�	ؒ81tJd0��c�þ��g�:���8�\��؊�M�_T�I2�,���;<�<��ؐ,@U��}|����8m�j&�S�.D�s�n�#�:�4�9tV��ǲ�!p_k���=��^-,���;�>�����+nm=�2KT�$D9�����E�P�.z�.1ht�G{����̦������:�=d�	��S�J�CC.�����$����ɯ�����46���Ъ��g���k��x�5�W�b���)�D<��E������
�¬�s����q�O��#�`b;��ނ� ����C��m��iQ1Wt�4^c~��s�g�������zG��J��M��a���WD�����q1��\%s��&T�h@!	^��\���<(�uz���'�QW]��)�8�������f�rۢ"Q
h����\�*E�I>
�
K���8p���-,��x�����6��w��}�U�^^��H3�X��Ӧ��I�wh><3���nǸ�G�Z�k�9��E�%�g,$�D�2�\����:���V�\�W\�(A�v�TdW�V_4��Um�g��t�M��c�l��9��%&F p#0�xKYI"���b
2R%6�\�Y�Ek��Rp%�WIWh"I {>�,l��6� R��Y\&$[�xK=�I��]i�M�w9��~��@�7��Ž����|�ٴ΍#�^r�;���Bp ��
8�)!�q �8�Ӳ��&[)Ž7�K.3��
ۿ���wn캽\�f/�w�r�7������Ξ�S��d6c���7�;ݴ���D��1!�p�lq��{��{���}��S�uu�q��轘�O���x���_xn9K+��k��%2κL��T,����4)P�:��Y�g#b�4<����R	�;��8�'<��C\99�j��/����t�͟a�HaV�:E�0�n�A2NӺ�a[�8��X�a���U�DL$'���ݗ�b����sI�I�tĽ���~���=�=�7�zĳ����\�o��x�{��V��9�c�]�f���!�"���H��3������I|_"ɰjS/Mu���1��ݯ��B�v�w8j/���3��J�#�k峨Q'zj�9�B�*J2K>�3U:Ԓaʴ����Ԍ�kɶ|#WH���4	6����5��u~��?��\+��#�p�^�D*�p��	+�D�q������`ٷ	�4���� �
�����#ov�(p%�L���k�����$�f�dF������3 x���LbGY2V�8����&:<d����[�x��>��D��K��6���;R�j�k�H�WS��K\*��Z�(9 %���?�"��F���$n�Z	�
�¯��.2)���7u�H
W�!��"�f���tv9����l_��Zk�F0�L]��`�8�1����+E-�6�\Uhp�����=вG�h����K�W�,�We��R8����(������&�E-)��9&ԮǬz��q̠?IS V?1��nh�N��\HN��������sţg���z$���"ͳ&)V����2��3W��N����vg7��C��'exO}S��%u�,���mF8�)mӕ$3��i�/��7���u���A1RM�lflka1��Tc{+ی��0�٭�#*�̀İ0]Ҥ��� ]�(J3����S���?�3��8j(m̧@&M�x��a꫄`�J������[��i�w߬�����i����Q�+�(���+TPˏ\���.�X�:�"t�E�B����S-\T�֒��<L�
��h쉺UWt�?3�d����J[JԸ�b2��GHE@�/�Q.!nT6v��
��Y�*�QL����d�r�*ۓ]r���K����.]j���+NB� �J@h ��Op������%��\M(���'%Bĵ�z ݿ��I\fL�lv'eB�R�˄�/g������(f2J�v[P����m�J�+=���G��9X�Jݏ���{������z�((U>4\�8��/���0�ي�j>%�G	��#�c=W���Sy�i'���\���Llկ��㢑�L4W�$��E�\�ņ,�z����Ry'�y+'&}Q�زe�0J>��Њ�k��L�4_J B��
?M�.�[��34�,��e�O�q G�	��.��!�݋w�z���L��9����&UU�[ۚ
�n�L��@v�3N�P�
:�P4�e�["�P_�a5�DW>� ����H�X��40	
w�m���vNT);��<8K>��H��e&�{!���n�j��l�0�wO�-�M�)V�
T�����    Z��J����7/��P5�dSs�퀋ɉ7�va��l�f2 K���a�n��̼�V0���<�c�{w���k
߭�:�E������눖	��h�e�و��iIqn����Ѓl�|>�1�
?��
#�丹���B�� ��c���ku<���ɨq��!+�H�����0=�h�ΐ�4��a��W]��"'�"+t.(k��	_��;Mj��L�M)^��F*E�B2=�$p5t�͓��١uvmn��G��k��a�r{������q�T<za��
[�!!M,BtQw�p͞����`#yp`(R��8����X���	��`a\%1��[���a�2�d�9��q3� �t��C����?�5I��2�^��$OynZq�Z9�fɩ�{M�a����.�2@�3NUul@ƅ}��q����0����Ml�����ީ!���'M��W�p�<���%�|ȴwö���M�"K�s��o�f8R���A���JQ��
q���`�9���Г�=-:{��sz��A�����a_R�����7�"S�u����������d,3����g���N\Df���uH�X�2���A�W�yS���!�c���;�k`�G�(%(�b�EC%���|�s�r8��FH�A[����o�8�}+=4��\��4��d-=WaՂ�L[A��K���{���>�9�т�����e��}�A�Q&"�;1՚�M����r��I쩁{K���`DS�p�31��E�w3��߭�]o���N*j+�;�Z*ǆ
��8���U�d�L��ұ�発�8�t_@�md՞��G?֏����qk�4�z����at��o��wO8�5��tҷߴ|��F�*���f�*4��
�7M�Wŕ�'j@ZI|�*����l��o���8c�l�W}v�,����\����nxl߭ S����2k���[�O��Ҝ{�Y.���*�z6��:�����*sm�_�wX걷�{����~е�� E�H���ԁ׊����١�_�v`7x�v+pHU?�FdG�Ԙ��|V'#k�!�o1sO�LyjP�`� @��Ή���1K�#�.ˢsP噘d���kuH��/���^�����_]���;�g��-�\8Ô�x1�j}�Z�y��v���W��j3ɤá�})UZĉ~6iqZi�_#.JH�uyF�H=PQ)�����%��qNdp3ˣ��)�t,U�����H�"�S�������E��X�՗<#�ǂz&��3�u��G�!-�n� �!nl��~��&��j�O�f}�i-9�6P���(�%�\��ξ��G po8��UEO7:z+ԵW��uv����v�8�AT�ֻ�5Y-�F�q�0~�lm"h���R[��Ƴ��֔���zZ�ٮ܇W4��U��3{(�Ѻf1L�#D�ỵ8kL�7�Xv�噳P��V���i�9.���R�8��+�J(aQ�+z���\J�+�q�f��#dR���DO�F��_D��NG���}�s���g��9�9���n���n���'�_��=|��/���>����h����h����h���h|��h|���� ��� ���c�{�v���1z~�Ə��c|�_<A�'h�����4~��O��	?����)�x�/���S4~��O��)?E�h�힡�gh�힡�34y�&���s�{�v���9:}�����s|�_<����_�C|q�/��!�8�����w��l�1�������-�=�ݓ�����`��� �u�8   ��gh��<����Cty�8D���A���}�h�C`�!p��zh>�O��W--�>i��%/�sh�S�Yl׈1�>���2g�"/ԍ���ˈ�5�
g"�{���-��|(˟���Zv�5�,�r�uH���*�'�{?�筸}X�+��#әs�)��qᣖ�/ʶ_�gE�TM�>~�ʵ�U]0q۪'
Uw)��uĉWx��2��"?��`A[ń'ֹ� bҎ�b	8o3JP�q����G�`jSO�)1���	u��x,lg�$�S7\�����ѸN1���K���e�w�2�����&>�G��yZ�<��|�bb˦&*�q��	��'�ċJ� d}2���x	}q��Ul�ǹ(�1�g��2¤������8Oԣb���������h�	�!�!��6[�6�H:��1h�����������0�.�tV�󢄯1$NN�x7����Yb&�q�v%}Q�|��ش�c�㙻Γ}�V:�KU:A�聇8��,#�����}��a�=T�';TU>>��B�b?��[q9���L��e.�Do���|M��s 2�k��xM&����c�+� qYo�}m?%�"!<���%�2�L��J�kg�]̑�L39�E�l��e4`n���-�tQ��F��	Id��81n���5�m��>u�Y�w��6��o����u	<$@kPI`���$](�˶)�j�]tB�J��Fo���7Z���)`�pV�@�"������:!f]����1��:6�N=n,���3a砲4��j�d� "��T88�LC��3l�E^U���<��G�)�Eg:����!���<]� ~���\�d<�!ʺ8�.�ElӜ������P	�z'�0 ��T,P7ۄ5�Q�d6��<���"�>r���˿x���x�h�3�?U@<s����g	-b�+�]؂y$�Ҥ�
����1**v��=�����6}|ݏ6�z�$�븍�ʳn�yM� !T��$�N`�rO����f�1����Ӈ/Bv:4H,�b�\:�dg�(U���%��������!��sL����(���G�������*A���4QOp�i�R58�A�����tΡ���k����W&>����
�)��{n���s/D8�zH`������a�=ٶ�h��ƥ֗~����c�[v�@;�s��B=�491+�ܨ�"E��*J���^��Fq>.4*���I���6ƿ׻C�1��Q���8r�s�Qe�܇U�l{���H���E><��o;����y���V�.���
��@f����lN��G|�UV�w���aM�8��	��G܊�
�I1,���!)�P�Qmؽ xEl�����k����M��ď2����$��A�O���X���V�l�v�"���u]����A�Y���m>���	�'D���_���� 6e��D�P��D��lh��Gc�g��;�5�u�Z��y���Z2�K	(��Ӫ2=��~9�k��^	;7.�3�p��@� cb�ǚ���.~�-������F�lEW�h;�1�ѿ��o����.�͂�<��Q�j�%��wvh����� R�ފ��I��:��	Pڠ�<(��}�ȱ],�MtSdc'��xk�+�+����5h�Q�������ZH��ob���Թt�)���6�/N`��e�H��RQ+-��T�����\�y,VD~�4G� �/Bt��
B�Q�ظZ��@��NҒ�ە��n<���M~����Xsݗ��3+���A*W�[�z�pܗ¨&~WL`�C�� ɐ��X����ņ�\��'���C*�i�! 
�4��xf�Kd4���D*x�ɋR��J��X�x\���s�_�h(AA�pxZ؟�ۮ�{ �D۩I�xꓸ�Ag@݊X��:w�ڤ'�
h�b(�1��~`VX�D �j�����7?��m"%��e�8H��m���+$71��1�ͩ7N��$8��z�wbR#��1�j��6�,!f���j܌L:A�֫b,�)GI��a۞�+q�#�:v��YCD�jX�RMP�<Ɯu�4V�B���a�@���Ӹt"+{�IVG���Q/��=lUL��\��z�(x)��T���@o3`��Q&����9h��H���<H� [�o�3�5������Y^�*�G�|��,��D��{E�N7]��nt��7z��NY
�|V�5��ő-�ϼ�b��j�5B ���0(S��J'��&�Z��:����� f�r�̾��-�6�xE]    �w�<7��f@��HHBV�n),���۟M>�>Eº%V�I��j�jпǣ��)TM`P�KD�!��AlMi�[�KI�4�v�\����[�h��N?�^X����Pw�x9��q�:ϳY��F�|��h�E�p~C�ج�=	�ą�����!ZN!���U�HP���q쾨��L��ڽ�;@�W���k���]��vv`��H��2��L����l5�s.T=�&/ ��g�_��4'����9��kh^XM���OR��+�h�&�#F�^QI\k�t�e�gJ!�~+��w��o�c��䗆SWW�vE��,��Qh���>�͑�.���� �^@_Z����rk\��iY��\�oJy�d�(<u���9�L�Ԡ��<��Ѻ��9��s�hi(����qF1Y91K�s&��le��Lm0�~+��m6P��r�D�=�A����p�h�7\���4׾�n��ہ�ޥa�/3�@�^/	�$ʧ�df��${@;�����Ɯ{j@|)�{�(�`r�ך8�j�����@���a��/ٔ�j��"J>if����lK�1Rj23�uX�-���1�R��B��7���	��v�3.�`S)B��V���/�OV���FiP�Vr�;<���(��kML(�6��k��qH�e���f���6W�������m�Uf��S�ZQ�$�!��ȖވdQ�Y�C���L��nՠU�xE��J`�U+$��o{���o��=�no�f)0���@���Z�ƶyLo��gV%PZ�L�G[�ɫb���a����n5��x�D�
����
um��O0 ���>[y	�.Lo�[��"V����,�0sΉU[�e�L�I��b�j��?��{�:�S�'�53����m�������4��b��BmW��,�D�xK��[�i�����{�co��@fpZu1V]��Q��X7U 9C3����\�Z�&���1V�X�jp�m�f��W��=	�CɯذX��cd�w5�L�&&"��O���E�5���&�<Xc����}w�	�`����M;�[\��_m�8E�^��!�V0a�@�f�\�)����$����tTC}$ɲs�O�F}����RȤ�<��lZ�S���͘�=���ҕY�YV [����堉��D��vL� X�E�r6�F⢌�(@��h:�C����>z*��I���f'8`��K��Gv ��uM;�:���X� �	��1sĤ�8�,aDU��A��QE�&�9�#��e['�h?��� bM�0�+͋���*�J��:�h�b&��Q.Y��Y�j |D�=�����=oI>��Pe�f@t�4Cn��M�?-�&��Q!�&x� �H��V'^����?͇v�+	��$�'��WHjB,!�Y�3`|�^'b'�P�b�;Dkb�&����z��@"�J�����q頌 �LqX�Xg��>����j�ΥFȇ8�������Ϛk
�ڇ�)�qy�Ox>���bI;G3�|D���2rM�y\��J�����]�/\�8�ɯ�7�>��0������P�"����WG��)W!�m���5��"��=���a����=�g8�vyOsd���E{8�$`���	uzb����O��m·�d���M�_�O%����8a0F�<1�\U�)�)īƔh�q5�{(y�� l{�q�:�}��S"X�U_TÈ��H?;3gqF`���
�8�o�LN�A�(��Ys�4Q�� �#^H����2Y�Ʈ��������Mj�/�4|��|�%���_!���`O��$���0��Wp1�9�:�,^��5ܖ$�b�p	=���2���V5 Ɯ�d��S�c��!';��w��˟��z�)w1:,���ؘ(��b9R�������	<��ͭ���� A:���ء�3�Xm��f��͝�	`x�}xo����٦��dD�w�3�\�Ӕ	�Zv]�_���\���Ѐc%(J��<\����\��ʮ	)�?���љy�3����'��2a�L�����C���ǿ�?�7���K���CQ�����ZG�i�'�(���I�*���%���H��x:Aǌ��
���EMH���i�,L�e�Oj�h��L��m�yke��d�f+^%&���1bƒ%��5w"E�g�Ӣ^R[m�w�P3|����ި����wqW(�-�������561�L����@��2!�Bb�H�'!�gU9
��$l���0��08,}3��kD���o27��}Z�T����=���N��!OV�xoD�ͳ���$+�=AU��ܤ�����8�y�n��u�nJs�(JeH���uA��Ծ��叓Zb)Ma��������k/�q�P��Ġ�*��4@w?AU�ޛ��z�ѭ��V�9s�qK�J�2a�>�7�����G��k��ČІO�.�%B�4�p	siу�7�U�3^�L���?��k���HCA�'Q$F�+1��R�$� n���4�����e�I�`m&W�Тwm�uXR����,l��g���{.�t��_�%��!����o̻���m�B�gS���T��֜I��d!<f��j bIHТ���!�䬗;����V)>f��
ԓ$(3�ВYE��D䆽���PϦad����x��7�2���"�!4���!ӻ6f�*�kV(G3�D��g�P�Or�0�]\�h���~������(���&��ըH�8�m�v�/X�d%�
7��+lhlj��A�u� �����<�&�I�Wo�	�̅�<�p����<n> ���1L<8���i�"*\R��ѭJy$4��F�ݫ��La�EL����CDP��i��Ւ�h)�6U5��A�+� �o~3��p{��|KjQb�[u^|��J�XpX��	RXB���v*��G��J�x�^����u�G8+�y��ؿz��Q�өM�*�.-����M�f�m©�QBeO�>�"�M�b~7\�����&�%���s$'\vE0��x�ӟL9W��RK^�FuW��3���Tx�6Jy)@g�Wx.D|�qf�-(�JJ��lmb���1�g�`��s��%4�@6P��Or�5��	�
Q���!�0��?����Aw�>[�#�\�I=q��VJ?�O���UEoS�Oa�k��QI~eYt�	������x4��������Q�g�o-����P �׼~��zv}�js�1L����jxI��g쫲�ht�-XHt�=�17���uH׬��9���dʹ��R�>F�)F1�ك�׷�6�����dݞw�}tKq�n�q��4������c�p���A�q$O� S�`,�fx�&�K���Vv�S��X���:[]z29;�܆P��Cs�V#�%���5`WX����ڿ|zʣZ6H�#�6B3�x%�-.�\]�gT��.�~xd�oj7��;���:��[R��"*��pG0|A�~�i
�o���D��kn�s
'�ӈ����\4䡇�q�~94��܇�1Л�B�A�Ͱ?H��a8#������.����9�\,�H ~���_�YW�=�`����H���;+r���9C�H<G	�C@���!��r���,96z�D�������-?�n��~����Bԋ��:���+sm�~��+��F�:�DD%�F6��*j���C�W2� 7v�py�/E'��El�e1��IK����縣�q0c�����.��	K����5C(��7���v�3)ɓVA���x�/�B�a��Φx��P�꒝13��l��>3}BL6*��c��)�ʋ�4JYD��_�����x䭅�&[k��$�p�yH�e�Z����@�ʡ���m
�AQ쌙��l�4共�xŴ��v�zW�Y$J��������_�9H�Z�in�]�\}B#�5 �8<�RQNd�HV�LQ��_���s�)v17�b�q�p��#�nDr0����I�������OqQ���ȓT��6t��!e5�Ԫ�+܂Zgs"��c7k���A'7�£��-��r{�q�����L��⻏�E��Y7�
7�۸GE8�?�lH�2u    �Y/�@Kئ#���	̽ A����[l����#&���{ۓH�jٛ-�Xn([c	�.���OC�q(�}����	���,�'D6O�⒜�΋��I����kkXKE�Ę|��Ջ�r��QW���~���~́�iz!x�w�YYs
�B)z�4�]e������r�qI�B��QK/�u��D�O��4��9�G��f�:�Cr�]	.nI�'^b�#��b���+A�;aw;��+�"�mse�Ỻ(,���yg/�7��Ӻ#q�@���V��b>/��[,��r�#bO ��]�����͒[isBz����[3,�)UJ���&�����O�ȝk���8X$�V��-g�L�.�D�t��гk�qe��|{�,�� ��vű����X�Ƽ�y�m�o�"]Hѵ���Q����Ko�ˉb�Qh�d�@i�!�`&��o� �M�\4���>4�{ihN�П�?���<0���`���Z����ܧ*g�Do\ ��7�VnQN�փ[M�����RM/��,����������/�>8�I�S�`Z+�!u��Q�� ޕE1�U�2�aTql��i����v�\���ۥ��=��@.h
|^�Um�9�U͡�pO3�z�Y��8�.��C�_���s/C�`8�=���/�@z���tb�}�6&g�l�/52�6���ϵ�:��(E�,��W�o%��R�m\dS�h��bB��n�}l������y��xEO4���E��ݍ7H#�׸Cq�`I���F�lM?�{��H>1ѝ�5��U��P&��m�\����\r��A,I+�A��˹s4�&�Bɲ�j5�2��S��"1����Ă
�*�pYZA2�����4A�>V�`�몥��{�e�E���'0���y@�!z��_蝩�-ȇ��z�����Ӈ���OW(R����jS�p�(g�F�=���C�[�h�x6�\�-?q�I�0�A�v,��ܢt�������Ǳ��u��ex5�~d��\Zϸ�����ri����,ʢiqBѾ��}X4�U��$n��"�Ȗ#����B.!��`�Ź�3�Z�UR���HsS��u�ݰ_�w��h�Zfl��)�V�a���m�8�A��ȑF>�����/������i4|]J�*�-T�G�V{����xl�r_��{��P��4�1�7q6��� |�!��p�iX��S��Lm�bxI�B���[���@8��~H`Dj�"�����z��%�i���#=�w[�r�0��|=<揇Gt����[�rh �:����^��xņ3�֚�3>����R<l�g�~x����5vD�G����qi�H��R��N,���i��\�4k��2���8-#���;J���/�Ț�>t���b��� �b�
�3���N0ۓ���k�Y�e�qC��9�&I"�A򓤙h_�ȏ�L?ń�g��8z,��>[;Id���L�����-g��%�֊�+�)�!UWe�f-�-������wܝl)�"�[$��;�$����Dw�>a�E�ʭ�ɼ {�A8O�L[�i�5/B��F��;̝��ab�XX�WK�����Ĵ�����'"t�}�ACV�Q������#XN}�����W��[�B�[���!K��CG@��N��Ý'0�c �Vv�Wڲ�x���H$�����c�(4�0�H�M;�l9��T�՛�K80�,Wm�����h�yٺ�+��� �^|X?qe��OĬMĝ�XSK�M���zB�T�RB�A2Mj-j��u<�Ch��z��$�=M�Q�����K��Y�Ð�簡��pt��Sq�mU�������'a�=O���,`�d`����6�P�/	��$�;�t��A��:��Ƨ�2���?U5�\��4<�K-����aS˽T��.�6�q�[>C�\�m�IR ��pk'��|�t9��e����[,JAb��ljB� vlC�����\D��{�Q�=̳�-r�n�5p��!�U�i��L�=�σ.��N�Rl5�)5���G\�6
c�Ӌ��h%�у��mִ�;��%fӐ0�TR�"D�<�X4�5�Z��U6�0��q�����:c_�06͎{�q��K���@�3u�ab\�_����H���q�逝=�}�1Ċ�*XL���tq(�L��N�س÷�s��ғ$D��!��8�Vw�R6�Vn�o����/\�ĸu�"�����]��ng�[�4�R��ju�Ey�eM�C�{~ߌ��c��3�U9~3�_��g���Έ���8&]�n����qs��_��2J�z�����x?��.sY� �+l�� ���y6톶 �f��u#�5(�έ�oFlM���B������g�ף����x�yҲ:�ϒ��N��w�9�&~����@_�5��lm*B������F�`ِ���n�� Ȟ�>.5I�<��T�M K:Z��F�/#��zF7~�g��J��+����?�i�D$0��"��(|��
��� �\���3��r��L�H>2��ʦ{AE�q}Shy%I5U��lJ�D�������u:�FGK�%�X0��)�$�ҩ�-�%�\�9-����d�)l��6��a�2H˚�Ծ�59ˍ�|���b�t-��R��SYK
J8�]��VěU�;��5w,Q�MF���ܤb��,��ݞ*ȯ,�R�K��R$�LcuG3�� G�u�R(6#�+։��@1\8�^����R��vŋ�����(uD]�<���To�zƹ���N>��nw�\G!�>��'[WȜ�NX:����-
@&�IQa�������B]uU�\&KPp����	�E~:��tx�T͸�j\bk��>�O!��L�I����%՜�ȵ��i��m7&C0�y�Wg2u.D~|�b�傿/������Mn������wxx��y���}����EX2�pf!=6�)��K4�2n%�U=\\����y�V\�X��rLM|o*���J����=}��x��X��P��Ԥr�F�Iq(�1a�>����X�������;@�$��f�P����8I�2N�S����ߙ�S��%��$l��o�(�֐'kx�b���B�L�,��
&%�;�Oa:�/��v�Q���\� ��9�`�x�z��^vg�z�5�Ѵ�#x6����u��y��A����=�D���%�鼘p���C����r	%}&s��84��q�����pj"��d���ѳ�O��=��Y�[*�G,`����W�)L�&(�VRp���j��j�@iR��e����0Nb�`�l��d���GF�(ڿ���.9��t��V�~-;�7/R���;�{�v,A�B����ۿT���v>l��I����w�򾄷�~��-��	�����D>fNxe�
6Ԏ(eh&���į6W���r����l�n���$�7G�$'�����;"�:Z�0��i��fƠ&�(GQp9���75s�^8ܰd;g���)�{��W`<�"ja�V��W�b��wD=nr�n�:oݧ��35XsMpƍ�����tw�Q���d��؛���b�Me���,r���x�h,�Y�b5��&ל�&���
 s��?��Ğ���v�Ѻ��[l�u�&�Sf�=�L�ӽqNt�3��-rU��(�/���Q�MΗ�J�U������Vr/�I#��J�\5D҆B�i�)��p��:l����U�⺯��R�� �>,��LB6�n���GLR�|�I������VL�'�l�ՕŲI,RI{��Vǵ�v\y��
��b+!�8�D�w�i]�:�1��+�ؕ�����NnF���K�V�}������~�<�*,<��={群�� ����y�W�g/��ڦ[�a/��u�.6�TTboJu�E\b����io�"������&�g���Q�)�}Uh�r�Y�)�
�66��"W�lQ,��*�b�Xf�-wq?	>�װ�b^��|%9��	�3�&@������Zr�.OI<B;����t)�;TI��qG��v�[��T�Z�\�2��`a�I��koS�QAm�'���bq	h�A���ĝ��C L,���Z    :Kd�Jn����zZ�~�V<��B�f��e7R���A����~�)�}�&�kϟ�6�Vsv���ւ5����a�[�FB��H�Q�©߻g����9��i8{}^�;���'�)o���B�+���0~5�h�?8�Bi[��=���M51Bc[�.�9Fl�:�h�d$�2�r�:NW�?9�ib\ 9�_l�_�ߟ��bu�Ϝa�uթ�F�7�)���u����>+�@�ǿ��?  ����VW�	��lY��m�r����-nh~H'%Q��W��R��2�F�g�C��.[��
&�g���P���/ZR�)�K&�����U��h1kh�N���8'�=1��B\��Q�V�Jd�C���ԭ���{��6�,Mp��+�r%�AL>DJT�T72"X#�,��tU��8!W;ܑ�p���2����],c�EN�&m�ڬ�O���=�����""+ª;Ewǽ��=����ܻ�n]�AR��p&�a�%VR��Ge1j,��V�2<�E�d��L����b"���HrU�j��2-~,	Ùۂ"�1� �Y����1ZHbk��ˣ�9�hK�]&͜N�ҷ��BA�HD��#��l&jJFp�����Pg)�<w{�ܴ��G{o��5�F]oT�(p#�E�S��Yۃ|�ڴ�:7�Z�:UP���T��qj�'Ũ̸BF��	�J3T߬3B�/�k,VW���W�� ֈ�ӕ�k��~J�1D�^"d�<yڒ���[ŏu����*b��Q�K�t��:3{�q��-���(�S,)��l�$��dp�a����V_~��YqU�ԫ�g��+ ���}��Y����qT�/ ������>���BI�,)�<�8N��0�x�x��	k�dRd��|��e@T�J@TT7����qi;�~�
p�u&�t�% V���΃����#����K��������`�}��>8p������z?q)}���r���0�:r�XQ��[�°�q�#(nT	ո��p���qڈ_�F�� �p�n��C!�Z߉�h/���!R�;���Y7�����Vj�6

T_t�tp�T*�]D/�lx�� (Uj:��X)L譲>�7ڝ�x��h��.k�'�'������bp�/�_�T(o	�o@s�����a��JY��E�:�U285�/��,� �胫HZ7rU�7�c:�85�cTQS��GX!���1z
�R���(�.�@�9�Y#���GN���_R0ӋݞIv�${��OϷ�v��c�@�ä�U�)F���c('EЮ2B97Eϊ[�
'|�Y�B�C�.�DNz�Y:e��O�v1za�� �C:�U���T�p(!�.�b�1;w�n���d�i��=1�!؉�VJ�d"���Se���K`�e3g��z$bс ��:zjW�:��s�x̡Ŭa ��G<U=U�E�I���RU���4�Ё�~����u�1�wJS��)y��}x[~�
��?��|�R�n��C�C����S���;g�NqJ���i<8��@�Gannm1لVҐ�y;uB)$`�Iɂn�zH)�5c.L&�f!�Y\��`;��}_dP4O���@�R�k�����m���d+J�F=MA���s���.F8���N+�x2+��q�t���Q��}!����,+�CЌ�����s����OB�uţ���3�S3�r@�r�<��ڷC��g/=�'j�*u�O��%S�	�������ٴ�O� ��ZX��J3�?��ఠ1���EMruy<#�$�3��,B_}h���}3B�ݮEw��ؼs�3BKCFtGʋ/n�cQ�m�	�Mq/3�>��e��a��QY�)��
���i��h+Մ�f,=RR��{�y�L���_}���;y��p������b`
�ϔY!M�ʒ#�hI������Z��(�A��L��Y��W����������iQCE2���z���=Hd8>`����c��ͧ�M��I$��M�[���a���L;���RȾ!�is&��ŉH
]�v��@ק�/���A��֯�8���^�UhyN���Qd��G��+D�{2BZ���xw��~��=)	��F=��i�N��wT'�
nW5�L�WC��m[�:������m�Ã>u�Ğ"�qs
��@��1�D𷇘��8K�@�S���	v=�S�OK��1$ � �k��#�9b]�i#�%��~����A`G�],��J�r��I�mPDX^��*�6)���p��w���� 'J��NwO�(Jx������(%�JS�Ө^!U�	A��U�Q�(���2�g��.��L���t����aKZ5S��lH�B9U�����yT
���/s8^H��A$�������(�A{.G,H"�:�)U��35��R�:�"�
Oee�'���ǔ�@�!K칼�e��"?PRF�s3z=8�Y6!J�ՙ�S�j�"��p�Q\
-��	��B�54�,-
�f=C�"HW��缂P����H�ε<	%&���h���Rͽ�q.��/.��)*�v ���q��"[w�66c��og��#?q�<'|����iU�[3�&٬Ё�9ulH������$̚SӃe��,N@AFs��Z�����ׂ뼛B���eJC��RR�+�.��JEvp�z`һgE��BP�| �ߡzjd�����M��s��j(*%j�/���+��(n�2N�w`�54ᩉT�����a��L�@�T"N1.�:���wX�	0Vłr%�����s>��7�E�5�X[.�O�[��Z��@�]�N��GlQ�d
��UsiU�#'Ok�|��{T����&�'���F�=F��ʂY���� �Q
�&�MƪJzld"�]!��2����E�n�6'=�k]\��a"$��!d%���V2g�$j���k%$��`c!c�)3
�ƆD��R�T}���)Fp�!�eJ�kQj��[H�5�OqZmazo�����]B'�����N�,0�
M��_ѓ��2x4�dJ�����/q6B�o%����ln��B�{zs��"j1_=�4�jF���
�ޱ�������~c[��7:!��S��-8!�yŞo�T?lFǹN*4��ѣ�(�֐j���)�>��
�οy�	-Xlz�k�P� �
�.��q�h;Ȉ�y�i�~��
FU`�1 DU��_�x0nK�&	�~��N��b �4"B	�45]�$ؚM��~@�}�`�Xl	1-��"c$�F���M=gB$4����`��V�QX�,'5�6buR�p@ρvs!d
D䤜��e�[z�Sq)��� ��gb"���D��C�,r�E��˃�};Y�n�G���)k���t��3G��)�Y��[��q�Z�fὂE98�./�a��p��i��/hנ�ldt7ɧ���TV��O��Q�WQX�-7p\	�o���g��zb��5o��}���ƹ�yɊI`��~H��y1''�4�,v�+���&z�5��e�Z�`����"�7P��k�z���<����[��a�7X��i�U��\��@�f��މS-iV�N<�d�Q�1�M	�M���Rc���N���#�����h"O���s˃}����A�����60��ͩF���ӯQ�-������~�_��pK44~#�/rg�۶�5j3[z��|�	[Vl떋mɟoi[l�S5��aV�C$OX�����z��Lz�l��6��>{�N���N�A`�,�|]&��s1������T(KP����3�<�Kk(�|s؀�6�:�ȁu�a��I����e�:f���k��+.��b��vϠB]��8��������d���Nf�\_��Zߖ�9�i�wڴ߬;Ͻ�d+��X� ��ʭe�uJ�2����{�����oXXk��;�W8���L<�/��eq�jC�1A�ɴ�rD9�K�6r��'�S�q;[�0�E��EC|u�٬�%.x�d>�z��5�G�z��%�v���tU=�-�^`7�6l��D���^G��Yr�s���*������|�J�ӐV��N#�� KW�������
q~�Z    ��=)��N�P�RS��%tρ�Ƨ��B���C��	M�}��7(Ms=CC�nC��Κ,�,����ɵYC����u����J#��?���S%?��jҙ״a5�2C�.0�^�D�YYPU=�Us�M���ql�f��+/�|��c.=�T���� �T����K��s��m�pp��i�;v�R�viZ2(w��U�$f��K���ۆ�u��m��~�
.;��/`к%�5`�X�ML��{��W��Մ׼�`��Q�i�}pƱ��g�f��z'��%`.;ѫםD��6�g�rc�5ϷT�E�e�T�.DTZ��%˼�d��4hSVՔ��<L5~dÍ;%�=Z%'o,6;��LB�^��W�r�1?]z��,޼�L��G_W�^W��m_���������^*v��~��G�}V��͹�����.%m狠�=u6���[��cR���>�s���� ���k&n6!�.�
�x#��D�({��m?�n���]I�\u*n�Vz��p���+�Z�yz��4�"�Z�*k�e$���F�̙��6`AYb[x�%������׏؞N�CQ|g��;���������������I�|�oj��;��m f�H��}
��㶁��������!��� P���P�o*+?�
m*��=qz�[1����c�n�	;Ph��"�xޒ�8O>Ŕ"�|���bZAi��Jm9O?B��i1,O��8o=�ѧ�b�����x��?U]OA�Ψ>u�L
f�QY�����O�0`Ba�\�Pl0\ӾݢJl�yJ�I�ŏ�tJ�Һ4��P���N�"-��	�xa�������Ζ0�<<�q5����}(�l;st��7������A�Ca�O���D�mO�g�,�������Ǜ�%�h�S���iZ����������iYE�jdoH3|�X�|cL�D�9��o:��	A���s���%Y|��H$ޑp?E��9e���# g񿟡��9|'���q���&� ``�9&2BE�z�R����BL�G�zE���'��O(uT`�2�M9�_V�����a�g�Й!x<����[���+�1���0��(,t�N�R�G �ڳ�+��S-~�cP?$�NS�'gp�}/����X�ŋ�C� ɧ᳓��g�� ����J���?��X	ۘ͜�}�_�Ҟk�A��o�mC�nVO ҟ�¨�++r��*T6��C��6�wb�~{��(��ہz�́�	_�i�[��·�6�I9~�J�c?��	P	e%'q�FiN���9�M��Cb�r�v?�Eqw�3<@��O���
ܗ+���I���'�R]�*�q����C��L���:m<�7qFE��Y�538��o�_[5��":��Q�@M���S1 �+q Rƚg�9�(F��foDpb��=�S���ִ#��!o��� �ue����x,��ϒ�a���R"`QɉH�dP?1�)����{LL%���=X�\fX�'W�cL:����S�Q�����a������J��"�g H��,/�N���0h�q�h��R������Z�ȷM�"�%�O�|���	���}��B�L\��<ͱP@���!�(��˄�6��K��U�`l��M�e�������A|�%HUX� 擪s?U���b!�^�� ePj��U��nF2�)�%�	��ȱS���h��Ñ�w���(���E�����!�h }U�"k� �\s��
v�愼X&��(��?�����1������\�z�#��
J�ݤx���/f��i��]Wm~K��_cO������҃�� K(�Z��!z4���D�}��n��Y�e����]+��RSd�@�X_�c)�UU�lg#�ŭ��K(�9J�P0�{J>N�M�G�7E�������О�,%�I�	<��dUO	� w2F��b�7]�a� �b� ~j_[��g `�h�'4�����7�7��@��A����ǖ"W���Bk6�%��,�1Wu�d�S�����������Ӧ l`#�,�bW=U��*i��u��IV�9܃�g��ґ(����\3��������R�ܐ1XEH1�v��c1�ؠ��a�ޛ��x���\��W<:��
���5��3C�%�F��-�H�k�K߸���C���1�a��X���2��:�_�?[P]f �����q@�����_� ���!k�c��J��]Vq-��A�^q+�/К"�^��m�����E�� "����!���Wcf�B) ��U���.N�ӆ���N�asmȎ�XI�o/�>���jX��o��_�VT��5Xݖ&8����6�4�{!���"�4�\F�4�= ��1;�2���0�ln\�ۣ*�� �P�P���h�)�;��Ĕ���E�Z�o������w*�Zf�%��főv��6��I�~�x4<]��>;���K���)��|'�èJxRpИ|�ŏc/|��(/�d�K#���6�=30�Xg�mo�_�D���1g�q@���ۦ���5u����*<g�Sf�ڡ� cB�!YJ�Fd�����hz,�.8�aU��j]AL;�rU,ż�T^��
���"�pm&���T�^a a�$Z����#��,Ȗ�Y1辏�(�-�`I���Z<�nf�k	��h�8�d�֯$����(dt,5���[�T��%�X1�_s�<O8���=��TΡ�����7��@@��L[
�PT3A��Dժڐp!�Ё0b��u���7�!/��҇h��/\^MV,d)3�\`�}���\���҆8\�PiO����<�X�	�<��i?]�%3�Mq\��XxN]F�X��^�қ���f��b���՜h��|(��;(��/�mҫ&�W����i&�6c�n�����T��	:K2估��<��D��
�bP��/��VR�{Pb*�7��hz�m�EBjD�����~�r����v3`�Zͅ=l啅�Z�2ow
{ɞH�M�\�+�=g�S�d,K�m��H.
�|-Z��Fr�[o�4F�"��� �͘�?���2G�X�ܯj��"��
@�ȴ�n̥s1�����$7nk���p�����׏[��͚Y���¦"���e�%��.=_E�n^SAU���CC+NH}P֠��5���o�[�Z:w�|ؒ-���Ne%UW�U�3�*�ݸu��*Y�%�?�NJ-��K�jFţoν�����t�GcdO��:�@W(F��'�U��}|�Bx�ز�`3S�y�\"�tXb��KJuR�.��<�4�B�K���2�^�q1�)@���bt^&�����x���!f;ׂz��IB!���o\��,�Q�%�$TGL��$j�VѼ1��"쌭��q}�1=�ï1��1�X�.hG�D�$�@�Q<����4�LJ�`�K��j��[�$ENH�w��|pM.G!���2�U�����i��U�{�2:���u7�7�Skh�%�mZW�:�2b�n��
H�P���r��r���n��:�蜚~AFI���F�+����"j2� T�Ht}dOT�>�7�cm`�u�<KQ���	#���uđԍ����W��  A�N�W�G�f�z�xEC-UǢX����B5��1�"K&�� [���x��$?�o����!Z��6��0/^�'˂�P�E6t<�q��,�w%��˵��~���|�gq�w3��*���ꁍ�E����)��@��)��]1=Fտcits�g
쓐	p�����4�9���᪆����

C�H]K�nJK2[d��Feo���2X/fF��H�L��m�fg5J����e��;��Xv�X?�����eq�!1�
�'[�_.\Q$����a2a�xxiA��D&�d��_�u�fUU{�U:'��3��WM���Fҳ��z>5q6gsq
�2%ǂ���q����C��e
�4�v�<�9�5a>h]Q�'SĔAG�S�� ���rKSe�G�G�h:��RV+1,    1��QH��fXf�������M�.�d��A�R,KX������1j�0�R��8,u�I3�Ky�5��\)n�V9��q�6!3��������-�@M����ުIl�C�w!���#/�	�8�Ak����S�Ve�E���_:�'�y���/���t��&�l�������Rx8^��G�ū�=&�a���Gl5��s*׎
+j��\�T�2��Px��b3-~������	�XW�����ONO`�5��Q�i&7L��d�n�qu�W�	�䳟~���*��~/~ԛ��Q��R��a��{�L�W�h����:,�2�(˔y�`9[1	(�6p�	��:��@.����l��b��+���*)G�8������éen?��= z	C���+�0�|P8�ɐ%�	C��X���3�5�T\Nx�q�,��D�R�-�D�DG�T�ѥ������sU&r�ӄ��:����J�j0)�uJa�X��-�����v��:�3J�͕�3vP(�-��bF��
���r��q�J
�ś]���E���0��,=tϋ^��*wr���D4����V����5v�k��ʺ�L���b��=��	���@�&�LJ���4�$3�B��N"�._)�|�I�x�ף�T��M8^lp��j�TB��cK�ۜ�w�۴�A/��e�6gj��3����(�{+�(C�1m	�>��c��2g0�l�Ӹ,�	�9�e�Q&Y�OW�	���"����#Z
rV�kMu8�؜�8,�#㇜�Wb\�iqŘ�О!�in�E��XSX�[�Q����C�(	R�Y]�F��7�g�@e2��V���@��CJ_5�%�����@�����C���>��z߁a�7���"mL%��������m,~��U�9pR���� ��3@CN���a�W�s���,�����$�Y�����.Aa��	�j����f	^������d����?$�F
���'-C����G�4.74���w��}�L0>7A!E(dǕٶ��,�\��1w��΅2�r����&.�0Ί��5���h�2x9^yb����43�`�	a�2�iL	�$�`����|�B�%�u̜`�X4��`Nn�Fk�t8�ϖ��Z�l�9bG����p\S���Dc�5����$�t��oa�B�
���r�.�HjZ������P���|,`Df,�847��+��X�R�e�����4�m�&AL:pL��HO����y,Y_��
��Y�˥�c�6�Lc�=�@�O%\�&�
�*���U�|CCHPD�/�����2��GE��d�<bWp�n�LE/������_�.��_����� 3��,���E��A� ��
��B��Øee$��A�����d�P=�*U�HX�ؾ)	�Z-@"	�mU3�&�+n���b�e�g�[�?�����=�=��1�~���� _�)�D4�x@��V�PQ�6@���Jdh����l<�г_�6	�^%�e$��%:7�2�ߌ�B2�a�x�U��"�H�B0ۈ�;E���C|�t�,�Ӱ�<��Ή�&�G`�|�?��𛐋a��3i
M�`���28�l�R�1���,_hM��Y}@�=�cľ<X?��m�[�54���U����Bg3n6�<Nw���+�sp����6��m'Y��P�B����nx/����1���olڭ��!'�a��RT�)0��T���Y�u@����k̠����jq�Ͳ�#=��Y	�7�foR����h�y[R%Ò]��t�����8h3��Ԏ�? �*e=!��tTv�F��2��w�<�B�H��*%��agHb�17�!Ό���A�M�z���YBi�����\��*��/�������A�cXW��Ю�y ��Y�ʴ�9×��,��+��e�w	�|� k�X^�aأ��}:�U��6�jΣB�0�%��SD�F�@|�X���m�L�)�;�M	��L��QJa
tN	�4��u1y�U�ZDx��6�'���"��lRz20&E�4��(p&���]��P|����3
�/�}c"�6g���C�BŠJ��sX���c���G�}���!c�)r��Y� [ �VVO��jq��KX�ڶlh	�hD���sC��Y�?���Y�^-��O��^��!�H�h�4�(]��Dk�+V�#�G1��cw�u�}�ob0��2\~� yv�4��w���{��;DK�Uq��	�r+��`�����p���|�R��R~�ꆙ�j섷�I�W��6>ЇK�O�!����l�ċ��Vvƙ�D6㞎f�D�5Bl�G{�A�u7q=z�l)�Q�pn%��If��*ő�O�N����q��3���DT��?����ech�x^k��ùS��@}� �
���l�Zi�8j>B�����7�|�y2I$3�P��]]��SE/�G�Cn0K� @󯋚fC7o0�Wrv��hz�ϑ�Qx��2E&��Q!��)n,u6�����<����֋G$��(���o�A
(��6���JZi�0�xqut>��?��o"\q�{�dA����*՞#�C��!}Ψ�(b�ۏU?��g5���ݐ^�ř��#�?����b�ģj@���D�Q��(X�,�V�UO��Vwz���D���I�>!I� �%5�s�V"�؟�����O,����& �B=I!\Ё|,��M�V|vcg�IPd��0��L�+P>��#Kf܇ߠ��N<h������.���Ƀiq�E���oQҥL�L�5�8�:Рun�:}:���Uq�r��W�	���gǐ�l�?%������)/�:��� pV���T��[�b�z��ů@�SǾ��J87e��ۑ�U����<��9�DT��
-�RnקQ2�/��~�*�@Yrw
���Jݐr|���,n�t)�[�1]���zB��� V9���T�NR�RH�k9�iN1a��xR*��,�v�ֺ�|Hc[�	��Dt[�#h�i��l����A�Ф[��ts��L
!����*@ �� jBo�/�-�����"WTm���j-�L\Vhx6�����R����H(i�M��A{+7��!���`��Ɲ=`��9DLU`���2�R_�.�)B���/ ʦN�&�I
P�����i
_�Ҙ��x�ۗ�җu$?@g*��d �W�-ˠڙ"��yH!���E��W�9�P1���tg�k���f���x �k��;���S��c~ҳ2̜�0�h��D^�2dE������`� �c��h����A_~�o1��Qx�&���9L���ZC�"ܔ5��(=�RA^�p�}�������r����߂��Щ��ze%���:��9��V6�<\T8�Ļ�~���m�H�b!0Ps���M�R�ѸH�� T�Q�S^�D>h����4���We�T�D��r���D���J��9��瞁9�*2J�`)�̮�J����%�9
m|�X����0�(`g$�2�`�" C�b�'m���3�����OR޶Z�\sB�^`�P��@P�e���d�-4[��t�:)Vh�,<�g��4y�6k^觡�޽��Ky��q�SG�4���W�� �m�EK�������ڛ�[�?�����a����,ɸd#9L��Js�<@T�9�'K�DӁ�$�F,������%�9e �g���T��H�Dɴ�Ĩ�َ�S�S+��z�r*oi;0��ވ�"�Wb�d��M��� G5�wP�M>�Ύ?��Po��`�%�Xb	$�$6�m�D�%C׋3%}�V���!&�(�@�`����X9��S�Gr�\�7P����v=��.B=B�Iy��pV�'L�	�|[���!(�bR����":G	67Ot�}��l~-�mBiH#̡1	�nP���D)�z��[��,N�E�l,bEs.<Ԓ����|���x�}0�zX@��4�Kҍy-I���lqA    =s��炼N��d�,��nt�]�ϬI����E�%V��@R	qN�� �6�蹐KL�_��2��x��]��3O��Q� 8��B>�3Q�l��}��D�S�J�9
K�vF*���n LllOd����ekF���=71`�	�IN-ݺ��6�#|%f`-�P����-����e� -�y��W���!yp�(	Z��@O�&G�f����&��9�VdqbEC��j��8�-�|KG�0?	)W��W���Mr/)kɃ~<�d_����|{vqz�99};�_��?���_��R&[�<?�Nn��۳�7�7;�ޝ��g����gW���Esk��z(Df���. ��e5x�'>?�!�8��R��1���g^�ÚsW�ீ��IY�h%�}�Xvj� M
�n�7Q+�srsZ���ȍ��W+�}�$�jB��h�����b�l��T��헦)]��[�2��T,فH�|�O݆�d��"+&����邽h���Z�����чا�3��s�uJaO-B1 �+���X�$���.j����"'ӎI�������I�������-癄T�!����q`ۮLd�IΕ��?!a�c�
��p�8x}����r����f��A�D�^b�����ϕ�w,S�j�[��d�M�����K�ëm�fٯ��MrL��<z�=�8=������V�����
nb��@%%
Є�L��\���r�I�;'��0o ��ZE1���i������.!����CK��|J�3-]�W������b�ܛ;�S&��H�7+|�k���s�x�V�1�ۜ
�5�����܍vv����U4V���h�m2e�>�7u��(<>^E�4��)�n�BլO�[���DB��G�I���l��3z��E�;��(�u����S���"�����<����_嬎���Z�]4]/e�'��Km�-v%�a����S���Z�
�,#T��x�>�;�	��v���b�d����O`S��hw`s&�Ծ� @����n�_�B2u����%c�8�g+,�j�4�X=��+\%�&��Y|�C��}
 TA
?����@!�'��,(�zF��O�������itf������~98�_�^]���ڑjw��a`�~�)#n�ɤ1?_g�P�<t��cK�H8c���'"')jƉY�:�L��Dz#W���l
�鱍^��As���=��I&5K�υOb�d�M��0<��,ɲt�n�_�$h\�%N����=#!"Wn��9i��k�@T(A���fB�&���(��~X�U!=�J�⿜�5f��hc:�9�.U
��z�Ȗ���Es
!j+Ȉ@v��E��:�dՖ݌�W���`~"|��A[#�"��u6o�^z����3�fw�Bvu�9�y�)�k��ۣ٧��1���3|[ y��M�}���g���l�������s�Q$)m���q㮒_�����図���,l��K�]�X��������5�����a�Z��V�2�7]}��eH�������W$7U<o�-�.�֣�8�N��¸}W�����[��h}A���j���>���d�KG8`/��Fj����'u�|�}�`��A9�2@�~xd}��ֆe��ܰ�8��T�q����(x�}�u�r�[ت�X2��q��tF��tJ��J6���LQe���Q�}���7�(8�����+/��^����f��G��e��H!�~(dh	�I����㐔�f'�}�<aY��;����/~q���E�6�9���酚����@�s�s;
Z������:*$LM��<�e�T�L��U�Sle;j�c�5��rLS�z_ixR�@�lb�I|e6M)�SUTh��X����g��7�����J ���\зxl�8R1�^V�3��(1�����'���bF��?��\�o�)�T�a��Z,��L��^�\���Y�o����X�����0��1�
��NF�%�YA���9~ؖD�+d��߾�(�M�:��'o�O,�袸G��۷犐���w��w�gж��?_�'�I�[�4N'Ety}~e�x�t O�rw�����I��y�n��;3!�7�&Iɕcl^>eD)�f�ɓ�4��eS���`w�lJ_DNĹ^9�W���hoD��ɽ�z�/ĕ ^��h���'Y1�1���u9�p���YVrvr�X�3�!�W���8C撮��E����?ӏ��<
֮\"��d]i��7�<I�Q�2�&����v>/�j_V5�;Q����ߎ�D���&�"'�dF�!ݻ.�^)�|K v'֘|A�>��j'�Zp�$�UH�e u�1����l����(�N�v�B�H`g���r�*�Ie�>=5O�bN�'?֟�@���(�0��=LK*<��Ӑ�Th0�R�2�����lڽ�}�}�Z3!_�s�ƙZ��J���+<���\t (��3�]Y�=du��
~d�6��^���*�seP��������D���5�,��
��x^�!���a�sH)����V�&����Q�}�AK��U`IǑ�fC����Cm��p,�-��(��b�fm����6��E��a%(q�j�"b��!
f���v�1���(����R���ԗ���v�� .S��'J��:�?��AS�v�`!��M��#�5��Ԍ�!�1Y�]-����6-׮��9W=n�s��R�wZ-6��4;<���t��n�1:�k<�F�$�l�VY=U[��mtI�H3e}�C��r���β�8Y)@(\�tX	����:�o�"X�g��|��s��
ZB�q��|p6gW��]��w�� ږ|���4G�-�f��bd+��9@_��%Z�f}�eL�q�(f�w��<�S�Vޞ�Xv��`Y�ZԱ�s!��yᐹG�M�ŏ��y�p?{��)_��� M��4�.C����l)7�$i�C��*��<����ЪI(}"N˵�p�>FT�mG��P�� ���#?GDR:��*�h���C���F��0�㳬@��2�ӭҦ5�6TGkP��,5[$�Z4��.�H
%�i��^8�a���tyם�[�k� #���B �,�A^�zB�m�O�dH���� x&�b�&�LK�ț"��nS�h���|�0e�����~,"��ToR4I:��Z�0�3@���Z.�l�B���IJy���򨽅���?Q��4p5��\�KB�]�M_Y	Y�Yn]�Pbius-g�pR��@�KS�iL�Yf�����d��Y�����tuU;E��o��;r��O�:���;���Z[p�
^Q6�Y�����w0e�:��QBC��a�K!���Q�|\�1����������/1K��qV \�,ѩ�DI�[�!4�y����>��*��<�X�P{��!�b�@f� E����t�I]�z��u���<4��Ha�[RP�3	8�Va���s�I�Q/ܤO�v]c܉l(��!l'����A����n}���X�q��++p�Z�a�{,	`4� �:y�~�$��oN!����ےP��LKI.��5"%63z}|�5�Gdu(�nI����7�S�`H�_���tN2�C�&�����;k����D��; ]gOIR-*��Xv�$�K$�A�0vVݪU�� Li����� 4JYUWV
XWv��%�y;I�"em���ιY�6ሣ�(l��	�]�%\�xd��!
$�S��-uz������	�D?�>��	@�u�ŚY2ƩR/7�A���y\Ç��#�e0� �y�X��9`GC�ӵJ�É0@�t��&A�����i.�#W�qq���Fk�S 4h� �=nД���8\Q������P��Y��E_�E&8���Q��`�v#�֔�f��!/}�pr/tFT^E�� D���'�O����⽹��P'Fu��)3��?Ջ/��j�����|�I�N?
�fԊd��&��wI1�5N&�������iǋ�����?��%#�g�&4���Ä����L�4�Q̳�8�5MnL�P�ˌ�]q��p'��    *�Od�]b�#��*� |�O���S.�]]��0�NQO�H����}C�a,^ky��Rb��/~�hf1>���s!�u{�^9[����I��k�E���7�l�C N��i~8�����TL;��\����>�U�	���b�:\�ڹ2ߣ��v0-I�&5� ��jD��/�;Q��9�`C�E��4��9�w4�>v݆;F5�6�3Pͬh�q0�����>'�E�����w�]~�d�}���t��8��wg���*���0h,��N�L0���k�N1���E���U��U}k�c�q��E}�����5�m�Qî����R���T�E?m���`+��{J���E˵k7�M���.C�T�f�X�J��uʭٺk?�o�ñf7�
���\�ʞV��6+�Zo�,�q��j7*�a(���q�H�6��W��t����5n���׃�u�^��vV �����QF!�����$w4V��G�Q�.�Y�cG �K6�w��GZX���`�� G���lc���M<t�2$�0���ne?�M��1�םܦm�hfwҍ�f�8ʃ���6�P�DB�m���=��ks0�T��΍v�R�.�Ut��ы�V4&"L����6z����ˁ$p���ڛ���~��v�ۖ����CR����,��u��A���Ȓ��ʖF��m��i
ʸ6r0�Ӡ�3�-$E<~�������Dh�@
��)��MaR�_�m[� r�d��\����Iõ�/��ڗ�R�s��ƎUQb�^1	i���[�J����j*5��Alu�e���|]ѝ����� �];���$|�
�3	vT�R���i
k�unb�Ew뀴��Nf"=�V!
&O�L���{����C\Q~2`�g�{�*�e�4�������b*��,�W���l=,i6c�H�<�+��Bs��8�C���9��mK@s
]�*:C�\�t^,_�:����h�iٵsz���� �m%l�{�*���Ơ>���QKiQ���F�����K��?L�&���r�xo��������m����
����]<JN]F���g�|�t�Vv�Z^6@\�(�~�_!���z��vt�(>�/7�;�/=���N8��k����cn3|��YK�����5\l��Ѝ�n�~�*n��<+�$2҂�$p7�R�L֔��pM���<�%�� ڰyb%��XP���a�K.&\�smD�p�K�spQ�8
�Vã���F����+�w�ds7c/�)�ilNY�ɻ���2\�ǂUC���'(��>�n�>d�8��K���v�5�>=n�X��b�Q���u�j��xH
��E[n���?Μ�j]�� �i���cIt	9����\b�� U�K�$`�\7hѕ��xo�̽���v��~���p<�(��9��F��e}R<W���D��NY$%���k�	#[L扆��t*&x�VF�AVpZd�E���()�=P����G������&�-���u;-�|i�M|�zR��n��ګݰ��8��vU���0�o�E�w����ȀJ�2�*F%4�#�v������,:h�w����'#�����{I���+`\(���X�j�� ��aAΣŏ(�h����S���Rj��J�B,͙��@��+D�jK5�g�6��� "Q�⼫Y�e���(�GA�`O�����6��b_QR����ٟ?Xz��z�-$t�m�P���N˳d$�!N�۸%"[*y�l�c���*F���+3֝�pm�����4u���l��z�01gF�ʹ���G�=	�笩:�1U�#�VG{ې0��ytE��9mc�,J�Jy�HZ^h�P Kaޖl^��A�7�5e�N<yW)@H#<��J��?kٵ�e�%�VM�W��i׃bBe%Q��0�9ڔ��R�$��0}2�Q7�9-�(O?�`t�G�R���6l�ϻ�!KUU븬?����,_چA7-.e߂�,x�m�+�X%�F�-����P�P@>�{m���j���/��aj�ZY_�jXDc̅k#��m�ʔ���\�"r -DZ+Y��`۹����YN�i����'�Aߠ��$�z��#�����l}��d��$�t\����e�W�غ�u&�M�u�7���̮6W΂C3#��[���;w�>Z��Qs��>]��l�n!�M�k:7/o�9�k�����r��B,��/6Ϥλkn��#�g���Y�
���.Bs�en�%6��Js��!`�}�Ӎ=�_{ZZ񵹚"���������C���L[J,�e������"�F��f�s@�ߪ�ϞI�Y3`���s��s~d�`A�FB����DT�a�}�|?�>�$����o���Uf���d*c��P�lĳ��a�C=#�N}�E]E�h�2\�ΠY���0*�3*t�W�B�<5Y��o����7H|�@�i_ei/oH�k�M��3ͫz*Dc���@�Ea�����Sc�7��R��<L(?R�B$�z���炟|Ӵ	�f��7�5f�p���0�l4���}��I��-��G��i�ҕ��U6D� �r�a��蠼� 5;R����w����@jq�����J�ۿs�/oY�l��	���0��5��n��0Ǿa�5ߖ�9Z����bd�:�������N���t+o)y�/*����^.��H�ASV��|Y�U�F�q�*2����0�XB�2�b��ǐ����`��e-T��,֠BpJ����z�'�-uuuL_(�}�x��p���\T�w�lIbK�88�cd$��ΗB������ʪ��h�U�&�G�5�£!Tb�N�L�¢s��AT�F���մM&�;e$\b�H���&8��垟�@�s��c�X����m�����1ZX],����,�5�z�K��JV�~��n;���7�LD�1��oV���A��1�-�@�uAa�����X���0�m�Q�o����.)=#� �x쎣o�۝:��@m���R��2�f�������F��M�[JO�����yg�5Tj�y�Ӎ��`xC���w��*�g�Q[�/�M�cZ�����0�����#���}������+��fN�h����*����*q���a��K�H$S����<-Z��hs�5�ܸG�����z��Ħ=*��C	f��Ԝ�(a�,#�1��ηE�ʼK�_����;�"���ű�ĭ`��+6�{/���Ì�����t�.�:��M?;8|���6-�d�ls�S�q�����n%������eP3&LG�\�8I�u��TK�߭�$Hr�'㊾�'��T�d o���a�a�x�I�!���̻�F���h]7�4׆�K}+�ʐ:�cU2�hMS�\����p���2��|ZN�JA�n��ɢa^TC�n���R��e�b��2���Zs6�}P+'��%�Y����yp�)4�;43���oּ��������>�=z����z���󣝽�/L�G�w�;����<���B�s�OWg���ӳ7A���IRa������٫?�����N�紪�������!~v}����ݽ�g��v_�!��	:�|{r~a�����4��
�п��>��_rJ"�/v՟&��	�f}x��0�]_��~ۏ��}���C@�.�$����?�9�8������''���������w���<���G2i��.��F��՛������{��yw��I�=���7���١��Q�y>h?�-����<�Ӄ�������3�cq<쟾I��{!���ep��_45���k)�������Ͽ��s�h�Km�u{S?����1z4n�i<����**d�J�!����W�Jz&<� @�����MH'�YP4���G-���`�Xw'�a"m��Eh�B���Ah�����ͅ���P������[ȥ)�����6#�a"�[� ��\*w�!F؆�<����ji����b��A:�pj���:��u"K�%�\��%��kX�"�i��M�j�ټxu����<����(u�l���=)JE��۫��ۛ����1�h@�
������V�5�Q[3%S�    �"؊��v�}/HX�8+�m�l�W("���h�ZN���ƄZ�ce�ϔ2��p� \����$Σyx:�I�Ib$W��`��q4O��J�d>�����ܡ��xr���?&=1��C����Ou��X�V�ؒ��T����
�6G�,��0�ːe�9m�W5��+���N�n�YZs�� N�o�~�J���X��rԐ�#C(Ʊ;�u.�S�N�e����7\Ǯ�\c����_qgk
���w�;�mS����t��bI�`8%q&�oB���1�7�����,���Q$9$�l-w���ca�*遷k�G�>M+S��N�F+�:�uo�4������D��E�]Ű*BFS�$!%\�H7`�m�vQ�7pr)ӬL��)�?�:�yY�����.βd��[g�]�%���+%�ş�ݠ��5��_��׾��)h���){�(��Hwu����a�C'��񺆺qY�K:^����P��A!@�����Y��)g�@��8z�\R��U� �>��P- f&��~	���n��v���4v�?W�P��u�����'����^Vړ�lH3%�A��\�����j8-=�n-G�:%~m�a�^��zp��~U�S���P�7�*�`'��5���|;V\u��-�apX�p/g��w'���-����^����/�t%�_��:�w㔆���ټ��)wB�O�X�,�k�� ~�t��@O#�ך�c&��!2����ya�ZpM�~ ��\��˫�>�ϴ`zY�r�q��Ġ.S97*?R���<�b��]�� �h������5�����-FϽ
�*�>��N��(ԦW�U�o��Fi�N��j��p}Q���u��V�eYP.z��Tp'~M��	u�d��D!��C��������Υ4,�*��v��Z��Qܻ��V ��Z+}��JWu	�s��P_�V*)��#̟�h��f�C��aRǱ:jò΀̒~4���ڸ��W+ 0�2�Iy4BϚz1S���|���4�����NH� L�5G'��9yMfz�K��VQD<�DGx���!1&S���[M�J�iU�]�b�9�oȐ�����$6 $���X�`�� ��ϠuW��}��n�������Sסl�;������\���q�Ֆ����<�w���W�\�_ǖ�|�~���\��z��]�d��ظl�Z����o�_�&~��Ų�5�U@$`��FV΄�p�U`5)�gKj�ʽ�DY�u�؆7��<;rĄj�&pS�V [� ��+It]3,f����kKh&�fe2#e�m�u.4����&Y�����:ͲZ�$�붉�����ԝJ \E�4��i�l�BլO�[���DV�`�3�Fˁل�+fT���Թ�L2�\k��ų�ih�J�hՅ'}�(���-�ů���u@÷C8��1�d�'7)��ꬴ�"[|�y�\�C��(2>�p��(�i`�3.r�B��Wq/�kq�Vh�%+�+Y�eF�-���^$��VT��2�s��JG��%u���
�!责���s�^�a̽�&317���t���n���w�7H#��\٭���'<Lͳ������^7+G��5U F,$N_�16�0��x�{XRC���`7x�F�iY؉Hgq&�ZC˞�!t�0|�3�;xF�h�@,-I=���ձ ��~c��_y���0�y�Z�N����9�T+�G�rϟ��\���t9"�φ[�^�\������휩�r�����g�)�H�F`&�D�d`��LR��lJ�#��{m�̀�EԭR]�p��M����|\,F���e�؅��7�(�Տ�Q����CK��D]n�ҵN̐UM�_�y?km���wve$z(�BT�Y|�	?6x�_�P�t�aL�9�z�	�<%�󄴶��z�D���O�~�+ ���m��*U�H�[ޞ'�������6�h���L�z�cj]��Ҷ!���	>o�c�K G�S��h��㷎Uu=R��}���U��#���Cd18���ŝZҮ:�ȥb����ҍ���M��t��7�4�?�y��PͷԤ/C�`Mˢ��"/�LR����n;j��J�fL��6�P��F��M�Oԁ9Q2汁�oF�8��}�9�)V���l�g��a�I�z�2H�H��"��!�l[:nW�m�'�Ju� �o��D'��b�^�/!��C���;	�����P�D4��� ����8�ll��sz�BT��*w��ѫ����U4H�mC u@1ĭ����ZGg%��:+�P�(p�:��xR�x���G�c2�e�n8U��)f��ދ�xy�����J�^��=w��y����@X��`�|y�m*N�$�$`�ǘ"]넠(�y��.!� �G�ʶ曚� ��/]�.\mLg�oWR�:��$E�)"M�����}�7�p�Æv�Ů�&T.��Co+Z4�`F�����������6';Q*�FE���ȫ�J���v�1^�����:e�e�d}����ԹM�n5}��g�ф�-9F�ߨ�6c�>�;�D�ޠ��U��-��ز��������.�RV8ܒ<��o׵�lQ�ŗk��Ƕ|�i}]Y�*mصA۱Ms�b<�_^��/�+���i����a�M������~�]FK�\$��ċ6���"��crbT:�bG��(S[[%��u��Op(�	}� Y[�1�A����3X�i��L�F#4,)�8 �&c�ލ��txWw[��:1!���	ƿ,5ؚѭ��Z��'�t�v#���@�,���K�+v3�����~���>�kʱ�RP�S��l�����c����FU'3eK���sT~m���Sk~��a�*/뤱lU��o��~+�[i0�4X���WW�K����&�r t٘8�K+Ե��_f�.w�[I�Q�e�e
wk�C%�3��t?p�����Hio�r��V��B�;�M�_?j�Mڔ��S�P|���Ʒ��:�Ɛ%x}N�6��3�wũ�?�d���@G�;��fv�û��\{�qCm+\� �,���@�o�0s	jnn�wݥ���7�C����Z�*5J��ʀE�bs�v��,)� �,��2+�4O�T/��R�d�G^����V�'��Ҍs�"7ػ�y������t2����K�#��9}<�԰�t��;��{��͏�����Ĩ����ҦF�-qfR�t�Ӆ�0 g4M��h.��ri��v��,�xwu}6�t�e�EU`��j����<�m��7F_�8�QU1>�(^`����(�brc`��h^w�ʑ��o^������~ZB�9��/����;f�_�~�ˌh\+��箑�2���*����C!>H9$���:�+�.�d1���_zl���~�M��;���X(�����w����k����;^j������Y�7�pzό��?��(�+�Sߋ^Ǚ�E/:�����\'դ��L).^���<��CJ�T�4r(h��7P�����.�����k��f�S�0���mG[�0OG$�p�/ۈk��S-0M]s������@ld�w���)G�/��5	�)0R�t����_�����ۿ���s�ь�7���{��B��b[\������@i�T3d�l̃�������Z�����2�M�<��
,�.?Mm��B,ә����g���g{<k�v�桲�^�c��K�@�0�����D纆�4���S�\*�6�%�͙��,�QΫ�9e�g���e'tv��r����A��[Hu
(��6ΐI��RR���͸C�t`TŠ��v'|Im�%�y���'�k^ht��'ǣ�%W���*��}�%�'��F7	i�uɛ�Y��{��2��Z6���GAO0�|�������n����((�-a�g9�ˆ��d�
�//*��M���[ޙ5k��s�zdko㙗�,���z��H��c\w�������4�FB5 #��H]��C�¿N�+!�7��{bB���{c[-�\�2ִ6~�/�v�h �^�@����=v\l=�*�W�v������@�5ك�{)�:�|�e\[�d33�Y;�    ݤ�#e�,�naz��ʢ��2h�{5��a�I}��+<��4�I�啭����٫?�����K�C稳�Q�(�*���w� ��#��������L^�62��Z���D�j#�e*��5�,��X&��a��17��8 ,bk�5A�+�H}��rV��Q	:Ѥ��P^.��סLU��j�d&�auI��6*�ِ<D��_�(�''�|':::�����L1,�����}��>�w���/�/��΃=��=��=��=�����C��K�K�K�K�K�K�K�KؾKؾKؾKؾKؾK؁K؁K؁K؁;�.a...�]:��t<w�x���ܝ��.a��{�R�ܥ��%��%��%��%��%��%��%��%��#̝�#��#��#��#��#��#��#��#��#��./�{��¥�����n�/��x���ҥ�K�Kw�^���t'�K�K�җ.��.��.��.��.��.��.��.��.��.��.��>�u;��u{������}v���]���z~���.�?p�����=�\��e�>x�v�n��O:�݉;v)=v��ؽ��):vg�ؽ���ؽ���ؽ����ؽ&�]v|�Rj3�5��^L7?	B'o�&U4~^�o$�k�5tn����k�����8sH����J��a䐒����e�\��������>dT['��h�-�Ou�n�er�F��y2���]ie�o���ܑ{:�\a��=�G�?r�푻o���~��#wg�;����G�I?rw��+��[����G�V?r����-�<a�������-��a��3�@rZ�����-�*rg�1�h+�I��I1R�A�Px�!����}"v��G=T�4�w���s�N��sgYl`ϸ5+,��E�u�Y ����B1u�^أS�Ý�d�.�� _$���r��_d�G'Q��>^���nAy1+tL@��S���������Oz���@l��N��ct�%���_L��H{_��%S|Q/�HΩ�,��2�̻nqۺ�� o� ���3 %���B��Gu6�}Bz;3zV쑫OT8<8�K�abl
�ͭ�1�&=�'!?��i).�ٸN)z*I��#iwu>I����}��}��'e�����=`�<�gv�E�ŏyR=Y�}B��#N�ѡ��2������*#��<1m�a���y�*�����/[���[��L>�+����d���D�J$O�x�Z�a9��i��C^�CS�$V	�� I%`p����pg��|�6��B���UO \�ȀaLb!6������9E��u��,+�:�B������2B� ���{��!+&qEf%��)����*�|�����/��[u#"�ޒ���!�MNX�t���1���"��̮0��!Z9͘D{��9�i�)/ǂGN��.�AN �Q��EW�I��j�!��A�#\O�h�K��37����1�1�U񑸐Ǹ�U
C���`���L�����Ԏ������;�U1��g:�B���n�X�%�i��30t,3
�ݫr�}{w��ɋ��|�@f��ل�L�;��x<�bB�X�<͢�9\���`�F8���Ho��`>�<��C���I�'�HM
�
�Ì�VLH��A��!��B�@��IJԊ#�<�	��B�p�F
L��?ƙ���ݩD1� �mb�Wb��aԽM�]1�Io�oR�r���T�w�73_�1v+�@��y��Y"V3Uq�R���5i�l��R���eď)l7-�aC��ej��6�:ء�!� ,pv�}?���>�L=Y��j�Ħ��"aw�p�;&<�
�G�"�柹��dF�4S\a��� k,f�SFMݧB�(D��͌N�ώj#8=g�??�	7q���m��9�s>�8�}�"��G�tt`���|)����������aV`
�IF^���m�{~k*0�+c`YbE3�<��˯�ď���V�b�/ou�e���mC"��#�P�FƯ��3<m���50����bB^�kا$��͔0�P�b�H���
Lȃ�Gȶ4�t�C} ���
}�*�Y���eC��#�+@�ɑ}�X��Q��Sq�x�-e(&���{W\�/:���D�)d���#���sNjpO��cO��NxH����Ŭ�S��RԵAi_0������~~埒�6��oaeu�8��U)j�@��'��Y���)/�>~�J�~�� �!$M�f	R՟�"��2�c��T�CB���X�?���m*Dʔd���X�|�x@�[c��$�������8�/���|u�Bs��~����<�-��B�j�C��(�eNF2�F�PM��"�H
H��0a	5�b��;qB^Ae�B�.��t
yܠEI�c��bx"�
�ϲt���R�`�,���X���#���lz�o�h&�6,��}n�d'���	�����z�sW�*�J�b�'ґ��Px�Y��	�M����Bi��hb�&m�QaZ^����މɱ["��.�
*Kس�w՛0R8N�t���F�O!l򔃆B�o�;�GMr{���ڭə7�V�3�\���7�V�y�9Gs��^b;�V�Aڤa�hkO@��	��䳘d�Fr�p_�P���<Sؔ����}_���J2�BvF�L|��L��"YP[~#*�e�~9�~��ԩ-��1x�J�,�����n[�QVОj�ٯ��sm���#�'�O�UQq}<��1���ja����2��}"����d�����A1SD7�v��*e7XFH�Y>�o���}a�PZ�L z3���G9>d����L'�X��<E�,0��(�́!Y���`��x&��t"��P���+�bܐR��Xog�〺"��ӳ�Ɗ�x@>��Ň�z%�ǔ+$ڱ���Ğ#�c$�MǙV���j!~�W�r{yu��B�U(8O~h��ic�]H6X�Tm��S�pr�т�����H��0����jKz�S_�O$5%����1�;�HE'#Öȕ�K,Y���i��I'��\0��ǟ��F�OP_�����S�nk���-`�3R7�
l�����28�{w������J�A~m(�h9PחK;�	��_^[��4<]�{M�ҍx@4�A8 Y���P0suJ���dԮL��D��l��t�ft����#������ d��)���@��cCo�� ���;���r�����,7�ԓdR;�)��s�w��+X����[�֓�h^Q����ɸ�5�[�DcUR[�eNj3nLgS'W0r�;�
��b��'�~	y�c�y"&����5a��g��K�v_3�g ��:���0��e��,ۣh��K.Ah��F��%�A�M��� ����WdRAE�?�1	�.)[�'ԺzF�-+�|�iΟy�0�EZ3B-�uew��}� ����~��-�[dpo��8��"Bµ�>'͞�$=��@Qc�A�7�&��:r���?� :X�]y�}{Gĉ]���j�����ɅBNt�Ơ[��p��>z1�
���	�OB*���K����my8���9� 8�jW���8u�6�k+�y�oc��ʒ G&��nЎ�5�X��\2D>K�$��"�	�m8���c��k�D���j��d�p�>����N�2|�,p�@�&���'�O>������j�v�#��
.��ԙ��}��@�.�8_��oߞ7���| �jF�RX��鿇�O�'�0��o�oVI_5�rfW.A�a�����2�-e�~BW9�Q�5�p���~���$�笠8��B"x�6f9�K���i�o��!2�Ӽ�����As���v$�FoT��[my�K�傀we]�K�[Jy$8�8~쉒�g=P���T-��j��m^I�rp_��ʋ��x|'_�r�`b���+��?e�ۢ�'O��q�<����vh4�O�#c5�����YmY�3eM �]�h6B�
�/O5�Ty9�S7 s����������W�o���%��K��)Y"���n�UA��63إ0�w�y@�� <  �ά��m@�u'�{l�%I�=K���~F���+M�Q��=
����� =�a�g73��ڎ�]�pB��f�k*x��F���Z:�p��i�	��Z���D+��;���xD�j��d�G.�4N�y����?�(��FDD�����DkB&���_
[t~q>8���|�Ęp�l��L���� N�7*�W����g�+7BS�xO����+��]�*�A��v���c���.��R��f�����qgwCr���>�J�܍�C��C��_��;r�?�L|��_���h��+��K����fcC2�]2�7���Ly��ʻ]Nb���AA4�!n|-��]	A�&w�:�Q��nF��]�ӵ�K�vA#���^���i5E�	������vl� ��ޜ�>��U�!Hp�gם�.���Ö�AX�	KX��{9D�~k�(�T{����}��c���*4ji�J�;5�=�@O}"�<��8y���7�do�7��}�u��p�d4���%�Ao�H��kOK�u�Q��m:jAtP�
l�F���x��������ϳ�C��_=������˗��?w~�����λ�7      .=   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      w=   �  x��Z�n�8>�O����)��Ǭ7m�m� ?=0h�VXH�@IF���������v8�)Q����[Z#���͌r�-U�Z�����B��2�]�l����J�\o�nW\�Thη\��6�R�2g�f�b�G�J#Pf��x��~|������*7�o�r���o��K�$�:zx[�J-U�����?_=<,�v�݀6�a�`r��o�;�=�{��m�d�ҾMi�� Y��A�4��U<������o�o�l�5�u�e
F�{�]1w 8&]ޖ�ZW,�V�����zV!A�Y��N��n���t>e���x�'�x����\��0�;}оuG�}�l���>��&OO�oC%?��
Q�T�F�T)xY%~в
����'�� 7��\���m��>	��lY+뀆c�R��Hl�o+���w��Ȓ�"�@Q�aR���4F(��ǁ�ȏ��UVl����i����fZ�.�˂e�R�6��g��T���=A$��w�kN>i#_��Yn#�}fp,�L��8��5�g��ΛB(0�6{t�'�I*e�����M���>��L����<:�s�/���l�Q���������;fŁFq����4 �Ua�!��S���dЈ�ܗ�s*H�|xҵ���	'�HxP^�DUC޵��Mv�0@�*���n�,���3�xIQ����[�O?���Z�%�/r�p%���Ď�{Y��	V���!��8���g�3ƾd�%�0@�
a8�Z�B�g��#���$�V$��`Əh1f�����c~�e3�
N�M�����fK`p�$}��I�0)�3|8�gt���������&����ke�	�#�_ǥj��̂�k��pV%#r�rԲ`��a�I�P$g�����[0��t&m�MI�4�����ɑ�d�Mf�/������o?������j��Awd�b�c&l�y��DǶ�i�D�o�����n��]f�RGƞe�2&0��g�,;,�]M����u��}2M�e�U#rZ6f��W:�/���b�XW-��,�W]'[�<�1*e,�zaj�Mxg�^x�0h���:�f&�� J�7��sݓhI������ ��P��a���_�
�h{����� k����Y�A��dێ�&��z�kr�� ޫ��9�]z��x��<�㊂9����p�@K0��6�ѓ̉��y&�;�\�wnoz�)���r�0�J�B�.��_�3�J������[�5�����"ΣA��)6�)�Y�.uf�^G$���i#:�Ȥ��w�K���t��i�'��P��%�������r�!H�׶|�* +���W�Yى���a���J7�ϖ	^�-(^~K�׸q��Գ�e�,�x{|��p��::�"I)�`���#�}�A�J!R��9H��U�Q>G��豩5"��O8�mr�IQ?�b��߁_1�Ps6�U��'?}<Yn�s�����Og��1Jz�A�f�'D�Ef� 2Xs�}�o6�p�O�<d�5�S]�:����N\����JKm�t��2#K$����h���'#/�0���,Z���͂�T
M��B�:1�1U�������?�Ko�F�����iL\��)~������Q��y�!�����.}��	�l�?����m��Gm����f�����HTv
Cdԕ�$0LZ�����]
C�*�; )a�3�U���>�%�p���ϘH:z4r�s���9g; �$xivG���Q�8Ov�;fQ��c?7���a��y:<Ȱ�ч==f��1�;Ǹ��j:�v��-,�eV\D�$naw��-���Y<�\Xo��fe
�m���\���O ��$*�O��&�?.gT�6���-�tiD�%����@k���ω�$7�\����ݧM�3�S��,�|�����O�'�)	�1Q���ƓW��%�q�iI�(Jp���r���k����7j��b�Z���w�      /=   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     