PGDMP     %                    x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   yB           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            zB           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            {B           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            |B           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    761854 %   test_ladm_validations_topology_tables    SCHEMA     5   CREATE SCHEMA test_ladm_validations_topology_tables;
 3   DROP SCHEMA test_ladm_validations_topology_tables;
             postgres    false                       1259    761855    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_ladm_validations_topology_tables.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 B   DROP SEQUENCE test_ladm_validations_topology_tables.t_ili2db_seq;
    %   test_ladm_validations_topology_tables       postgres    false    28                       1259    761891    cc_metodooperacion    TABLE     y  CREATE TABLE test_ladm_validations_topology_tables.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 E   DROP TABLE test_ladm_validations_topology_tables.cc_metodooperacion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            }B           0    0    TABLE cc_metodooperacion    COMMENT       COMMENT ON TABLE test_ladm_validations_topology_tables.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
         %   test_ladm_validations_topology_tables       postgres    false    3083            ~B           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     �  COMMENT ON COLUMN test_ladm_validations_topology_tables.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
         %   test_ladm_validations_topology_tables       postgres    false    3083            B           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
         %   test_ladm_validations_topology_tables       postgres    false    3083            �B           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
         %   test_ladm_validations_topology_tables       postgres    false    3083            �B           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
         %   test_ladm_validations_topology_tables       postgres    false    3083            x           1259    763003    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_ladm_validations_topology_tables.ci_forma_presentacion_codigo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763210    col_areatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_areatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_areatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761898    col_areavalor    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_areavalor (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 @   DROP TABLE test_ladm_validations_topology_tables.col_areavalor;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     _  COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            �B           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
         %   test_ladm_validations_topology_tables       postgres    false    3084            '           1259    762167    col_baunitcomointeresado    TABLE     Q  CREATE TABLE test_ladm_validations_topology_tables.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 K   DROP TABLE test_ladm_validations_topology_tables.col_baunitcomointeresado;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762076    col_baunitfuente    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 C   DROP TABLE test_ladm_validations_topology_tables.col_baunitfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762091    col_cclfuente    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_cclfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 @   DROP TABLE test_ladm_validations_topology_tables.col_cclfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            #           1259    762131    col_clfuente    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.col_clfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_clfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763192    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.col_contenidoniveltipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            z           1259    763021    col_dimensiontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.col_dimensiontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763138    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_ladm_validations_topology_tables.col_estadodisponibilidadtipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763435    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.col_estadoredserviciostipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763219    col_estructuratipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_validations_topology_tables.col_estructuratipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763246    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_ladm_validations_topology_tables.col_fuenteadministrativatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            }           1259    763048    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.col_fuenteespacialtipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763093    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 J   DROP TABLE test_ladm_validations_topology_tables.col_grupointeresadotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763129    col_interpolaciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_validations_topology_tables.col_interpolaciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            o           1259    762922    col_iso19125_tipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.col_iso19125_tipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            !           1259    762110 
   col_masccl    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_masccl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 =   DROP TABLE test_ladm_validations_topology_tables.col_masccl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            %           1259    762148 	   col_mascl    TABLE     e  CREATE TABLE test_ladm_validations_topology_tables.col_mascl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 <   DROP TABLE test_ladm_validations_topology_tables.col_mascl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                        1259    762099    col_menosccl    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_menosccl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_menosccl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            $           1259    762138    col_menoscl    TABLE     o  CREATE TABLE test_ladm_validations_topology_tables.col_menoscl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 >   DROP TABLE test_ladm_validations_topology_tables.col_menoscl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763453    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 K   DROP TABLE test_ladm_validations_topology_tables.col_metodoproducciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            *           1259    762194    col_miembros    TABLE     I  CREATE TABLE test_ladm_validations_topology_tables.col_miembros (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_miembros;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            "           1259    762121    col_puntoccl    TABLE     Y  CREATE TABLE test_ladm_validations_topology_tables.col_puntoccl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    ccl bigint NOT NULL
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_puntoccl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            &           1259    762158    col_puntocl    TABLE     ?  CREATE TABLE test_ladm_validations_topology_tables.col_puntocl (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 >   DROP TABLE test_ladm_validations_topology_tables.col_puntocl;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762055    col_puntofuente    TABLE     h  CREATE TABLE test_ladm_validations_topology_tables.col_puntofuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 B   DROP TABLE test_ladm_validations_topology_tables.col_puntofuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            j           1259    762877    col_puntotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_validations_topology_tables.col_puntotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763102    col_redserviciostipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_ladm_validations_topology_tables.col_redserviciostipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763264    col_registrotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_registrotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_validations_topology_tables.col_registrotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762040    col_relacionfuente    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 E   DROP TABLE test_ladm_validations_topology_tables.col_relacionfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762084    col_relacionfuenteuespacial    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 N   DROP TABLE test_ladm_validations_topology_tables.col_relacionfuenteuespacial;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763156    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.col_relacionsuperficietipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            (           1259    762176    col_responsablefuente    TABLE     ]  CREATE TABLE test_ladm_validations_topology_tables.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 H   DROP TABLE test_ladm_validations_topology_tables.col_responsablefuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762020    col_rrrfuente    TABLE     :  CREATE TABLE test_ladm_validations_topology_tables.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 @   DROP TABLE test_ladm_validations_topology_tables.col_rrrfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            )           1259    762185    col_topografofuente    TABLE     S  CREATE TABLE test_ladm_validations_topology_tables.col_topografofuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 F   DROP TABLE test_ladm_validations_topology_tables.col_topografofuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761941    col_transformacion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_transformacion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 E   DROP TABLE test_ladm_validations_topology_tables.col_transformacion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
         %   test_ladm_validations_topology_tables       postgres    false    3087            �B           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
         %   test_ladm_validations_topology_tables       postgres    false    3087            �B           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
         %   test_ladm_validations_topology_tables       postgres    false    3087            �B           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
         %   test_ladm_validations_topology_tables       postgres    false    3087            �B           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
         %   test_ladm_validations_topology_tables       postgres    false    3087                       1259    762029    col_uebaunit    TABLE     t  CREATE TABLE test_ladm_validations_topology_tables.col_uebaunit (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    baunit bigint NOT NULL
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_uebaunit;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762065    col_uefuente    TABLE     }  CREATE TABLE test_ladm_validations_topology_tables.col_uefuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    fuente_espacial bigint NOT NULL
);
 ?   DROP TABLE test_ladm_validations_topology_tables.col_uefuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762010    col_ueuegrupo    TABLE     e  CREATE TABLE test_ladm_validations_topology_tables.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_construccion bigint,
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint
);
 @   DROP TABLE test_ladm_validations_topology_tables.col_ueuegrupo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            p           1259    762931 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 U   DROP TABLE test_ladm_validations_topology_tables.col_unidadadministrativabasicatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            u           1259    762976    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.col_unidadedificaciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    762047    col_unidadfuente    TABLE       CREATE TABLE test_ladm_validations_topology_tables.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 C   DROP TABLE test_ladm_validations_topology_tables.col_unidadfuente;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763363    col_volumentipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.col_volumentipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_validations_topology_tables.col_volumentipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761999    col_volumenvalor    TABLE     *  CREATE TABLE test_ladm_validations_topology_tables.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 C   DROP TABLE test_ladm_validations_topology_tables.col_volumenvalor;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     }   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3093            �B           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3093                       1259    761987 
   extarchivo    TABLE     2  CREATE TABLE test_ladm_validations_topology_tables.extarchivo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_validations_topology_tables.extarchivo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0    COLUMN extarchivo.datos    COMMENT     p   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.datos IS 'Datos que contiene el documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0    COLUMN extarchivo.extraccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
         %   test_ladm_validations_topology_tables       postgres    false    3092            �B           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
         %   test_ladm_validations_topology_tables       postgres    false    3092                       1259    761912    extdireccion    TABLE     ,  CREATE TABLE test_ladm_validations_topology_tables.extdireccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 ?   DROP TABLE test_ladm_validations_topology_tables.extdireccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE extdireccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �B           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3085            �           1259    763408     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 S   DROP TABLE test_ladm_validations_topology_tables.extdireccion_clase_via_principal;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763147    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.extdireccion_sector_ciudad;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            l           1259    762895    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.extdireccion_sector_predio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763318    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 N   DROP TABLE test_ladm_validations_topology_tables.extdireccion_tipo_direccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761969    extinteresado    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.extinteresado (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 @   DROP TABLE test_ladm_validations_topology_tables.extinteresado;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE extinteresado    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3090            �B           0    0    COLUMN extinteresado.nombre    COMMENT     s   COMMENT ON COLUMN test_ladm_validations_topology_tables.extinteresado.nombre IS 'Campo de nombre del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3090            �B           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3090            �B           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
         %   test_ladm_validations_topology_tables       postgres    false    3090            �B           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3090            �B           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3090                       1259    761981    extredserviciosfisica    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 H   DROP TABLE test_ladm_validations_topology_tables.extredserviciosfisica;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
         %   test_ladm_validations_topology_tables       postgres    false    3091            �B           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
         %   test_ladm_validations_topology_tables       postgres    false    3091                       1259    761954    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 M   DROP TABLE test_ladm_validations_topology_tables.extunidadedificacionfisica;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0     TABLE extunidadedificacionfisica    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
         %   test_ladm_validations_topology_tables       postgres    false    3088                       1259    761933    fraccion    TABLE       CREATE TABLE test_ladm_validations_topology_tables.fraccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 ;   DROP TABLE test_ladm_validations_topology_tables.fraccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3086            �B           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
         %   test_ladm_validations_topology_tables       postgres    false    3086            �B           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
         %   test_ladm_validations_topology_tables       postgres    false    3086            +           1259    762203 	   gc_barrio    TABLE     q  CREATE TABLE test_ladm_validations_topology_tables.gc_barrio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 <   DROP TABLE test_ladm_validations_topology_tables.gc_barrio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3115            �B           0    0    COLUMN gc_barrio.codigo    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_barrio.codigo IS 'Código de identificación del barrio.';
         %   test_ladm_validations_topology_tables       postgres    false    3115            �B           0    0    COLUMN gc_barrio.nombre    COMMENT     b   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_barrio.nombre IS 'Nombre del barrio.';
         %   test_ladm_validations_topology_tables       postgres    false    3115            �B           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
         %   test_ladm_validations_topology_tables       postgres    false    3115            �B           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
         %   test_ladm_validations_topology_tables       postgres    false    3115            ,           1259    762213 !   gc_calificacionunidadconstruccion    TABLE       CREATE TABLE test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 T   DROP TABLE test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3116            �B           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3116            �B           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3116            �B           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3116            �B           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
         %   test_ladm_validations_topology_tables       postgres    false    3116            -           1259    762223    gc_comisionesconstruccion    TABLE     H  CREATE TABLE test_ladm_validations_topology_tables.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 L   DROP TABLE test_ladm_validations_topology_tables.gc_comisionesconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3117            �B           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3117            �B           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3117            .           1259    762233    gc_comisionesterreno    TABLE     B  CREATE TABLE test_ladm_validations_topology_tables.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 G   DROP TABLE test_ladm_validations_topology_tables.gc_comisionesterreno;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3118            �B           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3118            �B           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3118            /           1259    762243    gc_comisionesunidadconstruccion    TABLE     N  CREATE TABLE test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 R   DROP TABLE test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3119            �B           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3119            �B           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3119            �           1259    763300    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.gc_condicionprediotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            0           1259    762253    gc_construccion    TABLE     s  CREATE TABLE test_ladm_validations_topology_tables.gc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_validations_topology_tables.gc_construccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0    COLUMN gc_construccion.etiqueta    COMMENT     u   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.area_construida IS 'Área total construida.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            �B           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3120            >           1259    762391    gc_copropiedad    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 A   DROP TABLE test_ladm_validations_topology_tables.gc_copropiedad;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
         %   test_ladm_validations_topology_tables       postgres    false    3134            1           1259    762265    gc_datosphcondominio    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 G   DROP TABLE test_ladm_validations_topology_tables.gc_datosphcondominio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            �B           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3121            2           1259    762272    gc_datostorreph    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_validations_topology_tables.gc_datostorreph;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
         %   test_ladm_validations_topology_tables       postgres    false    3122            �B           0    0    COLUMN gc_datostorreph.torre    COMMENT     |   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3122            �B           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     |   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
         %   test_ladm_validations_topology_tables       postgres    false    3122            �B           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
         %   test_ladm_validations_topology_tables       postgres    false    3122            �B           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     {   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
         %   test_ladm_validations_topology_tables       postgres    false    3122            �B           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
         %   test_ladm_validations_topology_tables       postgres    false    3122            3           1259    762279    gc_direccion    TABLE     `  CREATE TABLE test_ladm_validations_topology_tables.gc_direccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 ?   DROP TABLE test_ladm_validations_topology_tables.gc_direccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    COLUMN gc_direccion.valor    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_direccion.valor IS 'Registros de la direcciones del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3123            �B           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
         %   test_ladm_validations_topology_tables       postgres    false    3123            �B           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3123            �B           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3123            4           1259    762290    gc_estadopredio    TABLE     b  CREATE TABLE test_ladm_validations_topology_tables.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 B   DROP TABLE test_ladm_validations_topology_tables.gc_estadopredio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3124            �B           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3124            �B           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3124            �B           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3124            �B           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
         %   test_ladm_validations_topology_tables       postgres    false    3124            5           1259    762297 
   gc_manzana    TABLE     |  CREATE TABLE test_ladm_validations_topology_tables.gc_manzana (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 =   DROP TABLE test_ladm_validations_topology_tables.gc_manzana;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3125            �B           0    0    COLUMN gc_manzana.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
         %   test_ladm_validations_topology_tables       postgres    false    3125            �B           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
         %   test_ladm_validations_topology_tables       postgres    false    3125            �B           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
         %   test_ladm_validations_topology_tables       postgres    false    3125            �B           0    0    COLUMN gc_manzana.geometria    COMMENT     z   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
         %   test_ladm_validations_topology_tables       postgres    false    3125            6           1259    762307    gc_perimetro    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_perimetro (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 ?   DROP TABLE test_ladm_validations_topology_tables.gc_perimetro;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            �B           0    0    COLUMN gc_perimetro.geometria    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
         %   test_ladm_validations_topology_tables       postgres    false    3126            =           1259    762380    gc_prediocatastro    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_validations_topology_tables.gc_prediocatastro;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �B           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT        COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT     )  COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     ]  COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     	  COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            �B           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     \  COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
         %   test_ladm_validations_topology_tables       postgres    false    3133             C           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            C           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT        COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
         %   test_ladm_validations_topology_tables       postgres    false    3133            7           1259    762317    gc_propietario    TABLE     Z  CREATE TABLE test_ladm_validations_topology_tables.gc_propietario (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 A   DROP TABLE test_ladm_validations_topology_tables.gc_propietario;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            C           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            C           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            	C           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            
C           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3127            8           1259    762327    gc_sectorrural    TABLE     *  CREATE TABLE test_ladm_validations_topology_tables.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 A   DROP TABLE test_ladm_validations_topology_tables.gc_sectorrural;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            C           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3128            C           0    0    COLUMN gc_sectorrural.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3128            C           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3128            9           1259    762337    gc_sectorurbano    TABLE     +  CREATE TABLE test_ladm_validations_topology_tables.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 B   DROP TABLE test_ladm_validations_topology_tables.gc_sectorurbano;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            C           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3129            C           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3129            C           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3129            �           1259    763075    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 Q   DROP TABLE test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            :           1259    762347 
   gc_terreno    TABLE     x  CREATE TABLE test_ladm_validations_topology_tables.gc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_validations_topology_tables.gc_terreno;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            C           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            C           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            C           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            C           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            C           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            C           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3130            ;           1259    762358    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 H   DROP TABLE test_ladm_validations_topology_tables.gc_unidadconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            C           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            C           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131             C           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            !C           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            "C           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            #C           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            $C           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            %C           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            &C           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            'C           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3131            r           1259    762949    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.gc_unidadconstrucciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            <           1259    762370 	   gc_vereda    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.gc_vereda (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 <   DROP TABLE test_ladm_validations_topology_tables.gc_vereda;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            (C           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
         %   test_ladm_validations_topology_tables       postgres    false    3132            )C           0    0    COLUMN gc_vereda.codigo    COMMENT     ~   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
         %   test_ladm_validations_topology_tables       postgres    false    3132            *C           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
         %   test_ladm_validations_topology_tables       postgres    false    3132            +C           0    0    COLUMN gc_vereda.nombre    COMMENT     d   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_vereda.nombre IS 'Nombre de la vereda.';
         %   test_ladm_validations_topology_tables       postgres    false    3132            ,C           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
         %   test_ladm_validations_topology_tables       postgres    false    3132            -C           0    0    COLUMN gc_vereda.geometria    COMMENT     q   COMMENT ON COLUMN test_ladm_validations_topology_tables.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
         %   test_ladm_validations_topology_tables       postgres    false    3132                       1259    761868    gm_multisurface2d    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 D   DROP TABLE test_ladm_validations_topology_tables.gm_multisurface2d;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            
           1259    761885    gm_multisurface3d    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 D   DROP TABLE test_ladm_validations_topology_tables.gm_multisurface3d;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761857    gm_surface2dlistvalue    TABLE     $  CREATE TABLE test_ladm_validations_topology_tables.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 H   DROP TABLE test_ladm_validations_topology_tables.gm_surface2dlistvalue;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            	           1259    761874    gm_surface3dlistvalue    TABLE     %  CREATE TABLE test_ladm_validations_topology_tables.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 H   DROP TABLE test_ladm_validations_topology_tables.gm_surface3dlistvalue;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    761960    imagen    TABLE     I  CREATE TABLE test_ladm_validations_topology_tables.imagen (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 9   DROP TABLE test_ladm_validations_topology_tables.imagen;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            .C           0    0    TABLE imagen    COMMENT     m   COMMENT ON TABLE test_ladm_validations_topology_tables.imagen IS 'Referencia a una imagen mediante su url.';
         %   test_ladm_validations_topology_tables       postgres    false    3089            /C           0    0    COLUMN imagen.uri    COMMENT     [   COMMENT ON COLUMN test_ladm_validations_topology_tables.imagen.uri IS 'url de la imagen.';
         %   test_ladm_validations_topology_tables       postgres    false    3089            0C           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3089            1C           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     z   COMMENT ON COLUMN test_ladm_validations_topology_tables.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3089            2C           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     o   COMMENT ON COLUMN test_ladm_validations_topology_tables.imagen.extinteresado_firma IS 'Firma del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3089            w           1259    762994    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.ini_emparejamientotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            F           1259    762465    ini_predioinsumos    TABLE     P  CREATE TABLE test_ladm_validations_topology_tables.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 D   DROP TABLE test_ladm_validations_topology_tables.ini_predioinsumos;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            3C           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3142            4C           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
         %   test_ladm_validations_topology_tables       postgres    false    3142            5C           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     }   COMMENT ON COLUMN test_ladm_validations_topology_tables.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
         %   test_ladm_validations_topology_tables       postgres    false    3142            �           1259    763282    lc_acuerdotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_validations_topology_tables.lc_acuerdotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            G           1259    762477    lc_agrupacioninteresados    TABLE       CREATE TABLE test_ladm_validations_topology_tables.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 K   DROP TABLE test_ladm_validations_topology_tables.lc_agrupacioninteresados;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            6C           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            7C           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            8C           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     u   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            9C           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            :C           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            ;C           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            <C           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     |   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3143            �           1259    763291    lc_anexotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_validations_topology_tables.lc_anexotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            [           1259    762721    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 N   DROP TABLE test_ladm_validations_topology_tables.lc_calificacionconvencional;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            =C           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
         %   test_ladm_validations_topology_tables       postgres    false    3163            >C           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
         %   test_ladm_validations_topology_tables       postgres    false    3163            ?C           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3163            \           1259    762730    lc_calificacionnoconvencional    TABLE     8  CREATE TABLE test_ladm_validations_topology_tables.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 P   DROP TABLE test_ladm_validations_topology_tables.lc_calificacionnoconvencional;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            @C           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3164            AC           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
         %   test_ladm_validations_topology_tables       postgres    false    3164            �           1259    763381    lc_calificartipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_validations_topology_tables.lc_calificartipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            v           1259    762985    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_validations_topology_tables.lc_categoriasuelotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763417    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 K   DROP TABLE test_ladm_validations_topology_tables.lc_clasecalificaciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28                       1259    763066    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.lc_clasesuelotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763426    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.lc_condicionprediotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            H           1259    762488    lc_construccion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_construccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_validations_topology_tables.lc_construccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            BC           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            CC           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            DC           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            EC           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            FC           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            GC           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            HC           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            IC           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            JC           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            KC           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            LC           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     x   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.area_construccion IS 'Área total construida.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            MC           0    0    COLUMN lc_construccion.altura    COMMENT     w   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.altura IS 'Altura total de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            NC           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            OC           0    0     COLUMN lc_construccion.dimension    COMMENT     o   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.dimension IS 'Dimensión del objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            PC           0    0    COLUMN lc_construccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            QC           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            RC           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            SC           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            TC           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            UC           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            VC           0    0    COLUMN lc_construccion.local_id    COMMENT     s   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_construccion.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3144            �           1259    763183    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.lc_construccionplantatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763399    lc_construcciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_validations_topology_tables.lc_construcciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            I           1259    762503    lc_contactovisita    TABLE     U  CREATE TABLE test_ladm_validations_topology_tables.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_validations_topology_tables.lc_contactovisita;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            WC           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            XC           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            YC           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            ZC           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            [C           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            \C           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            ]C           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            ^C           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            _C           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            `C           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            aC           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
         %   test_ladm_validations_topology_tables       postgres    false    3145            ]           1259    762739 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 \   DROP TABLE test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            bC           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
         %   test_ladm_validations_topology_tables       postgres    false    3165            cC           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            dC           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            eC           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            fC           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     t  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            gC           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            hC           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            iC           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            jC           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            kC           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            lC           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            mC           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            nC           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            oC           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            pC           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            qC           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            rC           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3165            J           1259    762516    lc_datosphcondominio    TABLE     2  CREATE TABLE test_ladm_validations_topology_tables.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 G   DROP TABLE test_ladm_validations_topology_tables.lc_datosphcondominio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            sC           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            tC           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            uC           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            vC           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            wC           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            xC           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            yC           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            zC           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            {C           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
         %   test_ladm_validations_topology_tables       postgres    false    3146            K           1259    762524 
   lc_derecho    TABLE     0  CREATE TABLE test_ladm_validations_topology_tables.lc_derecho (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_validations_topology_tables.lc_derecho;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            |C           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            }C           0    0    COLUMN lc_derecho.tipo    COMMENT     e   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.tipo IS 'Derecho que se ejerce.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            ~C           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
         %   test_ladm_validations_topology_tables       postgres    false    3147            C           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            �C           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            �C           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            �C           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            �C           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            �C           0    0    COLUMN lc_derecho.local_id    COMMENT     n   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_derecho.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3147            |           1259    763039    lc_derechotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_validations_topology_tables.lc_derechotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            s           1259    762958    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 N   DROP TABLE test_ladm_validations_topology_tables.lc_destinacioneconomicatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763354    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.lc_dominioconstrucciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763471    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.lc_estadoconservaciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            L           1259    762538    lc_estructuranovedadfmi    TABLE     F  CREATE TABLE test_ladm_validations_topology_tables.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 J   DROP TABLE test_ladm_validations_topology_tables.lc_estructuranovedadfmi;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3148            M           1259    762545 !   lc_estructuranovedadnumeropredial    TABLE     ^  CREATE TABLE test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 T   DROP TABLE test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3149            k           1259    762886 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 a   DROP TABLE test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            y           1259    763012    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.lc_fotoidentificaciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            N           1259    762553    lc_fuenteadministrativa    TABLE     P  CREATE TABLE test_ladm_validations_topology_tables.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 J   DROP TABLE test_ladm_validations_topology_tables.lc_fuenteadministrativa;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_ladm_validations_topology_tables.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �C           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     {   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3150            �           1259    763327    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 N   DROP TABLE test_ladm_validations_topology_tables.lc_fuenteadministrativatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            O           1259    762566    lc_fuenteespacial    TABLE     .  CREATE TABLE test_ladm_validations_topology_tables.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 D   DROP TABLE test_ladm_validations_topology_tables.lc_fuenteespacial;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_fuenteespacial    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     n   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            �C           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     u   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_fuenteespacial.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3151            P           1259    762579    lc_grupocalificacion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 G   DROP TABLE test_ladm_validations_topology_tables.lc_grupocalificacion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
         %   test_ladm_validations_topology_tables       postgres    false    3152            �C           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3152            �C           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
         %   test_ladm_validations_topology_tables       postgres    false    3152            �C           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     {   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
         %   test_ladm_validations_topology_tables       postgres    false    3152            {           1259    763030    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_validations_topology_tables.lc_grupoetnicotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            Q           1259    762589    lc_interesado    TABLE     a  CREATE TABLE test_ladm_validations_topology_tables.lc_interesado (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 @   DROP TABLE test_ladm_validations_topology_tables.lc_interesado;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0    COLUMN lc_interesado.tipo    COMMENT     r   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.tipo IS 'Tipo de persona del que se trata';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT        COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT        COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0    COLUMN lc_interesado.sexo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     {   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0    COLUMN lc_interesado.nombre    COMMENT     j   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.nombre IS 'Nombre del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            �C           0    0    COLUMN lc_interesado.local_id    COMMENT     q   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesado.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3153            R           1259    762603    lc_interesadocontacto    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 H   DROP TABLE test_ladm_validations_topology_tables.lc_interesadocontacto;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_interesadocontacto    COMMENT     }   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �C           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3154            �           1259    763228    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 M   DROP TABLE test_ladm_validations_topology_tables.lc_interesadodocumentotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763111    lc_interesadotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.lc_interesadotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            S           1259    762614 
   lc_lindero    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_lindero (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_validations_topology_tables.lc_lindero;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0    COLUMN lc_lindero.longitud    COMMENT     r   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.longitud IS 'Longitud en metros del lindero.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            �C           0    0    COLUMN lc_lindero.local_id    COMMENT     n   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_lindero.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3155            T           1259    762625    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 H   DROP TABLE test_ladm_validations_topology_tables.lc_objetoconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_objetoconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3156            �C           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
         %   test_ladm_validations_topology_tables       postgres    false    3156            �C           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
         %   test_ladm_validations_topology_tables       postgres    false    3156            �           1259    763462    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.lc_objetoconstrucciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            U           1259    762634    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 P   DROP TABLE test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3157            �C           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
         %   test_ladm_validations_topology_tables       postgres    false    3157            �C           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
         %   test_ladm_validations_topology_tables       postgres    false    3157            �C           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
         %   test_ladm_validations_topology_tables       postgres    false    3157            �C           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
         %   test_ladm_validations_topology_tables       postgres    false    3157            �C           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
         %   test_ladm_validations_topology_tables       postgres    false    3157            q           1259    762940    lc_ofertatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_validations_topology_tables.lc_ofertatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            V           1259    762643 	   lc_predio    TABLE     X  CREATE TABLE test_ladm_validations_topology_tables.lc_predio (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 <   DROP TABLE test_ladm_validations_topology_tables.lc_predio;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_predio    COMMENT     5  COMMENT ON TABLE test_ladm_validations_topology_tables.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.codigo_orip    COMMENT     f   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.codigo_orip IS 'Circulo registral';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.numero_predial    COMMENT     8  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     A  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.nupre    COMMENT     U  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            �C           0    0    COLUMN lc_predio.local_id    COMMENT     m   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_predio.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3158            `           1259    762785    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 H   DROP TABLE test_ladm_validations_topology_tables.lc_predio_copropiedad;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            a           1259    762793    lc_predio_ini_predioinsumos    TABLE     *  CREATE TABLE test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 N   DROP TABLE test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763237    lc_prediotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 @   DROP TABLE test_ladm_validations_topology_tables.lc_prediotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            ~           1259    763057 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 Y   DROP TABLE test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            W           1259    762655    lc_puntocontrol    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_validations_topology_tables.lc_puntocontrol;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �C           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     s   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntocontrol.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3159            �           1259    763390    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 F   DROP TABLE test_ladm_validations_topology_tables.lc_puntocontroltipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            ^           1259    762756    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 H   DROP TABLE test_ladm_validations_topology_tables.lc_puntolevantamiento;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �C           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolevantamiento.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3166            �           1259    763273    lc_puntolevtipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_validations_topology_tables.lc_puntolevtipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            X           1259    762674    lc_puntolindero    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 B   DROP TABLE test_ladm_validations_topology_tables.lc_puntolindero;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �C           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �C           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
         %   test_ladm_validations_topology_tables       postgres    false    3160             D           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            D           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            D           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            D           0    0    COLUMN lc_puntolindero.local_id    COMMENT     s   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_puntolindero.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3160            �           1259    763174    lc_puntotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_ladm_validations_topology_tables.lc_puntotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763084    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 H   DROP TABLE test_ladm_validations_topology_tables.lc_relacionprediotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            Y           1259    762694    lc_restriccion    TABLE     r  CREATE TABLE test_ladm_validations_topology_tables.lc_restriccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 A   DROP TABLE test_ladm_validations_topology_tables.lc_restriccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            D           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            D           0    0    COLUMN lc_restriccion.tipo    COMMENT     ~   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            D           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            D           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            D           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            	D           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            
D           0    0    COLUMN lc_restriccion.local_id    COMMENT     r   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_restriccion.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3161            �           1259    763255    lc_restricciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 E   DROP TABLE test_ladm_validations_topology_tables.lc_restricciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763120    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.lc_resultadovisitatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            b           1259    762801    lc_servidumbretransito    TABLE       CREATE TABLE test_ladm_validations_topology_tables.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 I   DROP TABLE test_ladm_validations_topology_tables.lc_servidumbretransito;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            D           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     v   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            D           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     z   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_servidumbretransito.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3170            �           1259    763165    lc_sexotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 >   DROP TABLE test_ladm_validations_topology_tables.lc_sexotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            Z           1259    762708 
   lc_terreno    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_terreno (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 =   DROP TABLE test_ladm_validations_topology_tables.lc_terreno;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            D           0    0    TABLE lc_terreno    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     n  COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0    COLUMN lc_terreno.dimension    COMMENT     j   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.dimension IS 'Dimensión del objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0    COLUMN lc_terreno.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            D           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3162             D           0    0    COLUMN lc_terreno.local_id    COMMENT     n   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_terreno.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3162            _           1259    762776    lc_tipologiaconstruccion    TABLE     7  CREATE TABLE test_ladm_validations_topology_tables.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 K   DROP TABLE test_ladm_validations_topology_tables.lc_tipologiaconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            !D           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3167            "D           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
         %   test_ladm_validations_topology_tables       postgres    false    3167            �           1259    763345    lc_tipologiatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_ladm_validations_topology_tables.lc_tipologiatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            c           1259    762814    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_ladm_validations_topology_tables.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 H   DROP TABLE test_ladm_validations_topology_tables.lc_unidadconstruccion;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            #D           0    0    TABLE lc_unidadconstruccion    COMMENT       COMMENT ON TABLE test_ladm_validations_topology_tables.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            $D           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            %D           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            &D           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            'D           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            (D           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            )D           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            *D           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            +D           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            ,D           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            -D           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            .D           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            /D           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            0D           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            1D           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            2D           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            3D           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            4D           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            5D           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     u   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            6D           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            7D           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            8D           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            9D           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            :D           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            ;D           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            <D           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     y   COMMENT ON COLUMN test_ladm_validations_topology_tables.lc_unidadconstruccion.local_id IS 'Identificador único local.';
         %   test_ladm_validations_topology_tables       postgres    false    3171            �           1259    763201    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 L   DROP TABLE test_ladm_validations_topology_tables.lc_unidadconstrucciontipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763309    lc_usouconstipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 B   DROP TABLE test_ladm_validations_topology_tables.lc_usouconstipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            t           1259    762967 
   lc_viatipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.lc_viatipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_ladm_validations_topology_tables.lc_viatipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763336    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.snr_calidadderechotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            �           1259    763372    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 N   DROP TABLE test_ladm_validations_topology_tables.snr_clasepredioregistrotipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            ?           1259    762399    snr_derecho    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_derecho (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 >   DROP TABLE test_ladm_validations_topology_tables.snr_derecho;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            =D           0    0    TABLE snr_derecho    COMMENT     o   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3135            >D           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
         %   test_ladm_validations_topology_tables       postgres    false    3135            ?D           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
         %   test_ladm_validations_topology_tables       postgres    false    3135            �           1259    763444    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 K   DROP TABLE test_ladm_validations_topology_tables.snr_documentotitulartipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            @           1259    762408    snr_estructuramatriculamatriz    TABLE     g  CREATE TABLE test_ladm_validations_topology_tables.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 P   DROP TABLE test_ladm_validations_topology_tables.snr_estructuramatriculamatriz;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            @D           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
         %   test_ladm_validations_topology_tables       postgres    false    3136            AD           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
         %   test_ladm_validations_topology_tables       postgres    false    3136            BD           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
         %   test_ladm_validations_topology_tables       postgres    false    3136            A           1259    762415    snr_fuentecabidalinderos    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 K   DROP TABLE test_ladm_validations_topology_tables.snr_fuentecabidalinderos;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            CD           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
         %   test_ladm_validations_topology_tables       postgres    false    3137            DD           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3137            ED           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
         %   test_ladm_validations_topology_tables       postgres    false    3137            FD           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
         %   test_ladm_validations_topology_tables       postgres    false    3137            GD           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3137            B           1259    762425    snr_fuentederecho    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 D   DROP TABLE test_ladm_validations_topology_tables.snr_fuentederecho;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            HD           0    0    TABLE snr_fuentederecho    COMMENT     {   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
         %   test_ladm_validations_topology_tables       postgres    false    3138            ID           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
         %   test_ladm_validations_topology_tables       postgres    false    3138            JD           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
         %   test_ladm_validations_topology_tables       postgres    false    3138            KD           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
         %   test_ladm_validations_topology_tables       postgres    false    3138            LD           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
         %   test_ladm_validations_topology_tables       postgres    false    3138            m           1259    762904    snr_fuentetipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_ladm_validations_topology_tables.snr_fuentetipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            n           1259    762913    snr_personatitulartipo    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 I   DROP TABLE test_ladm_validations_topology_tables.snr_personatitulartipo;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            D           1259    762446    snr_predioregistro    TABLE     W  CREATE TABLE test_ladm_validations_topology_tables.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
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
 E   DROP TABLE test_ladm_validations_topology_tables.snr_predioregistro;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            MD           0    0    TABLE snr_predioregistro    COMMENT     x   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            ND           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            OD           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            PD           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     `  COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            QD           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     d  COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            RD           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            SD           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            TD           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
         %   test_ladm_validations_topology_tables       postgres    false    3140            UD           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT        COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
         %   test_ladm_validations_topology_tables       postgres    false    3140            C           1259    762435    snr_titular    TABLE     �  CREATE TABLE test_ladm_validations_topology_tables.snr_titular (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 >   DROP TABLE test_ladm_validations_topology_tables.snr_titular;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            VD           0    0    TABLE snr_titular    COMMENT     |   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            WD           0    0    COLUMN snr_titular.tipo_persona    COMMENT     g   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.tipo_persona IS 'Tipo de persona';
         %   test_ladm_validations_topology_tables       postgres    false    3139            XD           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     }   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            YD           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            ZD           0    0    COLUMN snr_titular.nombres    COMMENT     q   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.nombres IS 'Nombres de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            [D           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            \D           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
         %   test_ladm_validations_topology_tables       postgres    false    3139            ]D           0    0    COLUMN snr_titular.razon_social    COMMENT     �   COMMENT ON COLUMN test_ladm_validations_topology_tables.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
         %   test_ladm_validations_topology_tables       postgres    false    3139            E           1259    762457    snr_titular_derecho    TABLE     R  CREATE TABLE test_ladm_validations_topology_tables.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_ladm_validations_topology_tables.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 F   DROP TABLE test_ladm_validations_topology_tables.snr_titular_derecho;
    %   test_ladm_validations_topology_tables         postgres    false    3078    28            ^D           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_ladm_validations_topology_tables.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
         %   test_ladm_validations_topology_tables       postgres    false    3141            �           1259    763488    t_ili2db_attrname    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_attrname;
    %   test_ladm_validations_topology_tables         postgres    false    28            d           1259    762833    t_ili2db_basket    TABLE       CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 B   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_basket;
    %   test_ladm_validations_topology_tables         postgres    false    28            �           1259    763480    t_ili2db_classname    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 E   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_classname;
    %   test_ladm_validations_topology_tables         postgres    false    28            �           1259    763496    t_ili2db_column_prop    TABLE     '  CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 G   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_column_prop;
    %   test_ladm_validations_topology_tables         postgres    false    28            e           1259    762842    t_ili2db_dataset    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 C   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_dataset;
    %   test_ladm_validations_topology_tables         postgres    false    28            f           1259    762847    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 G   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_inheritance;
    %   test_ladm_validations_topology_tables         postgres    false    28            �           1259    763508    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 F   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_meta_attrs;
    %   test_ladm_validations_topology_tables         postgres    false    28            i           1259    762869    t_ili2db_model    TABLE       CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 A   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_model;
    %   test_ladm_validations_topology_tables         postgres    false    28            g           1259    762855    t_ili2db_settings    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 D   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_settings;
    %   test_ladm_validations_topology_tables         postgres    false    28            �           1259    763502    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 F   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_table_prop;
    %   test_ladm_validations_topology_tables         postgres    false    28            h           1259    762863    t_ili2db_trafo    TABLE     �   CREATE TABLE test_ladm_validations_topology_tables.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 A   DROP TABLE test_ladm_validations_topology_tables.t_ili2db_trafo;
    %   test_ladm_validations_topology_tables         postgres    false    28            �A          0    761891    cc_metodooperacion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3083   ��
      =B          0    763003    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3192   ��
      TB          0    763210    col_areatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3215   ��
      �A          0    761898    col_areavalor 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3084   ��
      �A          0    762167    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3111   
�
      �A          0    762076    col_baunitfuente 
   TABLE DATA               s   COPY test_ladm_validations_topology_tables.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3101   '�
      �A          0    762091    col_cclfuente 
   TABLE DATA               m   COPY test_ladm_validations_topology_tables.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3103   D�
      �A          0    762131    col_clfuente 
   TABLE DATA               g   COPY test_ladm_validations_topology_tables.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3107   a�
      RB          0    763192    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3213   ~�
      ?B          0    763021    col_dimensiontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3194   ��
      LB          0    763138    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3207   ��
      mB          0    763435    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3240   ��
      UB          0    763219    col_estructuratipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3216   p�
      XB          0    763246    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3219   �
      BB          0    763048    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3197   ��
      GB          0    763093    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3202   ��
      KB          0    763129    col_interpolaciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3206   ��
      4B          0    762922    col_iso19125_tipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3183   q�
      �A          0    762110 
   col_masccl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3105   �
      �A          0    762148 	   col_mascl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_mascl (t_id, t_ili_tid, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3109   ��
      �A          0    762099    col_menosccl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3104   ��
      �A          0    762138    col_menoscl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_menoscl (t_id, t_ili_tid, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3108   �
      oB          0    763453    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3242   "�
      �A          0    762194    col_miembros 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3114   U�
      �A          0    762121    col_puntoccl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_puntoccl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero, ccl) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3106   r�
      �A          0    762158    col_puntocl 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_puntocl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3110   �
      �A          0    762055    col_puntofuente 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3099   %�
      /B          0    762877    col_puntotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3178   B�
      HB          0    763102    col_redserviciostipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3203   ��
      ZB          0    763264    col_registrotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3221   d�
      �A          0    762040    col_relacionfuente 
   TABLE DATA               s   COPY test_ladm_validations_topology_tables.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3097   ��
      �A          0    762084    col_relacionfuenteuespacial 
   TABLE DATA               v   COPY test_ladm_validations_topology_tables.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3102   ��
      NB          0    763156    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3209   �
      �A          0    762176    col_responsablefuente 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3112   ��
      �A          0    762020    col_rrrfuente 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3095   ��
      �A          0    762185    col_topografofuente 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3113   ��
      �A          0    761941    col_transformacion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3087   �
      �A          0    762029    col_uebaunit 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_uebaunit (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, baunit) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3096   $�
      �A          0    762065    col_uefuente 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_uefuente (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, fuente_espacial) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3100   A�
      �A          0    762010    col_ueuegrupo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_ueuegrupo (t_id, t_ili_tid, parte_lc_construccion, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3094   ^�
      5B          0    762931 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3184   {�
      :B          0    762976    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3189   ��
      �A          0    762047    col_unidadfuente 
   TABLE DATA               y   COPY test_ladm_validations_topology_tables.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3098   g�
      eB          0    763363    col_volumentipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3232   ��
      �A          0    761999    col_volumenvalor 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3093   ��
      �A          0    761987 
   extarchivo 
   TABLE DATA                 COPY test_ladm_validations_topology_tables.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3092   �
      �A          0    761912    extdireccion 
   TABLE DATA               9  COPY test_ladm_validations_topology_tables.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3085   8�
      jB          0    763408     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3237   U�
      MB          0    763147    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3208   I�
      1B          0    762895    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3180   ��
      `B          0    763318    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3227   `�
      �A          0    761969    extinteresado 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3090   ��
      �A          0    761981    extredserviciosfisica 
   TABLE DATA               f   COPY test_ladm_validations_topology_tables.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3091   ��
      �A          0    761954    extunidadedificacionfisica 
   TABLE DATA               `   COPY test_ladm_validations_topology_tables.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3088   �
      �A          0    761933    fraccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3086   -�
      �A          0    762203 	   gc_barrio 
   TABLE DATA               }   COPY test_ladm_validations_topology_tables.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3115   J�
      �A          0    762213 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3116   g�
      �A          0    762223    gc_comisionesconstruccion 
   TABLE DATA               ~   COPY test_ladm_validations_topology_tables.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3117   ��
      �A          0    762233    gc_comisionesterreno 
   TABLE DATA               y   COPY test_ladm_validations_topology_tables.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3118   ��
      �A          0    762243    gc_comisionesunidadconstruccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3119   ��
      ^B          0    763300    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3225   ��
      �A          0    762253    gc_construccion 
   TABLE DATA               "  COPY test_ladm_validations_topology_tables.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3120   ��
      B          0    762391    gc_copropiedad 
   TABLE DATA               |   COPY test_ladm_validations_topology_tables.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3134   ��
      �A          0    762265    gc_datosphcondominio 
   TABLE DATA               )  COPY test_ladm_validations_topology_tables.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3121   �
      �A          0    762272    gc_datostorreph 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3122   7�
      �A          0    762279    gc_direccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3123   T�
      �A          0    762290    gc_estadopredio 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3124   q�
      �A          0    762297 
   gc_manzana 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3125   ��
      �A          0    762307    gc_perimetro 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3126   ��
      B          0    762380    gc_prediocatastro 
   TABLE DATA               ,  COPY test_ladm_validations_topology_tables.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3133   ��
      �A          0    762317    gc_propietario 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3127   ��
      �A          0    762327    gc_sectorrural 
   TABLE DATA               k   COPY test_ladm_validations_topology_tables.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3128   �
      �A          0    762337    gc_sectorurbano 
   TABLE DATA               l   COPY test_ladm_validations_topology_tables.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3129   �
      EB          0    763075    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3200   <�
      �A          0    762347 
   gc_terreno 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3130   ��
       B          0    762358    gc_unidadconstruccion 
   TABLE DATA               K  COPY test_ladm_validations_topology_tables.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3131   �
      7B          0    762949    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3186   ,�
      B          0    762370 	   gc_vereda 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3132   ��
      �A          0    761868    gm_multisurface2d 
   TABLE DATA               W   COPY test_ladm_validations_topology_tables.gm_multisurface2d (t_id, t_seq) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3080   �
      �A          0    761885    gm_multisurface3d 
   TABLE DATA               W   COPY test_ladm_validations_topology_tables.gm_multisurface3d (t_id, t_seq) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3082   3�
      �A          0    761857    gm_surface2dlistvalue 
   TABLE DATA                  COPY test_ladm_validations_topology_tables.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3079   P�
      �A          0    761874    gm_surface3dlistvalue 
   TABLE DATA                  COPY test_ladm_validations_topology_tables.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3081   m�
      �A          0    761960    imagen 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3089   ��
      <B          0    762994    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3191   ��
      B          0    762465    ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3142   ��
      \B          0    763282    lc_acuerdotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3223   
�
      B          0    762477    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3143   ��
      ]B          0    763291    lc_anexotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3224   ��
       B          0    762721    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3163   ]      !B          0    762730    lc_calificacionnoconvencional 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3164   z      gB          0    763381    lc_calificartipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3234   �      ;B          0    762985    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3190   g      kB          0    763417    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3238   �      DB          0    763066    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3199   3      lB          0    763426    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3239   E      B          0    762488    lc_construccion 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3144   R      QB          0    763183    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3212   o      iB          0    763399    lc_construcciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3236   �      B          0    762503    lc_contactovisita 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3145   �      "B          0    762739 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3165   �      B          0    762516    lc_datosphcondominio 
   TABLE DATA               .  COPY test_ladm_validations_topology_tables.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3146   �      B          0    762524 
   lc_derecho 
   TABLE DATA               (  COPY test_ladm_validations_topology_tables.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3147         AB          0    763039    lc_derechotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3196   .      8B          0    762958    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3187   �      dB          0    763354    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3231   }#      qB          0    763471    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3244   $      B          0    762538    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3148   �&      B          0    762545 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3149   �&      0B          0    762886 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3179   '      >B          0    763012    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3193   	(      B          0    762553    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3150   �(      aB          0    763327    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3228   
)      B          0    762566    lc_fuenteespacial 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3151   �+      B          0    762579    lc_grupocalificacion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3152   �+      @B          0    763030    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3195   �+      B          0    762589    lc_interesado 
   TABLE DATA               ?  COPY test_ladm_validations_topology_tables.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3153   {0      B          0    762603    lc_interesadocontacto 
   TABLE DATA                 COPY test_ladm_validations_topology_tables.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3154   �0      VB          0    763228    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3217   �0      IB          0    763111    lc_interesadotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3204   �3      B          0    762614 
   lc_lindero 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3155   �4      B          0    762625    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3156   �=      pB          0    763462    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3243   �=      B          0    762634    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3157   �J      6B          0    762940    lc_ofertatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3185   �J      B          0    762643 	   lc_predio 
   TABLE DATA               ]  COPY test_ladm_validations_topology_tables.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3158   �K      %B          0    762785    lc_predio_copropiedad 
   TABLE DATA               i   COPY test_ladm_validations_topology_tables.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3168   �K      &B          0    762793    lc_predio_ini_predioinsumos 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3169   �K      WB          0    763237    lc_prediotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3218   L      CB          0    763057 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3198   ;O      B          0    762655    lc_puntocontrol 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3159   oS      hB          0    763390    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3235   �S      #B          0    762756    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3166   �T      [B          0    763273    lc_puntolevtipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3222   �T      B          0    762674    lc_puntolindero 
   TABLE DATA               �  COPY test_ladm_validations_topology_tables.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3160   �U      PB          0    763174    lc_puntotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3211   h      FB          0    763084    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3201   �j      B          0    762694    lc_restriccion 
   TABLE DATA                 COPY test_ladm_validations_topology_tables.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3161   %l      YB          0    763255    lc_restricciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3220   Bl      JB          0    763120    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3205   Qv      'B          0    762801    lc_servidumbretransito 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3170   :x      OB          0    763165    lc_sexotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3210   Wx      B          0    762708 
   lc_terreno 
   TABLE DATA                 COPY test_ladm_validations_topology_tables.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3162   �x      $B          0    762776    lc_tipologiaconstruccion 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3167   ��      cB          0    763345    lc_tipologiatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3230   Ł      (B          0    762814    lc_unidadconstruccion 
   TABLE DATA                 COPY test_ladm_validations_topology_tables.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3171   ��      SB          0    763201    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3214   ̇      _B          0    763309    lc_usouconstipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3226   �      9B          0    762967 
   lc_viatipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3188   q�      bB          0    763336    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3229   .�      fB          0    763372    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3233   ��      B          0    762399    snr_derecho 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3135   q�      nB          0    763444    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3241   ��      B          0    762408    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3136   ��      B          0    762415    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3137   ض      B          0    762425    snr_fuentederecho 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3138   ��      2B          0    762904    snr_fuentetipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3181   �      3B          0    762913    snr_personatitulartipo 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3182   ��      	B          0    762446    snr_predioregistro 
   TABLE DATA               $  COPY test_ladm_validations_topology_tables.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3140   º      B          0    762435    snr_titular 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3139   ߺ      
B          0    762457    snr_titular_derecho 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3141   ��      sB          0    763488    t_ili2db_attrname 
   TABLE DATA               n   COPY test_ladm_validations_topology_tables.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3246   �      )B          0    762833    t_ili2db_basket 
   TABLE DATA               �   COPY test_ladm_validations_topology_tables.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3172   ��      rB          0    763480    t_ili2db_classname 
   TABLE DATA               ]   COPY test_ladm_validations_topology_tables.t_ili2db_classname (iliname, sqlname) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3245   a�      tB          0    763496    t_ili2db_column_prop 
   TABLE DATA               {   COPY test_ladm_validations_topology_tables.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3247   ��      *B          0    762842    t_ili2db_dataset 
   TABLE DATA               \   COPY test_ladm_validations_topology_tables.t_ili2db_dataset (t_id, datasetname) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3173   �
      +B          0    762847    t_ili2db_inheritance 
   TABLE DATA               c   COPY test_ladm_validations_topology_tables.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3174   :      vB          0    763508    t_ili2db_meta_attrs 
   TABLE DATA               o   COPY test_ladm_validations_topology_tables.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3249         .B          0    762869    t_ili2db_model 
   TABLE DATA               }   COPY test_ladm_validations_topology_tables.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3177   �F      ,B          0    762855    t_ili2db_settings 
   TABLE DATA               X   COPY test_ladm_validations_topology_tables.t_ili2db_settings (tag, setting) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3175   ')      uB          0    763502    t_ili2db_table_prop 
   TABLE DATA               e   COPY test_ladm_validations_topology_tables.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3248   "+      -B          0    762863    t_ili2db_trafo 
   TABLE DATA               ^   COPY test_ladm_validations_topology_tables.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
 %   test_ladm_validations_topology_tables       postgres    false    3176   �2      _D           0    0    t_ili2db_seq    SEQUENCE SET     [   SELECT pg_catalog.setval('test_ladm_validations_topology_tables.t_ili2db_seq', 938, true);
         %   test_ladm_validations_topology_tables       postgres    false    3078            >           2606    761896 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3083            �?           2606    763011 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3192            $@           2606    763218    col_areatipo col_areatipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3215            %>           2606    761906     col_areavalor col_areavalor_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3084            �>           2606    762172 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3111            �>           2606    762081 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3101            �>           2606    762096     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3103            �>           2606    762136    col_clfuente col_clfuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3107             @           2606    763200 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3213            �?           2606    763029 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3194            @           2606    763146 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3207            V@           2606    763443 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3240            &@           2606    763227 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3216            ,@           2606    763254 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3219             @           2606    763056 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3197            
@           2606    763101 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3202            @           2606    763137 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3206            �?           2606    762930 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3183            �>           2606    762115    col_masccl col_masccl_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           2606    762153    col_mascl col_mascl_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl DROP CONSTRAINT col_mascl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3109            �>           2606    762104    col_menosccl col_menosccl_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           2606    762143    col_menoscl col_menoscl_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3108            Z@           2606    763461 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3242            �>           2606    762199    col_miembros col_miembros_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros DROP CONSTRAINT col_miembros_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3114            �>           2606    762126    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3106            �>           2606    762163    col_puntocl col_puntocl_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3110            t>           2606    762060 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3099            �?           2606    762885     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3178            @           2606    763110 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3203            0@           2606    763272 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3221            m>           2606    762045 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3097            �>           2606    762089 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3102            @           2606    763164 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3209            �>           2606    762181 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3112            a>           2606    762025     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3095            �>           2606    762190 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3113            >>           2606    761949 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3087            f>           2606    762034    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3096            z>           2606    762070    col_uefuente col_uefuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3100            ^>           2606    762015     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3094            �?           2606    762939 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3184            �?           2606    762984 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3189            p>           2606    762052 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3098            F@           2606    763371 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3232            W>           2606    762004 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3093            P>           2606    761995    extarchivo extarchivo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo DROP CONSTRAINT extarchivo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3092            P@           2606    763416 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3237            1>           2606    761920    extdireccion extdireccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3085            @           2606    763155 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3208            �?           2606    762903 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3180            <@           2606    763326 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3227            J>           2606    761977     extinteresado extinteresado_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado DROP CONSTRAINT extinteresado_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3090            L>           2606    761986 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3091            @>           2606    761959 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3088            8>           2606    761938    fraccion fraccion_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion DROP CONSTRAINT fraccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3086            �>           2606    762211    gc_barrio gc_barrio_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3115            �>           2606    762221 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3116            �>           2606    762231 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3117            �>           2606    762241 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3118            �>           2606    762251 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3119            8@           2606    763308 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3225            �>           2606    762261 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3120            
?           2606    762396 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3134            �>           2606    762270 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3121            �>           2606    762277 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3122            �>           2606    762287    gc_direccion gc_direccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3123            �>           2606    762295 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3124            �>           2606    762305    gc_manzana gc_manzana_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3125            �>           2606    762315    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3126            ?           2606    762388 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3133            �>           2606    762325 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3127            �>           2606    762335 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3128            �>           2606    762345 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3129            @           2606    763083 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3200            �>           2606    762355    gc_terreno gc_terreno_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3130            �>           2606    762366 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3131            �?           2606    762957 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3186            ?           2606    762378    gc_vereda gc_vereda_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3132            >           2606    761873 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3080            >           2606    761890 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3082            >           2606    761865 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3079            >           2606    761882 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3081            E>           2606    761965    imagen imagen_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen DROP CONSTRAINT imagen_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3089            �?           2606    763002 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3191            '?           2606    762473 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3142            4@           2606    763290 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3223            +?           2606    762486 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3143            6@           2606    763299    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3224            �?           2606    762727 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3163            �?           2606    762736 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3164            J@           2606    763389 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3234            �?           2606    762993 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3190            R@           2606    763425 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3238            @           2606    763074 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3199            T@           2606    763434 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3239            0?           2606    762497 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3144            @           2606    763191 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3212            N@           2606    763407 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3236            6?           2606    762512 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3145            �?           2606    762748 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3165            ;?           2606    762522 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3146            ??           2606    762533    lc_derecho lc_derecho_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3147            �?           2606    763047 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3196            �?           2606    762966 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3187            D@           2606    763362 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3231            ^@           2606    763479 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3244            D?           2606    762543 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3148            F?           2606    762550 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3149            �?           2606    762894 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3179            �?           2606    763020 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3193            K?           2606    762562 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3150            >@           2606    763335 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3228            P?           2606    762575 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3151            W?           2606    762585 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3152            �?           2606    763038 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3195            Z?           2606    762598     lc_interesado lc_interesado_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3153            `?           2606    762612 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3154            (@           2606    763236 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3217            @           2606    763119 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3204            c?           2606    762623    lc_lindero lc_lindero_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3155            f?           2606    762631 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3156            \@           2606    763470 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3243            i?           2606    762640 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3157            �?           2606    762948     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3185            �?           2606    762790 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3168            �?           2606    762798 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3169            n?           2606    762652    lc_predio lc_predio_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio DROP CONSTRAINT lc_predio_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3158            *@           2606    763245     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3218            @           2606    763065 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3198            s?           2606    762664 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3159            L@           2606    763398 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3235            �?           2606    762765 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3166            2@           2606    763281 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3222            �?           2606    762683 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3160            @           2606    763182    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3211            @           2606    763092 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3201            �?           2606    762703 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3161            .@           2606    763263 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3220            @           2606    763128 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3205            �?           2606    762810 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3170            @           2606    763173    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3210            �?           2606    762717    lc_terreno lc_terreno_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3162            �?           2606    762782 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3167            B@           2606    763353 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3230            �?           2606    762823 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3171            "@           2606    763209 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3214            :@           2606    763317 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3226            �?           2606    762975    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3188            @@           2606    763344 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3229            H@           2606    763380 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3233            ?           2606    762404    snr_derecho snr_derecho_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3135            X@           2606    763452 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3241            ?           2606    762413 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3136            ?           2606    762423 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3137            ?           2606    762433 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3138            �?           2606    762912 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3181            �?           2606    762921 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3182            ?           2606    762454 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3140            "?           2606    762462 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3141            ?           2606    762443    snr_titular snr_titular_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular DROP CONSTRAINT snr_titular_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3139            c@           2606    763495 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3246    3246            �?           2606    762840 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3172            `@           2606    763487 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3245            �?           2606    762846 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3173            �?           2606    762854 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3174            �?           2606    762876 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3177    3177            �?           2606    762862 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
    %   test_ladm_validations_topology_tables         postgres    false    3175            >           1259    761897 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_ladm_validations_topology_tables.cc_metodooperacion USING btree (col_transformacion_transformacion);
 d   DROP INDEX test_ladm_validations_topology_tables.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3083             >           1259    761908 &   col_areavalor_lc_construccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_ladm_validations_topology_tables.col_areavalor USING btree (lc_construccion_area);
 Y   DROP INDEX test_ladm_validations_topology_tables.col_areavalor_lc_construccion_area_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3084            !>           1259    761910 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_ladm_validations_topology_tables.col_areavalor USING btree (lc_servidumbretransito_area);
 _   DROP INDEX test_ladm_validations_topology_tables.col_areavalor_lc_servidumbretransito_rea_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3084            ">           1259    761909 !   col_areavalor_lc_terreno_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_ladm_validations_topology_tables.col_areavalor USING btree (lc_terreno_area);
 T   DROP INDEX test_ladm_validations_topology_tables.col_areavalor_lc_terreno_area_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3084            #>           1259    761911 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_ladm_validations_topology_tables.col_areavalor USING btree (lc_unidadconstruccion_area);
 _   DROP INDEX test_ladm_validations_topology_tables.col_areavalor_lc_unidadconstruccion_area_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3084            &>           1259    761907    col_areavalor_tipo_idx    INDEX     o   CREATE INDEX col_areavalor_tipo_idx ON test_ladm_validations_topology_tables.col_areavalor USING btree (tipo);
 I   DROP INDEX test_ladm_validations_topology_tables.col_areavalor_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3084            �>           1259    762174 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_ladm_validations_topology_tables.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 j   DROP INDEX test_ladm_validations_topology_tables.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3111            �>           1259    762173 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_ladm_validations_topology_tables.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 h   DROP INDEX test_ladm_validations_topology_tables.col_baunitcomointeresado_interesado_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3111            �>           1259    762175 #   col_baunitcomointeresado_unidad_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_ladm_validations_topology_tables.col_baunitcomointeresado USING btree (unidad);
 V   DROP INDEX test_ladm_validations_topology_tables.col_baunitcomointeresado_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3111            >           1259    762082 $   col_baunitfuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_baunitfuente USING btree (fuente_espacial);
 W   DROP INDEX test_ladm_validations_topology_tables.col_baunitfuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3101            �>           1259    762083    col_baunitfuente_unidad_idx    INDEX     y   CREATE INDEX col_baunitfuente_unidad_idx ON test_ladm_validations_topology_tables.col_baunitfuente USING btree (unidad);
 N   DROP INDEX test_ladm_validations_topology_tables.col_baunitfuente_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3101            �>           1259    762097    col_cclfuente_ccl_idx    INDEX     m   CREATE INDEX col_cclfuente_ccl_idx ON test_ladm_validations_topology_tables.col_cclfuente USING btree (ccl);
 H   DROP INDEX test_ladm_validations_topology_tables.col_cclfuente_ccl_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3103            �>           1259    762098 !   col_cclfuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_cclfuente USING btree (fuente_espacial);
 T   DROP INDEX test_ladm_validations_topology_tables.col_cclfuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3103            �>           1259    762137     col_clfuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_clfuente USING btree (fuente_espacial);
 S   DROP INDEX test_ladm_validations_topology_tables.col_clfuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3107            �>           1259    762116    col_masccl_ccl_mas_idx    INDEX     o   CREATE INDEX col_masccl_ccl_mas_idx ON test_ladm_validations_topology_tables.col_masccl USING btree (ccl_mas);
 I   DROP INDEX test_ladm_validations_topology_tables.col_masccl_ccl_mas_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           1259    762117 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_ladm_validations_topology_tables.col_masccl USING btree (ue_mas_lc_construccion);
 X   DROP INDEX test_ladm_validations_topology_tables.col_masccl_ue_mas_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           1259    762119 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_validations_topology_tables.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 \   DROP INDEX test_ladm_validations_topology_tables.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           1259    762118     col_masccl_ue_mas_lc_terreno_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_ladm_validations_topology_tables.col_masccl USING btree (ue_mas_lc_terreno);
 S   DROP INDEX test_ladm_validations_topology_tables.col_masccl_ue_mas_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           1259    762120 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_validations_topology_tables.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 \   DROP INDEX test_ladm_validations_topology_tables.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3105            �>           1259    762154 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_ladm_validations_topology_tables.col_mascl USING btree (ue_mas_lc_construccion);
 W   DROP INDEX test_ladm_validations_topology_tables.col_mascl_ue_mas_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3109            �>           1259    762156 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_ladm_validations_topology_tables.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 [   DROP INDEX test_ladm_validations_topology_tables.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3109            �>           1259    762155    col_mascl_ue_mas_lc_terreno_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_ladm_validations_topology_tables.col_mascl USING btree (ue_mas_lc_terreno);
 R   DROP INDEX test_ladm_validations_topology_tables.col_mascl_ue_mas_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3109            �>           1259    762157 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_ladm_validations_topology_tables.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 [   DROP INDEX test_ladm_validations_topology_tables.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3109            �>           1259    762105    col_menosccl_ccl_menos_idx    INDEX     w   CREATE INDEX col_menosccl_ccl_menos_idx ON test_ladm_validations_topology_tables.col_menosccl USING btree (ccl_menos);
 M   DROP INDEX test_ladm_validations_topology_tables.col_menosccl_ccl_menos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           1259    762106 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_ladm_validations_topology_tables.col_menosccl USING btree (ue_menos_lc_construccion);
 \   DROP INDEX test_ladm_validations_topology_tables.col_menosccl_ue_menos_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           1259    762108 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_validations_topology_tables.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 ^   DROP INDEX test_ladm_validations_topology_tables.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           1259    762107 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_ladm_validations_topology_tables.col_menosccl USING btree (ue_menos_lc_terreno);
 W   DROP INDEX test_ladm_validations_topology_tables.col_menosccl_ue_menos_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           1259    762109 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_validations_topology_tables.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 ^   DROP INDEX test_ladm_validations_topology_tables.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3104            �>           1259    762144 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_ladm_validations_topology_tables.col_menoscl USING btree (ue_menos_lc_construccion);
 [   DROP INDEX test_ladm_validations_topology_tables.col_menoscl_ue_menos_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3108            �>           1259    762146 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_ladm_validations_topology_tables.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3108            �>           1259    762145 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_ladm_validations_topology_tables.col_menoscl USING btree (ue_menos_lc_terreno);
 V   DROP INDEX test_ladm_validations_topology_tables.col_menoscl_ue_menos_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3108            �>           1259    762147 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_ladm_validations_topology_tables.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3108            �>           1259    762202    col_miembros_agrupacion_idx    INDEX     y   CREATE INDEX col_miembros_agrupacion_idx ON test_ladm_validations_topology_tables.col_miembros USING btree (agrupacion);
 N   DROP INDEX test_ladm_validations_topology_tables.col_miembros_agrupacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3114            �>           1259    762201 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_ladm_validations_topology_tables.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 ^   DROP INDEX test_ladm_validations_topology_tables.col_miembros_interesado_lc_grpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3114            �>           1259    762200 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_ladm_validations_topology_tables.col_miembros USING btree (interesado_lc_interesado);
 \   DROP INDEX test_ladm_validations_topology_tables.col_miembros_interesado_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3114            �>           1259    762130    col_puntoccl_ccl_idx    INDEX     k   CREATE INDEX col_puntoccl_ccl_idx ON test_ladm_validations_topology_tables.col_puntoccl USING btree (ccl);
 G   DROP INDEX test_ladm_validations_topology_tables.col_puntoccl_ccl_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3106            �>           1259    762128 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_ladm_validations_topology_tables.col_puntoccl USING btree (punto_lc_puntocontrol);
 Y   DROP INDEX test_ladm_validations_topology_tables.col_puntoccl_punto_lc_puntocontrol_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3106            �>           1259    762127 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_ladm_validations_topology_tables.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 ^   DROP INDEX test_ladm_validations_topology_tables.col_puntoccl_punto_lc_puntolevantaminto_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3106            �>           1259    762129 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_ladm_validations_topology_tables.col_puntoccl USING btree (punto_lc_puntolindero);
 Y   DROP INDEX test_ladm_validations_topology_tables.col_puntoccl_punto_lc_puntolindero_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3106            �>           1259    762165 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_ladm_validations_topology_tables.col_puntocl USING btree (punto_lc_puntocontrol);
 X   DROP INDEX test_ladm_validations_topology_tables.col_puntocl_punto_lc_puntocontrol_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3110            �>           1259    762164 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_ladm_validations_topology_tables.col_puntocl USING btree (punto_lc_puntolevantamiento);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_puntocl_punto_lc_puntolevantaminto_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3110            �>           1259    762166 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_ladm_validations_topology_tables.col_puntocl USING btree (punto_lc_puntolindero);
 X   DROP INDEX test_ladm_validations_topology_tables.col_puntocl_punto_lc_puntolindero_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3110            r>           1259    762061 #   col_puntofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_puntofuente USING btree (fuente_espacial);
 V   DROP INDEX test_ladm_validations_topology_tables.col_puntofuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3099            u>           1259    762063 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_ladm_validations_topology_tables.col_puntofuente USING btree (punto_lc_puntocontrol);
 \   DROP INDEX test_ladm_validations_topology_tables.col_puntofuente_punto_lc_puntocontrol_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3099            v>           1259    762062 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_ladm_validations_topology_tables.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 a   DROP INDEX test_ladm_validations_topology_tables.col_puntofuente_punto_lc_puntolevantaminto_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3099            w>           1259    762064 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_ladm_validations_topology_tables.col_puntofuente USING btree (punto_lc_puntolindero);
 \   DROP INDEX test_ladm_validations_topology_tables.col_puntofuente_punto_lc_puntolindero_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3099            k>           1259    762046 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_ladm_validations_topology_tables.col_relacionfuente USING btree (fuente_administrativa);
 _   DROP INDEX test_ladm_validations_topology_tables.col_relacionfuente_fuente_administrativa_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3097            �>           1259    762090 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_relacionfuenteuespacial USING btree (fuente_espacial);
 a   DROP INDEX test_ladm_validations_topology_tables.col_relacionfuenteuespcial_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3102            �>           1259    762182 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_ladm_validations_topology_tables.col_responsablefuente USING btree (fuente_administrativa);
 b   DROP INDEX test_ladm_validations_topology_tables.col_responsablefuente_fuente_administrativa_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3112            �>           1259    762184 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_ladm_validations_topology_tables.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 g   DROP INDEX test_ladm_validations_topology_tables.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3112            �>           1259    762183 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_ladm_validations_topology_tables.col_responsablefuente USING btree (interesado_lc_interesado);
 e   DROP INDEX test_ladm_validations_topology_tables.col_responsablefuente_interesado_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3112            _>           1259    762026 '   col_rrrfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_ladm_validations_topology_tables.col_rrrfuente USING btree (fuente_administrativa);
 Z   DROP INDEX test_ladm_validations_topology_tables.col_rrrfuente_fuente_administrativa_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3095            b>           1259    762028     col_rrrfuente_rrr_lc_derecho_idx    INDEX     �   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_ladm_validations_topology_tables.col_rrrfuente USING btree (rrr_lc_derecho);
 S   DROP INDEX test_ladm_validations_topology_tables.col_rrrfuente_rrr_lc_derecho_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3095            c>           1259    762027 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     �   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_ladm_validations_topology_tables.col_rrrfuente USING btree (rrr_lc_restriccion);
 W   DROP INDEX test_ladm_validations_topology_tables.col_rrrfuente_rrr_lc_restriccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3095            �>           1259    762191 '   col_topografofuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_topografofuente USING btree (fuente_espacial);
 Z   DROP INDEX test_ladm_validations_topology_tables.col_topografofuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3113            �>           1259    762193 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_ladm_validations_topology_tables.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 e   DROP INDEX test_ladm_validations_topology_tables.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3113            �>           1259    762192 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_ladm_validations_topology_tables.col_topografofuente USING btree (topografo_lc_interesado);
 b   DROP INDEX test_ladm_validations_topology_tables.col_topografofuente_topografo_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3113            9>           1259    761951 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_ladm_validations_topology_tables.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 d   DROP INDEX test_ladm_validations_topology_tables.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3087            :>           1259    761952 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_ladm_validations_topology_tables.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 d   DROP INDEX test_ladm_validations_topology_tables.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3087            ;>           1259    761953 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_ladm_validations_topology_tables.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 d   DROP INDEX test_ladm_validations_topology_tables.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3087            <>           1259    761950 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_ladm_validations_topology_tables.col_transformacion USING gist (localizacion_transformada);
 c   DROP INDEX test_ladm_validations_topology_tables.col_transformacion_localizacion_transformada_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3087            d>           1259    762039    col_uebaunit_baunit_idx    INDEX     q   CREATE INDEX col_uebaunit_baunit_idx ON test_ladm_validations_topology_tables.col_uebaunit USING btree (baunit);
 J   DROP INDEX test_ladm_validations_topology_tables.col_uebaunit_baunit_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3096            g>           1259    762035 #   col_uebaunit_ue_lc_construccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_ladm_validations_topology_tables.col_uebaunit USING btree (ue_lc_construccion);
 V   DROP INDEX test_ladm_validations_topology_tables.col_uebaunit_ue_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3096            h>           1259    762037 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_ladm_validations_topology_tables.col_uebaunit USING btree (ue_lc_servidumbretransito);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_uebaunit_ue_lc_servidumbretransito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3096            i>           1259    762036    col_uebaunit_ue_lc_terreno_idx    INDEX        CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_ladm_validations_topology_tables.col_uebaunit USING btree (ue_lc_terreno);
 Q   DROP INDEX test_ladm_validations_topology_tables.col_uebaunit_ue_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3096            j>           1259    762038 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 \   DROP INDEX test_ladm_validations_topology_tables.col_uebaunit_ue_lc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3096            x>           1259    762075     col_uefuente_fuente_espacial_idx    INDEX     �   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_ladm_validations_topology_tables.col_uefuente USING btree (fuente_espacial);
 S   DROP INDEX test_ladm_validations_topology_tables.col_uefuente_fuente_espacial_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3100            {>           1259    762071 #   col_uefuente_ue_lc_construccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_ladm_validations_topology_tables.col_uefuente USING btree (ue_lc_construccion);
 V   DROP INDEX test_ladm_validations_topology_tables.col_uefuente_ue_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3100            |>           1259    762073 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_ladm_validations_topology_tables.col_uefuente USING btree (ue_lc_servidumbretransito);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_uefuente_ue_lc_servidumbretransito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3100            }>           1259    762072    col_uefuente_ue_lc_terreno_idx    INDEX        CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_ladm_validations_topology_tables.col_uefuente USING btree (ue_lc_terreno);
 Q   DROP INDEX test_ladm_validations_topology_tables.col_uefuente_ue_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3100            ~>           1259    762074 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.col_uefuente USING btree (ue_lc_unidadconstruccion);
 \   DROP INDEX test_ladm_validations_topology_tables.col_uefuente_ue_lc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3100            Y>           1259    762016 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_ladm_validations_topology_tables.col_ueuegrupo USING btree (parte_lc_construccion);
 Z   DROP INDEX test_ladm_validations_topology_tables.col_ueuegrupo_parte_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3094            Z>           1259    762018 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_ladm_validations_topology_tables.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 _   DROP INDEX test_ladm_validations_topology_tables.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3094            [>           1259    762017 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_ladm_validations_topology_tables.col_ueuegrupo USING btree (parte_lc_terreno);
 U   DROP INDEX test_ladm_validations_topology_tables.col_ueuegrupo_parte_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3094            \>           1259    762019 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_ladm_validations_topology_tables.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 _   DROP INDEX test_ladm_validations_topology_tables.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3094            n>           1259    762053 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_ladm_validations_topology_tables.col_unidadfuente USING btree (fuente_administrativa);
 ]   DROP INDEX test_ladm_validations_topology_tables.col_unidadfuente_fuente_administrativa_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3098            q>           1259    762054    col_unidadfuente_unidad_idx    INDEX     y   CREATE INDEX col_unidadfuente_unidad_idx ON test_ladm_validations_topology_tables.col_unidadfuente USING btree (unidad);
 N   DROP INDEX test_ladm_validations_topology_tables.col_unidadfuente_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3098            R>           1259    762006 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_ladm_validations_topology_tables.col_volumenvalor USING btree (lc_construccion_volumen);
 _   DROP INDEX test_ladm_validations_topology_tables.col_volumenvalor_lc_construccion_volumen_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3093            S>           1259    762008 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_ladm_validations_topology_tables.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 b   DROP INDEX test_ladm_validations_topology_tables.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3093            T>           1259    762007 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_ladm_validations_topology_tables.col_volumenvalor USING btree (lc_terreno_volumen);
 Z   DROP INDEX test_ladm_validations_topology_tables.col_volumenvalor_lc_terreno_volumen_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3093            U>           1259    762009 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_ladm_validations_topology_tables.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 b   DROP INDEX test_ladm_validations_topology_tables.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3093            X>           1259    762005    col_volumenvalor_tipo_idx    INDEX     u   CREATE INDEX col_volumenvalor_tipo_idx ON test_ladm_validations_topology_tables.col_volumenvalor USING btree (tipo);
 L   DROP INDEX test_ladm_validations_topology_tables.col_volumenvalor_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3093            M>           1259    761998 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_ladm_validations_topology_tables.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 \   DROP INDEX test_ladm_validations_topology_tables.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3092            N>           1259    761997 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_ladm_validations_topology_tables.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 \   DROP INDEX test_ladm_validations_topology_tables.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3092            Q>           1259    761996 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_ladm_validations_topology_tables.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 \   DROP INDEX test_ladm_validations_topology_tables.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3092            '>           1259    761923 $   extdireccion_clase_via_principal_idx    INDEX     �   CREATE INDEX extdireccion_clase_via_principal_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (clase_via_principal);
 W   DROP INDEX test_ladm_validations_topology_tables.extdireccion_clase_via_principal_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            (>           1259    761927 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (extinteresado_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_extinteresado_ext_drccn_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            )>           1259    761926 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            *>           1259    761928 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (lc_construccion_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_lc_construccin_xt_drccn_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            +>           1259    761932 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            ,>           1259    761929 $   extdireccion_lc_predio_direccion_idx    INDEX     �   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (lc_predio_direccion);
 W   DROP INDEX test_ladm_validations_topology_tables.extdireccion_lc_predio_direccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            ->           1259    761931 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            .>           1259    761930 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (lc_terreno_ext_direccion_id);
 ^   DROP INDEX test_ladm_validations_topology_tables.extdireccion_lc_terreno_ext_direccin_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            />           1259    761922    extdireccion_localizacion_idx    INDEX     |   CREATE INDEX extdireccion_localizacion_idx ON test_ladm_validations_topology_tables.extdireccion USING gist (localizacion);
 P   DROP INDEX test_ladm_validations_topology_tables.extdireccion_localizacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            2>           1259    761924    extdireccion_sector_ciudad_idx    INDEX        CREATE INDEX extdireccion_sector_ciudad_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (sector_ciudad);
 Q   DROP INDEX test_ladm_validations_topology_tables.extdireccion_sector_ciudad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            3>           1259    761925    extdireccion_sector_predio_idx    INDEX        CREATE INDEX extdireccion_sector_predio_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (sector_predio);
 Q   DROP INDEX test_ladm_validations_topology_tables.extdireccion_sector_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            4>           1259    761921    extdireccion_tipo_direccion_idx    INDEX     �   CREATE INDEX extdireccion_tipo_direccion_idx ON test_ladm_validations_topology_tables.extdireccion USING btree (tipo_direccion);
 R   DROP INDEX test_ladm_validations_topology_tables.extdireccion_tipo_direccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3085            F>           1259    761978 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_ladm_validations_topology_tables.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 _   DROP INDEX test_ladm_validations_topology_tables.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3090            G>           1259    761979 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_ladm_validations_topology_tables.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 _   DROP INDEX test_ladm_validations_topology_tables.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3090            H>           1259    761980 '   extinteresado_lc_interesado_ext_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_ladm_validations_topology_tables.extinteresado USING btree (lc_interesado_ext_pid);
 Z   DROP INDEX test_ladm_validations_topology_tables.extinteresado_lc_interesado_ext_pid_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3090            5>           1259    761939 '   fraccion_col_miembros_participacion_idx    INDEX     �   CREATE INDEX fraccion_col_miembros_participacion_idx ON test_ladm_validations_topology_tables.fraccion USING btree (col_miembros_participacion);
 Z   DROP INDEX test_ladm_validations_topology_tables.fraccion_col_miembros_participacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3086            6>           1259    761940 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_ladm_validations_topology_tables.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 Z   DROP INDEX test_ladm_validations_topology_tables.fraccion_lc_predio_copropidd_cfcnte_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3086            �>           1259    762212    gc_barrio_geometria_idx    INDEX     p   CREATE INDEX gc_barrio_geometria_idx ON test_ladm_validations_topology_tables.gc_barrio USING gist (geometria);
 J   DROP INDEX test_ladm_validations_topology_tables.gc_barrio_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3115            �>           1259    762222 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 g   DROP INDEX test_ladm_validations_topology_tables.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3116            �>           1259    762232 '   gc_comisionesconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_ladm_validations_topology_tables.gc_comisionesconstruccion USING gist (geometria);
 Z   DROP INDEX test_ladm_validations_topology_tables.gc_comisionesconstruccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3117            �>           1259    762252 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_ladm_validations_topology_tables.gc_comisionesunidadconstruccion USING gist (geometria);
 [   DROP INDEX test_ladm_validations_topology_tables.gc_comisionesnddcnstrccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3119            �>           1259    762242 "   gc_comisionesterreno_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_ladm_validations_topology_tables.gc_comisionesterreno USING gist (geometria);
 U   DROP INDEX test_ladm_validations_topology_tables.gc_comisionesterreno_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3118            �>           1259    762264    gc_construccion_gc_predio_idx    INDEX     }   CREATE INDEX gc_construccion_gc_predio_idx ON test_ladm_validations_topology_tables.gc_construccion USING btree (gc_predio);
 P   DROP INDEX test_ladm_validations_topology_tables.gc_construccion_gc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3120            �>           1259    762263    gc_construccion_geometria_idx    INDEX     |   CREATE INDEX gc_construccion_geometria_idx ON test_ladm_validations_topology_tables.gc_construccion USING gist (geometria);
 P   DROP INDEX test_ladm_validations_topology_tables.gc_construccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3120            �>           1259    762262 %   gc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_ladm_validations_topology_tables.gc_construccion USING btree (tipo_construccion);
 X   DROP INDEX test_ladm_validations_topology_tables.gc_construccion_tipo_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3120            ?           1259    762397    gc_copropiedad_gc_matriz_idx    INDEX     {   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_ladm_validations_topology_tables.gc_copropiedad USING btree (gc_matriz);
 O   DROP INDEX test_ladm_validations_topology_tables.gc_copropiedad_gc_matriz_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3134            ?           1259    762398    gc_copropiedad_gc_unidad_idx    INDEX     {   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_ladm_validations_topology_tables.gc_copropiedad USING btree (gc_unidad);
 O   DROP INDEX test_ladm_validations_topology_tables.gc_copropiedad_gc_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3134            ?           1259    764140    gc_copropiedad_gc_unidad_key    INDEX     �   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_ladm_validations_topology_tables.gc_copropiedad USING btree (gc_unidad);
 O   DROP INDEX test_ladm_validations_topology_tables.gc_copropiedad_gc_unidad_key;
    %   test_ladm_validations_topology_tables         postgres    false    3134            �>           1259    762271 "   gc_datosphcondominio_gc_predio_idx    INDEX     �   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_ladm_validations_topology_tables.gc_datosphcondominio USING btree (gc_predio);
 U   DROP INDEX test_ladm_validations_topology_tables.gc_datosphcondominio_gc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3121            �>           1259    762278 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_ladm_validations_topology_tables.gc_datostorreph USING btree (gc_datosphcondominio);
 [   DROP INDEX test_ladm_validations_topology_tables.gc_datostorreph_gc_datosphcondominio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3122            �>           1259    762289 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_ladm_validations_topology_tables.gc_direccion USING btree (gc_prediocatastro_direcciones);
 ^   DROP INDEX test_ladm_validations_topology_tables.gc_direccion_gc_prediocatastro_dirccnes_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3123            �>           1259    762288 %   gc_direccion_geometria_referencia_idx    INDEX     �   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_ladm_validations_topology_tables.gc_direccion USING gist (geometria_referencia);
 X   DROP INDEX test_ladm_validations_topology_tables.gc_direccion_geometria_referencia_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3123            �>           1259    762296 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_ladm_validations_topology_tables.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 a   DROP INDEX test_ladm_validations_topology_tables.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3124            �>           1259    762306    gc_manzana_geometria_idx    INDEX     r   CREATE INDEX gc_manzana_geometria_idx ON test_ladm_validations_topology_tables.gc_manzana USING gist (geometria);
 K   DROP INDEX test_ladm_validations_topology_tables.gc_manzana_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3125            �>           1259    762316    gc_perimetro_geometria_idx    INDEX     v   CREATE INDEX gc_perimetro_geometria_idx ON test_ladm_validations_topology_tables.gc_perimetro USING gist (geometria);
 M   DROP INDEX test_ladm_validations_topology_tables.gc_perimetro_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3126            ?           1259    762389 &   gc_prediocatastro_condicion_predio_idx    INDEX     �   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_ladm_validations_topology_tables.gc_prediocatastro USING btree (condicion_predio);
 Y   DROP INDEX test_ladm_validations_topology_tables.gc_prediocatastro_condicion_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3133            ?           1259    762390 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_ladm_validations_topology_tables.gc_prediocatastro USING btree (sistema_procedencia_datos);
 b   DROP INDEX test_ladm_validations_topology_tables.gc_prediocatastro_sistema_procedencia_datos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3133            �>           1259    762326 %   gc_propietario_gc_predio_catastro_idx    INDEX     �   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_ladm_validations_topology_tables.gc_propietario USING btree (gc_predio_catastro);
 X   DROP INDEX test_ladm_validations_topology_tables.gc_propietario_gc_predio_catastro_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3127            �>           1259    762336    gc_sectorrural_geometria_idx    INDEX     z   CREATE INDEX gc_sectorrural_geometria_idx ON test_ladm_validations_topology_tables.gc_sectorrural USING gist (geometria);
 O   DROP INDEX test_ladm_validations_topology_tables.gc_sectorrural_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3128            �>           1259    762346    gc_sectorurbano_geometria_idx    INDEX     |   CREATE INDEX gc_sectorurbano_geometria_idx ON test_ladm_validations_topology_tables.gc_sectorurbano USING gist (geometria);
 P   DROP INDEX test_ladm_validations_topology_tables.gc_sectorurbano_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3129            �>           1259    762357    gc_terreno_gc_predio_idx    INDEX     s   CREATE INDEX gc_terreno_gc_predio_idx ON test_ladm_validations_topology_tables.gc_terreno USING btree (gc_predio);
 K   DROP INDEX test_ladm_validations_topology_tables.gc_terreno_gc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3130            �>           1259    762356    gc_terreno_geometria_idx    INDEX     r   CREATE INDEX gc_terreno_geometria_idx ON test_ladm_validations_topology_tables.gc_terreno USING gist (geometria);
 K   DROP INDEX test_ladm_validations_topology_tables.gc_terreno_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3130            �>           1259    762369 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_ladm_validations_topology_tables.gc_unidadconstruccion USING btree (gc_construccion);
 \   DROP INDEX test_ladm_validations_topology_tables.gc_unidadconstruccion_gc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3131            �>           1259    762368 #   gc_unidadconstruccion_geometria_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_ladm_validations_topology_tables.gc_unidadconstruccion USING gist (geometria);
 V   DROP INDEX test_ladm_validations_topology_tables.gc_unidadconstruccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3131            �>           1259    762367 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_ladm_validations_topology_tables.gc_unidadconstruccion USING btree (tipo_construccion);
 ^   DROP INDEX test_ladm_validations_topology_tables.gc_unidadconstruccion_tipo_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3131            �>           1259    762379    gc_vereda_geometria_idx    INDEX     p   CREATE INDEX gc_vereda_geometria_idx ON test_ladm_validations_topology_tables.gc_vereda USING gist (geometria);
 J   DROP INDEX test_ladm_validations_topology_tables.gc_vereda_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3132            >           1259    761866     gm_surface2dlistvalue_avalue_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_ladm_validations_topology_tables.gm_surface2dlistvalue USING gist (avalue);
 S   DROP INDEX test_ladm_validations_topology_tables.gm_surface2dlistvalue_avalue_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3079            >           1259    761867 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_ladm_validations_topology_tables.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 g   DROP INDEX test_ladm_validations_topology_tables.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3079            >           1259    761883     gm_surface3dlistvalue_avalue_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_ladm_validations_topology_tables.gm_surface3dlistvalue USING gist (avalue);
 S   DROP INDEX test_ladm_validations_topology_tables.gm_surface3dlistvalue_avalue_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3081            >           1259    761884 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_ladm_validations_topology_tables.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 g   DROP INDEX test_ladm_validations_topology_tables.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3081            A>           1259    761968    imagen_extinteresado_firma_idx    INDEX        CREATE INDEX imagen_extinteresado_firma_idx ON test_ladm_validations_topology_tables.imagen USING btree (extinteresado_firma);
 Q   DROP INDEX test_ladm_validations_topology_tables.imagen_extinteresado_firma_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3089            B>           1259    761967 #   imagen_extinteresado_fotografia_idx    INDEX     �   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_ladm_validations_topology_tables.imagen USING btree (extinteresado_fotografia);
 V   DROP INDEX test_ladm_validations_topology_tables.imagen_extinteresado_fotografia_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3089            C>           1259    761966 %   imagen_extinteresado_huell_dctlar_idx    INDEX     �   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_ladm_validations_topology_tables.imagen USING btree (extinteresado_huella_dactilar);
 X   DROP INDEX test_ladm_validations_topology_tables.imagen_extinteresado_huell_dctlar_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3089            %?           1259    762475 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_ladm_validations_topology_tables.ini_predioinsumos USING btree (gc_predio_catastro);
 [   DROP INDEX test_ladm_validations_topology_tables.ini_predioinsumos_gc_predio_catastro_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3142            (?           1259    762476 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_ladm_validations_topology_tables.ini_predioinsumos USING btree (snr_predio_juridico);
 \   DROP INDEX test_ladm_validations_topology_tables.ini_predioinsumos_snr_predio_juridico_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3142            )?           1259    762474 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_ladm_validations_topology_tables.ini_predioinsumos USING btree (tipo_emparejamiento);
 \   DROP INDEX test_ladm_validations_topology_tables.ini_predioinsumos_tipo_emparejamiento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3142            ,?           1259    762487 !   lc_agrupacioninteresados_tipo_idx    INDEX     �   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_ladm_validations_topology_tables.lc_agrupacioninteresados USING btree (tipo);
 T   DROP INDEX test_ladm_validations_topology_tables.lc_agrupacioninteresados_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3143            �?           1259    762729 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_ladm_validations_topology_tables.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 h   DROP INDEX test_ladm_validations_topology_tables.lc_calificacionconvencinal_lc_unidad_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3163            �?           1259    762728 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_ladm_validations_topology_tables.lc_calificacionconvencional USING btree (tipo_calificar);
 `   DROP INDEX test_ladm_validations_topology_tables.lc_calificacionconvencinal_tipo_calificar_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3163            �?           1259    762738 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_ladm_validations_topology_tables.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 h   DROP INDEX test_ladm_validations_topology_tables.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3164            �?           1259    762737 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_ladm_validations_topology_tables.lc_calificacionnoconvencional USING btree (tipo_anexo);
 \   DROP INDEX test_ladm_validations_topology_tables.lc_calificacionnoconvncnal_tipo_anexo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3164            -?           1259    762500    lc_construccion_dimension_idx    INDEX     }   CREATE INDEX lc_construccion_dimension_idx ON test_ladm_validations_topology_tables.lc_construccion USING btree (dimension);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_construccion_dimension_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3144            .?           1259    762502    lc_construccion_geometria_idx    INDEX     |   CREATE INDEX lc_construccion_geometria_idx ON test_ladm_validations_topology_tables.lc_construccion USING gist (geometria);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_construccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3144            1?           1259    762501 '   lc_construccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_construccion_relacion_superficie_idx ON test_ladm_validations_topology_tables.lc_construccion USING btree (relacion_superficie);
 Z   DROP INDEX test_ladm_validations_topology_tables.lc_construccion_relacion_superficie_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3144            2?           1259    762498 %   lc_construccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_ladm_validations_topology_tables.lc_construccion USING btree (tipo_construccion);
 X   DROP INDEX test_ladm_validations_topology_tables.lc_construccion_tipo_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3144            3?           1259    762499     lc_construccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_ladm_validations_topology_tables.lc_construccion USING btree (tipo_dominio);
 S   DROP INDEX test_ladm_validations_topology_tables.lc_construccion_tipo_dominio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3144            4?           1259    762515 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_ladm_validations_topology_tables.lc_contactovisita USING btree (lc_datos_adicionales);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_contactovisita_lc_datos_adicionales_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3145            7?           1259    762514 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_ladm_validations_topology_tables.lc_contactovisita USING btree (relacion_con_predio);
 \   DROP INDEX test_ladm_validations_topology_tables.lc_contactovisita_relacion_con_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3145            8?           1259    762513 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_ladm_validations_topology_tables.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 c   DROP INDEX test_ladm_validations_topology_tables.lc_contactovisita_tipo_documento_quien_tndio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3145            9?           1259    762523 "   lc_datosphcondominio_lc_predio_idx    INDEX     �   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_ladm_validations_topology_tables.lc_datosphcondominio USING btree (lc_predio);
 U   DROP INDEX test_ladm_validations_topology_tables.lc_datosphcondominio_lc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3146            �?           1259    762752 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 a   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762751 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762750 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 g   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762755 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 [   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_lc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762749 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 l   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762754 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 b   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            �?           1259    762753 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 l   DROP INDEX test_ladm_validations_topology_tables.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3165            <?           1259    762536 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_ladm_validations_topology_tables.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 \   DROP INDEX test_ladm_validations_topology_tables.lc_derecho_interesado_lc_grpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3147            =?           1259    762535 '   lc_derecho_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_ladm_validations_topology_tables.lc_derecho USING btree (interesado_lc_interesado);
 Z   DROP INDEX test_ladm_validations_topology_tables.lc_derecho_interesado_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3147            @?           1259    762534    lc_derecho_tipo_idx    INDEX     i   CREATE INDEX lc_derecho_tipo_idx ON test_ladm_validations_topology_tables.lc_derecho USING btree (tipo);
 F   DROP INDEX test_ladm_validations_topology_tables.lc_derecho_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3147            A?           1259    762537    lc_derecho_unidad_idx    INDEX     m   CREATE INDEX lc_derecho_unidad_idx ON test_ladm_validations_topology_tables.lc_derecho USING btree (unidad);
 H   DROP INDEX test_ladm_validations_topology_tables.lc_derecho_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3147            B?           1259    762544 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_ladm_validations_topology_tables.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 i   DROP INDEX test_ladm_validations_topology_tables.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3148            G?           1259    762552 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 l   DROP INDEX test_ladm_validations_topology_tables.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3149            H?           1259    762551 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_estructuranvddnmrprdial_tipo_novedad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3149            I?           1259    762564 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_ladm_validations_topology_tables.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 d   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteadministrativa_estado_disponibilidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3150            L?           1259    762563     lc_fuenteadministrativa_tipo_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_ladm_validations_topology_tables.lc_fuenteadministrativa USING btree (tipo);
 S   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteadministrativa_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3150            M?           1259    762565 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_ladm_validations_topology_tables.lc_fuenteadministrativa USING btree (tipo_principal);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteadministrativa_tipo_principal_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3150            N?           1259    762577 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_ladm_validations_topology_tables.lc_fuenteespacial USING btree (estado_disponibilidad);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteespacial_estado_disponibilidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3151            Q?           1259    762576    lc_fuenteespacial_tipo_idx    INDEX     w   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_ladm_validations_topology_tables.lc_fuenteespacial USING btree (tipo);
 M   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteespacial_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3151            R?           1259    762578 $   lc_fuenteespacial_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_ladm_validations_topology_tables.lc_fuenteespacial USING btree (tipo_principal);
 W   DROP INDEX test_ladm_validations_topology_tables.lc_fuenteespacial_tipo_principal_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3151            S?           1259    762586 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_ladm_validations_topology_tables.lc_grupocalificacion USING btree (clase_calificacion);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_grupocalificacion_clase_calificacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3152            T?           1259    762587 %   lc_grupocalificacion_conservacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_ladm_validations_topology_tables.lc_grupocalificacion USING btree (conservacion);
 X   DROP INDEX test_ladm_validations_topology_tables.lc_grupocalificacion_conservacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3152            U?           1259    762588 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_ladm_validations_topology_tables.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 f   DROP INDEX test_ladm_validations_topology_tables.lc_grupocalificacion_lc_calificacion_convencnal_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3152            X?           1259    762602    lc_interesado_grupo_etnico_idx    INDEX        CREATE INDEX lc_interesado_grupo_etnico_idx ON test_ladm_validations_topology_tables.lc_interesado USING btree (grupo_etnico);
 Q   DROP INDEX test_ladm_validations_topology_tables.lc_interesado_grupo_etnico_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3153            [?           1259    762601    lc_interesado_sexo_idx    INDEX     o   CREATE INDEX lc_interesado_sexo_idx ON test_ladm_validations_topology_tables.lc_interesado USING btree (sexo);
 I   DROP INDEX test_ladm_validations_topology_tables.lc_interesado_sexo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3153            \?           1259    762600     lc_interesado_tipo_documento_idx    INDEX     �   CREATE INDEX lc_interesado_tipo_documento_idx ON test_ladm_validations_topology_tables.lc_interesado USING btree (tipo_documento);
 S   DROP INDEX test_ladm_validations_topology_tables.lc_interesado_tipo_documento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3153            ]?           1259    762599    lc_interesado_tipo_idx    INDEX     o   CREATE INDEX lc_interesado_tipo_idx ON test_ladm_validations_topology_tables.lc_interesado USING btree (tipo);
 I   DROP INDEX test_ladm_validations_topology_tables.lc_interesado_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3153            ^?           1259    762613 '   lc_interesadocontacto_lc_interesado_idx    INDEX     �   CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_ladm_validations_topology_tables.lc_interesadocontacto USING btree (lc_interesado);
 Z   DROP INDEX test_ladm_validations_topology_tables.lc_interesadocontacto_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3154            a?           1259    762624    lc_lindero_geometria_idx    INDEX     r   CREATE INDEX lc_lindero_geometria_idx ON test_ladm_validations_topology_tables.lc_lindero USING gist (geometria);
 K   DROP INDEX test_ladm_validations_topology_tables.lc_lindero_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3155            d?           1259    762633 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_ladm_validations_topology_tables.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 b   DROP INDEX test_ladm_validations_topology_tables.lc_objetoconstruccion_lc_grupo_calificacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3156            g?           1259    762632 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_ladm_validations_topology_tables.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 e   DROP INDEX test_ladm_validations_topology_tables.lc_objetoconstruccion_tipo_objeto_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3156            j?           1259    762642 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 [   DROP INDEX test_ladm_validations_topology_tables.lc_ofertasmercadoinmoblrio_lc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3157            k?           1259    762641 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3157            l?           1259    762654    lc_predio_condicion_predio_idx    INDEX        CREATE INDEX lc_predio_condicion_predio_idx ON test_ladm_validations_topology_tables.lc_predio USING btree (condicion_predio);
 Q   DROP INDEX test_ladm_validations_topology_tables.lc_predio_condicion_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3158            �?           1259    762792 %   lc_predio_copropiedad_copropiedad_idx    INDEX     �   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_ladm_validations_topology_tables.lc_predio_copropiedad USING btree (copropiedad);
 X   DROP INDEX test_ladm_validations_topology_tables.lc_predio_copropiedad_copropiedad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3168            �?           1259    762791     lc_predio_copropiedad_predio_idx    INDEX     �   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_ladm_validations_topology_tables.lc_predio_copropiedad USING btree (predio);
 S   DROP INDEX test_ladm_validations_topology_tables.lc_predio_copropiedad_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3168            �?           1259    764666     lc_predio_copropiedad_predio_key    INDEX     �   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_ladm_validations_topology_tables.lc_predio_copropiedad USING btree (predio);
 S   DROP INDEX test_ladm_validations_topology_tables.lc_predio_copropiedad_predio_key;
    %   test_ladm_validations_topology_tables         postgres    false    3168            �?           1259    762799 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 d   DROP INDEX test_ladm_validations_topology_tables.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3169            �?           1259    762800 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos USING btree (lc_predio);
 [   DROP INDEX test_ladm_validations_topology_tables.lc_predio_ini_predioinsmos_lc_predio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3169            o?           1259    762653    lc_predio_tipo_idx    INDEX     g   CREATE INDEX lc_predio_tipo_idx ON test_ladm_validations_topology_tables.lc_predio USING btree (tipo);
 E   DROP INDEX test_ladm_validations_topology_tables.lc_predio_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3158            p?           1259    762669    lc_puntocontrol_geometria_idx    INDEX     |   CREATE INDEX lc_puntocontrol_geometria_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING gist (geometria);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            q?           1259    762668 $   lc_puntocontrol_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (metodoproduccion);
 W   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_metodoproduccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            t?           1259    762667 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (posicion_interpolacion);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_posicion_interpolacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            u?           1259    762665    lc_puntocontrol_puntotipo_idx    INDEX     }   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (puntotipo);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_puntotipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            v?           1259    762666 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     �   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (tipo_punto_control);
 Y   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_tipo_punto_control_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            w?           1259    762670 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (ue_lc_construccion);
 Y   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_ue_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            x?           1259    762672 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 `   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_ue_lc_servidumbretransito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            y?           1259    762671 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (ue_lc_terreno);
 T   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_ue_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            z?           1259    762673 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 _   DROP INDEX test_ladm_validations_topology_tables.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3159            �?           1259    762768 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (fotoidentificacion);
 _   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_fotoidentificacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762771 #   lc_puntolevantamiento_geometria_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING gist (geometria);
 V   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762770 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (metodoproduccion);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_metodoproduccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762769 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (posicion_interpolacion);
 c   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_posicion_interpolacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762766 #   lc_puntolevantamiento_puntotipo_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (puntotipo);
 V   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_puntotipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762767 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 e   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762772 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (ue_lc_construccion);
 _   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_ue_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762774 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 f   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762773 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (ue_lc_terreno);
 Z   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_ue_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            �?           1259    762775 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 e   DROP INDEX test_ladm_validations_topology_tables.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3166            {?           1259    762685    lc_puntolindero_acuerdo_idx    INDEX     y   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (acuerdo);
 N   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_acuerdo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            |?           1259    762686 &   lc_puntolindero_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (fotoidentificacion);
 Y   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_fotoidentificacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            }?           1259    762689    lc_puntolindero_geometria_idx    INDEX     |   CREATE INDEX lc_puntolindero_geometria_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING gist (geometria);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            ~?           1259    762688 $   lc_puntolindero_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (metodoproduccion);
 W   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_metodoproduccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762687 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (posicion_interpolacion);
 ]   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_posicion_interpolacion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762684    lc_puntolindero_puntotipo_idx    INDEX     }   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (puntotipo);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_puntotipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762690 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (ue_lc_construccion);
 Y   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_ue_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762692 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 `   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_ue_lc_servidumbretransito_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762691 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (ue_lc_terreno);
 T   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_ue_lc_terreno_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762693 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_ladm_validations_topology_tables.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 _   DROP INDEX test_ladm_validations_topology_tables.lc_puntolindero_ue_lc_unidadconstruccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3160            �?           1259    762706 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_ladm_validations_topology_tables.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 `   DROP INDEX test_ladm_validations_topology_tables.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3161            �?           1259    762705 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_ladm_validations_topology_tables.lc_restriccion USING btree (interesado_lc_interesado);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_restriccion_interesado_lc_interesado_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3161            �?           1259    762704    lc_restriccion_tipo_idx    INDEX     q   CREATE INDEX lc_restriccion_tipo_idx ON test_ladm_validations_topology_tables.lc_restriccion USING btree (tipo);
 J   DROP INDEX test_ladm_validations_topology_tables.lc_restriccion_tipo_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3161            �?           1259    762707    lc_restriccion_unidad_idx    INDEX     u   CREATE INDEX lc_restriccion_unidad_idx ON test_ladm_validations_topology_tables.lc_restriccion USING btree (unidad);
 L   DROP INDEX test_ladm_validations_topology_tables.lc_restriccion_unidad_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3161            �?           1259    762811 $   lc_servidumbretransito_dimension_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_ladm_validations_topology_tables.lc_servidumbretransito USING btree (dimension);
 W   DROP INDEX test_ladm_validations_topology_tables.lc_servidumbretransito_dimension_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3170            �?           1259    762813 $   lc_servidumbretransito_geometria_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_ladm_validations_topology_tables.lc_servidumbretransito USING gist (geometria);
 W   DROP INDEX test_ladm_validations_topology_tables.lc_servidumbretransito_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3170            �?           1259    762812 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_ladm_validations_topology_tables.lc_servidumbretransito USING btree (relacion_superficie);
 a   DROP INDEX test_ladm_validations_topology_tables.lc_servidumbretransito_relacion_superficie_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3170            �?           1259    762719    lc_terreno_dimension_idx    INDEX     s   CREATE INDEX lc_terreno_dimension_idx ON test_ladm_validations_topology_tables.lc_terreno USING btree (dimension);
 K   DROP INDEX test_ladm_validations_topology_tables.lc_terreno_dimension_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3162            �?           1259    762718    lc_terreno_geometria_idx    INDEX     r   CREATE INDEX lc_terreno_geometria_idx ON test_ladm_validations_topology_tables.lc_terreno USING gist (geometria);
 K   DROP INDEX test_ladm_validations_topology_tables.lc_terreno_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3162            �?           1259    762720 "   lc_terreno_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_ladm_validations_topology_tables.lc_terreno USING btree (relacion_superficie);
 U   DROP INDEX test_ladm_validations_topology_tables.lc_terreno_relacion_superficie_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3162            �?           1259    762784 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_ladm_validations_topology_tables.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 f   DROP INDEX test_ladm_validations_topology_tables.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3167            �?           1259    762783 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_ladm_validations_topology_tables.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_tipologiaconstruccion_tipo_tipologia_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3167            �?           1259    762830 #   lc_unidadconstruccion_dimension_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (dimension);
 V   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_dimension_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762832 #   lc_unidadconstruccion_geometria_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING gist (geometria);
 V   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_geometria_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762829 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (lc_construccion);
 \   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_lc_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762831 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (relacion_superficie);
 `   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_relacion_superficie_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762825 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (tipo_construccion);
 ^   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_tipo_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762824 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (tipo_dominio);
 Y   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_tipo_dominio_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762827 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (tipo_planta);
 X   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_tipo_planta_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762826 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 e   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_tipo_unidad_construccion_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            �?           1259    762828    lc_unidadconstruccion_uso_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_ladm_validations_topology_tables.lc_unidadconstruccion USING btree (uso);
 P   DROP INDEX test_ladm_validations_topology_tables.lc_unidadconstruccion_uso_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3171            ?           1259    762405 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_ladm_validations_topology_tables.snr_derecho USING btree (calidad_derecho_registro);
 [   DROP INDEX test_ladm_validations_topology_tables.snr_derecho_calidad_derecho_registro_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3135            ?           1259    762406 "   snr_derecho_snr_fuente_derecho_idx    INDEX     �   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_ladm_validations_topology_tables.snr_derecho USING btree (snr_fuente_derecho);
 U   DROP INDEX test_ladm_validations_topology_tables.snr_derecho_snr_fuente_derecho_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3135            ?           1259    762407 #   snr_derecho_snr_predio_registro_idx    INDEX     �   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_ladm_validations_topology_tables.snr_derecho USING btree (snr_predio_registro);
 V   DROP INDEX test_ladm_validations_topology_tables.snr_derecho_snr_predio_registro_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3135            ?           1259    762414 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_ladm_validations_topology_tables.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 l   DROP INDEX test_ladm_validations_topology_tables.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3136            ?           1259    762424 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_ladm_validations_topology_tables.snr_fuentecabidalinderos USING btree (tipo_documento);
 ^   DROP INDEX test_ladm_validations_topology_tables.snr_fuentecabidalinderos_tipo_documento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3137            ?           1259    762434 $   snr_fuentederecho_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_ladm_validations_topology_tables.snr_fuentederecho USING btree (tipo_documento);
 W   DROP INDEX test_ladm_validations_topology_tables.snr_fuentederecho_tipo_documento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3138            ?           1259    762455 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_ladm_validations_topology_tables.snr_predioregistro USING btree (clase_suelo_registro);
 ^   DROP INDEX test_ladm_validations_topology_tables.snr_predioregistro_clase_suelo_registro_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3140             ?           1259    762456 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_ladm_validations_topology_tables.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 c   DROP INDEX test_ladm_validations_topology_tables.snr_predioregistro_snr_fuente_cabidalinderos_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3140            #?           1259    762464 #   snr_titular_derecho_snr_derecho_idx    INDEX     �   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_ladm_validations_topology_tables.snr_titular_derecho USING btree (snr_derecho);
 V   DROP INDEX test_ladm_validations_topology_tables.snr_titular_derecho_snr_derecho_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3141            $?           1259    762463 #   snr_titular_derecho_snr_titular_idx    INDEX     �   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_ladm_validations_topology_tables.snr_titular_derecho USING btree (snr_titular);
 V   DROP INDEX test_ladm_validations_topology_tables.snr_titular_derecho_snr_titular_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3141            ?           1259    762445    snr_titular_tipo_documento_idx    INDEX        CREATE INDEX snr_titular_tipo_documento_idx ON test_ladm_validations_topology_tables.snr_titular USING btree (tipo_documento);
 Q   DROP INDEX test_ladm_validations_topology_tables.snr_titular_tipo_documento_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3139            ?           1259    762444    snr_titular_tipo_persona_idx    INDEX     {   CREATE INDEX snr_titular_tipo_persona_idx ON test_ladm_validations_topology_tables.snr_titular USING btree (tipo_persona);
 O   DROP INDEX test_ladm_validations_topology_tables.snr_titular_tipo_persona_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3139            a@           1259    764755 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_ladm_validations_topology_tables.t_ili2db_attrname USING btree (colowner, sqlname);
 Y   DROP INDEX test_ladm_validations_topology_tables.t_ili2db_attrname_colowner_sqlname_key;
    %   test_ladm_validations_topology_tables         postgres    false    3246    3246            �?           1259    762841    t_ili2db_basket_dataset_idx    INDEX     y   CREATE INDEX t_ili2db_basket_dataset_idx ON test_ladm_validations_topology_tables.t_ili2db_basket USING btree (dataset);
 N   DROP INDEX test_ladm_validations_topology_tables.t_ili2db_basket_dataset_idx;
    %   test_ladm_validations_topology_tables         postgres    false    3172            �?           1259    764753     t_ili2db_dataset_datasetname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_ladm_validations_topology_tables.t_ili2db_dataset USING btree (datasetname);
 S   DROP INDEX test_ladm_validations_topology_tables.t_ili2db_dataset_datasetname_key;
    %   test_ladm_validations_topology_tables         postgres    false    3173            �?           1259    764754 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_ladm_validations_topology_tables.t_ili2db_model USING btree (iliversion, modelname);
 Z   DROP INDEX test_ladm_validations_topology_tables.t_ili2db_model_iliversion_modelname_key;
    %   test_ladm_validations_topology_tables         postgres    false    3177    3177            f@           2606    763526 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_validations_topology_tables.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_ladm_validations_topology_tables.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3087    15934    3083            g@           2606    763537 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16176    3144    3084            h@           2606    763547 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16319    3170    3084            i@           2606    763542 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16272    3084    3162            j@           2606    763552 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3171    3084            k@           2606    763531 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3084    16420    3215            �@           2606    763990 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     =  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16171    3111    3143            �@           2606    763985 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3153    3111    16218            �@           2606    763995 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3111    16238    3158            �@           2606    763830 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    3101    16208            �@           2606    763835 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    3101    16238            �@           2606    763845 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_validations_topology_tables.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3155    3103    16227            �@           2606    763850 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3103    3151    16208            �@           2606    763925 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16208    3107    3151            �@           2606    763880 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_ladm_validations_topology_tables.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3155    3105    16227            �@           2606    763885 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3144    3105    16176            �@           2606    763895 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16319    3170    3105            �@           2606    763890 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3162    3105    16272            �@           2606    763900 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3105    3171            �@           2606    763950 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3109    16176    3144            �@           2606    763960 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    3109    16319            �@           2606    763955 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3162    16272    3109            �@           2606    763965 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3109    3171            �@           2606    763855 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_ladm_validations_topology_tables.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3104    3155    16227            �@           2606    763860 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16176    3104    3144            �@           2606    763870 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    3104    16319            �@           2606    763865 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3162    3104    16272            �@           2606    763875 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3104    16325            �@           2606    763930 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3108    3144    16176            �@           2606    763940 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16319    3170    3108            �@           2606    763935 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3108    16272    3162            �@           2606    763945 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3108    3171            �@           2606    764040 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16171    3114    3143            �@           2606    764035 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3114    3143    16171            �@           2606    764030 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16218    3114    3153            �@           2606    763920 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_ladm_validations_topology_tables.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3155    16227    3106            �@           2606    763910 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_validations_topology_tables.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16243    3106    3159            �@           2606    763905 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_validations_topology_tables.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3106    16295    3166            �@           2606    763915 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_validations_topology_tables.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16256    3106    3160            �@           2606    763975 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_validations_topology_tables.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3110    3159    16243            �@           2606    763970 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_validations_topology_tables.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3166    16295    3110            �@           2606    763980 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_validations_topology_tables.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3110    16256    3160            �@           2606    763785 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    3099    16208            �@           2606    763795 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_ladm_validations_topology_tables.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3099    16243    3159            �@           2606    763790 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_ladm_validations_topology_tables.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3166    3099    16295            �@           2606    763800 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_ladm_validations_topology_tables.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3099    3160    16256            �@           2606    763770 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3150    3097    16203            �@           2606    763840 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    3102    16208            �@           2606    764000 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT     #  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16203    3150    3112            �@           2606    764010 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     7  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3143    16171    3112            �@           2606    764005 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3112    16218    3153            �@           2606    763730 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3150    3095    16203            �@           2606    763740 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_ladm_validations_topology_tables.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3147    3095    16191            �@           2606    763735 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_ladm_validations_topology_tables.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3161    3095    16266            �@           2606    764015 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    3113    16208            �@           2606    764025 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT     2  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16171    3113    3143            �@           2606    764020 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16218    3113    3153            y@           2606    763624 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT     /  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_ladm_validations_topology_tables.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16243    3087    3159            z@           2606    763629 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT     /  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_ladm_validations_topology_tables.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3160    16256    3087            {@           2606    763634 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT     ;  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_ladm_validations_topology_tables.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16295    3087    3166            �@           2606    763765 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    3096    16238            �@           2606    763745 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3144    3096    16176            �@           2606    763755 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3096    3170    16319            �@           2606    763750 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3096    3162    16272            �@           2606    763760 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3096    3171            �@           2606    763825 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    3100    16208            �@           2606    763805 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3100    3144    16176            �@           2606    763815 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    3100    16319            �@           2606    763810 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16272    3100    3162            �@           2606    763820 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3100    16325            �@           2606    763710 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16176    3094    3144            �@           2606    763720 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    3094    16319            �@           2606    763715 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3162    3094    16272            �@           2606    763725 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3094    16325            �@           2606    763775 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3150    3098    16203            �@           2606    763780 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    3098    16238            �@           2606    763690 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16176    3093    3144            �@           2606    763700 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT     &  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16319    3093    3170            �@           2606    763695 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3093    3162    16272            �@           2606    763705 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT     $  ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3093    3171    16325            �@           2606    763685 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_validations_topology_tables.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3232    16454    3093            �@           2606    763679 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_ladm_validations_topology_tables.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16208    3092    3151            �@           2606    763674 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16203    3150    3092            �@           2606    763669 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_ladm_validations_topology_tables.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3092    3137    16148            l@           2606    763562 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_ladm_validations_topology_tables.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16464    3237    3085            m@           2606    763582 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    15946    3090    3085            n@           2606    763577 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3085    15936    3088            o@           2606    763587 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3144    16176    3085            p@           2606    763607 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3085    3171            q@           2606    763592 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3085    3158    16238            r@           2606    763602 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16319    3170    3085            s@           2606    763597 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3085    16272    3162            t@           2606    763567 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_ladm_validations_topology_tables.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16406    3208    3085            u@           2606    763572 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_ladm_validations_topology_tables.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3180    16350    3085            v@           2606    763557 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_ladm_validations_topology_tables.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16444    3085    3227            @           2606    763654 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT     6  ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_ladm_validations_topology_tables.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3090    3091    15948            �@           2606    763659 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3143    3090    16171            �@           2606    763664 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3153    3090    16218            w@           2606    763614 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_ladm_validations_topology_tables.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3086    16069    3114            x@           2606    763619 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_ladm_validations_topology_tables.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16309    3168    3086            �@           2606    764046 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT     2  ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3116    3131    16125            �@           2606    764062 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3120    16132    3133            �@           2606    764051 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_validations_topology_tables.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16362    3186    3120            �@           2606    764141 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3133    16132    3134            �@           2606    764146 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3133    16132    3134            �@           2606    764074 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3121    3133    16132            �@           2606    764084 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_ladm_validations_topology_tables.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16092    3121    3122            �@           2606    764089 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3123    16132    3133            �@           2606    764094 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3124    16132    3133            �@           2606    764130 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_validations_topology_tables.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3133    3225    16440            �@           2606    764135 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT     *  ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_ladm_validations_topology_tables.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3133    3200    16390            �@           2606    764099 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3127    16132    3133            �@           2606    764107 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3133    3130    16132            �@           2606    764125 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_ladm_validations_topology_tables.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3120    3131    16088            �@           2606    764112 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_validations_topology_tables.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3131    3186    16362            d@           2606    763514 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_ladm_validations_topology_tables.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3080    3079    15894            e@           2606    763519 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_ladm_validations_topology_tables.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3082    3081    15900            |@           2606    763649 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_ladm_validations_topology_tables.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3089    3090    15946            }@           2606    763644 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_ladm_validations_topology_tables.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3089    3090    15946            ~@           2606    763639 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_ladm_validations_topology_tables.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3089    3090    15946            �@           2606    764217 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_ladm_validations_topology_tables.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3142    3133    16132            �@           2606    764222 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_ladm_validations_topology_tables.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16159    3140    3142            �@           2606    764212 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_ladm_validations_topology_tables.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3142    16372    3191            �@           2606    764227 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3202    3143    16394            &A           2606    764558 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT     .  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3163    16325            'A           2606    764552 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_ladm_validations_topology_tables.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3234    16458    3163            (A           2606    764568 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT     0  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3164    16325            )A           2606    764563 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_ladm_validations_topology_tables.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16438    3224    3164            �@           2606    764250 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_validations_topology_tables.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3194    3144    16378            �@           2606    764255 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_validations_topology_tables.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3144    16408    3209            �@           2606    764232 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16462    3236    3144            �@           2606    764237 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_validations_topology_tables.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3231    16452    3144            �@           2606    764270 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3165    16283    3145            �@           2606    764265 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_ladm_validations_topology_tables.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3201    16392    3145            �@           2606    764260 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT     *  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_ladm_validations_topology_tables.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3145    3217    16424            �@           2606    764283 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3146    16238    3158            *A           2606    764589 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT     .  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_ladm_validations_topology_tables.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16370    3190    3165            +A           2606    764584 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_ladm_validations_topology_tables.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16388    3199    3165            ,A           2606    764579 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT     @  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_ladm_validations_topology_tables.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3187    16364    3165            -A           2606    764604 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    16238    3165            .A           2606    764574 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     \  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_ladm_validations_topology_tables.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3165    16386    3198            /A           2606    764599 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT     1  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_ladm_validations_topology_tables.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3205    3165    16400            0A           2606    764594 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     I  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_ladm_validations_topology_tables.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3165    16424    3217            �@           2606    764299 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     !  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3143    16171    3147            �@           2606    764294 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3153    3147    16218            �@           2606    764288    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16382    3196    3147            �@           2606    764304 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3147    16238    3158            �@           2606    764309 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     K  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16283    3148    3165            �@           2606    764319 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     f  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_ladm_validations_topology_tables.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3165    3149    16283            �@           2606    764314 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT     9  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3149    16348    3179            �@           2606    764329 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT     ,  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_validations_topology_tables.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3207    16404    3150            �@           2606    764324 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16446    3228    3150            �@           2606    764334 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_validations_topology_tables.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3150    3192    16374            �@           2606    764344 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_ladm_validations_topology_tables.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3207    3151    16404            �@           2606    764339 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3197    3151    16384             A           2606    764349 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_ladm_validations_topology_tables.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3151    16374    3192            A           2606    764354 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_ladm_validations_topology_tables.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16466    3152    3238            A           2606    764359 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_ladm_validations_topology_tables.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3152    16478    3244            A           2606    764365 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT     1  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_ladm_validations_topology_tables.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16277    3152    3163            A           2606    764385 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_ladm_validations_topology_tables.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3153    3195    16380            A           2606    764380 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_ladm_validations_topology_tables.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3210    16410    3153            A           2606    764375 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_validations_topology_tables.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16424    3153    3217            A           2606    764370 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16398    3153    3204            A           2606    764390 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3154    16218    3153            	A           2606    764402 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_ladm_validations_topology_tables.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3152    3156    16215            
A           2606    764396 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_ladm_validations_topology_tables.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3156    16476    3243            A           2606    764415 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3157    16238    3158            A           2606    764407 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_ladm_validations_topology_tables.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16360    3185    3157            A           2606    764426 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_ladm_validations_topology_tables.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    16468    3239            <A           2606    764672 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3168    16238    3158            =A           2606    764667 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16238    3158    3168            >A           2606    764677 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_ladm_validations_topology_tables.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16167    3142    3169            ?A           2606    764682 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    16238    3169            A           2606    764421    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16426    3218    3158            A           2606    764448 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_validations_topology_tables.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3242    16474    3159            A           2606    764443 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_validations_topology_tables.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3206    16402    3159            A           2606    764431 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_validations_topology_tables.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3211    16412    3159            A           2606    764436 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_ladm_validations_topology_tables.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3235    3159    16460            A           2606    764453 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3159    3144    16176            A           2606    764463 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    3159    16319            A           2606    764458 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3162    16272    3159            A           2606    764468 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16325    3171    3159            1A           2606    764619 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_validations_topology_tables.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16376    3166    3193            2A           2606    764631 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_validations_topology_tables.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3242    3166    16474            3A           2606    764626 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT     #  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_validations_topology_tables.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16402    3206    3166            4A           2606    764609 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_validations_topology_tables.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3211    3166    16412            5A           2606    764614 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     !  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_ladm_validations_topology_tables.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3222    16434    3166            6A           2606    764636 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3166    16176    3144            7A           2606    764646 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     *  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3166    3170    16319            8A           2606    764641 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16272    3166    3162            9A           2606    764651 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3166    16325    3171            A           2606    764478 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_ladm_validations_topology_tables.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3223    3160    16436            A           2606    764483 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_ladm_validations_topology_tables.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3160    16376    3193            A           2606    764495 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_ladm_validations_topology_tables.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3242    3160    16474            A           2606    764490 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_ladm_validations_topology_tables.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16402    3206    3160            A           2606    764473 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_ladm_validations_topology_tables.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16412    3211    3160            A           2606    764500 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     	  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3144    16176    3160            A           2606    764510 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_ladm_validations_topology_tables.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3170    16319    3160            A           2606    764505 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_ladm_validations_topology_tables.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16272    3160    3162            A           2606    764515 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3160    16325    3171             A           2606    764530 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_ladm_validations_topology_tables.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3161    16171    3143            !A           2606    764525 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_ladm_validations_topology_tables.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3161    3153    16218            "A           2606    764520 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_ladm_validations_topology_tables.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3220    16430    3161            #A           2606    764535 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_ladm_validations_topology_tables.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3158    16238    3161            @A           2606    764688 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_validations_topology_tables.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3194    3170    16378            AA           2606    764693 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT     $  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_validations_topology_tables.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16408    3170    3209            $A           2606    764542 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_validations_topology_tables.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16378    3194    3162            %A           2606    764547 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_validations_topology_tables.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3209    16408    3162            :A           2606    764661 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT     )  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3167    3171    16325            ;A           2606    764656 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_ladm_validations_topology_tables.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16450    3167    3230            BA           2606    764738 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_ladm_validations_topology_tables.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16378    3171    3194            CA           2606    764733 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3144    16176            DA           2606    764743 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT     "  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_ladm_validations_topology_tables.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    16408    3209            EA           2606    764703 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_ladm_validations_topology_tables.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16462    3236    3171            FA           2606    764698 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_ladm_validations_topology_tables.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3231    3171    16452            GA           2606    764713 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_ladm_validations_topology_tables.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    16414    3212            HA           2606    764708 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT     +  ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_ladm_validations_topology_tables.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16418    3214    3171            IA           2606    764723 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_ladm_validations_topology_tables.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_ladm_validations_topology_tables.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3171    3226    16442            �@           2606    764152 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_ladm_validations_topology_tables.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16448    3229    3135            �@           2606    764157 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_ladm_validations_topology_tables.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3138    16151    3135            �@           2606    764162 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_ladm_validations_topology_tables.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3140    3135    16159            �@           2606    764167 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     K  ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_ladm_validations_topology_tables.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16159    3136    3140            �@           2606    764172 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_validations_topology_tables.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3181    3137    16352            �@           2606    764177 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_validations_topology_tables.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3138    3181    16352            �@           2606    764192 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_ladm_validations_topology_tables.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3140    16456    3233            �@           2606    764197 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT     &  ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_ladm_validations_topology_tables.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16148    3140    3137            �@           2606    764207 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_ladm_validations_topology_tables.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3135    16141    3141            �@           2606    764202 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_ladm_validations_topology_tables.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16154    3139    3141            �@           2606    764187 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_ladm_validations_topology_tables.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3241    16472    3139            �@           2606    764182 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_ladm_validations_topology_tables.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_ladm_validations_topology_tables.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    16354    3182    3139            JA           2606    764748 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_ladm_validations_topology_tables.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_ladm_validations_topology_tables.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
    %   test_ladm_validations_topology_tables       postgres    false    3173    16337    3172            �A      x������ � �      =B   �   x����
�0��{�=�l�պ%�^	c�)����z�^�R��v����HNQ��<�ω7�l���^��;�/��+3��ᡭtc�̀@܉F��_�T�����0X�
_sL��qC��!�spR���wcg�oDl�0��T�ļ:ъ+����rc�F�`�B>�p����C� А�v      TB     x�͑Aj�0E��)�&����qK7i
�t0y�ƌ�@��e]��X%�MI�uc����?_��:[U�M��j^��E�N�Q�"����Y�m��"���F����^��
��%ԗ;��Q��B��frۖ  �1ZN��N��d� l�Q0C��ݷ���B0�ϡ�֓� u���́��c�Q������H{���>�
~>�������\�����g/��Ў=�o��L���X�򏺁�������`�2�������{4,�8�g��!�RA~����cS�y����      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      RB   �   x���ˊ�0���S��Z/u9(�Vq%��D�@�)���n�����ڢ��ݹ�|��������z�ݻ�r%1���Rj�A%�
$���_Jc9�>TI�K����Z_u�w�4N� m��f�Ѭ�|$��V�V�f����adH�7��㐦v�qoH��"�:ǜ1Gd+/���A�`�F��!2�=�4P�x.��?�o�Q��V��E��׿GĹ�A��{�����M�"J���      ?B   j   x�340��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X�����TA�ch5ЄT�8�K��!�AY\1z\\\ ֟G�      LB   �   x���M�0F��stm��B㊄�v4MjKh�>���[.fA�\���o&3/FIwɡ��iqY��QV3��oý���D�R+qRp�Ϣ�$�H@b��XY�;��9�p�QYl��AAC�̭j�@��(���!ܰ��0�,P
I���lt�'�#������^��[���r�����s���5zHw6�=���ȋw      mB   �   x�350��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ej`L�����y��PS]�J��f��m��[ijQb�Kj<Lb<XX!%U�!�ɔl��9�K���CY\1z\\\ z1r      UB   �   x�3�4��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���҂d�9}2�R���$S!f�^�S��WHE�ZeI�UF�!�%��aL.#�M2��/���O�L��������� w5p      XB   �  x����R1�k�S�07�����O�L*f<�n�et�C:y&y�Tti�b��;�3&��I�o���d�ev���^��^-�.�벻Iֱ�Y�L�{^4�x�}0����tvw3;�]�M-.��{Z9�E����m���D�i���4�5��}�Vԛ ӫ����Q�S�^D%�	Zk��y�5-��Z��e�]5G�[;{��SgB/69\w�c)���d|S#�q���m��W��m53�#���c�:�QF�?x������I�q�}A���M<�S����/��[x�������0Yu�"2PxE�8N
�H]�̿~"R�i���H���/�ba��>[P ��sLN#����U��[	e���ؙ� m�Q~��K~�hV�ITr�6rD���5ےC�������y\      BB   %  x��T�n�@����2�GkX�!@��He�����[���Q��U������h!R$�$�13;�bqV�ϗ���u���:)ǧM���*��xz��驸�'Ņ��dBu]��Hը�l
�s���)p��R��*���"t��WG�B+�ɩ�cm��-o�b�(����TS��FD�Q��?m��2ĉ[�v��fy~;Wu�zj�ԁt�������f�U�8�k��<@P&�S��'�a�&"�%�Mq�#5'wO�Z��N:�k-�D嫔�����a�?I��ޚ���9iЉ��
�u�|�[#R-�	Co��$�}�>p�q�7��	�aׁم.p�S��!&SUH=��h�c"�ZG��b�)�zS�1;�1�b�O��:^$;�̈�C�G�"|9v<|x���j��a���S�A����jU��<jfF.Q&�����9-���GN)+��-�񞹲�v2��;e��,��d��Q�8-VN�`u��=Ec�8�#���}8��Yq���T]M	<�{y�	�w�?����l��i��      GB   �   x����
�@�������Y,"H�D�@�u�	ە��z��z_,]�����0��1�3g��4���c�N<[%� �n�)Ŗk��h&X
�8�6�oX4���,��7'���*©6��<����.z}-��D:���q1�zeȨ�X��~=4G&�
ճE�����TJ'y��Z��
:��z u���a�c�����5�C      KB   |   x�345��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ԙ9�¹�)���E�P��
�A�&�X`�l�Of^j"�9��B��b���� �.Z�      4B   �   x�32��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2��ȈT�9C�!&AY\FƤ�b�\Z�ZT���
1
��edB�yƜ.����y�ə)0o�p��qqq \�\�      �A   �   x�u�Y�0�o�S@�l�t��x�]E��Err��JS_'ފ󲕾W\�ww��#=�.�p�ϵ�p�C��}��9=�'x����^g�������}$�����>���o��{�ߚ�y�>�R~\ V�      �A      x������ � �      �A   D   x�371���430Q�F� *Ə����2�4F7�!n1�,nl� �@����X���qqq �F      �A      x������ � �      oB   #  x��SKjA]K��a��k��@BV���]#*�T��#�q��B+a.�ꙑcBV��~��Ss��^��n��o�ͯ��j=F���uM>PV�ߣ�����^����b�4[���k�KM����O�B����
S$�"GN�v��S
в���ذ� #�9��[	�]{&�,]�}��^�l>���B����4^�tS� x��-;t<�
��9Y���%goG8�Ĩ����h��r����$�-�K$I#��D�Y�ʆ2��R���.�K=c�c��Ԯ��a���0C�
;��
P��`��g�`���	�b�V"W�cdL�L�;�}�xĬ�'���X����LE�9��^�������+�P����_��/o�4[r'�ͩ�Ӏ{���@��o�t��~��U��?b5��h�q?c�va�ȸ~4�h*��Y,��n�K��tU���j�렧�1���e����ޤ�e�{K(� �+��'1�ó���a���q)t4�29Ѡ��l���#�<Z6mt�<��
�q1�(j��n�\.� ��/      �A      x������ � �      �A   �  x�m�э� ��M1'�M\�g¬4ή��'���`���_|K��/s#���`��'�D�X�X��Fo�{�&rК@Rr���l���A��d
� ��R�H��R�<�9����Һ,�k��@��Z�]>8�'��rV�D}.�h��KP?8)��^��*c�9hl��+W4&���g�rEK�\Q�Z"�:�8(&��r���m�aX�u,�[��Q K��g�qPt`��KEr��%J��3j���@�_6�[�,��!��ee��f)�峢�ڼ��_ˋ�$��_k�����d9=/�A�dy/��?{"�վQJP 9�7 u�s�9H�`��Fb���`	��:?8>Z����K�X�ڍ?�u�Jt      �A      x������ � �      �A      x������ � �      /B   `   x�3��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N�ˈc9�K��z�� x\Ƥd��7������ �F@�      HB   �   x�34���qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ehlI������������#K��q�M�0҈(�Z4'b*P@���J��`C26�I�IM��-���Ƀ��*zx3H�+F��� �$tB      ZB   f   x�32���qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��edl@�9���EI�y���l�I�$�d���Á��b���� �rA�      �A      x������ � �      �A      x������ � �      NB   �   x�343��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP�\��5�\�T�bt1B h�)٦s��A����b���� ��p�      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      5B   e  x���Mn�0���)|����e�.) �]!E�� KI���Eo�5��b�h�.R�<o�����	Z$/���j����(l����C+�U� IH�*&� �N���c5G�%����5�C�nm~�pv9['&�-/ge�ښ��h�3F+Ah%����
�&����[w���If����Rqb9�2]�`9�� Wח/��.�!{���� �%(-����qu�S�^��~�~@k�����\���x�M<AIin�Ӭyè<v�ѩͲ\c02�B�؛y�^.�e&��);�'ܚ�R#o��Ꚋ�����GyS����p�~������h'��5�-��L���0؇A|a�0�      :B   g   x��0��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��\�9=�R2�2SJs &��b���� n:�      �A      x������ � �      eB   j   x�313��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���̘4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��Dk      �A      x������ � �      �A      x������ � �      �A      x������ � �      jB   �   x����n�0F���	�@1c�t�Cńd]SY�����'mpew������;84�Q��A]*U��4jg���9�6�m��7�bQ}�}���	Jh&���D���u��J�/���Y'�L���x�.Atm"6s,�=�]A3���C�'�qQ��z�:�!?fǚ��B�Z�5"wY[�4�]Ck��˺�k�s"]�W@�O&�Q��cKt에y�w�k�{�:~      MB   }   x�34���qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ԓl9�K� �A\�fd�f��Zs�4ϐl�9�S�\1z\\\ (+d�      1B   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Аl9�K� �A\�Fdf��Zs��ehL�qƜ��p�`L�=... hd?      `B   f   x�312��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����	�r���c�ᗯ��fM� �xB�      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      ^B   �  x��V;OA�ϿbK�,c P&(
����N��,��1���t�)�)("����2�kcLH������~�7���p'�&UXSqf\h�'�<��<8o�..�����8&S�R��-V�>�eW�l'�2��Ƥf�f+��Y����:KʐrԠ�)��mLu�FU��l�� f���<�M0���m5_�Ck⌑��9L,*>Y�!�M-N�(O8U�/�V��������ͮ����<9_a�6�f�g`=0O}5��g^���iO�"����*��K�wx�W��:���BY�)���O��܂JWZ����8�.�ʖ�!�a]�_�Z��X�Q��2٠FMσ�������C�޽x����U>k�x5l+�k������o��`���|[�:AڜkL����,?�}�����u�W���/��� ��,˕Xc,<���i[�����ws"5�$�1ev{o��1z6���J�H喂�N�1(�r 6S��J�>�>��M�O���������elxu�%'l���49ܠ��N�R��Jj���a����r��`��C3��b����H��[�C��~(bu �Qv�!�l ��fR[���L�U��?��-�m^�������W�������;�e@�kN(yH��n���S��pT�!*�8�j|�-���Lp"��(>RE����CN��"S��X�c�E�g�s�L�S3I��bxY�'a�|���U���p�9���ՠ���f'      �A      x������ � �      B      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      B      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      EB   �   x�342�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qYPѵ����I�9�B�x�������=... �o�      �A      x������ � �       B      x������ � �      7B   �   x����
�0���S�dl�v^v�z��fP�mW�|_�ԋ�'�[��O�R�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B����F�      B      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      �A      x������ � �      <B   6  x����J�0���)�M?v5D�+�īAɶ(��)Y�r��b��"����)i~�@�����6{Y�2�[�j�N����6���</��V7��7���[��6
�P�t�_ƚPt��ɺx$3��U��$��٪J	�����Y���]Kkȃ�{%*מ��ͱ=|j��V�ө���8f	lL���1�+��Y
s��y�h��w�`���cO������8����V=�9�8p�S�� `���3��M�cNa�g�~���l#!LĜ�{"~�F�!!�)L^�H��
��D�0��f�1��Sn�      B      x������ � �      \B   �   x�326���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\FƦ�;���%�8�H|�CR�������� �t^�      B      x������ � �      ]B   �  x��\M��F=˿�/؀2�(����řd�'l�@h�=c&[�`�Oٛ�9�䖫�ؾ�n~���fwo�E�{�]���hg�M^�@Dr�j�>�C��_}������د�x��~��]�߭_��|���o'��7q·<���NnD��O��8�􊆭of4�a��$�������x�����HY �^���x���L�ʾI�$��<�xP�'"�S����%���9ۊ�����ď�^��f��=p8ۇAJ��Ɉ'��]�J��Q �㧘^��dR����Q�"���"�WϜ�ʖ���/��kԔ�V܀ȧ0��Ld"���P����'�����������e���w!^�3�沇0�����X`�%�1�">nl�X��ý�w�_n���0rk(�#2�"�mF�b�#�x�%���<��X�k�#
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
FPB���*W׌�|k��]-&���{���(�~<��J`���WT��f��>�i�R�����E��Zj�6��g�K�Df�<�������h5�Q`؇,�����t��������P�j7��Ly����R�!��q���ճ��={�o<���       B      x������ � �      !B      x������ � �      gB   �   x����
� ��>�O �Eێ�.��`��u����ڋ��b�CY���>����#�����1 �gyY�+v+y�?���?S�В�g�>�h��(Aw@i+A�a�Z,�^��kI#� ��
\ J�.8�cMq���`Rt����,�y�S�K�ɮ9��võ����=�~ �[H{��[��Oq\�ȱ����?	'��      ;B   G  x��T�n�:];_1���Iq�e�.�Т� ƈ�UG%E�����������3�d���d�ș3眙���7�Y/ۛ�;��I�nn^��}��n�~{�������zs��m/���(������ͱ�P^wO^o%��M���ib25���s���h��-*w���0E��S�sd�����R�4��!��$����rn'q(�h�:.�c�L�去�:��m��I���P���C"�m����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���_��
�#�
 (���*�����I��6�������������/����K�Ce8��q����������(�sG��p'�T	EH�@�Q�mZ߅��A|�=��(xr��TTom��TFdȞg�!����`��	�F۹�?�����ZQ�,[@�N^��Pr�Z!ڽc�TL�r%�<F16I]�N�ċkk�F�Tr�d��� �W�9�"����0��Q�=�`6׏�ͣp^Mh��=�j�,L�S:���g�#Ztu�
4��4a�5A���g7q:<���Mq�������]]���9_����պa�w�x�1jfp[,� �r��-�R�����N�������l%TS����^�ixTH1�ap�����{+=����TI������N}�P����뎘0�:����0@Y��@�ʜ��`��K˱?�
�353?"���
B��\��v��0z���i�S�>�A��q�y�^M�0%�vnU��I@��l����z�gݭ������)      kB   e  x��T�n1<�~�?`Y%A�m3䀴� N�F=��M#?&~D"Ñ�'�Q�>�r �i�vOuW��g篛k?���|4�I�w�b������е��/���l�v���-Yn3?����IsS�:�@%^�WNi�j�e��MG�F9o���>�
��粉̯�%���e��Te'C���d{C�/ɬS����9��IرS��2�Z� �2���"�E?��(��e���o*r�J��Mq��Ȩ���T�I�^J>)�1��'�^�@�(1�5.Ց�D���ɀ�v�D���*
��L6�ڑν0��M���î�f��/�u����Ǎq�5��xh����'V�-p ��>�7H%_�%x`��)Ֆ��k�&������ТT��M��*�T�PZ�`��Fc���f�j�P�X���JT�2�jxuG�$�?�����u�����~��c��¿l.ɉ�(}I�_�2�hi�^E4�l�6|�a�U)0 F�͓y�S"[�˴��ȅ���� ���8�WM�5<ٰٮ��b\��	E����/���cP;;n���2�V�L�GJ�GW�-�@�ؑ��
[����� ���� ��/2fg6��M&�?>�!      DB     x��U=o9��_��Fd�GR�;%�We@�#.���
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
�^Ovv��(��<��MtU�O�>�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyHO��(�#��EO�Qe�xy��Hݹ��^���������^�      lB   �  x��VMO1=;��G��(�@ɑ����=4��V��!1ڵۋ���S8����������I4@���(���{��Gqnr,LzZ*�L�NN?��?O�	ަc��� ��&�tlt��"��+�EUF\NE_L�3\����5��r�4V}3�C!���t�D�r#�����P%j���c��pt��@$g�s��6��Kv\�/W&+�e���q��EI�Y�3������&'��Z�)t��C�����w��f�{�D߯Ҍ�rmzZ��@���X��.�����&p��Zi�5�ӵ,D�fC+�wY��L�Ԭ�D�ռ�>'s���.��euq�\<�[��	����(ƑN��:
�0���<M���W� ���Q{�m;þMg�$Jb�bж�E���=\b���Bo�"��|_��Ε�J�ZG��]��b$����>^Þ�����t�O�Y����߉,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��j"��(W|�-9��WP�Q������d�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���Q��^���P�^4� >���Ƚ]Q%"�2W����u5�4��� �ms��sA�oq��g5eNw�.G�҉_G�ÿ�A_���IgΤI䉌x5<P�l��tY��8<Md���GCJ��:K0GŇ��*D�rˌYJO�"�`х��GY�����X?K�S�)�(|��N���1a�      B      x������ � �      QB   q  x���KN1��3��P��²*�*��4r3.e�4�J�6��#�b83S^6�DN�G����dR,�A���Ҡ�m=��-f�z��z�~���h>�glC�Ig�Ҁ��H���}1.��h�G���oI��t`ՠJVap���KQ��%�j�P5�'Q'�V���è�&7gᭊ��Ş���و��F�F��8����jr`0�݀�@����/g�۳@^+�`[WǏ��F%U���a��Kj�Ya��=v��Li
���,lW�
[!����?�8o<q�C3�Z�����l!ӽ��,�9������_ˆnd�,��������,g�
�2��5Z�u4�Σ�ĳj�{�G�zT��'�;      iB   �   x���A
�0E��)r )-T�.q�օ�B3�@�Ԥ)��#x17*���̟7Û��I�,�v�fT�A'E���^H��j��J�������c��fF2��$)]��LٜL����ɀ�.�U��o� 0,LX0:�)�I�|.0�tL|j
Z7�?�+ң���1k���d�N3����_^���
:����      B      x������ � �      "B      x������ � �      B      x������ � �      B      x������ � �      AB   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���c,�v�\{1�S�q�=\\^�o�A?�{5�_Y����R{�}s_���OY�]���&-�^W��#}�5MàΊ&u>�姥ѻ��^���H���H[����?:��-��+:���#�&��j�Q>(R�h&��Qgm'�%�(m{-lܡA?����y�^[��w~ڑ����)gy��P
�"Pj�E���1p�J�

��AQ@Q@Q@Q . ���0�s��0��qp%�\	�W¹\¹����\� W�+��
p�J0�
X �`X �kp5�k�5�H����׀k�50m 70m�h�h��PH($
	��BB!��PH�&�f���V���\G�f��u�i�i�9F�1~�c\�h G�x/�봌��
	K�{!a+�*q%$K�J<[�6H���Jt[
(��+��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 ɰ��      8B   w  x��ZMo9=˿��1 x#;�{�z� ��`3�S ��dl�C6���M�9�[��c��H��,�ɠ�du7?__�*����w[Im���JQ*k�o_�����.����R���.����^.��U�ۼ.��5:��;������UTi���u��^��j��:bQ��Wj1/ħ ���h���V�T��p]o�)ʠ[��O��n#��5�h��-&��B�B�+%M+}aD�����\K�+z<;�x9ю�W7�����rnq`��n̈́���h�Z������tNt� ���E��k�jQ��Ma����F8�a0��BY��7ZNgnlaWג��E��Z�ҡp����|ºj�+�����tTLحП}4�kXLxKSI��a}��$���5���6�48Y2��&'|���^nv�m��LpP[��ȳ⽚�7�7�:[x�:n]I;���҆�T��0ņ��+�����e�N�<�ȱ�ɕ�2U�-�Н{���c�f��V���C܅Pռ�� ţ���Z��E��s��w7�o�w��/��Ľ?'�[�°X�Ѐr1�[��{s��� �Z��,UM�C[��V�W"� +n�'�c�
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
q�,3gS]l�l���s �]�X~<�Vj�C�h�aA��nݩ��S�X +�r��W�JJh�*���r-~�P�]s��5�4�6V���B�~N��T����콀�	�����k���oI�U.�Q�*��R|"2���W�7�MW����g��&���!HV2@�:=�x���X������*T��l��Zro{�l�,��	�L��|��"����/?�k���2 C��IG���u'��<�b�KW`?��=��|Ӕ�6�#���P(�Z�`V�<Og�t����b�*s::����]`�F�?��Q���?�#�f�z��tS<��:�E�c[�d���E-T(�[|xD�l("b�z��x�nOcs�G+�Œ����]�p��t�GsJ���a:� �X�"��`�����~)���x������R�h      dB   �   x����
� ���)|QكMۡt
�/�I�k_�X�ҹ���_�j8���[&
>gt]?سC��~ÛA��Şg�Ė�c[�P�WZ�h�<��{��g��ɘd�7>�Mk�5pY��+�k~�K͕��\R�      qB   �  x��TMk1=ۿB��Iڦ�5qC/NM�)����@+m�a⟓�C�O��i�8!ǀ�ZI3��{3:;�4��-[�\�h�ƻfy��z�c�,y�,(5�O���r�\�D�_x9l��_f���5ٲZ��+�B�)�/&V�;�C�3E2[KQ�C�)�q�ت�v>�. H��_�`|�
1*�2�%)�@a&��n��ᨆ���AF��d� mH#6��uB�=;2nC+�he9Ε�Ǝ�z&H�#�4�#�d������IH	���÷%�ɚ�������M4>���.[
U�Ǐ�"��%�|�����רڬ��^�[�L%��v���Z����(}���AÉz\Kō��r���h�D�]Nz�^<��|K[�:�+��^�E���6��t<�7N����tH!�� �̖908јʸ�[C��Λ#Ť5�"�����FJ��R�����~~k?L.Am���}�ѵB��*Q��5Cg�y�Xs��M�2o�d�!�r��0`�5�ZL�m�ΐh���k*�#��S��~�k���Y�
zvrk����Ԁ��5�䋔9�m�ig�BkgE���!A��؎�S��l־��!'Ww��Щ�<}�ȣ�Fk��X����Px�CR�R
�'��5�������l�W���G~U��!�5��o��2��A�l�B��d�#�n����?�,�      B      x������ � �      B      x������ � �      0B   �   x���An�0EמS��@�%
�B�u�d�,9�(عXw�r1�$������%��,Ď����k�V��ͮ�,eI�,�ɯ���!�u�h��#ƫ���e!���k�;��'���u��H�8��Ԉc%fbh��s$�dv"�L�5���>�(�/�*�ҋ���yxK/�*
�5��Q�nߑ�{z�E�hN�1ř�v�~��e���}��^v)*m/���p���B�      >B   �   x���M��@�םS�	B�$:�����Д�(H�b�x�9�G�b&fpA�Ŭ��x�Q��Zm�S/v5��бۮ��f�ږ.��l��m�daO!s���Q�q��:p�SO��bM�9y��%��+��0���,p.���+�vD�,��y��8J2����ٺ2���Q��y@/�S����E�3�L�#�t�)��:9Q�%b���<�UU��֙�      B      x������ � �      aB   �  x��T;n�@��S��v�_)�Iȉǩ��(^��a�#@�M��]Z],o��%9�
��|߼�\]��n��V�I�:K։�g���Y=�U=�T����ǳi�9�O<i:�]L��[�w�K��:�>E\ʁ��<�X*^�Ŧ��-�{O��Cd�7���!��b�nͯ�&�	L�{"C���^w`�18q Jj�<�}���r����L�T����#�).td��?K��w<�D���eشp�d6Ԙe�?��5Pb�`�ƿZ.���ƣ7ϣ��w'j�Eu�Jo�_2�8jKw^䀹��(vR�Gi�u�g�b���4�`��6���O�ͳ�ҹ^�r�i�~&��r�qRF�8+Ab]�X�8:H���jH6e*�ʀt.v�ޟ���jb�*�Ц
CǊ{��^���$�#����$�R�U �2XFb�h�+2�KM� 6i�y�2S<37n�����nh�[��^�������nΡ������`�,c^r�{�(j��l�2�A5sZ��.��=}�1:��DzS]�E}[ ��\��V��(<�B�����2���n�r��)N��cൄ�'*᪺s�~A��Jwp�iN������;�(j�zBt	�x�V�ԎG��h�ii/7      B      x������ � �      B      x������ � �      @B   �  x��V�nG<S_1G
P2����X��J�0@4w��1f��3���S�!_�:���/I�̮^W�������b�rr.%;ٜ6�TX���O��_כ56Kj7o��l����FV����f�����'�}i+�������4�oؙJϘ}W��cs�6%*:���E��P�+������5�V�����9%�o)h�a��	���hh+!%�:�i�4���Ɩ̵�����̮�Sm?�p��J��{��`iv���<�7A�`�Z9�t�ō:4b*�*~(X�gKM�����Z���;����i(�<d]�q�6j��sڼ�ߡ��Z�43W�A��Qs\P&u�9a�����$��&��p�;���n�t� ��!׊�RE��>M�l8� ��a��M������t��
`Ĭ�"���-���MR?u��q�|�R��9���������s!�Ω���㓔 Z�<�p�H����>u��][�5[��h�U�|*5�w�k��'o��6�߫�W5����J�y]���8�e�o@�\fb��% ���A-*��A4?�Y�SlL� �4��M��ѐ��Z_9��86�K��8�.c��*�] �0����r�7vc3�ǘ'3-#�1z!p�=���
��sj�r���UG���*}Uz�%��"��	$7�oF `��d�Ϩ���_ȶ��������fr	�í8Hf��x��]eB3Γj���M�����M�ߧ$�&�����v�-aխ��Ef>+�nT�d[�u�Mf�ُ[Ф$m�VX�����
��bo�a\�1�Ō��ٌ5���ǔ�yaF �G��a돩U_Q��&}������������數��@����$B���;:�L�`��-a��
ي��oR�04VUj��&�=�`�W��X��y���\ppz�Ή��
,����ؔ����	����r6k�發G)�'�.�U��N�XH͕ސ�:>|��U�Ǔ��a/(TZ�5���v�6�.������Ou#_%R���Z��?x-��g߃l���ɵ��{�{/�Xt2������KŜ�G�T����?��A�����Q ��/��c���Bӿ#y\��`E_z�Θ����_��ѻ��������      B      x������ � �      B      x������ � �      VB   �  x��T�n�@���2A�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝��ݳᨸu��]y��F�2Ζӫ���i9��ṟ�:*��鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ='gó���O��}���:�g=P9����OjںC�4Vy��N�B����J(`�&:oٝZ
�R4����@�G�X9/uqV�[���b}�ID���HuV�n�6���4��i�C�ݼ`;�f���0�����-�Qۧʬ`o��qJA+��Ed�`KT`-E��j:��Ni/�a%�FN���q8�s�:r���:�����r��
�����Pp���uC�K������E��Y���} ���y�Eߩ���������do�[9t��eE�lC�yN�]��VG�Iȸ�ύ���F�g��Tz��`�����c�{����뚣Yc%V�fFƓ{���!h�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�������_~��      IB      x���MN�0F��)� U�@W쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O.w�*rA-���^���U�R����^}�j^ԕz�=1%4��Ɛm��<{%N��Zc?0���oL��a@p��=y����Fy�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      B   �  x��X[��:�vVq7�IQ"U�l� �}����*����]Ie
�r�&���C�DM�kXV��L�;^!�ɧ�8x��F��ޠ���r���o ��!��1J�GpH9�F��a�0� �5��K�p�o���!@u��_�w�n�T����������ɗ�����vv�(.q�n��q[��{jn|�P8��En����ث���~��R����=�	�� ��m�?��AtHC�� ̾��S^<���O�;��&8��h�}Xvr��8&�NfG~^�%	�nM⛾ ؋���<>�����"��x�:�"_TXێhd��W<v4�}�|A���y����d��{��*��ӝ�M�~&X��Ф}N3�� �űu��X77�,����A�7��'���� ��z���g~�0Z_|ߍIn�t��9#��Y�}��R��:�a�ݲy��Һ$��ů4�}m<�-�(��kga�?R"֋��}�6h������r����>��Z�s{�md���?�I}����{��*���ݎ]}|��T�4�mW���~���݁���+lS��n��*d1u��� 2���K�<r߅�/5'0�A�񐁨�X)k[}�s��i7c�{��)�L7�R�jk��Nx
V�VC֘�wS2�"��A��x�����BXi�>�����L����QeV�}$|E���i���UF�	��:z��Պ�c6pN����3��7�>3L`�F�L<��$+b����B��O���G<��\��������U(��#_�yG��Ab{0|�����w��	cx�t����ߢ��RxI���e�4�)Λ�W�6sp&���Z��5mLmU�Zt����R_I�|�[M�֢
)U���fv�.6�!8^�e�@R��|����(�8J�ї��0<&Ĺ5I���=��`F7W��h ��&)�[�	�c�T���8� 7����!63�	eۜ�e2]Y�MǍܲ�'{�FkcUyn���B���Q��SA�/�V!�^��DX������nI�PFw7/ORLl�Q3�}��dUo�~��dy�|�y����37z!��r����J��߆��t!Ň��:��1�-�0�9�N��]ہV|�z�E~�Z�7ay�S{L��s���P��R|���(�M�i�4[�Z�6�l�b^#�l����.�ꄥ���U!����*ݽgŗ|RG�.��kF����-?eT���yO�&JN�o�g�äe�fK���"�Ѧ�?߾�Q����\#�P����)_k�ֱ�3�㺃�`����f�~��"~f �ٽ��;Z�vcof6�q��a]�mZ�H7|q��2'�u������Bj�Pz9V�*�f���Բ�;Ѝ���`�&�싫6����jG:��vS��eY0L��d<XSBP:�P��vy����׾$�r��Z$�]��}������ׅ%kS���ϝ����������Dq�}�xրR0�)�=qI����]?Fts��!���$��Rf�����W?&�M�%!�MI}h�l�����E�u�0��lrV�ah/���|6Y�u��A/V�w�?�W��tU�j���;Cܖٙ�W�^o���M̓�$[�Io6w����JW�y2�vڐ��jS�'1W�9��V� �♵��d����G����C�����Bo2{�tQFojl%��7�p]�U��R��}4�<�ժ̄^�Ø[��@���ɡ�y�{�Rv��)����qS=����\$��$P��*���Oz1�ލ�gz���'�l�@h|`�u��.ۚ�&1)�����m0��{���r�E{4o��d�/6��z���Q]�����s��`?x۾�C�a�{�̪u?�c�W�F��Jo�'z�!6QV�t�\0~�U��fHV²%Y�]��/�Y?ر&Ld�P�cqT����7i{�9��;W:ǗE6�I���-��+|-��V���ػlW8�q��\���a����A5|G���Klg���x1S2% ��)��̓y�m������t�n�ϢmMLm��:���*����B�׋�nP=�W+�e�+�^�	�����qz�}�.���Y����ԥ�xޭ��O��NO�n��m1C�9�bsY��l��)P#x�/�?���[���[��q_���%�i������*��;��[C��:fC��V}��^%���\�)s��;��
_�|�L>��0�W�"���x�s,�.ǫ����f�S|.�n߾}��4�      B      x������ � �      pB   �  x��[KO�^ï��-M30���In$�&Y\Yj�t�PwW����7^f�E�]����w�Տy�H%�M$������<k�OO��U&r��W�Ly*U�\���^�\%W�)Y�&�m�\-���h�B�u�۔���J�}�e�p�\��*�y&4�g�{/���_�K�ϧ�Q���-o���K��2����%�?���,l�3-s�w���[������� ���8
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
r3W�}� �Ig��{"��S�����~�Xm;{Z�C[*}PW����y8[���/�C�ɸ���T5vW}^�io�3Oԕx��u�6�rY�ao��/����a\�T黑��!?,N�4Od�K���߿�����x��(lpDկ%;�ṹ��Z�8�_�7������_��v���]�����5N�j��Qqt#S���y'EE����J�X�7���)~j���ُ�8i'J�W��@�c`q��%Q��p�Bl�n P��Qt�Pl+�<���d~�.��cWU5�Ȩ�:����b��U�*���qI5��N�L(%G`�a1��>��:��%��V��*��1o��N�~��#�����x�[Q������1�g�T��쨩N�DS<��mkQ�ʍ �8Q���c;�����A@'6�Bj�fW^��tc�%N�0����l7�q�����8v$3H/�9�����)�&oZ����2k1V��_Z����f(2]7t�gqbr�����|�R�.����e�<L�8� ��31��gc.z��Y���9y.�[ѻ}6�J��ӳ89�n��9}W�y@�������9�R      B      x������ � �      6B   �   x���1n�@E��)� ���r�4�jlh�eƬw]p�����b�MPDM��ϟ����/f�=9���ÎUlS�m�}c�l��VvY6�ݟ�|�A�qg��@0��]nF�����4
\#�H�	���i�!m|���E[v��u�ܞQ�C�"�T	����A�RM�MyН�/ə��uT�ק�V��Iz������$!]#;���l�z�<�EQ|漞      B      x������ � �      %B      x������ � �      &B      x������ � �      WB   $  x��U;o�@��_qc�����i''5��@�Og��Q�G���t̐��U��I�$�'��#��Ǐ�|z�]a�����F�//.�?��R=���,�N��|�T��Vט=\g�l����`�ϾM�eռ%�`w��7/�k��ж�jm�(���ZP�a@\���?+�E\��F^���(?�O���;������n�^�OX��p��K�gѣ�(j�ݐJ��C�*e� ?�Z ۏ��*����޻IO���.p�-p��
������nq�;7Y\!:DNo{������q`���~E��1%ի����?2(������G�X$��n��P>4/��>hKJ�s���lR#��#l��/k�+�������ќX���mD�8�Գ.���>*�3�gӽ�t��ҝǼ���Kw��R���1ܖ~�>�r'ҝBAdb�K����9�Q�j 3���ľ߸H�K4D�~B&a�7	G���'z�/��xU�J�Ax0���v�5	%E��b�pc���N	�%i�%��k�6hR��(Q�*Iٴj�J��M�`#�	p(�Fjt�4���)��Y7�K�,f'S�f����|ov���mc�E�xG��h׌�$Z�D<�?c��(O��*Z�b��NZ%�(]��V�,)�wlU�dK4�Z���D ?D3RFpIX��`/Z��^��[Jv��S;��u�Wʖu�ӗI�C�V���ݠ��d�O�~�7�'�=H�������Ա0I4�&�9��A����<?u��\��r�i�U�n��iA��&���?t{�Y      CB   $  x��VMo7=K��?@P-%@[�$8=P��(z2 PܑKnH�P����CO���?�7$wW���t|0ŏ�7�w6�y��Ud�j����ή��wn?.WKڭne\�>[�L���O�)�t��F���架:~Ӎ=܍nF[i��Nۊ���9^;�m�)�B9+hC*b컐F������{�"P�DT$�F�"��!ۊ��#a`DĔ�>�q�ώ7T��V��H��1u%+
�9��fF���RB��#a����i-燽���UȊ�1F+��[Z�l�]����Aօ�h\��%����DK$�K���n�B<<)\	qG�kT���N�j���4;�,���]���������!��A��:�b�JP��>���% ��Z0�|���"\}x���Q|�edJ3��%>��O]��������)%~χ1x�G(�A_e�>�����Z�Ɖ�4��~��w�<E'fo����t<��\�"��=NI� ��q4_K�+�nP8�HZ+�.y4��'�"���Z,�>K�Pb�C�����^,���X5���ı�  ���j�4Ep�_�R�N�A��+�-L�P�l&�OItRN}B�u�ܣ p� $.�m���~<����]߃�3�>S�}�˄�� ǃ���6I��3���]r��^|�q��pk��m��������(�J9Ɨ��i5�9��sQ��\�Ԛa�#�e����e[4�{e�Ӕ6�'���q�c����;����|Xۍ�\�A�I۵����S��6�������7�4��%���Nu�F̯o�7��V�6p�[�=��e�s�E+lYJ�y���.�;ʖ�?V8ӕ��)�S�Gy�<os�t�W�u�/=�QB�,ٳr� ���P%���P:'��BY@V02��܁l߂Yꚛc҆��k��mi�}
߉����0��������)���#6/�)�������x�%���g`�ֲ4\������lV�[��q��͊|s}E�ݹ�=}i�(k��?G�D��D��r����C#������_�ӭ      B      x������ � �      hB     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ����      #B      x������ � �      [B   �   x���K
�0E��*����
J�*(�
�Dx�&%���q.����ĉ�s�SV%i��Ɖz0(A����w-?4�ѣ�ťy�pqL6��qp�ۓ�pgC�I.�Bn2=-Y���fF�`#��g��0S�=F��@`r+�;K(��_[F˪��� '�GT��z��ނ��Kh���[����.�]F)}$cz      B      x��\�nIr}.}��@.�z����a��K^���dW�3�Ҙ)�v �#qD�}:;�\"#�\\����H��D��jބ�
�\�He	�������ؿZk�x'��o�]������z����%��f��]]����߾��������/�~'��t����/�����_��?��8�ߒ�e��9�f�H2q�39P7�)�D�pnW��I��-����#�WO�� �m�{rXo��DK�hj�8;$��-�x<�c׃V�q���C�%R/��� �Y�c1�Ukb���!͑�택�����6o�#�+���X���W6�؞�3_�Ӱ(�L��IG�|����	�u)D�GW�E5����d|�M����2xٔ�N��e�[8�]����o�ۥ�د�t)�ĦɔA�dgc�2J�z|��_Ȋ��j}������ ��Ë�f5�'�*�T�a����=��V�/5۳��w�<�ɽw��Yi�4��|e�,��E,�'�F�Md�S�P�!F��T��e�����i��B��n� ޙRWg�z�������9.	|�Fb�?N�^�)����
롰��-�(��M���ز�$v�|6Aa}ZR��zk&�zLt
�Z7�yq:B��.�����⺟����M�<���G�v�M�b�-x>�$Ƣn���^�i����Þ�_O�=��mࡰ^��at�d�^Ә�`�Q�4�u�G��Q���f�[���mࡰ^M"�E1�x����Z8�">Q�_ݰ����G��mX(l��
����&��M�s5ZKȉ�������O		����qx(lp����P(�vx��*seSf9����y>�[��t�?��H|�HAa�_z����;��
�����W���0��Ǻ�����=|�06@lw�3�
[P6�>�֦V�/��鞴����:@_oc����2��0�"I�?����j:\Z��.�TxlG<���a�:-��qx(l�����n��F��T�m��¹,Rv�x��'x���<E�<6����d�>ԇ>7lF���:�4Qj�r��g`����	^�3�+��6�P؀�R���#D
�Ԕ�I�KGm�e?/zr�N�'ħ��b Ca��Ǣ%�I���X2�5�%���s������>���6�Ǧ1�&R����i�p0] ���6�p�0�����-J�6�g(l�K�fSF~�q�|n�JrY0'𿓜.���{7
'x��Ƕ�1���P����`��3�0�R�4�3v�uo�Q&�-R��������F�$lO�J&�\L���A1�,5��G�����������u�1�}W{x��ưxߛ4-����-`�&xw�l��/�Թ�3�<�>�k�<6BaKH=���/��a�+���S���N���'U~؅��<6��r�	i�P���6 We����a�Q.[�c�"�
�{����Q8����ƴ��}*�O�����L�@������F^r@�3��~^
��4؃:Z�V��/�����џy�#�
e�� D����h��6�VƁ �o,��R�9#�������c]���Ca��km�
I��&�U6�i+���ӟ�a��d���#Xj�fǬ�l�7����C%{y��	+�%�h��5cc�HRȂ�s3هT��T��	k
K~Am��4��n�|G����͓�#�.�ϧ�
����ކ+��4M=bI.\�d�%	���5��WX��R\
a{Z;L�X^�HHjFv�ح��ls���v�{�O��a�p�1S(,ђFū"ld@��0
�P�^�˱Tb��m���{�m�4@W��ݶ�PXJ�!�����Q�1�-0������8A����8���>�6�PX�%�����y�yP6&S�&d��g�m���ǂGd�����P(,�?\KȰ9O�z�:��ԺG���O�����2,��<
!adA�U���Y�eo���<6٥%D��;�p ��l�y��l!�Q3����=���{��1�F��M�
��7��+�p�݃��dIou�n{���%>�L�_'�c�=������
��R�*#;�^�\~f�����˾Ԕ���ӿ<v���Ԛ��`F�L�1J�L�v���t��c|��f�s�
�oM���?��?�t<�-6A2`�6G����,(��i6��v��O�a��¦��ز�y&��!�%���P�MF�]�e��H�����I���6�P����m�
�ѣX8W��awmR�ܸ��?�4}��H����&Y|C�Mm�8؀X�����r�n�ρ8��>������xW��
�t��WK��ی:���<%�Z�R�FhMq������v_�yx(,��#^e3m:�H2�m���ȳO�rٜ��I�,�3��n�F�Z ����s�1��9o����uI"W*�z9���x���t��mࡰ엒R�㆟s�<���Sa-�G	���ٟ<ٺw�ú�a��.�
�az�VE��,�0��Y�qN(%����9�����*��8|��:��l梗��� C!�>��Ϣ�*�����>�wPX&x����لJHRU��IHR���Z�������f��|�񾲁�N�@kxH�vnX�?#�aײ���\�9��μn��W89�9�]ࡰ�����2���1����օ4z����({������� ���N�| /7�lK2A֖��є�����Ty�&7�8����cx(,�i��L H�L����DŠF�Mu~\A1�b�����wu���]\�I
+�"�M����	5�^��>���C��'m���do��X��$+_,�|q σ�h�Y��D�y�[~"Og�\eN��
+I�p^Y�͜6��/��Wd'��aO��og�Z#۰�5�5,�=V��!H�ޛ�52V�YT�|�k�ק��av����x��#ܵ�
+q�,��RͰ����%���� ק>�/�}$r��@��w�<V�3��8�����F�k�_?\x���!�R'��]C��Ca%-\NZX�,q�s����#�D+��e�������և�ϻ�m�� ��h�Gg����a���!��q��/��S9=v�	��_]���]cZ�CaE��fj��9oc��&���Ѵq�W��	�3O�O��m�����J�ʹ<�+
H�
��K���C�����|��p��~x(�ڥGr-Ո0�����:��
�*%#�^�=x�z8�^�e���
�nu���9�y���pd(�½��,R�s�˶=���_��>�PX�Kj-H��D��UB��aӜ[�-�&���{�[H��'�Sa�r���
�a�{!���<�$1��a�S�0����r��a`�篮2����
;oTd!���{K�h�H
�㝣�e���l�%w��9��$��X�(,B��Z���T��Jt��e���2lX�o�:�Pw[PXMذb�HD"���LI[����<��>Ε�@�WI��6Ļ&����S)�2��5Xb?�}�������
_3f�=�s��<+'�oY�
����_A��zD*6�ՑL�j�O�m�l�!0�o��t�nk:(,���
��1�	+/�{�hl�b�����+~��x��y�k�������`^�9Ba�'�.�1��
���
+�����H��Iكn#A �-�"����V�ͬy8�)R5��>�x�����m^�l�w2�=�T�({g�fd�<͏�\
�ٍ���7�늩���(3Z��$�T����9Γ{Ē̽��F-^�}O~^.��V��y:�x<ok:E�Ȱ��
Co\�Ģd
Yk�(=����W��S8k������|� OKFT�=��&��M�6(�f����^^W�և����Sso+� �i�:8�٦l	ec��*�}��h��ϗ��g{߯ذ�I�tH|�����_\�����	��x^,����%,yӆ@i�P�n����T����"�	}�gzm����w�9tY�@��s���:o-��fM��2؏�,�[����O�Y��ӧ�u�Ms��<�c�ր�a*k�A�N* i  ]]��Pr�,���o�@��3�ٕ�Q�CP�AЎy�P}�ՋO?��߷���J�'����	�W�S��[�}��jԠ։��x&�Eƛ\��3�!����o�_�N�Q՟A�I�����U�V��i���pg�F"|~\��1��s���A��nS<p�0\~M�Ș>�#2�ˈM(�j��+h��M���瘾R���z\:uu�_� �u�?�9��Bi�@��*��zl����`޿�>e=�������8 �	�����"~/�*��3p����a����w>���G���,lӑ��i���I�6�8��V��`Ê����1n.�+����KՐ�%kR�a�$6%�a<��e|�^����������}�|w�׺,��Ru�F�{D�(���<dLY������y���Ϡ�ؿR0����H�SР�fG2{$U��#�VǗ����lT:�������~���ۅ���6N^c)������J?B���9�T��<��G�D��>-�}�����e�`�R�,M��q�'���6��k����+;��@'��~J�j
Iu��y�Ii� e^�J��Z��k�K��~�-m�J� :�䟡���߾}�RmB�      PB   �  x��U�n�0<�_�0�8'=N�4@��kj���H����CN��X�;���Q�%9�;;��ϫ+۰��E��$�����W���zɛzA��1����&�`���V���auc}�\�e����Tc	m��.�v/h,�#�܆�hXPg�4��#58��&!���E)U�{��Ԯ5�"�iT����NI�ּFz��母��<@I+�Sё#�tl��Ԁ���G��
�����@� �F5� :ݹ�EZ�&����՛U�7z�E\��SL a�(=o�ʜH��#>G���~"�B���@��p,��h}	X-�^���7��O9�W]�p�jU �$Xh(?U�,�����M�I]�1�5j��EnЦ9EyO�/���]"(n;�(��R<�>L�5��H$_�
S�{Yn��4.�@�q���6��One�"ɭ�O���4:�N� ��X*.��)J��2<�n7�J���t9؜�yΎ�>Z}S�����(��v&�!�ݍ����
�4���r��
�����z�(����n�Oq-��t����bca����
O�%��N>�Y�o�t2�
s����=L}�B������w����a��MrX*� �u��d��\c�|:�Y��H��l���W;�8m��fdyl}�m>�9t���V���D���&�����֣�ld����1By�.�����L&�?�í,      FB   5  x����j�0�g�)nl!�8��ѤNcJ��u	�$$9׵/V�v��N�i'I�������X[E���i��fkdY<���R�t�K�r��ٴ\�W��ʓb��Ί݋��
}$�2�<TxN�]
|I���1E�l'P�@�����n�c������h�\l�fc;�~�2*U���8�(��Q�[J�SB��i S�?�jKa$�ȟK�8pL��X���*m5�xd��;��j`����t��v[����[��o�\��ԇ�$ ���1ц��{��^���V��V�PG6�O�oFC�ۭ��M�,��s�      B      x������ � �      YB   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|v}��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
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
���C`ȕ��w&�($�;+���4fO~�h��F�{�	�x���̳�-.�'�oUg���Ab�����-�n��ٳ�=P      JB   �  x���An�0E��)x�n��]N�h�,� -N�h�@RFz�������I)�d'@����33�ϫ;��D_��Ӱx����[nVzEG�4I?���^-�7��K��GN�[��մ�y�$�����Q�i���$��6�e������7rh�A��|�ޚ��~��� ����g�S{c�z��(DT��^�D����Z	%���Z
Q����$uҦk!��.��}�t�9pb
���y��q�}۾��ʑ��-�klTB�1%4t�Xԋ"�ȩ���;Ψc�e&�:�h�I��/�&X�z���_C>���ڞ��7� Ot01�"���0��Њ�()�P�<LE,D䝣l�o5�,���\T?�Zى�'nؽ}�eP�N��|~v��/���ʧ�p�`��$��A%<�J����{B��r�{��N>Z��l���j���|����<�x�%��z�XO&�+ü�      'B      x������ � �      OB   �   x���1
�0 �99EN��Υ�ZDq*|>ɯj~H�^��	�����M�Ե����Ф)8t�#�f۵�K7hq���J��t�SH,���D��+S�o�_<RK�H����<���H�D�Y�z��jĎ��tկs��y=k9h)�	2S      B   �  x��Y�v�8]����u� H�v|.{��3��H*��?�AQ�<Eww�+q��W����&���g�����.h�I���xZ���"�r�����T�J�����DW�.��'�/��2I�����,��ծxe<��`}L��S�D����\,�b�J��HNY��뇪���ھ~q5����������R�PJ(�M��17��w����?�����7��ۼ�Y'�d�m��V��|�yݴ��J��mSfSjw��eS���k<���Do��%�d�Cې�Is�O,hf/w�H�+��CM��o��f�]m�+�,H�4���Y�F�s��� ��_�h^�3:vH�.v����J�a����}傂P�}�%��D��}67~�����;��5>ۇ���G�-lu�s?e}�{?Ԡ��O'�������|����})�C0Z�;���Z7�o���ɺt|$USt�BR	����o�iM����}�1W�)�ÿZ
e���}!�`����lfJ#��8����>��ᙧA���q1x[� {����oן������fvW���ha�wς��t���� |?�G|��������;��Y�ߤ��RߧY�4k/��7�&�h����}��ږuC����j%��G�Ţ9I���x9v����|��a:�y�ￗ���c�k|-o�t&��-�����`n�>�@L��^~b.��3Ӡ	)�+�e��b.�Wi8�����o��^�)���D·�v�|�mC��J�{<�@��̪Y����Ӫ6��}S��F[�U�z�,������@]5� �̃������N,����br~��9Y��]��C��)�CC$�2J��@k��ȋZ���R��O�6S��>��]��k��M=TU��yY@�Mj�Y��<��+*��wBF^�4�Mܐ�̝��f����_�'�����g�	�R�֦����ӵ��?_�+68'���j����{!�.'�z�hZ��iRb���yDΈh����}��׳��W��	
��Ȟx0̃���S�_�<�o�U��sѦi���,v��y��<����;=�5K�A���7�28[���}�C��Y��pcf`T�����͡��&�d	�~̞���]$�=������6 �u����Q�ZVp�f��s�c�19��!�ݪ&c~���,K�?f�Y����oJ_�Y�(��g.�.�!-��=�E��u�b�$��L���_����vV��~�ӈ�6	h�x9�#)[m$���Z�9�1C��ym���s�O@b��d*"��Y���:&�G���հy]�����ᣗ�u��8P�Qr�E����[:+m� ��ޯHw���ԥ@m����Q����r����\�ך3��D��K���PRۉ#SNp>�>ԡ~�tv�׉ N����D���)�����>��{Q}�+JI?�}��/U����In0�:k���6�����h��}�<���xG�!=��N�%i�˅��z�1�����'9=��۴K��ݎ��;�4�����H���4�k��'DIߺ��� |>��Q��<؛|��д���I[tM�-�YAn�⎒O	��	>�b�z�Ȯ��$*i0�I,�bA�j�G�%��9\_?s��5�MI)� V;G��x��jW����O*R�U�f������:��	�\�Ӿ�N#�>=��B��3��>�哧;��z�i����"��oʴ����=w�ǘ\7�t����&�̲T/w�7�4��ƞ�]�Yչ�Ȅ4�z�5!\�<Y��}}2xp������4���"k=�3$r�pnr���>�Wu��7Z�hG��N<���M�Q�`�Eh��F���ߍȊ�zu<Er����hI#}��Q쁼ɧ��c�.nVfs�ii��*&�^�i�������~y���ׁ����l%��Y�e�w<�6�ʙ�k|{K�\����k�什���G����%>���hcʁg��ts��2 �5lu���O>1�9�����:���ف��^�s���!gG���[�:�SM�b sࡴ�i��1�V����жU{j�������������ܬڽ뵯�g����x!�V��r7|���3�/�L�-w+�&3��iC�o+�i9�ը���L엳1t6�Ϟ��g�,=��{u�b��]Z8���j�F��}~�I��{ߩ���'0��=�О���|�z�?�#>�Qz�Q|������昪t      $B      x������ � �      cB   �  x���n�8Ư�S�����	���*lW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>���;���{���n��F8���Ʒ�ޏ>�gc�2�|��?;�G��4�	�X��L�w��1a�IW]���j�s�9Cj�ЭH���v��qL�A���꿜��b�D��CD��I�FŜ�c�.'�Y9I�DX>.^�"�7hB%�(�;F�8�ݓ�7p	�7�:��:�)�9~Ƃ�U���%�m�{���,RA~��B@�w�Fs$
	!s�5���&��G�y!b�_�DlF�El"KD�^����|AS��S���]�	^|'9P�pF�t�y(��J�2A@�7�̸t��3�gF�Ό� �"��U�F�E����[��"��A�d��VSCC��\b=Y=,�A~��"inW0�\`��0{�d뵓m���y¡��K��C}}����Wqn$\�s±e�]o#�o��]����i�:����s�a�J��2
s�GI�1�gC��]�j�w2/"xLD��5��kʏ�
�w:��S1l�bS��X¡�CI�s�KO��x.3g+�)3�e;��V��h�T�_��g�I��%����=+��!����IC.Jw�#XU�=	��jL�0ܧ�����r�oߞ�����fW��=J��Q � j�^���ɡ\k��ʀ՞�}c�Fp��o�.^� ;)A�4#"%xQ~�����'�e�B�@t�*R�x�|��s�e�s�, W��ȡԁ,��2�iu':-�¡���;?S���.��~a`���A�j�R]����Z�*ߤ��U���К��:�%+D�jO��:Eo����:�8~�񔈒�v)x���a3r���7�oŮO��ۺ�k5ze�7e�v>5u�����3 �N��9����v0e��W=�W�&��j+:�B~π1�c���nð�����Mz�)\0^�P]�]=����5�:�:8@��8�a�'�ܖ�͠1��z?��SϨ���ԧ����j1ؾ���f���bVk��<�%�y*,�U/�/o��hVo�ޚ�j#�[��z&�Jߩ_��F�ղ,���j�^V���mPf�K��j][ԇa��i��{�@DeԶ�sJR����߶Z��S[�Z��dF�ulqS��LX)3���[�zo��0���S�:H��4[��byG8��D�Ut�+����
ZU�XE��Y�"�Z������i�4.G�5����R��*("����ѕr�P���2W;XwL_(f�)����c�0W <�e}{[5�/���Ӛ���VߩC��LX�-X����}ޑ|��Ŏ���cJ�^78o�sObk��մ/0��^U �y�g���n�:[�vf��2�Cgkʗj����ޅsj��$���j�����pjؗ�-~�r����\��'s��1h����̵R��|ػvaN�~�3�f*����kOu����GX]%�~w2힜����!�      (B      x������ � �      SB     x����J�@���)�JI�^z�"�
��
�twԑt&d7E|-�s�HROJ�m���ϗb���8lĔmC,	����U����d*�0�����W	���6U���Q��CO�4)x���v���t�q��5���:�':��eVl�Yp����D�����l��XB;?ߣO��,ʕ�f��xd��/s�80@׳@���>���<��{�1�7��7�d|�A:�	!�`�[�4��m$>�[b���=`�]�l_����L1	r��8�`�̲���2�      _B      x��]K��F�>K�G;���/�c}ؐZ=c�J�K���"XM�Da�`��7:���W7����6�̬B$-ɘ��ݍP��@������U<;=y��-l�fO�<KM��b��ɳ7�?�=��ٍif?�̎����~�ݏ7��_e�{��_?�����if�'����E����l3[�zVf5}����[<q��葯����<�$���:�[$��m���I��:���$mm��UY�'˷�<��̳��o�	n��.���.%4tm���w����c�V���U��ˌf�g�ʕ�]�E��U�[W4D����L;9̴�bv�3fNgw̾�Y��|��4�ۈfpt��K���[���1|�
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
?� ��������I6�xs�y�xC��˿�הw���ɒ��c`(�t����~�`C�p�TCf��T��e���~�mqO��/=*c���1/�}�q�R���gr,ڌC�b�U��ύ�n�v3M�~4�Ce-2���l����������;���G��4I�RO��{����X-�� �F��ȱ�?ef�'d_Y����Q�sg4C�ȣ>A{׸)�٢�ְ՚��֡2K#�|������x	�      9B   �  x��VM��6=˿�����l�osr>�9���I������s�C�[��c}3e;m/���Λy�7W��P����Y��~����z�ެ�߬t���ܜ��W��V�M����Ϋ��R����d|^��Iu^%�Z�k�[�T��e�WM$�c��<o46���n���'���6�r:ay?|K����J|Г�f��iy�v��I�g^�]��7�� .���c9���h�U�1Q�#?!>���@��O?����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۽�B�O�؄8F~�����̋j�#�[G9����=����Z!���޶6rAdJO��V��	I��iN<6%z�xc��P�3P��CqY��q!v��[8�r���uk�O(���ش�N�����BDπ߮K����y�^U����K���)�}��I���8W̷�ΐb:;4Ꞙa:C)��h��� b��|�z�(!LJ��Bb���!��y���{�V��.�:]�&h�qNȏ��>L;CZܞ��zC,3��7Ys�{�h���˙S�E�S�\e-Z*2p,���y�wp%����]��:x��'[(�����V
��O$���J��-�}t���v9/��:�R���
^H�����?���,S�P�3�9�����ż�?��M��_F�X"���Ӫ�R�����=Xz7�h*��R�T��ݢ��2���%�cL;!]<K�⮕�����[����δ��W�p*��L�����R�ɺ+3&�Q{-�7X�!�|[K���5�"�<�����s���E'7�ndO�>"�$K���;�����!K��;~�A�ӿ;�PFz���$��3syQ}(��X&�D��>o�������&���Y
��*�;� 96ݾqY�w��<�B�.�	z4�N�-@72?
�Y�;�5�^8"l����a�:y/�9��������%�D:x2��$��Z�YD=s�.���o�>���>�U�*��y�Rg���\����%�y���E=��k԰z��[`�a���9Ϛ��ͻ��FF��Μ��k��le1ʽ��w��1�c��<�BO��Xq�Č^�lC��;�Ca��H �9���/�óŗ��b�z��$      bB   w  x��V�n�6<;_��0K�h�=�N
,P���'-�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�z�q<��ѝۿ�a�]�|x����׫�٪�4���^ן�'sr���b��s��/���cM겯�fA��S�b����e'�NF�|L�	��e^��i�F�X�Bl��y�-�Iy�Z����5&��՞�D�S�`��Q���^2�X0�6����u���/���m݊���Ê	!�v�Ï;���l�F����r��m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,��bm�� �r��
�W�W�W�W�R�U!Jnn�W�+���Jp%�\	�Wʤ�$�u�ez$eLҘ��ı�&5%!%e�!�q�8$��L����Z���7i$�%BJp%BHP"�D	��,a*�qM����d$�&���<{�+d�_T���W�����0Ȇ4x�f��Q�joN��OC�	ac��Gݚ0x�������]`.��!�X�O��JW� ���Hk���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
��߯�Eߞ�.����i@51b?�C�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f���R��-���al��ó��Ǳ��/~}�B;�Qظ�ac�a��	�krg�쫉�;��+{�^�5�u!�)�>r��S�H��?�o�C���?�ߺN׃9�鸻����z�$y_�$���p�GkҾ�h.����u�Պ�6_F�ˇ���Ɛ��-���Ű[�O��q�'����uhG�꾷����[G�e�1����!˝���1*��kLZ��M�8�c:J�9�x[N���a<���<e��z�����x�xQ��_ĺ�{@ _ѓ�U=vC�Q�cLF0]BP�-��L��	#;:O�}�nTt�e��h���4���`ͨ/��%�Hf�[,�8�֐7���&�(gם�zch�;���D]���7�w�����4yҡj��Ϊ#�z�E�
jŪ�_/<�ә�s�Chq�r��,���nuss�/�A�      fB   �  x���Mn1���)�lÈ�4?�"�@IەC��
�8�4A��� Yu��\�����mw���̈|��xt�qrӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��pF����SͲ8;;y?=:>~���[E�C:�{LZG�gT�E�}b��B��$/�4�G�@ւ��⑚��#�]�\�"CL�"�q4��XP�g�d{��`%���d�*�V�ѭG�-H*�.��$_%GN�?ў�����`\�x�k|�:�*�ߍs��m��g��#��{��2�+q		���l9�ɿmh�KPl�~��.�ee��U}��v���HC��y(D_Oܑ!KP�����*:4�x�J����Q�?$��Q*a@M�ۢ�W��4^�l�|����uNa����Ȩx`���W�\�C���!����T�X�M�#k�W�T�ֹ�;]؎ϑ��u0:����O*vT�f��*�՚QZ�����^��}����"B3�:H��r�ߥ<y�R~����[*d��v⡮��!&����|:���!�O      B      x������ � �      nB     x��U=oA��_1e"Y�8qjB$d�$�%��-x��]�(䧤s�"E�.-,on��X({����y3\�wiQ��Tn>�!�.�醴�/���/��N����fS���׮���bdJ�#N�*�e%�e1���8��t�����q�d��g#Ss����y��[���*��i�*�Ϊ
Y*��pr��h�����r���%��5�잭��*U.t \������;��L�h�	�f��2��	��z]e\K�&ȥ�Z�].Y[I���gGv�ϖB�������"�<)��T�Y�j�A�C�!\?<"�\�+�e1�̲�W4����U�L^�y^$`cE�p�5��5����y�r_P0�q
��a	�PO��R��4|���ƋJXFya+���ù��3�MT�L6���x������QThc��7�������AZ�>�l��(���I�~7v����h;�͛����14�ĺ��Y�	���sI�$�R`֮^�(�����fy=\P�P��Y���,���_��)Ѓ���M�"o����o�4��}7}��<�]6�Ƅw�lۃ}����������B:݇��~UL?On�V��Q��~X�'[�Ev!�rDI��gᱣP�<�\����#�U%�#c��	��s���È��q��)b$�<��.�KMI^Y���U����5�ʃu�V R�[��>G�R�M�%� ��$���g��������}�9�N�%Ҭ��-s(DXK���^��)��eB�f�$Ў�{�|�;��h��Ɯ���z���<��      B      x������ � �      B      x������ � �      B      x������ � �      2B     x��T�n�P];_q?���[DA������5�'t"����J�����c��̵�&�*�(���3^���s3hǽ֟}̃����[�sU�/��Sf����Z�\V���6i���KL���Ǻ8;~xG�͎�Kڑ�˚c�V��ީ��)̯7!�c��A��;n�5�������VZ�n�dU;�9�L���	a#K����0�g���>{d��M@O����U���p�J���lNS@d�N���RZvx�/���6m�zq�� �t�X�>��U�1�ART_����޼$ �gf#!{�i�T���3�6qd�zy ��&
rm5p f��n/7�x�rҀ��\'f\��Jg��Z�@ �̠H�5u~z�g�|zԛ�B��E�69l�v���02� �~��3�-�}\�ޜF����^}+T��(�O��f�%��Y�<�� �I̻8̸�\M��S2�f�B��� M�4�S��GV�G�ɮ�h��lo2im�Ė�V8:hf
(7�kͻ�+]�ޞ����b���j��	��'���'�md|a�"5\�p!�$��sW�j����q��)��^'�x�ѻ���O|��a�O����Լ�Zn�n&*�r�MRF��84�/7��b�o� �      3B     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      	B      x������ � �      B      x������ � �      
B      x������ � �      sB      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
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
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      )B   �   x����
�0���]*J	ģ(��Z�Г�6!�bVi߾is�����0�|;\D�+�s��Q�{R�u���f���S(?��K�U�Gʐ�A� I8��������x|�\���( 04�^�޳հ��)t[���8͓C&35?[��	�V��â����,��1֮��|�����      rB   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       tB      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
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
      *B   3   x�3���,I-.�/K��LI,���+�/�/���O�ԫ(I�5�������� VWL      +B   �  x��ZKs�8>�CM6��=�d�B���T��,��l�+�����mI��<,9�L�dIV������d����y�y�����߲�	c*�hKʌ�Pʻ���B�,�$O8%��,����9;DQ��^��$S$�,SB�BI���A4��� �L�J`�{7�)�<MuO|*r}���1��=�1��b����xO5�lB�ѺܦV�YV��(�V(!ORX�D]y6�ӈ�~�Ԩ'�,�Fu���as/�;�C+�$d{ۘ��L��4�N*+��;P�� 2Oބ�l��[�"��r"Y��J�Q��$<��I�
x6�&q�3�Q�@��%Ǝ���l�~aG��F��}v�J�b/�N�!�XB�z;&a4J��`�g�����#�٦�1���!�B�u�7Sb�d��a л���t�D�%������������oF��d9Y�U/�hQ&��K�#��1uo\�%?��=1/��A��4OFBUJ� JrZ&��/� �8
�<�L�"��֗�r�X@b���HR�y�!pzxZ�T�D �vB�v-��d��3C�I��{�$+�-ܮc��	C\y�9<��D��rK2� ��b�<�s���AEJ*r)r��	qt�b��̙��%�D'�!D�!H|= Q�Q��!@N�,�6~RT����tp�x~���ɭ�=���P@��3��D�@i�#�����}2�Wf��$�����h|���Up5�����(9���P� �S�a',�;#zF���z0�^�d�Sr�8�UW��#�Z[>�±�ث
�c�wV�:��b����j����	.C���܏DV���O�s):q>/f>���P힚hR�i2��4��gՁwժ��-��T!��*�m 9A"7��~�7��D�9i�՗�_`*^ �n"<��e�R��
�*�t�D��/d�Ƀ�q�S޻���yZސ�D*B$�E2G�Ճ��}}��� 7EQ�hӵ\�e����j���Ɗc�d�T�"?ŀ~�W�[�&������$ôu%# Bz��0�7[1��C5��_A����2_i��5o�����џF��Ţ	��-΋A#�d�(�\���No�mg.��J8F��%�p����5dI�Z�1j��!Nz��dϐ\���j)XQ�}n�Y��� ��-g�
f�zSUb����N���a�(ժ�x�_OR�eu��1B�zI�q�;�6")�;դa�;b��n����N4pަ;,�Y�Z(s�'O �]�%XD
g(�rxǧ���K�=�"�#ۄ���۶�� J;��לI�nl;5�R�ClNЋb�������3u��lr��dEkj=1�uM
��.�r���Bc�b����<U6tR7,WX}��d���k�~uGͣB#��E'��H��X�O]P�?+�=|���>�k�1�n,��l�@��X�b:Z����po�c8_�8�aP�w�Շ��n��9���h4���zB      vB      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
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
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      .B      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O���=}���b�������}��G���3�K|�6�&>`1�~�: ������l��_�ᣋz$>^ɩ$ߥ��zVT�E���~cr/D4��?��8�&�R��ɾ$�ĕ�7�G�Ҍ-P�U�L�?������~�����C�\����Eyso��vwv�����=}4���N�p����{��������'�G拧;�O��(^TFo�=:~tqz���vv��F�N*�ɓ��C��(,��!~@�������'����|�N�b��I���c]���M���6����ۗ�U�":��k�:�|Do�����|�}4ݫ+�����o�5jW�?���=���]�^D�p;�����&��� z����[3!��5��+��Y�?vBf���%��gV�pY�X␑�]����vS�6�6�9���: v��l]���92z�{eW�'�b�(��K�)H�Ų!��U����LcXh�NOkǇ��)��`ȡ"��G׳������XL���0��.<��W���D"�v��x��7
�B�F��j�b�Ƥc���V�9yZ�b����D-i�e���S�u�&��8�:�����f�a�af�2�ağ��ޓ����n��M�6�v����D�|�(��WEF���g���J��������1g� �THt�톆������#2>p���>�=��fE"��y�ޔ>�����9T�;p������I:��.�j���(J�PL��<�����4.L�����Oȟ8It.�d<����.7�u+Xܛ����X����2Po�2���0����_r.�ا���@���&z��ǚ���&��$�>қΞ��#�֠�����%����^����\/Ft�؜TK����@qĤ���ՙ�a����&���V����r���圑��	�Y�� V�B5qh�7cʋ�IޠmR��*q�҈�#iWq�
7<�p$$iǒ2��wv=�aW�O#��+��2��cKEf0�q%R8�qn�s
�l��z� &h
��w�i���Pkϵ�9R���Y7ow�K��fJ,xR���A����MԐe�M��jU
-��_KPc4bM�yn�$&��A��e�����d�Nԟ��(�R�'6vM���3�=���t�ʶ!��o�e*���f����"�<���Kw��}��WO.��J��P�tlY.�a΋%��%*<�����3|�"+A¾I@�<�1����N�a�� S���8���d�,čT��&�� g�mr�[Q[�v��Nh���	����Ѡ���N�߆�|�.�I���Ċ����޽]�to��4�{�}���m����SA0��c����f�� �C�𝓉_�gt�ȆO�z�:�\�/Ao�?�m
0�u:'�LP�g�ط���(����4k��Tdf<�8?e��>��ܻwD܌,p��L~�ޟQ���v\��¬��	��<��@�3����A.�;m4�8O��,�[.�XA�p-�����OkR2;`�8�e�����"~/Ə�+���.W�Ff�ƪn<-�s���p�����(xhB�=�����M
�q�˹u�b8.<�([{�n١���P��w���v^SzU�d��g�hF���EM�����qv$ux&��x�~~����wq��K,/������*�in�{�ݾp�=ۣ�Qq�KE�2j���z� &oK@�8AY��Sk��۳�0�ؖJl����s�u@�xtb�������
����7<>Mã��,����E��f��րt�����~f�zl3�{��4�(FN�%�.��q��~��CHj:菙��$Y�߽}����h?�|��}�����^����7g�?�Ύ�/߼:�N�'���՞��.N�9qt</n���qQ�*n�EM�w�j�G����S�����޽u�6�L�=H�����2���b1��џ���"z,|{]��NJ��Wh�����_}�h�(z����������w<��ͻ������A�tܮt�u[�������U0��|�`�SM��g�|�`�_o��G�Җ����9��C�a�5�*p���E�e����X]MCz��5�'�Us��-w��xe;�f��g_�`���S�V��УN���()�gv�E՜�@�=ئt�������H��H(�5�,�Ǉ�O$ #���Bg�$m��ף��㤄�O���N�K�l��H��etS�I�JdP��@3Kq�A4O�"�� ˟r�mc�X�E#�v������؃�@�P�釻_��qr���AP �r_:H�>��8����HL�^��XaM]��Y���>_�^$���"Y�Ϣ[k~�n���)j.��?�X��WO�����_* ���As��^$'��/��;��x�=z8��}gsMf>�3Ē��Ov����m��t"�8���.Y9)e;���e;�'��ev+6��m��@[:3q�M���U�,U��0�v0ׁe��hV1pS� �eY��� �W8�� �}P7�OkV=h]F�G9x�t�ՎIS�� )�@�; �ߏr��4��hN�$Ư��I����M)�H���C��q>W�����>X�.�܅?�u|��%�p���
����;�-�*pXx�p~)0Q��H���&(X��;P� z,�v�W^�=У�b�=�!������%�|�dZ�ٶ�3�r�ڄ4��� �$��׈o�M�3�� Hw!X-���9���Z�/�hm�;���̕���e�6�ŗa�Z�Z������ ��v�f�0ȿב&Z���0$�qU[,�G�50������ ��jL�׏>iCӼ�PSc6��9�3S5�mQu鹹&4d{�Z/I^�������c~��ע�5!�V.J^���^�9���    ��'�Y=bǸ��*)�m�WW�oW-H�@o�5�0�j�eq�J����,}�EnH��"�	D�?���ͅ��CYORu�����ⵢ��חZ���U?Y��9L�˿��".Bc�ȅ�sw���X�b�,��ew��=(�.�V�SO}�:��\��#���U��;�ͣ�Q������"��J��#Q&�H�+	�{��l�CN�d$_©*&F�u��6{�K�w�ͺ'�U��us��.�m���CFj8-���F�������o�-��������*�s���^�X������r07��]2��؇N�k0�w�����7Di�:�@�o�*\�=0Pߐ��b'�z���j�Ҙ^�2��eY˚�D�l	/r{.tG����|L��cU��A�;@V)O����
�eT+�y�=xW6F��nQ��ۿ^:��@���/�T�|�h�'�����`ڐT��'�g��~w0�Z��d�U����̽��)]�ah�qe�;�{�6�{��{��"nu�^.��j�=[A���u6�y�b�yU$0U�6����@�45��m�H�-�b�m��1V~ܾ���5=��4,��l�G�f���Ti���h��˵H���k�]Q׌�/)+��4�W.L�����\4Ww�v���	��9S��vF�vJ��k\��+[t�V��M1>��Up�&~��.�).��I�R�`�U���Ñ����Kp �d|����2np��̷z�|�c���R�>[�#�6N�faznL"�;��j�r���u�K����l�t~�H����GM6$w^�=p�Gو�;��$�5����o�<�����3��Zϡ K֊e�@�s��sO�]�_o�w8���������	��5ɾ_&��^�2˕7�}C��E/�X>�Qg%Vq�3A44r�N$N\��A��RX���us_l���=�\v/e�=�|!�`�t�˱ׂ��X�������9��I�;aù�}��p���Ɣ��N�T�J5��ҙ�t~��u���*�&R����EWh��vw�kDRy����{�2��l=&��t�~U�ۭ)�X����6�a8A���ݳ����:���B�b5��V���JGe�<-̝`LtM�f��^�"4VƎ�|��-�W�'��ѷ��H���]<|��1"�Ӝ�e���xM���I�\67ypI�^��We�ʅ����[�xoo?���$o_}�:��|�д��0��R�I2��,��̝l�K:�~g�c�7����Nf���5�&�������'Æ,��$O�L^]�q�+�q���Oq�k�1����c�="ɹ����V������^Oko1*�q�{ͳL�LD*��=��-��A�A,/������
͢�!������ktw�7v=K7�ˢ�����l���(��V�K�V�4��~�;�����	��'t�=��+��*ɥR��m@����V\�랡�!YQ(�T��b����T�����<cY16�1|$���M���ZW+�Js����(:�8�p��:����	C��9��.AiI��� �{�d!t�����ZZ���=�H��T�F-d���-7��F�[�]n^��D��1�[���3��2�8R�C�i*��g�����۴����X�2�{
���uNl���X�u�X��Z�ZLK�)���� �����<��w��]�M&�-@ױ�����enxu��$���(q*����	A�����9���H��ĉ�S"��ẍK�m=��y��
��V�n��N��e��,~���	�Ɔdq �Z���h UıhUC0����p!��Ktk��I�9̡���=�el��Z�=���M�j�cY&����i<|��\qk���@X�'!ʡ�EQE���Zwу�t�A��<�{�O<d6�`���Oԑ�!#O��*V�r�d��'�Tt�<H~�5t �,����9>ƨ�V%HM�8��_ӴD�ӭa�4O�&��/�叴�W�f����]~؏K}"TA��V��y=�bwoS�O�������ݝ�=���0����O�;��T���dhZv[Gξ"�t-�hǏ�ټ�"���7��G# 
I�jV����A��ӳ��<A��ꊸP\M!���|�uНl@�6�F���R@݇X&��:W)��H�QHTX�vƁ��oa	V������p�A����C=���*�g/@��8�b|�6͇N��C��i��v;ƍ?���\#ω$.z@,Q=c!�&�P���"����'�r�Ǹ�zD	R���"ӸB������j=�e �[m��dß��.11��A�[�J���S��*����Ϛ.Ze��+��%�J�BI���i}`a3�d�A��$��2� �*�[���-H��Hlz���X���W��eʿ��.�}�6��(Φun)��s�1�I�W��M	���ŉ�����7�J����^r������6v�sc���"7{�u������h�n��v�ܜd�X ����I����� ���	q�{f�3O��U�Cx/�����H��-@��~�������s�YZ�o_#4/�q�eZ\��b�m͍�I���)�H�r?ۤ��n6�W�J Gر8��Y=�����I�P��~q��[n��D
��)ʄ�w3�q��%�J�vƚ��Ǯ*�'b"9�}`l��p���=��K�Oj�#�=�7�Co&�a!�#�]T|���}L�{�{F��G����7K}�	ɴ0e�D��؜��$��O��I�U�zi�k�Sn�.����~����Q{�L��LT���\+�E�:�S��y>�U�P�Y�y��ҡ�S���`MG�f��_K���Bj�p�I�ɧ�r�I���Å�i�Z �1�c���'R����L�X	'b�cm����˾M�A0�|'�єP���Ϝy��E�+�g���\3e�E��� 	5�$3z��>7P����^g�8ʒ�:�L�&7��!�w�ؚ�{�����謘 �\ \:���4ޑ�U�\CE*���4�X�R����E�)i�(��!l5�|�%q;�J�W�~}?�v�I�%]ྩ� FR�
��7�t6������d��"��Zk7�yf����a�uՈ]�(jI�9�B�@�k�H���=*D+g����X½2d��*��V��Q��E���5�41.jI9��1�v=f�S��c��I�b ���YgwCkv�G�BrG��Gϟ+={؏^�#��i�5I�R�T���������w���E%��8��G|��=)�x�ʇ.�Ce���Ol3���Li��$��<N���}YD(���0<�?��&���jbf3c[�I�e��[�f�n(���n%Qa��`$��	�&մ��Dy8P��D�bf��������QCic>2iro-����S_%;�T*��u�xP߂�O���fť��w׽T]�H����/�R^!F��0NG\��Z~�Z�8F�pYǂ���K�(����L՞j���z���$���aRT(�L�DcOԭ��C���'[o��xW��R��}Ӑ�0l>B*�~��rq��	�C�V�/�
 �U���bB��&��3Vٞ�S��^F�w�PÅ�X]qJ�WB���&�&�,ɸ ��jBU�<)"�������O�2c:d�;)��B]&mx9�����luE1�Qʷ�
�jw�n[Wj_鉘���=�P0����Tr�~l^��떏��HE��SFA�򡉨����%|�d �q7�V,T�)�<JXܬ)��oЕ�ʃ�O�8A�50����fb��~����d�"%9�.R�
-6dYF�c�.`���;��[9)0�bǖ-��P�1�V<\#eb��R��T�i2u�ݚE���ae�0�<.�}��9
XO0`(u���8�^���t�g�o�	셽0)������Tht�d����qb�
'U�a��,{�)��Z��Q&��y<5pEJ�ҟ���I�P�o�5��p�Jٹ�`�7��Y򱰮GZ�,3q�����p��P4d��{j�o��8 m�uH�
V��U� ��в    �T*�Mf�y�l���X$��ko\LN����Xf;7��X�Sw��k�e�}�������q�Pvػ+��]Sp�n��Щ�(*'/ ��0^G�L(w��F�/��F�gNK�s&�N�ds��Q�IV��X\�S�%���D!PkW��\��I�dOF���Y1E�G�w��9F�u����M��ꊎ�u9�Y�sAYc.�L�B��މhR�]eroJ���4R)��1&y����n�|$p����k�p��H=j�\[��ۓ���K�����U��	ib���И��k��ܵɃC��t�I]nз��R�G�LX� ��*�����-5hC�y&Ρ�{�� paG�CE�.����0�I����!�"�\'y*�sӊ�g��q6CHN%�k�[�h�u�pY�R�q��`
0.�sĀ�k��f�I}�lbS��T�N)~�=i��������Q��/yW�C��k�U��lRY��+��x�73��2����h�U��� U��^�8���!�0=���<�i�ً�ӳ�:'�gV��jL����Q�2�������O���m'c���?3ͽu�"2�T�C��R���n�r��xϛ�����?���\{�<jG)A9�-*��L>�˟���Ѭ�0*@������}#���[鱠��"O�9o&k�
�f�
:�^
�l�T�P���9��\�W�v�/����H�2�!݉��LmP��sObO�[J͵k ������m�+b��a��n%�z����uR�P[��I�R96|P��ę��*&[d�U���>��e�i���n#��Ğw,8��~���Ϗ[p���ô�vȠ�[?H;^�{�y�9ox�������6�U?xH�5�U�!�T@�ij�*�L=Q�h�J�U���0~X�dcg�X}X]��f��3f��e�*���w�c�n��]�ƗY}h���~���ܓ�r9��gWYԳQ<���|��T�U�k;��ھ�R��������}f)�D�>�촠�V��d��M�´���[�C���7";�����:Y�!�x��{Jd�S��� j�vN̟��`p�Y���wY��*��$M~_�C*�}����z�]U��������q<���n����<Ƌ�T�3 �J$�� ��l���U�I&��K��* N��I��J����qQB���3BEꁊJ���m,y�|�s� ��YuMM�ci�������G��Ř��e.�?/~Ţ���I<�3q&�	��`/�8b�ht��qcs��;�6��U{�x�5��Mk�A���ȏ��E�/=��v��}=	�x�ф�*z���[q蠮��?��c4�϶C����жޕǬ�j94������gkA�e��J54�����d�=��b��v�>���?�*m��{@q��5�ar!B�c�Yc"�(Ĳ#.Ϝ��ݵ25�O��q)>h0���}\IWB	�_���R^�䈛��0��!��~n'z��0:>~�"�Ev:�g������<�?���!���v{h��v{h���<�?�b_��=|��/���>��G�}4�G�}4�G�}4>@�4>@�t��hw�vh����c�{�v���c4~������	?A�'h�����4~��O��	7F�O��S|�����S4~��O��)?E�gh�=?C�gh�M���34y�����s�{�v���s4~�N�����9�8����_�C|q�/��!�8������g����'�/o��l!���l6o4��.�� ���خ�� x <C,����v��_��C��!�=D�"���s�Cc����C@��)�xz��@�jiI�I��d.y��Ck����b�F����Ɍ�9�y�nT&`D]F��Y U8�'��.unY}�CY��ʰ��q�d��#�C��fVр'=���q=oŅ��"�[��D����Ԙ��K�ď��Q��ڰ<+��j:��U�}�ꂉ�V=Q��K!ͭ#N��#䕱��	u�*&<��5 +�v�K��y��P�"g��_<�hS�zL�Y�fL���ca�8�&�B��
&��t��u�9�_��Ht/��;�i%m\�6�Y<*P��������{[65Q1��NФ<a'^T�!�ه�K�3���b�?�Ei�a=k��&M�֖���y�Oo�L��ߠOG�N)�q���
��D�)��A;�>V_t��5����<�u!����%|E�!q�p:wŻُݎ�j3	���+�b�;ǦeO+��u�������\��	�D<�yh|f��X�����j>١���Y�j���hފC����~f"�@/s%z��p.�k�g�c ��\���k2�<;�^���z�k3�)q�	�A&8,���fbU�]8��b��'e�Ɂ-�g[@�,�s�� n���*�7��OH"�e�	�q��l�1nS\����g��IN�n0�̬H�!Z�J�5�$�B��X�MAT��BV"-4zK�f��"E0��L���Z:��WG �p�������	�p0���ǌA�ֱ	v�q�`�V.�	;���u�Wc%K�פ��Af���a+-�jUN���>"MQ.:�1MN��q]Հ���[,�¦ �Q���w�-b���?����J��;�o����b���&�!��$����P����i���=��X�ū��+G˟����(%��?Kh�\�����#��&EU(��g`��QQ�s��YL�'�_����~�Q��&i_�m�T�uS�k:	���'u�{BT'7�).nh�>|�ӡA`�?���$;+D���/i�����἞c���X�F	�U<*�d^0Ā�W	��g�z��M#���y���ܗ�s�T_�uԿ�2��|H��WxL��sc,�0���{!����@�]��>�;�ɶ5}@cv�4.������U�ݲ����S��ɉY!�Fy�(j<V�T�_Hm��E4��q���P�V�/�M��1����鈆��|�Ǒ���*�}7t�>�ڄ`ۃ��G���L�-�ᑿ�!ǇγuƷzOpA�mTМ� 2s��ds��<�+�����ӼkZ�!NHL�8�V4W��lH�a%I��Ҍj���+bӍ��e^�u,�h��$~�9��m'���W��d�=��eӶ�v�8O�����%7ǀz`�r�Po�i��]H@�=!��0�ŕT�)��<O$z��%�l@?dCK�=�>�N�q����٭�j�M̫�~גi]J@�=�V�x��	5p�ˉ8^s���J�	����pA�1������X <֬�w��v��m�5��؈�52d+z�:�Dsؙ���ψ��\|��6?Xu�(m��qE�_Ts.iͽ�C�g�����V.L:O׉O��U��@q��D��b�Kl�[�";1]ċX�\!^�5�7�A�Џ�ܵʹ�}��B���}slנΥۀMq����~q�,3F���r�Zi@O�����,��Ϋ`�"��ˤ9Z�x���Vb�j����¸��p��ޮ�p�T�n�k&h�|Ě뾔��YA0�R�z��փ��F�0�bJ�I�$���8<�/6��b5|8�LR1N3P����Ļ0�\"�!L&R��O^�R_W������"7H^؟��DC	
��������vM�x%��NM��S�ĝ:�V��u�չ�&E8�U@�Cq��v���*'yW#�=V���l��(�(=/����@*�TnSg_!��Q`���lN�q�/$���Ի��U�ylP{��e	1����W�fd�	��^c�L9J�D���_�;�Աc-f�"�U�z �j��$�1�,�;���ʿ���UX�ƥ�XكL�:�U�H�zQ��a�b*M�*��ԃ�E�Ky�׀�����z���2Y�/�A��F� ���Ab�2|���|4~&�Ⱥ�VY=�+d��%�&��+��p2�銇�$w�[]���[��p�R(滰��Ae/�l�}�K}U3�(�d��A�z�W:Q�7!֢�H�q<��g-13�3�g�mm��I�+�貿    �繙w 5��@FB��tKa��h���h�����)�-��RO��PT�T��=��N�j��]"b���bkJ���\J����#�*�$F�2?@[]v������w�u����k��U�c$��y�͂}6��F/����fU�I�'.�DLU<A�r
�,ί�E�j啎c�EM�t`b�������Z__;m�:8����vF�v�A��`�\'$�`��ɐ�s����0�x?��*�8�9фEl�1�\C��j�^|�
�,]�D�6�1"���J�Z�`��(k�8S���[),����$xC#ow$�4���2�+�mf���B3|��1l��t��M._Y����Ƚǖ�X�RO�z�}Sʣ&�E�#�d��g��u�T�Ԏ�-|Ωלc�@KC����3��ʉ�X��3A�e+��fj�1�[)%o��:G̖$���Z$��G����|�����u������.������n�zI%Q>�G$3��$N��1/��4��S�K	��sD���`p��$����V�7�'0�%�|ɦ�T��Q�I3�T��d[�xԈ�R����Âm�ގ��"� ���L�M ����q��J����\�x~���k�X6J3����#���/Dy�\kbB�߰�w\�M�C�/#e5+������5�}��Wn[��0C-��Պz$qm(�$G��F$C����"DUd:m�u����+�W+�Z!Q�}�S�}���w{4K�!XL�r�v֚�4��c�x#4?�*�*���fR<�O^#�O�M�,t�i�ƃ�$zT�,�/P�k;��|� T����K�u�(`z[ܒh��Z�؇�fyЄ�sN�ڊ-SdROZ/�Uc��QL�K�A�*?��9���h�_�=�6���!��j�z�_`Q'2��[J��BN;xd�ޠ�ݛ�#x+�2�Ӫ��ꚬ�"�Ǻ�� ���>/���Z�JO4�����pU�[�l�7S<�"& �IhJ~ņ� ���#�����`:61��_�%��,(X���L4����.�cMx{�/�/mڑ��ż�jc�)���L鴂	{
5K��L���$ՠ&�gV֧��#I��|��6��;�n��e��B&��I<fӺ7��O5h�﹭����BͲ�J_��/M��$
϶c����/ҕ���4e@Dr�D�ar�@����S!~N�.0;��^
��8���k�A�!�L�z�NHG���#&=��Hd	� ��¤�*7)�Yq�.�:�HE�����p�ik�(�]i^��,�PyU��׹D3�|��rɪ�̚U�#�������n�yK��*5�k�rk�ob��i�5a�%�
)7�8E����:�"�謏�i>��^I�%!�8Y@��BRb	a�����:;8q��(�!Z��0��P���\�VjNo���KeQf���B�:��	���T�v.5B>ĹeĄ6����\{Pph�>4N9p�o�˛|��	]}&K�9���#������k�����V�F�Տ�� |����p���L~E����ֆ1g_o�(�jAD���:�%O�
	m�ޮQ��X�H��?�/��Xl�Y8�9�ˣx��#;=�.�Ñ%KeoO��[���~��h��`%��Ȇo*��|�(����Ǚ�1��Q檒O1M!^5�D@[���!�C�s �} `۫������8�����F��D�ٙ9�3�f�V Ƒ|Ser"/G�Κ���V���@z����R5veUu��5HoR����������,�$� ��
�M>�Px�%��,�y&���q�)չd񂾯�$	w��K�y=�	�����0��%S��� 9�iż#�^��(4�L!����`!�|���D��xˑ�}�.�?�ݶ�(N`��mnm��	�����5���jk�7lm�N �S���{�G�F�6�$#*�S�a Dઞ�L�ղ�r���?�J֧�+AQzL�Ⴀ_D��}��GWvMHI��g=���CX�a��/?�e�	�dZE��b,�?�����A@�u\����&����:zpL[<)F1��CLW�-,��E �E����	:f� �U8D.jB���N�ga�.�}REC��f�4m{�[+{D'�p4[y�*1�,�\�3�,�䭹��(:=������j�@������o��F���5߸��B�h�����8�D^����d���t�	��F�P>	�>���Q�-'akܬ�Ɉ}���a��]#�������(x����¥�E������wZ�_8y���{#� m�eW$Yi��	�ʸ��&�g��V�ƙ��w;N�SuS�ChGQ(CB����6����,��Ki�ӌ'x?<֗-_{9��P�ZT&}_�P9,���	���T~�K�n��n���8��Ϲ�+�[��P���	��8ȼA����f?��\<'f�6|��t��,���Kh�K����|�Z���gb���\�P�@
*<�"1�^�A�u��J&Yq��W���G���-_H:�h3����k��ÒG��fa3�=S���sa�{��2.Idɨ� }=|c�5�wn��>���G�2���Lb�p$�)0k��V�KB�%���g g������&�J�1��V��$A�����(��'"7�=��z6#�����I����f,y���_�޵1�V�s\�B�8��$z'��8��b|������D�p��S��5��EY��Hd7a��FE��Qn[�3~���%+�U�ag^aCcS�L�S�6/�hhl�	7�L�z�L�e.�晇\t��q��E�,�a���ٍ�O�Qᒺ̌nUʃ �1�6v��^f
-bbNu"��L3����n@K�������8])1P~�qd�k����[R��ߪ���V�T��ǂ�*'N���薐�S��8B�V��{.��/ןǨ�>��YX9̣����3Ύz�Nm�TIuiI�_-l�6C�nN=�z({��!�m���2�F`X��4��(��އ�#9�+�L�˟�dʹJޗZ��4��B���}���Q*�K:��s� �h�3+la@!W�Pz�fk;ͽ~���<;+� '�L,����:$|�C���W�O Uh�����ل���8�������C����J��JM�맵R�)}�ߏ�*z��|
+_S�G�J�+ˢ��H��l$LƣA�~��H�w���=�|k�e��A����~׳��U��aZ�V�Kj5<c_�-G��o�B����������]�C�f�,��5&S���J�1]&L1������EͰ����%'���c��[�u�m����ȼ��p��m���#yJ��c�6�#4^2m쵲��*��b�|�ٲ����`�ٱ�6�����/Y�M�����|t�����Sպ�A�y����+1m�p���*�8��mw���#�~#P�Y��i>0p�Ձ�<�ޒ2OQ����8�9��cLS~��'�~x^s�S81�F��T�5�!=\�k�ˡ�mx�>쏁ޜEo��A:��)$�7 d�w�������b� E�������B���I���G�����Y!���f�rG��8J���l��H���.gɱYЃ'�����po���w����է��^\%��0`�'^�kc���^��62ב%"*96��p04WQ�'�
������G,x):�x�(b�.�Y�LZr�G=�e�����~�u�gOX2�𜿮B׾������II��
z|}�k}�r���Xt6����hT�쌙A�g^���b�Q�8^�l#���L�U^p�Q�"j���{ �x���#o-6�Z�U� 1��8ǅ����C*X�,#�bͧ�~�P=��mS8�bg��hxg;�)/��+�=�ݷsջʥ�"Qj܌�MU�T��AZ�:Os�2��a����ɔ�r"�E�Je�.���%��SM���� ����[�Qt#����DOZeU��M�x�����G��������(���VM^��:3���Y{�:��md�m�ߕ����4T$ߎ`�G�}T�,
��˺�U�y���8*¡�Ae�@2�����    zAWZ�6�d�N`� 	:�X��b#� �1����۞D��P��l	�rC�آK�vI�."�C)�;7�ǖ��H o�4`�>!�y����u^TMLjx��d�][�Z**%���.�^���P���O�.��`t�H���u���ZȚS�7J���*�7��(8d�w�s�K"�n��Zz�ߨ�$�|J���u���<�-4�8։�˟�z�MpqK>�S��;U]	��	���]�n{�+��Ea	�,��8{پ<��������Bw�p��y1��b���x(�;{�w�:�p�e�o��J��#�w�ܚaaN�Rr��6��X|�}JF�\�-���"I�j�n9�gz,pQ'Z��L��]��+s�ۓd!>����+��wM�z6�5��mSk�B����L���]t���]z��XN�s�Bs�$�J3�T�x+	n�墙ַ��A�KCsR����y`����灱F�P�͏�jwm8��>�P9&z� x��	p�r�r���j�ǿmG�jzQ<g�/�-F�?���h�|	���MꞒ�Z�q��ԍ�t�,����"���c=N�/gE��c��w���.5�/�	�rAS��(�jC�Q�j��x����AX�s�J<�ũt���l����(�{��ù��G���қ���� �{�3�19{d=x�������?\_|�E(Ձ�U��l@)�� `�d�J|+!�0�2o�"��E�Ֆb��Ht��c�_�E/W/V��Ǔ(z����@.Z��n�A�����sH�V7�cfkb��+e�E�	@&���h�2��6h{��/���cLbIZQB �_Ν��6�J�V��Aԟ���a~$%T�UQ�k��
��E�ǖ�	����3_W-�H��O-3�,�47?�!w����c�B�L�mA>4=����M]]�>D���B�:͇�W���;F934z��}��u���GCƳ!犰& h���;L�)�ݰc�X��C�>�'(<�uF���.ë��#+��jxƍ<-�]�Kk G�gQM�Z������â���&q�uD��(ŵ�ri��8S(��9�B����]�E���ϭ�����\@��2cK�L9���X�En���?xE�4���u�-)\D�=ԥ��H����RU	l��>�7�ڃ�߼�c×�����+-���ߠA�������!�{��(���M�"Ο*=xej��K��p��l�r|���C#R�����o�c L-Y�OS�����$���#�	.�p���1<<�C�O��ʗC��i�g�����+6�!w��d�����0���a�<���#�|x���#B=zL�܎kH��C"-�R5tb�p�?L���Y+�Y'l���i!� u�Q�w(��@����u��-�I3TȞ���,p�ٞ�ʹ_��J-�W̉X6I���$�D��BF~Ld�)&|?�|��c�,���I"s�g�e6��o9�n0-y�V�^!M���*c4k)n	�]��7���dK���"�d�	%�V.?%��{- �	�-"UneN���y�eڲL��y��6�a�E8��k��b`?�Z��l? ��G��&?!�����
����?���r�UWt'���V�r���'p](�Y�:8Z�w�֗�<�	I��B8�ÿҖ}Ń���F"�讇.[F����Drl��`ˑ�l�Ҭ޼]�g�j{ݴ�LE���ֽ]q�Q�����+~"f�h"�|ƚZ�nʄU�b��B��iRkQ���B[�0�K�G �'�i�Ҝ��_R5΂��?�����D���l���NT7��8	3�yJ/g;'[ �`` ��&G�1�z}I�E&�ށ�����ׁ�6>5�I�����!���,��9\j�����Z���gPt9�y�K����Bo�O�� � �[;�|�ä˙�-S6֏��bQ
;�gS��cR.X.��"��D������a�Nl�u��;�٬O�ef��}t��lpR�b���H��=���Q�^�,@+��L}l��5�Qu/1���I���!���Ǣ����Z`�����/���������������iv�[�[�^j|�j����ox��h&F��� $�SO��A����!V�W�b�m����C�f"�v*Ş�m_�[ܔ�$!�����_l�Q��S��ٵr��x#ttl|�$ƭ;Y.��hv;�߂��zlT��/���-k2�r����f��ߞ������
,�=S��uF<���1��t3��_��3}��ݔQ�����e�����u���^a��=�γi7�i7�u��Aq�un�~3bkڗ:�o����8�u�>���#Γ���x�llw�e�#��4�#�̟� �+�Z�I�`kS�����5jsȆ��@~v{NA�d�q�I��A��zn1X���g5�|��7�3��=�wW*�_a]̗��N3$r ��15D�mWx��1��h�.�q�����dZ_D��V6�*Z��B�+I�D਩j$dSr&����Vv֮ӡ5:ZZ.���Q<�M�'��Nmm-1�*�i��-D$3Ma��?�����AZ�\��]��Yn��K���k�����ZRPB����Դ"ެ�y����`��m2*�|�&��=�`��<P��TA~e���\"��"d�;�)�9ҮۖB��]���N�W*�������pn8���o�+^�ݽHm-@�#��IL��z��3���vr��FHw�s�:j!�y�>ٺB��t��a���nQ 2!N�
��$m�ŷ�B誫���0Y���MmLO(�(��Y��C�ph�%T�[[��I~
1ld�H���,�/��D���Oc�m�1�9�CG�:��s�#��3.�}=~���mr�=�ů��Ã����w��-t���(¢��3���iNY�/X���q+�����r, ͨ΃��z��2H�cj�{S1dW�W��n��cœ�0�B���l�&��7�M�C)4�	C��ր�t���e���x}�r%q�6+f�Ҙ�h�蕜�I2�qJ�"���΄՘��-��&akO~+F�����<YË�ĔBfb���d��V0)݉�~
Ӊ|�%����T��z(|α�ċ������;+�8�Q��u��������ȥ�c\�����1&��7�(9M�ń+�p��w�G�K(�3�.ǡ���8�s�5�HH4�Si&�[�Ĝ���xB����݊Pi?b���p��Oa:5A����K�W��T�J��.��8���q�[;gk�&����?2��@��-<8Mwɉ����8}���k�!�y�2M�ߑ��{�c	ʞ��������M��aӆ�H*�'���%����vnilL�8P=u��$�1s�+sT��vD)C3��W&~�y�z����#5vgu���$!�9:&9�\��U�����Z�	4M�,7k�05yG9��ˉ�Ħ��������%���9�G�O��3u��1�Q㴊��k��-�#�q���pk�y�>m������h�3nEW̨�夻C��'���ތ�uKl*[�o5g�����sDc��j�5��4��]U ���9��&�d5n�[�֍��bۮ;7g�2c��g��s�����m��b�E�Ymͯ��n�p�7PJ��|}�|ŵ�{�O�_T�!���6�O�My��/�#v�a�-0@�}��}���r�<��a�&g�it�ؿ�8b�*��KN�7l/�Gg�b�w<ye㬮,�Mb�J�ӏ�:���ʃP��Uh\�X	A�	$�h�KN�Bt����]�Ʈ̄�ͤ�,]vr3z��]z�j��FPD��'�;��Va�)�?���;�%� ����#�j?�x1<�6��{�x��cv����{S�-�c��M{S����-��6�>������MA�B3���M�V���I���f�bA�U9�@�0�2�n��[�I�q�踆%X���+��5MP�!5���`\ג��HtyJ����pL�KQޡJ"u�;�����jD�:�*���ڶ��|� ��X��H�\�x��
��h3?�'{�K@k_���'��`bџ���Y    "�Vr�������Ͱ�A�-r4O/��
�L��'`��LY�3�6�^{�d���ژ�SdD��9���ݚ4��Gr�m��N���=�,V7ω�O������)�m?ANy�t��^Y/E̄��Ek���J��*����Mhr���ۂvY�1r`�ցE�$#��q��f�q������O����b���p���$e�{�|�k��N��0⼉MQ�������w��YQ�>�ݵ� ��5]����lH@E�e�ZG�o��Ƞ4@N_nyp�@�C:)��.���"O��Q5�?�5�w��'Tp0=|}��4g�В
O�W\2q��7w�ҭG�!XC�u2���9�Q�R\�j���V"c
.��n������{��6�,Mp��+�r%�AL>DJT�T72"X#�,��tU��8!W;ܑ�p���2����],c�EN�&m�ڬ�O���=�����""+ª;Ewǽ��=����u���@��3.Ѱb�2�<*�Q�c�?�Ҕ�A�/:'�4e�ħT��D��zXT#�@�i�cI(��)���JU���BXkf^]�D[��2i�tJ��5_7]
*E"���g3QS2���ȟ$| G�:K9���;䦽->ڃx��A6�z��F���(�:e���sզMֹ��zԩ�
�ͥ�/�Sc=)Fe�2��L�U���f�z�xI_c��"_�r���F�П��]��S��!b�!���Ӗt�n�*(~�ظ��uDPk�<��\ʦ3�י��{�h�mtGi�bI��e�� a$%���#�����{$Ί��^]<k<\�����[&�m�G��B?|	 ���/8�HU�AJeI�g�1�qbd����Kǣ�NX�0 �"sD��%,�"�T���1D&h��K�Y�SU�+7�3���,��=�?t<wx_�^�^����w�{�}��������m��m����K����{�v��ב�Ċ�6�� ��#Aq��H���w��-�{�F�j�0"�`�{`w���
a��N�D{	�wѐ���ϺqN���F�RS�QP����堃;ՠRY� �0x	g�-A�R���JaBo������D��/�@�DtY#=�>)4�n��|��
ǠByK���$0{Wʚ� .�Q��	���})�dA.  E\EҺ����	�ũ����B5>�j1�/��SȔ����&GYw�`�!��`m��=�p�%��␂�^���H��f$��}xz���K�x�"�&��BM1,��C9)�v�ʱ��)zV�T8�K��
�w�'r�c��)[VxZ��������a����&��ʄC	�w1s�ٹ+w�G'�L{�艑�N,�R�&	��`�*cT�(\��.��9���#�����S��֑g(��c-f0��=��J�(L�}Д�
���9����<0䥬��I�S�"O�;_l ����{VP��m僗�u�\�7/��Z-=ޡ8�w�S�G�O����>
ss�h��&����۩J!�LJDp;�CJ��s�`2�7���B�� ���D��"���yB���b\�o�$�nC� $&[QҰ5�i
�'䜋��ua0��etZǓY���K�˿��e�
p���$�fY1���f��(�����d^.~R��(�UD����������H־��?{�1>�P�W�3xB�.��N8�$]��Ԍ�ͦ�}�0��Z�P�q��N���xT%n(j�����A&ǝ��f��Cc5g?�z�v-�k����Z�2��;�P^|�p����l�N�o�{�a�	��,�T������sLxT`��N��~@[�&�0c鑒���s��+fj�%��k�����m�˧���SX��
i�T��GK�|�'��]x�]��uEy�Gdb%�b�B̈́��/t�L�*�X5���C�A"���\KFo>�o��N"�g_l���rX#G�&�8e�-t��B�QL�3��,NDR袷�d�>�}��$
����~��	}t���B�B��s&�"S�8" nPeX!�ܓ�R��Ļ+���-��KI��4�M�t�4��:iTp���`d`��m�
�a���&w7�~h�𩳜 ������S��*�&��=Ĵ��Y�@ :�z\-L��I�r }Z
��!qhX�&���rWL�,��3|��<;2�bY�\V��c�O2n�"����U��I!��C�+���8Q�Uu�{r~@�T��L=���D�0(�U��
�F��
�:Or��:��F�D��y<��tuf��w���,��XҪ��gC�ʩ��]��fȣR�X|���B"�"���4g��DY*�s9�dAY �O�����q`d��_��1Tx*+�=	��>��*�aXb��U,������02�Ø����:�@�Q���ĝW�/�-�ӏ�PhAM��:����eiQP6��A��W<��-�%�@2w��I(1).E{��w�j�e�s�~q��NQi�F�1�h��刣��ٺ����-nx;3����9���\O�b�*�!�5�f�D̩cCl/8Te<%a֜�,�Xm``qz2�+��w��O��\��Z�m,SBO��z]yw�pU*������=+*���:� v��S#���^f��m�E�CGW�@Q)Qid�(^A6Fq;�q����� �AOM��hΧT$g��*�q�!p���y�O<��bN��*�+1�M/���8��p��-�Y��r!|2��Z���^���t"E<b�Bx�%S|��Kk�J�E9�xZS�dܣ
(=��0?6��<��,7��1�U,Ȃ���h�R�6��l2VU�c#Y�b)��iܘ�0�/:��põ)8���0_��:V	 ��!+	��հ�9h&a�P�L�_+!iO�1[M�8�Q�p46$�$������H1����6({P:\�R� ��BR�=� ��j�{�[4����:<�v�w�g�YTh*������P���)%SJ�ןGd|��� �h~+D6es#�E@b0�ӛK�T���q��V3��V�����v}���غ���	a��4�*^n�	!�+�|˧�a3:�uR��x���G���Tk�\M��Q,U�v�ͳO��h�bӓ^s���UPu�>Έ�E�AF���KOs��T0���!�R��X�
Ńq[�.0�HH���t"]�x����yJ ����:%��lB��z�Sc��b�H0�i1U�#�6JM�h�9"����d �ݰ����g9�Y���2�z��!S "'�T.���[���HɆ��E �?)�ǯ$bG`2d���(:]T��ɢtc�?���\HY��Ŧ�9BF0M�����*��ղ4�,���wyaֆ��M;d|A�-�g#��I>5������.~*'���R���j��n���Jp};�L=�׳�e�y˷�kw/5��KVL� ��CJv�̋99)��g��_1|�7�[�i��(�(Ժk�@UD��f�\k�[��	���������rHL��r���45��8�N�jI�b�w��'�r�AoJlz~�x�C}�s��`|\�,�p�Dy:� �U�[�p���u`Я�����~hN5��T�~��pP�m��lg?������ Ā�xX���9�~��88�޶��Q���ӥ�KNزb[�\lK�|K��b�˶����B"y�2��5?׳('��g��fӵ�Y��٫u*�mw���`���2i'��9��H,uL��@Y��%0�d���i]ZC����<X�ՙ�@�� e�O*M��/K'�1�8_s�_q!�Sl��{��|x��|ؘϗm̵'��/t2C���%���4ρM��Ӧ�f�y�E'[a����Wn-ӮS��=��õv.V���X�l�I��9W��f�!exv.��T��Ќ	
L�]��� ʩ\Z��K�<��ʍ�٢��-z��-⫛�f%/�p��%��֣|��<
lУu7(9��7��8���yni����a�4&�_ ��::lϒ۝ۇ�pV���=�cW⟆�bO�u�6� 1X�����=t�P���
H�    �IIv҆���b �.q�{l4>�j��F��Lph��+��AYh���
u�Tt�d�d�/���H��
������~p��W	ԭ���^�*���U���ܸ��)�u���'���ʂ������o�\�c�=0����^y��{�`s�i�:���p�V=_zd�;��n����^N��ر���*�KӒA��5��$1{,@H]��.�6���+~ok�Vp���`x��-ɭ1 k��nb�h�ޛ/�\�&���o��O��3�=�X?�4[��;��-sى^��$z��=��K�y����-"/s�v!��*7�+Y��%�l�A�Ⱚ��U�a��#n�)A��*9yc����g���<��B�s����|e��5e��?����zNo�Bw��н���.�R��f��;�?��"�nεg\�-Ep)i;_��詳�p���R�����m��ٜ��O�\%X3q�	1v�WpP��f�$�E�;�n��u��'x��J��SqC���߄�_�pX����6�ӛ���y����PYs,#�$�6�e�$��B�����.1��0E����~��tJ���8[��؉��ޟߜ\G���wo�.nO���Pð�}�a&�hC 1��@��0��SHu�5V] ��1^�$�b$����J�PY��VhSId���ߊ���Dv�L؁B�����t�y�)���#$��
J+@��Pj�y��`r�O�)`y
Ű��y�q��>-;�;��|U�;8]���z
�uF��SeR0�����=E�%fx��
��� �b����Ub��S*NZ.~��SB�֥?@�*$�v*iyO��c�>�������v�������a0��~<�@��CIgۙ0��à���EWgV?�
�}҇�&Bl{�<g�@�g�p�?��>ޜ,�D[�"NxN��<o�f8M�,�w޸OȒ(�T#{C�9���B�c' J�G��'Nz�瞃�>.���D"��)b/�)#8���m l��;��\��L>�49���1�*��3ȕ��DH<bJ<��+�oN>QdBY��s���h�a��Z��M�#=ˆ���>���ت�@u\�A���1eFa�Kvb�r>�מ]�Xap��j����!�w��?9�S�{���,^�!H>��T�=[�`����P���a�"�H(@��l�T�������\�
|?xCorv�z����F]Y��DW���������X����؛�F9\����m� �M�"WLSݒo�%�yM���W��Y��L�J(+9��5Js�v � ��lr�������-�3�+��	 b�(d}2]�Wh���\	%O�%F`?9��wT9�sş���g*o�W��i�)��3*҇�ڮY��A��xs�ڪ�(w�Щ���� j��l���]� �2�<+�yF1��p�0{#����������y#� � !�+_�ś`�oXg}�$�{\��JND$���ѵ�K��Xw^�cb�(��U�	��`�2�=�B�c�1�$5~���ڼ(0u]C�e�.��T*�L�X�8+ ��@j��fy�t*�,���A���G+��B^�������@�m�Q,}
�<�O��$�#��g�"L��h��b` 
�FO�D�\&��I�X�O��*c{oo,�mx��O�c�(A��R1�T��������
�)�R�%��-w3�M�.aN��d0@��2���G��`�d���DY���/��_���E��Ys�ɘ8�k�W0��4'��2�dF	��y�e\���m�-]�(��8�ԫ �GWP2�&%��T1K�$N#�G%�j�[J�{�L,ƈ�/��yXBa�Rѣ�O$
ﻟw�=�,�x�w��Z٥��"C"��bKy��Zg`;1�(neD^B��Q���YܫP�qb�h*<��)���������d�(	L�N(���&�zJ�f ��1Z&��x���[���S��
= D>��&�~N���/����Ȥ?��b���Z���/a�fٍ��{%���������`���6a� IfO��"�TI;�-�CO�z��l?�հ��D�N�i��E�|W��
 0憌�b(B����t�����Ű3��\��K�������	�V��֬�N�B-4�naF"\^�ƕ�DB�E��Q�����Gd��>�Ʉ�Z�ق��2Y=D�ޏ+ ���/�*Y,��X#3TV�첊k�G 
���[	|������'�h˽hu�/R��,M����3�J^��b`v�p��6��|�v���kCv$�J��x{I��otV�
�|۬`�J��2���4��&g�����!�,?A�)�2ҧ�������؉�������es�J�U�>P���ʏ�G;O�@W܁�'����e=,2��mxk|/�,�S��2;�/y.�0+���϶9�Hz�l�ƣ��*t�� m\�}Hq�p�0�g�;!FU����.~{��mGy)%�gX0�@|��������:�n{��
'J��d�9�
���6��wͨ��&�?W�9�23�5z�ZP*6� k$�'eE�c�w�ag`��G� T�
b��!���b)�e��ƼP�'��q�k3�/���
	K&��|`��GeA�<tȊ�@�}�%@�th�K:Ř���v3^K�,uF������� +��~%�gU,E!�c�1���ʤR�@`.�ŊY����y��d?�4�"p�����5`d�R؇��	�?&�VՆ������笳�f�00�iy��Д>Ds����j�Z`!K�y�{�CGM_��R��6���
�H{��?��AĢN���DL#��J,�!m��B0l���p��3��=g�r�ެ�6��g� ����D@������C9���A1��`}a�k�^5��Z^^�ԯhH3���u�,��F��xHtM�Y�!煝��P�%
pL�P����~A�%����ÀS���ЧF[�oD(R#Re�/��+l�T��æ�j.�`+�,��"�y�S�K�D�nj�
\��9ϝ�&cY:m��Gr�P�k�bp�0��z{��0�y�V�m��Uƈ�9�����~U�DuU *F��wc.���0Tm�u�%�q[ko߆cW����~�b|m�̚��6���/�}(a7�u��*2xv���E�Zq*@ꃲ�Am4�(�x��B�ҹ��Öli�l�p*(�������Ti�ƭ;�W��/q�9�pR�h9o��X
V+0*}s�578L��<#{���B1Z'?�:�����Ɩ����΃�� ����U]R���u�x��ɧ��gX�@E>�	�����QM2�'5_��ؠ�2���L��Tt^1۹��`D��H
Յ}�r�d���/� �:b��%Q3��捹�]�agl��@����~��P�)�"xOtA�8J'�')r���uWO�qdR��\�tTS�݂$)*pBڽs@FX�kjp9
�dD�Y�"��E�M3p�%�bݳ��AG ^���I��`�ZC�/�l�в�R�����v�MT@���,������p[��d�1E���2J�]57�\i^>�EQ����F��{ {����QkK�;�Y�ZlM���#��n<�8�d���@	 �(`vR��?����0@0C��+jhA�:���muNB�ᴍ�Y2���2n�C� �Y�_%�j��靇y��8Y����,��㹍�Udi��+��]����k����<���!�V ��uTl-���L�NYNr�M)切-���1��K����?S`��L����Ϲ����W5��DWXP��@�Z
�pS�X��"[�4g4*{�ȇ���z13�wF:`
Um3�7�8�Q"�Ew�(,K��� �Ų�80��i�-�-��c��P��8���r�")���+��	3��Kz�&29$ߥX���S6��؛��9� ��AϾ�h�ݶ6�Eo�󩉳9���S��)Y8Df��Sm���.�P����+��!�	�A�R�8�"�:j�:�)��[�r(�=?F�Y���2X�a��    8��B7�2˜��,|o:u�'��@��b1X�J_4x�����=��Pӄ��
�|�a�3L��]ʻ��q%�Hq+��ȁݍ��	�	ݐ]�~vn�j���f�VMb�j�y=�y��L�`��Z�/����@(+-B�.���>a��?��x�ԥ;�Pͨ6qe��(���%����V>�,^��1���,?b�	�S�vTXQS'�"�R���<���d��i��=X���%M���B�h��_~rz�1�X��M3�az&&#v���C�*M(&����W�T���{������E��M�%��eb��HEc ��aɕYGEY����يI@9����[O���E��rIl��ev/�L_�h��VI9��q�p�<�\=�N-s���U���K��\q�1���yM�,�Lj���ŏ~��	���r�+��d��%��Bo� ����%:���.}�._����2�۟&���?�$V�h�P�I�S
��ł}nav�֞�C�ֱ�Q�o�l(���BY`n�32�xV8,��ϕ+8��cTR�,���& �,�[�����$`�{^�r�W��[-��$�����u��^��]���]��Tօ�dTfK�q�vH���b794`R�T&Π!�$����Fp�u��J��SL�~�3��x��po��b���Vc ��^[���Ŀ��Xܦ5z98�/���8SkΟ�׸L\F����[� FZ�iK����;ŕ9�y�d���e1-H���/;�2�
|:��O�߭�A/���R��
^k��1_(�椸�aa�?�|����2N{�+������AOs,b�Ě�B������/$�FI����4�O��!�?�
(�i��b=�r�FR���-���굷�. ����֣��x����e�ic*�LL�,O7�hc��^�2́����@&�� P,�r�D%ۼ���>fɈ�� �p�$Q��lF���u	
cD�M�V�5�=p�6K����_�Pt$V��`��!A7�P���Xd8i���?��q��A��m���x�˷`���Y�	
)B!+8�̶��xd���Ə�[�u.���0��^�6�pQ�qV�P��)5&F�������������{�H3��NcJ`�w ��ح�#�-��s`��.`��Y��pr#7Z��Y|�l-�J�`���;��g��b�%��1�\'�ȦF~�"U�̠�+tyFR���8�^�ʌ��c#z0ca���A���_�]�z����([�EN?ݧY�l35	bҁc��Gz�~���c��*��U��΢\.M#��e��B|*��6YT�W�X�$���+B�"�~��}��@�9�=*�&�øڀ�u�g*z�������ZtaH�j�4�����f�`�/�p���H�4�hU�n����(+#������~�mW%������P�*�@����MIp�jrI�l��5�]q3���(+<���a�\`�����������6���M9$�I�� �"������up��P"C[���f�a���b��I�*	(#���(ѹ����f��!s� ���oYD*�2��Ft�)�m�&�;ȧ�d9���U�wwN�5�?��[���D���߄\t#$�1HSh���,���d����߅d���@k����{� ���� ����Y��lc0ޒ���<�E���Z%�:�q�y�q�3Ǐ�[9��[�L��On;�
f�b�g�v�{!�Ŏ�`~c�n倗�9��ܕr��M���B�B���XX&^3`=\�DT��m�l�����J(�5{�Z��E��ے*����8� ��?����A����v��H�P)�	y�����5bԖI���j�D��V)y�;Cˍ��qf似�bor��л����H+,?�R�W�V|�%���UO�(6�*úB��v�q��ȢT�%��DGfY�_�w (��K`��X���*�Ex6o�����.���VCpR�),	揘":7r����R4�l�d��HY�A�hJ�g��R
S�sJ��������ɻ���"�K5��<��#�D�T�`��ғ���1)
��,F��3�7X���l�j�3�g��Q@~1����9S^�"*U��G4��m0���ۗ=Z��%�{PO�Kϊ�ȵ�zJ�W�S_�2�ն�p`CK��E#��.����ς�����F�
�j��|�����F�Fӧ F�*$�$Z�\�jI<���0.�{̨���~�����ɳ�����E�\�!Z���K�M�[��c%�g�;l(<p���d��kT7��V�`'���Nҿ�H�0����>\�o}���N.��`k%^���3ά�'B��t4c� B��9�`�?
�������gK�p8��B��s+A�O2S��wP)��:v��M���ߜapL�'�������=.C���Z�UΝ�W���ThVϰgc(7�J���Q���E�@�T�I�;ϓI"�A����
��*z��8Br�Y���  �]�4�y������dF��`�x�̌(,Ԑ)2i�
��4�Hqc���\���������L�^�8"��Fq|��}s�P�@�o��1��U�J;���c�s���	%��t9��k�س'�,��W�����i�sFeG��~����?�	��솴��.ΤP�e1 �78|P'UJ��'2��D��fi�j�zZ@P���3�'�7Mb�	IRn �.���3����$D�||b�`G�7a��I
��c��`l2��;O�"�t�A�gj^�Z�q�Y2#�>��=v�A�e<� ]v	�7OL��6(R\�}��.�`j�`���8��Qԁ-�sS��Ӂ�p����;��W��L ��<�8�<�`3�)�-G�uN!xױ��r�Ƨ2wؚ;�C�?(~��:��gT����(��܎�B�g�G�9���ѷ ��}Th�r�>���|�W��V)ʒ�S@�Tꆔ㓀d�dq�K�(��d���ō��\����a,���v�Z�B� ^�QLs�	�o`/ēR��g���c��%�CۢL((V&2��R&�AL���`��_� ��&�����6f�P��x�W�'Q�z�}�o�}'����jl�Wkg�B�3�qUn�����mDb@I�(o���+X�ɬa��Õ5��˧�!b��g�	��B�u�Mb]lq Q6�p24ɗ HR��NF���LNS�"��4�0d�#߾����#�:S��&�6�naX�������C
i��.z ﾲΉ���Q�h^�;3fX��>0G����]s�߉-p��'0󓐞�a�䄁G�E'�B��!+*t�P��[���PD�}8��C_x�٧��0!0�a�l��᦬9�G鉕
򢄋�|��o��#�}�4@<�\O�N�T��++)��i}���AG���I$�͈��5�(h7EҐ�����K��l�0���EB8��`�r��%�A34��8�Ae䆸�(ۦB� �@e�^��%��TV"�A�P>�̉V�Q�+H�evE�U�d<T.��Qh��*U?���00F;#����#>i�ŗ���ş�x���J�*�*��{��~���.+�'kh�ْe����I�B�d��<�ߥ�O�Y�B?m���]ʛŌ�p�:B�IGP}��w��m[и/Z���&�����
�I_m�M��D��$gI�%�a��V�����1=�X�$���'�4b���u-�,A�)� 	?sFW�
�D�'J�'F��v$��Z���s��SyKہ��Ft�3%{.�lb����� �8�پ��l�	5pv��<�z�S-��K �'��o�%�/�^�)�@��1�E����>�����=�[��Z������C�Y%w��Lʳl��=�`�\H��۪��0A!3�
�'�9J��y����{W��8e�k�HoJ�@a�I�w�b��{�]�'�H�ԋ���"Gfq�,�`c+�sᡖ�^����#��7Ļ��!P�����^�n��kI�%6g��    C�?�u���&���gI<w��נ�
fM�|��-B.ሰ:���� �J�s2<�g�9Fυ\bb��l�|ěظ�ڄ�yzؠ������\�	Ȟ��ec6���Ϙ$2UȒPXR�3R��H]p`bc{ �Φ �,[3ڼ�8��!���L(Nrj�֭_0��1�+1k��w4��n-?7/�+�h9���bU?Ƀ�DI�J�z
�6925˵G65��"���(��V5���l9�[:Zƀ�IH����:�Go�{�HYK��9$�����۳�ӛ�����A������`w�����(�2����itr�_ܞ]�9��y���T<�F�?=�¦./�[���C!2�`p.�pi�p,���=��i�āזڈ�= ����ǅ�8�2֜�*�ԜL�zF+��Ų�P�hR@tмшZ������j�En|&�Z9�;&�VzED�5Le�-���l�4M�Z�0�z�!��b���@�(~�6%kEY1I��'L�Eç��J}Ɵ�>�>e��U�S�S
{j�z�a^����◘ �E��vQ��W=9�v�H�''�on�O��O�U\�Ko9�$$��Q�x,��ve"KO�@p�4E�		�3V=�[7��c��C��84���?'�0��&
�C��l��|�c��T��Rw'��l:��@��d^r�^mc7�~�m�c� ��ѫ���������?E�b�n�gT�pk�*)Q�&gJ��ʝE��O��9!�y���*�(�ɟ�$H� M\Gp	�w�Z
���S2�i钾�ƇP�������2mFʿY1�FXS�����[����T�������n����Z�$D�m�)[�)�)��WD���*���8O9�p{�f}ߪ�&J�>�L-fޮ�ѓ�_(:މHܐF٬ی�̞z�e����?����}�-�*gu$��-к���z)+<�/\j�o�+�;�/�;8�z�ԚThd��ǳ����M`��s�{$���˝|r �R�F��3ɦ�� ��vww�����K���.�Ĺ?[aV˦����^�()�5�u���� D�S �

P���Ġ���<�gAq�s0*.~�D0l�}���O�30�%}��,�x�����	��������֎T�K���Lq�M&���:ӆ���<�[JE�ced8t89IiP3N�"����g�'���",�޸eShO�m�_�c�L�y��M2��X�/x.|'�?m���9�ɎgI��cw��2&!@�-q��v���	�rc4�I�L\+�B	BL�6B5�U]?Da%@��¬���TR��dx�13D�q́�p�RPN��F�D�.�S�P[AF��5/�P��q&���fL���Dp���������e���y����S�����4�{�����KL^����>V������k<o��Cu>�u�^`㬠}��T�K�"1Hi�T�Ȏw����T�//ߜ�\daCt]b���"t���.���o�� ���#��*��Ҕ�����{4p-CJǏ��ן�"���xk�o�va����tR�������-��r�@��}/W�}f���5G&�\:�{A�7R� �6>�8�����Cӭ��q����#����6,cL�}ı-ߤz��ߧF���S���#��V5Ē9���3��Sj�W�9P���`�r(���ǈ:'�㭐�ܼiE��_ȝeXy�?�Z�n�%73\� p�8�%�(H�D
)�C!CK(N�0�����H4;��+�	�ڬ�����|�;]\�(���̉��N/Ԥ��j�{��Q��8�v4�,�Q!aj�M^�)/c��dr����Ҝb+�P�0��)�c���3�JÓ��ZfKN:�+��iJ�����B3u7�Z�_�P=��A��PT,�P�%�傾�c�xǑ��x@���X��ܨ�D��l��=�%�3�g����kL���s��bY�fr����B����p��"}@���q.G���P�(>w2B,��
�_����$z^� �����`F�Ǡh2�1�?y�j`F�=��߾=W���^��߾�>��������<�M���q:)����+Kǃ�x*���o־L"���pS/wݙ	Q��4IJ�c��)#J�7kL��Ѥ-��lt��gS�"r"��2ȡ��,��F{#2��N��{|!��FC� O?Ɋ��A����Y����Ȳ��{��l�Z���y޸��<�2�t��/�@t����~�t�Q�v��F&�HCxo�i�IR�ʔ�4�� e@��d��yA�XT���މr$WW�v�%�$6�9�%3���u9�J��[�;���B���U;�(Ԃ+&��BB/��x��p���f���Fyv����@;��w�kU1N*C��y�s*=�����Fy�	~�aZR�����,�|�B��8(��A|����e����[?�К	�ڟ7��
7(T�<L�X�ide�@������Z�!�sV�#3ش!`� ��'��P���+�Z�����m� �-n �)e�Vm�����CJ1簼���4�%�d��:�ZRd�K:���6
��j��c�m��Fټc�`��6kC4���4-B�{(A�cTKC�pQ0�Tŷc�q��D�gU<$���O����èߵcO� �p�J�8Q4�y��������do}�Y���D�fa��z�Zhi���i�ve�Ϲ�q�ȟ�ŗ����j�).���4��Ev���1]�a6�&�fs����*]n�KbF�)�>"�����u��8���JB�� ��JH� ����~c��?[����C�T�"����烳9����H��ж�kL���9��m9�5Co#[A��/�4��.cr��`D1��U�9�0�B����d���kT�:ע���������8�m�-~�&��k���kO�:4�h�o��tYҦ��dK��$I��oGPA��qȠݖΆVMB�qZ�u��d�Ð6��1��l;J���|`�����8"�ҡ�U�D�R��5��6w��n�e� ҷ��n�6ը���:Z���d��"IԢAw�DR(1L+���Y��Du�˻����]{o Սe������o�|Z'C�.��0�S4�gZ�D���Xv��F������)7%�h�m�c�q_�z��Iҹ]�0к�	�b$t�r�dc��HR���g0�אG�-�U�����ƶ����!]h�R\j�$h��J�r�r��f�K��k9�h��Z�^�Lcj�2[_<�g' %��̢���Φ���)JM|��ޑ��|R��^��=�ڂ�W��b�����B_���ύo��)�eб�h����D�_
���瀈�����u�Mo�PO7�8d}�Y�����g�N�&JZ�j���qͻ��5�V��M��ɤ�����u�c2�)�t����3L��2(Ջ7���A�/@
#ޒ���I�1�#Og��MB�z�&}�(���N�`C1�a;�]�F�ʬ�u��Lgź��M\Y���{��cI ���ɻ�# %I7s*�(���X<ؖ��eZJr�5���)���[��k�?"�{7�E)uK��m(����jC���:~��s�!��04�0�h���عX{���&����:{J��hQ��B�K&1�]"1*�����V�2��`J���/-�(Y�Qʪ��R���s��-I��I�)k{�_�8u��ڷ�G�Ea��N�j�,��b�#3�Q �zLn�����W�oN�X'����]N ��k��.�̒1N�z�� ����{�>,�!.����Ɗ@}��;�J���UbN����6��T�MDN8hpI��ڏ��L=<0Z̘�A�i�q���xE|�ኚ��ݦ�X̅
'��u�-�-2�ѷ܌�۵1���e`0{ey集�{�3��Z(r%�!� �?9�}�OϨ����-� �:1�c��H������^|�/ؾ�P�XĔ�V�cO�p�Q87�V$�?'�0q�K����p2�Ž�%���?N;^�kD�������.Y�/<��0�I�d&4���g���b���y��kr`ʆ�]f\(l�[%�;��Wq    H}"������Va���|�=쀜r������t�z"D�W5���xc�Z�Sݖ;�|��F3��1���s����}�2���77�NZ&�\�-�m&��d뽨p�؀�O�{�1��<�8_���b���8�j�t���	��0M�����b�Ε�����iI�6��@��P[ *�0Gx��ۉ�l��*�/���9��	ո�i���6��1�ѵ��jf=@����m��m��9�.�����������%����\�̠����?�;�d�oT�'V�h�Ac1u*f��w\;t����.
Gw����p��[[�kH�� (�;����m;-�v=����e�B.�i+�[1��S�F�.Z�]��l�H��v��4��"�3P⇭CPn��]��xK�5�IU�\4�T��r=�Y���z�d�Ў�-U�Q�C!�� �<@���w�����]�q36^�|�����Ȇ���Nwu�G�2
�tp�e��G ���RM<��Rwi��;y_�9h�U=����W���8"��g�t�n
ࡋ/�!��q`��v+�n�F�)���6m�F3��n,4s�a�P�o,���&*n#F�y�dX���Y��vn���*w���t�^���1a
�LV��󯗏_$��8/���l���{W�s߶D����-�'f�����W�E��ǸV�4�uo��wHSPƵ��A�U�	m!)��K�}� ^wP\$2@XR@tM� -n
�2��Po����#$��"8ΟN��u�x��׾�P�:�37v����e��I�H[�:�Wj��E�PS��&@/b�3,s�T����� �� ��ڙ�?'�CT`�I���P�X��OSX;�s�(�[��(<t2���
Q0yjf�-��㤶G��! �>���UQ,˧����]��$0S�/f�����=�f�aI+�CE:��!^�������bv�_'�!�l[�S�V�Z7���b�B�����G�Lˮ�ӻ쨼�o+a���P��L4��8e��XJ���6Ru߇�%�.X���a7	��7�{�{�/WoN.Nnh[~�v�V����.��Qrp�2R��>僧���#��Z� ���@��s@�
�ݮ׳>��3��F� ~���i~�q��u�\+eU�s�����ZB��&>��b놇n�u{�STq���Y��%��, ����J'`��Lmƀk��n��X,)=ц�+	�Ă�w�@�^rY80�B�k#j��\������Q�(�ze��4zl���XI��&��{�MaOcs�ZL�N��h��>��?Aa���uc�� 6�ɞ�_Z���S������p�Ū����K���P���U��CR��-�r3���q感P늈����L{��\K�K8�!dn/����]�%[��@�����3x�o `�����+%��D�`���	F�|�i.6�<.3�⹢v&��'u�")y�-F^{ L�b2O4�/�S1���2
2���"k(��|EI!�Z��>BLd�NG5q�h�o��i��K;n�֓j�u?�^����l���U��Q�|/2�;,\eFTҖ9V�0*�	��G������of�A3�����g=�\��U\�K�t_�B1e�ź5P;~p�(cr-~D�XE�5^�Z�_�Rk�T�bi��*�]!:U[���=ӷ�W5鈢�]��,��F�?
�{�wn��0w��`Ą���N��8������4�n!��o���%4t2 X�%�8 qqR��-A�P�SgC�G��W��0B����]��k﬇޷�����fSwWd��k��a8[0"T�%��>��IP=gM�ь��hY�:�ۆ�y�Σ+r�Ġ��h�gQrU��;�Er��BkP�X��d����Al��(�v��øJBᑄT�?�Yˮ�,.ɶj
�2lM��*+�$���Ѧ\5�R�%鎇�a��	�i�P�@y���#<Z���=ܵa�~�%�Y���*X�e����d��6�iq)�Tf�{�nc]I�*a�5znq ��R��IǤ�k���U#Շ|�uwS3����U�r c.\��o+�P���x4�2��h!�Zɒ�+�Ε�?���rL�78����%��3��y�H�f��&��خ ������/㼲����3�o
�3�i�odgv�a�r�qg�����V�ݹ���*�Z�����g�vqnZ\#йyy[Ήx�[8^s8�G���bym��x�y&u�]s���@���=��_ _̊P Mw��-�p�X/��tV�E����t�n�a���Ҋ�����LMFG�~��g��PbI.��'��Q6h�7㟣 ���V=~�LϚ�ԯ�C�ݞ�#k�Z6<�� ��(c�����&1���~K��2ּ4 SC]��e#�}��m��v�#,�*��Dӗ�Jtͪϥ�Qi�Q�˿���(4��?��Ab��jx0L��*K{yC�]clbn��i^�S!�#�/�-
s�'o��������aB�����:� ��;��<�䛦M�4�����1��T8�y�6`�y�4�˥M�l9��?�eM{��d䬲� R��S3�F�%�ّ�g��cd��'�G_� �P����n�VJ���k|y˺d;M�M6̄1���v+n�9�C����ѲM�_##�ɽ,���w�//�[yK�s�|Q��_N�r�mDb*�j�B<���:�R60*�;W������y�"����H�?����}m{��P-k�j�g��Sr��?Ջu`�89�m����`��Bi��í��ˤ�Z%@��fK[Z�����4##a��p�TX<�TVE�EK��5=B�	���u�d��c�`��5��4��m2i�)#�
[_E�&�7���,��4��CŲD�5m�x���������`�L��@d�1��^:�W����,u��5���`"������ʷ�yliʬ
�o�'Ǻ�؅)n���x���vH9��cw}C��<�!�j�������7�,6f�'6��l�Rz�Սgإ�;C䨡RC���n�Z�~��V={��zil��ʏ��g�0	`����C<D\�\Q��6sJD#f^V��f�V��U���_�G"����}�iђLD�{����=B�p��(���c�'6�Qy�J0c/��DE	�0f��eu�-2�U�]*�ju����	����/�m&n{0�^�a�{a�pof|�g��v�թ��m����ۭU��ii�� #f�{��Ѝ�����v+9��H���O,���0a:����I*�3<��X��n�&A��<W�=)���$C yӐ�����SO��ğe��5�u�G���Ѹ6,_�[i�P����������FkZ����oM�����r��V
��v�M�
tt����%-�cŐ�Y�,oК���Z9	�/�Ͳ'�u̓[N�18ܡ�y�|��}��nw���ѳ��h�����������s��I������B/'�~$�P�����Y�����M= z�TX���6�Ç�|������S�9��l�3��G<t�ߟ]����aw��������hi~N/ߞ�_��ỷ��"�����-�//�O��㗜�Hj��]��ɾz��Y�?�zח�����g�}�Я��	��|�Oo�/΢��������u��ws{}r����7O#1>��L���w�ѥx������{��^�.n�]{��v�����a/zvh|v�}����A�y>h=��� ~�����~�P��o�j�^H~�d���M����Z� ���]?��o���6��R[q������v��K�fi>��
�<�Jv�+,��:���	O!���7�*o�Ip�f/�Qˣl �8��In�H�h{���A�-t�Bko��{s�g�-�q�-t��ri
l��mn��Hn���2Ȇ��&��f ��!��w��ZY�����
q�;X�����~���	4�mI����H|Z�yS���i6/^]���'4�}(��'I?�}�lwOJRQt������&8k=kb�-����b�>�Cv�ET��L�P�e]��    �b�]}�ֆ*�
+��~<[�J���c;گ�~��1��X�3%�"�|�W%�y2��h^ �Dv�n����*�ci͓��R5��0?�G=w('&��$.�IO����!!��S�&%֤U�#h���s��B��/��(y2dQzN��U�F�d�J�������w��\�1�S����_m��w��d�5��� �q��q�K�m��P��v<�׭�C(���#��W�ٚ�6;�]�N5AC۔�-l9�\qrX3TNI���y��� �y����r��ʸ<vI�� [���6�XX�Jz��z��O����a9�ӧ�
�l��)�h$ѫoQ�GW1�����B6�CH0I�0��b[�U��\�3+���eJ��N�n^�F^*o�*���,���9fWq	�s��JIi�'z7�wl�:���.w
��:r�@��v����]����t��	�g���jC\V꒎׾��4ԭpP+�'�ucʹ6%� n�9T�`� ��O> P@���W䡶���_�>���U�3�dUm'��B�ɂ@��W���$���L�0gPe �C�@��)�N�N �[�Q�N�B[rG����\a�_��6 �7T䍀�0�	�2�z!&&�ĎW�r8A�7��Yt��I�->@c�f�E�ׂ�����7]	�C����8��+6o�tʝ�(;/d��7@�&ݡo�!���BB���v�H�	1s���6u{^�Q�XӠ c5�����O��3-�N��;"�c%1��T΍��Ԃ��-?�*W2�#�"ZD�>���4z�-:Q�b��s���ʬb�ym7
���oU�n�Q��S��{��w3�G�� (v���aY�K�o0܉_���:gB�p,�8Q8��P{�A⽸C��s!<��+��]!��zf���4����BJ߷���F]���6��`x�J� ���Ɓ#�����Ы"��q���ڰ�2 s�����6����
�A��h@R�г�^̄z���,_9�q2M!4��5��,�R�d��I$yND���a�U��E!��c�ÿF@����4�V¿�AvRUv��m�2 *1�.<�ɿ"*��נ;@~���3dݕ��e_e��.佪�����u([���;,��~20�9��l�p�%k8�,���*��C3��ױe7_��u������>}�(Y�26.ۣ�f�����ױ�aE�,x9B�	�(����`*mXM��ْ�r//Q~���z6OŎ��ڪ	ܔ���_5���J�\���i45��ҙI�Y��H�k�o�f��I�k&���N��?	��m�d�>}7u���V8M>�y�'[�P5��V��6�U"���̤�r`6����?7qn#��6ך��a�ll�k5�Eu�I�.����x�c��0t���N�{�4=Y��MI{�:'���_&E^�6�*ǐ�-���&\-3�`�����P��U��Z����8hɊ�J��p�j�Ų��I�:6� �qD�L��-���avAݫ���C:�h�%e�ܧWg3����<�Ͷz,<�8�����C����� 6Wv���	S��/�A�c.���ʑnaM<���Wq��3̮�^������9���jZ�u"�Y�	����вg�@H]1n���^�"�6�KR�}lul �g���@�����3��j^����2���b��
�#���g�<�9<;]�H�����ׂ"ת��kj`;g������!��oC�!���	54�45��:�����F�^[ 3�mu�T�6�o{��)�3��,=�i�8v!#�M4J�Cգ)BTn���Вƻ0Q�[�t�S=3dU��WrG�ϚC['���]��
��o_rB�E� �5��9=e��}��mB0O��<!�mp�^/Q���S���`/e�A[w�x�J�9�Ŗ���9��).<���/�cc:�����Zl��m��|p�ϛ���@��E/7�}���cM]�T�lpF�94�Gլ��$2C�YN��vi����N<r���"��p#oms�=<�#5ō8���qo3T�-5��P��)XӲ(Ƌ/�T9�$�ێ�|�ҾS~@�:Tc�Q�DvӸo�u`N��yl`��>N�u�x�m
�U6Bg1�Y?g� oҭ���7R ���r�2ۖ��`0c����R�6H����4�I����W�K�j�P;��N���;�7�E�<�v�C=��k6�.�~᜞���������mc��#�o�}�@0q��~���Yɭ��J24
��e���(9$p����LgƢ�M��t��7����]G�&���R��d�e��x~^o;�?�j8X6_�Gb���,	BA?	X��1f�HW�:!(
}*�K�>��Q�����&%�8�K�u��Vә�ەԽ��8IQc��ES��@�o���;��İ��{�뼄	����ۊM=���)|e���=��z����N���Q	l�:�*�(*���%�W2�@!�N�lٟ4Y]y��=unӁ�[M�u�YlE4�gKN��7*��͘�A�'��7�G�7DU�vy�h*���Bf>f�9U�˺���$�s��um:[��Bo��Zz�-�rZ_W�Jvm�vlG������K*�
|�=Fr�#�w�p�&������q��,��2�8�����옆�U~N��ؑ�6���V�#(B]z�
sB%H��D��A�����;k�)Ӳ�K�6�EH��بv#s�#��ݖ(��NLH'z�u��/K�ftk=�?�I!����lj43K�c�����n�dc٥_n���r����T��'e��5��ũ)�Q��L�R*{��_[�ƿ�Ԛ��p����*il[�m�[a��
��V�/�``�Օ��� fĭ�j�	�܁]6&����tm)���Y���VRBv�lY~����b�PID�L��]�\33~��)RZ�[���a����aSD�׏��B�6%�E�T3_g":��-����1d	^߆Ӧ�m����]q��O7��G2;�������]�𮥶מo�P�
�"�9K0� >��)�\�������Ewi5B��M��=�V��J�Rv�2`Qj������5K�)�=���̊(͓?Ջ/��T$�'��$����-�0����.t�y:��:g*�L�j�����?NǦ5,4]��N�+���y�#d�ht01*�*�d���Q`K��T!]�t!'��M��!����\����,�.�]]��'�bQF1AQU����+�k-Ou[*���?�kTU��9�) k�8�����h<�ם�r�l��G'�97�����Pn�"�K����� ����2#׊���k���<�J'j���P�R�o�=�N����0YL5�/�Ɨ�}��G��l{���i+Jw�*z}򝬩z���v�04���ڣ�)�'{xV��+��3c�Ϸ:
�J�����q&�mы�>�c�?�I5�c0S��W��$�{�gp���4U>�J����!�D��Kd�=2��e�Y��n��3s��?����8\��6��h�TLS����$�3v?�"�`��⋸�F|M�z
�!]$�������# �����o�8�\t4��������i�d����e~�=�>PZ�0��3��;p#`�&�V4��1�|mS9O�������OS�;���t&>(���}���ڥ���y��0�W�<%�$(��y�"QŹ��4M�i�1�J?�Mm�ms&/3˸i��jiN��r�ya�	��.��(�h|P���R��?��3d�f�ԅ�w�g3�>U1(���	_R[cIn�}:�뚆e���hp�U)y��fi�f��I�����M�%�uU�fk�j���޿��$�a���m�A�Q�L8�}p�c����ۿ1;0��7BK�YNಡ�٭r��K�o��r�wf�� �Ɯ����x��+�/����3Ҽe��ݵ�p>��*��P��vA R�(���B��ӵF�J�D�M��ĞX�{����V�&���5������0���4�k�cl�[O���ղ4���}�3;�|eM���^J�=_F�@��#��p��u7��    HYF8��[�^鼲�4��^��}XdR�'�
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
��uĥ��֪�d!�W��/�sC2niM�V���X��j��ڌ����ɕ ���N���X;�	�_B��X��Ili�?CM��������%��h��� �$AkY��4K��(ڲD�KZ��QtpIaPo����0�;:�(��TP���iLB�K��B�	�n��Q�J:�}��g7q�֌Pf]�]�0F4�d��_/���ۿ!g���pma��I��4IGO�6P��d����+����,�=��uW�c��� qb��b���m�mr���E�1��~;�f��^EL��a�qB���v��R��sp[N`�a�=N����d<N�����J�+F^��y ��$��I����s�2V>+����1Ia�9c�~�+������5i>h��-Y"\��_�!��A�!;�ŦI!*����S��b㲆�>Dú���Hx����9u&�}��*��K9Ηh�۷��(�8��$���Q��`p��a����>�~���U�WͿ�ٕK�g�.�,�L�bK���UsTs?��<�_|A$6	��9+(ζ�Ѕ���YN�o~f��d}���4/��@}�a�@�ܮ��|+�	����t8�V�A[^�Rh� ��@Y�R��R�	�B���{�d�YTE�?&U�!d�Z&Cu�W���W�B�����*���W�\+����a��JF(��O㶨��lf\&O�?9������X���fG��vV[��L�0`y�&��P��� ��S��,U^����'�4E0�+�j�yu�U�[�%Fw	+��fJ����[~U����vi�]`�i�3+ 8  r�k����fIdϒ)m���+E��Jo�sv@�d���>@�eX!�ٍ�챶�sW~�P� �Y��^��Q�*��$ܾFxZj�6Ǹ�A�"��
p"���g>�� 6����K4��l^���?�O(��xn�����?D.њ�I�f���_�Φ��&91&�2�`<�wDd�3�S���������Y�ʍ��7�S%~7�J�7�E׻
pP{��k��؃�@�K���T~��=p�>x��ݐ��.�Ͽ�4w#��%��!��|��\�:ߡ�n�/z�J��ҥ�e��ؐ�c�����#S����n��إk�BPPMa��_KE�gWB���ĝ��n��ۀQ��j���t-쒫]�d�W 롃mZMh<0e��[5H!�7��O,�Ds���u���p���%%�@w����^�A�ߚ!
-�^�-cv��Xⴷ
�C��R�N�qOF+�S��.Ϯ/N�<5E��!��M-:i�h%<\9�Cl;)BIiЛ>R�����`]iԳ4A��ZT���Q�j8����w�w���l�(�;z���j�h�����������Ҙ�[      ,B   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      uB   �  x��Z�n�8>�O����)��Ǭ7m�m� ?=0h�VXH�@IF���������v8�)Q����[Z#���͌r�-U�Z�����B��2�]�l����J�\o�nW\�Thη\��6�R�2g�f�b�G�J#Pf��x��~|������*7�o�r���o��K�$�:zx[�J-U�����?_=<,�v�݀6�a�`r��o�;�=�{��m�d�ҾMi�� Y��A�4��U<������o�o�l�5�u�e
F�{�]1w 8&]ޖ�ZW,�V�����zV!A�Y��N��n���t>e���x�'�x����\��0�;}оuG�}�l���>��&OO�oC%?��
Q�T�F�T)xY%~в
����'�� 7��\���m��>	��lY+뀆c�R��Hl�o+���w��Ȓ�"�@Q�aR���4F(��ǁ�ȏ��UVl����i����fZ�.�˂e�R�6��g��T���=A$��w�kN>i#_��Yn#�}fp,�L��8��5�g��ΛB(0�6{t�'�I*e�����M���>��L����<:�s�/���l�Q���������;fŁFq����4 �Ua�!��S���dЈ�ܗ�s*H�|xҵ���	'�HxP^�DUC޵��Mv�0@�*���n�,���3�xIQ����[�O?���Z�%�/r�p%���Ď�{Y��	V���!��8���g�3ƾd�%�0@�
a8�Z�B�g��#���$�V$��`Əh1f�����c~�e3�
N�M�����fK`p�$}��I�0)�3|8�gt���������&����ke�	�#�_ǥj��̂�k��pV%#r�rԲ`��a�I�P$g�����[0��t&m�MI�4�����ɑ�d�Mf�/������o?������j��Awd�b�c&l�y��DǶ�i�D�o�����n��]f�RGƞe�2&0��g�,;,�]M����u��}2M�e�U#rZ6f��W:�/���b�XW-��,�W]'[�<�1*e,�zaj�Mxg�^x�0h���:�f&�� J�7��sݓhI������ ��P��a���_�
�h{����� k����Y�A��dێ�&��z�kr�� ޫ��9�]z��x��<�㊂9����p�@K0��6�ѓ̉��y&�;�\�wnoz�)���r�0�J�B�.��_�3�J������[�5�����"ΣA��)6�)�Y�.uf�^G$���i#:�Ȥ��w�K���t��i�'��P��%�������r�!H�׶|�* +���W�Yى���a���J7�ϖ	^�-(^~K�׸q��Գ�e�,�x{|��p��::�"I)�`���#�}�A�J!R��9H��U�Q>G��豩5"��O8�mr�IQ?�b��߁_1�Ps6�U��'?}<Yn�s�����Og��1Jz�A�f�'D�Ef� 2Xs�}�o6�p�O�<d�5�S]�:����N\����JKm�t��2#K$����h���'#/�0���,Z���͂�T
M��B�:1�1U�������?�Ko�F�����iL\��)~������Q��y�!�����.}��	�l�?����m��Gm����f�����HTv
Cdԕ�$0LZ�����]
C�*�; )a�3�U���>�%�p���ϘH:z4r�s���9g; �$xivG���Q�8Ov�;fQ��c?7���a��y:<Ȱ�ч==f��1�;Ǹ��j:�v��-,�eV\D�$naw��-���Y<�\Xo��fe
�m���\���O ��$*�O��&�?.gT�6���-�tiD�%����@k���ω�$7�\����ݧM�3�S��,�|�����O�'�)	�1Q���ƓW��%�q�iI�(Jp���r���k����7j��b�Z���w�      -B   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     