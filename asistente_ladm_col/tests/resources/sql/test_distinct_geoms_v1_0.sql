PGDMP                         x            releases     11.8 (Ubuntu 11.8-1.pgdg18.04+1)     11.8 (Ubuntu 11.8-1.pgdg18.04+1) �   ;           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            ;           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            ;           1262    577327    releases    DATABASE     z   CREATE DATABASE releases WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE releases;
             postgres    false                        2615    729669    test_distinct_geoms    SCHEMA     #   CREATE SCHEMA test_distinct_geoms;
 !   DROP SCHEMA test_distinct_geoms;
             postgres    false            �	           1259    729670    t_ili2db_seq    SEQUENCE     �   CREATE SEQUENCE test_distinct_geoms.t_ili2db_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE test_distinct_geoms.t_ili2db_seq;
       test_distinct_geoms       postgres    false    19            �	           1259    729706    cc_metodooperacion    TABLE     U  CREATE TABLE test_distinct_geoms.cc_metodooperacion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    formula character varying(255) NOT NULL,
    dimensiones_origen integer,
    ddimensiones_objetivo integer,
    col_transformacion_transformacion bigint,
    CONSTRAINT cc_metodooperacion_ddimensiones_objetivo_check CHECK (((ddimensiones_objetivo >= 0) AND (ddimensiones_objetivo <= 999999999))),
    CONSTRAINT cc_metodooperacion_dimensiones_origen_check CHECK (((dimensiones_origen >= 0) AND (dimensiones_origen <= 999999999)))
);
 3   DROP TABLE test_distinct_geoms.cc_metodooperacion;
       test_distinct_geoms         postgres    false    2551    19            ;           0    0    TABLE cc_metodooperacion    COMMENT     
  COMMENT ON TABLE test_distinct_geoms.cc_metodooperacion IS 'Estructura que proviene de la traducción de la clase CC_OperationMethod de la ISO 19111. Indica el método utilizado, mediante un algoritmo o un procedimiento, para realizar operaciones con coordenadas.';
            test_distinct_geoms       postgres    false    2556            ;           0    0 !   COLUMN cc_metodooperacion.formula    COMMENT     x  COMMENT ON COLUMN test_distinct_geoms.cc_metodooperacion.formula IS 'Fórmulas o procedimientos utilizadoa por este método de operación de coordenadas. Esto puede ser una referencia a una publicación. Tenga en cuenta que el método de operación puede no ser analítico, en cuyo caso este atributo hace referencia o contiene el procedimiento, no una fórmula analítica.';
            test_distinct_geoms       postgres    false    2556            ;           0    0 ,   COLUMN cc_metodooperacion.dimensiones_origen    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.cc_metodooperacion.dimensiones_origen IS 'Número de dimensiones en la fuente CRS de este método de operación de coordenadas.';
            test_distinct_geoms       postgres    false    2556            ;           0    0 /   COLUMN cc_metodooperacion.ddimensiones_objetivo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.cc_metodooperacion.ddimensiones_objetivo IS 'Número de dimensiones en el CRS de destino de este método de operación de coordenadas.';
            test_distinct_geoms       postgres    false    2556            ;           0    0 ;   COLUMN cc_metodooperacion.col_transformacion_transformacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.cc_metodooperacion.col_transformacion_transformacion IS 'Fórmula o procedimiento utilizado en la transformación.';
            test_distinct_geoms       postgres    false    2556            i
           1259    730818    ci_forma_presentacion_codigo    TABLE     �  CREATE TABLE test_distinct_geoms.ci_forma_presentacion_codigo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_distinct_geoms.ci_forma_presentacion_codigo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731025    col_areatipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_areatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_distinct_geoms.col_areatipo;
       test_distinct_geoms         postgres    false    2551    19            �	           1259    729713    col_areavalor    TABLE     �  CREATE TABLE test_distinct_geoms.col_areavalor (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_distinct_geoms.col_areavalor;
       test_distinct_geoms         postgres    false    2551    19            ;           0    0    COLUMN col_areavalor.tipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.tipo IS 'Indica si el valor a registrar corresponde al área gráfica o alfanumérica de la base de datos catastral.';
            test_distinct_geoms       postgres    false    2557            ;           0    0    COLUMN col_areavalor.area    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.area IS 'Corresponde al valor del área registrada en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2557            ;           0    0 %   COLUMN col_areavalor.datos_proyeccion    COMMENT     M  COMMENT ON COLUMN test_distinct_geoms.col_areavalor.datos_proyeccion IS 'Parametros de la proyección utilizada para el cálculo del área de la forma proj, ejemplo: ''EPSG:3116'', ''+proj=tmerc +lat_0=4.59620041666667 +lon_0=-74.0775079166667 +k=1 +x_0=1000000 +y_0=1000000 +ellps=GRS80 +towgs84=0,0,0,0,0,0,0 +units=m +no_defs''';
            test_distinct_geoms       postgres    false    2557             ;           0    0 )   COLUMN col_areavalor.lc_construccion_area    COMMENT     {   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.lc_construccion_area IS 'Registros del área en diferentes sistemas.';
            test_distinct_geoms       postgres    false    2557            !;           0    0 $   COLUMN col_areavalor.lc_terreno_area    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.lc_terreno_area IS 'Registros del área en diferentes sistemas.';
            test_distinct_geoms       postgres    false    2557            ";           0    0 0   COLUMN col_areavalor.lc_servidumbretransito_area    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.lc_servidumbretransito_area IS 'Registros del área en diferentes sistemas.';
            test_distinct_geoms       postgres    false    2557            #;           0    0 /   COLUMN col_areavalor.lc_unidadconstruccion_area    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_areavalor.lc_unidadconstruccion_area IS 'Registros del área en diferentes sistemas.';
            test_distinct_geoms       postgres    false    2557            
           1259    729982    col_baunitcomointeresado    TABLE     -  CREATE TABLE test_distinct_geoms.col_baunitcomointeresado (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    unidad bigint NOT NULL
);
 9   DROP TABLE test_distinct_geoms.col_baunitcomointeresado;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729891    col_baunitfuente    TABLE     �   CREATE TABLE test_distinct_geoms.col_baunitfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    unidad bigint NOT NULL
);
 1   DROP TABLE test_distinct_geoms.col_baunitfuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729906    col_cclfuente    TABLE     �   CREATE TABLE test_distinct_geoms.col_cclfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl bigint NOT NULL,
    fuente_espacial bigint NOT NULL
);
 .   DROP TABLE test_distinct_geoms.col_cclfuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729946    col_clfuente    TABLE     �   CREATE TABLE test_distinct_geoms.col_clfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 -   DROP TABLE test_distinct_geoms.col_clfuente;
       test_distinct_geoms         postgres    false    2551    19            ~
           1259    731007    col_contenidoniveltipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_contenidoniveltipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.col_contenidoniveltipo;
       test_distinct_geoms         postgres    false    2551    19            k
           1259    730836    col_dimensiontipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_dimensiontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.col_dimensiontipo;
       test_distinct_geoms         postgres    false    2551    19            x
           1259    730953    col_estadodisponibilidadtipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_estadodisponibilidadtipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_distinct_geoms.col_estadodisponibilidadtipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731250    col_estadoredserviciostipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_estadoredserviciostipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.col_estadoredserviciostipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731034    col_estructuratipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_estructuratipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_distinct_geoms.col_estructuratipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731061    col_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 =   DROP TABLE test_distinct_geoms.col_fuenteadministrativatipo;
       test_distinct_geoms         postgres    false    2551    19            n
           1259    730863    col_fuenteespacialtipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_fuenteespacialtipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.col_fuenteespacialtipo;
       test_distinct_geoms         postgres    false    2551    19            s
           1259    730908    col_grupointeresadotipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_grupointeresadotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 8   DROP TABLE test_distinct_geoms.col_grupointeresadotipo;
       test_distinct_geoms         postgres    false    2551    19            w
           1259    730944    col_interpolaciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_interpolaciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_distinct_geoms.col_interpolaciontipo;
       test_distinct_geoms         postgres    false    2551    19            `
           1259    730737    col_iso19125_tipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_iso19125_tipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.col_iso19125_tipo;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729925 
   col_masccl    TABLE     _  CREATE TABLE test_distinct_geoms.col_masccl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_mas bigint NOT NULL,
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 +   DROP TABLE test_distinct_geoms.col_masccl;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729963 	   col_mascl    TABLE     A  CREATE TABLE test_distinct_geoms.col_mascl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_mas_lc_construccion bigint,
    ue_mas_lc_terreno bigint,
    ue_mas_lc_servidumbretransito bigint,
    ue_mas_lc_unidadconstruccion bigint
);
 *   DROP TABLE test_distinct_geoms.col_mascl;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729914    col_menosccl    TABLE     k  CREATE TABLE test_distinct_geoms.col_menosccl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ccl_menos bigint NOT NULL,
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 -   DROP TABLE test_distinct_geoms.col_menosccl;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729953    col_menoscl    TABLE     K  CREATE TABLE test_distinct_geoms.col_menoscl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_menos_lc_construccion bigint,
    ue_menos_lc_terreno bigint,
    ue_menos_lc_servidumbretransito bigint,
    ue_menos_lc_unidadconstruccion bigint
);
 ,   DROP TABLE test_distinct_geoms.col_menoscl;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731268    col_metodoproducciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_metodoproducciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_distinct_geoms.col_metodoproducciontipo;
       test_distinct_geoms         postgres    false    2551    19            
           1259    730009    col_miembros    TABLE     %  CREATE TABLE test_distinct_geoms.col_miembros (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint,
    agrupacion bigint NOT NULL
);
 -   DROP TABLE test_distinct_geoms.col_miembros;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729936    col_puntoccl    TABLE     5  CREATE TABLE test_distinct_geoms.col_puntoccl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint,
    ccl bigint NOT NULL
);
 -   DROP TABLE test_distinct_geoms.col_puntoccl;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729973    col_puntocl    TABLE       CREATE TABLE test_distinct_geoms.col_puntocl (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 ,   DROP TABLE test_distinct_geoms.col_puntocl;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729870    col_puntofuente    TABLE     D  CREATE TABLE test_distinct_geoms.col_puntofuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    punto_lc_puntolevantamiento bigint,
    punto_lc_puntocontrol bigint,
    punto_lc_puntolindero bigint
);
 0   DROP TABLE test_distinct_geoms.col_puntofuente;
       test_distinct_geoms         postgres    false    2551    19            [
           1259    730692    col_puntotipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_puntotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_distinct_geoms.col_puntotipo;
       test_distinct_geoms         postgres    false    2551    19            t
           1259    730917    col_redserviciostipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_redserviciostipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 5   DROP TABLE test_distinct_geoms.col_redserviciostipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731079    col_registrotipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_registrotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_distinct_geoms.col_registrotipo;
       test_distinct_geoms         postgres    false    2551    19            

           1259    729855    col_relacionfuente    TABLE     �   CREATE TABLE test_distinct_geoms.col_relacionfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL
);
 3   DROP TABLE test_distinct_geoms.col_relacionfuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729899    col_relacionfuenteuespacial    TABLE     �   CREATE TABLE test_distinct_geoms.col_relacionfuenteuespacial (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL
);
 <   DROP TABLE test_distinct_geoms.col_relacionfuenteuespacial;
       test_distinct_geoms         postgres    false    2551    19            z
           1259    730971    col_relacionsuperficietipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_relacionsuperficietipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.col_relacionsuperficietipo;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729991    col_responsablefuente    TABLE     9  CREATE TABLE test_distinct_geoms.col_responsablefuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    interesado_lc_interesado bigint,
    interesado_lc_agrupacioninteresados bigint
);
 6   DROP TABLE test_distinct_geoms.col_responsablefuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729835    col_rrrfuente    TABLE       CREATE TABLE test_distinct_geoms.col_rrrfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    rrr_lc_restriccion bigint,
    rrr_lc_derecho bigint
);
 .   DROP TABLE test_distinct_geoms.col_rrrfuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    730000    col_topografofuente    TABLE     /  CREATE TABLE test_distinct_geoms.col_topografofuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_espacial bigint NOT NULL,
    topografo_lc_interesado bigint,
    topografo_lc_agrupacioninteresados bigint
);
 4   DROP TABLE test_distinct_geoms.col_topografofuente;
       test_distinct_geoms         postgres    false    2551    19             
           1259    729756    col_transformacion    TABLE     �  CREATE TABLE test_distinct_geoms.col_transformacion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    localizacion_transformada public.geometry(PointZ,38820) NOT NULL,
    lc_puntocontrol_transformacion_y_resultado bigint,
    lc_puntolindero_transformacion_y_resultado bigint,
    lc_puntolevantamiento_transformacion_y_resultado bigint
);
 3   DROP TABLE test_distinct_geoms.col_transformacion;
       test_distinct_geoms         postgres    false    2551    19            $;           0    0    TABLE col_transformacion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.col_transformacion IS 'Registro de la fórmula o procedimiento utilizado en la transformación y de su resultado.';
            test_distinct_geoms       postgres    false    2560            %;           0    0 3   COLUMN col_transformacion.localizacion_transformada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_transformacion.localizacion_transformada IS 'Geometría una vez realizado el proceso de transformación.';
            test_distinct_geoms       postgres    false    2560            &;           0    0 D   COLUMN col_transformacion.lc_puntocontrol_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_transformacion.lc_puntocontrol_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_distinct_geoms       postgres    false    2560            ';           0    0 D   COLUMN col_transformacion.lc_puntolindero_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_transformacion.lc_puntolindero_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_distinct_geoms       postgres    false    2560            (;           0    0 J   COLUMN col_transformacion.lc_puntolevantamiento_transformacion_y_resultado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_transformacion.lc_puntolevantamiento_transformacion_y_resultado IS 'Transformación y Resultado.';
            test_distinct_geoms       postgres    false    2560            	
           1259    729844    col_uebaunit    TABLE     P  CREATE TABLE test_distinct_geoms.col_uebaunit (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    baunit bigint NOT NULL
);
 -   DROP TABLE test_distinct_geoms.col_uebaunit;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729880    col_uefuente    TABLE     Y  CREATE TABLE test_distinct_geoms.col_uefuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ue_lc_construccion bigint,
    ue_lc_terreno bigint,
    ue_lc_servidumbretransito bigint,
    ue_lc_unidadconstruccion bigint,
    fuente_espacial bigint NOT NULL
);
 -   DROP TABLE test_distinct_geoms.col_uefuente;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729825    col_ueuegrupo    TABLE     A  CREATE TABLE test_distinct_geoms.col_ueuegrupo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    parte_lc_construccion bigint,
    parte_lc_terreno bigint,
    parte_lc_servidumbretransito bigint,
    parte_lc_unidadconstruccion bigint
);
 .   DROP TABLE test_distinct_geoms.col_ueuegrupo;
       test_distinct_geoms         postgres    false    2551    19            a
           1259    730746 "   col_unidadadministrativabasicatipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_unidadadministrativabasicatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 C   DROP TABLE test_distinct_geoms.col_unidadadministrativabasicatipo;
       test_distinct_geoms         postgres    false    2551    19            f
           1259    730791    col_unidadedificaciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_unidadedificaciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.col_unidadedificaciontipo;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729862    col_unidadfuente    TABLE     �   CREATE TABLE test_distinct_geoms.col_unidadfuente (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    fuente_administrativa bigint NOT NULL,
    unidad bigint NOT NULL
);
 1   DROP TABLE test_distinct_geoms.col_unidadfuente;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731178    col_volumentipo    TABLE     �  CREATE TABLE test_distinct_geoms.col_volumentipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_distinct_geoms.col_volumentipo;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729814    col_volumenvalor    TABLE       CREATE TABLE test_distinct_geoms.col_volumenvalor (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    volumen_medicion numeric(15,1) NOT NULL,
    tipo bigint NOT NULL,
    lc_construccion_volumen bigint,
    lc_terreno_volumen bigint,
    lc_servidumbretransito_volumen bigint,
    lc_unidadconstruccion_volumen bigint,
    CONSTRAINT col_volumenvalor_volumen_medicion_check CHECK (((volumen_medicion >= 0.0) AND (volumen_medicion <= 99999999999999.9)))
);
 1   DROP TABLE test_distinct_geoms.col_volumenvalor;
       test_distinct_geoms         postgres    false    2551    19            );           0    0    TABLE col_volumenvalor    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.col_volumenvalor IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar la medición de un volumen y la naturaleza de este.';
            test_distinct_geoms       postgres    false    2566            *;           0    0 (   COLUMN col_volumenvalor.volumen_medicion    COMMENT     k   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.volumen_medicion IS 'Medición del volumen en m3.';
            test_distinct_geoms       postgres    false    2566            +;           0    0    COLUMN col_volumenvalor.tipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.tipo IS 'Indicación de si el volumen es calculado, si figura como oficial o si se da otra circunstancia.';
            test_distinct_geoms       postgres    false    2566            ,;           0    0 /   COLUMN col_volumenvalor.lc_construccion_volumen    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.lc_construccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_distinct_geoms       postgres    false    2566            -;           0    0 *   COLUMN col_volumenvalor.lc_terreno_volumen    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.lc_terreno_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_distinct_geoms       postgres    false    2566            .;           0    0 6   COLUMN col_volumenvalor.lc_servidumbretransito_volumen    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.lc_servidumbretransito_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_distinct_geoms       postgres    false    2566            /;           0    0 5   COLUMN col_volumenvalor.lc_unidadconstruccion_volumen    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.col_volumenvalor.lc_unidadconstruccion_volumen IS 'Corresponde al atributo volume de la clase en LADM.';
            test_distinct_geoms       postgres    false    2566            
           1259    729802 
   extarchivo    TABLE       CREATE TABLE test_distinct_geoms.extarchivo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_distinct_geoms.extarchivo;
       test_distinct_geoms         postgres    false    2551    19            0;           0    0    TABLE extarchivo    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.extarchivo IS 'Referencia a clase externa desde donde se gestiona el repositorio de archivos.';
            test_distinct_geoms       postgres    false    2565            1;           0    0 "   COLUMN extarchivo.fecha_aceptacion    COMMENT     w   COMMENT ON COLUMN test_distinct_geoms.extarchivo.fecha_aceptacion IS 'Fecha en la que ha sido aceptado el documento.';
            test_distinct_geoms       postgres    false    2565            2;           0    0    COLUMN extarchivo.datos    COMMENT     ^   COMMENT ON COLUMN test_distinct_geoms.extarchivo.datos IS 'Datos que contiene el documento.';
            test_distinct_geoms       postgres    false    2565            3;           0    0    COLUMN extarchivo.extraccion    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.extarchivo.extraccion IS 'Última fecha de extracción del documento.';
            test_distinct_geoms       postgres    false    2565            4;           0    0 !   COLUMN extarchivo.fecha_grabacion    COMMENT        COMMENT ON COLUMN test_distinct_geoms.extarchivo.fecha_grabacion IS 'Fecha en la que el documento es aceptado en el sistema.';
            test_distinct_geoms       postgres    false    2565            5;           0    0    COLUMN extarchivo.fecha_entrega    COMMENT     q   COMMENT ON COLUMN test_distinct_geoms.extarchivo.fecha_entrega IS 'Fecha en la que fue entregado el documento.';
            test_distinct_geoms       postgres    false    2565            6;           0    0 0   COLUMN extarchivo.snr_fuentecabidalndros_archivo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extarchivo.snr_fuentecabidalndros_archivo IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_distinct_geoms       postgres    false    2565            7;           0    0 7   COLUMN extarchivo.lc_fuenteadministrtiva_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extarchivo.lc_fuenteadministrtiva_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_distinct_geoms       postgres    false    2565            8;           0    0 2   COLUMN extarchivo.lc_fuenteespacial_ext_archivo_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extarchivo.lc_fuenteespacial_ext_archivo_id IS 'Identificador del archivo fuente controlado por una clase externa.';
            test_distinct_geoms       postgres    false    2565            �	           1259    729727    extdireccion    TABLE       CREATE TABLE test_distinct_geoms.extdireccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 -   DROP TABLE test_distinct_geoms.extdireccion;
       test_distinct_geoms         postgres    false    2551    19            9;           0    0    TABLE extdireccion    COMMENT     s   COMMENT ON TABLE test_distinct_geoms.extdireccion IS 'Referencia a una clase externa para gestionar direcciones.';
            test_distinct_geoms       postgres    false    2558            :;           0    0     COLUMN extdireccion.localizacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extdireccion.localizacion IS 'Par de valores georreferenciados (x,y) en la que se encuentra la dirección.';
            test_distinct_geoms       postgres    false    2558            ;;           0    0 2   COLUMN extdireccion.extinteresado_ext_direccion_id    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.extdireccion.extinteresado_ext_direccion_id IS 'Identificador externo del interesado.';
            test_distinct_geoms       postgres    false    2558            <;           0    0 4   COLUMN extdireccion.lc_construccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extdireccion.lc_construccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_distinct_geoms       postgres    false    2558            =;           0    0 '   COLUMN extdireccion.lc_predio_direccion    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.extdireccion.lc_predio_direccion IS 'Dirección del predio.';
            test_distinct_geoms       postgres    false    2558            >;           0    0 /   COLUMN extdireccion.lc_terreno_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extdireccion.lc_terreno_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_distinct_geoms       postgres    false    2558            ?;           0    0 ;   COLUMN extdireccion.lc_servidumbretransito_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extdireccion.lc_servidumbretransito_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_distinct_geoms       postgres    false    2558            @;           0    0 :   COLUMN extdireccion.lc_unidadconstruccion_ext_direccion_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extdireccion.lc_unidadconstruccion_ext_direccion_id IS 'Corresponde al atributo extAddressID de la clase en LADM.';
            test_distinct_geoms       postgres    false    2558            �
           1259    731223     extdireccion_clase_via_principal    TABLE     �  CREATE TABLE test_distinct_geoms.extdireccion_clase_via_principal (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 A   DROP TABLE test_distinct_geoms.extdireccion_clase_via_principal;
       test_distinct_geoms         postgres    false    2551    19            y
           1259    730962    extdireccion_sector_ciudad    TABLE     �  CREATE TABLE test_distinct_geoms.extdireccion_sector_ciudad (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.extdireccion_sector_ciudad;
       test_distinct_geoms         postgres    false    2551    19            ]
           1259    730710    extdireccion_sector_predio    TABLE     �  CREATE TABLE test_distinct_geoms.extdireccion_sector_predio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.extdireccion_sector_predio;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731133    extdireccion_tipo_direccion    TABLE     �  CREATE TABLE test_distinct_geoms.extdireccion_tipo_direccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_distinct_geoms.extdireccion_tipo_direccion;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729784    extinteresado    TABLE       CREATE TABLE test_distinct_geoms.extinteresado (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    nombre character varying(255),
    documento_escaneado character varying(255),
    extredserviciosfisica_ext_interesado_administrador_id bigint,
    lc_agrupacionintersdos_ext_pid bigint,
    lc_interesado_ext_pid bigint
);
 .   DROP TABLE test_distinct_geoms.extinteresado;
       test_distinct_geoms         postgres    false    2551    19            A;           0    0    TABLE extinteresado    COMMENT     t   COMMENT ON TABLE test_distinct_geoms.extinteresado IS 'Referencia a una clase externa para gestionar direcciones.';
            test_distinct_geoms       postgres    false    2563            B;           0    0    COLUMN extinteresado.nombre    COMMENT     a   COMMENT ON COLUMN test_distinct_geoms.extinteresado.nombre IS 'Campo de nombre del interesado.';
            test_distinct_geoms       postgres    false    2563            C;           0    0 (   COLUMN extinteresado.documento_escaneado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extinteresado.documento_escaneado IS 'Ruta de almacenamiento del documento escaneado del interesado.';
            test_distinct_geoms       postgres    false    2563            D;           0    0 J   COLUMN extinteresado.extredserviciosfisica_ext_interesado_administrador_id    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extinteresado.extredserviciosfisica_ext_interesado_administrador_id IS 'Identificador de referencia a un interesado externo que es el administrador.';
            test_distinct_geoms       postgres    false    2563            E;           0    0 3   COLUMN extinteresado.lc_agrupacionintersdos_ext_pid    COMMENT     w   COMMENT ON COLUMN test_distinct_geoms.extinteresado.lc_agrupacionintersdos_ext_pid IS 'Identificador del interesado.';
            test_distinct_geoms       postgres    false    2563            F;           0    0 *   COLUMN extinteresado.lc_interesado_ext_pid    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.extinteresado.lc_interesado_ext_pid IS 'Identificador del interesado.';
            test_distinct_geoms       postgres    false    2563            
           1259    729796    extredserviciosfisica    TABLE     �   CREATE TABLE test_distinct_geoms.extredserviciosfisica (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    orientada boolean
);
 6   DROP TABLE test_distinct_geoms.extredserviciosfisica;
       test_distinct_geoms         postgres    false    2551    19            G;           0    0    TABLE extredserviciosfisica    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.extredserviciosfisica IS 'Referencia a una clase externa para gestionar las redes físicas de servicios.';
            test_distinct_geoms       postgres    false    2564            H;           0    0 &   COLUMN extredserviciosfisica.orientada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.extredserviciosfisica.orientada IS 'Indica si la red de servicios tiene un gradiente o no.';
            test_distinct_geoms       postgres    false    2564            
           1259    729769    extunidadedificacionfisica    TABLE     �   CREATE TABLE test_distinct_geoms.extunidadedificacionfisica (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 ;   DROP TABLE test_distinct_geoms.extunidadedificacionfisica;
       test_distinct_geoms         postgres    false    2551    19            I;           0    0     TABLE extunidadedificacionfisica    COMMENT     |   COMMENT ON TABLE test_distinct_geoms.extunidadedificacionfisica IS 'Control externo de la unidad de edificación física.';
            test_distinct_geoms       postgres    false    2561            �	           1259    729748    fraccion    TABLE     �  CREATE TABLE test_distinct_geoms.fraccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    denominador integer NOT NULL,
    numerador integer NOT NULL,
    col_miembros_participacion bigint,
    lc_predio_copropiedad_coeficiente bigint,
    CONSTRAINT fraccion_denominador_check CHECK (((denominador >= 0) AND (denominador <= 999999999))),
    CONSTRAINT fraccion_numerador_check CHECK (((numerador >= 0) AND (numerador <= 999999999)))
);
 )   DROP TABLE test_distinct_geoms.fraccion;
       test_distinct_geoms         postgres    false    2551    19            J;           0    0    TABLE fraccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.fraccion IS 'Estructura para la definición de un tipo de dato personalizado que permite indicar una fracción o quebrado cona serie específica de condiciones.';
            test_distinct_geoms       postgres    false    2559            K;           0    0    COLUMN fraccion.denominador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.fraccion.denominador IS 'Parte inferior de la fracción. Debe ser mayor que 0. Debe ser mayor que el numerador.';
            test_distinct_geoms       postgres    false    2559            L;           0    0    COLUMN fraccion.numerador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.fraccion.numerador IS 'Parte superior de la fracción. Debe ser mayor que 0. Debe sder menor que el denominador.';
            test_distinct_geoms       postgres    false    2559            
           1259    730018 	   gc_barrio    TABLE     M  CREATE TABLE test_distinct_geoms.gc_barrio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 *   DROP TABLE test_distinct_geoms.gc_barrio;
       test_distinct_geoms         postgres    false    2551    19            M;           0    0    TABLE gc_barrio    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_barrio IS 'Dato geografico aportado por el Gestor Catastral respecto de los barrios de una entidad territorial.';
            test_distinct_geoms       postgres    false    2588            N;           0    0    COLUMN gc_barrio.codigo    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.gc_barrio.codigo IS 'Código de identificación del barrio.';
            test_distinct_geoms       postgres    false    2588            O;           0    0    COLUMN gc_barrio.nombre    COMMENT     P   COMMENT ON COLUMN test_distinct_geoms.gc_barrio.nombre IS 'Nombre del barrio.';
            test_distinct_geoms       postgres    false    2588            P;           0    0    COLUMN gc_barrio.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_barrio.codigo_sector IS 'Código del sector donde se encuentra localizado el barrio.';
            test_distinct_geoms       postgres    false    2588            Q;           0    0    COLUMN gc_barrio.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_barrio.geometria IS 'Tipo de geometría y su representación georrefenciada que definen los límites y el área ocupada por el barrio.';
            test_distinct_geoms       postgres    false    2588            
           1259    730028 !   gc_calificacionunidadconstruccion    TABLE     �  CREATE TABLE test_distinct_geoms.gc_calificacionunidadconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    componente character varying(255),
    elemento_calificacion character varying(255),
    detalle_calificacion character varying(255),
    puntos integer,
    gc_unidadconstruccion bigint,
    CONSTRAINT gc_calificcnnddcnstrccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 100)))
);
 B   DROP TABLE test_distinct_geoms.gc_calificacionunidadconstruccion;
       test_distinct_geoms         postgres    false    2551    19            R;           0    0 '   TABLE gc_calificacionunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_calificacionunidadconstruccion IS 'Relaciona la calificación de las unidades de construcción de los datos de insumos del Gestor Catastral.';
            test_distinct_geoms       postgres    false    2589            S;           0    0 3   COLUMN gc_calificacionunidadconstruccion.componente    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_calificacionunidadconstruccion.componente IS 'Indica el componente de la calificación de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2589            T;           0    0 >   COLUMN gc_calificacionunidadconstruccion.elemento_calificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_calificacionunidadconstruccion.elemento_calificacion IS 'Indica el elemento de calificación de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2589            U;           0    0 =   COLUMN gc_calificacionunidadconstruccion.detalle_calificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_calificacionunidadconstruccion.detalle_calificacion IS 'Indica el detalle de calificación del elemento de calificación de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2589            V;           0    0 /   COLUMN gc_calificacionunidadconstruccion.puntos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_calificacionunidadconstruccion.puntos IS 'Puntaje asociado al detalle del elemento de calificación.';
            test_distinct_geoms       postgres    false    2589            
           1259    730038    gc_comisionesconstruccion    TABLE     $  CREATE TABLE test_distinct_geoms.gc_comisionesconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 :   DROP TABLE test_distinct_geoms.gc_comisionesconstruccion;
       test_distinct_geoms         postgres    false    2551    19            W;           0    0    TABLE gc_comisionesconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_comisionesconstruccion IS 'Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2590            X;           0    0 /   COLUMN gc_comisionesconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesconstruccion.numero_predial IS 'Numero Predial del Construcciones que no cuentan con información alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2590            Y;           0    0 *   COLUMN gc_comisionesconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesconstruccion.geometria IS 'Construcciones que no cuentan con información alfanumérica en la base catastral.';
            test_distinct_geoms       postgres    false    2590            
           1259    730048    gc_comisionesterreno    TABLE       CREATE TABLE test_distinct_geoms.gc_comisionesterreno (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygon,38820)
);
 5   DROP TABLE test_distinct_geoms.gc_comisionesterreno;
       test_distinct_geoms         postgres    false    2551    19            Z;           0    0    TABLE gc_comisionesterreno    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_comisionesterreno IS 'Terrenos que no cuentan con información alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2591            [;           0    0 *   COLUMN gc_comisionesterreno.numero_predial    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesterreno.numero_predial IS 'Numero Predial del terreno que no cuentan con información
alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2591            \;           0    0 %   COLUMN gc_comisionesterreno.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesterreno.geometria IS 'Terrenos que no cuentan con información alfanumérica en la base catastral.';
            test_distinct_geoms       postgres    false    2591             
           1259    730058    gc_comisionesunidadconstruccion    TABLE     *  CREATE TABLE test_distinct_geoms.gc_comisionesunidadconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    numero_predial character varying(30) NOT NULL,
    geometria public.geometry(MultiPolygonZ,38820)
);
 @   DROP TABLE test_distinct_geoms.gc_comisionesunidadconstruccion;
       test_distinct_geoms         postgres    false    2551    19            ];           0    0 %   TABLE gc_comisionesunidadconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_comisionesunidadconstruccion IS 'Unidades de construcción que no cuentan con información alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2592            ^;           0    0 5   COLUMN gc_comisionesunidadconstruccion.numero_predial    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesunidadconstruccion.numero_predial IS 'Numero Predial del terreno que no cuentan con información alfanumérica en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2592            _;           0    0 0   COLUMN gc_comisionesunidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_comisionesunidadconstruccion.geometria IS 'Unidades de construcción que no cuentan con información alfanumérica en la base catastral.';
            test_distinct_geoms       postgres    false    2592            �
           1259    731115    gc_condicionprediotipo    TABLE     �  CREATE TABLE test_distinct_geoms.gc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.gc_condicionprediotipo;
       test_distinct_geoms         postgres    false    2551    19            !
           1259    730068    gc_construccion    TABLE     O  CREATE TABLE test_distinct_geoms.gc_construccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_distinct_geoms.gc_construccion;
       test_distinct_geoms         postgres    false    2551    19            `;           0    0    TABLE gc_construccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_construccion IS 'Datos de las construcciones inscritas en las bases de datos catastrales en una entidad territorial.';
            test_distinct_geoms       postgres    false    2593            a;           0    0 $   COLUMN gc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_distinct_geoms       postgres    false    2593            b;           0    0    COLUMN gc_construccion.etiqueta    COMMENT     c   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.etiqueta IS 'Etiqueta de la construcción.';
            test_distinct_geoms       postgres    false    2593            c;           0    0 (   COLUMN gc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_distinct_geoms       postgres    false    2593            d;           0    0 #   COLUMN gc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_distinct_geoms       postgres    false    2593            e;           0    0 #   COLUMN gc_construccion.numero_pisos    COMMENT     u   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_distinct_geoms       postgres    false    2593            f;           0    0 %   COLUMN gc_construccion.numero_sotanos    COMMENT     z   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_distinct_geoms       postgres    false    2593            g;           0    0 '   COLUMN gc_construccion.numero_mezanines    COMMENT     }   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_distinct_geoms       postgres    false    2593            h;           0    0 )   COLUMN gc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_distinct_geoms       postgres    false    2593            i;           0    0 )   COLUMN gc_construccion.codigo_edificacion    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.codigo_edificacion IS 'Código catastral de la construcción.';
            test_distinct_geoms       postgres    false    2593            j;           0    0 %   COLUMN gc_construccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.codigo_terreno IS 'Código de terreno donde se encuentra ubicada la construcción.';
            test_distinct_geoms       postgres    false    2593            k;           0    0 &   COLUMN gc_construccion.area_construida    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.area_construida IS 'Área total construida.';
            test_distinct_geoms       postgres    false    2593            l;           0    0     COLUMN gc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_construccion.geometria IS 'Polígono de la construcción existente en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2593            /
           1259    730206    gc_copropiedad    TABLE     �  CREATE TABLE test_distinct_geoms.gc_copropiedad (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    gc_matriz bigint NOT NULL,
    gc_unidad bigint NOT NULL,
    coeficiente_copropiedad numeric(10,7),
    CONSTRAINT gc_copropiedad_coeficiente_copropiedad_check CHECK (((coeficiente_copropiedad >= 0.0) AND (coeficiente_copropiedad <= 100.0)))
);
 /   DROP TABLE test_distinct_geoms.gc_copropiedad;
       test_distinct_geoms         postgres    false    2551    19            m;           0    0    TABLE gc_copropiedad    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_copropiedad IS 'Clase que relaciona las unidades prediales a los predios matrices bajo el regimen de propiedad horizontal inscritos en las bases de datos catastrales.';
            test_distinct_geoms       postgres    false    2607            "
           1259    730080    gc_datosphcondominio    TABLE     �  CREATE TABLE test_distinct_geoms.gc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_distinct_geoms.gc_datosphcondominio;
       test_distinct_geoms         postgres    false    2551    19            n;           0    0    TABLE gc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal inscrito en las bases de datos catastrales.';
            test_distinct_geoms       postgres    false    2594            o;           0    0 6   COLUMN gc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2594            p;           0    0 4   COLUMN gc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2594            q;           0    0 9   COLUMN gc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2594            r;           0    0 7   COLUMN gc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2594            s;           0    0 3   COLUMN gc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_distinct_geoms       postgres    false    2594            t;           0    0 1   COLUMN gc_datosphcondominio.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.total_unidades_sotano IS 'Total de unidades prediales en el sótano del PH o Condominio.';
            test_distinct_geoms       postgres    false    2594            u;           0    0 8   COLUMN gc_datosphcondominio.valor_total_avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datosphcondominio.valor_total_avaluo_catastral IS 'Avalúo catastral total de la propiedad horizontal o condominio.';
            test_distinct_geoms       postgres    false    2594            #
           1259    730087    gc_datostorreph    TABLE     �  CREATE TABLE test_distinct_geoms.gc_datostorreph (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_distinct_geoms.gc_datostorreph;
       test_distinct_geoms         postgres    false    2551    19            v;           0    0    TABLE gc_datostorreph    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_datostorreph IS 'Relaciona la información de las torres asociadas al PH o Condominio de los datos insumos del Gestor Catastral';
            test_distinct_geoms       postgres    false    2595            w;           0    0    COLUMN gc_datostorreph.torre    COMMENT     j   COMMENT ON COLUMN test_distinct_geoms.gc_datostorreph.torre IS 'Número de torre en el PH o Condominio.';
            test_distinct_geoms       postgres    false    2595            x;           0    0 (   COLUMN gc_datostorreph.total_pisos_torre    COMMENT     j   COMMENT ON COLUMN test_distinct_geoms.gc_datostorreph.total_pisos_torre IS 'Total de pisos de la torre.';
            test_distinct_geoms       postgres    false    2595            y;           0    0 .   COLUMN gc_datostorreph.total_unidades_privadas    COMMENT     |   COMMENT ON COLUMN test_distinct_geoms.gc_datostorreph.total_unidades_privadas IS 'Total de unidades privadas en la torre.';
            test_distinct_geoms       postgres    false    2595            z;           0    0 $   COLUMN gc_datostorreph.total_sotanos    COMMENT     i   COMMENT ON COLUMN test_distinct_geoms.gc_datostorreph.total_sotanos IS 'Total de sótanos en la torre.';
            test_distinct_geoms       postgres    false    2595            {;           0    0 ,   COLUMN gc_datostorreph.total_unidades_sotano    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_datostorreph.total_unidades_sotano IS 'Total de unidades prediales en el sótano de la torre.';
            test_distinct_geoms       postgres    false    2595            $
           1259    730094    gc_direccion    TABLE     <  CREATE TABLE test_distinct_geoms.gc_direccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    valor character varying(255),
    principal boolean,
    geometria_referencia public.geometry(LineStringZ,38820),
    gc_prediocatastro_direcciones bigint
);
 -   DROP TABLE test_distinct_geoms.gc_direccion;
       test_distinct_geoms         postgres    false    2551    19            |;           0    0    COLUMN gc_direccion.valor    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.gc_direccion.valor IS 'Registros de la direcciones del predio.';
            test_distinct_geoms       postgres    false    2596            };           0    0    COLUMN gc_direccion.principal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_direccion.principal IS 'Indica si el registro de la dirección corresponde a la principal.';
            test_distinct_geoms       postgres    false    2596            ~;           0    0 (   COLUMN gc_direccion.geometria_referencia    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_direccion.geometria_referencia IS 'Línea de donde se encuentra la placa de nomenclatura del predio.';
            test_distinct_geoms       postgres    false    2596            ;           0    0 1   COLUMN gc_direccion.gc_prediocatastro_direcciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_direccion.gc_prediocatastro_direcciones IS 'Direcciones del predio inscritas en catastro.';
            test_distinct_geoms       postgres    false    2596            %
           1259    730105    gc_estadopredio    TABLE     >  CREATE TABLE test_distinct_geoms.gc_estadopredio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    estado_alerta character varying(30),
    entidad_emisora_alerta character varying(255),
    fecha_alerta date,
    gc_prediocatastro_estado_predio bigint
);
 0   DROP TABLE test_distinct_geoms.gc_estadopredio;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_estadopredio    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_estadopredio IS 'Estructura que contiene el estado del predio en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2597            �;           0    0 $   COLUMN gc_estadopredio.estado_alerta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_estadopredio.estado_alerta IS 'Indica el estado del predio en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2597            �;           0    0 -   COLUMN gc_estadopredio.entidad_emisora_alerta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_estadopredio.entidad_emisora_alerta IS 'Entidad emisora del estado de alerta del predio.';
            test_distinct_geoms       postgres    false    2597            �;           0    0 #   COLUMN gc_estadopredio.fecha_alerta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_estadopredio.fecha_alerta IS 'Fecha de la alerta en el sistema de gestión catastral.';
            test_distinct_geoms       postgres    false    2597            �;           0    0 6   COLUMN gc_estadopredio.gc_prediocatastro_estado_predio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_estadopredio.gc_prediocatastro_estado_predio IS 'Estado del predio en la base de datos catastral según los actos administrativos o judiciales que versan sobre el mismo.';
            test_distinct_geoms       postgres    false    2597            &
           1259    730112 
   gc_manzana    TABLE     X  CREATE TABLE test_distinct_geoms.gc_manzana (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(255),
    codigo_barrio character varying(13),
    geometria public.geometry(MultiPolygon,38820)
);
 +   DROP TABLE test_distinct_geoms.gc_manzana;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_manzana    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_manzana IS 'Dato geografico aportado por el Gestor Catastral respecto de las manzanas de una entidad territorial.';
            test_distinct_geoms       postgres    false    2598            �;           0    0    COLUMN gc_manzana.codigo    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.gc_manzana.codigo IS 'Código catastral de 17 dígitos de la manzana.';
            test_distinct_geoms       postgres    false    2598            �;           0    0 !   COLUMN gc_manzana.codigo_anterior    COMMENT     q   COMMENT ON COLUMN test_distinct_geoms.gc_manzana.codigo_anterior IS 'Código catastral anterior de la manzana.';
            test_distinct_geoms       postgres    false    2598            �;           0    0    COLUMN gc_manzana.codigo_barrio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_manzana.codigo_barrio IS 'Código catastral de 13 dígitos del barrio donde se encuentra la manzana.';
            test_distinct_geoms       postgres    false    2598            �;           0    0    COLUMN gc_manzana.geometria    COMMENT     h   COMMENT ON COLUMN test_distinct_geoms.gc_manzana.geometria IS 'Polígonos de la manzanas catastrales.';
            test_distinct_geoms       postgres    false    2598            '
           1259    730122    gc_perimetro    TABLE     �  CREATE TABLE test_distinct_geoms.gc_perimetro (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo_departamento character varying(2),
    codigo_municipio character varying(5),
    tipo_avaluo character varying(30),
    nombre_geografico character varying(50),
    codigo_nombre character varying(255),
    geometria public.geometry(MultiPolygon,38820)
);
 -   DROP TABLE test_distinct_geoms.gc_perimetro;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_perimetro    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_perimetro IS 'Dato geografico aportado por el Gestor Catastral respecto del perimetro urbano de una entidad territorial.';
            test_distinct_geoms       postgres    false    2599            �;           0    0 '   COLUMN gc_perimetro.codigo_departamento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.codigo_departamento IS 'Código de 2 dígitos del Departamento según clasificación de Divipola.';
            test_distinct_geoms       postgres    false    2599            �;           0    0 $   COLUMN gc_perimetro.codigo_municipio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.codigo_municipio IS 'Código de 5 dígitos que une los 2 dígitos del Departamento y los 3 dígitos del municipio según la clasificación de Divipola.';
            test_distinct_geoms       postgres    false    2599            �;           0    0    COLUMN gc_perimetro.tipo_avaluo    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.tipo_avaluo IS 'Tipo de avalúo catastral del perímetro urbano.';
            test_distinct_geoms       postgres    false    2599            �;           0    0 %   COLUMN gc_perimetro.nombre_geografico    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.nombre_geografico IS 'Nombre geográfico del perímetro municipal, por ejemplo el nombre del municipio.';
            test_distinct_geoms       postgres    false    2599            �;           0    0 !   COLUMN gc_perimetro.codigo_nombre    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.codigo_nombre IS 'Código del nombre geográfico.';
            test_distinct_geoms       postgres    false    2599            �;           0    0    COLUMN gc_perimetro.geometria    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.gc_perimetro.geometria IS 'Polígono del perímetro urbano.';
            test_distinct_geoms       postgres    false    2599            .
           1259    730195    gc_prediocatastro    TABLE     �  CREATE TABLE test_distinct_geoms.gc_prediocatastro (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_distinct_geoms.gc_prediocatastro;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_prediocatastro    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_prediocatastro IS 'Información existente en las bases de datos catastrales respecto de los predios en una entidad territorial.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 &   COLUMN gc_prediocatastro.tipo_catastro    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.tipo_catastro IS 'Indica si el predio se encuentra en catastro fiscal o Ley 14.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 '   COLUMN gc_prediocatastro.numero_predial    COMMENT       COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.numero_predial IS 'Código numérico de 30 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 0   COLUMN gc_prediocatastro.numero_predial_anterior    COMMENT       COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.numero_predial_anterior IS 'Código numérico de 20 dígitos que permita localizarlo inequívocamente en los respectivos documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_distinct_geoms       postgres    false    2606            �;           0    0    COLUMN gc_prediocatastro.nupre    COMMENT     K  COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 *   COLUMN gc_prediocatastro.circulo_registral    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.circulo_registral IS 'Circulo registral al que se encuentra inscrito el predio.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 8   COLUMN gc_prediocatastro.matricula_inmobiliaria_catastro    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.matricula_inmobiliaria_catastro IS 'Identificador único asignado por las oficinas de registro de instrumentos públicos.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 $   COLUMN gc_prediocatastro.tipo_predio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.tipo_predio IS 'Tipo de predio inscrito en catastro: Nacional, Departamental, Municipal, Particular, Baldío, Ejido, Resguardo Indígena, Tierra de comunidades negras y Reservas Naturales.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 )   COLUMN gc_prediocatastro.condicion_predio    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.condicion_predio IS 'Caracterización temática del predio.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 .   COLUMN gc_prediocatastro.destinacion_economica    COMMENT     J  COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 2   COLUMN gc_prediocatastro.sistema_procedencia_datos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.sistema_procedencia_datos IS 'Indica el sistema de gestión catastral de donde proceden los datos, en el caso del IGAC puede ser COBOL o SNC.';
            test_distinct_geoms       postgres    false    2606            �;           0    0 $   COLUMN gc_prediocatastro.fecha_datos    COMMENT     m   COMMENT ON COLUMN test_distinct_geoms.gc_prediocatastro.fecha_datos IS 'Fecha de la vigencia de los datos.';
            test_distinct_geoms       postgres    false    2606            (
           1259    730132    gc_propietario    TABLE     6  CREATE TABLE test_distinct_geoms.gc_propietario (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_distinct_geoms.gc_propietario;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_propietario    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_propietario IS 'Datos de los propietarios inscritos en las bases de datos catastrales que tienen relación con un predio.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 $   COLUMN gc_propietario.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.tipo_documento IS 'Tipo de documento del propietario registrado en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 &   COLUMN gc_propietario.numero_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.numero_documento IS 'Número de documento del propietario registrado en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 )   COLUMN gc_propietario.digito_verificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.digito_verificacion IS 'Dígito de verificación de las personas jurídicas.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 #   COLUMN gc_propietario.primer_nombre    COMMENT     t   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.primer_nombre IS 'Primer nombre del propietario en catastro.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 $   COLUMN gc_propietario.segundo_nombre    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.segundo_nombre IS 'Segundo nombre del propietario en catastro.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 %   COLUMN gc_propietario.primer_apellido    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.primer_apellido IS 'Primer apellido del propietario en catastro.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 &   COLUMN gc_propietario.segundo_apellido    COMMENT     z   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.segundo_apellido IS 'Segundo apellido del propietario en catastro.';
            test_distinct_geoms       postgres    false    2600            �;           0    0 "   COLUMN gc_propietario.razon_social    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_propietario.razon_social IS 'Razon social de las personas jurídicas inscritas como propietarios en catastro.';
            test_distinct_geoms       postgres    false    2600            )
           1259    730142    gc_sectorrural    TABLE       CREATE TABLE test_distinct_geoms.gc_sectorrural (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 /   DROP TABLE test_distinct_geoms.gc_sectorrural;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_sectorrural    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_sectorrural IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales rurales de una entidad territorial.';
            test_distinct_geoms       postgres    false    2601            �;           0    0    COLUMN gc_sectorrural.codigo    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.gc_sectorrural.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_distinct_geoms       postgres    false    2601            �;           0    0    COLUMN gc_sectorrural.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_sectorrural.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2601            *
           1259    730152    gc_sectorurbano    TABLE       CREATE TABLE test_distinct_geoms.gc_sectorurbano (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 0   DROP TABLE test_distinct_geoms.gc_sectorurbano;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_sectorurbano    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_sectorurbano IS 'Dato geografico aportado por el Gestor Catastral respecto de los sectores catastrales urbanos de una entidad territorial.';
            test_distinct_geoms       postgres    false    2602            �;           0    0    COLUMN gc_sectorurbano.codigo    COMMENT     y   COMMENT ON COLUMN test_distinct_geoms.gc_sectorurbano.codigo IS 'Código catastral de 9 dígitos del sector catastral.';
            test_distinct_geoms       postgres    false    2602            �;           0    0     COLUMN gc_sectorurbano.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_sectorurbano.geometria IS 'Polígono de los sectores catastrales existentes en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2602            q
           1259    730890    gc_sistemaprocedenciadatostipo    TABLE     �  CREATE TABLE test_distinct_geoms.gc_sistemaprocedenciadatostipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ?   DROP TABLE test_distinct_geoms.gc_sistemaprocedenciadatostipo;
       test_distinct_geoms         postgres    false    2551    19            +
           1259    730162 
   gc_terreno    TABLE     T  CREATE TABLE test_distinct_geoms.gc_terreno (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_distinct_geoms.gc_terreno;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_terreno    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_terreno IS 'Datos de los terrenos inscritos en las bases de datos catastrales en una entidad territorial.';
            test_distinct_geoms       postgres    false    2603            �;           0    0 +   COLUMN gc_terreno.area_terreno_alfanumerica    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_terreno.area_terreno_alfanumerica IS 'Área de terreno alfanumérica registrada en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2603            �;           0    0 &   COLUMN gc_terreno.area_terreno_digital    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_terreno.area_terreno_digital IS 'Área de terreno digital registrada en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2603            �;           0    0 '   COLUMN gc_terreno.manzana_vereda_codigo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_terreno.manzana_vereda_codigo IS 'Código de la manzana o vereda donde se localiza el terreno.';
            test_distinct_geoms       postgres    false    2603            �;           0    0 %   COLUMN gc_terreno.numero_subterraneos    COMMENT     s   COMMENT ON COLUMN test_distinct_geoms.gc_terreno.numero_subterraneos IS 'Número de subterráneos en el terreno.';
            test_distinct_geoms       postgres    false    2603            �;           0    0    COLUMN gc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_terreno.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2603            ,
           1259    730173    gc_unidadconstruccion    TABLE     �  CREATE TABLE test_distinct_geoms.gc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_distinct_geoms.gc_unidadconstruccion;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_unidadconstruccion IS 'Datos de las unidades de construcción inscritas en las bases de datos catastrales en una entidad territorial.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 *   COLUMN gc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 %   COLUMN gc_unidadconstruccion.etiqueta    COMMENT     s   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.etiqueta IS 'Etiqueta de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 )   COLUMN gc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 .   COLUMN gc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 #   COLUMN gc_unidadconstruccion.planta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.planta IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 /   COLUMN gc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 )   COLUMN gc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 *   COLUMN gc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 (   COLUMN gc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0     COLUMN gc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 .   COLUMN gc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 $   COLUMN gc_unidadconstruccion.puntaje    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.puntaje IS 'Puntaje total de la calificación de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 ,   COLUMN gc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 )   COLUMN gc_unidadconstruccion.area_privada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.area_privada IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 +   COLUMN gc_unidadconstruccion.codigo_terreno    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.codigo_terreno IS 'Código catastral del terreno donde se encuentra localizada la unidad de construcción.';
            test_distinct_geoms       postgres    false    2604            �;           0    0 &   COLUMN gc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_unidadconstruccion.geometria IS 'Polígono de la unidad de construcción existente en la base de datos catastral.';
            test_distinct_geoms       postgres    false    2604            c
           1259    730764    gc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.gc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.gc_unidadconstrucciontipo;
       test_distinct_geoms         postgres    false    2551    19            -
           1259    730185 	   gc_vereda    TABLE     x  CREATE TABLE test_distinct_geoms.gc_vereda (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    codigo character varying(17),
    codigo_anterior character varying(13),
    nombre character varying(100),
    codigo_sector character varying(9),
    geometria public.geometry(MultiPolygon,38820)
);
 *   DROP TABLE test_distinct_geoms.gc_vereda;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE gc_vereda    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.gc_vereda IS 'Dato geografico aportado por el Gestor Catastral respecto de las veredades de una entidad territorial.';
            test_distinct_geoms       postgres    false    2605            �;           0    0    COLUMN gc_vereda.codigo    COMMENT     l   COMMENT ON COLUMN test_distinct_geoms.gc_vereda.codigo IS 'Código catastral de 17 dígitos de la vereda.';
            test_distinct_geoms       postgres    false    2605            �;           0    0     COLUMN gc_vereda.codigo_anterior    COMMENT     u   COMMENT ON COLUMN test_distinct_geoms.gc_vereda.codigo_anterior IS 'Código catastral de 13 dígitos de la vereda.';
            test_distinct_geoms       postgres    false    2605            �;           0    0    COLUMN gc_vereda.nombre    COMMENT     R   COMMENT ON COLUMN test_distinct_geoms.gc_vereda.nombre IS 'Nombre de la vereda.';
            test_distinct_geoms       postgres    false    2605            �;           0    0    COLUMN gc_vereda.codigo_sector    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.gc_vereda.codigo_sector IS 'Código catastral de 9 dígitos del código de sector donde se encuentra la vereda.';
            test_distinct_geoms       postgres    false    2605            �;           0    0    COLUMN gc_vereda.geometria    COMMENT     _   COMMENT ON COLUMN test_distinct_geoms.gc_vereda.geometria IS 'Geometría en 2D de la vereda.';
            test_distinct_geoms       postgres    false    2605            �	           1259    729683    gm_multisurface2d    TABLE     �   CREATE TABLE test_distinct_geoms.gm_multisurface2d (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 2   DROP TABLE test_distinct_geoms.gm_multisurface2d;
       test_distinct_geoms         postgres    false    2551    19            �	           1259    729700    gm_multisurface3d    TABLE     �   CREATE TABLE test_distinct_geoms.gm_multisurface3d (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint
);
 2   DROP TABLE test_distinct_geoms.gm_multisurface3d;
       test_distinct_geoms         postgres    false    2551    19            �	           1259    729672    gm_surface2dlistvalue    TABLE        CREATE TABLE test_distinct_geoms.gm_surface2dlistvalue (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(Polygon,38820) NOT NULL,
    gm_multisurface2d_geometry bigint
);
 6   DROP TABLE test_distinct_geoms.gm_surface2dlistvalue;
       test_distinct_geoms         postgres    false    2551    19            �	           1259    729689    gm_surface3dlistvalue    TABLE       CREATE TABLE test_distinct_geoms.gm_surface3dlistvalue (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    avalue public.geometry(PolygonZ,38820) NOT NULL,
    gm_multisurface3d_geometry bigint
);
 6   DROP TABLE test_distinct_geoms.gm_surface3dlistvalue;
       test_distinct_geoms         postgres    false    2551    19            
           1259    729775    imagen    TABLE     %  CREATE TABLE test_distinct_geoms.imagen (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    uri character varying(255),
    extinteresado_huella_dactilar bigint,
    extinteresado_fotografia bigint,
    extinteresado_firma bigint
);
 '   DROP TABLE test_distinct_geoms.imagen;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE imagen    COMMENT     [   COMMENT ON TABLE test_distinct_geoms.imagen IS 'Referencia a una imagen mediante su url.';
            test_distinct_geoms       postgres    false    2562            �;           0    0    COLUMN imagen.uri    COMMENT     I   COMMENT ON COLUMN test_distinct_geoms.imagen.uri IS 'url de la imagen.';
            test_distinct_geoms       postgres    false    2562            �;           0    0 +   COLUMN imagen.extinteresado_huella_dactilar    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.imagen.extinteresado_huella_dactilar IS 'Imagen de la huella dactilar del interesado.';
            test_distinct_geoms       postgres    false    2562            �;           0    0 &   COLUMN imagen.extinteresado_fotografia    COMMENT     h   COMMENT ON COLUMN test_distinct_geoms.imagen.extinteresado_fotografia IS 'Fotografía del interesado.';
            test_distinct_geoms       postgres    false    2562            �;           0    0 !   COLUMN imagen.extinteresado_firma    COMMENT     ]   COMMENT ON COLUMN test_distinct_geoms.imagen.extinteresado_firma IS 'Firma del interesado.';
            test_distinct_geoms       postgres    false    2562            h
           1259    730809    ini_emparejamientotipo    TABLE     �  CREATE TABLE test_distinct_geoms.ini_emparejamientotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.ini_emparejamientotipo;
       test_distinct_geoms         postgres    false    2551    19            7
           1259    730280    ini_predioinsumos    TABLE     ,  CREATE TABLE test_distinct_geoms.ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_emparejamiento bigint,
    observaciones text,
    gc_predio_catastro bigint,
    snr_predio_juridico bigint
);
 2   DROP TABLE test_distinct_geoms.ini_predioinsumos;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE ini_predioinsumos    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.ini_predioinsumos IS 'Clase que relaciona los predios en los modelos de insumos para el Gestor Catastral y la SNR.';
            test_distinct_geoms       postgres    false    2615            �;           0    0 ,   COLUMN ini_predioinsumos.tipo_emparejamiento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.ini_predioinsumos.tipo_emparejamiento IS 'Tipo de emparejamiento de insumos Catastro-Registro';
            test_distinct_geoms       postgres    false    2615            �;           0    0 &   COLUMN ini_predioinsumos.observaciones    COMMENT     k   COMMENT ON COLUMN test_distinct_geoms.ini_predioinsumos.observaciones IS 'Observaciones de la relación.';
            test_distinct_geoms       postgres    false    2615            �
           1259    731097    lc_acuerdotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_acuerdotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_distinct_geoms.lc_acuerdotipo;
       test_distinct_geoms         postgres    false    2551    19            8
           1259    730292    lc_agrupacioninteresados    TABLE     �  CREATE TABLE test_distinct_geoms.lc_agrupacioninteresados (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo bigint NOT NULL,
    nombre character varying(255),
    comienzo_vida_util_version timestamp without time zone NOT NULL,
    fin_vida_util_version timestamp without time zone,
    espacio_de_nombres character varying(255) NOT NULL,
    local_id character varying(255) NOT NULL
);
 9   DROP TABLE test_distinct_geoms.lc_agrupacioninteresados;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE lc_agrupacioninteresados    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_agrupacioninteresados IS 'Clase que hereda los atributos de la  Clase COL_Agrupación_Interesados.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 $   COLUMN lc_agrupacioninteresados.tipo    COMMENT     z   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.tipo IS 'Indica el tipo de agrupación del que se trata.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 &   COLUMN lc_agrupacioninteresados.nombre    COMMENT     c   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.nombre IS 'Nombre del interesado.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 :   COLUMN lc_agrupacioninteresados.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 5   COLUMN lc_agrupacioninteresados.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 2   COLUMN lc_agrupacioninteresados.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2616            �;           0    0 (   COLUMN lc_agrupacioninteresados.local_id    COMMENT     j   COMMENT ON COLUMN test_distinct_geoms.lc_agrupacioninteresados.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2616            �
           1259    731106    lc_anexotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_anexotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_distinct_geoms.lc_anexotipo;
       test_distinct_geoms         postgres    false    2551    19            L
           1259    730536    lc_calificacionconvencional    TABLE     �  CREATE TABLE test_distinct_geoms.lc_calificacionconvencional (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_calificar bigint NOT NULL,
    total_calificacion integer NOT NULL,
    lc_unidad_construccion bigint,
    CONSTRAINT lc_calificacionconvencnal_total_calificacion_check CHECK (((total_calificacion >= 0) AND (total_calificacion <= 999999999)))
);
 <   DROP TABLE test_distinct_geoms.lc_calificacionconvencional;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0 !   TABLE lc_calificacionconvencional    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_calificacionconvencional IS 'Proceso mediante el cual se le asigna un puntaje a las edificaciones de acuerdo a sus características constructivas';
            test_distinct_geoms       postgres    false    2636            �;           0    0 1   COLUMN lc_calificacionconvencional.tipo_calificar    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_calificacionconvencional.tipo_calificar IS 'Indica si la calificación de construcción corresponde a residencial, comercial o industrial.';
            test_distinct_geoms       postgres    false    2636            �;           0    0 5   COLUMN lc_calificacionconvencional.total_calificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_calificacionconvencional.total_calificacion IS 'Puntaje total de la calificación de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2636            M
           1259    730545    lc_calificacionnoconvencional    TABLE       CREATE TABLE test_distinct_geoms.lc_calificacionnoconvencional (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_anexo bigint NOT NULL,
    lc_unidad_construccion bigint
);
 >   DROP TABLE test_distinct_geoms.lc_calificacionnoconvencional;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0 #   TABLE lc_calificacionnoconvencional    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_calificacionnoconvencional IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_distinct_geoms       postgres    false    2637            �;           0    0 /   COLUMN lc_calificacionnoconvencional.tipo_anexo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_calificacionnoconvencional.tipo_anexo IS 'Relaciona el tipo de construcción consideradas como anexo para el catastro.';
            test_distinct_geoms       postgres    false    2637            �
           1259    731196    lc_calificartipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_calificartipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_distinct_geoms.lc_calificartipo;
       test_distinct_geoms         postgres    false    2551    19            g
           1259    730800    lc_categoriasuelotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_categoriasuelotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_distinct_geoms.lc_categoriasuelotipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731232    lc_clasecalificaciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_clasecalificaciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_distinct_geoms.lc_clasecalificaciontipo;
       test_distinct_geoms         postgres    false    2551    19            p
           1259    730881    lc_clasesuelotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_clasesuelotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.lc_clasesuelotipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731241    lc_condicionprediotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_condicionprediotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.lc_condicionprediotipo;
       test_distinct_geoms         postgres    false    2551    19            9
           1259    730303    lc_construccion    TABLE     �  CREATE TABLE test_distinct_geoms.lc_construccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_distinct_geoms.lc_construccion;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0    TABLE lc_construccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_construccion IS 'Es la unión de materiales adheridos al terreno, con carácter de permanente, cualesquiera sean los elementos que la constituyan.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 $   COLUMN lc_construccion.identificador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 (   COLUMN lc_construccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 #   COLUMN lc_construccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 #   COLUMN lc_construccion.numero_pisos    COMMENT     u   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.numero_pisos IS 'Número total de pisos de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 %   COLUMN lc_construccion.numero_sotanos    COMMENT     z   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.numero_sotanos IS 'Número total de sótanos de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 '   COLUMN lc_construccion.numero_mezanines    COMMENT     }   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.numero_mezanines IS 'Número total de mezanines de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 )   COLUMN lc_construccion.numero_semisotanos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.numero_semisotanos IS 'Número total de semisótanos de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 (   COLUMN lc_construccion.anio_construccion    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.anio_construccion IS 'Año de edificación de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 *   COLUMN lc_construccion.avaluo_construccion    COMMENT     }   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.avaluo_construccion IS 'Avalúo total catastral de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 (   COLUMN lc_construccion.area_construccion    COMMENT     f   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.area_construccion IS 'Área total construida.';
            test_distinct_geoms       postgres    false    2617            �;           0    0    COLUMN lc_construccion.altura    COMMENT     e   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.altura IS 'Altura total de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 $   COLUMN lc_construccion.observaciones    COMMENT     w   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.observaciones IS 'Observaciones generales de la construcción.';
            test_distinct_geoms       postgres    false    2617            �;           0    0     COLUMN lc_construccion.dimension    COMMENT     ]   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.dimension IS 'Dimensión del objeto.';
            test_distinct_geoms       postgres    false    2617            �;           0    0    COLUMN lc_construccion.etiqueta    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 *   COLUMN lc_construccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_distinct_geoms       postgres    false    2617            �;           0    0     COLUMN lc_construccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 1   COLUMN lc_construccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 ,   COLUMN lc_construccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2617            �;           0    0 )   COLUMN lc_construccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2617            �;           0    0    COLUMN lc_construccion.local_id    COMMENT     a   COMMENT ON COLUMN test_distinct_geoms.lc_construccion.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2617            }
           1259    730998    lc_construccionplantatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_construccionplantatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.lc_construccionplantatipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731214    lc_construcciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_construcciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_distinct_geoms.lc_construcciontipo;
       test_distinct_geoms         postgres    false    2551    19            :
           1259    730318    lc_contactovisita    TABLE     1  CREATE TABLE test_distinct_geoms.lc_contactovisita (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_distinct_geoms.lc_contactovisita;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0 5   COLUMN lc_contactovisita.tipo_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.tipo_documento_quien_atendio IS 'Indica el tipo de documento de la persona que atendió la visita predial.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 7   COLUMN lc_contactovisita.numero_documento_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.numero_documento_quien_atendio IS 'Indica el número de documento de la persona que atendió la visita predial.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 4   COLUMN lc_contactovisita.primer_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.primer_nombre_quien_atendio IS 'Primer nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 5   COLUMN lc_contactovisita.segundo_nombre_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.segundo_nombre_quien_atendio IS 'Segundo nombre de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 6   COLUMN lc_contactovisita.primer_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.primer_apellido_quien_atendio IS 'Primer apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 7   COLUMN lc_contactovisita.segundo_apellido_quien_atendio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.segundo_apellido_quien_atendio IS 'Segundo apellido de la persona encargada de atender la visita de ejecución de actividades catastrales sobre el predio.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 ,   COLUMN lc_contactovisita.relacion_con_predio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.relacion_con_predio IS 'Relación con el predio de la persona encargada de atender la visita, por ejemplo propietario, encargado, administrador, poseedor, etc.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 1   COLUMN lc_contactovisita.domicilio_notificaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.domicilio_notificaciones IS 'Dirección de domicilio para notificaciones.';
            test_distinct_geoms       postgres    false    2618            �;           0    0     COLUMN lc_contactovisita.celular    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.celular IS 'Número de celular de la persona que atendió la visita de actividades catastrales.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 +   COLUMN lc_contactovisita.correo_electronico    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.correo_electronico IS 'Correo electrónico de la persona que atendió la visita de actividades catastrales.';
            test_distinct_geoms       postgres    false    2618            �;           0    0 0   COLUMN lc_contactovisita.autoriza_notificaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_contactovisita.autoriza_notificaciones IS 'Indica si autoriza las notificaciones administrativas por medio de vía electrónica.';
            test_distinct_geoms       postgres    false    2618            N
           1259    730554 )   lc_datosadicionaleslevantamientocatastral    TABLE     �  CREATE TABLE test_distinct_geoms.lc_datosadicionaleslevantamientocatastral (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 J   DROP TABLE test_distinct_geoms.lc_datosadicionaleslevantamientocatastral;
       test_distinct_geoms         postgres    false    2551    19            �;           0    0 /   TABLE lc_datosadicionaleslevantamientocatastral    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_datosadicionaleslevantamientocatastral IS 'Datos de adicionales del predio para catastro multipropósito';
            test_distinct_geoms       postgres    false    2638            �;           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.tiene_area_registral    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.tiene_area_registral IS 'Indica si el predio según la información registral cuenta con el valor de área en la cabida y linderos.';
            test_distinct_geoms       postgres    false    2638            �;           0    0 B   COLUMN lc_datosadicionaleslevantamientocatastral.area_registral_m2    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.area_registral_m2 IS 'Indica el valor del área registral del predio en metros cuadrados.';
            test_distinct_geoms       postgres    false    2638             <           0    0 R   COLUMN lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral    COMMENT     �  COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.procedimiento_catastral_registral IS 'Se considerará como procedimientos catastrales con efectos registrales los siguientes: actualización de linderos, rectificación de área por imprecisa determinación, actualización masiva y puntual de linderos y áreas, rectificación de linderos por acuerdo entre las partes, e inclusión de área y/o linderos.';
            test_distinct_geoms       postgres    false    2638            <           0    0 F   COLUMN lc_datosadicionaleslevantamientocatastral.destinacion_economica    COMMENT     b  COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.destinacion_economica IS 'Es la clasificación para fines estadísticos que se da a cada inmueble en su conjunto–terreno, construcciones o edificaciones-, en el momento de la identificación predial de conformidad con la actividad predominante que en él se desarrolle.';
            test_distinct_geoms       postgres    false    2638            <           0    0 <   COLUMN lc_datosadicionaleslevantamientocatastral.clase_suelo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.clase_suelo IS 'Clasificación del suelo según el instrumento de planeación vigente.';
            test_distinct_geoms       postgres    false    2638            <           0    0 @   COLUMN lc_datosadicionaleslevantamientocatastral.categoria_suelo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.categoria_suelo IS 'Categoría del suelo según el instrumento de planeación vigente.';
            test_distinct_geoms       postgres    false    2638            <           0    0 >   COLUMN lc_datosadicionaleslevantamientocatastral.observaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.observaciones IS 'Observaciones generales respecto del predio.';
            test_distinct_geoms       postgres    false    2638            <           0    0 E   COLUMN lc_datosadicionaleslevantamientocatastral.fecha_visita_predial    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.fecha_visita_predial IS 'Fecha de la visita en campo al predio.';
            test_distinct_geoms       postgres    false    2638            <           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.tipo_documento_reconocedor IS 'Indica el tipo de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_distinct_geoms       postgres    false    2638            <           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.numero_documento_reconocedor IS 'Indica el número de documento del reconocedor predial encargado de efectuar el levantamiento catastral.';
            test_distinct_geoms       postgres    false    2638            <           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.primer_nombre_reconocedor IS 'Primer nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_distinct_geoms       postgres    false    2638            	<           0    0 K   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.segundo_nombre_reconocedor IS 'Segundo nombre del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_distinct_geoms       postgres    false    2638            
<           0    0 L   COLUMN lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.primer_apellido_reconocedor IS 'Primer apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_distinct_geoms       postgres    false    2638            <           0    0 M   COLUMN lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.segundo_apellido_reconocedor IS 'Segundo apellido del delegado de ejecutar las actividades catastrales en campo en el predio.';
            test_distinct_geoms       postgres    false    2638            <           0    0 A   COLUMN lc_datosadicionaleslevantamientocatastral.resultado_visita    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.resultado_visita IS 'Posibles situaciones que se presentan y afectan el resultado del levantamiento de la información en campo.';
            test_distinct_geoms       postgres    false    2638            <           0    0 J   COLUMN lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia    COMMENT       COMMENT ON COLUMN test_distinct_geoms.lc_datosadicionaleslevantamientocatastral.suscribe_acta_colindancia IS 'Indica si dentro del proceso de formación o actualización catastral se suscribe acta de colindancia para el predio objeto de levantamiento catastral.';
            test_distinct_geoms       postgres    false    2638            ;
           1259    730331    lc_datosphcondominio    TABLE       CREATE TABLE test_distinct_geoms.lc_datosphcondominio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 5   DROP TABLE test_distinct_geoms.lc_datosphcondominio;
       test_distinct_geoms         postgres    false    2551    19            <           0    0    TABLE lc_datosphcondominio    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_datosphcondominio IS 'Clase que contiene los datos principales del predio matriz sometido al regimen de propiedad horizontal.';
            test_distinct_geoms       postgres    false    2619            <           0    0 .   COLUMN lc_datosphcondominio.area_total_terreno    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_terreno IS 'Área total del terreno del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 6   COLUMN lc_datosphcondominio.area_total_terreno_privada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_terreno_privada IS 'Área total privada del terreno del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 4   COLUMN lc_datosphcondominio.area_total_terreno_comun    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_terreno_comun IS 'Área total de terreno común del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 1   COLUMN lc_datosphcondominio.area_total_construida    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_construida IS 'Área total de construida del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 9   COLUMN lc_datosphcondominio.area_total_construida_privada    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_construida_privada IS 'Área total construida privada del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 7   COLUMN lc_datosphcondominio.area_total_construida_comun    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.area_total_construida_comun IS 'Área total construida común del PH o Condominio Matriz.';
            test_distinct_geoms       postgres    false    2619            <           0    0 )   COLUMN lc_datosphcondominio.numero_torres    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.numero_torres IS 'Número de torres en el PH o Condominio.';
            test_distinct_geoms       postgres    false    2619            <           0    0 3   COLUMN lc_datosphcondominio.total_unidades_privadas    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_datosphcondominio.total_unidades_privadas IS 'Total de unidades privadas en el PH o Condominio.';
            test_distinct_geoms       postgres    false    2619            <
           1259    730339 
   lc_derecho    TABLE       CREATE TABLE test_distinct_geoms.lc_derecho (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_distinct_geoms.lc_derecho;
       test_distinct_geoms         postgres    false    2551    19            <           0    0    TABLE lc_derecho    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_derecho IS 'Clase que registra las instancias de los derechos que un interesado ejerce sobre un predio. Es una especialización de la clase COL_DRR del propio modelo.';
            test_distinct_geoms       postgres    false    2620            <           0    0    COLUMN lc_derecho.tipo    COMMENT     S   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.tipo IS 'Derecho que se ejerce.';
            test_distinct_geoms       postgres    false    2620            <           0    0 "   COLUMN lc_derecho.fraccion_derecho    COMMENT     �  COMMENT ON COLUMN test_distinct_geoms.lc_derecho.fraccion_derecho IS 'Indica la fracción del derecho en relación a la forma de tenencia y el área que esta ocupa dentro de la extensión del predio. Ejemplo: un predio informal que se encuentra sobre un predio baldío y un predio privado tendrá un porcentaje de derecho de ocupación y posesión expresado en tanto por uno (0.0000000000 a 1.0000000000).';
            test_distinct_geoms       postgres    false    2620            <           0    0 '   COLUMN lc_derecho.fecha_inicio_tenencia    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.fecha_inicio_tenencia IS 'Fecha de inicio de tenencia del interesado con respecto al predio.';
            test_distinct_geoms       postgres    false    2620            <           0    0    COLUMN lc_derecho.descripcion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_distinct_geoms       postgres    false    2620            <           0    0 ,   COLUMN lc_derecho.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2620            <           0    0 '   COLUMN lc_derecho.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2620            <           0    0 $   COLUMN lc_derecho.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2620            <           0    0    COLUMN lc_derecho.local_id    COMMENT     \   COMMENT ON COLUMN test_distinct_geoms.lc_derecho.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2620            m
           1259    730854    lc_derechotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_derechotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_distinct_geoms.lc_derechotipo;
       test_distinct_geoms         postgres    false    2551    19            d
           1259    730773    lc_destinacioneconomicatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_destinacioneconomicatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_distinct_geoms.lc_destinacioneconomicatipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731169    lc_dominioconstrucciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_dominioconstrucciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.lc_dominioconstrucciontipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731286    lc_estadoconservaciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_estadoconservaciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.lc_estadoconservaciontipo;
       test_distinct_geoms         postgres    false    2551    19            =
           1259    730353    lc_estructuranovedadfmi    TABLE     "  CREATE TABLE test_distinct_geoms.lc_estructuranovedadfmi (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(3),
    numero_fmi character varying(80),
    lc_dtsdcnlstmntctstral_novedad_fmi bigint
);
 8   DROP TABLE test_distinct_geoms.lc_estructuranovedadfmi;
       test_distinct_geoms         postgres    false    2551    19             <           0    0 A   COLUMN lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_estructuranovedadfmi.lc_dtsdcnlstmntctstral_novedad_fmi IS 'Relaciona los cambios del predio respecto de la información registral vigente.';
            test_distinct_geoms       postgres    false    2621            >
           1259    730360 !   lc_estructuranovedadnumeropredial    TABLE     :  CREATE TABLE test_distinct_geoms.lc_estructuranovedadnumeropredial (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    numero_predial character varying(30) NOT NULL,
    tipo_novedad bigint,
    lc_dtsdcnlstmntctstral_novedad_numeros_prediales bigint
);
 B   DROP TABLE test_distinct_geoms.lc_estructuranovedadnumeropredial;
       test_distinct_geoms         postgres    false    2551    19            !<           0    0 Y   COLUMN lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_estructuranovedadnumeropredial.lc_dtsdcnlstmntctstral_novedad_numeros_prediales IS 'Relaciona los cambios del predio respecto de la información catastral vigente.';
            test_distinct_geoms       postgres    false    2622            \
           1259    730701 .   lc_estructuranovedadnumeropredial_tipo_novedad    TABLE     �  CREATE TABLE test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 O   DROP TABLE test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad;
       test_distinct_geoms         postgres    false    2551    19            j
           1259    730827    lc_fotoidentificaciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_fotoidentificaciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.lc_fotoidentificaciontipo;
       test_distinct_geoms         postgres    false    2551    19            ?
           1259    730368    lc_fuenteadministrativa    TABLE     ,  CREATE TABLE test_distinct_geoms.lc_fuenteadministrativa (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 8   DROP TABLE test_distinct_geoms.lc_fuenteadministrativa;
       test_distinct_geoms         postgres    false    2551    19            "<           0    0    TABLE lc_fuenteadministrativa    COMMENT       COMMENT ON TABLE test_distinct_geoms.lc_fuenteadministrativa IS 'Clase que almacena las fuentes administrativas (escrituras, sentencias, actos administrativos, etc) que sustentan el Derecho respecto de la relación de tenencia entre el Interesado y el predio.';
            test_distinct_geoms       postgres    false    2623            #<           0    0 #   COLUMN lc_fuenteadministrativa.tipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.tipo IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_distinct_geoms       postgres    false    2623            $<           0    0 *   COLUMN lc_fuenteadministrativa.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_distinct_geoms       postgres    false    2623            %<           0    0 *   COLUMN lc_fuenteadministrativa.observacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.observacion IS 'Observaciones o descripción del documento de la fuente administrativa.';
            test_distinct_geoms       postgres    false    2623            &<           0    0 ,   COLUMN lc_fuenteadministrativa.numero_fuente    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.numero_fuente IS 'Identificador del documento, ejemplo: número de la resolución, número de la escritura pública o número de radicado de una sentencia.';
            test_distinct_geoms       postgres    false    2623            '<           0    0 4   COLUMN lc_fuenteadministrativa.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_distinct_geoms       postgres    false    2623            (<           0    0 -   COLUMN lc_fuenteadministrativa.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_distinct_geoms       postgres    false    2623            )<           0    0 5   COLUMN lc_fuenteadministrativa.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_distinct_geoms       postgres    false    2623            *<           0    0 1   COLUMN lc_fuenteadministrativa.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2623            +<           0    0 '   COLUMN lc_fuenteadministrativa.local_id    COMMENT     i   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteadministrativa.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2623            �
           1259    731142    lc_fuenteadministrativatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_fuenteadministrativatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_distinct_geoms.lc_fuenteadministrativatipo;
       test_distinct_geoms         postgres    false    2551    19            @
           1259    730381    lc_fuenteespacial    TABLE     
  CREATE TABLE test_distinct_geoms.lc_fuenteespacial (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 2   DROP TABLE test_distinct_geoms.lc_fuenteespacial;
       test_distinct_geoms         postgres    false    2551    19            ,<           0    0    TABLE lc_fuenteespacial    COMMENT     }   COMMENT ON TABLE test_distinct_geoms.lc_fuenteespacial IS 'Clase que hereda los atributos de la  Clase COL_FuenteEspacial.';
            test_distinct_geoms       postgres    false    2624            -<           0    0    COLUMN lc_fuenteespacial.nombre    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.nombre IS 'Nombre de la fuente espacial del levantamiento catastral de un predio.';
            test_distinct_geoms       postgres    false    2624            .<           0    0    COLUMN lc_fuenteespacial.tipo    COMMENT     \   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.tipo IS 'Tipo de fuente espacial.';
            test_distinct_geoms       postgres    false    2624            /<           0    0 $   COLUMN lc_fuenteespacial.descripcion    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.descripcion IS 'Descripción de la fuente espacial.';
            test_distinct_geoms       postgres    false    2624            0<           0    0 !   COLUMN lc_fuenteespacial.metadato    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.metadato IS 'Metadato de la fuente espacial.';
            test_distinct_geoms       postgres    false    2624            1<           0    0 .   COLUMN lc_fuenteespacial.estado_disponibilidad    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.estado_disponibilidad IS 'Indica si la fuente está o no disponible y en qué condiciones. También puede indicar porqué ha dejado de estar disponible, si ha ocurrido.';
            test_distinct_geoms       postgres    false    2624            2<           0    0 '   COLUMN lc_fuenteespacial.tipo_principal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.tipo_principal IS 'Tipo de formato en el que es presentada la fuente, de acuerdo con el registro de metadatos.';
            test_distinct_geoms       postgres    false    2624            3<           0    0 /   COLUMN lc_fuenteespacial.fecha_documento_fuente    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.fecha_documento_fuente IS 'Fecha de expedición del documento de la fuente.';
            test_distinct_geoms       postgres    false    2624            4<           0    0 +   COLUMN lc_fuenteespacial.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2624            5<           0    0 !   COLUMN lc_fuenteespacial.local_id    COMMENT     c   COMMENT ON COLUMN test_distinct_geoms.lc_fuenteespacial.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2624            A
           1259    730394    lc_grupocalificacion    TABLE     �  CREATE TABLE test_distinct_geoms.lc_grupocalificacion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    clase_calificacion bigint NOT NULL,
    conservacion bigint NOT NULL,
    subtotal integer NOT NULL,
    lc_calificacion_convencional bigint NOT NULL,
    CONSTRAINT lc_grupocalificacion_subtotal_check CHECK (((subtotal >= 0) AND (subtotal <= 9999999)))
);
 5   DROP TABLE test_distinct_geoms.lc_grupocalificacion;
       test_distinct_geoms         postgres    false    2551    19            6<           0    0    TABLE lc_grupocalificacion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_grupocalificacion IS 'Calificación de la construccion según los item determinados para calificar.';
            test_distinct_geoms       postgres    false    2625            7<           0    0 .   COLUMN lc_grupocalificacion.clase_calificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_grupocalificacion.clase_calificacion IS 'Indica los elementos generales de la calificación de la construcción de acuerdo al método vigente.';
            test_distinct_geoms       postgres    false    2625            8<           0    0 (   COLUMN lc_grupocalificacion.conservacion    COMMENT     |   COMMENT ON COLUMN test_distinct_geoms.lc_grupocalificacion.conservacion IS 'Estado de conservación del grupo calificado.';
            test_distinct_geoms       postgres    false    2625            9<           0    0 $   COLUMN lc_grupocalificacion.subtotal    COMMENT     i   COMMENT ON COLUMN test_distinct_geoms.lc_grupocalificacion.subtotal IS 'Subtotal del grupo calificado.';
            test_distinct_geoms       postgres    false    2625            l
           1259    730845    lc_grupoetnicotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_grupoetnicotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_distinct_geoms.lc_grupoetnicotipo;
       test_distinct_geoms         postgres    false    2551    19            B
           1259    730404    lc_interesado    TABLE     =  CREATE TABLE test_distinct_geoms.lc_interesado (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 .   DROP TABLE test_distinct_geoms.lc_interesado;
       test_distinct_geoms         postgres    false    2551    19            :<           0    0    TABLE lc_interesado    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_interesado IS 'Es la parte que tiene una relación con el predio por algún tipo de derecho, restricción, publicidad o responsabilidad';
            test_distinct_geoms       postgres    false    2626            ;<           0    0    COLUMN lc_interesado.tipo    COMMENT     `   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.tipo IS 'Tipo de persona del que se trata';
            test_distinct_geoms       postgres    false    2626            <<           0    0 #   COLUMN lc_interesado.tipo_documento    COMMENT     m   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.tipo_documento IS 'Tipo de documento del que se trata.';
            test_distinct_geoms       postgres    false    2626            =<           0    0 (   COLUMN lc_interesado.documento_identidad    COMMENT     u   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.documento_identidad IS 'Documento de identidad del interesado.';
            test_distinct_geoms       postgres    false    2626            ><           0    0 "   COLUMN lc_interesado.primer_nombre    COMMENT     m   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.primer_nombre IS 'Primer nombre de la persona física.';
            test_distinct_geoms       postgres    false    2626            ?<           0    0 #   COLUMN lc_interesado.segundo_nombre    COMMENT     o   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.segundo_nombre IS 'Segundo nombre de la persona física.';
            test_distinct_geoms       postgres    false    2626            @<           0    0 $   COLUMN lc_interesado.primer_apellido    COMMENT     q   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.primer_apellido IS 'Primer apellido de la persona física.';
            test_distinct_geoms       postgres    false    2626            A<           0    0 %   COLUMN lc_interesado.segundo_apellido    COMMENT     s   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_distinct_geoms       postgres    false    2626            B<           0    0    COLUMN lc_interesado.sexo    COMMENT        COMMENT ON COLUMN test_distinct_geoms.lc_interesado.sexo IS 'Condición orgánica que distingue a los machos de las hembras.';
            test_distinct_geoms       postgres    false    2626            C<           0    0 !   COLUMN lc_interesado.razon_social    COMMENT     i   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.razon_social IS 'Nombre con el que está inscrito.';
            test_distinct_geoms       postgres    false    2626            D<           0    0    COLUMN lc_interesado.nombre    COMMENT     X   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.nombre IS 'Nombre del interesado.';
            test_distinct_geoms       postgres    false    2626            E<           0    0 /   COLUMN lc_interesado.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2626            F<           0    0 *   COLUMN lc_interesado.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2626            G<           0    0 '   COLUMN lc_interesado.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2626            H<           0    0    COLUMN lc_interesado.local_id    COMMENT     _   COMMENT ON COLUMN test_distinct_geoms.lc_interesado.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2626            C
           1259    730418    lc_interesadocontacto    TABLE     �  CREATE TABLE test_distinct_geoms.lc_interesadocontacto (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_distinct_geoms.lc_interesadocontacto;
       test_distinct_geoms         postgres    false    2551    19            I<           0    0    TABLE lc_interesadocontacto    COMMENT     k   COMMENT ON TABLE test_distinct_geoms.lc_interesadocontacto IS 'Datos de contacto de la parte interesada.';
            test_distinct_geoms       postgres    false    2627            J<           0    0 &   COLUMN lc_interesadocontacto.telefono1    COMMENT     {   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.telefono1 IS 'Numero de telefono de contacto del interesado.';
            test_distinct_geoms       postgres    false    2627            K<           0    0 &   COLUMN lc_interesadocontacto.telefono2    COMMENT     {   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.telefono2 IS 'Numero de telefono de contacto del interesado.';
            test_distinct_geoms       postgres    false    2627            L<           0    0 3   COLUMN lc_interesadocontacto.domicilio_notificacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.domicilio_notificacion IS 'Domicilio para notificaciones del interesado.';
            test_distinct_geoms       postgres    false    2627            M<           0    0 1   COLUMN lc_interesadocontacto.direccion_residencia    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.direccion_residencia IS 'Dirección de residencia del interesado.';
            test_distinct_geoms       postgres    false    2627            N<           0    0 /   COLUMN lc_interesadocontacto.correo_electronico    COMMENT     y   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.correo_electronico IS 'Correo electrónico del interesado.';
            test_distinct_geoms       postgres    false    2627            O<           0    0 9   COLUMN lc_interesadocontacto.autoriza_notificacion_correo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.autoriza_notificacion_correo IS 'Indica si el interesado autoriza notificación vía correo electrónico';
            test_distinct_geoms       postgres    false    2627            P<           0    0 )   COLUMN lc_interesadocontacto.departamento    COMMENT     z   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.departamento IS 'Departamento de residencia del interesado.';
            test_distinct_geoms       postgres    false    2627            Q<           0    0 &   COLUMN lc_interesadocontacto.municipio    COMMENT     t   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.municipio IS 'Municipio de residencia del interesado.';
            test_distinct_geoms       postgres    false    2627            R<           0    0 #   COLUMN lc_interesadocontacto.vereda    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.vereda IS 'Vereda de residencia del interesado.';
            test_distinct_geoms       postgres    false    2627            S<           0    0 *   COLUMN lc_interesadocontacto.corregimiento    COMMENT     |   COMMENT ON COLUMN test_distinct_geoms.lc_interesadocontacto.corregimiento IS 'Corregimiento de residencia del interesado.';
            test_distinct_geoms       postgres    false    2627            �
           1259    731043    lc_interesadodocumentotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_interesadodocumentotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ;   DROP TABLE test_distinct_geoms.lc_interesadodocumentotipo;
       test_distinct_geoms         postgres    false    2551    19            u
           1259    730926    lc_interesadotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_interesadotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.lc_interesadotipo;
       test_distinct_geoms         postgres    false    2551    19            D
           1259    730429 
   lc_lindero    TABLE     �  CREATE TABLE test_distinct_geoms.lc_lindero (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_distinct_geoms.lc_lindero;
       test_distinct_geoms         postgres    false    2551    19            T<           0    0    TABLE lc_lindero    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_lindero IS 'Linea de división que separa un bien inmueble de otro, que puede o no estar materializada físicamente.';
            test_distinct_geoms       postgres    false    2628            U<           0    0    COLUMN lc_lindero.longitud    COMMENT     `   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.longitud IS 'Longitud en metros del lindero.';
            test_distinct_geoms       postgres    false    2628            V<           0    0    COLUMN lc_lindero.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.geometria IS 'Geometría lineal que define el lindero. Puede estar asociada a geometrías de tipo punto que definen sus vértices o ser una entidad lineal independiente.';
            test_distinct_geoms       postgres    false    2628            W<           0    0 &   COLUMN lc_lindero.localizacion_textual    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.localizacion_textual IS 'Descripción de la localización, cuando esta se basa en texto.';
            test_distinct_geoms       postgres    false    2628            X<           0    0 ,   COLUMN lc_lindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2628            Y<           0    0 '   COLUMN lc_lindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2628            Z<           0    0 $   COLUMN lc_lindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2628            [<           0    0    COLUMN lc_lindero.local_id    COMMENT     \   COMMENT ON COLUMN test_distinct_geoms.lc_lindero.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2628            E
           1259    730440    lc_objetoconstruccion    TABLE     �  CREATE TABLE test_distinct_geoms.lc_objetoconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_objeto_construccion bigint NOT NULL,
    puntos integer NOT NULL,
    lc_grupo_calificacion bigint NOT NULL,
    CONSTRAINT lc_objetoconstruccion_puntos_check CHECK (((puntos >= 0) AND (puntos <= 16)))
);
 6   DROP TABLE test_distinct_geoms.lc_objetoconstruccion;
       test_distinct_geoms         postgres    false    2551    19            \<           0    0    TABLE lc_objetoconstruccion    COMMENT     |   COMMENT ON TABLE test_distinct_geoms.lc_objetoconstruccion IS 'Puntaje de cada item de la calificación de construcción.';
            test_distinct_geoms       postgres    false    2629            ]<           0    0 5   COLUMN lc_objetoconstruccion.tipo_objeto_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_objetoconstruccion.tipo_objeto_construccion IS 'Item de la calificación de construcción según la método de calificación vigente.';
            test_distinct_geoms       postgres    false    2629            ^<           0    0 #   COLUMN lc_objetoconstruccion.puntos    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.lc_objetoconstruccion.puntos IS 'Puntaje del ítem calificado.';
            test_distinct_geoms       postgres    false    2629            �
           1259    731277    lc_objetoconstrucciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_objetoconstrucciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.lc_objetoconstrucciontipo;
       test_distinct_geoms         postgres    false    2551    19            F
           1259    730449    lc_ofertasmercadoinmobiliario    TABLE     �  CREATE TABLE test_distinct_geoms.lc_ofertasmercadoinmobiliario (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 >   DROP TABLE test_distinct_geoms.lc_ofertasmercadoinmobiliario;
       test_distinct_geoms         postgres    false    2551    19            _<           0    0 0   COLUMN lc_ofertasmercadoinmobiliario.tipo_oferta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.tipo_oferta IS 'La clase de oferta corresponde a una oferta de venta o a una oferta de arriendo del predio.';
            test_distinct_geoms       postgres    false    2630            `<           0    0 1   COLUMN lc_ofertasmercadoinmobiliario.valor_pedido    COMMENT     |   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.valor_pedido IS 'Dato del valor en pesos de la oferta';
            test_distinct_geoms       postgres    false    2630            a<           0    0 4   COLUMN lc_ofertasmercadoinmobiliario.valor_negociado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.valor_negociado IS 'Dato del valor en pesos negociado entre el vendedor y el posible comprador';
            test_distinct_geoms       postgres    false    2630            b<           0    0 9   COLUMN lc_ofertasmercadoinmobiliario.fecha_captura_oferta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.fecha_captura_oferta IS 'Año, mes y día de captura de la oferta en campo.';
            test_distinct_geoms       postgres    false    2630            c<           0    0 :   COLUMN lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.tiempo_oferta_mercado IS 'Número de meses de la publicitación de la oferta en el mercado inmobiliario.';
            test_distinct_geoms       postgres    false    2630            d<           0    0 =   COLUMN lc_ofertasmercadoinmobiliario.numero_contacto_oferente    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_ofertasmercadoinmobiliario.numero_contacto_oferente IS 'Número de teléfono fijo o número celular de la persona que está publicitando el bien inmueble.';
            test_distinct_geoms       postgres    false    2630            b
           1259    730755    lc_ofertatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_ofertatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_distinct_geoms.lc_ofertatipo;
       test_distinct_geoms         postgres    false    2551    19            G
           1259    730458 	   lc_predio    TABLE     4  CREATE TABLE test_distinct_geoms.lc_predio (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 *   DROP TABLE test_distinct_geoms.lc_predio;
       test_distinct_geoms         postgres    false    2551    19            e<           0    0    TABLE lc_predio    COMMENT     #  COMMENT ON TABLE test_distinct_geoms.lc_predio IS 'Clase especializada de BaUnit, que describe la unidad administrativa básica para el caso de Colombia.
El predio es la unidad territorial legal propia de Catastro. Está formada por el terreno y puede o no tener construcciones asociadas.';
            test_distinct_geoms       postgres    false    2631            f<           0    0    COLUMN lc_predio.departamento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.departamento IS 'Corresponde al código del departamento al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 2 dígitos.';
            test_distinct_geoms       postgres    false    2631            g<           0    0    COLUMN lc_predio.municipio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.municipio IS 'Corresponde al código del municipio al cual pertenece el predio. Es asignado por DIVIPOLA y tiene 3 dígitos.';
            test_distinct_geoms       postgres    false    2631            h<           0    0    COLUMN lc_predio.id_operacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.id_operacion IS 'Identificador único temporal de cada predio que se asigna en el desarrollo del levantamiento catastral.';
            test_distinct_geoms       postgres    false    2631            i<           0    0    COLUMN lc_predio.tiene_fmi    COMMENT     r   COMMENT ON COLUMN test_distinct_geoms.lc_predio.tiene_fmi IS 'Indica si el predio tiene matricula inmobiliaria.';
            test_distinct_geoms       postgres    false    2631            j<           0    0    COLUMN lc_predio.codigo_orip    COMMENT     T   COMMENT ON COLUMN test_distinct_geoms.lc_predio.codigo_orip IS 'Circulo registral';
            test_distinct_geoms       postgres    false    2631            k<           0    0 '   COLUMN lc_predio.matricula_inmobiliaria    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.lc_predio.matricula_inmobiliaria IS 'Matricula inmobiliaria';
            test_distinct_geoms       postgres    false    2631            l<           0    0    COLUMN lc_predio.numero_predial    COMMENT     &  COMMENT ON COLUMN test_distinct_geoms.lc_predio.numero_predial IS 'Nuevo Código numérico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustín Codazzi.';
            test_distinct_geoms       postgres    false    2631            m<           0    0 (   COLUMN lc_predio.numero_predial_anterior    COMMENT     /  COMMENT ON COLUMN test_distinct_geoms.lc_predio.numero_predial_anterior IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi.';
            test_distinct_geoms       postgres    false    2631            n<           0    0    COLUMN lc_predio.nupre    COMMENT     C  COMMENT ON COLUMN test_distinct_geoms.lc_predio.nupre IS 'Es un código único para identificar los inmuebles tanto en los sistemas de información catastral como registral. El NUPRE no implicará supresión de la numeración catastral ni registral asociada a la cédula catastral ni a la matrícula inmobiliaria actual.';
            test_distinct_geoms       postgres    false    2631            o<           0    0 !   COLUMN lc_predio.avaluo_catastral    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.avaluo_catastral IS 'Valor catastral del predio, obtenido mediante investigación y análisis estadístico del mercado inmobiliario y la metodología de aplicación correspondiente.';
            test_distinct_geoms       postgres    false    2631            p<           0    0 !   COLUMN lc_predio.condicion_predio    COMMENT     n   COMMENT ON COLUMN test_distinct_geoms.lc_predio.condicion_predio IS 'Caracterización temática del predio.';
            test_distinct_geoms       postgres    false    2631            q<           0    0    COLUMN lc_predio.nombre    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.nombre IS 'Nombre que recibe la unidad administrativa básica, en muchos casos toponímico, especialmente en terrenos rústicos.';
            test_distinct_geoms       postgres    false    2631            r<           0    0 +   COLUMN lc_predio.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2631            s<           0    0 &   COLUMN lc_predio.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2631            t<           0    0 #   COLUMN lc_predio.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_predio.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2631            u<           0    0    COLUMN lc_predio.local_id    COMMENT     [   COMMENT ON COLUMN test_distinct_geoms.lc_predio.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2631            Q
           1259    730600    lc_predio_copropiedad    TABLE     �   CREATE TABLE test_distinct_geoms.lc_predio_copropiedad (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    predio bigint NOT NULL,
    copropiedad bigint NOT NULL
);
 6   DROP TABLE test_distinct_geoms.lc_predio_copropiedad;
       test_distinct_geoms         postgres    false    2551    19            R
           1259    730608    lc_predio_ini_predioinsumos    TABLE       CREATE TABLE test_distinct_geoms.lc_predio_ini_predioinsumos (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    ini_predio_insumos bigint NOT NULL,
    lc_predio bigint NOT NULL
);
 <   DROP TABLE test_distinct_geoms.lc_predio_ini_predioinsumos;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731052    lc_prediotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_prediotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 .   DROP TABLE test_distinct_geoms.lc_prediotipo;
       test_distinct_geoms         postgres    false    2551    19            o
           1259    730872 &   lc_procedimientocatastralregistraltipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_procedimientocatastralregistraltipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 G   DROP TABLE test_distinct_geoms.lc_procedimientocatastralregistraltipo;
       test_distinct_geoms         postgres    false    2551    19            H
           1259    730470    lc_puntocontrol    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntocontrol (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_distinct_geoms.lc_puntocontrol;
       test_distinct_geoms         postgres    false    2551    19            v<           0    0    TABLE lc_puntocontrol    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_puntocontrol IS 'Puntos topograficos o geodesicos utilizados como amarre para la ejecución del levantamiento catastral.';
            test_distinct_geoms       postgres    false    2632            w<           0    0 '   COLUMN lc_puntocontrol.id_punto_control    COMMENT     t   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.id_punto_control IS 'Nombre o código del punto de control.';
            test_distinct_geoms       postgres    false    2632            x<           0    0     COLUMN lc_puntocontrol.puntotipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_distinct_geoms       postgres    false    2632            y<           0    0 )   COLUMN lc_puntocontrol.tipo_punto_control    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.tipo_punto_control IS 'Si se trata de un punto de control o de apoyo.';
            test_distinct_geoms       postgres    false    2632            z<           0    0 +   COLUMN lc_puntocontrol.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.exactitud_horizontal IS 'Exactitud horizontal de la medición del punto.';
            test_distinct_geoms       postgres    false    2632            {<           0    0 )   COLUMN lc_puntocontrol.exactitud_vertical    COMMENT     }   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.exactitud_vertical IS 'Exactitud vertical de la medición del punto.';
            test_distinct_geoms       postgres    false    2632            |<           0    0 -   COLUMN lc_puntocontrol.posicion_interpolacion    COMMENT     p   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.posicion_interpolacion IS 'Posición de interpolación.';
            test_distinct_geoms       postgres    false    2632            }<           0    0 '   COLUMN lc_puntocontrol.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_distinct_geoms       postgres    false    2632            ~<           0    0     COLUMN lc_puntocontrol.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_distinct_geoms       postgres    false    2632            <           0    0 1   COLUMN lc_puntocontrol.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2632            �<           0    0 ,   COLUMN lc_puntocontrol.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2632            �<           0    0 )   COLUMN lc_puntocontrol.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2632            �<           0    0    COLUMN lc_puntocontrol.local_id    COMMENT     a   COMMENT ON COLUMN test_distinct_geoms.lc_puntocontrol.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2632            �
           1259    731205    lc_puntocontroltipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntocontroltipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 4   DROP TABLE test_distinct_geoms.lc_puntocontroltipo;
       test_distinct_geoms         postgres    false    2551    19            O
           1259    730571    lc_puntolevantamiento    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntolevantamiento (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_distinct_geoms.lc_puntolevantamiento;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_puntolevantamiento    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_puntolevantamiento IS 'Puntos que definen los limites de las construcciones, unidad de construcción y servidumbres de transito.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 3   COLUMN lc_puntolevantamiento.id_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.id_punto_levantamiento IS 'Nombre o código del punto levantamiento.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 &   COLUMN lc_puntolevantamiento.puntotipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 5   COLUMN lc_puntolevantamiento.tipo_punto_levantamiento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.tipo_punto_levantamiento IS 'Indica si el tipo de punto corresponde a una construcción o servidumbre de tránsito.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 /   COLUMN lc_puntolevantamiento.fotoidentificacion    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 1   COLUMN lc_puntolevantamiento.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto levantamiento.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 /   COLUMN lc_puntolevantamiento.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto levantamiento';
            test_distinct_geoms       postgres    false    2639            �<           0    0 3   COLUMN lc_puntolevantamiento.posicion_interpolacion    COMMENT     v   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.posicion_interpolacion IS 'Posición de interpolación.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 -   COLUMN lc_puntolevantamiento.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 &   COLUMN lc_puntolevantamiento.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 7   COLUMN lc_puntolevantamiento.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 2   COLUMN lc_puntolevantamiento.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 /   COLUMN lc_puntolevantamiento.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2639            �<           0    0 %   COLUMN lc_puntolevantamiento.local_id    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.lc_puntolevantamiento.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2639            �
           1259    731088    lc_puntolevtipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntolevtipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_distinct_geoms.lc_puntolevtipo;
       test_distinct_geoms         postgres    false    2551    19            I
           1259    730489    lc_puntolindero    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntolindero (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 0   DROP TABLE test_distinct_geoms.lc_puntolindero;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_puntolindero    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_puntolindero IS 'Puntos que definen los lindero de un terreno. La sucesión de estos puntos forman una línea que representa el límite entre dos terrenos.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 '   COLUMN lc_puntolindero.id_punto_lindero    COMMENT     p   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.id_punto_lindero IS 'Nombre o código del punto lindero';
            test_distinct_geoms       postgres    false    2633            �<           0    0     COLUMN lc_puntolindero.puntotipo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.puntotipo IS 'Indica la clasificación del tipo de punto de acuerdo a sus características.';
            test_distinct_geoms       postgres    false    2633            �<           0    0    COLUMN lc_puntolindero.acuerdo    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.acuerdo IS 'Indica si existe acuerdo o no entre los colindantes en relación al punto lindero que se está midiendo.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 )   COLUMN lc_puntolindero.fotoidentificacion    COMMENT     x   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.fotoidentificacion IS 'Indica si el punto es fotoidentificable.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 +   COLUMN lc_puntolindero.exactitud_horizontal    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.exactitud_horizontal IS 'Corresponde a la exactitud horizontal del punto lindero';
            test_distinct_geoms       postgres    false    2633            �<           0    0 )   COLUMN lc_puntolindero.exactitud_vertical    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.exactitud_vertical IS 'Corresponde a la exactitud vertical del punto lindero';
            test_distinct_geoms       postgres    false    2633            �<           0    0 -   COLUMN lc_puntolindero.posicion_interpolacion    COMMENT     p   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.posicion_interpolacion IS 'Posición de interpolación.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 '   COLUMN lc_puntolindero.metodoproduccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.metodoproduccion IS 'Indica si el método de levantamiento catastral: método directo o indirecto.';
            test_distinct_geoms       postgres    false    2633            �<           0    0     COLUMN lc_puntolindero.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.geometria IS 'Geometria punto para administración de los objetos: punto de lindero, punto levantamiento y punto de control.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 1   COLUMN lc_puntolindero.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 ,   COLUMN lc_puntolindero.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2633            �<           0    0 )   COLUMN lc_puntolindero.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2633            �<           0    0    COLUMN lc_puntolindero.local_id    COMMENT     a   COMMENT ON COLUMN test_distinct_geoms.lc_puntolindero.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2633            |
           1259    730989    lc_puntotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_puntotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 -   DROP TABLE test_distinct_geoms.lc_puntotipo;
       test_distinct_geoms         postgres    false    2551    19            r
           1259    730899    lc_relacionprediotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_relacionprediotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 6   DROP TABLE test_distinct_geoms.lc_relacionprediotipo;
       test_distinct_geoms         postgres    false    2551    19            J
           1259    730509    lc_restriccion    TABLE     N  CREATE TABLE test_distinct_geoms.lc_restriccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 /   DROP TABLE test_distinct_geoms.lc_restriccion;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_restriccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_restriccion IS 'Restricción legalmente constituida y registrada que afecta el derecho de un persona en relación con el predio.';
            test_distinct_geoms       postgres    false    2634            �<           0    0    COLUMN lc_restriccion.tipo    COMMENT     l   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.tipo IS 'Tipo de Restricción que afecta el derecho.';
            test_distinct_geoms       postgres    false    2634            �<           0    0 !   COLUMN lc_restriccion.descripcion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.descripcion IS 'Descripción relatical al derecho, la responsabilidad o la restricción.';
            test_distinct_geoms       postgres    false    2634            �<           0    0 0   COLUMN lc_restriccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2634            �<           0    0 +   COLUMN lc_restriccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2634            �<           0    0 (   COLUMN lc_restriccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2634            �<           0    0    COLUMN lc_restriccion.local_id    COMMENT     `   COMMENT ON COLUMN test_distinct_geoms.lc_restriccion.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2634            �
           1259    731070    lc_restricciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_restricciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 3   DROP TABLE test_distinct_geoms.lc_restricciontipo;
       test_distinct_geoms         postgres    false    2551    19            v
           1259    730935    lc_resultadovisitatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_resultadovisitatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.lc_resultadovisitatipo;
       test_distinct_geoms         postgres    false    2551    19            S
           1259    730616    lc_servidumbretransito    TABLE     �  CREATE TABLE test_distinct_geoms.lc_servidumbretransito (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 7   DROP TABLE test_distinct_geoms.lc_servidumbretransito;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_servidumbretransito    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_servidumbretransito IS 'Tipo de unidad espacial que permite la representación de una servidumbre de paso asociada a una COL_BAUnit.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 .   COLUMN lc_servidumbretransito.area_servidumbre    COMMENT     s   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.area_servidumbre IS 'Área total de la servidumbre.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 '   COLUMN lc_servidumbretransito.dimension    COMMENT     d   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.dimension IS 'Dimensión del objeto.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 &   COLUMN lc_servidumbretransito.etiqueta    COMMENT        COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 1   COLUMN lc_servidumbretransito.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 '   COLUMN lc_servidumbretransito.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 8   COLUMN lc_servidumbretransito.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 3   COLUMN lc_servidumbretransito.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 0   COLUMN lc_servidumbretransito.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2643            �<           0    0 &   COLUMN lc_servidumbretransito.local_id    COMMENT     h   COMMENT ON COLUMN test_distinct_geoms.lc_servidumbretransito.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2643            {
           1259    730980    lc_sexotipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_sexotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 ,   DROP TABLE test_distinct_geoms.lc_sexotipo;
       test_distinct_geoms         postgres    false    2551    19            K
           1259    730523 
   lc_terreno    TABLE     �  CREATE TABLE test_distinct_geoms.lc_terreno (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 +   DROP TABLE test_distinct_geoms.lc_terreno;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_terreno    COMMENT     r   COMMENT ON TABLE test_distinct_geoms.lc_terreno IS 'Porción de tierra con una extensión geográfica definida.';
            test_distinct_geoms       postgres    false    2635            �<           0    0    COLUMN lc_terreno.area_terreno    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.area_terreno IS 'Área total del terreno  resultante del levantamiento catastral..';
            test_distinct_geoms       postgres    false    2635            �<           0    0     COLUMN lc_terreno.avaluo_terreno    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.avaluo_terreno IS 'Valor catastral asignado en el proceso de valoración económica masiva al terreno del predio.';
            test_distinct_geoms       postgres    false    2635            �<           0    0 '   COLUMN lc_terreno.manzana_vereda_codigo    COMMENT     \  COMMENT ON COLUMN test_distinct_geoms.lc_terreno.manzana_vereda_codigo IS 'Corresponde la identificación del número predial hasta la posición 21, permite identificar la relación espacial en sus componentes: departamento, municipio, zona, sector, comuna, barrio, manzana o vereda y terreno de acuerdo a su codificación en el número predial.';
            test_distinct_geoms       postgres    false    2635            �<           0    0    COLUMN lc_terreno.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.geometria IS 'Corresponde a la figura geométrica vectorial poligonal, generada a partir de los linderos del predio.';
            test_distinct_geoms       postgres    false    2635            �<           0    0    COLUMN lc_terreno.dimension    COMMENT     X   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.dimension IS 'Dimensión del objeto.';
            test_distinct_geoms       postgres    false    2635            �<           0    0    COLUMN lc_terreno.etiqueta    COMMENT     s   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_distinct_geoms       postgres    false    2635            �<           0    0 %   COLUMN lc_terreno.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_distinct_geoms       postgres    false    2635            �<           0    0 ,   COLUMN lc_terreno.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2635            �<           0    0 '   COLUMN lc_terreno.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2635            �<           0    0 $   COLUMN lc_terreno.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2635            �<           0    0    COLUMN lc_terreno.local_id    COMMENT     \   COMMENT ON COLUMN test_distinct_geoms.lc_terreno.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2635            P
           1259    730591    lc_tipologiaconstruccion    TABLE       CREATE TABLE test_distinct_geoms.lc_tipologiaconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid uuid DEFAULT public.uuid_generate_v4(),
    tipo_tipologia bigint NOT NULL,
    lc_unidad_construccion bigint
);
 9   DROP TABLE test_distinct_geoms.lc_tipologiaconstruccion;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_tipologiaconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_tipologiaconstruccion IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_distinct_geoms       postgres    false    2640            �<           0    0 .   COLUMN lc_tipologiaconstruccion.tipo_tipologia    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_tipologiaconstruccion.tipo_tipologia IS 'Son las características de diseño y constructivas especiales de las construcciones y/o edificaciones.';
            test_distinct_geoms       postgres    false    2640            �
           1259    731160    lc_tipologiatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_tipologiatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 1   DROP TABLE test_distinct_geoms.lc_tipologiatipo;
       test_distinct_geoms         postgres    false    2551    19            T
           1259    730629    lc_unidadconstruccion    TABLE     �	  CREATE TABLE test_distinct_geoms.lc_unidadconstruccion (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 6   DROP TABLE test_distinct_geoms.lc_unidadconstruccion;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE lc_unidadconstruccion    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.lc_unidadconstruccion IS 'Es cada conjunto de materiales consolidados dentro de un predio que tiene unas características específicas en cuanto a elementos constitutivos físicos y usos de la misma.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 *   COLUMN lc_unidadconstruccion.identificador    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.identificador IS 'Identificado de la unidad de construcción, su codificación puede ser por letras del abecedario.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 )   COLUMN lc_unidadconstruccion.tipo_dominio    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.tipo_dominio IS 'Indica el tipo de dominio de la unidad de construcción: común y privado.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 .   COLUMN lc_unidadconstruccion.tipo_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.tipo_construccion IS 'Indica si la construcción es de tipo convencional o no convencional.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 5   COLUMN lc_unidadconstruccion.tipo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.tipo_unidad_construccion IS 'Indica si la unidad de construcción es residencial, comercial, industrial o anexo.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 (   COLUMN lc_unidadconstruccion.tipo_planta    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.tipo_planta IS 'Indica el tipo de planta donde se ubica la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 -   COLUMN lc_unidadconstruccion.planta_ubicacion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.planta_ubicacion IS 'Indica numéricamente la ubicación del predio de acuerdo al tipo de planta.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 /   COLUMN lc_unidadconstruccion.total_habitaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.total_habitaciones IS 'Número total de  habitaciones en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 )   COLUMN lc_unidadconstruccion.total_banios    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.total_banios IS 'Número total de baños en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 *   COLUMN lc_unidadconstruccion.total_locales    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.total_locales IS 'Número total de locales en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 (   COLUMN lc_unidadconstruccion.total_pisos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.total_pisos IS 'Número total de pisos en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0     COLUMN lc_unidadconstruccion.uso    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.uso IS 'Actividad que se desarrolla en una unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 .   COLUMN lc_unidadconstruccion.anio_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.anio_construccion IS 'Año de construcción de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 7   COLUMN lc_unidadconstruccion.avaluo_unidad_construccion    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.avaluo_unidad_construccion IS 'Avalúo catastral de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 ,   COLUMN lc_unidadconstruccion.area_construida    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.area_construida IS 'Área total construida en la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 4   COLUMN lc_unidadconstruccion.area_privada_construida    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.area_privada_construida IS 'Área total privada de la unidad de construcción para los predios en régimen de propiedad horizontal.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 #   COLUMN lc_unidadconstruccion.altura    COMMENT     u   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.altura IS 'Altura total de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 *   COLUMN lc_unidadconstruccion.observaciones    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.observaciones IS 'Observaciones generales respecto de la unidad de construcción.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 &   COLUMN lc_unidadconstruccion.dimension    COMMENT     c   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.dimension IS 'Dimensión del objeto.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 %   COLUMN lc_unidadconstruccion.etiqueta    COMMENT     ~   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.etiqueta IS 'Corresponde al atributo label de la clase en LADM.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 0   COLUMN lc_unidadconstruccion.relacion_superficie    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.relacion_superficie IS 'Corresponde al atributo surfaceRelation de la clase en LADM.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 &   COLUMN lc_unidadconstruccion.geometria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.geometria IS 'Materializacion del metodo createArea(). Almacena de forma permanente la geometría de tipo poligonal.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 7   COLUMN lc_unidadconstruccion.comienzo_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.comienzo_vida_util_version IS 'Comienzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 2   COLUMN lc_unidadconstruccion.fin_vida_util_version    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.fin_vida_util_version IS 'Finnzo de la validez actual de la instancia de un objeto.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 /   COLUMN lc_unidadconstruccion.espacio_de_nombres    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.espacio_de_nombres IS 'Identificador único global. Corresponde al atributo de la clase en LADM.';
            test_distinct_geoms       postgres    false    2644            �<           0    0 %   COLUMN lc_unidadconstruccion.local_id    COMMENT     g   COMMENT ON COLUMN test_distinct_geoms.lc_unidadconstruccion.local_id IS 'Identificador único local.';
            test_distinct_geoms       postgres    false    2644            
           1259    731016    lc_unidadconstrucciontipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_unidadconstrucciontipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 :   DROP TABLE test_distinct_geoms.lc_unidadconstrucciontipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731124    lc_usouconstipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_usouconstipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 0   DROP TABLE test_distinct_geoms.lc_usouconstipo;
       test_distinct_geoms         postgres    false    2551    19            e
           1259    730782 
   lc_viatipo    TABLE     �  CREATE TABLE test_distinct_geoms.lc_viatipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 +   DROP TABLE test_distinct_geoms.lc_viatipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    737506    points    TABLE     �  CREATE TABLE test_distinct_geoms.points (
    id integer NOT NULL,
    geom public.geometry(Point,38820),
    fid bigint,
    t_id bigint,
    exactitud_horizontal integer,
    espacio_de_nombres character varying(255),
    local_id character varying(255),
    comienzo_vida_util_version timestamp without time zone,
    acuerdo integer,
    puntotipo integer,
    metodoproduccion integer,
    id_punto_lindero character varying
);
 '   DROP TABLE test_distinct_geoms.points;
       test_distinct_geoms         postgres    false    19            �
           1259    737504    points_id_seq    SEQUENCE     �   CREATE SEQUENCE test_distinct_geoms.points_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE test_distinct_geoms.points_id_seq;
       test_distinct_geoms       postgres    false    2724    19            �<           0    0    points_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE test_distinct_geoms.points_id_seq OWNED BY test_distinct_geoms.points.id;
            test_distinct_geoms       postgres    false    2723            �
           1259    737517    points_m    TABLE     �  CREATE TABLE test_distinct_geoms.points_m (
    id integer NOT NULL,
    geom public.geometry(PointM,38820),
    fid bigint,
    t_id bigint,
    exactitud_horizontal integer,
    espacio_de_nombres character varying(255),
    local_id character varying(255),
    comienzo_vida_util_version timestamp without time zone,
    acuerdo integer,
    puntotipo integer,
    metodoproduccion integer,
    id_punto_lindero character varying
);
 )   DROP TABLE test_distinct_geoms.points_m;
       test_distinct_geoms         postgres    false    19            �
           1259    737515    points_m_id_seq    SEQUENCE     �   CREATE SEQUENCE test_distinct_geoms.points_m_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE test_distinct_geoms.points_m_id_seq;
       test_distinct_geoms       postgres    false    2726    19            �<           0    0    points_m_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE test_distinct_geoms.points_m_id_seq OWNED BY test_distinct_geoms.points_m.id;
            test_distinct_geoms       postgres    false    2725            �
           1259    737528    points_z    TABLE     �  CREATE TABLE test_distinct_geoms.points_z (
    id integer NOT NULL,
    geom public.geometry(PointZ,38820),
    fid bigint,
    t_id bigint,
    exactitud_horizontal integer,
    espacio_de_nombres character varying(255),
    local_id character varying(255),
    comienzo_vida_util_version timestamp without time zone,
    acuerdo integer,
    puntotipo integer,
    metodoproduccion integer,
    id_punto_lindero character varying
);
 )   DROP TABLE test_distinct_geoms.points_z;
       test_distinct_geoms         postgres    false    19            �
           1259    737526    points_z_id_seq    SEQUENCE     �   CREATE SEQUENCE test_distinct_geoms.points_z_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE test_distinct_geoms.points_z_id_seq;
       test_distinct_geoms       postgres    false    2728    19            �<           0    0    points_z_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE test_distinct_geoms.points_z_id_seq OWNED BY test_distinct_geoms.points_z.id;
            test_distinct_geoms       postgres    false    2727            �
           1259    737539 	   points_zm    TABLE     �  CREATE TABLE test_distinct_geoms.points_zm (
    id integer NOT NULL,
    geom public.geometry(PointZM,38820),
    fid bigint,
    t_id bigint,
    exactitud_horizontal character varying,
    espacio_de_nombres character varying(255),
    local_id character varying(255),
    comienzo_vida_util_version character varying,
    acuerdo character varying,
    puntotipo character varying,
    metodoproduccion integer,
    id_punto_lindero character varying
);
 *   DROP TABLE test_distinct_geoms.points_zm;
       test_distinct_geoms         postgres    false    19            �
           1259    737537    points_zm_id_seq    SEQUENCE     �   CREATE SEQUENCE test_distinct_geoms.points_zm_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE test_distinct_geoms.points_zm_id_seq;
       test_distinct_geoms       postgres    false    2730    19            �<           0    0    points_zm_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE test_distinct_geoms.points_zm_id_seq OWNED BY test_distinct_geoms.points_zm.id;
            test_distinct_geoms       postgres    false    2729            �
           1259    731151    snr_calidadderechotipo    TABLE     �  CREATE TABLE test_distinct_geoms.snr_calidadderechotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.snr_calidadderechotipo;
       test_distinct_geoms         postgres    false    2551    19            �
           1259    731187    snr_clasepredioregistrotipo    TABLE     �  CREATE TABLE test_distinct_geoms.snr_clasepredioregistrotipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 <   DROP TABLE test_distinct_geoms.snr_clasepredioregistrotipo;
       test_distinct_geoms         postgres    false    2551    19            0
           1259    730214    snr_derecho    TABLE     c  CREATE TABLE test_distinct_geoms.snr_derecho (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    calidad_derecho_registro bigint NOT NULL,
    codigo_naturaleza_juridica character varying(5),
    snr_fuente_derecho bigint NOT NULL,
    snr_predio_registro bigint NOT NULL
);
 ,   DROP TABLE test_distinct_geoms.snr_derecho;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_derecho    COMMENT     ]   COMMENT ON TABLE test_distinct_geoms.snr_derecho IS 'Datos del derecho inscrito en la SNR.';
            test_distinct_geoms       postgres    false    2608            �<           0    0 +   COLUMN snr_derecho.calidad_derecho_registro    COMMENT     p   COMMENT ON COLUMN test_distinct_geoms.snr_derecho.calidad_derecho_registro IS 'Calidad de derecho en registro';
            test_distinct_geoms       postgres    false    2608            �<           0    0 -   COLUMN snr_derecho.codigo_naturaleza_juridica    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_derecho.codigo_naturaleza_juridica IS 'es el número asignado en el registro a cada acto sujeto a registro.';
            test_distinct_geoms       postgres    false    2608            �
           1259    731259    snr_documentotitulartipo    TABLE     �  CREATE TABLE test_distinct_geoms.snr_documentotitulartipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 9   DROP TABLE test_distinct_geoms.snr_documentotitulartipo;
       test_distinct_geoms         postgres    false    2551    19            1
           1259    730223    snr_estructuramatriculamatriz    TABLE     C  CREATE TABLE test_distinct_geoms.snr_estructuramatriculamatriz (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_seq bigint,
    codigo_orip character varying(20),
    matricula_inmobiliaria character varying(20),
    snr_predioregistro_matricula_inmobiliaria_matriz bigint
);
 >   DROP TABLE test_distinct_geoms.snr_estructuramatriculamatriz;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0 0   COLUMN snr_estructuramatriculamatriz.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_estructuramatriculamatriz.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_distinct_geoms       postgres    false    2609            �<           0    0 ;   COLUMN snr_estructuramatriculamatriz.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_estructuramatriculamatriz.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_distinct_geoms       postgres    false    2609            �<           0    0 U   COLUMN snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_estructuramatriculamatriz.snr_predioregistro_matricula_inmobiliaria_matriz IS 'Es la matrícula por la cual se dio apertura al predio objeto de estudio (la madre).';
            test_distinct_geoms       postgres    false    2609            2
           1259    730230    snr_fuentecabidalinderos    TABLE     q  CREATE TABLE test_distinct_geoms.snr_fuentecabidalinderos (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 9   DROP TABLE test_distinct_geoms.snr_fuentecabidalinderos;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_fuentecabidalinderos    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.snr_fuentecabidalinderos IS 'Datos del documento que soporta la descripción de cabida y linderos.';
            test_distinct_geoms       postgres    false    2610            �<           0    0 .   COLUMN snr_fuentecabidalinderos.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentecabidalinderos.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_distinct_geoms       postgres    false    2610            �<           0    0 0   COLUMN snr_fuentecabidalinderos.numero_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentecabidalinderos.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_distinct_geoms       postgres    false    2610            �<           0    0 +   COLUMN snr_fuentecabidalinderos.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentecabidalinderos.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_distinct_geoms       postgres    false    2610            �<           0    0 .   COLUMN snr_fuentecabidalinderos.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentecabidalinderos.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_distinct_geoms       postgres    false    2610            3
           1259    730240    snr_fuentederecho    TABLE     j  CREATE TABLE test_distinct_geoms.snr_fuentederecho (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_documento bigint,
    numero_documento character varying(255),
    fecha_documento date,
    ente_emisor character varying(255),
    ciudad_emisora character varying(255)
);
 2   DROP TABLE test_distinct_geoms.snr_fuentederecho;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_fuentederecho    COMMENT     i   COMMENT ON TABLE test_distinct_geoms.snr_fuentederecho IS 'Datos del documento que soporta el derecho.';
            test_distinct_geoms       postgres    false    2611            �<           0    0 '   COLUMN snr_fuentederecho.tipo_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentederecho.tipo_documento IS 'Tipo de documento que soporta la relación de tenencia entre el interesado con el predio.';
            test_distinct_geoms       postgres    false    2611            �<           0    0 )   COLUMN snr_fuentederecho.numero_documento    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentederecho.numero_documento IS 'Identificador del documento, ejemplo: numero de la resolución';
            test_distinct_geoms       postgres    false    2611            �<           0    0 $   COLUMN snr_fuentederecho.ente_emisor    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentederecho.ente_emisor IS 'Es tipo de oficina que emite el documento (notaria, juzgado)';
            test_distinct_geoms       postgres    false    2611            �<           0    0 '   COLUMN snr_fuentederecho.ciudad_emisora    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_fuentederecho.ciudad_emisora IS 'Es la ciudad donde se encuentra ubicada la oficina que expide el documento.';
            test_distinct_geoms       postgres    false    2611            ^
           1259    730719    snr_fuentetipo    TABLE     �  CREATE TABLE test_distinct_geoms.snr_fuentetipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 /   DROP TABLE test_distinct_geoms.snr_fuentetipo;
       test_distinct_geoms         postgres    false    2551    19            _
           1259    730728    snr_personatitulartipo    TABLE     �  CREATE TABLE test_distinct_geoms.snr_personatitulartipo (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024),
    itfcode integer NOT NULL,
    ilicode character varying(1024) NOT NULL,
    seq integer,
    inactive boolean NOT NULL,
    dispname character varying(250) NOT NULL,
    description character varying(1024)
);
 7   DROP TABLE test_distinct_geoms.snr_personatitulartipo;
       test_distinct_geoms         postgres    false    2551    19            5
           1259    730261    snr_predioregistro    TABLE     3  CREATE TABLE test_distinct_geoms.snr_predioregistro (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
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
 3   DROP TABLE test_distinct_geoms.snr_predioregistro;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_predioregistro    COMMENT     f   COMMENT ON TABLE test_distinct_geoms.snr_predioregistro IS 'Datos del predio entregados por la SNR.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 %   COLUMN snr_predioregistro.codigo_orip    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.codigo_orip IS 'Es el nùmero que se ha asignado a la Oficina de Registro de Instrumentos públicos correspondiente.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 0   COLUMN snr_predioregistro.matricula_inmobiliaria    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.matricula_inmobiliaria IS 'Es el consecutivo que se asigna a cada predio jurídico abierto en la ORIP.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 5   COLUMN snr_predioregistro.numero_predial_nuevo_en_fmi    COMMENT     N  COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.numero_predial_nuevo_en_fmi IS 'Nuevo código númerico de treinta (30) dígitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 8   COLUMN snr_predioregistro.numero_predial_anterior_en_fmi    COMMENT     R  COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.numero_predial_anterior_en_fmi IS 'Anterior código númerico de veinte (20) digitos, que se le asigna a cada predio y busca localizarlo inequívocamente en los documentos catastrales, según el modelo determinado por el Instituto Geográfico Agustin Codazzi, registrado en SNR.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 /   COLUMN snr_predioregistro.nomenclatura_registro    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.nomenclatura_registro IS 'Conjunto de símbolos alfanuméricos, los cuales designan vías y predios de la ciudad.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 )   COLUMN snr_predioregistro.cabida_linderos    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.cabida_linderos IS 'El texto de cabida y linderosque está consignado en el registro público de la propiedad sobre el cual se ejercen los derechos.';
            test_distinct_geoms       postgres    false    2613            �<           0    0 .   COLUMN snr_predioregistro.clase_suelo_registro    COMMENT     �   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.clase_suelo_registro IS 'Corresponde al dato de tipo de predio incorporado en las bases de datos registrales';
            test_distinct_geoms       postgres    false    2613            �<           0    0 %   COLUMN snr_predioregistro.fecha_datos    COMMENT     m   COMMENT ON COLUMN test_distinct_geoms.snr_predioregistro.fecha_datos IS 'Fecha de la generación de datos.';
            test_distinct_geoms       postgres    false    2613            4
           1259    730250    snr_titular    TABLE     �  CREATE TABLE test_distinct_geoms.snr_titular (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    tipo_persona bigint,
    tipo_documento bigint,
    numero_documento character varying(50) NOT NULL,
    nombres character varying(500),
    primer_apellido character varying(255),
    segundo_apellido character varying(255),
    razon_social character varying(255)
);
 ,   DROP TABLE test_distinct_geoms.snr_titular;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_titular    COMMENT     j   COMMENT ON TABLE test_distinct_geoms.snr_titular IS 'Datos de titulares de derecho inscritos en la SNR.';
            test_distinct_geoms       postgres    false    2612            �<           0    0    COLUMN snr_titular.tipo_persona    COMMENT     U   COMMENT ON COLUMN test_distinct_geoms.snr_titular.tipo_persona IS 'Tipo de persona';
            test_distinct_geoms       postgres    false    2612            �<           0    0 !   COLUMN snr_titular.tipo_documento    COMMENT     k   COMMENT ON COLUMN test_distinct_geoms.snr_titular.tipo_documento IS 'Tipo de documento del que se trata.';
            test_distinct_geoms       postgres    false    2612            �<           0    0 #   COLUMN snr_titular.numero_documento    COMMENT     p   COMMENT ON COLUMN test_distinct_geoms.snr_titular.numero_documento IS 'Documento de identidad del interesado.';
            test_distinct_geoms       postgres    false    2612            �<           0    0    COLUMN snr_titular.nombres    COMMENT     _   COMMENT ON COLUMN test_distinct_geoms.snr_titular.nombres IS 'Nombres de la persona física.';
            test_distinct_geoms       postgres    false    2612            �<           0    0 "   COLUMN snr_titular.primer_apellido    COMMENT     o   COMMENT ON COLUMN test_distinct_geoms.snr_titular.primer_apellido IS 'Primer apellido de la persona física.';
            test_distinct_geoms       postgres    false    2612            �<           0    0 #   COLUMN snr_titular.segundo_apellido    COMMENT     q   COMMENT ON COLUMN test_distinct_geoms.snr_titular.segundo_apellido IS 'Segundo apellido de la persona física.';
            test_distinct_geoms       postgres    false    2612            �<           0    0    COLUMN snr_titular.razon_social    COMMENT     {   COMMENT ON COLUMN test_distinct_geoms.snr_titular.razon_social IS 'Nombre con el que está inscrita la persona jurídica';
            test_distinct_geoms       postgres    false    2612            6
           1259    730272    snr_titular_derecho    TABLE     .  CREATE TABLE test_distinct_geoms.snr_titular_derecho (
    t_id bigint DEFAULT nextval('test_distinct_geoms.t_ili2db_seq'::regclass) NOT NULL,
    t_ili_tid character varying(200),
    snr_titular bigint NOT NULL,
    snr_derecho bigint NOT NULL,
    porcentaje_participacion character varying(100)
);
 4   DROP TABLE test_distinct_geoms.snr_titular_derecho;
       test_distinct_geoms         postgres    false    2551    19            �<           0    0    TABLE snr_titular_derecho    COMMENT     �   COMMENT ON TABLE test_distinct_geoms.snr_titular_derecho IS 'Datos del titular del derecho con relación al porcentaje de participación en el derecho';
            test_distinct_geoms       postgres    false    2614            �
           1259    731303    t_ili2db_attrname    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_attrname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL,
    colowner character varying(1024) NOT NULL,
    target character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.t_ili2db_attrname;
       test_distinct_geoms         postgres    false    19            U
           1259    730648    t_ili2db_basket    TABLE       CREATE TABLE test_distinct_geoms.t_ili2db_basket (
    t_id bigint NOT NULL,
    dataset bigint,
    topic character varying(200) NOT NULL,
    t_ili_tid character varying(200),
    attachmentkey character varying(200) NOT NULL,
    domains character varying(1024)
);
 0   DROP TABLE test_distinct_geoms.t_ili2db_basket;
       test_distinct_geoms         postgres    false    19            �
           1259    731295    t_ili2db_classname    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_classname (
    iliname character varying(1024) NOT NULL,
    sqlname character varying(1024) NOT NULL
);
 3   DROP TABLE test_distinct_geoms.t_ili2db_classname;
       test_distinct_geoms         postgres    false    19            �
           1259    731311    t_ili2db_column_prop    TABLE       CREATE TABLE test_distinct_geoms.t_ili2db_column_prop (
    tablename character varying(255) NOT NULL,
    subtype character varying(255),
    columnname character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 5   DROP TABLE test_distinct_geoms.t_ili2db_column_prop;
       test_distinct_geoms         postgres    false    19            V
           1259    730657    t_ili2db_dataset    TABLE     x   CREATE TABLE test_distinct_geoms.t_ili2db_dataset (
    t_id bigint NOT NULL,
    datasetname character varying(200)
);
 1   DROP TABLE test_distinct_geoms.t_ili2db_dataset;
       test_distinct_geoms         postgres    false    19            W
           1259    730662    t_ili2db_inheritance    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_inheritance (
    thisclass character varying(1024) NOT NULL,
    baseclass character varying(1024)
);
 5   DROP TABLE test_distinct_geoms.t_ili2db_inheritance;
       test_distinct_geoms         postgres    false    19            �
           1259    731323    t_ili2db_meta_attrs    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_meta_attrs (
    ilielement character varying(255) NOT NULL,
    attr_name character varying(1024) NOT NULL,
    attr_value character varying(1024) NOT NULL
);
 4   DROP TABLE test_distinct_geoms.t_ili2db_meta_attrs;
       test_distinct_geoms         postgres    false    19            Z
           1259    730684    t_ili2db_model    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_model (
    filename character varying(250) NOT NULL,
    iliversion character varying(3) NOT NULL,
    modelname text NOT NULL,
    content text NOT NULL,
    importdate timestamp without time zone NOT NULL
);
 /   DROP TABLE test_distinct_geoms.t_ili2db_model;
       test_distinct_geoms         postgres    false    19            X
           1259    730670    t_ili2db_settings    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_settings (
    tag character varying(60) NOT NULL,
    setting character varying(1024)
);
 2   DROP TABLE test_distinct_geoms.t_ili2db_settings;
       test_distinct_geoms         postgres    false    19            �
           1259    731317    t_ili2db_table_prop    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_table_prop (
    tablename character varying(255) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 4   DROP TABLE test_distinct_geoms.t_ili2db_table_prop;
       test_distinct_geoms         postgres    false    19            Y
           1259    730678    t_ili2db_trafo    TABLE     �   CREATE TABLE test_distinct_geoms.t_ili2db_trafo (
    iliname character varying(1024) NOT NULL,
    tag character varying(1024) NOT NULL,
    setting character varying(1024) NOT NULL
);
 /   DROP TABLE test_distinct_geoms.t_ili2db_trafo;
       test_distinct_geoms         postgres    false    19            �6           2604    737509 	   points id    DEFAULT     �   ALTER TABLE ONLY test_distinct_geoms.points ALTER COLUMN id SET DEFAULT nextval('test_distinct_geoms.points_id_seq'::regclass);
 E   ALTER TABLE test_distinct_geoms.points ALTER COLUMN id DROP DEFAULT;
       test_distinct_geoms       postgres    false    2723    2724    2724            �6           2604    737520    points_m id    DEFAULT     �   ALTER TABLE ONLY test_distinct_geoms.points_m ALTER COLUMN id SET DEFAULT nextval('test_distinct_geoms.points_m_id_seq'::regclass);
 G   ALTER TABLE test_distinct_geoms.points_m ALTER COLUMN id DROP DEFAULT;
       test_distinct_geoms       postgres    false    2725    2726    2726            �6           2604    737531    points_z id    DEFAULT     �   ALTER TABLE ONLY test_distinct_geoms.points_z ALTER COLUMN id SET DEFAULT nextval('test_distinct_geoms.points_z_id_seq'::regclass);
 G   ALTER TABLE test_distinct_geoms.points_z ALTER COLUMN id DROP DEFAULT;
       test_distinct_geoms       postgres    false    2728    2727    2728            �6           2604    737542    points_zm id    DEFAULT     �   ALTER TABLE ONLY test_distinct_geoms.points_zm ALTER COLUMN id SET DEFAULT nextval('test_distinct_geoms.points_zm_id_seq'::regclass);
 H   ALTER TABLE test_distinct_geoms.points_zm ALTER COLUMN id DROP DEFAULT;
       test_distinct_geoms       postgres    false    2729    2730    2730            c:          0    729706    cc_metodooperacion 
   TABLE DATA               �   COPY test_distinct_geoms.cc_metodooperacion (t_id, t_seq, formula, dimensiones_origen, ddimensiones_objetivo, col_transformacion_transformacion) FROM stdin;
    test_distinct_geoms       postgres    false    2556   ��	      �:          0    730818    ci_forma_presentacion_codigo 
   TABLE DATA               �   COPY test_distinct_geoms.ci_forma_presentacion_codigo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2665   ��	      �:          0    731025    col_areatipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_areatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2688   l�	      d:          0    729713    col_areavalor 
   TABLE DATA               �   COPY test_distinct_geoms.col_areavalor (t_id, t_seq, tipo, area, datos_proyeccion, lc_construccion_area, lc_terreno_area, lc_servidumbretransito_area, lc_unidadconstruccion_area) FROM stdin;
    test_distinct_geoms       postgres    false    2557   ��	      :          0    729982    col_baunitcomointeresado 
   TABLE DATA               �   COPY test_distinct_geoms.col_baunitcomointeresado (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad) FROM stdin;
    test_distinct_geoms       postgres    false    2584   ��	      u:          0    729891    col_baunitfuente 
   TABLE DATA               a   COPY test_distinct_geoms.col_baunitfuente (t_id, t_ili_tid, fuente_espacial, unidad) FROM stdin;
    test_distinct_geoms       postgres    false    2574   ��	      w:          0    729906    col_cclfuente 
   TABLE DATA               [   COPY test_distinct_geoms.col_cclfuente (t_id, t_ili_tid, ccl, fuente_espacial) FROM stdin;
    test_distinct_geoms       postgres    false    2576   ��	      {:          0    729946    col_clfuente 
   TABLE DATA               U   COPY test_distinct_geoms.col_clfuente (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_distinct_geoms       postgres    false    2580   �	      �:          0    731007    col_contenidoniveltipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_contenidoniveltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2686   )�	      �:          0    730836    col_dimensiontipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_dimensiontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2667   .�	      �:          0    730953    col_estadodisponibilidadtipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_estadodisponibilidadtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2680   ��	       ;          0    731250    col_estadoredserviciostipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_estadoredserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2713   y�	      �:          0    731034    col_estructuratipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_estructuratipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2689   �	      �:          0    731061    col_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2692   ��	      �:          0    730863    col_fuenteespacialtipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_fuenteespacialtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2670   u�	      �:          0    730908    col_grupointeresadotipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_grupointeresadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2675   ��	      �:          0    730944    col_interpolaciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_interpolaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2679   ��	      �:          0    730737    col_iso19125_tipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_iso19125_tipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2656   �	      y:          0    729925 
   col_masccl 
   TABLE DATA               �   COPY test_distinct_geoms.col_masccl (t_id, t_ili_tid, ccl_mas, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2578   ��	      }:          0    729963 	   col_mascl 
   TABLE DATA               �   COPY test_distinct_geoms.col_mascl (t_id, t_ili_tid, ue_mas_lc_construccion, ue_mas_lc_terreno, ue_mas_lc_servidumbretransito, ue_mas_lc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2582   ��	      x:          0    729914    col_menosccl 
   TABLE DATA               �   COPY test_distinct_geoms.col_menosccl (t_id, t_ili_tid, ccl_menos, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2577   ��	      |:          0    729953    col_menoscl 
   TABLE DATA               �   COPY test_distinct_geoms.col_menoscl (t_id, t_ili_tid, ue_menos_lc_construccion, ue_menos_lc_terreno, ue_menos_lc_servidumbretransito, ue_menos_lc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2581   �	      ;          0    731268    col_metodoproducciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_metodoproducciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2715   "�	      �:          0    730009    col_miembros 
   TABLE DATA               �   COPY test_distinct_geoms.col_miembros (t_id, t_ili_tid, interesado_lc_interesado, interesado_lc_agrupacioninteresados, agrupacion) FROM stdin;
    test_distinct_geoms       postgres    false    2587   U�	      z:          0    729936    col_puntoccl 
   TABLE DATA               �   COPY test_distinct_geoms.col_puntoccl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero, ccl) FROM stdin;
    test_distinct_geoms       postgres    false    2579   r�	      ~:          0    729973    col_puntocl 
   TABLE DATA               �   COPY test_distinct_geoms.col_puntocl (t_id, t_ili_tid, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_distinct_geoms       postgres    false    2583   ��	      s:          0    729870    col_puntofuente 
   TABLE DATA               �   COPY test_distinct_geoms.col_puntofuente (t_id, t_ili_tid, fuente_espacial, punto_lc_puntolevantamiento, punto_lc_puntocontrol, punto_lc_puntolindero) FROM stdin;
    test_distinct_geoms       postgres    false    2572   ��	      �:          0    730692    col_puntotipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2651   ��	      �:          0    730917    col_redserviciostipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_redserviciostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2676   9�	      �:          0    731079    col_registrotipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_registrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2694   ��	      q:          0    729855    col_relacionfuente 
   TABLE DATA               a   COPY test_distinct_geoms.col_relacionfuente (t_id, t_ili_tid, fuente_administrativa) FROM stdin;
    test_distinct_geoms       postgres    false    2570   a�	      v:          0    729899    col_relacionfuenteuespacial 
   TABLE DATA               d   COPY test_distinct_geoms.col_relacionfuenteuespacial (t_id, t_ili_tid, fuente_espacial) FROM stdin;
    test_distinct_geoms       postgres    false    2575   ~�	      �:          0    730971    col_relacionsuperficietipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_relacionsuperficietipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2682   ��	      �:          0    729991    col_responsablefuente 
   TABLE DATA               �   COPY test_distinct_geoms.col_responsablefuente (t_id, t_ili_tid, fuente_administrativa, interesado_lc_interesado, interesado_lc_agrupacioninteresados) FROM stdin;
    test_distinct_geoms       postgres    false    2585   7�	      o:          0    729835    col_rrrfuente 
   TABLE DATA               �   COPY test_distinct_geoms.col_rrrfuente (t_id, t_ili_tid, fuente_administrativa, rrr_lc_restriccion, rrr_lc_derecho) FROM stdin;
    test_distinct_geoms       postgres    false    2568   T�	      �:          0    730000    col_topografofuente 
   TABLE DATA               �   COPY test_distinct_geoms.col_topografofuente (t_id, t_ili_tid, fuente_espacial, topografo_lc_interesado, topografo_lc_agrupacioninteresados) FROM stdin;
    test_distinct_geoms       postgres    false    2586   q�	      g:          0    729756    col_transformacion 
   TABLE DATA               �   COPY test_distinct_geoms.col_transformacion (t_id, t_seq, localizacion_transformada, lc_puntocontrol_transformacion_y_resultado, lc_puntolindero_transformacion_y_resultado, lc_puntolevantamiento_transformacion_y_resultado) FROM stdin;
    test_distinct_geoms       postgres    false    2560   ��	      p:          0    729844    col_uebaunit 
   TABLE DATA               �   COPY test_distinct_geoms.col_uebaunit (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, baunit) FROM stdin;
    test_distinct_geoms       postgres    false    2569   ��	      t:          0    729880    col_uefuente 
   TABLE DATA               �   COPY test_distinct_geoms.col_uefuente (t_id, t_ili_tid, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, fuente_espacial) FROM stdin;
    test_distinct_geoms       postgres    false    2573   ��	      n:          0    729825    col_ueuegrupo 
   TABLE DATA               �   COPY test_distinct_geoms.col_ueuegrupo (t_id, t_ili_tid, parte_lc_construccion, parte_lc_terreno, parte_lc_servidumbretransito, parte_lc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2567   ��	      �:          0    730746 "   col_unidadadministrativabasicatipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_unidadadministrativabasicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2657   �	      �:          0    730791    col_unidadedificaciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_unidadedificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2662   w�	      r:          0    729862    col_unidadfuente 
   TABLE DATA               g   COPY test_distinct_geoms.col_unidadfuente (t_id, t_ili_tid, fuente_administrativa, unidad) FROM stdin;
    test_distinct_geoms       postgres    false    2571   ��	      �:          0    731178    col_volumentipo 
   TABLE DATA               �   COPY test_distinct_geoms.col_volumentipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2705   �	      m:          0    729814    col_volumenvalor 
   TABLE DATA               �   COPY test_distinct_geoms.col_volumenvalor (t_id, t_seq, volumen_medicion, tipo, lc_construccion_volumen, lc_terreno_volumen, lc_servidumbretransito_volumen, lc_unidadconstruccion_volumen) FROM stdin;
    test_distinct_geoms       postgres    false    2566   ��	      l:          0    729802 
   extarchivo 
   TABLE DATA               
  COPY test_distinct_geoms.extarchivo (t_id, t_seq, fecha_aceptacion, datos, extraccion, fecha_grabacion, fecha_entrega, espacio_de_nombres, local_id, snr_fuentecabidalndros_archivo, lc_fuenteadministrtiva_ext_archivo_id, lc_fuenteespacial_ext_archivo_id) FROM stdin;
    test_distinct_geoms       postgres    false    2565   ��	      e:          0    729727    extdireccion 
   TABLE DATA               '  COPY test_distinct_geoms.extdireccion (t_id, t_seq, tipo_direccion, es_direccion_principal, localizacion, codigo_postal, clase_via_principal, valor_via_principal, letra_via_principal, sector_ciudad, valor_via_generadora, letra_via_generadora, numero_predio, sector_predio, complemento, nombre_predio, extunidadedificcnfsica_ext_direccion_id, extinteresado_ext_direccion_id, lc_construccion_ext_direccion_id, lc_predio_direccion, lc_terreno_ext_direccion_id, lc_servidumbretransito_ext_direccion_id, lc_unidadconstruccion_ext_direccion_id) FROM stdin;
    test_distinct_geoms       postgres    false    2558   ��	      �:          0    731223     extdireccion_clase_via_principal 
   TABLE DATA               �   COPY test_distinct_geoms.extdireccion_clase_via_principal (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2710   ��	      �:          0    730962    extdireccion_sector_ciudad 
   TABLE DATA               �   COPY test_distinct_geoms.extdireccion_sector_ciudad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2681   ��	      �:          0    730710    extdireccion_sector_predio 
   TABLE DATA               �   COPY test_distinct_geoms.extdireccion_sector_predio (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2653   ]�	      �:          0    731133    extdireccion_tipo_direccion 
   TABLE DATA               �   COPY test_distinct_geoms.extdireccion_tipo_direccion (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2700   ��	      j:          0    729784    extinteresado 
   TABLE DATA               �   COPY test_distinct_geoms.extinteresado (t_id, t_seq, nombre, documento_escaneado, extredserviciosfisica_ext_interesado_administrador_id, lc_agrupacionintersdos_ext_pid, lc_interesado_ext_pid) FROM stdin;
    test_distinct_geoms       postgres    false    2563   ]�	      k:          0    729796    extredserviciosfisica 
   TABLE DATA               T   COPY test_distinct_geoms.extredserviciosfisica (t_id, t_seq, orientada) FROM stdin;
    test_distinct_geoms       postgres    false    2564   z�	      h:          0    729769    extunidadedificacionfisica 
   TABLE DATA               N   COPY test_distinct_geoms.extunidadedificacionfisica (t_id, t_seq) FROM stdin;
    test_distinct_geoms       postgres    false    2561   ��	      f:          0    729748    fraccion 
   TABLE DATA               �   COPY test_distinct_geoms.fraccion (t_id, t_seq, denominador, numerador, col_miembros_participacion, lc_predio_copropiedad_coeficiente) FROM stdin;
    test_distinct_geoms       postgres    false    2559   ��	      �:          0    730018 	   gc_barrio 
   TABLE DATA               k   COPY test_distinct_geoms.gc_barrio (t_id, t_ili_tid, codigo, nombre, codigo_sector, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2588   ��	      �:          0    730028 !   gc_calificacionunidadconstruccion 
   TABLE DATA               �   COPY test_distinct_geoms.gc_calificacionunidadconstruccion (t_id, t_ili_tid, componente, elemento_calificacion, detalle_calificacion, puntos, gc_unidadconstruccion) FROM stdin;
    test_distinct_geoms       postgres    false    2589   ��	      �:          0    730038    gc_comisionesconstruccion 
   TABLE DATA               l   COPY test_distinct_geoms.gc_comisionesconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2590   �	      �:          0    730048    gc_comisionesterreno 
   TABLE DATA               g   COPY test_distinct_geoms.gc_comisionesterreno (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2591   (�	      �:          0    730058    gc_comisionesunidadconstruccion 
   TABLE DATA               r   COPY test_distinct_geoms.gc_comisionesunidadconstruccion (t_id, t_ili_tid, numero_predial, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2592   E�	      �:          0    731115    gc_condicionprediotipo 
   TABLE DATA               �   COPY test_distinct_geoms.gc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2698   b�	      �:          0    730068    gc_construccion 
   TABLE DATA                 COPY test_distinct_geoms.gc_construccion (t_id, t_ili_tid, identificador, etiqueta, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, codigo_edificacion, codigo_terreno, area_construida, geometria, gc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2593   g�	      �:          0    730206    gc_copropiedad 
   TABLE DATA               j   COPY test_distinct_geoms.gc_copropiedad (t_id, gc_matriz, gc_unidad, coeficiente_copropiedad) FROM stdin;
    test_distinct_geoms       postgres    false    2607   ��	      �:          0    730080    gc_datosphcondominio 
   TABLE DATA                 COPY test_distinct_geoms.gc_datosphcondominio (t_id, t_ili_tid, area_total_terreno_privada, area_total_terreno_comun, area_total_construida_privada, area_total_construida_comun, total_unidades_privadas, total_unidades_sotano, valor_total_avaluo_catastral, gc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2594   ��	      �:          0    730087    gc_datostorreph 
   TABLE DATA               �   COPY test_distinct_geoms.gc_datostorreph (t_id, t_ili_tid, torre, total_pisos_torre, total_unidades_privadas, total_sotanos, total_unidades_sotano, gc_datosphcondominio) FROM stdin;
    test_distinct_geoms       postgres    false    2595   ��	      �:          0    730094    gc_direccion 
   TABLE DATA               �   COPY test_distinct_geoms.gc_direccion (t_id, t_seq, valor, principal, geometria_referencia, gc_prediocatastro_direcciones) FROM stdin;
    test_distinct_geoms       postgres    false    2596   ��	      �:          0    730105    gc_estadopredio 
   TABLE DATA               �   COPY test_distinct_geoms.gc_estadopredio (t_id, t_seq, estado_alerta, entidad_emisora_alerta, fecha_alerta, gc_prediocatastro_estado_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2597   ��	      �:          0    730112 
   gc_manzana 
   TABLE DATA               u   COPY test_distinct_geoms.gc_manzana (t_id, t_ili_tid, codigo, codigo_anterior, codigo_barrio, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2598   �	      �:          0    730122    gc_perimetro 
   TABLE DATA               �   COPY test_distinct_geoms.gc_perimetro (t_id, t_ili_tid, codigo_departamento, codigo_municipio, tipo_avaluo, nombre_geografico, codigo_nombre, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2599   2�	      �:          0    730195    gc_prediocatastro 
   TABLE DATA                 COPY test_distinct_geoms.gc_prediocatastro (t_id, t_ili_tid, tipo_catastro, numero_predial, numero_predial_anterior, nupre, circulo_registral, matricula_inmobiliaria_catastro, tipo_predio, condicion_predio, destinacion_economica, sistema_procedencia_datos, fecha_datos) FROM stdin;
    test_distinct_geoms       postgres    false    2606   O�	      �:          0    730132    gc_propietario 
   TABLE DATA               �   COPY test_distinct_geoms.gc_propietario (t_id, t_ili_tid, tipo_documento, numero_documento, digito_verificacion, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, razon_social, gc_predio_catastro) FROM stdin;
    test_distinct_geoms       postgres    false    2600   l�	      �:          0    730142    gc_sectorrural 
   TABLE DATA               Y   COPY test_distinct_geoms.gc_sectorrural (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2601   ��	      �:          0    730152    gc_sectorurbano 
   TABLE DATA               Z   COPY test_distinct_geoms.gc_sectorurbano (t_id, t_ili_tid, codigo, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2602   ��	      �:          0    730890    gc_sistemaprocedenciadatostipo 
   TABLE DATA               �   COPY test_distinct_geoms.gc_sistemaprocedenciadatostipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2673   ��	      �:          0    730162 
   gc_terreno 
   TABLE DATA               �   COPY test_distinct_geoms.gc_terreno (t_id, t_ili_tid, area_terreno_alfanumerica, area_terreno_digital, manzana_vereda_codigo, numero_subterraneos, geometria, gc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2603   y�	      �:          0    730173    gc_unidadconstruccion 
   TABLE DATA               9  COPY test_distinct_geoms.gc_unidadconstruccion (t_id, t_ili_tid, identificador, etiqueta, tipo_dominio, tipo_construccion, planta, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, puntaje, area_construida, area_privada, codigo_terreno, geometria, gc_construccion) FROM stdin;
    test_distinct_geoms       postgres    false    2604   ��	      �:          0    730764    gc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.gc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2659   ��	      �:          0    730185 	   gc_vereda 
   TABLE DATA               |   COPY test_distinct_geoms.gc_vereda (t_id, t_ili_tid, codigo, codigo_anterior, nombre, codigo_sector, geometria) FROM stdin;
    test_distinct_geoms       postgres    false    2605   ��	      `:          0    729683    gm_multisurface2d 
   TABLE DATA               E   COPY test_distinct_geoms.gm_multisurface2d (t_id, t_seq) FROM stdin;
    test_distinct_geoms       postgres    false    2553   ��	      b:          0    729700    gm_multisurface3d 
   TABLE DATA               E   COPY test_distinct_geoms.gm_multisurface3d (t_id, t_seq) FROM stdin;
    test_distinct_geoms       postgres    false    2555   ��	      _:          0    729672    gm_surface2dlistvalue 
   TABLE DATA               m   COPY test_distinct_geoms.gm_surface2dlistvalue (t_id, t_seq, avalue, gm_multisurface2d_geometry) FROM stdin;
    test_distinct_geoms       postgres    false    2552   ��	      a:          0    729689    gm_surface3dlistvalue 
   TABLE DATA               m   COPY test_distinct_geoms.gm_surface3dlistvalue (t_id, t_seq, avalue, gm_multisurface3d_geometry) FROM stdin;
    test_distinct_geoms       postgres    false    2554   ��	      i:          0    729775    imagen 
   TABLE DATA               �   COPY test_distinct_geoms.imagen (t_id, t_seq, uri, extinteresado_huella_dactilar, extinteresado_fotografia, extinteresado_firma) FROM stdin;
    test_distinct_geoms       postgres    false    2562   �	      �:          0    730809    ini_emparejamientotipo 
   TABLE DATA               �   COPY test_distinct_geoms.ini_emparejamientotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2664   .�	      �:          0    730280    ini_predioinsumos 
   TABLE DATA               �   COPY test_distinct_geoms.ini_predioinsumos (t_id, t_ili_tid, tipo_emparejamiento, observaciones, gc_predio_catastro, snr_predio_juridico) FROM stdin;
    test_distinct_geoms       postgres    false    2615   t�	      �:          0    731097    lc_acuerdotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_acuerdotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2696   ��	      �:          0    730292    lc_agrupacioninteresados 
   TABLE DATA               �   COPY test_distinct_geoms.lc_agrupacioninteresados (t_id, t_ili_tid, tipo, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2616   5�	      �:          0    731106    lc_anexotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_anexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2697   R�	      �:          0    730536    lc_calificacionconvencional 
   TABLE DATA               �   COPY test_distinct_geoms.lc_calificacionconvencional (t_id, t_ili_tid, tipo_calificar, total_calificacion, lc_unidad_construccion) FROM stdin;
    test_distinct_geoms       postgres    false    2636   �
      �:          0    730545    lc_calificacionnoconvencional 
   TABLE DATA               y   COPY test_distinct_geoms.lc_calificacionnoconvencional (t_id, t_ili_tid, tipo_anexo, lc_unidad_construccion) FROM stdin;
    test_distinct_geoms       postgres    false    2637   
      �:          0    731196    lc_calificartipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_calificartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2707   
      �:          0    730800    lc_categoriasuelotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_categoriasuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2663   �
      �:          0    731232    lc_clasecalificaciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_clasecalificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2711   E
      �:          0    730881    lc_clasesuelotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_clasesuelotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2672   �	
      �:          0    731241    lc_condicionprediotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_condicionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2712   �
      �:          0    730303    lc_construccion 
   TABLE DATA               �  COPY test_distinct_geoms.lc_construccion (t_id, t_ili_tid, identificador, tipo_construccion, tipo_dominio, numero_pisos, numero_sotanos, numero_mezanines, numero_semisotanos, anio_construccion, avaluo_construccion, area_construccion, altura, observaciones, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2617   �
      �:          0    730998    lc_construccionplantatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_construccionplantatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2685   �
      �:          0    731214    lc_construcciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_construcciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2709   w
      �:          0    730318    lc_contactovisita 
   TABLE DATA               |  COPY test_distinct_geoms.lc_contactovisita (t_id, t_ili_tid, tipo_documento_quien_atendio, numero_documento_quien_atendio, primer_nombre_quien_atendio, segundo_nombre_quien_atendio, primer_apellido_quien_atendio, segundo_apellido_quien_atendio, relacion_con_predio, domicilio_notificaciones, celular, correo_electronico, autoriza_notificaciones, lc_datos_adicionales) FROM stdin;
    test_distinct_geoms       postgres    false    2618   A
      �:          0    730554 )   lc_datosadicionaleslevantamientocatastral 
   TABLE DATA               �  COPY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral (t_id, t_ili_tid, tiene_area_registral, area_registral_m2, procedimiento_catastral_registral, destinacion_economica, clase_suelo, categoria_suelo, observaciones, fecha_visita_predial, tipo_documento_reconocedor, numero_documento_reconocedor, primer_nombre_reconocedor, segundo_nombre_reconocedor, primer_apellido_reconocedor, segundo_apellido_reconocedor, resultado_visita, suscribe_acta_colindancia, lc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2638   ^
      �:          0    730331    lc_datosphcondominio 
   TABLE DATA                 COPY test_distinct_geoms.lc_datosphcondominio (t_id, t_ili_tid, area_total_terreno, area_total_terreno_privada, area_total_terreno_comun, area_total_construida, area_total_construida_privada, area_total_construida_comun, numero_torres, total_unidades_privadas, lc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2619   {
      �:          0    730339 
   lc_derecho 
   TABLE DATA                 COPY test_distinct_geoms.lc_derecho (t_id, t_ili_tid, tipo, fraccion_derecho, fecha_inicio_tenencia, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2620   �
      �:          0    730854    lc_derechotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_derechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2669   �
      �:          0    730773    lc_destinacioneconomicatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_destinacioneconomicatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2660   }
      �:          0    731169    lc_dominioconstrucciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_dominioconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2704   "
      ;          0    731286    lc_estadoconservaciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_estadoconservaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2717   �"
      �:          0    730353    lc_estructuranovedadfmi 
   TABLE DATA               �   COPY test_distinct_geoms.lc_estructuranovedadfmi (t_id, t_seq, codigo_orip, numero_fmi, lc_dtsdcnlstmntctstral_novedad_fmi) FROM stdin;
    test_distinct_geoms       postgres    false    2621   a%
      �:          0    730360 !   lc_estructuranovedadnumeropredial 
   TABLE DATA               �   COPY test_distinct_geoms.lc_estructuranovedadnumeropredial (t_id, t_seq, numero_predial, tipo_novedad, lc_dtsdcnlstmntctstral_novedad_numeros_prediales) FROM stdin;
    test_distinct_geoms       postgres    false    2622   ~%
      �:          0    730701 .   lc_estructuranovedadnumeropredial_tipo_novedad 
   TABLE DATA               �   COPY test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2652   �%
      �:          0    730827    lc_fotoidentificaciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_fotoidentificaciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2666   �&
      �:          0    730368    lc_fuenteadministrativa 
   TABLE DATA               �   COPY test_distinct_geoms.lc_fuenteadministrativa (t_id, t_ili_tid, tipo, ente_emisor, observacion, numero_fuente, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2623   t'
      �:          0    731142    lc_fuenteadministrativatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_fuenteadministrativatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2701   �'
      �:          0    730381    lc_fuenteespacial 
   TABLE DATA               �   COPY test_distinct_geoms.lc_fuenteespacial (t_id, t_ili_tid, nombre, tipo, descripcion, metadato, estado_disponibilidad, tipo_principal, fecha_documento_fuente, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2624   -*
      �:          0    730394    lc_grupocalificacion 
   TABLE DATA               �   COPY test_distinct_geoms.lc_grupocalificacion (t_id, t_ili_tid, clase_calificacion, conservacion, subtotal, lc_calificacion_convencional) FROM stdin;
    test_distinct_geoms       postgres    false    2625   J*
      �:          0    730845    lc_grupoetnicotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_grupoetnicotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2668   g*
      �:          0    730404    lc_interesado 
   TABLE DATA               -  COPY test_distinct_geoms.lc_interesado (t_id, t_ili_tid, tipo, tipo_documento, documento_identidad, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, sexo, grupo_etnico, razon_social, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2626   /
      �:          0    730418    lc_interesadocontacto 
   TABLE DATA                 COPY test_distinct_geoms.lc_interesadocontacto (t_id, t_ili_tid, telefono1, telefono2, domicilio_notificacion, direccion_residencia, correo_electronico, autoriza_notificacion_correo, departamento, municipio, vereda, corregimiento, lc_interesado) FROM stdin;
    test_distinct_geoms       postgres    false    2627   /
      �:          0    731043    lc_interesadodocumentotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_interesadodocumentotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2690   </
      �:          0    730926    lc_interesadotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_interesadotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2677   52
      �:          0    730429 
   lc_lindero 
   TABLE DATA               �   COPY test_distinct_geoms.lc_lindero (t_id, t_ili_tid, longitud, geometria, localizacion_textual, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2628   e3
      �:          0    730440    lc_objetoconstruccion 
   TABLE DATA               �   COPY test_distinct_geoms.lc_objetoconstruccion (t_id, t_ili_tid, tipo_objeto_construccion, puntos, lc_grupo_calificacion) FROM stdin;
    test_distinct_geoms       postgres    false    2629   �3
      ;          0    731277    lc_objetoconstrucciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_objetoconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2716   �3
      �:          0    730449    lc_ofertasmercadoinmobiliario 
   TABLE DATA               �   COPY test_distinct_geoms.lc_ofertasmercadoinmobiliario (t_id, t_ili_tid, tipo_oferta, valor_pedido, valor_negociado, fecha_captura_oferta, tiempo_oferta_mercado, numero_contacto_oferente, nombre_oferente, lc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2630   x@
      �:          0    730755    lc_ofertatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_ofertatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2658   �@
      �:          0    730458 	   lc_predio 
   TABLE DATA               K  COPY test_distinct_geoms.lc_predio (t_id, t_ili_tid, departamento, municipio, id_operacion, tiene_fmi, codigo_orip, matricula_inmobiliaria, numero_predial, numero_predial_anterior, nupre, avaluo_catastral, tipo, condicion_predio, nombre, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2631   �A
      �:          0    730600    lc_predio_copropiedad 
   TABLE DATA               W   COPY test_distinct_geoms.lc_predio_copropiedad (t_id, predio, copropiedad) FROM stdin;
    test_distinct_geoms       postgres    false    2641   �A
      �:          0    730608    lc_predio_ini_predioinsumos 
   TABLE DATA               r   COPY test_distinct_geoms.lc_predio_ini_predioinsumos (t_id, t_ili_tid, ini_predio_insumos, lc_predio) FROM stdin;
    test_distinct_geoms       postgres    false    2642   �A
      �:          0    731052    lc_prediotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_prediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2691   �A
      �:          0    730872 &   lc_procedimientocatastralregistraltipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_procedimientocatastralregistraltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2671   E
      �:          0    730470    lc_puntocontrol 
   TABLE DATA               �  COPY test_distinct_geoms.lc_puntocontrol (t_id, t_ili_tid, id_punto_control, puntotipo, tipo_punto_control, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2632   DI
      �:          0    731205    lc_puntocontroltipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_puntocontroltipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2708   aI
      �:          0    730571    lc_puntolevantamiento 
   TABLE DATA               �  COPY test_distinct_geoms.lc_puntolevantamiento (t_id, t_ili_tid, id_punto_levantamiento, puntotipo, tipo_punto_levantamiento, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2639   uJ
      �:          0    731088    lc_puntolevtipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_puntolevtipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2695   �J
      �:          0    730489    lc_puntolindero 
   TABLE DATA               �  COPY test_distinct_geoms.lc_puntolindero (t_id, t_ili_tid, id_punto_lindero, puntotipo, acuerdo, fotoidentificacion, exactitud_horizontal, exactitud_vertical, posicion_interpolacion, metodoproduccion, geometria, ue_lc_construccion, ue_lc_terreno, ue_lc_servidumbretransito, ue_lc_unidadconstruccion, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2633   ZK
      �:          0    730989    lc_puntotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_puntotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2684   wK
      �:          0    730899    lc_relacionprediotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_relacionprediotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2674   TN
      �:          0    730509    lc_restriccion 
   TABLE DATA               �   COPY test_distinct_geoms.lc_restriccion (t_id, t_ili_tid, tipo, descripcion, interesado_lc_interesado, interesado_lc_agrupacioninteresados, unidad, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2634   �O
      �:          0    731070    lc_restricciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_restricciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2693   �O
      �:          0    730935    lc_resultadovisitatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_resultadovisitatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2678   �Y
      �:          0    730616    lc_servidumbretransito 
   TABLE DATA               �   COPY test_distinct_geoms.lc_servidumbretransito (t_id, t_ili_tid, area_servidumbre, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2643   �[
      �:          0    730980    lc_sexotipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_sexotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2683   �[
      �:          0    730523 
   lc_terreno 
   TABLE DATA               �   COPY test_distinct_geoms.lc_terreno (t_id, t_ili_tid, area_terreno, avaluo_terreno, manzana_vereda_codigo, geometria, dimension, etiqueta, relacion_superficie, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2635   k\
      �:          0    730591    lc_tipologiaconstruccion 
   TABLE DATA               x   COPY test_distinct_geoms.lc_tipologiaconstruccion (t_id, t_ili_tid, tipo_tipologia, lc_unidad_construccion) FROM stdin;
    test_distinct_geoms       postgres    false    2640   �\
      �:          0    731160    lc_tipologiatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_tipologiatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2703   �\
      �:          0    730629    lc_unidadconstruccion 
   TABLE DATA                  COPY test_distinct_geoms.lc_unidadconstruccion (t_id, t_ili_tid, identificador, tipo_dominio, tipo_construccion, tipo_unidad_construccion, tipo_planta, planta_ubicacion, total_habitaciones, total_banios, total_locales, total_pisos, uso, anio_construccion, avaluo_unidad_construccion, area_construida, area_privada_construida, altura, observaciones, lc_construccion, dimension, etiqueta, relacion_superficie, geometria, comienzo_vida_util_version, fin_vida_util_version, espacio_de_nombres, local_id) FROM stdin;
    test_distinct_geoms       postgres    false    2644   �b
      �:          0    731016    lc_unidadconstrucciontipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_unidadconstrucciontipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2687   �b
      �:          0    731124    lc_usouconstipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_usouconstipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2699   �c
      �:          0    730782 
   lc_viatipo 
   TABLE DATA               �   COPY test_distinct_geoms.lc_viatipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2661   Q�
      ;          0    737506    points 
   TABLE DATA               �   COPY test_distinct_geoms.points (id, geom, fid, t_id, exactitud_horizontal, espacio_de_nombres, local_id, comienzo_vida_util_version, acuerdo, puntotipo, metodoproduccion, id_punto_lindero) FROM stdin;
    test_distinct_geoms       postgres    false    2724   �
      ;          0    737517    points_m 
   TABLE DATA               �   COPY test_distinct_geoms.points_m (id, geom, fid, t_id, exactitud_horizontal, espacio_de_nombres, local_id, comienzo_vida_util_version, acuerdo, puntotipo, metodoproduccion, id_punto_lindero) FROM stdin;
    test_distinct_geoms       postgres    false    2726   ��
      ;          0    737528    points_z 
   TABLE DATA               �   COPY test_distinct_geoms.points_z (id, geom, fid, t_id, exactitud_horizontal, espacio_de_nombres, local_id, comienzo_vida_util_version, acuerdo, puntotipo, metodoproduccion, id_punto_lindero) FROM stdin;
    test_distinct_geoms       postgres    false    2728   M�
      ;          0    737539 	   points_zm 
   TABLE DATA               �   COPY test_distinct_geoms.points_zm (id, geom, fid, t_id, exactitud_horizontal, espacio_de_nombres, local_id, comienzo_vida_util_version, acuerdo, puntotipo, metodoproduccion, id_punto_lindero) FROM stdin;
    test_distinct_geoms       postgres    false    2730   �
      �:          0    731151    snr_calidadderechotipo 
   TABLE DATA               �   COPY test_distinct_geoms.snr_calidadderechotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2702   ��
      �:          0    731187    snr_clasepredioregistrotipo 
   TABLE DATA               �   COPY test_distinct_geoms.snr_clasepredioregistrotipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2706   �
      �:          0    730214    snr_derecho 
   TABLE DATA               �   COPY test_distinct_geoms.snr_derecho (t_id, t_ili_tid, calidad_derecho_registro, codigo_naturaleza_juridica, snr_fuente_derecho, snr_predio_registro) FROM stdin;
    test_distinct_geoms       postgres    false    2608   ۨ
      ;          0    731259    snr_documentotitulartipo 
   TABLE DATA               �   COPY test_distinct_geoms.snr_documentotitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2714   ��
      �:          0    730223    snr_estructuramatriculamatriz 
   TABLE DATA               �   COPY test_distinct_geoms.snr_estructuramatriculamatriz (t_id, t_seq, codigo_orip, matricula_inmobiliaria, snr_predioregistro_matricula_inmobiliaria_matriz) FROM stdin;
    test_distinct_geoms       postgres    false    2609   %�
      �:          0    730230    snr_fuentecabidalinderos 
   TABLE DATA               �   COPY test_distinct_geoms.snr_fuentecabidalinderos (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_distinct_geoms       postgres    false    2610   B�
      �:          0    730240    snr_fuentederecho 
   TABLE DATA               �   COPY test_distinct_geoms.snr_fuentederecho (t_id, t_ili_tid, tipo_documento, numero_documento, fecha_documento, ente_emisor, ciudad_emisora) FROM stdin;
    test_distinct_geoms       postgres    false    2611   _�
      �:          0    730719    snr_fuentetipo 
   TABLE DATA               �   COPY test_distinct_geoms.snr_fuentetipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2654   |�
      �:          0    730728    snr_personatitulartipo 
   TABLE DATA               �   COPY test_distinct_geoms.snr_personatitulartipo (t_id, thisclass, baseclass, itfcode, ilicode, seq, inactive, dispname, description) FROM stdin;
    test_distinct_geoms       postgres    false    2655   �
      �:          0    730261    snr_predioregistro 
   TABLE DATA                 COPY test_distinct_geoms.snr_predioregistro (t_id, t_ili_tid, codigo_orip, matricula_inmobiliaria, numero_predial_nuevo_en_fmi, numero_predial_anterior_en_fmi, nomenclatura_registro, cabida_linderos, clase_suelo_registro, fecha_datos, snr_fuente_cabidalinderos) FROM stdin;
    test_distinct_geoms       postgres    false    2613   ,�
      �:          0    730250    snr_titular 
   TABLE DATA               �   COPY test_distinct_geoms.snr_titular (t_id, t_ili_tid, tipo_persona, tipo_documento, numero_documento, nombres, primer_apellido, segundo_apellido, razon_social) FROM stdin;
    test_distinct_geoms       postgres    false    2612   I�
      �:          0    730272    snr_titular_derecho 
   TABLE DATA                  COPY test_distinct_geoms.snr_titular_derecho (t_id, t_ili_tid, snr_titular, snr_derecho, porcentaje_participacion) FROM stdin;
    test_distinct_geoms       postgres    false    2614   f�
      ;          0    731303    t_ili2db_attrname 
   TABLE DATA               \   COPY test_distinct_geoms.t_ili2db_attrname (iliname, sqlname, colowner, target) FROM stdin;
    test_distinct_geoms       postgres    false    2719   ��
      �:          0    730648    t_ili2db_basket 
   TABLE DATA               o   COPY test_distinct_geoms.t_ili2db_basket (t_id, dataset, topic, t_ili_tid, attachmentkey, domains) FROM stdin;
    test_distinct_geoms       postgres    false    2645   	�
      ;          0    731295    t_ili2db_classname 
   TABLE DATA               K   COPY test_distinct_geoms.t_ili2db_classname (iliname, sqlname) FROM stdin;
    test_distinct_geoms       postgres    false    2718   &�
      ;          0    731311    t_ili2db_column_prop 
   TABLE DATA               i   COPY test_distinct_geoms.t_ili2db_column_prop (tablename, subtype, columnname, tag, setting) FROM stdin;
    test_distinct_geoms       postgres    false    2720   k�
      �:          0    730657    t_ili2db_dataset 
   TABLE DATA               J   COPY test_distinct_geoms.t_ili2db_dataset (t_id, datasetname) FROM stdin;
    test_distinct_geoms       postgres    false    2646   ��
      �:          0    730662    t_ili2db_inheritance 
   TABLE DATA               Q   COPY test_distinct_geoms.t_ili2db_inheritance (thisclass, baseclass) FROM stdin;
    test_distinct_geoms       postgres    false    2647   ��
      	;          0    731323    t_ili2db_meta_attrs 
   TABLE DATA               ]   COPY test_distinct_geoms.t_ili2db_meta_attrs (ilielement, attr_name, attr_value) FROM stdin;
    test_distinct_geoms       postgres    false    2722   �      �:          0    730684    t_ili2db_model 
   TABLE DATA               k   COPY test_distinct_geoms.t_ili2db_model (filename, iliversion, modelname, content, importdate) FROM stdin;
    test_distinct_geoms       postgres    false    2650   8;      �:          0    730670    t_ili2db_settings 
   TABLE DATA               F   COPY test_distinct_geoms.t_ili2db_settings (tag, setting) FROM stdin;
    test_distinct_geoms       postgres    false    2648   �      ;          0    731317    t_ili2db_table_prop 
   TABLE DATA               S   COPY test_distinct_geoms.t_ili2db_table_prop (tablename, tag, setting) FROM stdin;
    test_distinct_geoms       postgres    false    2721   �      �:          0    730678    t_ili2db_trafo 
   TABLE DATA               L   COPY test_distinct_geoms.t_ili2db_trafo (iliname, tag, setting) FROM stdin;
    test_distinct_geoms       postgres    false    2649   �'      �<           0    0    points_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('test_distinct_geoms.points_id_seq', 51, true);
            test_distinct_geoms       postgres    false    2723            �<           0    0    points_m_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('test_distinct_geoms.points_m_id_seq', 51, true);
            test_distinct_geoms       postgres    false    2725             =           0    0    points_z_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('test_distinct_geoms.points_z_id_seq', 51, true);
            test_distinct_geoms       postgres    false    2727            =           0    0    points_zm_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('test_distinct_geoms.points_zm_id_seq', 51, true);
            test_distinct_geoms       postgres    false    2729            =           0    0    t_ili2db_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('test_distinct_geoms.t_ili2db_seq', 587, true);
            test_distinct_geoms       postgres    false    2551            �6           2606    729711 *   cc_metodooperacion cc_metodooperacion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_pkey;
       test_distinct_geoms         postgres    false    2556            �8           2606    730826 >   ci_forma_presentacion_codigo ci_forma_presentacion_codigo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.ci_forma_presentacion_codigo
    ADD CONSTRAINT ci_forma_presentacion_codigo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_distinct_geoms.ci_forma_presentacion_codigo DROP CONSTRAINT ci_forma_presentacion_codigo_pkey;
       test_distinct_geoms         postgres    false    2665            �8           2606    731033    col_areatipo col_areatipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_areatipo
    ADD CONSTRAINT col_areatipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_areatipo DROP CONSTRAINT col_areatipo_pkey;
       test_distinct_geoms         postgres    false    2688            �6           2606    729721     col_areavalor col_areavalor_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_pkey;
       test_distinct_geoms         postgres    false    2557            @7           2606    729987 6   col_baunitcomointeresado col_baunitcomointeresado_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_pkey;
       test_distinct_geoms         postgres    false    2584            7           2606    729896 &   col_baunitfuente col_baunitfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente DROP CONSTRAINT col_baunitfuente_pkey;
       test_distinct_geoms         postgres    false    2574            7           2606    729911     col_cclfuente col_cclfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente
    ADD CONSTRAINT col_cclfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente DROP CONSTRAINT col_cclfuente_pkey;
       test_distinct_geoms         postgres    false    2576            +7           2606    729951    col_clfuente col_clfuente_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_clfuente
    ADD CONSTRAINT col_clfuente_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_clfuente DROP CONSTRAINT col_clfuente_pkey;
       test_distinct_geoms         postgres    false    2580            �8           2606    731015 2   col_contenidoniveltipo col_contenidoniveltipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.col_contenidoniveltipo
    ADD CONSTRAINT col_contenidoniveltipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.col_contenidoniveltipo DROP CONSTRAINT col_contenidoniveltipo_pkey;
       test_distinct_geoms         postgres    false    2686            �8           2606    730844 (   col_dimensiontipo col_dimensiontipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.col_dimensiontipo
    ADD CONSTRAINT col_dimensiontipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.col_dimensiontipo DROP CONSTRAINT col_dimensiontipo_pkey;
       test_distinct_geoms         postgres    false    2667            �8           2606    730961 >   col_estadodisponibilidadtipo col_estadodisponibilidadtipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_estadodisponibilidadtipo
    ADD CONSTRAINT col_estadodisponibilidadtipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_distinct_geoms.col_estadodisponibilidadtipo DROP CONSTRAINT col_estadodisponibilidadtipo_pkey;
       test_distinct_geoms         postgres    false    2680            �8           2606    731258 :   col_estadoredserviciostipo col_estadoredserviciostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_estadoredserviciostipo
    ADD CONSTRAINT col_estadoredserviciostipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.col_estadoredserviciostipo DROP CONSTRAINT col_estadoredserviciostipo_pkey;
       test_distinct_geoms         postgres    false    2713            �8           2606    731042 *   col_estructuratipo col_estructuratipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.col_estructuratipo
    ADD CONSTRAINT col_estructuratipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.col_estructuratipo DROP CONSTRAINT col_estructuratipo_pkey;
       test_distinct_geoms         postgres    false    2689            �8           2606    731069 >   col_fuenteadministrativatipo col_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_fuenteadministrativatipo
    ADD CONSTRAINT col_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 u   ALTER TABLE ONLY test_distinct_geoms.col_fuenteadministrativatipo DROP CONSTRAINT col_fuenteadministrativatipo_pkey;
       test_distinct_geoms         postgres    false    2692            �8           2606    730871 2   col_fuenteespacialtipo col_fuenteespacialtipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.col_fuenteespacialtipo
    ADD CONSTRAINT col_fuenteespacialtipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.col_fuenteespacialtipo DROP CONSTRAINT col_fuenteespacialtipo_pkey;
       test_distinct_geoms         postgres    false    2670            �8           2606    730916 4   col_grupointeresadotipo col_grupointeresadotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_grupointeresadotipo
    ADD CONSTRAINT col_grupointeresadotipo_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_distinct_geoms.col_grupointeresadotipo DROP CONSTRAINT col_grupointeresadotipo_pkey;
       test_distinct_geoms         postgres    false    2675            �8           2606    730952 0   col_interpolaciontipo col_interpolaciontipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.col_interpolaciontipo
    ADD CONSTRAINT col_interpolaciontipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.col_interpolaciontipo DROP CONSTRAINT col_interpolaciontipo_pkey;
       test_distinct_geoms         postgres    false    2679            o8           2606    730745 (   col_iso19125_tipo col_iso19125_tipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.col_iso19125_tipo
    ADD CONSTRAINT col_iso19125_tipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.col_iso19125_tipo DROP CONSTRAINT col_iso19125_tipo_pkey;
       test_distinct_geoms         postgres    false    2656            7           2606    729930    col_masccl col_masccl_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_pkey;
       test_distinct_geoms         postgres    false    2578            37           2606    729968    col_mascl col_mascl_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_distinct_geoms.col_mascl
    ADD CONSTRAINT col_mascl_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_distinct_geoms.col_mascl DROP CONSTRAINT col_mascl_pkey;
       test_distinct_geoms         postgres    false    2582            7           2606    729919    col_menosccl col_menosccl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_pkey;
       test_distinct_geoms         postgres    false    2577            -7           2606    729958    col_menoscl col_menoscl_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_distinct_geoms.col_menoscl
    ADD CONSTRAINT col_menoscl_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_distinct_geoms.col_menoscl DROP CONSTRAINT col_menoscl_pkey;
       test_distinct_geoms         postgres    false    2581            �8           2606    731276 6   col_metodoproducciontipo col_metodoproducciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_metodoproducciontipo
    ADD CONSTRAINT col_metodoproducciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.col_metodoproducciontipo DROP CONSTRAINT col_metodoproducciontipo_pkey;
       test_distinct_geoms         postgres    false    2715            P7           2606    730014    col_miembros col_miembros_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_miembros
    ADD CONSTRAINT col_miembros_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_miembros DROP CONSTRAINT col_miembros_pkey;
       test_distinct_geoms         postgres    false    2587            %7           2606    729941    col_puntoccl col_puntoccl_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl
    ADD CONSTRAINT col_puntoccl_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl DROP CONSTRAINT col_puntoccl_pkey;
       test_distinct_geoms         postgres    false    2579            97           2606    729978    col_puntocl col_puntocl_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_distinct_geoms.col_puntocl
    ADD CONSTRAINT col_puntocl_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_distinct_geoms.col_puntocl DROP CONSTRAINT col_puntocl_pkey;
       test_distinct_geoms         postgres    false    2583            �6           2606    729875 $   col_puntofuente col_puntofuente_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente
    ADD CONSTRAINT col_puntofuente_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente DROP CONSTRAINT col_puntofuente_pkey;
       test_distinct_geoms         postgres    false    2572            e8           2606    730700     col_puntotipo col_puntotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.col_puntotipo
    ADD CONSTRAINT col_puntotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.col_puntotipo DROP CONSTRAINT col_puntotipo_pkey;
       test_distinct_geoms         postgres    false    2651            �8           2606    730925 .   col_redserviciostipo col_redserviciostipo_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_distinct_geoms.col_redserviciostipo
    ADD CONSTRAINT col_redserviciostipo_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_distinct_geoms.col_redserviciostipo DROP CONSTRAINT col_redserviciostipo_pkey;
       test_distinct_geoms         postgres    false    2676            �8           2606    731087 &   col_registrotipo col_registrotipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.col_registrotipo
    ADD CONSTRAINT col_registrotipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.col_registrotipo DROP CONSTRAINT col_registrotipo_pkey;
       test_distinct_geoms         postgres    false    2694            �6           2606    729860 *   col_relacionfuente col_relacionfuente_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuente DROP CONSTRAINT col_relacionfuente_pkey;
       test_distinct_geoms         postgres    false    2570            7           2606    729904 <   col_relacionfuenteuespacial col_relacionfuenteuespacial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespacial_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespacial_pkey;
       test_distinct_geoms         postgres    false    2575            �8           2606    730979 :   col_relacionsuperficietipo col_relacionsuperficietipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_relacionsuperficietipo
    ADD CONSTRAINT col_relacionsuperficietipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.col_relacionsuperficietipo DROP CONSTRAINT col_relacionsuperficietipo_pkey;
       test_distinct_geoms         postgres    false    2682            F7           2606    729996 0   col_responsablefuente col_responsablefuente_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente DROP CONSTRAINT col_responsablefuente_pkey;
       test_distinct_geoms         postgres    false    2585            �6           2606    729840     col_rrrfuente col_rrrfuente_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente DROP CONSTRAINT col_rrrfuente_pkey;
       test_distinct_geoms         postgres    false    2568            I7           2606    730005 ,   col_topografofuente col_topografofuente_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente
    ADD CONSTRAINT col_topografofuente_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente DROP CONSTRAINT col_topografofuente_pkey;
       test_distinct_geoms         postgres    false    2586            �6           2606    729764 *   col_transformacion col_transformacion_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.col_transformacion
    ADD CONSTRAINT col_transformacion_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.col_transformacion DROP CONSTRAINT col_transformacion_pkey;
       test_distinct_geoms         postgres    false    2560            �6           2606    729849    col_uebaunit col_uebaunit_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_pkey;
       test_distinct_geoms         postgres    false    2569            7           2606    729885    col_uefuente col_uefuente_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_pkey;
       test_distinct_geoms         postgres    false    2573            �6           2606    729830     col_ueuegrupo col_ueuegrupo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_pkey;
       test_distinct_geoms         postgres    false    2567            q8           2606    730754 J   col_unidadadministrativabasicatipo col_unidadadministrativabasicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_unidadadministrativabasicatipo
    ADD CONSTRAINT col_unidadadministrativabasicatipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_distinct_geoms.col_unidadadministrativabasicatipo DROP CONSTRAINT col_unidadadministrativabasicatipo_pkey;
       test_distinct_geoms         postgres    false    2657            {8           2606    730799 8   col_unidadedificaciontipo col_unidadedificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_unidadedificaciontipo
    ADD CONSTRAINT col_unidadedificaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.col_unidadedificaciontipo DROP CONSTRAINT col_unidadedificaciontipo_pkey;
       test_distinct_geoms         postgres    false    2662            �6           2606    729867 &   col_unidadfuente col_unidadfuente_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente DROP CONSTRAINT col_unidadfuente_pkey;
       test_distinct_geoms         postgres    false    2571            �8           2606    731186 $   col_volumentipo col_volumentipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.col_volumentipo
    ADD CONSTRAINT col_volumentipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.col_volumentipo DROP CONSTRAINT col_volumentipo_pkey;
       test_distinct_geoms         postgres    false    2705            �6           2606    729819 &   col_volumenvalor col_volumenvalor_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_pkey;
       test_distinct_geoms         postgres    false    2566            �6           2606    729810    extarchivo extarchivo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.extarchivo
    ADD CONSTRAINT extarchivo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.extarchivo DROP CONSTRAINT extarchivo_pkey;
       test_distinct_geoms         postgres    false    2565            �8           2606    731231 F   extdireccion_clase_via_principal extdireccion_clase_via_principal_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion_clase_via_principal
    ADD CONSTRAINT extdireccion_clase_via_principal_pkey PRIMARY KEY (t_id);
 }   ALTER TABLE ONLY test_distinct_geoms.extdireccion_clase_via_principal DROP CONSTRAINT extdireccion_clase_via_principal_pkey;
       test_distinct_geoms         postgres    false    2710            �6           2606    729735    extdireccion extdireccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_pkey;
       test_distinct_geoms         postgres    false    2558            �8           2606    730970 :   extdireccion_sector_ciudad extdireccion_sector_ciudad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion_sector_ciudad
    ADD CONSTRAINT extdireccion_sector_ciudad_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.extdireccion_sector_ciudad DROP CONSTRAINT extdireccion_sector_ciudad_pkey;
       test_distinct_geoms         postgres    false    2681            i8           2606    730718 :   extdireccion_sector_predio extdireccion_sector_predio_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion_sector_predio
    ADD CONSTRAINT extdireccion_sector_predio_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.extdireccion_sector_predio DROP CONSTRAINT extdireccion_sector_predio_pkey;
       test_distinct_geoms         postgres    false    2653            �8           2606    731141 <   extdireccion_tipo_direccion extdireccion_tipo_direccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion_tipo_direccion
    ADD CONSTRAINT extdireccion_tipo_direccion_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.extdireccion_tipo_direccion DROP CONSTRAINT extdireccion_tipo_direccion_pkey;
       test_distinct_geoms         postgres    false    2700            �6           2606    729792     extinteresado extinteresado_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.extinteresado
    ADD CONSTRAINT extinteresado_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.extinteresado DROP CONSTRAINT extinteresado_pkey;
       test_distinct_geoms         postgres    false    2563            �6           2606    729801 0   extredserviciosfisica extredserviciosfisica_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.extredserviciosfisica
    ADD CONSTRAINT extredserviciosfisica_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.extredserviciosfisica DROP CONSTRAINT extredserviciosfisica_pkey;
       test_distinct_geoms         postgres    false    2564            �6           2606    729774 :   extunidadedificacionfisica extunidadedificacionfisica_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extunidadedificacionfisica
    ADD CONSTRAINT extunidadedificacionfisica_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.extunidadedificacionfisica DROP CONSTRAINT extunidadedificacionfisica_pkey;
       test_distinct_geoms         postgres    false    2561            �6           2606    729753    fraccion fraccion_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_distinct_geoms.fraccion
    ADD CONSTRAINT fraccion_pkey PRIMARY KEY (t_id);
 M   ALTER TABLE ONLY test_distinct_geoms.fraccion DROP CONSTRAINT fraccion_pkey;
       test_distinct_geoms         postgres    false    2559            S7           2606    730026    gc_barrio gc_barrio_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_distinct_geoms.gc_barrio
    ADD CONSTRAINT gc_barrio_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_distinct_geoms.gc_barrio DROP CONSTRAINT gc_barrio_pkey;
       test_distinct_geoms         postgres    false    2588            U7           2606    730036 H   gc_calificacionunidadconstruccion gc_calificacionunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacionunidadconstruccion_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_distinct_geoms.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacionunidadconstruccion_pkey;
       test_distinct_geoms         postgres    false    2589            Y7           2606    730046 8   gc_comisionesconstruccion gc_comisionesconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesconstruccion
    ADD CONSTRAINT gc_comisionesconstruccion_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesconstruccion DROP CONSTRAINT gc_comisionesconstruccion_pkey;
       test_distinct_geoms         postgres    false    2590            \7           2606    730056 .   gc_comisionesterreno gc_comisionesterreno_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesterreno
    ADD CONSTRAINT gc_comisionesterreno_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesterreno DROP CONSTRAINT gc_comisionesterreno_pkey;
       test_distinct_geoms         postgres    false    2591            _7           2606    730066 D   gc_comisionesunidadconstruccion gc_comisionesunidadconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesunidadconstruccion
    ADD CONSTRAINT gc_comisionesunidadconstruccion_pkey PRIMARY KEY (t_id);
 {   ALTER TABLE ONLY test_distinct_geoms.gc_comisionesunidadconstruccion DROP CONSTRAINT gc_comisionesunidadconstruccion_pkey;
       test_distinct_geoms         postgres    false    2592            �8           2606    731123 2   gc_condicionprediotipo gc_condicionprediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.gc_condicionprediotipo
    ADD CONSTRAINT gc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.gc_condicionprediotipo DROP CONSTRAINT gc_condicionprediotipo_pkey;
       test_distinct_geoms         postgres    false    2698            c7           2606    730076 $   gc_construccion gc_construccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.gc_construccion
    ADD CONSTRAINT gc_construccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.gc_construccion DROP CONSTRAINT gc_construccion_pkey;
       test_distinct_geoms         postgres    false    2593            �7           2606    730211 "   gc_copropiedad gc_copropiedad_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad DROP CONSTRAINT gc_copropiedad_pkey;
       test_distinct_geoms         postgres    false    2607            g7           2606    730085 .   gc_datosphcondominio gc_datosphcondominio_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_distinct_geoms.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_distinct_geoms.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_pkey;
       test_distinct_geoms         postgres    false    2594            j7           2606    730092 $   gc_datostorreph gc_datostorreph_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.gc_datostorreph DROP CONSTRAINT gc_datostorreph_pkey;
       test_distinct_geoms         postgres    false    2595            n7           2606    730102    gc_direccion gc_direccion_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.gc_direccion
    ADD CONSTRAINT gc_direccion_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.gc_direccion DROP CONSTRAINT gc_direccion_pkey;
       test_distinct_geoms         postgres    false    2596            q7           2606    730110 $   gc_estadopredio gc_estadopredio_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.gc_estadopredio DROP CONSTRAINT gc_estadopredio_pkey;
       test_distinct_geoms         postgres    false    2597            t7           2606    730120    gc_manzana gc_manzana_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.gc_manzana
    ADD CONSTRAINT gc_manzana_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.gc_manzana DROP CONSTRAINT gc_manzana_pkey;
       test_distinct_geoms         postgres    false    2598            w7           2606    730130    gc_perimetro gc_perimetro_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.gc_perimetro
    ADD CONSTRAINT gc_perimetro_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.gc_perimetro DROP CONSTRAINT gc_perimetro_pkey;
       test_distinct_geoms         postgres    false    2599            �7           2606    730203 (   gc_prediocatastro gc_prediocatastro_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_pkey;
       test_distinct_geoms         postgres    false    2606            z7           2606    730140 "   gc_propietario gc_propietario_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.gc_propietario
    ADD CONSTRAINT gc_propietario_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.gc_propietario DROP CONSTRAINT gc_propietario_pkey;
       test_distinct_geoms         postgres    false    2600            }7           2606    730150 "   gc_sectorrural gc_sectorrural_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.gc_sectorrural
    ADD CONSTRAINT gc_sectorrural_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.gc_sectorrural DROP CONSTRAINT gc_sectorrural_pkey;
       test_distinct_geoms         postgres    false    2601            �7           2606    730160 $   gc_sectorurbano gc_sectorurbano_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.gc_sectorurbano
    ADD CONSTRAINT gc_sectorurbano_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.gc_sectorurbano DROP CONSTRAINT gc_sectorurbano_pkey;
       test_distinct_geoms         postgres    false    2602            �8           2606    730898 B   gc_sistemaprocedenciadatostipo gc_sistemaprocedenciadatostipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_sistemaprocedenciadatostipo
    ADD CONSTRAINT gc_sistemaprocedenciadatostipo_pkey PRIMARY KEY (t_id);
 y   ALTER TABLE ONLY test_distinct_geoms.gc_sistemaprocedenciadatostipo DROP CONSTRAINT gc_sistemaprocedenciadatostipo_pkey;
       test_distinct_geoms         postgres    false    2673            �7           2606    730170    gc_terreno gc_terreno_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.gc_terreno
    ADD CONSTRAINT gc_terreno_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.gc_terreno DROP CONSTRAINT gc_terreno_pkey;
       test_distinct_geoms         postgres    false    2603            �7           2606    730181 0   gc_unidadconstruccion gc_unidadconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_pkey;
       test_distinct_geoms         postgres    false    2604            u8           2606    730772 8   gc_unidadconstrucciontipo gc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstrucciontipo
    ADD CONSTRAINT gc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstrucciontipo DROP CONSTRAINT gc_unidadconstrucciontipo_pkey;
       test_distinct_geoms         postgres    false    2659            �7           2606    730193    gc_vereda gc_vereda_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_distinct_geoms.gc_vereda
    ADD CONSTRAINT gc_vereda_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_distinct_geoms.gc_vereda DROP CONSTRAINT gc_vereda_pkey;
       test_distinct_geoms         postgres    false    2605            �6           2606    729688 (   gm_multisurface2d gm_multisurface2d_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.gm_multisurface2d
    ADD CONSTRAINT gm_multisurface2d_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.gm_multisurface2d DROP CONSTRAINT gm_multisurface2d_pkey;
       test_distinct_geoms         postgres    false    2553            �6           2606    729705 (   gm_multisurface3d gm_multisurface3d_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.gm_multisurface3d
    ADD CONSTRAINT gm_multisurface3d_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.gm_multisurface3d DROP CONSTRAINT gm_multisurface3d_pkey;
       test_distinct_geoms         postgres    false    2555            �6           2606    729680 0   gm_surface2dlistvalue gm_surface2dlistvalue_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_pkey;
       test_distinct_geoms         postgres    false    2552            �6           2606    729697 0   gm_surface3dlistvalue gm_surface3dlistvalue_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_pkey;
       test_distinct_geoms         postgres    false    2554            �6           2606    729780    imagen imagen_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY test_distinct_geoms.imagen
    ADD CONSTRAINT imagen_pkey PRIMARY KEY (t_id);
 I   ALTER TABLE ONLY test_distinct_geoms.imagen DROP CONSTRAINT imagen_pkey;
       test_distinct_geoms         postgres    false    2562            8           2606    730817 2   ini_emparejamientotipo ini_emparejamientotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.ini_emparejamientotipo
    ADD CONSTRAINT ini_emparejamientotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.ini_emparejamientotipo DROP CONSTRAINT ini_emparejamientotipo_pkey;
       test_distinct_geoms         postgres    false    2664            �7           2606    730288 (   ini_predioinsumos ini_predioinsumos_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_pkey;
       test_distinct_geoms         postgres    false    2615            �8           2606    731105 "   lc_acuerdotipo lc_acuerdotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.lc_acuerdotipo
    ADD CONSTRAINT lc_acuerdotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.lc_acuerdotipo DROP CONSTRAINT lc_acuerdotipo_pkey;
       test_distinct_geoms         postgres    false    2696            �7           2606    730301 6   lc_agrupacioninteresados lc_agrupacioninteresados_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_pkey;
       test_distinct_geoms         postgres    false    2616            �8           2606    731114    lc_anexotipo lc_anexotipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.lc_anexotipo
    ADD CONSTRAINT lc_anexotipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.lc_anexotipo DROP CONSTRAINT lc_anexotipo_pkey;
       test_distinct_geoms         postgres    false    2697             8           2606    730542 <   lc_calificacionconvencional lc_calificacionconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencional_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencional_pkey;
       test_distinct_geoms         postgres    false    2636            "8           2606    730551 @   lc_calificacionnoconvencional lc_calificacionnoconvencional_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvencional_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvencional_pkey;
       test_distinct_geoms         postgres    false    2637            �8           2606    731204 &   lc_calificartipo lc_calificartipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.lc_calificartipo
    ADD CONSTRAINT lc_calificartipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.lc_calificartipo DROP CONSTRAINT lc_calificartipo_pkey;
       test_distinct_geoms         postgres    false    2707            }8           2606    730808 0   lc_categoriasuelotipo lc_categoriasuelotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_categoriasuelotipo
    ADD CONSTRAINT lc_categoriasuelotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_categoriasuelotipo DROP CONSTRAINT lc_categoriasuelotipo_pkey;
       test_distinct_geoms         postgres    false    2663            �8           2606    731240 6   lc_clasecalificaciontipo lc_clasecalificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_clasecalificaciontipo
    ADD CONSTRAINT lc_clasecalificaciontipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.lc_clasecalificaciontipo DROP CONSTRAINT lc_clasecalificaciontipo_pkey;
       test_distinct_geoms         postgres    false    2711            �8           2606    730889 (   lc_clasesuelotipo lc_clasesuelotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.lc_clasesuelotipo
    ADD CONSTRAINT lc_clasesuelotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.lc_clasesuelotipo DROP CONSTRAINT lc_clasesuelotipo_pkey;
       test_distinct_geoms         postgres    false    2672            �8           2606    731249 2   lc_condicionprediotipo lc_condicionprediotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.lc_condicionprediotipo
    ADD CONSTRAINT lc_condicionprediotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.lc_condicionprediotipo DROP CONSTRAINT lc_condicionprediotipo_pkey;
       test_distinct_geoms         postgres    false    2712            �7           2606    730312 $   lc_construccion lc_construccion_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.lc_construccion
    ADD CONSTRAINT lc_construccion_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.lc_construccion DROP CONSTRAINT lc_construccion_pkey;
       test_distinct_geoms         postgres    false    2617            �8           2606    731006 8   lc_construccionplantatipo lc_construccionplantatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_construccionplantatipo
    ADD CONSTRAINT lc_construccionplantatipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.lc_construccionplantatipo DROP CONSTRAINT lc_construccionplantatipo_pkey;
       test_distinct_geoms         postgres    false    2685            �8           2606    731222 ,   lc_construcciontipo lc_construcciontipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_distinct_geoms.lc_construcciontipo
    ADD CONSTRAINT lc_construcciontipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_distinct_geoms.lc_construcciontipo DROP CONSTRAINT lc_construcciontipo_pkey;
       test_distinct_geoms         postgres    false    2709            �7           2606    730327 (   lc_contactovisita lc_contactovisita_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita DROP CONSTRAINT lc_contactovisita_pkey;
       test_distinct_geoms         postgres    false    2618            &8           2606    730563 X   lc_datosadicionaleslevantamientocatastral lc_datosadicionaleslevantamientocatastral_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datosadicionaleslevantamientocatastral_pkey;
       test_distinct_geoms         postgres    false    2638            �7           2606    730337 .   lc_datosphcondominio lc_datosphcondominio_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_distinct_geoms.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_distinct_geoms.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_pkey;
       test_distinct_geoms         postgres    false    2619            �7           2606    730348    lc_derecho lc_derecho_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.lc_derecho
    ADD CONSTRAINT lc_derecho_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.lc_derecho DROP CONSTRAINT lc_derecho_pkey;
       test_distinct_geoms         postgres    false    2620            �8           2606    730862 "   lc_derechotipo lc_derechotipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.lc_derechotipo
    ADD CONSTRAINT lc_derechotipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.lc_derechotipo DROP CONSTRAINT lc_derechotipo_pkey;
       test_distinct_geoms         postgres    false    2669            w8           2606    730781 <   lc_destinacioneconomicatipo lc_destinacioneconomicatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_destinacioneconomicatipo
    ADD CONSTRAINT lc_destinacioneconomicatipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.lc_destinacioneconomicatipo DROP CONSTRAINT lc_destinacioneconomicatipo_pkey;
       test_distinct_geoms         postgres    false    2660            �8           2606    731177 :   lc_dominioconstrucciontipo lc_dominioconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_dominioconstrucciontipo
    ADD CONSTRAINT lc_dominioconstrucciontipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.lc_dominioconstrucciontipo DROP CONSTRAINT lc_dominioconstrucciontipo_pkey;
       test_distinct_geoms         postgres    false    2704            �8           2606    731294 8   lc_estadoconservaciontipo lc_estadoconservaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_estadoconservaciontipo
    ADD CONSTRAINT lc_estadoconservaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.lc_estadoconservaciontipo DROP CONSTRAINT lc_estadoconservaciontipo_pkey;
       test_distinct_geoms         postgres    false    2717            �7           2606    730358 4   lc_estructuranovedadfmi lc_estructuranovedadfmi_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_pkey;
       test_distinct_geoms         postgres    false    2621            �7           2606    730365 H   lc_estructuranovedadnumeropredial lc_estructuranovedadnumeropredial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_pkey PRIMARY KEY (t_id);
    ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranovedadnumeropredial_pkey;
       test_distinct_geoms         postgres    false    2622            g8           2606    730709 b   lc_estructuranovedadnumeropredial_tipo_novedad lc_estructuranovedadnumeropredial_tipo_novedad_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad
    ADD CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad DROP CONSTRAINT lc_estructuranovedadnumeropredial_tipo_novedad_pkey;
       test_distinct_geoms         postgres    false    2652            �8           2606    730835 8   lc_fotoidentificaciontipo lc_fotoidentificaciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fotoidentificaciontipo
    ADD CONSTRAINT lc_fotoidentificaciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.lc_fotoidentificaciontipo DROP CONSTRAINT lc_fotoidentificaciontipo_pkey;
       test_distinct_geoms         postgres    false    2666            �7           2606    730377 4   lc_fuenteadministrativa lc_fuenteadministrativa_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_pkey PRIMARY KEY (t_id);
 k   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_pkey;
       test_distinct_geoms         postgres    false    2623            �8           2606    731150 <   lc_fuenteadministrativatipo lc_fuenteadministrativatipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativatipo
    ADD CONSTRAINT lc_fuenteadministrativatipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativatipo DROP CONSTRAINT lc_fuenteadministrativatipo_pkey;
       test_distinct_geoms         postgres    false    2701            �7           2606    730390 (   lc_fuenteespacial lc_fuenteespacial_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_pkey;
       test_distinct_geoms         postgres    false    2624            �7           2606    730400 .   lc_grupocalificacion lc_grupocalificacion_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_pkey PRIMARY KEY (t_id);
 e   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_pkey;
       test_distinct_geoms         postgres    false    2625            �8           2606    730853 *   lc_grupoetnicotipo lc_grupoetnicotipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.lc_grupoetnicotipo
    ADD CONSTRAINT lc_grupoetnicotipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.lc_grupoetnicotipo DROP CONSTRAINT lc_grupoetnicotipo_pkey;
       test_distinct_geoms         postgres    false    2668            �7           2606    730413     lc_interesado lc_interesado_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.lc_interesado
    ADD CONSTRAINT lc_interesado_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.lc_interesado DROP CONSTRAINT lc_interesado_pkey;
       test_distinct_geoms         postgres    false    2626            �7           2606    730427 0   lc_interesadocontacto lc_interesadocontacto_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_pkey;
       test_distinct_geoms         postgres    false    2627            �8           2606    731051 :   lc_interesadodocumentotipo lc_interesadodocumentotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesadodocumentotipo
    ADD CONSTRAINT lc_interesadodocumentotipo_pkey PRIMARY KEY (t_id);
 q   ALTER TABLE ONLY test_distinct_geoms.lc_interesadodocumentotipo DROP CONSTRAINT lc_interesadodocumentotipo_pkey;
       test_distinct_geoms         postgres    false    2690            �8           2606    730934 (   lc_interesadotipo lc_interesadotipo_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.lc_interesadotipo
    ADD CONSTRAINT lc_interesadotipo_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.lc_interesadotipo DROP CONSTRAINT lc_interesadotipo_pkey;
       test_distinct_geoms         postgres    false    2677            �7           2606    730438    lc_lindero lc_lindero_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.lc_lindero
    ADD CONSTRAINT lc_lindero_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.lc_lindero DROP CONSTRAINT lc_lindero_pkey;
       test_distinct_geoms         postgres    false    2628            �7           2606    730446 0   lc_objetoconstruccion lc_objetoconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_pkey;
       test_distinct_geoms         postgres    false    2629            �8           2606    731285 8   lc_objetoconstrucciontipo lc_objetoconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstrucciontipo
    ADD CONSTRAINT lc_objetoconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstrucciontipo DROP CONSTRAINT lc_objetoconstrucciontipo_pkey;
       test_distinct_geoms         postgres    false    2716            �7           2606    730455 @   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmobiliario_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmobiliario_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmobiliario_pkey;
       test_distinct_geoms         postgres    false    2630            s8           2606    730763     lc_ofertatipo lc_ofertatipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.lc_ofertatipo
    ADD CONSTRAINT lc_ofertatipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.lc_ofertatipo DROP CONSTRAINT lc_ofertatipo_pkey;
       test_distinct_geoms         postgres    false    2658            @8           2606    730605 0   lc_predio_copropiedad lc_predio_copropiedad_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_pkey;
       test_distinct_geoms         postgres    false    2641            F8           2606    730613 <   lc_predio_ini_predioinsumos lc_predio_ini_predioinsumos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsumos_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsumos_pkey;
       test_distinct_geoms         postgres    false    2642            �7           2606    730467    lc_predio lc_predio_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY test_distinct_geoms.lc_predio
    ADD CONSTRAINT lc_predio_pkey PRIMARY KEY (t_id);
 O   ALTER TABLE ONLY test_distinct_geoms.lc_predio DROP CONSTRAINT lc_predio_pkey;
       test_distinct_geoms         postgres    false    2631            �8           2606    731060     lc_prediotipo lc_prediotipo_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY test_distinct_geoms.lc_prediotipo
    ADD CONSTRAINT lc_prediotipo_pkey PRIMARY KEY (t_id);
 W   ALTER TABLE ONLY test_distinct_geoms.lc_prediotipo DROP CONSTRAINT lc_prediotipo_pkey;
       test_distinct_geoms         postgres    false    2691            �8           2606    730880 R   lc_procedimientocatastralregistraltipo lc_procedimientocatastralregistraltipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_procedimientocatastralregistraltipo
    ADD CONSTRAINT lc_procedimientocatastralregistraltipo_pkey PRIMARY KEY (t_id);
 �   ALTER TABLE ONLY test_distinct_geoms.lc_procedimientocatastralregistraltipo DROP CONSTRAINT lc_procedimientocatastralregistraltipo_pkey;
       test_distinct_geoms         postgres    false    2671            �7           2606    730479 $   lc_puntocontrol lc_puntocontrol_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_pkey;
       test_distinct_geoms         postgres    false    2632            �8           2606    731213 ,   lc_puntocontroltipo lc_puntocontroltipo_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontroltipo
    ADD CONSTRAINT lc_puntocontroltipo_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontroltipo DROP CONSTRAINT lc_puntocontroltipo_pkey;
       test_distinct_geoms         postgres    false    2708            28           2606    730580 0   lc_puntolevantamiento lc_puntolevantamiento_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_pkey;
       test_distinct_geoms         postgres    false    2639            �8           2606    731096 $   lc_puntolevtipo lc_puntolevtipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevtipo
    ADD CONSTRAINT lc_puntolevtipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevtipo DROP CONSTRAINT lc_puntolevtipo_pkey;
       test_distinct_geoms         postgres    false    2695            8           2606    730498 $   lc_puntolindero lc_puntolindero_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_pkey;
       test_distinct_geoms         postgres    false    2633            �8           2606    730997    lc_puntotipo lc_puntotipo_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY test_distinct_geoms.lc_puntotipo
    ADD CONSTRAINT lc_puntotipo_pkey PRIMARY KEY (t_id);
 U   ALTER TABLE ONLY test_distinct_geoms.lc_puntotipo DROP CONSTRAINT lc_puntotipo_pkey;
       test_distinct_geoms         postgres    false    2684            �8           2606    730907 0   lc_relacionprediotipo lc_relacionprediotipo_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_relacionprediotipo
    ADD CONSTRAINT lc_relacionprediotipo_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_relacionprediotipo DROP CONSTRAINT lc_relacionprediotipo_pkey;
       test_distinct_geoms         postgres    false    2674            8           2606    730518 "   lc_restriccion lc_restriccion_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion
    ADD CONSTRAINT lc_restriccion_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion DROP CONSTRAINT lc_restriccion_pkey;
       test_distinct_geoms         postgres    false    2634            �8           2606    731078 *   lc_restricciontipo lc_restricciontipo_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.lc_restricciontipo
    ADD CONSTRAINT lc_restricciontipo_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.lc_restricciontipo DROP CONSTRAINT lc_restricciontipo_pkey;
       test_distinct_geoms         postgres    false    2693            �8           2606    730943 2   lc_resultadovisitatipo lc_resultadovisitatipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.lc_resultadovisitatipo
    ADD CONSTRAINT lc_resultadovisitatipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.lc_resultadovisitatipo DROP CONSTRAINT lc_resultadovisitatipo_pkey;
       test_distinct_geoms         postgres    false    2678            J8           2606    730625 2   lc_servidumbretransito lc_servidumbretransito_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_pkey;
       test_distinct_geoms         postgres    false    2643            �8           2606    730988    lc_sexotipo lc_sexotipo_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_distinct_geoms.lc_sexotipo
    ADD CONSTRAINT lc_sexotipo_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_distinct_geoms.lc_sexotipo DROP CONSTRAINT lc_sexotipo_pkey;
       test_distinct_geoms         postgres    false    2683            8           2606    730532    lc_terreno lc_terreno_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.lc_terreno
    ADD CONSTRAINT lc_terreno_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.lc_terreno DROP CONSTRAINT lc_terreno_pkey;
       test_distinct_geoms         postgres    false    2635            <8           2606    730597 6   lc_tipologiaconstruccion lc_tipologiaconstruccion_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_pkey;
       test_distinct_geoms         postgres    false    2640            �8           2606    731168 &   lc_tipologiatipo lc_tipologiatipo_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiatipo
    ADD CONSTRAINT lc_tipologiatipo_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiatipo DROP CONSTRAINT lc_tipologiatipo_pkey;
       test_distinct_geoms         postgres    false    2703            P8           2606    730638 0   lc_unidadconstruccion lc_unidadconstruccion_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_pkey PRIMARY KEY (t_id);
 g   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_pkey;
       test_distinct_geoms         postgres    false    2644            �8           2606    731024 8   lc_unidadconstrucciontipo lc_unidadconstrucciontipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstrucciontipo
    ADD CONSTRAINT lc_unidadconstrucciontipo_pkey PRIMARY KEY (t_id);
 o   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstrucciontipo DROP CONSTRAINT lc_unidadconstrucciontipo_pkey;
       test_distinct_geoms         postgres    false    2687            �8           2606    731132 $   lc_usouconstipo lc_usouconstipo_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.lc_usouconstipo
    ADD CONSTRAINT lc_usouconstipo_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.lc_usouconstipo DROP CONSTRAINT lc_usouconstipo_pkey;
       test_distinct_geoms         postgres    false    2699            y8           2606    730790    lc_viatipo lc_viatipo_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY test_distinct_geoms.lc_viatipo
    ADD CONSTRAINT lc_viatipo_pkey PRIMARY KEY (t_id);
 Q   ALTER TABLE ONLY test_distinct_geoms.lc_viatipo DROP CONSTRAINT lc_viatipo_pkey;
       test_distinct_geoms         postgres    false    2661            �8           2606    737522    points_m points_m_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_distinct_geoms.points_m
    ADD CONSTRAINT points_m_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY test_distinct_geoms.points_m DROP CONSTRAINT points_m_pkey;
       test_distinct_geoms         postgres    false    2726            �8           2606    737511    points points_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY test_distinct_geoms.points
    ADD CONSTRAINT points_pkey PRIMARY KEY (id);
 I   ALTER TABLE ONLY test_distinct_geoms.points DROP CONSTRAINT points_pkey;
       test_distinct_geoms         postgres    false    2724            �8           2606    737533    points_z points_z_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY test_distinct_geoms.points_z
    ADD CONSTRAINT points_z_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY test_distinct_geoms.points_z DROP CONSTRAINT points_z_pkey;
       test_distinct_geoms         postgres    false    2728            �8           2606    737544    points_zm points_zm_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY test_distinct_geoms.points_zm
    ADD CONSTRAINT points_zm_pkey PRIMARY KEY (id);
 O   ALTER TABLE ONLY test_distinct_geoms.points_zm DROP CONSTRAINT points_zm_pkey;
       test_distinct_geoms         postgres    false    2730            �8           2606    731159 2   snr_calidadderechotipo snr_calidadderechotipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.snr_calidadderechotipo
    ADD CONSTRAINT snr_calidadderechotipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.snr_calidadderechotipo DROP CONSTRAINT snr_calidadderechotipo_pkey;
       test_distinct_geoms         postgres    false    2702            �8           2606    731195 <   snr_clasepredioregistrotipo snr_clasepredioregistrotipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_clasepredioregistrotipo
    ADD CONSTRAINT snr_clasepredioregistrotipo_pkey PRIMARY KEY (t_id);
 s   ALTER TABLE ONLY test_distinct_geoms.snr_clasepredioregistrotipo DROP CONSTRAINT snr_clasepredioregistrotipo_pkey;
       test_distinct_geoms         postgres    false    2706            �7           2606    730219    snr_derecho snr_derecho_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_distinct_geoms.snr_derecho
    ADD CONSTRAINT snr_derecho_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_distinct_geoms.snr_derecho DROP CONSTRAINT snr_derecho_pkey;
       test_distinct_geoms         postgres    false    2608            �8           2606    731267 6   snr_documentotitulartipo snr_documentotitulartipo_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_documentotitulartipo
    ADD CONSTRAINT snr_documentotitulartipo_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.snr_documentotitulartipo DROP CONSTRAINT snr_documentotitulartipo_pkey;
       test_distinct_geoms         postgres    false    2714            �7           2606    730228 @   snr_estructuramatriculamatriz snr_estructuramatriculamatriz_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriculamatriz_pkey PRIMARY KEY (t_id);
 w   ALTER TABLE ONLY test_distinct_geoms.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriculamatriz_pkey;
       test_distinct_geoms         postgres    false    2609            �7           2606    730238 6   snr_fuentecabidalinderos snr_fuentecabidalinderos_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_pkey PRIMARY KEY (t_id);
 m   ALTER TABLE ONLY test_distinct_geoms.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_pkey;
       test_distinct_geoms         postgres    false    2610            �7           2606    730248 (   snr_fuentederecho snr_fuentederecho_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY test_distinct_geoms.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_pkey PRIMARY KEY (t_id);
 _   ALTER TABLE ONLY test_distinct_geoms.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_pkey;
       test_distinct_geoms         postgres    false    2611            k8           2606    730727 "   snr_fuentetipo snr_fuentetipo_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY test_distinct_geoms.snr_fuentetipo
    ADD CONSTRAINT snr_fuentetipo_pkey PRIMARY KEY (t_id);
 Y   ALTER TABLE ONLY test_distinct_geoms.snr_fuentetipo DROP CONSTRAINT snr_fuentetipo_pkey;
       test_distinct_geoms         postgres    false    2654            m8           2606    730736 2   snr_personatitulartipo snr_personatitulartipo_pkey 
   CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.snr_personatitulartipo
    ADD CONSTRAINT snr_personatitulartipo_pkey PRIMARY KEY (t_id);
 i   ALTER TABLE ONLY test_distinct_geoms.snr_personatitulartipo DROP CONSTRAINT snr_personatitulartipo_pkey;
       test_distinct_geoms         postgres    false    2655            �7           2606    730269 *   snr_predioregistro snr_predioregistro_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_pkey PRIMARY KEY (t_id);
 a   ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro DROP CONSTRAINT snr_predioregistro_pkey;
       test_distinct_geoms         postgres    false    2613            �7           2606    730277 ,   snr_titular_derecho snr_titular_derecho_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_pkey PRIMARY KEY (t_id);
 c   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_pkey;
       test_distinct_geoms         postgres    false    2614            �7           2606    730258    snr_titular snr_titular_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY test_distinct_geoms.snr_titular
    ADD CONSTRAINT snr_titular_pkey PRIMARY KEY (t_id);
 S   ALTER TABLE ONLY test_distinct_geoms.snr_titular DROP CONSTRAINT snr_titular_pkey;
       test_distinct_geoms         postgres    false    2612            �8           2606    731310 (   t_ili2db_attrname t_ili2db_attrname_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_attrname
    ADD CONSTRAINT t_ili2db_attrname_pkey PRIMARY KEY (colowner, sqlname);
 _   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_attrname DROP CONSTRAINT t_ili2db_attrname_pkey;
       test_distinct_geoms         postgres    false    2719    2719            Y8           2606    730655 $   t_ili2db_basket t_ili2db_basket_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_pkey PRIMARY KEY (t_id);
 [   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_pkey;
       test_distinct_geoms         postgres    false    2645            �8           2606    731302 *   t_ili2db_classname t_ili2db_classname_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_classname
    ADD CONSTRAINT t_ili2db_classname_pkey PRIMARY KEY (iliname);
 a   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_classname DROP CONSTRAINT t_ili2db_classname_pkey;
       test_distinct_geoms         postgres    false    2718            \8           2606    730661 &   t_ili2db_dataset t_ili2db_dataset_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_dataset
    ADD CONSTRAINT t_ili2db_dataset_pkey PRIMARY KEY (t_id);
 ]   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_dataset DROP CONSTRAINT t_ili2db_dataset_pkey;
       test_distinct_geoms         postgres    false    2646            ^8           2606    730669 .   t_ili2db_inheritance t_ili2db_inheritance_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_inheritance
    ADD CONSTRAINT t_ili2db_inheritance_pkey PRIMARY KEY (thisclass);
 e   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_inheritance DROP CONSTRAINT t_ili2db_inheritance_pkey;
       test_distinct_geoms         postgres    false    2647            c8           2606    730691 "   t_ili2db_model t_ili2db_model_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_model
    ADD CONSTRAINT t_ili2db_model_pkey PRIMARY KEY (iliversion, modelname);
 Y   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_model DROP CONSTRAINT t_ili2db_model_pkey;
       test_distinct_geoms         postgres    false    2650    2650            `8           2606    730677 (   t_ili2db_settings t_ili2db_settings_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_settings
    ADD CONSTRAINT t_ili2db_settings_pkey PRIMARY KEY (tag);
 _   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_settings DROP CONSTRAINT t_ili2db_settings_pkey;
       test_distinct_geoms         postgres    false    2648            �6           1259    729712 1   cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx    INDEX     �   CREATE INDEX cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx ON test_distinct_geoms.cc_metodooperacion USING btree (col_transformacion_transformacion);
 R   DROP INDEX test_distinct_geoms.cc_metodooperacion_col_transfrmcn_trnsfrmcion_idx;
       test_distinct_geoms         postgres    false    2556            �6           1259    729723 &   col_areavalor_lc_construccion_area_idx    INDEX     }   CREATE INDEX col_areavalor_lc_construccion_area_idx ON test_distinct_geoms.col_areavalor USING btree (lc_construccion_area);
 G   DROP INDEX test_distinct_geoms.col_areavalor_lc_construccion_area_idx;
       test_distinct_geoms         postgres    false    2557            �6           1259    729725 ,   col_areavalor_lc_servidumbretransito_rea_idx    INDEX     �   CREATE INDEX col_areavalor_lc_servidumbretransito_rea_idx ON test_distinct_geoms.col_areavalor USING btree (lc_servidumbretransito_area);
 M   DROP INDEX test_distinct_geoms.col_areavalor_lc_servidumbretransito_rea_idx;
       test_distinct_geoms         postgres    false    2557            �6           1259    729724 !   col_areavalor_lc_terreno_area_idx    INDEX     s   CREATE INDEX col_areavalor_lc_terreno_area_idx ON test_distinct_geoms.col_areavalor USING btree (lc_terreno_area);
 B   DROP INDEX test_distinct_geoms.col_areavalor_lc_terreno_area_idx;
       test_distinct_geoms         postgres    false    2557            �6           1259    729726 ,   col_areavalor_lc_unidadconstruccion_area_idx    INDEX     �   CREATE INDEX col_areavalor_lc_unidadconstruccion_area_idx ON test_distinct_geoms.col_areavalor USING btree (lc_unidadconstruccion_area);
 M   DROP INDEX test_distinct_geoms.col_areavalor_lc_unidadconstruccion_area_idx;
       test_distinct_geoms         postgres    false    2557            �6           1259    729722    col_areavalor_tipo_idx    INDEX     ]   CREATE INDEX col_areavalor_tipo_idx ON test_distinct_geoms.col_areavalor USING btree (tipo);
 7   DROP INDEX test_distinct_geoms.col_areavalor_tipo_idx;
       test_distinct_geoms         postgres    false    2557            =7           1259    729989 7   col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx ON test_distinct_geoms.col_baunitcomointeresado USING btree (interesado_lc_agrupacioninteresados);
 X   DROP INDEX test_distinct_geoms.col_baunitcomointeresado_interesado_lc_grpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2584            >7           1259    729988 5   col_baunitcomointeresado_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_baunitcomointeresado_interesado_lc_interesado_idx ON test_distinct_geoms.col_baunitcomointeresado USING btree (interesado_lc_interesado);
 V   DROP INDEX test_distinct_geoms.col_baunitcomointeresado_interesado_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2584            A7           1259    729990 #   col_baunitcomointeresado_unidad_idx    INDEX     w   CREATE INDEX col_baunitcomointeresado_unidad_idx ON test_distinct_geoms.col_baunitcomointeresado USING btree (unidad);
 D   DROP INDEX test_distinct_geoms.col_baunitcomointeresado_unidad_idx;
       test_distinct_geoms         postgres    false    2584            
7           1259    729897 $   col_baunitfuente_fuente_espacial_idx    INDEX     y   CREATE INDEX col_baunitfuente_fuente_espacial_idx ON test_distinct_geoms.col_baunitfuente USING btree (fuente_espacial);
 E   DROP INDEX test_distinct_geoms.col_baunitfuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2574            7           1259    729898    col_baunitfuente_unidad_idx    INDEX     g   CREATE INDEX col_baunitfuente_unidad_idx ON test_distinct_geoms.col_baunitfuente USING btree (unidad);
 <   DROP INDEX test_distinct_geoms.col_baunitfuente_unidad_idx;
       test_distinct_geoms         postgres    false    2574            7           1259    729912    col_cclfuente_ccl_idx    INDEX     [   CREATE INDEX col_cclfuente_ccl_idx ON test_distinct_geoms.col_cclfuente USING btree (ccl);
 6   DROP INDEX test_distinct_geoms.col_cclfuente_ccl_idx;
       test_distinct_geoms         postgres    false    2576            7           1259    729913 !   col_cclfuente_fuente_espacial_idx    INDEX     s   CREATE INDEX col_cclfuente_fuente_espacial_idx ON test_distinct_geoms.col_cclfuente USING btree (fuente_espacial);
 B   DROP INDEX test_distinct_geoms.col_cclfuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2576            )7           1259    729952     col_clfuente_fuente_espacial_idx    INDEX     q   CREATE INDEX col_clfuente_fuente_espacial_idx ON test_distinct_geoms.col_clfuente USING btree (fuente_espacial);
 A   DROP INDEX test_distinct_geoms.col_clfuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2580            7           1259    729931    col_masccl_ccl_mas_idx    INDEX     ]   CREATE INDEX col_masccl_ccl_mas_idx ON test_distinct_geoms.col_masccl USING btree (ccl_mas);
 7   DROP INDEX test_distinct_geoms.col_masccl_ccl_mas_idx;
       test_distinct_geoms         postgres    false    2578            7           1259    729932 %   col_masccl_ue_mas_lc_construccion_idx    INDEX     {   CREATE INDEX col_masccl_ue_mas_lc_construccion_idx ON test_distinct_geoms.col_masccl USING btree (ue_mas_lc_construccion);
 F   DROP INDEX test_distinct_geoms.col_masccl_ue_mas_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2578             7           1259    729934 )   col_masccl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_servidmbrtrnsito_idx ON test_distinct_geoms.col_masccl USING btree (ue_mas_lc_servidumbretransito);
 J   DROP INDEX test_distinct_geoms.col_masccl_ue_mas_lc_servidmbrtrnsito_idx;
       test_distinct_geoms         postgres    false    2578            !7           1259    729933     col_masccl_ue_mas_lc_terreno_idx    INDEX     q   CREATE INDEX col_masccl_ue_mas_lc_terreno_idx ON test_distinct_geoms.col_masccl USING btree (ue_mas_lc_terreno);
 A   DROP INDEX test_distinct_geoms.col_masccl_ue_mas_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2578            "7           1259    729935 )   col_masccl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_masccl_ue_mas_lc_unidadcnstrccion_idx ON test_distinct_geoms.col_masccl USING btree (ue_mas_lc_unidadconstruccion);
 J   DROP INDEX test_distinct_geoms.col_masccl_ue_mas_lc_unidadcnstrccion_idx;
       test_distinct_geoms         postgres    false    2578            47           1259    729969 $   col_mascl_ue_mas_lc_construccion_idx    INDEX     y   CREATE INDEX col_mascl_ue_mas_lc_construccion_idx ON test_distinct_geoms.col_mascl USING btree (ue_mas_lc_construccion);
 E   DROP INDEX test_distinct_geoms.col_mascl_ue_mas_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2582            57           1259    729971 (   col_mascl_ue_mas_lc_servidmbrtrnsito_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_servidmbrtrnsito_idx ON test_distinct_geoms.col_mascl USING btree (ue_mas_lc_servidumbretransito);
 I   DROP INDEX test_distinct_geoms.col_mascl_ue_mas_lc_servidmbrtrnsito_idx;
       test_distinct_geoms         postgres    false    2582            67           1259    729970    col_mascl_ue_mas_lc_terreno_idx    INDEX     o   CREATE INDEX col_mascl_ue_mas_lc_terreno_idx ON test_distinct_geoms.col_mascl USING btree (ue_mas_lc_terreno);
 @   DROP INDEX test_distinct_geoms.col_mascl_ue_mas_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2582            77           1259    729972 (   col_mascl_ue_mas_lc_unidadcnstrccion_idx    INDEX     �   CREATE INDEX col_mascl_ue_mas_lc_unidadcnstrccion_idx ON test_distinct_geoms.col_mascl USING btree (ue_mas_lc_unidadconstruccion);
 I   DROP INDEX test_distinct_geoms.col_mascl_ue_mas_lc_unidadcnstrccion_idx;
       test_distinct_geoms         postgres    false    2582            7           1259    729920    col_menosccl_ccl_menos_idx    INDEX     e   CREATE INDEX col_menosccl_ccl_menos_idx ON test_distinct_geoms.col_menosccl USING btree (ccl_menos);
 ;   DROP INDEX test_distinct_geoms.col_menosccl_ccl_menos_idx;
       test_distinct_geoms         postgres    false    2577            7           1259    729921 )   col_menosccl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_construccion_idx ON test_distinct_geoms.col_menosccl USING btree (ue_menos_lc_construccion);
 J   DROP INDEX test_distinct_geoms.col_menosccl_ue_menos_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2577            7           1259    729923 +   col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx ON test_distinct_geoms.col_menosccl USING btree (ue_menos_lc_servidumbretransito);
 L   DROP INDEX test_distinct_geoms.col_menosccl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_distinct_geoms         postgres    false    2577            7           1259    729922 $   col_menosccl_ue_menos_lc_terreno_idx    INDEX     y   CREATE INDEX col_menosccl_ue_menos_lc_terreno_idx ON test_distinct_geoms.col_menosccl USING btree (ue_menos_lc_terreno);
 E   DROP INDEX test_distinct_geoms.col_menosccl_ue_menos_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2577            7           1259    729924 +   col_menosccl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menosccl_ue_menos_lc_unddcnstrccion_idx ON test_distinct_geoms.col_menosccl USING btree (ue_menos_lc_unidadconstruccion);
 L   DROP INDEX test_distinct_geoms.col_menosccl_ue_menos_lc_unddcnstrccion_idx;
       test_distinct_geoms         postgres    false    2577            .7           1259    729959 (   col_menoscl_ue_menos_lc_construccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_construccion_idx ON test_distinct_geoms.col_menoscl USING btree (ue_menos_lc_construccion);
 I   DROP INDEX test_distinct_geoms.col_menoscl_ue_menos_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2581            /7           1259    729961 *   col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx ON test_distinct_geoms.col_menoscl USING btree (ue_menos_lc_servidumbretransito);
 K   DROP INDEX test_distinct_geoms.col_menoscl_ue_menos_lc_srvdmbrtrnsito_idx;
       test_distinct_geoms         postgres    false    2581            07           1259    729960 #   col_menoscl_ue_menos_lc_terreno_idx    INDEX     w   CREATE INDEX col_menoscl_ue_menos_lc_terreno_idx ON test_distinct_geoms.col_menoscl USING btree (ue_menos_lc_terreno);
 D   DROP INDEX test_distinct_geoms.col_menoscl_ue_menos_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2581            17           1259    729962 *   col_menoscl_ue_menos_lc_unddcnstrccion_idx    INDEX     �   CREATE INDEX col_menoscl_ue_menos_lc_unddcnstrccion_idx ON test_distinct_geoms.col_menoscl USING btree (ue_menos_lc_unidadconstruccion);
 K   DROP INDEX test_distinct_geoms.col_menoscl_ue_menos_lc_unddcnstrccion_idx;
       test_distinct_geoms         postgres    false    2581            L7           1259    730017    col_miembros_agrupacion_idx    INDEX     g   CREATE INDEX col_miembros_agrupacion_idx ON test_distinct_geoms.col_miembros USING btree (agrupacion);
 <   DROP INDEX test_distinct_geoms.col_miembros_agrupacion_idx;
       test_distinct_geoms         postgres    false    2587            M7           1259    730016 +   col_miembros_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_grpcnntrsdos_idx ON test_distinct_geoms.col_miembros USING btree (interesado_lc_agrupacioninteresados);
 L   DROP INDEX test_distinct_geoms.col_miembros_interesado_lc_grpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2587            N7           1259    730015 )   col_miembros_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_miembros_interesado_lc_interesado_idx ON test_distinct_geoms.col_miembros USING btree (interesado_lc_interesado);
 J   DROP INDEX test_distinct_geoms.col_miembros_interesado_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2587            #7           1259    729945    col_puntoccl_ccl_idx    INDEX     Y   CREATE INDEX col_puntoccl_ccl_idx ON test_distinct_geoms.col_puntoccl USING btree (ccl);
 5   DROP INDEX test_distinct_geoms.col_puntoccl_ccl_idx;
       test_distinct_geoms         postgres    false    2579            &7           1259    729943 &   col_puntoccl_punto_lc_puntocontrol_idx    INDEX     }   CREATE INDEX col_puntoccl_punto_lc_puntocontrol_idx ON test_distinct_geoms.col_puntoccl USING btree (punto_lc_puntocontrol);
 G   DROP INDEX test_distinct_geoms.col_puntoccl_punto_lc_puntocontrol_idx;
       test_distinct_geoms         postgres    false    2579            '7           1259    729942 +   col_puntoccl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntoccl_punto_lc_puntolevantaminto_idx ON test_distinct_geoms.col_puntoccl USING btree (punto_lc_puntolevantamiento);
 L   DROP INDEX test_distinct_geoms.col_puntoccl_punto_lc_puntolevantaminto_idx;
       test_distinct_geoms         postgres    false    2579            (7           1259    729944 &   col_puntoccl_punto_lc_puntolindero_idx    INDEX     }   CREATE INDEX col_puntoccl_punto_lc_puntolindero_idx ON test_distinct_geoms.col_puntoccl USING btree (punto_lc_puntolindero);
 G   DROP INDEX test_distinct_geoms.col_puntoccl_punto_lc_puntolindero_idx;
       test_distinct_geoms         postgres    false    2579            :7           1259    729980 %   col_puntocl_punto_lc_puntocontrol_idx    INDEX     {   CREATE INDEX col_puntocl_punto_lc_puntocontrol_idx ON test_distinct_geoms.col_puntocl USING btree (punto_lc_puntocontrol);
 F   DROP INDEX test_distinct_geoms.col_puntocl_punto_lc_puntocontrol_idx;
       test_distinct_geoms         postgres    false    2583            ;7           1259    729979 *   col_puntocl_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntocl_punto_lc_puntolevantaminto_idx ON test_distinct_geoms.col_puntocl USING btree (punto_lc_puntolevantamiento);
 K   DROP INDEX test_distinct_geoms.col_puntocl_punto_lc_puntolevantaminto_idx;
       test_distinct_geoms         postgres    false    2583            <7           1259    729981 %   col_puntocl_punto_lc_puntolindero_idx    INDEX     {   CREATE INDEX col_puntocl_punto_lc_puntolindero_idx ON test_distinct_geoms.col_puntocl USING btree (punto_lc_puntolindero);
 F   DROP INDEX test_distinct_geoms.col_puntocl_punto_lc_puntolindero_idx;
       test_distinct_geoms         postgres    false    2583            �6           1259    729876 #   col_puntofuente_fuente_espacial_idx    INDEX     w   CREATE INDEX col_puntofuente_fuente_espacial_idx ON test_distinct_geoms.col_puntofuente USING btree (fuente_espacial);
 D   DROP INDEX test_distinct_geoms.col_puntofuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2572             7           1259    729878 )   col_puntofuente_punto_lc_puntocontrol_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntocontrol_idx ON test_distinct_geoms.col_puntofuente USING btree (punto_lc_puntocontrol);
 J   DROP INDEX test_distinct_geoms.col_puntofuente_punto_lc_puntocontrol_idx;
       test_distinct_geoms         postgres    false    2572            7           1259    729877 .   col_puntofuente_punto_lc_puntolevantaminto_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolevantaminto_idx ON test_distinct_geoms.col_puntofuente USING btree (punto_lc_puntolevantamiento);
 O   DROP INDEX test_distinct_geoms.col_puntofuente_punto_lc_puntolevantaminto_idx;
       test_distinct_geoms         postgres    false    2572            7           1259    729879 )   col_puntofuente_punto_lc_puntolindero_idx    INDEX     �   CREATE INDEX col_puntofuente_punto_lc_puntolindero_idx ON test_distinct_geoms.col_puntofuente USING btree (punto_lc_puntolindero);
 J   DROP INDEX test_distinct_geoms.col_puntofuente_punto_lc_puntolindero_idx;
       test_distinct_geoms         postgres    false    2572            �6           1259    729861 ,   col_relacionfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_relacionfuente_fuente_administrativa_idx ON test_distinct_geoms.col_relacionfuente USING btree (fuente_administrativa);
 M   DROP INDEX test_distinct_geoms.col_relacionfuente_fuente_administrativa_idx;
       test_distinct_geoms         postgres    false    2570            7           1259    729905 .   col_relacionfuenteuespcial_fuente_espacial_idx    INDEX     �   CREATE INDEX col_relacionfuenteuespcial_fuente_espacial_idx ON test_distinct_geoms.col_relacionfuenteuespacial USING btree (fuente_espacial);
 O   DROP INDEX test_distinct_geoms.col_relacionfuenteuespcial_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2575            B7           1259    729997 /   col_responsablefuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_responsablefuente_fuente_administrativa_idx ON test_distinct_geoms.col_responsablefuente USING btree (fuente_administrativa);
 P   DROP INDEX test_distinct_geoms.col_responsablefuente_fuente_administrativa_idx;
       test_distinct_geoms         postgres    false    2585            C7           1259    729999 4   col_responsablefuente_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_grpcnntrsdos_idx ON test_distinct_geoms.col_responsablefuente USING btree (interesado_lc_agrupacioninteresados);
 U   DROP INDEX test_distinct_geoms.col_responsablefuente_interesado_lc_grpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2585            D7           1259    729998 2   col_responsablefuente_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX col_responsablefuente_interesado_lc_interesado_idx ON test_distinct_geoms.col_responsablefuente USING btree (interesado_lc_interesado);
 S   DROP INDEX test_distinct_geoms.col_responsablefuente_interesado_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2585            �6           1259    729841 '   col_rrrfuente_fuente_administrativa_idx    INDEX        CREATE INDEX col_rrrfuente_fuente_administrativa_idx ON test_distinct_geoms.col_rrrfuente USING btree (fuente_administrativa);
 H   DROP INDEX test_distinct_geoms.col_rrrfuente_fuente_administrativa_idx;
       test_distinct_geoms         postgres    false    2568            �6           1259    729843     col_rrrfuente_rrr_lc_derecho_idx    INDEX     q   CREATE INDEX col_rrrfuente_rrr_lc_derecho_idx ON test_distinct_geoms.col_rrrfuente USING btree (rrr_lc_derecho);
 A   DROP INDEX test_distinct_geoms.col_rrrfuente_rrr_lc_derecho_idx;
       test_distinct_geoms         postgres    false    2568            �6           1259    729842 $   col_rrrfuente_rrr_lc_restriccion_idx    INDEX     y   CREATE INDEX col_rrrfuente_rrr_lc_restriccion_idx ON test_distinct_geoms.col_rrrfuente USING btree (rrr_lc_restriccion);
 E   DROP INDEX test_distinct_geoms.col_rrrfuente_rrr_lc_restriccion_idx;
       test_distinct_geoms         postgres    false    2568            G7           1259    730006 '   col_topografofuente_fuente_espacial_idx    INDEX        CREATE INDEX col_topografofuente_fuente_espacial_idx ON test_distinct_geoms.col_topografofuente USING btree (fuente_espacial);
 H   DROP INDEX test_distinct_geoms.col_topografofuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2586            J7           1259    730008 2   col_topografofuente_topografo_lc_agrpcnntrsdos_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_agrpcnntrsdos_idx ON test_distinct_geoms.col_topografofuente USING btree (topografo_lc_agrupacioninteresados);
 S   DROP INDEX test_distinct_geoms.col_topografofuente_topografo_lc_agrpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2586            K7           1259    730007 /   col_topografofuente_topografo_lc_interesado_idx    INDEX     �   CREATE INDEX col_topografofuente_topografo_lc_interesado_idx ON test_distinct_geoms.col_topografofuente USING btree (topografo_lc_interesado);
 P   DROP INDEX test_distinct_geoms.col_topografofuente_topografo_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2586            �6           1259    729766 1   col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx ON test_distinct_geoms.col_transformacion USING btree (lc_puntocontrol_transformacion_y_resultado);
 R   DROP INDEX test_distinct_geoms.col_transformacion_lc_pntcntrl_tmcn_y_rsltado_idx;
       test_distinct_geoms         postgres    false    2560            �6           1259    729767 1   col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx ON test_distinct_geoms.col_transformacion USING btree (lc_puntolindero_transformacion_y_resultado);
 R   DROP INDEX test_distinct_geoms.col_transformacion_lc_pntlndr_trmcn_y_rsltado_idx;
       test_distinct_geoms         postgres    false    2560            �6           1259    729768 1   col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx    INDEX     �   CREATE INDEX col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx ON test_distinct_geoms.col_transformacion USING btree (lc_puntolevantamiento_transformacion_y_resultado);
 R   DROP INDEX test_distinct_geoms.col_transformacion_lc_pntlvntmntmcn_y_rsltado_idx;
       test_distinct_geoms         postgres    false    2560            �6           1259    729765 0   col_transformacion_localizacion_transformada_idx    INDEX     �   CREATE INDEX col_transformacion_localizacion_transformada_idx ON test_distinct_geoms.col_transformacion USING gist (localizacion_transformada);
 Q   DROP INDEX test_distinct_geoms.col_transformacion_localizacion_transformada_idx;
       test_distinct_geoms         postgres    false    2560            �6           1259    729854    col_uebaunit_baunit_idx    INDEX     _   CREATE INDEX col_uebaunit_baunit_idx ON test_distinct_geoms.col_uebaunit USING btree (baunit);
 8   DROP INDEX test_distinct_geoms.col_uebaunit_baunit_idx;
       test_distinct_geoms         postgres    false    2569            �6           1259    729850 #   col_uebaunit_ue_lc_construccion_idx    INDEX     w   CREATE INDEX col_uebaunit_ue_lc_construccion_idx ON test_distinct_geoms.col_uebaunit USING btree (ue_lc_construccion);
 D   DROP INDEX test_distinct_geoms.col_uebaunit_ue_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2569            �6           1259    729852 *   col_uebaunit_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_servidumbretransito_idx ON test_distinct_geoms.col_uebaunit USING btree (ue_lc_servidumbretransito);
 K   DROP INDEX test_distinct_geoms.col_uebaunit_ue_lc_servidumbretransito_idx;
       test_distinct_geoms         postgres    false    2569            �6           1259    729851    col_uebaunit_ue_lc_terreno_idx    INDEX     m   CREATE INDEX col_uebaunit_ue_lc_terreno_idx ON test_distinct_geoms.col_uebaunit USING btree (ue_lc_terreno);
 ?   DROP INDEX test_distinct_geoms.col_uebaunit_ue_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2569            �6           1259    729853 )   col_uebaunit_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uebaunit_ue_lc_unidadconstruccion_idx ON test_distinct_geoms.col_uebaunit USING btree (ue_lc_unidadconstruccion);
 J   DROP INDEX test_distinct_geoms.col_uebaunit_ue_lc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2569            7           1259    729890     col_uefuente_fuente_espacial_idx    INDEX     q   CREATE INDEX col_uefuente_fuente_espacial_idx ON test_distinct_geoms.col_uefuente USING btree (fuente_espacial);
 A   DROP INDEX test_distinct_geoms.col_uefuente_fuente_espacial_idx;
       test_distinct_geoms         postgres    false    2573            7           1259    729886 #   col_uefuente_ue_lc_construccion_idx    INDEX     w   CREATE INDEX col_uefuente_ue_lc_construccion_idx ON test_distinct_geoms.col_uefuente USING btree (ue_lc_construccion);
 D   DROP INDEX test_distinct_geoms.col_uefuente_ue_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2573            7           1259    729888 *   col_uefuente_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_servidumbretransito_idx ON test_distinct_geoms.col_uefuente USING btree (ue_lc_servidumbretransito);
 K   DROP INDEX test_distinct_geoms.col_uefuente_ue_lc_servidumbretransito_idx;
       test_distinct_geoms         postgres    false    2573            7           1259    729887    col_uefuente_ue_lc_terreno_idx    INDEX     m   CREATE INDEX col_uefuente_ue_lc_terreno_idx ON test_distinct_geoms.col_uefuente USING btree (ue_lc_terreno);
 ?   DROP INDEX test_distinct_geoms.col_uefuente_ue_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2573            	7           1259    729889 )   col_uefuente_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX col_uefuente_ue_lc_unidadconstruccion_idx ON test_distinct_geoms.col_uefuente USING btree (ue_lc_unidadconstruccion);
 J   DROP INDEX test_distinct_geoms.col_uefuente_ue_lc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2573            �6           1259    729831 '   col_ueuegrupo_parte_lc_construccion_idx    INDEX        CREATE INDEX col_ueuegrupo_parte_lc_construccion_idx ON test_distinct_geoms.col_ueuegrupo USING btree (parte_lc_construccion);
 H   DROP INDEX test_distinct_geoms.col_ueuegrupo_parte_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2567            �6           1259    729833 ,   col_ueuegrupo_parte_lc_servidumbrtrnsito_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_servidumbrtrnsito_idx ON test_distinct_geoms.col_ueuegrupo USING btree (parte_lc_servidumbretransito);
 M   DROP INDEX test_distinct_geoms.col_ueuegrupo_parte_lc_servidumbrtrnsito_idx;
       test_distinct_geoms         postgres    false    2567            �6           1259    729832 "   col_ueuegrupo_parte_lc_terreno_idx    INDEX     u   CREATE INDEX col_ueuegrupo_parte_lc_terreno_idx ON test_distinct_geoms.col_ueuegrupo USING btree (parte_lc_terreno);
 C   DROP INDEX test_distinct_geoms.col_ueuegrupo_parte_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2567            �6           1259    729834 ,   col_ueuegrupo_parte_lc_unidadconstrccion_idx    INDEX     �   CREATE INDEX col_ueuegrupo_parte_lc_unidadconstrccion_idx ON test_distinct_geoms.col_ueuegrupo USING btree (parte_lc_unidadconstruccion);
 M   DROP INDEX test_distinct_geoms.col_ueuegrupo_parte_lc_unidadconstrccion_idx;
       test_distinct_geoms         postgres    false    2567            �6           1259    729868 *   col_unidadfuente_fuente_administrativa_idx    INDEX     �   CREATE INDEX col_unidadfuente_fuente_administrativa_idx ON test_distinct_geoms.col_unidadfuente USING btree (fuente_administrativa);
 K   DROP INDEX test_distinct_geoms.col_unidadfuente_fuente_administrativa_idx;
       test_distinct_geoms         postgres    false    2571            �6           1259    729869    col_unidadfuente_unidad_idx    INDEX     g   CREATE INDEX col_unidadfuente_unidad_idx ON test_distinct_geoms.col_unidadfuente USING btree (unidad);
 <   DROP INDEX test_distinct_geoms.col_unidadfuente_unidad_idx;
       test_distinct_geoms         postgres    false    2571            �6           1259    729821 ,   col_volumenvalor_lc_construccion_volumen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_construccion_volumen_idx ON test_distinct_geoms.col_volumenvalor USING btree (lc_construccion_volumen);
 M   DROP INDEX test_distinct_geoms.col_volumenvalor_lc_construccion_volumen_idx;
       test_distinct_geoms         postgres    false    2566            �6           1259    729823 /   col_volumenvalor_lc_servidumbretranst_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_servidumbretranst_vlmen_idx ON test_distinct_geoms.col_volumenvalor USING btree (lc_servidumbretransito_volumen);
 P   DROP INDEX test_distinct_geoms.col_volumenvalor_lc_servidumbretranst_vlmen_idx;
       test_distinct_geoms         postgres    false    2566            �6           1259    729822 '   col_volumenvalor_lc_terreno_volumen_idx    INDEX        CREATE INDEX col_volumenvalor_lc_terreno_volumen_idx ON test_distinct_geoms.col_volumenvalor USING btree (lc_terreno_volumen);
 H   DROP INDEX test_distinct_geoms.col_volumenvalor_lc_terreno_volumen_idx;
       test_distinct_geoms         postgres    false    2566            �6           1259    729824 /   col_volumenvalor_lc_unidadconstruccin_vlmen_idx    INDEX     �   CREATE INDEX col_volumenvalor_lc_unidadconstruccin_vlmen_idx ON test_distinct_geoms.col_volumenvalor USING btree (lc_unidadconstruccion_volumen);
 P   DROP INDEX test_distinct_geoms.col_volumenvalor_lc_unidadconstruccin_vlmen_idx;
       test_distinct_geoms         postgres    false    2566            �6           1259    729820    col_volumenvalor_tipo_idx    INDEX     c   CREATE INDEX col_volumenvalor_tipo_idx ON test_distinct_geoms.col_volumenvalor USING btree (tipo);
 :   DROP INDEX test_distinct_geoms.col_volumenvalor_tipo_idx;
       test_distinct_geoms         postgres    false    2566            �6           1259    729813 )   extarchivo_lc_fuenteespacl_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_fuenteespacl_xt_rchv_id_idx ON test_distinct_geoms.extarchivo USING btree (lc_fuenteespacial_ext_archivo_id);
 J   DROP INDEX test_distinct_geoms.extarchivo_lc_fuenteespacl_xt_rchv_id_idx;
       test_distinct_geoms         postgres    false    2565            �6           1259    729812 )   extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx    INDEX     �   CREATE INDEX extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx ON test_distinct_geoms.extarchivo USING btree (lc_fuenteadministrtiva_ext_archivo_id);
 J   DROP INDEX test_distinct_geoms.extarchivo_lc_funtdmnstrtv_xt_rchv_id_idx;
       test_distinct_geoms         postgres    false    2565            �6           1259    729811 )   extarchivo_snr_fuentecabdlndrs_rchivo_idx    INDEX     �   CREATE INDEX extarchivo_snr_fuentecabdlndrs_rchivo_idx ON test_distinct_geoms.extarchivo USING btree (snr_fuentecabidalndros_archivo);
 J   DROP INDEX test_distinct_geoms.extarchivo_snr_fuentecabdlndrs_rchivo_idx;
       test_distinct_geoms         postgres    false    2565            �6           1259    729738 $   extdireccion_clase_via_principal_idx    INDEX     y   CREATE INDEX extdireccion_clase_via_principal_idx ON test_distinct_geoms.extdireccion USING btree (clase_via_principal);
 E   DROP INDEX test_distinct_geoms.extdireccion_clase_via_principal_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729742 +   extdireccion_extinteresado_ext_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extinteresado_ext_drccn_id_idx ON test_distinct_geoms.extdireccion USING btree (extinteresado_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_extinteresado_ext_drccn_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729741 +   extdireccion_extndddfccnfsc_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_extndddfccnfsc_xt_drccn_id_idx ON test_distinct_geoms.extdireccion USING btree (extunidadedificcnfsica_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_extndddfccnfsc_xt_drccn_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729743 +   extdireccion_lc_construccin_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_construccin_xt_drccn_id_idx ON test_distinct_geoms.extdireccion USING btree (lc_construccion_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_lc_construccin_xt_drccn_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729747 +   extdireccion_lc_nddcnstrccn_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_nddcnstrccn_xt_drccn_id_idx ON test_distinct_geoms.extdireccion USING btree (lc_unidadconstruccion_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_lc_nddcnstrccn_xt_drccn_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729744 $   extdireccion_lc_predio_direccion_idx    INDEX     y   CREATE INDEX extdireccion_lc_predio_direccion_idx ON test_distinct_geoms.extdireccion USING btree (lc_predio_direccion);
 E   DROP INDEX test_distinct_geoms.extdireccion_lc_predio_direccion_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729746 +   extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx ON test_distinct_geoms.extdireccion USING btree (lc_servidumbretransito_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_lc_srvdmbrtrnt_xt_drccn_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729745 +   extdireccion_lc_terreno_ext_direccin_id_idx    INDEX     �   CREATE INDEX extdireccion_lc_terreno_ext_direccin_id_idx ON test_distinct_geoms.extdireccion USING btree (lc_terreno_ext_direccion_id);
 L   DROP INDEX test_distinct_geoms.extdireccion_lc_terreno_ext_direccin_id_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729737    extdireccion_localizacion_idx    INDEX     j   CREATE INDEX extdireccion_localizacion_idx ON test_distinct_geoms.extdireccion USING gist (localizacion);
 >   DROP INDEX test_distinct_geoms.extdireccion_localizacion_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729739    extdireccion_sector_ciudad_idx    INDEX     m   CREATE INDEX extdireccion_sector_ciudad_idx ON test_distinct_geoms.extdireccion USING btree (sector_ciudad);
 ?   DROP INDEX test_distinct_geoms.extdireccion_sector_ciudad_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729740    extdireccion_sector_predio_idx    INDEX     m   CREATE INDEX extdireccion_sector_predio_idx ON test_distinct_geoms.extdireccion USING btree (sector_predio);
 ?   DROP INDEX test_distinct_geoms.extdireccion_sector_predio_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729736    extdireccion_tipo_direccion_idx    INDEX     o   CREATE INDEX extdireccion_tipo_direccion_idx ON test_distinct_geoms.extdireccion USING btree (tipo_direccion);
 @   DROP INDEX test_distinct_geoms.extdireccion_tipo_direccion_idx;
       test_distinct_geoms         postgres    false    2558            �6           1259    729793 ,   extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx    INDEX     �   CREATE INDEX extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx ON test_distinct_geoms.extinteresado USING btree (extredserviciosfisica_ext_interesado_administrador_id);
 M   DROP INDEX test_distinct_geoms.extinteresado_extrdsrvcsfscd_dmnstrdr_id_idx;
       test_distinct_geoms         postgres    false    2563            �6           1259    729794 ,   extinteresado_lc_agrupacionntrsds_xt_pid_idx    INDEX     �   CREATE INDEX extinteresado_lc_agrupacionntrsds_xt_pid_idx ON test_distinct_geoms.extinteresado USING btree (lc_agrupacionintersdos_ext_pid);
 M   DROP INDEX test_distinct_geoms.extinteresado_lc_agrupacionntrsds_xt_pid_idx;
       test_distinct_geoms         postgres    false    2563            �6           1259    729795 '   extinteresado_lc_interesado_ext_pid_idx    INDEX        CREATE INDEX extinteresado_lc_interesado_ext_pid_idx ON test_distinct_geoms.extinteresado USING btree (lc_interesado_ext_pid);
 H   DROP INDEX test_distinct_geoms.extinteresado_lc_interesado_ext_pid_idx;
       test_distinct_geoms         postgres    false    2563            �6           1259    729754 '   fraccion_col_miembros_participacion_idx    INDEX        CREATE INDEX fraccion_col_miembros_participacion_idx ON test_distinct_geoms.fraccion USING btree (col_miembros_participacion);
 H   DROP INDEX test_distinct_geoms.fraccion_col_miembros_participacion_idx;
       test_distinct_geoms         postgres    false    2559            �6           1259    729755 '   fraccion_lc_predio_copropidd_cfcnte_idx    INDEX     �   CREATE INDEX fraccion_lc_predio_copropidd_cfcnte_idx ON test_distinct_geoms.fraccion USING btree (lc_predio_copropiedad_coeficiente);
 H   DROP INDEX test_distinct_geoms.fraccion_lc_predio_copropidd_cfcnte_idx;
       test_distinct_geoms         postgres    false    2559            Q7           1259    730027    gc_barrio_geometria_idx    INDEX     ^   CREATE INDEX gc_barrio_geometria_idx ON test_distinct_geoms.gc_barrio USING gist (geometria);
 8   DROP INDEX test_distinct_geoms.gc_barrio_geometria_idx;
       test_distinct_geoms         postgres    false    2588            V7           1259    730037 4   gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx    INDEX     �   CREATE INDEX gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx ON test_distinct_geoms.gc_calificacionunidadconstruccion USING btree (gc_unidadconstruccion);
 U   DROP INDEX test_distinct_geoms.gc_calificacnnddcnstrccion_gc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2589            W7           1259    730047 '   gc_comisionesconstruccion_geometria_idx    INDEX     ~   CREATE INDEX gc_comisionesconstruccion_geometria_idx ON test_distinct_geoms.gc_comisionesconstruccion USING gist (geometria);
 H   DROP INDEX test_distinct_geoms.gc_comisionesconstruccion_geometria_idx;
       test_distinct_geoms         postgres    false    2590            ]7           1259    730067 (   gc_comisionesnddcnstrccion_geometria_idx    INDEX     �   CREATE INDEX gc_comisionesnddcnstrccion_geometria_idx ON test_distinct_geoms.gc_comisionesunidadconstruccion USING gist (geometria);
 I   DROP INDEX test_distinct_geoms.gc_comisionesnddcnstrccion_geometria_idx;
       test_distinct_geoms         postgres    false    2592            Z7           1259    730057 "   gc_comisionesterreno_geometria_idx    INDEX     t   CREATE INDEX gc_comisionesterreno_geometria_idx ON test_distinct_geoms.gc_comisionesterreno USING gist (geometria);
 C   DROP INDEX test_distinct_geoms.gc_comisionesterreno_geometria_idx;
       test_distinct_geoms         postgres    false    2591            `7           1259    730079    gc_construccion_gc_predio_idx    INDEX     k   CREATE INDEX gc_construccion_gc_predio_idx ON test_distinct_geoms.gc_construccion USING btree (gc_predio);
 >   DROP INDEX test_distinct_geoms.gc_construccion_gc_predio_idx;
       test_distinct_geoms         postgres    false    2593            a7           1259    730078    gc_construccion_geometria_idx    INDEX     j   CREATE INDEX gc_construccion_geometria_idx ON test_distinct_geoms.gc_construccion USING gist (geometria);
 >   DROP INDEX test_distinct_geoms.gc_construccion_geometria_idx;
       test_distinct_geoms         postgres    false    2593            d7           1259    730077 %   gc_construccion_tipo_construccion_idx    INDEX     {   CREATE INDEX gc_construccion_tipo_construccion_idx ON test_distinct_geoms.gc_construccion USING btree (tipo_construccion);
 F   DROP INDEX test_distinct_geoms.gc_construccion_tipo_construccion_idx;
       test_distinct_geoms         postgres    false    2593            �7           1259    730212    gc_copropiedad_gc_matriz_idx    INDEX     i   CREATE INDEX gc_copropiedad_gc_matriz_idx ON test_distinct_geoms.gc_copropiedad USING btree (gc_matriz);
 =   DROP INDEX test_distinct_geoms.gc_copropiedad_gc_matriz_idx;
       test_distinct_geoms         postgres    false    2607            �7           1259    730213    gc_copropiedad_gc_unidad_idx    INDEX     i   CREATE INDEX gc_copropiedad_gc_unidad_idx ON test_distinct_geoms.gc_copropiedad USING btree (gc_unidad);
 =   DROP INDEX test_distinct_geoms.gc_copropiedad_gc_unidad_idx;
       test_distinct_geoms         postgres    false    2607            �7           1259    731955    gc_copropiedad_gc_unidad_key    INDEX     p   CREATE UNIQUE INDEX gc_copropiedad_gc_unidad_key ON test_distinct_geoms.gc_copropiedad USING btree (gc_unidad);
 =   DROP INDEX test_distinct_geoms.gc_copropiedad_gc_unidad_key;
       test_distinct_geoms         postgres    false    2607            e7           1259    730086 "   gc_datosphcondominio_gc_predio_idx    INDEX     u   CREATE INDEX gc_datosphcondominio_gc_predio_idx ON test_distinct_geoms.gc_datosphcondominio USING btree (gc_predio);
 C   DROP INDEX test_distinct_geoms.gc_datosphcondominio_gc_predio_idx;
       test_distinct_geoms         postgres    false    2594            h7           1259    730093 (   gc_datostorreph_gc_datosphcondominio_idx    INDEX     �   CREATE INDEX gc_datostorreph_gc_datosphcondominio_idx ON test_distinct_geoms.gc_datostorreph USING btree (gc_datosphcondominio);
 I   DROP INDEX test_distinct_geoms.gc_datostorreph_gc_datosphcondominio_idx;
       test_distinct_geoms         postgres    false    2595            k7           1259    730104 +   gc_direccion_gc_prediocatastro_dirccnes_idx    INDEX     �   CREATE INDEX gc_direccion_gc_prediocatastro_dirccnes_idx ON test_distinct_geoms.gc_direccion USING btree (gc_prediocatastro_direcciones);
 L   DROP INDEX test_distinct_geoms.gc_direccion_gc_prediocatastro_dirccnes_idx;
       test_distinct_geoms         postgres    false    2596            l7           1259    730103 %   gc_direccion_geometria_referencia_idx    INDEX     z   CREATE INDEX gc_direccion_geometria_referencia_idx ON test_distinct_geoms.gc_direccion USING gist (geometria_referencia);
 F   DROP INDEX test_distinct_geoms.gc_direccion_geometria_referencia_idx;
       test_distinct_geoms         postgres    false    2596            o7           1259    730111 .   gc_estadopredio_gc_prediocatastr_std_prdio_idx    INDEX     �   CREATE INDEX gc_estadopredio_gc_prediocatastr_std_prdio_idx ON test_distinct_geoms.gc_estadopredio USING btree (gc_prediocatastro_estado_predio);
 O   DROP INDEX test_distinct_geoms.gc_estadopredio_gc_prediocatastr_std_prdio_idx;
       test_distinct_geoms         postgres    false    2597            r7           1259    730121    gc_manzana_geometria_idx    INDEX     `   CREATE INDEX gc_manzana_geometria_idx ON test_distinct_geoms.gc_manzana USING gist (geometria);
 9   DROP INDEX test_distinct_geoms.gc_manzana_geometria_idx;
       test_distinct_geoms         postgres    false    2598            u7           1259    730131    gc_perimetro_geometria_idx    INDEX     d   CREATE INDEX gc_perimetro_geometria_idx ON test_distinct_geoms.gc_perimetro USING gist (geometria);
 ;   DROP INDEX test_distinct_geoms.gc_perimetro_geometria_idx;
       test_distinct_geoms         postgres    false    2599            �7           1259    730204 &   gc_prediocatastro_condicion_predio_idx    INDEX     }   CREATE INDEX gc_prediocatastro_condicion_predio_idx ON test_distinct_geoms.gc_prediocatastro USING btree (condicion_predio);
 G   DROP INDEX test_distinct_geoms.gc_prediocatastro_condicion_predio_idx;
       test_distinct_geoms         postgres    false    2606            �7           1259    730205 /   gc_prediocatastro_sistema_procedencia_datos_idx    INDEX     �   CREATE INDEX gc_prediocatastro_sistema_procedencia_datos_idx ON test_distinct_geoms.gc_prediocatastro USING btree (sistema_procedencia_datos);
 P   DROP INDEX test_distinct_geoms.gc_prediocatastro_sistema_procedencia_datos_idx;
       test_distinct_geoms         postgres    false    2606            x7           1259    730141 %   gc_propietario_gc_predio_catastro_idx    INDEX     {   CREATE INDEX gc_propietario_gc_predio_catastro_idx ON test_distinct_geoms.gc_propietario USING btree (gc_predio_catastro);
 F   DROP INDEX test_distinct_geoms.gc_propietario_gc_predio_catastro_idx;
       test_distinct_geoms         postgres    false    2600            {7           1259    730151    gc_sectorrural_geometria_idx    INDEX     h   CREATE INDEX gc_sectorrural_geometria_idx ON test_distinct_geoms.gc_sectorrural USING gist (geometria);
 =   DROP INDEX test_distinct_geoms.gc_sectorrural_geometria_idx;
       test_distinct_geoms         postgres    false    2601            ~7           1259    730161    gc_sectorurbano_geometria_idx    INDEX     j   CREATE INDEX gc_sectorurbano_geometria_idx ON test_distinct_geoms.gc_sectorurbano USING gist (geometria);
 >   DROP INDEX test_distinct_geoms.gc_sectorurbano_geometria_idx;
       test_distinct_geoms         postgres    false    2602            �7           1259    730172    gc_terreno_gc_predio_idx    INDEX     a   CREATE INDEX gc_terreno_gc_predio_idx ON test_distinct_geoms.gc_terreno USING btree (gc_predio);
 9   DROP INDEX test_distinct_geoms.gc_terreno_gc_predio_idx;
       test_distinct_geoms         postgres    false    2603            �7           1259    730171    gc_terreno_geometria_idx    INDEX     `   CREATE INDEX gc_terreno_geometria_idx ON test_distinct_geoms.gc_terreno USING gist (geometria);
 9   DROP INDEX test_distinct_geoms.gc_terreno_geometria_idx;
       test_distinct_geoms         postgres    false    2603            �7           1259    730184 )   gc_unidadconstruccion_gc_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_gc_construccion_idx ON test_distinct_geoms.gc_unidadconstruccion USING btree (gc_construccion);
 J   DROP INDEX test_distinct_geoms.gc_unidadconstruccion_gc_construccion_idx;
       test_distinct_geoms         postgres    false    2604            �7           1259    730183 #   gc_unidadconstruccion_geometria_idx    INDEX     v   CREATE INDEX gc_unidadconstruccion_geometria_idx ON test_distinct_geoms.gc_unidadconstruccion USING gist (geometria);
 D   DROP INDEX test_distinct_geoms.gc_unidadconstruccion_geometria_idx;
       test_distinct_geoms         postgres    false    2604            �7           1259    730182 +   gc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX gc_unidadconstruccion_tipo_construccion_idx ON test_distinct_geoms.gc_unidadconstruccion USING btree (tipo_construccion);
 L   DROP INDEX test_distinct_geoms.gc_unidadconstruccion_tipo_construccion_idx;
       test_distinct_geoms         postgres    false    2604            �7           1259    730194    gc_vereda_geometria_idx    INDEX     ^   CREATE INDEX gc_vereda_geometria_idx ON test_distinct_geoms.gc_vereda USING gist (geometria);
 8   DROP INDEX test_distinct_geoms.gc_vereda_geometria_idx;
       test_distinct_geoms         postgres    false    2605            �6           1259    729681     gm_surface2dlistvalue_avalue_idx    INDEX     p   CREATE INDEX gm_surface2dlistvalue_avalue_idx ON test_distinct_geoms.gm_surface2dlistvalue USING gist (avalue);
 A   DROP INDEX test_distinct_geoms.gm_surface2dlistvalue_avalue_idx;
       test_distinct_geoms         postgres    false    2552            �6           1259    729682 4   gm_surface2dlistvalue_gm_multisurface2d_geometry_idx    INDEX     �   CREATE INDEX gm_surface2dlistvalue_gm_multisurface2d_geometry_idx ON test_distinct_geoms.gm_surface2dlistvalue USING btree (gm_multisurface2d_geometry);
 U   DROP INDEX test_distinct_geoms.gm_surface2dlistvalue_gm_multisurface2d_geometry_idx;
       test_distinct_geoms         postgres    false    2552            �6           1259    729698     gm_surface3dlistvalue_avalue_idx    INDEX     p   CREATE INDEX gm_surface3dlistvalue_avalue_idx ON test_distinct_geoms.gm_surface3dlistvalue USING gist (avalue);
 A   DROP INDEX test_distinct_geoms.gm_surface3dlistvalue_avalue_idx;
       test_distinct_geoms         postgres    false    2554            �6           1259    729699 4   gm_surface3dlistvalue_gm_multisurface3d_geometry_idx    INDEX     �   CREATE INDEX gm_surface3dlistvalue_gm_multisurface3d_geometry_idx ON test_distinct_geoms.gm_surface3dlistvalue USING btree (gm_multisurface3d_geometry);
 U   DROP INDEX test_distinct_geoms.gm_surface3dlistvalue_gm_multisurface3d_geometry_idx;
       test_distinct_geoms         postgres    false    2554            �6           1259    729783    imagen_extinteresado_firma_idx    INDEX     m   CREATE INDEX imagen_extinteresado_firma_idx ON test_distinct_geoms.imagen USING btree (extinteresado_firma);
 ?   DROP INDEX test_distinct_geoms.imagen_extinteresado_firma_idx;
       test_distinct_geoms         postgres    false    2562            �6           1259    729782 #   imagen_extinteresado_fotografia_idx    INDEX     w   CREATE INDEX imagen_extinteresado_fotografia_idx ON test_distinct_geoms.imagen USING btree (extinteresado_fotografia);
 D   DROP INDEX test_distinct_geoms.imagen_extinteresado_fotografia_idx;
       test_distinct_geoms         postgres    false    2562            �6           1259    729781 %   imagen_extinteresado_huell_dctlar_idx    INDEX     ~   CREATE INDEX imagen_extinteresado_huell_dctlar_idx ON test_distinct_geoms.imagen USING btree (extinteresado_huella_dactilar);
 F   DROP INDEX test_distinct_geoms.imagen_extinteresado_huell_dctlar_idx;
       test_distinct_geoms         postgres    false    2562            �7           1259    730290 (   ini_predioinsumos_gc_predio_catastro_idx    INDEX     �   CREATE INDEX ini_predioinsumos_gc_predio_catastro_idx ON test_distinct_geoms.ini_predioinsumos USING btree (gc_predio_catastro);
 I   DROP INDEX test_distinct_geoms.ini_predioinsumos_gc_predio_catastro_idx;
       test_distinct_geoms         postgres    false    2615            �7           1259    730291 )   ini_predioinsumos_snr_predio_juridico_idx    INDEX     �   CREATE INDEX ini_predioinsumos_snr_predio_juridico_idx ON test_distinct_geoms.ini_predioinsumos USING btree (snr_predio_juridico);
 J   DROP INDEX test_distinct_geoms.ini_predioinsumos_snr_predio_juridico_idx;
       test_distinct_geoms         postgres    false    2615            �7           1259    730289 )   ini_predioinsumos_tipo_emparejamiento_idx    INDEX     �   CREATE INDEX ini_predioinsumos_tipo_emparejamiento_idx ON test_distinct_geoms.ini_predioinsumos USING btree (tipo_emparejamiento);
 J   DROP INDEX test_distinct_geoms.ini_predioinsumos_tipo_emparejamiento_idx;
       test_distinct_geoms         postgres    false    2615            �7           1259    730302 !   lc_agrupacioninteresados_tipo_idx    INDEX     s   CREATE INDEX lc_agrupacioninteresados_tipo_idx ON test_distinct_geoms.lc_agrupacioninteresados USING btree (tipo);
 B   DROP INDEX test_distinct_geoms.lc_agrupacioninteresados_tipo_idx;
       test_distinct_geoms         postgres    false    2616            8           1259    730544 5   lc_calificacionconvencinal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_lc_unidad_construccion_idx ON test_distinct_geoms.lc_calificacionconvencional USING btree (lc_unidad_construccion);
 V   DROP INDEX test_distinct_geoms.lc_calificacionconvencinal_lc_unidad_construccion_idx;
       test_distinct_geoms         postgres    false    2636            8           1259    730543 -   lc_calificacionconvencinal_tipo_calificar_idx    INDEX     �   CREATE INDEX lc_calificacionconvencinal_tipo_calificar_idx ON test_distinct_geoms.lc_calificacionconvencional USING btree (tipo_calificar);
 N   DROP INDEX test_distinct_geoms.lc_calificacionconvencinal_tipo_calificar_idx;
       test_distinct_geoms         postgres    false    2636            #8           1259    730553 5   lc_calificacionnoconvncnal_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_lc_unidad_construccion_idx ON test_distinct_geoms.lc_calificacionnoconvencional USING btree (lc_unidad_construccion);
 V   DROP INDEX test_distinct_geoms.lc_calificacionnoconvncnal_lc_unidad_construccion_idx;
       test_distinct_geoms         postgres    false    2637            $8           1259    730552 )   lc_calificacionnoconvncnal_tipo_anexo_idx    INDEX     �   CREATE INDEX lc_calificacionnoconvncnal_tipo_anexo_idx ON test_distinct_geoms.lc_calificacionnoconvencional USING btree (tipo_anexo);
 J   DROP INDEX test_distinct_geoms.lc_calificacionnoconvncnal_tipo_anexo_idx;
       test_distinct_geoms         postgres    false    2637            �7           1259    730315    lc_construccion_dimension_idx    INDEX     k   CREATE INDEX lc_construccion_dimension_idx ON test_distinct_geoms.lc_construccion USING btree (dimension);
 >   DROP INDEX test_distinct_geoms.lc_construccion_dimension_idx;
       test_distinct_geoms         postgres    false    2617            �7           1259    730317    lc_construccion_geometria_idx    INDEX     j   CREATE INDEX lc_construccion_geometria_idx ON test_distinct_geoms.lc_construccion USING gist (geometria);
 >   DROP INDEX test_distinct_geoms.lc_construccion_geometria_idx;
       test_distinct_geoms         postgres    false    2617            �7           1259    730316 '   lc_construccion_relacion_superficie_idx    INDEX        CREATE INDEX lc_construccion_relacion_superficie_idx ON test_distinct_geoms.lc_construccion USING btree (relacion_superficie);
 H   DROP INDEX test_distinct_geoms.lc_construccion_relacion_superficie_idx;
       test_distinct_geoms         postgres    false    2617            �7           1259    730313 %   lc_construccion_tipo_construccion_idx    INDEX     {   CREATE INDEX lc_construccion_tipo_construccion_idx ON test_distinct_geoms.lc_construccion USING btree (tipo_construccion);
 F   DROP INDEX test_distinct_geoms.lc_construccion_tipo_construccion_idx;
       test_distinct_geoms         postgres    false    2617            �7           1259    730314     lc_construccion_tipo_dominio_idx    INDEX     q   CREATE INDEX lc_construccion_tipo_dominio_idx ON test_distinct_geoms.lc_construccion USING btree (tipo_dominio);
 A   DROP INDEX test_distinct_geoms.lc_construccion_tipo_dominio_idx;
       test_distinct_geoms         postgres    false    2617            �7           1259    730330 *   lc_contactovisita_lc_datos_adicionales_idx    INDEX     �   CREATE INDEX lc_contactovisita_lc_datos_adicionales_idx ON test_distinct_geoms.lc_contactovisita USING btree (lc_datos_adicionales);
 K   DROP INDEX test_distinct_geoms.lc_contactovisita_lc_datos_adicionales_idx;
       test_distinct_geoms         postgres    false    2618            �7           1259    730329 )   lc_contactovisita_relacion_con_predio_idx    INDEX     �   CREATE INDEX lc_contactovisita_relacion_con_predio_idx ON test_distinct_geoms.lc_contactovisita USING btree (relacion_con_predio);
 J   DROP INDEX test_distinct_geoms.lc_contactovisita_relacion_con_predio_idx;
       test_distinct_geoms         postgres    false    2618            �7           1259    730328 0   lc_contactovisita_tipo_documento_quien_tndio_idx    INDEX     �   CREATE INDEX lc_contactovisita_tipo_documento_quien_tndio_idx ON test_distinct_geoms.lc_contactovisita USING btree (tipo_documento_quien_atendio);
 Q   DROP INDEX test_distinct_geoms.lc_contactovisita_tipo_documento_quien_tndio_idx;
       test_distinct_geoms         postgres    false    2618            �7           1259    730338 "   lc_datosphcondominio_lc_predio_idx    INDEX     u   CREATE INDEX lc_datosphcondominio_lc_predio_idx ON test_distinct_geoms.lc_datosphcondominio USING btree (lc_predio);
 C   DROP INDEX test_distinct_geoms.lc_datosphcondominio_lc_predio_idx;
       test_distinct_geoms         postgres    false    2619            '8           1259    730567 .   lc_datsdcnlslvntmntctstral_categoria_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_categoria_suelo_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (categoria_suelo);
 O   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_categoria_suelo_idx;
       test_distinct_geoms         postgres    false    2638            (8           1259    730566 *   lc_datsdcnlslvntmntctstral_clase_suelo_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_clase_suelo_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (clase_suelo);
 K   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_clase_suelo_idx;
       test_distinct_geoms         postgres    false    2638            )8           1259    730565 4   lc_datsdcnlslvntmntctstral_destinacion_economica_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_destinacion_economica_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (destinacion_economica);
 U   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_destinacion_economica_idx;
       test_distinct_geoms         postgres    false    2638            *8           1259    730570 (   lc_datsdcnlslvntmntctstral_lc_predio_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_lc_predio_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (lc_predio);
 I   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_lc_predio_idx;
       test_distinct_geoms         postgres    false    2638            +8           1259    730564 9   lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (procedimiento_catastral_registral);
 Z   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_idx;
       test_distinct_geoms         postgres    false    2638            ,8           1259    730569 /   lc_datsdcnlslvntmntctstral_resultado_visita_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_resultado_visita_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (resultado_visita);
 P   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_resultado_visita_idx;
       test_distinct_geoms         postgres    false    2638            -8           1259    730568 9   lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx    INDEX     �   CREATE INDEX lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx ON test_distinct_geoms.lc_datosadicionaleslevantamientocatastral USING btree (tipo_documento_reconocedor);
 Z   DROP INDEX test_distinct_geoms.lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_idx;
       test_distinct_geoms         postgres    false    2638            �7           1259    730351 )   lc_derecho_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_derecho_interesado_lc_grpcnntrsdos_idx ON test_distinct_geoms.lc_derecho USING btree (interesado_lc_agrupacioninteresados);
 J   DROP INDEX test_distinct_geoms.lc_derecho_interesado_lc_grpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2620            �7           1259    730350 '   lc_derecho_interesado_lc_interesado_idx    INDEX        CREATE INDEX lc_derecho_interesado_lc_interesado_idx ON test_distinct_geoms.lc_derecho USING btree (interesado_lc_interesado);
 H   DROP INDEX test_distinct_geoms.lc_derecho_interesado_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2620            �7           1259    730349    lc_derecho_tipo_idx    INDEX     W   CREATE INDEX lc_derecho_tipo_idx ON test_distinct_geoms.lc_derecho USING btree (tipo);
 4   DROP INDEX test_distinct_geoms.lc_derecho_tipo_idx;
       test_distinct_geoms         postgres    false    2620            �7           1259    730352    lc_derecho_unidad_idx    INDEX     [   CREATE INDEX lc_derecho_unidad_idx ON test_distinct_geoms.lc_derecho USING btree (unidad);
 6   DROP INDEX test_distinct_geoms.lc_derecho_unidad_idx;
       test_distinct_geoms         postgres    false    2620            �7           1259    730359 6   lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx    INDEX     �   CREATE INDEX lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx ON test_distinct_geoms.lc_estructuranovedadfmi USING btree (lc_dtsdcnlstmntctstral_novedad_fmi);
 W   DROP INDEX test_distinct_geoms.lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_idx;
       test_distinct_geoms         postgres    false    2621            �7           1259    730367 9   lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx ON test_distinct_geoms.lc_estructuranovedadnumeropredial USING btree (lc_dtsdcnlstmntctstral_novedad_numeros_prediales);
 Z   DROP INDEX test_distinct_geoms.lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_idx;
       test_distinct_geoms         postgres    false    2622            �7           1259    730366 +   lc_estructuranvddnmrprdial_tipo_novedad_idx    INDEX     �   CREATE INDEX lc_estructuranvddnmrprdial_tipo_novedad_idx ON test_distinct_geoms.lc_estructuranovedadnumeropredial USING btree (tipo_novedad);
 L   DROP INDEX test_distinct_geoms.lc_estructuranvddnmrprdial_tipo_novedad_idx;
       test_distinct_geoms         postgres    false    2622            �7           1259    730379 1   lc_fuenteadministrativa_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_estado_disponibilidad_idx ON test_distinct_geoms.lc_fuenteadministrativa USING btree (estado_disponibilidad);
 R   DROP INDEX test_distinct_geoms.lc_fuenteadministrativa_estado_disponibilidad_idx;
       test_distinct_geoms         postgres    false    2623            �7           1259    730378     lc_fuenteadministrativa_tipo_idx    INDEX     q   CREATE INDEX lc_fuenteadministrativa_tipo_idx ON test_distinct_geoms.lc_fuenteadministrativa USING btree (tipo);
 A   DROP INDEX test_distinct_geoms.lc_fuenteadministrativa_tipo_idx;
       test_distinct_geoms         postgres    false    2623            �7           1259    730380 *   lc_fuenteadministrativa_tipo_principal_idx    INDEX     �   CREATE INDEX lc_fuenteadministrativa_tipo_principal_idx ON test_distinct_geoms.lc_fuenteadministrativa USING btree (tipo_principal);
 K   DROP INDEX test_distinct_geoms.lc_fuenteadministrativa_tipo_principal_idx;
       test_distinct_geoms         postgres    false    2623            �7           1259    730392 +   lc_fuenteespacial_estado_disponibilidad_idx    INDEX     �   CREATE INDEX lc_fuenteespacial_estado_disponibilidad_idx ON test_distinct_geoms.lc_fuenteespacial USING btree (estado_disponibilidad);
 L   DROP INDEX test_distinct_geoms.lc_fuenteespacial_estado_disponibilidad_idx;
       test_distinct_geoms         postgres    false    2624            �7           1259    730391    lc_fuenteespacial_tipo_idx    INDEX     e   CREATE INDEX lc_fuenteespacial_tipo_idx ON test_distinct_geoms.lc_fuenteespacial USING btree (tipo);
 ;   DROP INDEX test_distinct_geoms.lc_fuenteespacial_tipo_idx;
       test_distinct_geoms         postgres    false    2624            �7           1259    730393 $   lc_fuenteespacial_tipo_principal_idx    INDEX     y   CREATE INDEX lc_fuenteespacial_tipo_principal_idx ON test_distinct_geoms.lc_fuenteespacial USING btree (tipo_principal);
 E   DROP INDEX test_distinct_geoms.lc_fuenteespacial_tipo_principal_idx;
       test_distinct_geoms         postgres    false    2624            �7           1259    730401 +   lc_grupocalificacion_clase_calificacion_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_clase_calificacion_idx ON test_distinct_geoms.lc_grupocalificacion USING btree (clase_calificacion);
 L   DROP INDEX test_distinct_geoms.lc_grupocalificacion_clase_calificacion_idx;
       test_distinct_geoms         postgres    false    2625            �7           1259    730402 %   lc_grupocalificacion_conservacion_idx    INDEX     {   CREATE INDEX lc_grupocalificacion_conservacion_idx ON test_distinct_geoms.lc_grupocalificacion USING btree (conservacion);
 F   DROP INDEX test_distinct_geoms.lc_grupocalificacion_conservacion_idx;
       test_distinct_geoms         postgres    false    2625            �7           1259    730403 3   lc_grupocalificacion_lc_calificacion_convencnal_idx    INDEX     �   CREATE INDEX lc_grupocalificacion_lc_calificacion_convencnal_idx ON test_distinct_geoms.lc_grupocalificacion USING btree (lc_calificacion_convencional);
 T   DROP INDEX test_distinct_geoms.lc_grupocalificacion_lc_calificacion_convencnal_idx;
       test_distinct_geoms         postgres    false    2625            �7           1259    730417    lc_interesado_grupo_etnico_idx    INDEX     m   CREATE INDEX lc_interesado_grupo_etnico_idx ON test_distinct_geoms.lc_interesado USING btree (grupo_etnico);
 ?   DROP INDEX test_distinct_geoms.lc_interesado_grupo_etnico_idx;
       test_distinct_geoms         postgres    false    2626            �7           1259    730416    lc_interesado_sexo_idx    INDEX     ]   CREATE INDEX lc_interesado_sexo_idx ON test_distinct_geoms.lc_interesado USING btree (sexo);
 7   DROP INDEX test_distinct_geoms.lc_interesado_sexo_idx;
       test_distinct_geoms         postgres    false    2626            �7           1259    730415     lc_interesado_tipo_documento_idx    INDEX     q   CREATE INDEX lc_interesado_tipo_documento_idx ON test_distinct_geoms.lc_interesado USING btree (tipo_documento);
 A   DROP INDEX test_distinct_geoms.lc_interesado_tipo_documento_idx;
       test_distinct_geoms         postgres    false    2626            �7           1259    730414    lc_interesado_tipo_idx    INDEX     ]   CREATE INDEX lc_interesado_tipo_idx ON test_distinct_geoms.lc_interesado USING btree (tipo);
 7   DROP INDEX test_distinct_geoms.lc_interesado_tipo_idx;
       test_distinct_geoms         postgres    false    2626            �7           1259    730428 '   lc_interesadocontacto_lc_interesado_idx    INDEX        CREATE INDEX lc_interesadocontacto_lc_interesado_idx ON test_distinct_geoms.lc_interesadocontacto USING btree (lc_interesado);
 H   DROP INDEX test_distinct_geoms.lc_interesadocontacto_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2627            �7           1259    730439    lc_lindero_geometria_idx    INDEX     `   CREATE INDEX lc_lindero_geometria_idx ON test_distinct_geoms.lc_lindero USING gist (geometria);
 9   DROP INDEX test_distinct_geoms.lc_lindero_geometria_idx;
       test_distinct_geoms         postgres    false    2628            �7           1259    730448 /   lc_objetoconstruccion_lc_grupo_calificacion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_lc_grupo_calificacion_idx ON test_distinct_geoms.lc_objetoconstruccion USING btree (lc_grupo_calificacion);
 P   DROP INDEX test_distinct_geoms.lc_objetoconstruccion_lc_grupo_calificacion_idx;
       test_distinct_geoms         postgres    false    2629            �7           1259    730447 2   lc_objetoconstruccion_tipo_objeto_construccion_idx    INDEX     �   CREATE INDEX lc_objetoconstruccion_tipo_objeto_construccion_idx ON test_distinct_geoms.lc_objetoconstruccion USING btree (tipo_objeto_construccion);
 S   DROP INDEX test_distinct_geoms.lc_objetoconstruccion_tipo_objeto_construccion_idx;
       test_distinct_geoms         postgres    false    2629            �7           1259    730457 (   lc_ofertasmercadoinmoblrio_lc_predio_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_lc_predio_idx ON test_distinct_geoms.lc_ofertasmercadoinmobiliario USING btree (lc_predio);
 I   DROP INDEX test_distinct_geoms.lc_ofertasmercadoinmoblrio_lc_predio_idx;
       test_distinct_geoms         postgres    false    2630            �7           1259    730456 *   lc_ofertasmercadoinmoblrio_tipo_oferta_idx    INDEX     �   CREATE INDEX lc_ofertasmercadoinmoblrio_tipo_oferta_idx ON test_distinct_geoms.lc_ofertasmercadoinmobiliario USING btree (tipo_oferta);
 K   DROP INDEX test_distinct_geoms.lc_ofertasmercadoinmoblrio_tipo_oferta_idx;
       test_distinct_geoms         postgres    false    2630            �7           1259    730469    lc_predio_condicion_predio_idx    INDEX     m   CREATE INDEX lc_predio_condicion_predio_idx ON test_distinct_geoms.lc_predio USING btree (condicion_predio);
 ?   DROP INDEX test_distinct_geoms.lc_predio_condicion_predio_idx;
       test_distinct_geoms         postgres    false    2631            >8           1259    730607 %   lc_predio_copropiedad_copropiedad_idx    INDEX     {   CREATE INDEX lc_predio_copropiedad_copropiedad_idx ON test_distinct_geoms.lc_predio_copropiedad USING btree (copropiedad);
 F   DROP INDEX test_distinct_geoms.lc_predio_copropiedad_copropiedad_idx;
       test_distinct_geoms         postgres    false    2641            A8           1259    730606     lc_predio_copropiedad_predio_idx    INDEX     q   CREATE INDEX lc_predio_copropiedad_predio_idx ON test_distinct_geoms.lc_predio_copropiedad USING btree (predio);
 A   DROP INDEX test_distinct_geoms.lc_predio_copropiedad_predio_idx;
       test_distinct_geoms         postgres    false    2641            B8           1259    732481     lc_predio_copropiedad_predio_key    INDEX     x   CREATE UNIQUE INDEX lc_predio_copropiedad_predio_key ON test_distinct_geoms.lc_predio_copropiedad USING btree (predio);
 A   DROP INDEX test_distinct_geoms.lc_predio_copropiedad_predio_key;
       test_distinct_geoms         postgres    false    2641            C8           1259    730614 1   lc_predio_ini_predioinsmos_ini_predio_insumos_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_ini_predio_insumos_idx ON test_distinct_geoms.lc_predio_ini_predioinsumos USING btree (ini_predio_insumos);
 R   DROP INDEX test_distinct_geoms.lc_predio_ini_predioinsmos_ini_predio_insumos_idx;
       test_distinct_geoms         postgres    false    2642            D8           1259    730615 (   lc_predio_ini_predioinsmos_lc_predio_idx    INDEX     �   CREATE INDEX lc_predio_ini_predioinsmos_lc_predio_idx ON test_distinct_geoms.lc_predio_ini_predioinsumos USING btree (lc_predio);
 I   DROP INDEX test_distinct_geoms.lc_predio_ini_predioinsmos_lc_predio_idx;
       test_distinct_geoms         postgres    false    2642            �7           1259    730468    lc_predio_tipo_idx    INDEX     U   CREATE INDEX lc_predio_tipo_idx ON test_distinct_geoms.lc_predio USING btree (tipo);
 3   DROP INDEX test_distinct_geoms.lc_predio_tipo_idx;
       test_distinct_geoms         postgres    false    2631            �7           1259    730484    lc_puntocontrol_geometria_idx    INDEX     j   CREATE INDEX lc_puntocontrol_geometria_idx ON test_distinct_geoms.lc_puntocontrol USING gist (geometria);
 >   DROP INDEX test_distinct_geoms.lc_puntocontrol_geometria_idx;
       test_distinct_geoms         postgres    false    2632            �7           1259    730483 $   lc_puntocontrol_metodoproduccion_idx    INDEX     y   CREATE INDEX lc_puntocontrol_metodoproduccion_idx ON test_distinct_geoms.lc_puntocontrol USING btree (metodoproduccion);
 E   DROP INDEX test_distinct_geoms.lc_puntocontrol_metodoproduccion_idx;
       test_distinct_geoms         postgres    false    2632            �7           1259    730482 *   lc_puntocontrol_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_posicion_interpolacion_idx ON test_distinct_geoms.lc_puntocontrol USING btree (posicion_interpolacion);
 K   DROP INDEX test_distinct_geoms.lc_puntocontrol_posicion_interpolacion_idx;
       test_distinct_geoms         postgres    false    2632             8           1259    730480    lc_puntocontrol_puntotipo_idx    INDEX     k   CREATE INDEX lc_puntocontrol_puntotipo_idx ON test_distinct_geoms.lc_puntocontrol USING btree (puntotipo);
 >   DROP INDEX test_distinct_geoms.lc_puntocontrol_puntotipo_idx;
       test_distinct_geoms         postgres    false    2632            8           1259    730481 &   lc_puntocontrol_tipo_punto_control_idx    INDEX     }   CREATE INDEX lc_puntocontrol_tipo_punto_control_idx ON test_distinct_geoms.lc_puntocontrol USING btree (tipo_punto_control);
 G   DROP INDEX test_distinct_geoms.lc_puntocontrol_tipo_punto_control_idx;
       test_distinct_geoms         postgres    false    2632            8           1259    730485 &   lc_puntocontrol_ue_lc_construccion_idx    INDEX     }   CREATE INDEX lc_puntocontrol_ue_lc_construccion_idx ON test_distinct_geoms.lc_puntocontrol USING btree (ue_lc_construccion);
 G   DROP INDEX test_distinct_geoms.lc_puntocontrol_ue_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2632            8           1259    730487 -   lc_puntocontrol_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_servidumbretransito_idx ON test_distinct_geoms.lc_puntocontrol USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_distinct_geoms.lc_puntocontrol_ue_lc_servidumbretransito_idx;
       test_distinct_geoms         postgres    false    2632            8           1259    730486 !   lc_puntocontrol_ue_lc_terreno_idx    INDEX     s   CREATE INDEX lc_puntocontrol_ue_lc_terreno_idx ON test_distinct_geoms.lc_puntocontrol USING btree (ue_lc_terreno);
 B   DROP INDEX test_distinct_geoms.lc_puntocontrol_ue_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2632            8           1259    730488 ,   lc_puntocontrol_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntocontrol_ue_lc_unidadconstruccion_idx ON test_distinct_geoms.lc_puntocontrol USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_distinct_geoms.lc_puntocontrol_ue_lc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2632            .8           1259    730583 ,   lc_puntolevantamiento_fotoidentificacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_fotoidentificacion_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (fotoidentificacion);
 M   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_fotoidentificacion_idx;
       test_distinct_geoms         postgres    false    2639            /8           1259    730586 #   lc_puntolevantamiento_geometria_idx    INDEX     v   CREATE INDEX lc_puntolevantamiento_geometria_idx ON test_distinct_geoms.lc_puntolevantamiento USING gist (geometria);
 D   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_geometria_idx;
       test_distinct_geoms         postgres    false    2639            08           1259    730585 *   lc_puntolevantamiento_metodoproduccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_metodoproduccion_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (metodoproduccion);
 K   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_metodoproduccion_idx;
       test_distinct_geoms         postgres    false    2639            38           1259    730584 0   lc_puntolevantamiento_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_posicion_interpolacion_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (posicion_interpolacion);
 Q   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_posicion_interpolacion_idx;
       test_distinct_geoms         postgres    false    2639            48           1259    730581 #   lc_puntolevantamiento_puntotipo_idx    INDEX     w   CREATE INDEX lc_puntolevantamiento_puntotipo_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (puntotipo);
 D   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_puntotipo_idx;
       test_distinct_geoms         postgres    false    2639            58           1259    730582 2   lc_puntolevantamiento_tipo_punto_levantamiento_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_tipo_punto_levantamiento_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (tipo_punto_levantamiento);
 S   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_tipo_punto_levantamiento_idx;
       test_distinct_geoms         postgres    false    2639            68           1259    730587 ,   lc_puntolevantamiento_ue_lc_construccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_construccion_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (ue_lc_construccion);
 M   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_ue_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2639            78           1259    730589 3   lc_puntolevantamiento_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_servidumbretransito_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (ue_lc_servidumbretransito);
 T   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_ue_lc_servidumbretransito_idx;
       test_distinct_geoms         postgres    false    2639            88           1259    730588 '   lc_puntolevantamiento_ue_lc_terreno_idx    INDEX        CREATE INDEX lc_puntolevantamiento_ue_lc_terreno_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (ue_lc_terreno);
 H   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_ue_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2639            98           1259    730590 2   lc_puntolevantamiento_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolevantamiento_ue_lc_unidadconstruccion_idx ON test_distinct_geoms.lc_puntolevantamiento USING btree (ue_lc_unidadconstruccion);
 S   DROP INDEX test_distinct_geoms.lc_puntolevantamiento_ue_lc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2639            8           1259    730500    lc_puntolindero_acuerdo_idx    INDEX     g   CREATE INDEX lc_puntolindero_acuerdo_idx ON test_distinct_geoms.lc_puntolindero USING btree (acuerdo);
 <   DROP INDEX test_distinct_geoms.lc_puntolindero_acuerdo_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730501 &   lc_puntolindero_fotoidentificacion_idx    INDEX     }   CREATE INDEX lc_puntolindero_fotoidentificacion_idx ON test_distinct_geoms.lc_puntolindero USING btree (fotoidentificacion);
 G   DROP INDEX test_distinct_geoms.lc_puntolindero_fotoidentificacion_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730504    lc_puntolindero_geometria_idx    INDEX     j   CREATE INDEX lc_puntolindero_geometria_idx ON test_distinct_geoms.lc_puntolindero USING gist (geometria);
 >   DROP INDEX test_distinct_geoms.lc_puntolindero_geometria_idx;
       test_distinct_geoms         postgres    false    2633            	8           1259    730503 $   lc_puntolindero_metodoproduccion_idx    INDEX     y   CREATE INDEX lc_puntolindero_metodoproduccion_idx ON test_distinct_geoms.lc_puntolindero USING btree (metodoproduccion);
 E   DROP INDEX test_distinct_geoms.lc_puntolindero_metodoproduccion_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730502 *   lc_puntolindero_posicion_interpolacion_idx    INDEX     �   CREATE INDEX lc_puntolindero_posicion_interpolacion_idx ON test_distinct_geoms.lc_puntolindero USING btree (posicion_interpolacion);
 K   DROP INDEX test_distinct_geoms.lc_puntolindero_posicion_interpolacion_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730499    lc_puntolindero_puntotipo_idx    INDEX     k   CREATE INDEX lc_puntolindero_puntotipo_idx ON test_distinct_geoms.lc_puntolindero USING btree (puntotipo);
 >   DROP INDEX test_distinct_geoms.lc_puntolindero_puntotipo_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730505 &   lc_puntolindero_ue_lc_construccion_idx    INDEX     }   CREATE INDEX lc_puntolindero_ue_lc_construccion_idx ON test_distinct_geoms.lc_puntolindero USING btree (ue_lc_construccion);
 G   DROP INDEX test_distinct_geoms.lc_puntolindero_ue_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730507 -   lc_puntolindero_ue_lc_servidumbretransito_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_servidumbretransito_idx ON test_distinct_geoms.lc_puntolindero USING btree (ue_lc_servidumbretransito);
 N   DROP INDEX test_distinct_geoms.lc_puntolindero_ue_lc_servidumbretransito_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730506 !   lc_puntolindero_ue_lc_terreno_idx    INDEX     s   CREATE INDEX lc_puntolindero_ue_lc_terreno_idx ON test_distinct_geoms.lc_puntolindero USING btree (ue_lc_terreno);
 B   DROP INDEX test_distinct_geoms.lc_puntolindero_ue_lc_terreno_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730508 ,   lc_puntolindero_ue_lc_unidadconstruccion_idx    INDEX     �   CREATE INDEX lc_puntolindero_ue_lc_unidadconstruccion_idx ON test_distinct_geoms.lc_puntolindero USING btree (ue_lc_unidadconstruccion);
 M   DROP INDEX test_distinct_geoms.lc_puntolindero_ue_lc_unidadconstruccion_idx;
       test_distinct_geoms         postgres    false    2633            8           1259    730521 -   lc_restriccion_interesado_lc_grpcnntrsdos_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_grpcnntrsdos_idx ON test_distinct_geoms.lc_restriccion USING btree (interesado_lc_agrupacioninteresados);
 N   DROP INDEX test_distinct_geoms.lc_restriccion_interesado_lc_grpcnntrsdos_idx;
       test_distinct_geoms         postgres    false    2634            8           1259    730520 +   lc_restriccion_interesado_lc_interesado_idx    INDEX     �   CREATE INDEX lc_restriccion_interesado_lc_interesado_idx ON test_distinct_geoms.lc_restriccion USING btree (interesado_lc_interesado);
 L   DROP INDEX test_distinct_geoms.lc_restriccion_interesado_lc_interesado_idx;
       test_distinct_geoms         postgres    false    2634            8           1259    730519    lc_restriccion_tipo_idx    INDEX     _   CREATE INDEX lc_restriccion_tipo_idx ON test_distinct_geoms.lc_restriccion USING btree (tipo);
 8   DROP INDEX test_distinct_geoms.lc_restriccion_tipo_idx;
       test_distinct_geoms         postgres    false    2634            8           1259    730522    lc_restriccion_unidad_idx    INDEX     c   CREATE INDEX lc_restriccion_unidad_idx ON test_distinct_geoms.lc_restriccion USING btree (unidad);
 :   DROP INDEX test_distinct_geoms.lc_restriccion_unidad_idx;
       test_distinct_geoms         postgres    false    2634            G8           1259    730626 $   lc_servidumbretransito_dimension_idx    INDEX     y   CREATE INDEX lc_servidumbretransito_dimension_idx ON test_distinct_geoms.lc_servidumbretransito USING btree (dimension);
 E   DROP INDEX test_distinct_geoms.lc_servidumbretransito_dimension_idx;
       test_distinct_geoms         postgres    false    2643            H8           1259    730628 $   lc_servidumbretransito_geometria_idx    INDEX     x   CREATE INDEX lc_servidumbretransito_geometria_idx ON test_distinct_geoms.lc_servidumbretransito USING gist (geometria);
 E   DROP INDEX test_distinct_geoms.lc_servidumbretransito_geometria_idx;
       test_distinct_geoms         postgres    false    2643            K8           1259    730627 .   lc_servidumbretransito_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_servidumbretransito_relacion_superficie_idx ON test_distinct_geoms.lc_servidumbretransito USING btree (relacion_superficie);
 O   DROP INDEX test_distinct_geoms.lc_servidumbretransito_relacion_superficie_idx;
       test_distinct_geoms         postgres    false    2643            8           1259    730534    lc_terreno_dimension_idx    INDEX     a   CREATE INDEX lc_terreno_dimension_idx ON test_distinct_geoms.lc_terreno USING btree (dimension);
 9   DROP INDEX test_distinct_geoms.lc_terreno_dimension_idx;
       test_distinct_geoms         postgres    false    2635            8           1259    730533    lc_terreno_geometria_idx    INDEX     `   CREATE INDEX lc_terreno_geometria_idx ON test_distinct_geoms.lc_terreno USING gist (geometria);
 9   DROP INDEX test_distinct_geoms.lc_terreno_geometria_idx;
       test_distinct_geoms         postgres    false    2635            8           1259    730535 "   lc_terreno_relacion_superficie_idx    INDEX     u   CREATE INDEX lc_terreno_relacion_superficie_idx ON test_distinct_geoms.lc_terreno USING btree (relacion_superficie);
 C   DROP INDEX test_distinct_geoms.lc_terreno_relacion_superficie_idx;
       test_distinct_geoms         postgres    false    2635            :8           1259    730599 3   lc_tipologiaconstruccion_lc_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_lc_unidad_construccion_idx ON test_distinct_geoms.lc_tipologiaconstruccion USING btree (lc_unidad_construccion);
 T   DROP INDEX test_distinct_geoms.lc_tipologiaconstruccion_lc_unidad_construccion_idx;
       test_distinct_geoms         postgres    false    2640            =8           1259    730598 +   lc_tipologiaconstruccion_tipo_tipologia_idx    INDEX     �   CREATE INDEX lc_tipologiaconstruccion_tipo_tipologia_idx ON test_distinct_geoms.lc_tipologiaconstruccion USING btree (tipo_tipologia);
 L   DROP INDEX test_distinct_geoms.lc_tipologiaconstruccion_tipo_tipologia_idx;
       test_distinct_geoms         postgres    false    2640            L8           1259    730645 #   lc_unidadconstruccion_dimension_idx    INDEX     w   CREATE INDEX lc_unidadconstruccion_dimension_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (dimension);
 D   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_dimension_idx;
       test_distinct_geoms         postgres    false    2644            M8           1259    730647 #   lc_unidadconstruccion_geometria_idx    INDEX     v   CREATE INDEX lc_unidadconstruccion_geometria_idx ON test_distinct_geoms.lc_unidadconstruccion USING gist (geometria);
 D   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_geometria_idx;
       test_distinct_geoms         postgres    false    2644            N8           1259    730644 )   lc_unidadconstruccion_lc_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_lc_construccion_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (lc_construccion);
 J   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_lc_construccion_idx;
       test_distinct_geoms         postgres    false    2644            Q8           1259    730646 -   lc_unidadconstruccion_relacion_superficie_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_relacion_superficie_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (relacion_superficie);
 N   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_relacion_superficie_idx;
       test_distinct_geoms         postgres    false    2644            R8           1259    730640 +   lc_unidadconstruccion_tipo_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_construccion_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (tipo_construccion);
 L   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_tipo_construccion_idx;
       test_distinct_geoms         postgres    false    2644            S8           1259    730639 &   lc_unidadconstruccion_tipo_dominio_idx    INDEX     }   CREATE INDEX lc_unidadconstruccion_tipo_dominio_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (tipo_dominio);
 G   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_tipo_dominio_idx;
       test_distinct_geoms         postgres    false    2644            T8           1259    730642 %   lc_unidadconstruccion_tipo_planta_idx    INDEX     {   CREATE INDEX lc_unidadconstruccion_tipo_planta_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (tipo_planta);
 F   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_tipo_planta_idx;
       test_distinct_geoms         postgres    false    2644            U8           1259    730641 2   lc_unidadconstruccion_tipo_unidad_construccion_idx    INDEX     �   CREATE INDEX lc_unidadconstruccion_tipo_unidad_construccion_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (tipo_unidad_construccion);
 S   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_tipo_unidad_construccion_idx;
       test_distinct_geoms         postgres    false    2644            V8           1259    730643    lc_unidadconstruccion_uso_idx    INDEX     k   CREATE INDEX lc_unidadconstruccion_uso_idx ON test_distinct_geoms.lc_unidadconstruccion USING btree (uso);
 >   DROP INDEX test_distinct_geoms.lc_unidadconstruccion_uso_idx;
       test_distinct_geoms         postgres    false    2644            �7           1259    730220 (   snr_derecho_calidad_derecho_registro_idx    INDEX     �   CREATE INDEX snr_derecho_calidad_derecho_registro_idx ON test_distinct_geoms.snr_derecho USING btree (calidad_derecho_registro);
 I   DROP INDEX test_distinct_geoms.snr_derecho_calidad_derecho_registro_idx;
       test_distinct_geoms         postgres    false    2608            �7           1259    730221 "   snr_derecho_snr_fuente_derecho_idx    INDEX     u   CREATE INDEX snr_derecho_snr_fuente_derecho_idx ON test_distinct_geoms.snr_derecho USING btree (snr_fuente_derecho);
 C   DROP INDEX test_distinct_geoms.snr_derecho_snr_fuente_derecho_idx;
       test_distinct_geoms         postgres    false    2608            �7           1259    730222 #   snr_derecho_snr_predio_registro_idx    INDEX     w   CREATE INDEX snr_derecho_snr_predio_registro_idx ON test_distinct_geoms.snr_derecho USING btree (snr_predio_registro);
 D   DROP INDEX test_distinct_geoms.snr_derecho_snr_predio_registro_idx;
       test_distinct_geoms         postgres    false    2608            �7           1259    730229 9   snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx    INDEX     �   CREATE INDEX snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx ON test_distinct_geoms.snr_estructuramatriculamatriz USING btree (snr_predioregistro_matricula_inmobiliaria_matriz);
 Z   DROP INDEX test_distinct_geoms.snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_idx;
       test_distinct_geoms         postgres    false    2609            �7           1259    730239 +   snr_fuentecabidalinderos_tipo_documento_idx    INDEX     �   CREATE INDEX snr_fuentecabidalinderos_tipo_documento_idx ON test_distinct_geoms.snr_fuentecabidalinderos USING btree (tipo_documento);
 L   DROP INDEX test_distinct_geoms.snr_fuentecabidalinderos_tipo_documento_idx;
       test_distinct_geoms         postgres    false    2610            �7           1259    730249 $   snr_fuentederecho_tipo_documento_idx    INDEX     y   CREATE INDEX snr_fuentederecho_tipo_documento_idx ON test_distinct_geoms.snr_fuentederecho USING btree (tipo_documento);
 E   DROP INDEX test_distinct_geoms.snr_fuentederecho_tipo_documento_idx;
       test_distinct_geoms         postgres    false    2611            �7           1259    730270 +   snr_predioregistro_clase_suelo_registro_idx    INDEX     �   CREATE INDEX snr_predioregistro_clase_suelo_registro_idx ON test_distinct_geoms.snr_predioregistro USING btree (clase_suelo_registro);
 L   DROP INDEX test_distinct_geoms.snr_predioregistro_clase_suelo_registro_idx;
       test_distinct_geoms         postgres    false    2613            �7           1259    730271 0   snr_predioregistro_snr_fuente_cabidalinderos_idx    INDEX     �   CREATE INDEX snr_predioregistro_snr_fuente_cabidalinderos_idx ON test_distinct_geoms.snr_predioregistro USING btree (snr_fuente_cabidalinderos);
 Q   DROP INDEX test_distinct_geoms.snr_predioregistro_snr_fuente_cabidalinderos_idx;
       test_distinct_geoms         postgres    false    2613            �7           1259    730279 #   snr_titular_derecho_snr_derecho_idx    INDEX     w   CREATE INDEX snr_titular_derecho_snr_derecho_idx ON test_distinct_geoms.snr_titular_derecho USING btree (snr_derecho);
 D   DROP INDEX test_distinct_geoms.snr_titular_derecho_snr_derecho_idx;
       test_distinct_geoms         postgres    false    2614            �7           1259    730278 #   snr_titular_derecho_snr_titular_idx    INDEX     w   CREATE INDEX snr_titular_derecho_snr_titular_idx ON test_distinct_geoms.snr_titular_derecho USING btree (snr_titular);
 D   DROP INDEX test_distinct_geoms.snr_titular_derecho_snr_titular_idx;
       test_distinct_geoms         postgres    false    2614            �7           1259    730260    snr_titular_tipo_documento_idx    INDEX     m   CREATE INDEX snr_titular_tipo_documento_idx ON test_distinct_geoms.snr_titular USING btree (tipo_documento);
 ?   DROP INDEX test_distinct_geoms.snr_titular_tipo_documento_idx;
       test_distinct_geoms         postgres    false    2612            �7           1259    730259    snr_titular_tipo_persona_idx    INDEX     i   CREATE INDEX snr_titular_tipo_persona_idx ON test_distinct_geoms.snr_titular USING btree (tipo_persona);
 =   DROP INDEX test_distinct_geoms.snr_titular_tipo_persona_idx;
       test_distinct_geoms         postgres    false    2612            �8           1259    732570 &   t_ili2db_attrname_colowner_sqlname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_attrname_colowner_sqlname_key ON test_distinct_geoms.t_ili2db_attrname USING btree (colowner, sqlname);
 G   DROP INDEX test_distinct_geoms.t_ili2db_attrname_colowner_sqlname_key;
       test_distinct_geoms         postgres    false    2719    2719            W8           1259    730656    t_ili2db_basket_dataset_idx    INDEX     g   CREATE INDEX t_ili2db_basket_dataset_idx ON test_distinct_geoms.t_ili2db_basket USING btree (dataset);
 <   DROP INDEX test_distinct_geoms.t_ili2db_basket_dataset_idx;
       test_distinct_geoms         postgres    false    2645            Z8           1259    732568     t_ili2db_dataset_datasetname_key    INDEX     x   CREATE UNIQUE INDEX t_ili2db_dataset_datasetname_key ON test_distinct_geoms.t_ili2db_dataset USING btree (datasetname);
 A   DROP INDEX test_distinct_geoms.t_ili2db_dataset_datasetname_key;
       test_distinct_geoms         postgres    false    2646            a8           1259    732569 '   t_ili2db_model_iliversion_modelname_key    INDEX     �   CREATE UNIQUE INDEX t_ili2db_model_iliversion_modelname_key ON test_distinct_geoms.t_ili2db_model USING btree (iliversion, modelname);
 H   DROP INDEX test_distinct_geoms.t_ili2db_model_iliversion_modelname_key;
       test_distinct_geoms         postgres    false    2650    2650            �8           2606    731341 E   cc_metodooperacion cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.cc_metodooperacion
    ADD CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey FOREIGN KEY (col_transformacion_transformacion) REFERENCES test_distinct_geoms.col_transformacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.cc_metodooperacion DROP CONSTRAINT cc_metodooperacion_col_transfrmcn_trnsfrmcion_fkey;
       test_distinct_geoms       postgres    false    2556    14025    2560            �8           2606    731352 5   col_areavalor col_areavalor_lc_construccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_construccion_area_fkey FOREIGN KEY (lc_construccion_area) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_lc_construccion_area_fkey;
       test_distinct_geoms       postgres    false    2617    14267    2557            �8           2606    731362 ;   col_areavalor col_areavalor_lc_servidumbretransito_rea_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey FOREIGN KEY (lc_servidumbretransito_area) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_lc_servidumbretransito_rea_fkey;
       test_distinct_geoms       postgres    false    2643    2557    14410            �8           2606    731357 0   col_areavalor col_areavalor_lc_terreno_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_terreno_area_fkey FOREIGN KEY (lc_terreno_area) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_lc_terreno_area_fkey;
       test_distinct_geoms       postgres    false    2635    2557    14363            �8           2606    731367 ;   col_areavalor col_areavalor_lc_unidadconstruccion_area_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey FOREIGN KEY (lc_unidadconstruccion_area) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_lc_unidadconstruccion_area_fkey;
       test_distinct_geoms       postgres    false    2557    2644    14416            �8           2606    731346 %   col_areavalor col_areavalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_areavalor
    ADD CONSTRAINT col_areavalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.col_areatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_distinct_geoms.col_areavalor DROP CONSTRAINT col_areavalor_tipo_fkey;
       test_distinct_geoms       postgres    false    2557    2688    14511            T9           2606    731805 Q   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_grpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    2616    2584    14262            U9           2606    731800 O   col_baunitcomointeresado col_baunitcomointeresado_interesado_lc_interesado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_interesado_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2584    2626    14309            V9           2606    731810 =   col_baunitcomointeresado col_baunitcomointeresado_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado
    ADD CONSTRAINT col_baunitcomointeresado_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.col_baunitcomointeresado DROP CONSTRAINT col_baunitcomointeresado_unidad_fkey;
       test_distinct_geoms       postgres    false    2584    2631    14329            59           2606    731645 6   col_baunitfuente col_baunitfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente DROP CONSTRAINT col_baunitfuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2574    2624    14299            69           2606    731650 -   col_baunitfuente col_baunitfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente
    ADD CONSTRAINT col_baunitfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.col_baunitfuente DROP CONSTRAINT col_baunitfuente_unidad_fkey;
       test_distinct_geoms       postgres    false    2574    14329    2631            89           2606    731660 $   col_cclfuente col_cclfuente_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente
    ADD CONSTRAINT col_cclfuente_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_distinct_geoms.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente DROP CONSTRAINT col_cclfuente_ccl_fkey;
       test_distinct_geoms       postgres    false    2628    2576    14318            99           2606    731665 0   col_cclfuente col_cclfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente
    ADD CONSTRAINT col_cclfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_distinct_geoms.col_cclfuente DROP CONSTRAINT col_cclfuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2624    14299    2576            H9           2606    731740 .   col_clfuente col_clfuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_clfuente
    ADD CONSTRAINT col_clfuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.col_clfuente DROP CONSTRAINT col_clfuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    14299    2624    2580            ?9           2606    731695 "   col_masccl col_masccl_ccl_mas_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_ccl_mas_fkey FOREIGN KEY (ccl_mas) REFERENCES test_distinct_geoms.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_ccl_mas_fkey;
       test_distinct_geoms       postgres    false    14318    2578    2628            @9           2606    731700 1   col_masccl col_masccl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2617    14267    2578            A9           2606    731710 5   col_masccl col_masccl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_distinct_geoms       postgres    false    2643    2578    14410            B9           2606    731705 ,   col_masccl col_masccl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2635    14363    2578            C9           2606    731715 5   col_masccl col_masccl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_masccl
    ADD CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.col_masccl DROP CONSTRAINT col_masccl_ue_mas_lc_unidadcnstrccion_fkey;
       test_distinct_geoms       postgres    false    14416    2578    2644            M9           2606    731765 /   col_mascl col_mascl_ue_mas_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey FOREIGN KEY (ue_mas_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_distinct_geoms.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2582    14267    2617            N9           2606    731775 3   col_mascl col_mascl_ue_mas_lc_servidmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey FOREIGN KEY (ue_mas_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_distinct_geoms.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_servidmbrtrnsito_fkey;
       test_distinct_geoms       postgres    false    2643    14410    2582            O9           2606    731770 *   col_mascl col_mascl_ue_mas_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey FOREIGN KEY (ue_mas_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY test_distinct_geoms.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    14363    2635    2582            P9           2606    731780 3   col_mascl col_mascl_ue_mas_lc_unidadcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_mascl
    ADD CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey FOREIGN KEY (ue_mas_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_distinct_geoms.col_mascl DROP CONSTRAINT col_mascl_ue_mas_lc_unidadcnstrccion_fkey;
       test_distinct_geoms       postgres    false    2644    2582    14416            :9           2606    731670 (   col_menosccl col_menosccl_ccl_menos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_ccl_menos_fkey FOREIGN KEY (ccl_menos) REFERENCES test_distinct_geoms.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_ccl_menos_fkey;
       test_distinct_geoms       postgres    false    2577    14318    2628            ;9           2606    731675 7   col_menosccl col_menosccl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    14267    2577    2617            <9           2606    731685 9   col_menosccl col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_distinct_geoms       postgres    false    2577    14410    2643            =9           2606    731680 2   col_menosccl col_menosccl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    14363    2577    2635            >9           2606    731690 9   col_menosccl col_menosccl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menosccl
    ADD CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.col_menosccl DROP CONSTRAINT col_menosccl_ue_menos_lc_unddcnstrccion_fkey;
       test_distinct_geoms       postgres    false    2577    14416    2644            I9           2606    731745 5   col_menoscl col_menoscl_ue_menos_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey FOREIGN KEY (ue_menos_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2581    14267    2617            J9           2606    731755 7   col_menoscl col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey FOREIGN KEY (ue_menos_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_srvdmbrtrnsito_fkey;
       test_distinct_geoms       postgres    false    14410    2643    2581            K9           2606    731750 0   col_menoscl col_menoscl_ue_menos_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey FOREIGN KEY (ue_menos_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_distinct_geoms.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2581    2635    14363            L9           2606    731760 7   col_menoscl col_menoscl_ue_menos_lc_unddcnstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_menoscl
    ADD CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey FOREIGN KEY (ue_menos_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_menoscl DROP CONSTRAINT col_menoscl_ue_menos_lc_unddcnstrccion_fkey;
       test_distinct_geoms       postgres    false    14416    2581    2644            ]9           2606    731855 )   col_miembros col_miembros_agrupacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_miembros
    ADD CONSTRAINT col_miembros_agrupacion_fkey FOREIGN KEY (agrupacion) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_distinct_geoms.col_miembros DROP CONSTRAINT col_miembros_agrupacion_fkey;
       test_distinct_geoms       postgres    false    14262    2616    2587            ^9           2606    731850 9   col_miembros col_miembros_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_grpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    2616    2587    14262            _9           2606    731845 7   col_miembros col_miembros_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_miembros
    ADD CONSTRAINT col_miembros_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_miembros DROP CONSTRAINT col_miembros_interesado_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2626    2587    14309            D9           2606    731735 "   col_puntoccl col_puntoccl_ccl_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl
    ADD CONSTRAINT col_puntoccl_ccl_fkey FOREIGN KEY (ccl) REFERENCES test_distinct_geoms.lc_lindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 Y   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl DROP CONSTRAINT col_puntoccl_ccl_fkey;
       test_distinct_geoms       postgres    false    2628    2579    14318            E9           2606    731725 4   col_puntoccl col_puntoccl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_distinct_geoms.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntocontrol_fkey;
       test_distinct_geoms       postgres    false    14334    2632    2579            F9           2606    731720 9   col_puntoccl col_puntoccl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_distinct_geoms.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolevantaminto_fkey;
       test_distinct_geoms       postgres    false    2639    2579    14386            G9           2606    731730 4   col_puntoccl col_puntoccl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl
    ADD CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_distinct_geoms.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_distinct_geoms.col_puntoccl DROP CONSTRAINT col_puntoccl_punto_lc_puntolindero_fkey;
       test_distinct_geoms       postgres    false    2579    2633    14347            Q9           2606    731790 2   col_puntocl col_puntocl_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_distinct_geoms.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntocontrol_fkey;
       test_distinct_geoms       postgres    false    14334    2583    2632            R9           2606    731785 7   col_puntocl col_puntocl_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_distinct_geoms.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolevantaminto_fkey;
       test_distinct_geoms       postgres    false    2583    2639    14386            S9           2606    731795 2   col_puntocl col_puntocl_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntocl
    ADD CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_distinct_geoms.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.col_puntocl DROP CONSTRAINT col_puntocl_punto_lc_puntolindero_fkey;
       test_distinct_geoms       postgres    false    14347    2633    2583            ,9           2606    731600 4   col_puntofuente col_puntofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente
    ADD CONSTRAINT col_puntofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente DROP CONSTRAINT col_puntofuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2624    2572    14299            -9           2606    731610 :   col_puntofuente col_puntofuente_punto_lc_puntocontrol_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey FOREIGN KEY (punto_lc_puntocontrol) REFERENCES test_distinct_geoms.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntocontrol_fkey;
       test_distinct_geoms       postgres    false    14334    2572    2632            .9           2606    731605 ?   col_puntofuente col_puntofuente_punto_lc_puntolevantaminto_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey FOREIGN KEY (punto_lc_puntolevantamiento) REFERENCES test_distinct_geoms.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolevantaminto_fkey;
       test_distinct_geoms       postgres    false    2572    14386    2639            /9           2606    731615 :   col_puntofuente col_puntofuente_punto_lc_puntolindero_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente
    ADD CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey FOREIGN KEY (punto_lc_puntolindero) REFERENCES test_distinct_geoms.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_distinct_geoms.col_puntofuente DROP CONSTRAINT col_puntofuente_punto_lc_puntolindero_fkey;
       test_distinct_geoms       postgres    false    2572    2633    14347            )9           2606    731585 @   col_relacionfuente col_relacionfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuente
    ADD CONSTRAINT col_relacionfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_distinct_geoms.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuente DROP CONSTRAINT col_relacionfuente_fuente_administrativa_fkey;
       test_distinct_geoms       postgres    false    14294    2570    2623            79           2606    731655 K   col_relacionfuenteuespacial col_relacionfuenteuespcial_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuenteuespacial
    ADD CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.col_relacionfuenteuespacial DROP CONSTRAINT col_relacionfuenteuespcial_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2575    14299    2624            W9           2606    731815 F   col_responsablefuente col_responsablefuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_distinct_geoms.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente DROP CONSTRAINT col_responsablefuente_fuente_administrativa_fkey;
       test_distinct_geoms       postgres    false    14294    2585    2623            X9           2606    731825 K   col_responsablefuente col_responsablefuente_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_grpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    2616    2585    14262            Y9           2606    731820 I   col_responsablefuente col_responsablefuente_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente
    ADD CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.col_responsablefuente DROP CONSTRAINT col_responsablefuente_interesado_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2626    2585    14309            !9           2606    731545 6   col_rrrfuente col_rrrfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_distinct_geoms.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente DROP CONSTRAINT col_rrrfuente_fuente_administrativa_fkey;
       test_distinct_geoms       postgres    false    2568    2623    14294            "9           2606    731555 /   col_rrrfuente col_rrrfuente_rrr_lc_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey FOREIGN KEY (rrr_lc_derecho) REFERENCES test_distinct_geoms.lc_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_derecho_fkey;
       test_distinct_geoms       postgres    false    2620    14282    2568            #9           2606    731550 3   col_rrrfuente col_rrrfuente_rrr_lc_restriccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente
    ADD CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey FOREIGN KEY (rrr_lc_restriccion) REFERENCES test_distinct_geoms.lc_restriccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_distinct_geoms.col_rrrfuente DROP CONSTRAINT col_rrrfuente_rrr_lc_restriccion_fkey;
       test_distinct_geoms       postgres    false    2568    14357    2634            Z9           2606    731830 <   col_topografofuente col_topografofuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente
    ADD CONSTRAINT col_topografofuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente DROP CONSTRAINT col_topografofuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2624    2586    14299            [9           2606    731840 G   col_topografofuente col_topografofuente_topografo_lc_agrpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey FOREIGN KEY (topografo_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_agrpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    2616    2586    14262            \9           2606    731835 D   col_topografofuente col_topografofuente_topografo_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente
    ADD CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey FOREIGN KEY (topografo_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_distinct_geoms.col_topografofuente DROP CONSTRAINT col_topografofuente_topografo_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2626    2586    14309            9           2606    731439 E   col_transformacion col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey FOREIGN KEY (lc_puntocontrol_transformacion_y_resultado) REFERENCES test_distinct_geoms.lc_puntocontrol(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntcntrl_tmcn_y_rsltado_fkey;
       test_distinct_geoms       postgres    false    2560    2632    14334            9           2606    731444 E   col_transformacion col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolindero_transformacion_y_resultado) REFERENCES test_distinct_geoms.lc_puntolindero(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlndr_trmcn_y_rsltado_fkey;
       test_distinct_geoms       postgres    false    2633    2560    14347            9           2606    731449 E   col_transformacion col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_transformacion
    ADD CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey FOREIGN KEY (lc_puntolevantamiento_transformacion_y_resultado) REFERENCES test_distinct_geoms.lc_puntolevantamiento(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.col_transformacion DROP CONSTRAINT col_transformacion_lc_pntlvntmntmcn_y_rsltado_fkey;
       test_distinct_geoms       postgres    false    2639    14386    2560            $9           2606    731580 %   col_uebaunit col_uebaunit_baunit_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_baunit_fkey FOREIGN KEY (baunit) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_baunit_fkey;
       test_distinct_geoms       postgres    false    2631    2569    14329            %9           2606    731560 1   col_uebaunit col_uebaunit_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2569    14267    2617            &9           2606    731570 8   col_uebaunit col_uebaunit_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_servidumbretransito_fkey;
       test_distinct_geoms       postgres    false    14410    2569    2643            '9           2606    731565 ,   col_uebaunit col_uebaunit_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2569    14363    2635            (9           2606    731575 7   col_uebaunit col_uebaunit_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit
    ADD CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_uebaunit DROP CONSTRAINT col_uebaunit_ue_lc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    2644    14416    2569            09           2606    731640 .   col_uefuente col_uefuente_fuente_espacial_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_fuente_espacial_fkey FOREIGN KEY (fuente_espacial) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_fuente_espacial_fkey;
       test_distinct_geoms       postgres    false    2573    14299    2624            19           2606    731620 1   col_uefuente col_uefuente_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2617    2573    14267            29           2606    731630 8   col_uefuente col_uefuente_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_servidumbretransito_fkey;
       test_distinct_geoms       postgres    false    2573    2643    14410            39           2606    731625 ,   col_uefuente col_uefuente_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2573    2635    14363            49           2606    731635 7   col_uefuente col_uefuente_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_uefuente
    ADD CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.col_uefuente DROP CONSTRAINT col_uefuente_ue_lc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    14416    2573    2644            9           2606    731525 6   col_ueuegrupo col_ueuegrupo_parte_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey FOREIGN KEY (parte_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    14267    2617    2567            9           2606    731535 ;   col_ueuegrupo col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey FOREIGN KEY (parte_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_servidumbrtrnsito_fkey;
       test_distinct_geoms       postgres    false    14410    2567    2643            9           2606    731530 1   col_ueuegrupo col_ueuegrupo_parte_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey FOREIGN KEY (parte_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    14363    2635    2567             9           2606    731540 ;   col_ueuegrupo col_ueuegrupo_parte_lc_unidadconstrccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo
    ADD CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey FOREIGN KEY (parte_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.col_ueuegrupo DROP CONSTRAINT col_ueuegrupo_parte_lc_unidadconstrccion_fkey;
       test_distinct_geoms       postgres    false    2567    2644    14416            *9           2606    731590 <   col_unidadfuente col_unidadfuente_fuente_administrativa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_fuente_administrativa_fkey FOREIGN KEY (fuente_administrativa) REFERENCES test_distinct_geoms.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente DROP CONSTRAINT col_unidadfuente_fuente_administrativa_fkey;
       test_distinct_geoms       postgres    false    2571    14294    2623            +9           2606    731595 -   col_unidadfuente col_unidadfuente_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente
    ADD CONSTRAINT col_unidadfuente_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.col_unidadfuente DROP CONSTRAINT col_unidadfuente_unidad_fkey;
       test_distinct_geoms       postgres    false    14329    2571    2631            9           2606    731505 >   col_volumenvalor col_volumenvalor_lc_construccion_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey FOREIGN KEY (lc_construccion_volumen) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_construccion_volumen_fkey;
       test_distinct_geoms       postgres    false    2617    14267    2566            9           2606    731515 A   col_volumenvalor col_volumenvalor_lc_servidumbretranst_vlmen_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey FOREIGN KEY (lc_servidumbretransito_volumen) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_servidumbretranst_vlmen_fkey;
       test_distinct_geoms       postgres    false    2643    14410    2566            9           2606    731510 9   col_volumenvalor col_volumenvalor_lc_terreno_volumen_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey FOREIGN KEY (lc_terreno_volumen) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_terreno_volumen_fkey;
       test_distinct_geoms       postgres    false    2566    14363    2635            9           2606    731520 A   col_volumenvalor col_volumenvalor_lc_unidadconstruccin_vlmen_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey FOREIGN KEY (lc_unidadconstruccion_volumen) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_lc_unidadconstruccin_vlmen_fkey;
       test_distinct_geoms       postgres    false    2566    2644    14416            9           2606    731500 +   col_volumenvalor col_volumenvalor_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor
    ADD CONSTRAINT col_volumenvalor_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.col_volumentipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_distinct_geoms.col_volumenvalor DROP CONSTRAINT col_volumenvalor_tipo_fkey;
       test_distinct_geoms       postgres    false    14545    2566    2705            9           2606    731494 5   extarchivo extarchivo_lc_fuenteespacl_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extarchivo
    ADD CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteespacial_ext_archivo_id) REFERENCES test_distinct_geoms.lc_fuenteespacial(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.extarchivo DROP CONSTRAINT extarchivo_lc_fuenteespacl_xt_rchv_id_fkey;
       test_distinct_geoms       postgres    false    2624    2565    14299            9           2606    731489 5   extarchivo extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extarchivo
    ADD CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey FOREIGN KEY (lc_fuenteadministrtiva_ext_archivo_id) REFERENCES test_distinct_geoms.lc_fuenteadministrativa(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.extarchivo DROP CONSTRAINT extarchivo_lc_funtdmnstrtv_xt_rchv_id_fkey;
       test_distinct_geoms       postgres    false    14294    2565    2623            9           2606    731484 5   extarchivo extarchivo_snr_fuentecabdlndrs_rchivo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extarchivo
    ADD CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey FOREIGN KEY (snr_fuentecabidalndros_archivo) REFERENCES test_distinct_geoms.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.extarchivo DROP CONSTRAINT extarchivo_snr_fuentecabdlndrs_rchivo_fkey;
       test_distinct_geoms       postgres    false    2610    2565    14239            �8           2606    731377 2   extdireccion extdireccion_clase_via_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_clase_via_principal_fkey FOREIGN KEY (clase_via_principal) REFERENCES test_distinct_geoms.extdireccion_clase_via_principal(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_clase_via_principal_fkey;
       test_distinct_geoms       postgres    false    14555    2558    2710             9           2606    731397 9   extdireccion extdireccion_extinteresado_ext_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey FOREIGN KEY (extinteresado_ext_direccion_id) REFERENCES test_distinct_geoms.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_extinteresado_ext_drccn_id_fkey;
       test_distinct_geoms       postgres    false    14037    2558    2563            9           2606    731392 9   extdireccion extdireccion_extndddfccnfsc_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey FOREIGN KEY (extunidadedificcnfsica_ext_direccion_id) REFERENCES test_distinct_geoms.extunidadedificacionfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_extndddfccnfsc_xt_drccn_id_fkey;
       test_distinct_geoms       postgres    false    2561    2558    14027            9           2606    731402 9   extdireccion extdireccion_lc_construccin_xt_drccn_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey FOREIGN KEY (lc_construccion_ext_direccion_id) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_lc_construccin_xt_drccn_id_fkey;
       test_distinct_geoms       postgres    false    2558    2617    14267            9           2606    731422 9   extdireccion extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey FOREIGN KEY (lc_unidadconstruccion_ext_direccion_id) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_lc_nddcnstrccn_xt_drccn_id_fkey;
       test_distinct_geoms       postgres    false    2558    14416    2644            9           2606    731407 2   extdireccion extdireccion_lc_predio_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_lc_predio_direccion_fkey FOREIGN KEY (lc_predio_direccion) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_lc_predio_direccion_fkey;
       test_distinct_geoms       postgres    false    14329    2631    2558            9           2606    731417 9   extdireccion extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey FOREIGN KEY (lc_servidumbretransito_ext_direccion_id) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_lc_srvdmbrtrnt_xt_drccn_id_fkey;
       test_distinct_geoms       postgres    false    14410    2643    2558            9           2606    731412 9   extdireccion extdireccion_lc_terreno_ext_direccin_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey FOREIGN KEY (lc_terreno_ext_direccion_id) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_lc_terreno_ext_direccin_id_fkey;
       test_distinct_geoms       postgres    false    2558    14363    2635            9           2606    731382 ,   extdireccion extdireccion_sector_ciudad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_sector_ciudad_fkey FOREIGN KEY (sector_ciudad) REFERENCES test_distinct_geoms.extdireccion_sector_ciudad(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_sector_ciudad_fkey;
       test_distinct_geoms       postgres    false    2681    2558    14497            9           2606    731387 ,   extdireccion extdireccion_sector_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_sector_predio_fkey FOREIGN KEY (sector_predio) REFERENCES test_distinct_geoms.extdireccion_sector_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_sector_predio_fkey;
       test_distinct_geoms       postgres    false    2558    14441    2653            	9           2606    731372 -   extdireccion extdireccion_tipo_direccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extdireccion
    ADD CONSTRAINT extdireccion_tipo_direccion_fkey FOREIGN KEY (tipo_direccion) REFERENCES test_distinct_geoms.extdireccion_tipo_direccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.extdireccion DROP CONSTRAINT extdireccion_tipo_direccion_fkey;
       test_distinct_geoms       postgres    false    2558    14535    2700            9           2606    731469 ;   extinteresado extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.extinteresado
    ADD CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey FOREIGN KEY (extredserviciosfisica_ext_interesado_administrador_id) REFERENCES test_distinct_geoms.extredserviciosfisica(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.extinteresado DROP CONSTRAINT extinteresado_extrdsrvcsfscd_dmnstrdr_id_fkey;
       test_distinct_geoms       postgres    false    2564    2563    14039            9           2606    731474 ;   extinteresado extinteresado_lc_agrupacionntrsds_xt_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extinteresado
    ADD CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey FOREIGN KEY (lc_agrupacionintersdos_ext_pid) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.extinteresado DROP CONSTRAINT extinteresado_lc_agrupacionntrsds_xt_pid_fkey;
       test_distinct_geoms       postgres    false    14262    2563    2616            9           2606    731479 6   extinteresado extinteresado_lc_interesado_ext_pid_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.extinteresado
    ADD CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey FOREIGN KEY (lc_interesado_ext_pid) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.extinteresado DROP CONSTRAINT extinteresado_lc_interesado_ext_pid_fkey;
       test_distinct_geoms       postgres    false    14309    2626    2563            
9           2606    731429 1   fraccion fraccion_col_miembros_participacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.fraccion
    ADD CONSTRAINT fraccion_col_miembros_participacion_fkey FOREIGN KEY (col_miembros_participacion) REFERENCES test_distinct_geoms.col_miembros(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.fraccion DROP CONSTRAINT fraccion_col_miembros_participacion_fkey;
       test_distinct_geoms       postgres    false    14160    2587    2559            9           2606    731434 1   fraccion fraccion_lc_predio_copropidd_cfcnte_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.fraccion
    ADD CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey FOREIGN KEY (lc_predio_copropiedad_coeficiente) REFERENCES test_distinct_geoms.lc_predio_copropiedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.fraccion DROP CONSTRAINT fraccion_lc_predio_copropidd_cfcnte_fkey;
       test_distinct_geoms       postgres    false    14400    2559    2641            `9           2606    731861 W   gc_calificacionunidadconstruccion gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.gc_calificacionunidadconstruccion
    ADD CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey FOREIGN KEY (gc_unidadconstruccion) REFERENCES test_distinct_geoms.gc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.gc_calificacionunidadconstruccion DROP CONSTRAINT gc_calificacnnddcnstrccion_gc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    2604    14216    2589            a9           2606    731877 .   gc_construccion gc_construccion_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_construccion
    ADD CONSTRAINT gc_construccion_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.gc_construccion DROP CONSTRAINT gc_construccion_gc_predio_fkey;
       test_distinct_geoms       postgres    false    2593    14223    2606            b9           2606    731866 6   gc_construccion gc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_construccion
    ADD CONSTRAINT gc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_distinct_geoms.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.gc_construccion DROP CONSTRAINT gc_construccion_tipo_construccion_fkey;
       test_distinct_geoms       postgres    false    2659    2593    14453            m9           2606    731956 ,   gc_copropiedad gc_copropiedad_gc_matriz_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_matriz_fkey FOREIGN KEY (gc_matriz) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_matriz_fkey;
       test_distinct_geoms       postgres    false    2606    2607    14223            n9           2606    731961 ,   gc_copropiedad gc_copropiedad_gc_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad
    ADD CONSTRAINT gc_copropiedad_gc_unidad_fkey FOREIGN KEY (gc_unidad) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.gc_copropiedad DROP CONSTRAINT gc_copropiedad_gc_unidad_fkey;
       test_distinct_geoms       postgres    false    14223    2607    2606            c9           2606    731889 8   gc_datosphcondominio gc_datosphcondominio_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_datosphcondominio
    ADD CONSTRAINT gc_datosphcondominio_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.gc_datosphcondominio DROP CONSTRAINT gc_datosphcondominio_gc_predio_fkey;
       test_distinct_geoms       postgres    false    14223    2594    2606            d9           2606    731899 9   gc_datostorreph gc_datostorreph_gc_datosphcondominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_datostorreph
    ADD CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey FOREIGN KEY (gc_datosphcondominio) REFERENCES test_distinct_geoms.gc_datosphcondominio(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.gc_datostorreph DROP CONSTRAINT gc_datostorreph_gc_datosphcondominio_fkey;
       test_distinct_geoms       postgres    false    2595    2594    14183            e9           2606    731904 9   gc_direccion gc_direccion_gc_prediocatastro_dirccnes_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_direccion
    ADD CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey FOREIGN KEY (gc_prediocatastro_direcciones) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.gc_direccion DROP CONSTRAINT gc_direccion_gc_prediocatastro_dirccnes_fkey;
       test_distinct_geoms       postgres    false    2606    14223    2596            f9           2606    731909 ?   gc_estadopredio gc_estadopredio_gc_prediocatastr_std_prdio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_estadopredio
    ADD CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey FOREIGN KEY (gc_prediocatastro_estado_predio) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_distinct_geoms.gc_estadopredio DROP CONSTRAINT gc_estadopredio_gc_prediocatastr_std_prdio_fkey;
       test_distinct_geoms       postgres    false    2597    2606    14223            k9           2606    731945 9   gc_prediocatastro gc_prediocatastro_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_distinct_geoms.gc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_condicion_predio_fkey;
       test_distinct_geoms       postgres    false    2606    2698    14531            l9           2606    731950 B   gc_prediocatastro gc_prediocatastro_sistema_procedencia_datos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro
    ADD CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey FOREIGN KEY (sistema_procedencia_datos) REFERENCES test_distinct_geoms.gc_sistemaprocedenciadatostipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_distinct_geoms.gc_prediocatastro DROP CONSTRAINT gc_prediocatastro_sistema_procedencia_datos_fkey;
       test_distinct_geoms       postgres    false    2606    2673    14481            g9           2606    731914 5   gc_propietario gc_propietario_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_propietario
    ADD CONSTRAINT gc_propietario_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.gc_propietario DROP CONSTRAINT gc_propietario_gc_predio_catastro_fkey;
       test_distinct_geoms       postgres    false    2600    2606    14223            h9           2606    731922 $   gc_terreno gc_terreno_gc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_terreno
    ADD CONSTRAINT gc_terreno_gc_predio_fkey FOREIGN KEY (gc_predio) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_distinct_geoms.gc_terreno DROP CONSTRAINT gc_terreno_gc_predio_fkey;
       test_distinct_geoms       postgres    false    2603    2606    14223            i9           2606    731940 @   gc_unidadconstruccion gc_unidadconstruccion_gc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey FOREIGN KEY (gc_construccion) REFERENCES test_distinct_geoms.gc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_gc_construccion_fkey;
       test_distinct_geoms       postgres    false    2604    2593    14179            j9           2606    731927 B   gc_unidadconstruccion gc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion
    ADD CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_distinct_geoms.gc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_distinct_geoms.gc_unidadconstruccion DROP CONSTRAINT gc_unidadconstruccion_tipo_construccion_fkey;
       test_distinct_geoms       postgres    false    2604    2659    14453            �8           2606    731329 K   gm_surface2dlistvalue gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.gm_surface2dlistvalue
    ADD CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey FOREIGN KEY (gm_multisurface2d_geometry) REFERENCES test_distinct_geoms.gm_multisurface2d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.gm_surface2dlistvalue DROP CONSTRAINT gm_surface2dlistvalue_gm_multisurface2d_geometry_fkey;
       test_distinct_geoms       postgres    false    13985    2553    2552            �8           2606    731334 K   gm_surface3dlistvalue gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.gm_surface3dlistvalue
    ADD CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey FOREIGN KEY (gm_multisurface3d_geometry) REFERENCES test_distinct_geoms.gm_multisurface3d(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.gm_surface3dlistvalue DROP CONSTRAINT gm_surface3dlistvalue_gm_multisurface3d_geometry_fkey;
       test_distinct_geoms       postgres    false    2554    2555    13991            9           2606    731464 &   imagen imagen_extinteresado_firma_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.imagen
    ADD CONSTRAINT imagen_extinteresado_firma_fkey FOREIGN KEY (extinteresado_firma) REFERENCES test_distinct_geoms.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY test_distinct_geoms.imagen DROP CONSTRAINT imagen_extinteresado_firma_fkey;
       test_distinct_geoms       postgres    false    2563    2562    14037            9           2606    731459 +   imagen imagen_extinteresado_fotografia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.imagen
    ADD CONSTRAINT imagen_extinteresado_fotografia_fkey FOREIGN KEY (extinteresado_fotografia) REFERENCES test_distinct_geoms.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_distinct_geoms.imagen DROP CONSTRAINT imagen_extinteresado_fotografia_fkey;
       test_distinct_geoms       postgres    false    2563    2562    14037            9           2606    731454 -   imagen imagen_extinteresado_huell_dctlar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.imagen
    ADD CONSTRAINT imagen_extinteresado_huell_dctlar_fkey FOREIGN KEY (extinteresado_huella_dactilar) REFERENCES test_distinct_geoms.extinteresado(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.imagen DROP CONSTRAINT imagen_extinteresado_huell_dctlar_fkey;
       test_distinct_geoms       postgres    false    2562    2563    14037            {9           2606    732032 ;   ini_predioinsumos ini_predioinsumos_gc_predio_catastro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey FOREIGN KEY (gc_predio_catastro) REFERENCES test_distinct_geoms.gc_prediocatastro(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_gc_predio_catastro_fkey;
       test_distinct_geoms       postgres    false    2606    14223    2615            |9           2606    732037 <   ini_predioinsumos ini_predioinsumos_snr_predio_juridico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey FOREIGN KEY (snr_predio_juridico) REFERENCES test_distinct_geoms.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_snr_predio_juridico_fkey;
       test_distinct_geoms       postgres    false    2615    14250    2613            }9           2606    732027 <   ini_predioinsumos ini_predioinsumos_tipo_emparejamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos
    ADD CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey FOREIGN KEY (tipo_emparejamiento) REFERENCES test_distinct_geoms.ini_emparejamientotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.ini_predioinsumos DROP CONSTRAINT ini_predioinsumos_tipo_emparejamiento_fkey;
       test_distinct_geoms       postgres    false    14463    2664    2615            ~9           2606    732042 ;   lc_agrupacioninteresados lc_agrupacioninteresados_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_agrupacioninteresados
    ADD CONSTRAINT lc_agrupacioninteresados_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.col_grupointeresadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.lc_agrupacioninteresados DROP CONSTRAINT lc_agrupacioninteresados_tipo_fkey;
       test_distinct_geoms       postgres    false    2675    14485    2616            �9           2606    732373 R   lc_calificacionconvencional lc_calificacionconvencinal_lc_unidad_construccion_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_lc_unidad_construccion_fkey;
       test_distinct_geoms       postgres    false    2636    2644    14416            �9           2606    732367 J   lc_calificacionconvencional lc_calificacionconvencinal_tipo_calificar_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional
    ADD CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey FOREIGN KEY (tipo_calificar) REFERENCES test_distinct_geoms.lc_calificartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionconvencional DROP CONSTRAINT lc_calificacionconvencinal_tipo_calificar_fkey;
       test_distinct_geoms       postgres    false    2636    2707    14549            �9           2606    732383 T   lc_calificacionnoconvencional lc_calificacionnoconvncnal_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_lc_unidad_construccion_fkey;
       test_distinct_geoms       postgres    false    2637    2644    14416            �9           2606    732378 H   lc_calificacionnoconvencional lc_calificacionnoconvncnal_tipo_anexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional
    ADD CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey FOREIGN KEY (tipo_anexo) REFERENCES test_distinct_geoms.lc_anexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY test_distinct_geoms.lc_calificacionnoconvencional DROP CONSTRAINT lc_calificacionnoconvncnal_tipo_anexo_fkey;
       test_distinct_geoms       postgres    false    2637    2697    14529            9           2606    732065 .   lc_construccion lc_construccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_construccion
    ADD CONSTRAINT lc_construccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_distinct_geoms.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.lc_construccion DROP CONSTRAINT lc_construccion_dimension_fkey;
       test_distinct_geoms       postgres    false    2617    14469    2667            �9           2606    732070 8   lc_construccion lc_construccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_construccion
    ADD CONSTRAINT lc_construccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_distinct_geoms.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.lc_construccion DROP CONSTRAINT lc_construccion_relacion_superficie_fkey;
       test_distinct_geoms       postgres    false    2682    2617    14499            �9           2606    732047 6   lc_construccion lc_construccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_distinct_geoms.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY test_distinct_geoms.lc_construccion DROP CONSTRAINT lc_construccion_tipo_construccion_fkey;
       test_distinct_geoms       postgres    false    2709    14553    2617            �9           2606    732052 1   lc_construccion lc_construccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_construccion
    ADD CONSTRAINT lc_construccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_distinct_geoms.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY test_distinct_geoms.lc_construccion DROP CONSTRAINT lc_construccion_tipo_dominio_fkey;
       test_distinct_geoms       postgres    false    14543    2617    2704            �9           2606    732085 =   lc_contactovisita lc_contactovisita_lc_datos_adicionales_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey FOREIGN KEY (lc_datos_adicionales) REFERENCES test_distinct_geoms.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita DROP CONSTRAINT lc_contactovisita_lc_datos_adicionales_fkey;
       test_distinct_geoms       postgres    false    2618    2638    14374            �9           2606    732080 <   lc_contactovisita lc_contactovisita_relacion_con_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_relacion_con_predio_fkey FOREIGN KEY (relacion_con_predio) REFERENCES test_distinct_geoms.lc_relacionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita DROP CONSTRAINT lc_contactovisita_relacion_con_predio_fkey;
       test_distinct_geoms       postgres    false    14483    2618    2674            �9           2606    732075 C   lc_contactovisita lc_contactovisita_tipo_documento_quien_tndio_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita
    ADD CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey FOREIGN KEY (tipo_documento_quien_atendio) REFERENCES test_distinct_geoms.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_distinct_geoms.lc_contactovisita DROP CONSTRAINT lc_contactovisita_tipo_documento_quien_tndio_fkey;
       test_distinct_geoms       postgres    false    2618    14515    2690            �9           2606    732098 8   lc_datosphcondominio lc_datosphcondominio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_datosphcondominio
    ADD CONSTRAINT lc_datosphcondominio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.lc_datosphcondominio DROP CONSTRAINT lc_datosphcondominio_lc_predio_fkey;
       test_distinct_geoms       postgres    false    2631    14329    2619            �9           2606    732404 Y   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_categoria_suelo_fkey    FK CONSTRAINT     
  ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey FOREIGN KEY (categoria_suelo) REFERENCES test_distinct_geoms.lc_categoriasuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_categoria_suelo_fkey;
       test_distinct_geoms       postgres    false    2638    2663    14461            �9           2606    732399 U   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_clase_suelo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey FOREIGN KEY (clase_suelo) REFERENCES test_distinct_geoms.lc_clasesuelotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_clase_suelo_fkey;
       test_distinct_geoms       postgres    false    2638    2672    14479            �9           2606    732394 _   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_destinacion_economica_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey FOREIGN KEY (destinacion_economica) REFERENCES test_distinct_geoms.lc_destinacioneconomicatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_destinacion_economica_fkey;
       test_distinct_geoms       postgres    false    2638    2660    14455            �9           2606    732419 S   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_lc_predio_fkey;
       test_distinct_geoms       postgres    false    2638    2631    14329            �9           2606    732389 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey    FK CONSTRAINT     8  ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey FOREIGN KEY (procedimiento_catastral_registral) REFERENCES test_distinct_geoms.lc_procedimientocatastralregistraltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_procedimint_ctstrl_rgstral_fkey;
       test_distinct_geoms       postgres    false    2638    2671    14477            �9           2606    732414 Z   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_resultado_visita_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey FOREIGN KEY (resultado_visita) REFERENCES test_distinct_geoms.lc_resultadovisitatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_resultado_visita_fkey;
       test_distinct_geoms       postgres    false    2638    2678    14491            �9           2606    732409 d   lc_datosadicionaleslevantamientocatastral lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey    FK CONSTRAINT     %  ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral
    ADD CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey FOREIGN KEY (tipo_documento_reconocedor) REFERENCES test_distinct_geoms.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_datosadicionaleslevantamientocatastral DROP CONSTRAINT lc_datsdcnlslvntmntctstral_tipo_documento_reconocedor_fkey;
       test_distinct_geoms       postgres    false    2638    2690    14515            �9           2606    732114 5   lc_derecho lc_derecho_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_grpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    14262    2616    2620            �9           2606    732109 3   lc_derecho lc_derecho_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_derecho
    ADD CONSTRAINT lc_derecho_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY test_distinct_geoms.lc_derecho DROP CONSTRAINT lc_derecho_interesado_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2620    2626    14309            �9           2606    732103    lc_derecho lc_derecho_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_derecho
    ADD CONSTRAINT lc_derecho_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.lc_derechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 V   ALTER TABLE ONLY test_distinct_geoms.lc_derecho DROP CONSTRAINT lc_derecho_tipo_fkey;
       test_distinct_geoms       postgres    false    2669    2620    14473            �9           2606    732119 !   lc_derecho lc_derecho_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_derecho
    ADD CONSTRAINT lc_derecho_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 X   ALTER TABLE ONLY test_distinct_geoms.lc_derecho DROP CONSTRAINT lc_derecho_unidad_fkey;
       test_distinct_geoms       postgres    false    14329    2631    2620            �9           2606    732124 O   lc_estructuranovedadfmi lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadfmi
    ADD CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_fmi) REFERENCES test_distinct_geoms.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadfmi DROP CONSTRAINT lc_estructuranovedadfmi_lc_dtsdcnlstmstrl_nvdd_fmi_fkey;
       test_distinct_geoms       postgres    false    2621    2638    14374            �9           2606    732134 \   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey    FK CONSTRAINT     B  ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey FOREIGN KEY (lc_dtsdcnlstmntctstral_novedad_numeros_prediales) REFERENCES test_distinct_geoms.lc_datosadicionaleslevantamientocatastral(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_lc_dtsdcnlstmd_nmrs_prdles_fkey;
       test_distinct_geoms       postgres    false    2638    14374    2622            �9           2606    732129 N   lc_estructuranovedadnumeropredial lc_estructuranvddnmrprdial_tipo_novedad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial
    ADD CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey FOREIGN KEY (tipo_novedad) REFERENCES test_distinct_geoms.lc_estructuranovedadnumeropredial_tipo_novedad(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_estructuranovedadnumeropredial DROP CONSTRAINT lc_estructuranvddnmrprdial_tipo_novedad_fkey;
       test_distinct_geoms       postgres    false    14439    2622    2652            �9           2606    732144 J   lc_fuenteadministrativa lc_fuenteadministrativa_estado_disponibilidad_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_distinct_geoms.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_estado_disponibilidad_fkey;
       test_distinct_geoms       postgres    false    2623    2680    14495            �9           2606    732139 9   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.lc_fuenteadministrativatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_fkey;
       test_distinct_geoms       postgres    false    2623    2701    14537            �9           2606    732149 C   lc_fuenteadministrativa lc_fuenteadministrativa_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa
    ADD CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_distinct_geoms.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteadministrativa DROP CONSTRAINT lc_fuenteadministrativa_tipo_principal_fkey;
       test_distinct_geoms       postgres    false    2665    2623    14465            �9           2606    732159 >   lc_fuenteespacial lc_fuenteespacial_estado_disponibilidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey FOREIGN KEY (estado_disponibilidad) REFERENCES test_distinct_geoms.col_estadodisponibilidadtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_estado_disponibilidad_fkey;
       test_distinct_geoms       postgres    false    2624    2680    14495            �9           2606    732154 -   lc_fuenteespacial lc_fuenteespacial_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.col_fuenteespacialtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_fkey;
       test_distinct_geoms       postgres    false    2624    2670    14475            �9           2606    732164 7   lc_fuenteespacial lc_fuenteespacial_tipo_principal_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial
    ADD CONSTRAINT lc_fuenteespacial_tipo_principal_fkey FOREIGN KEY (tipo_principal) REFERENCES test_distinct_geoms.ci_forma_presentacion_codigo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_fuenteespacial DROP CONSTRAINT lc_fuenteespacial_tipo_principal_fkey;
       test_distinct_geoms       postgres    false    2624    2665    14465            �9           2606    732169 A   lc_grupocalificacion lc_grupocalificacion_clase_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey FOREIGN KEY (clase_calificacion) REFERENCES test_distinct_geoms.lc_clasecalificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_clase_calificacion_fkey;
       test_distinct_geoms       postgres    false    2625    2711    14557            �9           2606    732174 ;   lc_grupocalificacion lc_grupocalificacion_conservacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_conservacion_fkey FOREIGN KEY (conservacion) REFERENCES test_distinct_geoms.lc_estadoconservaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_conservacion_fkey;
       test_distinct_geoms       postgres    false    2625    2717    14569            �9           2606    732180 I   lc_grupocalificacion lc_grupocalificacion_lc_calificacion_convencnal_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion
    ADD CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey FOREIGN KEY (lc_calificacion_convencional) REFERENCES test_distinct_geoms.lc_calificacionconvencional(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_grupocalificacion DROP CONSTRAINT lc_grupocalificacion_lc_calificacion_convencnal_fkey;
       test_distinct_geoms       postgres    false    2625    14368    2636            �9           2606    732200 -   lc_interesado lc_interesado_grupo_etnico_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesado
    ADD CONSTRAINT lc_interesado_grupo_etnico_fkey FOREIGN KEY (grupo_etnico) REFERENCES test_distinct_geoms.lc_grupoetnicotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 d   ALTER TABLE ONLY test_distinct_geoms.lc_interesado DROP CONSTRAINT lc_interesado_grupo_etnico_fkey;
       test_distinct_geoms       postgres    false    2668    2626    14471            �9           2606    732195 %   lc_interesado lc_interesado_sexo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesado
    ADD CONSTRAINT lc_interesado_sexo_fkey FOREIGN KEY (sexo) REFERENCES test_distinct_geoms.lc_sexotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_distinct_geoms.lc_interesado DROP CONSTRAINT lc_interesado_sexo_fkey;
       test_distinct_geoms       postgres    false    14501    2626    2683            �9           2606    732190 /   lc_interesado lc_interesado_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_distinct_geoms.lc_interesadodocumentotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_distinct_geoms.lc_interesado DROP CONSTRAINT lc_interesado_tipo_documento_fkey;
       test_distinct_geoms       postgres    false    2626    2690    14515            �9           2606    732185 %   lc_interesado lc_interesado_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesado
    ADD CONSTRAINT lc_interesado_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.lc_interesadotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 \   ALTER TABLE ONLY test_distinct_geoms.lc_interesado DROP CONSTRAINT lc_interesado_tipo_fkey;
       test_distinct_geoms       postgres    false    2677    2626    14489            �9           2606    732205 >   lc_interesadocontacto lc_interesadocontacto_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_interesadocontacto
    ADD CONSTRAINT lc_interesadocontacto_lc_interesado_fkey FOREIGN KEY (lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.lc_interesadocontacto DROP CONSTRAINT lc_interesadocontacto_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2626    2627    14309            �9           2606    732217 F   lc_objetoconstruccion lc_objetoconstruccion_lc_grupo_calificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey FOREIGN KEY (lc_grupo_calificacion) REFERENCES test_distinct_geoms.lc_grupocalificacion(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_lc_grupo_calificacion_fkey;
       test_distinct_geoms       postgres    false    2625    2629    14306            �9           2606    732211 I   lc_objetoconstruccion lc_objetoconstruccion_tipo_objeto_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion
    ADD CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey FOREIGN KEY (tipo_objeto_construccion) REFERENCES test_distinct_geoms.lc_objetoconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_objetoconstruccion DROP CONSTRAINT lc_objetoconstruccion_tipo_objeto_construccion_fkey;
       test_distinct_geoms       postgres    false    2716    2629    14567            �9           2606    732230 G   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_lc_predio_fkey;
       test_distinct_geoms       postgres    false    2631    2630    14329            �9           2606    732222 I   lc_ofertasmercadoinmobiliario lc_ofertasmercadoinmoblrio_tipo_oferta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario
    ADD CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey FOREIGN KEY (tipo_oferta) REFERENCES test_distinct_geoms.lc_ofertatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_ofertasmercadoinmobiliario DROP CONSTRAINT lc_ofertasmercadoinmoblrio_tipo_oferta_fkey;
       test_distinct_geoms       postgres    false    2658    14451    2630            �9           2606    732241 )   lc_predio lc_predio_condicion_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio
    ADD CONSTRAINT lc_predio_condicion_predio_fkey FOREIGN KEY (condicion_predio) REFERENCES test_distinct_geoms.lc_condicionprediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_distinct_geoms.lc_predio DROP CONSTRAINT lc_predio_condicion_predio_fkey;
       test_distinct_geoms       postgres    false    2631    2712    14559            �9           2606    732487 <   lc_predio_copropiedad lc_predio_copropiedad_copropiedad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_copropiedad_fkey FOREIGN KEY (copropiedad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_copropiedad_fkey;
       test_distinct_geoms       postgres    false    2641    2631    14329            �9           2606    732482 7   lc_predio_copropiedad lc_predio_copropiedad_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad
    ADD CONSTRAINT lc_predio_copropiedad_predio_fkey FOREIGN KEY (predio) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_predio_copropiedad DROP CONSTRAINT lc_predio_copropiedad_predio_fkey;
       test_distinct_geoms       postgres    false    2641    2631    14329            �9           2606    732492 N   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_ini_predio_insumos_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey FOREIGN KEY (ini_predio_insumos) REFERENCES test_distinct_geoms.ini_predioinsumos(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_ini_predio_insumos_fkey;
       test_distinct_geoms       postgres    false    2642    2615    14258            �9           2606    732497 E   lc_predio_ini_predioinsumos lc_predio_ini_predioinsmos_lc_predio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos
    ADD CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey FOREIGN KEY (lc_predio) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.lc_predio_ini_predioinsumos DROP CONSTRAINT lc_predio_ini_predioinsmos_lc_predio_fkey;
       test_distinct_geoms       postgres    false    2642    2631    14329            �9           2606    732236    lc_predio lc_predio_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_predio
    ADD CONSTRAINT lc_predio_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.lc_prediotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 T   ALTER TABLE ONLY test_distinct_geoms.lc_predio DROP CONSTRAINT lc_predio_tipo_fkey;
       test_distinct_geoms       postgres    false    2691    2631    14517            �9           2606    732263 5   lc_puntocontrol lc_puntocontrol_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_distinct_geoms.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_metodoproduccion_fkey;
       test_distinct_geoms       postgres    false    2632    2715    14565            �9           2606    732258 ;   lc_puntocontrol lc_puntocontrol_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_distinct_geoms.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_posicion_interpolacion_fkey;
       test_distinct_geoms       postgres    false    2679    2632    14493            �9           2606    732246 .   lc_puntocontrol lc_puntocontrol_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_distinct_geoms.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_puntotipo_fkey;
       test_distinct_geoms       postgres    false    14503    2632    2684            �9           2606    732251 7   lc_puntocontrol lc_puntocontrol_tipo_punto_control_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey FOREIGN KEY (tipo_punto_control) REFERENCES test_distinct_geoms.lc_puntocontroltipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_tipo_punto_control_fkey;
       test_distinct_geoms       postgres    false    2708    2632    14551            �9           2606    732268 7   lc_puntocontrol lc_puntocontrol_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2632    2617    14267            �9           2606    732278 >   lc_puntocontrol lc_puntocontrol_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_servidumbretransito_fkey;
       test_distinct_geoms       postgres    false    2632    2643    14410            �9           2606    732273 2   lc_puntocontrol lc_puntocontrol_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2632    2635    14363            �9           2606    732283 =   lc_puntocontrol lc_puntocontrol_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol
    ADD CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.lc_puntocontrol DROP CONSTRAINT lc_puntocontrol_ue_lc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    2632    2644    14416            �9           2606    732434 C   lc_puntolevantamiento lc_puntolevantamiento_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_distinct_geoms.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_fotoidentificacion_fkey;
       test_distinct_geoms       postgres    false    2639    2666    14467            �9           2606    732446 A   lc_puntolevantamiento lc_puntolevantamiento_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_distinct_geoms.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_metodoproduccion_fkey;
       test_distinct_geoms       postgres    false    2639    2715    14565            �9           2606    732441 G   lc_puntolevantamiento lc_puntolevantamiento_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_distinct_geoms.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_posicion_interpolacion_fkey;
       test_distinct_geoms       postgres    false    2639    2679    14493            �9           2606    732424 :   lc_puntolevantamiento lc_puntolevantamiento_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_distinct_geoms.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_puntotipo_fkey;
       test_distinct_geoms       postgres    false    2639    2684    14503            �9           2606    732429 I   lc_puntolevantamiento lc_puntolevantamiento_tipo_punto_levantamiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey FOREIGN KEY (tipo_punto_levantamiento) REFERENCES test_distinct_geoms.lc_puntolevtipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_tipo_punto_levantamiento_fkey;
       test_distinct_geoms       postgres    false    2639    2695    14525            �9           2606    732451 C   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2639    2617    14267            �9           2606    732461 J   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_servidumbretransito_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_servidumbretransito_fkey;
       test_distinct_geoms       postgres    false    2639    2643    14410            �9           2606    732456 >   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2639    2635    14363            �9           2606    732466 I   lc_puntolevantamiento lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento
    ADD CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolevantamiento DROP CONSTRAINT lc_puntolevantamiento_ue_lc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    2639    2644    14416            �9           2606    732293 ,   lc_puntolindero lc_puntolindero_acuerdo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_acuerdo_fkey FOREIGN KEY (acuerdo) REFERENCES test_distinct_geoms.lc_acuerdotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_acuerdo_fkey;
       test_distinct_geoms       postgres    false    2633    2696    14527            �9           2606    732298 7   lc_puntolindero lc_puntolindero_fotoidentificacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_fotoidentificacion_fkey FOREIGN KEY (fotoidentificacion) REFERENCES test_distinct_geoms.lc_fotoidentificaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_fotoidentificacion_fkey;
       test_distinct_geoms       postgres    false    2633    2666    14467            �9           2606    732310 5   lc_puntolindero lc_puntolindero_metodoproduccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_metodoproduccion_fkey FOREIGN KEY (metodoproduccion) REFERENCES test_distinct_geoms.col_metodoproducciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_metodoproduccion_fkey;
       test_distinct_geoms       postgres    false    2633    2715    14565            �9           2606    732305 ;   lc_puntolindero lc_puntolindero_posicion_interpolacion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey FOREIGN KEY (posicion_interpolacion) REFERENCES test_distinct_geoms.col_interpolaciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_posicion_interpolacion_fkey;
       test_distinct_geoms       postgres    false    2633    2679    14493            �9           2606    732288 .   lc_puntolindero lc_puntolindero_puntotipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_puntotipo_fkey FOREIGN KEY (puntotipo) REFERENCES test_distinct_geoms.lc_puntotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_puntotipo_fkey;
       test_distinct_geoms       postgres    false    2633    2684    14503            �9           2606    732315 7   lc_puntolindero lc_puntolindero_ue_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey FOREIGN KEY (ue_lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    2633    2617    14267            �9           2606    732325 >   lc_puntolindero lc_puntolindero_ue_lc_servidumbretransito_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey FOREIGN KEY (ue_lc_servidumbretransito) REFERENCES test_distinct_geoms.lc_servidumbretransito(t_id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_servidumbretransito_fkey;
       test_distinct_geoms       postgres    false    2633    2643    14410            �9           2606    732320 2   lc_puntolindero lc_puntolindero_ue_lc_terreno_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey FOREIGN KEY (ue_lc_terreno) REFERENCES test_distinct_geoms.lc_terreno(t_id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_terreno_fkey;
       test_distinct_geoms       postgres    false    2633    2635    14363            �9           2606    732330 =   lc_puntolindero lc_puntolindero_ue_lc_unidadconstruccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero
    ADD CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey FOREIGN KEY (ue_lc_unidadconstruccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.lc_puntolindero DROP CONSTRAINT lc_puntolindero_ue_lc_unidadconstruccion_fkey;
       test_distinct_geoms       postgres    false    2633    2644    14416            �9           2606    732345 =   lc_restriccion lc_restriccion_interesado_lc_grpcnntrsdos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey FOREIGN KEY (interesado_lc_agrupacioninteresados) REFERENCES test_distinct_geoms.lc_agrupacioninteresados(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_grpcnntrsdos_fkey;
       test_distinct_geoms       postgres    false    14262    2616    2634            �9           2606    732340 ;   lc_restriccion lc_restriccion_interesado_lc_interesado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion
    ADD CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey FOREIGN KEY (interesado_lc_interesado) REFERENCES test_distinct_geoms.lc_interesado(t_id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion DROP CONSTRAINT lc_restriccion_interesado_lc_interesado_fkey;
       test_distinct_geoms       postgres    false    2634    2626    14309            �9           2606    732335 '   lc_restriccion lc_restriccion_tipo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion
    ADD CONSTRAINT lc_restriccion_tipo_fkey FOREIGN KEY (tipo) REFERENCES test_distinct_geoms.lc_restricciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 ^   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion DROP CONSTRAINT lc_restriccion_tipo_fkey;
       test_distinct_geoms       postgres    false    2634    2693    14521            �9           2606    732350 )   lc_restriccion lc_restriccion_unidad_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion
    ADD CONSTRAINT lc_restriccion_unidad_fkey FOREIGN KEY (unidad) REFERENCES test_distinct_geoms.lc_predio(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_distinct_geoms.lc_restriccion DROP CONSTRAINT lc_restriccion_unidad_fkey;
       test_distinct_geoms       postgres    false    2634    2631    14329            �9           2606    732503 <   lc_servidumbretransito lc_servidumbretransito_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_distinct_geoms.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_dimension_fkey;
       test_distinct_geoms       postgres    false    2643    2667    14469            �9           2606    732508 F   lc_servidumbretransito lc_servidumbretransito_relacion_superficie_fkey    FK CONSTRAINT        ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito
    ADD CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_distinct_geoms.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY test_distinct_geoms.lc_servidumbretransito DROP CONSTRAINT lc_servidumbretransito_relacion_superficie_fkey;
       test_distinct_geoms       postgres    false    2643    14499    2682            �9           2606    732357 $   lc_terreno lc_terreno_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_terreno
    ADD CONSTRAINT lc_terreno_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_distinct_geoms.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY test_distinct_geoms.lc_terreno DROP CONSTRAINT lc_terreno_dimension_fkey;
       test_distinct_geoms       postgres    false    2635    2667    14469            �9           2606    732362 .   lc_terreno lc_terreno_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_terreno
    ADD CONSTRAINT lc_terreno_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_distinct_geoms.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY test_distinct_geoms.lc_terreno DROP CONSTRAINT lc_terreno_relacion_superficie_fkey;
       test_distinct_geoms       postgres    false    2635    2682    14499            �9           2606    732476 M   lc_tipologiaconstruccion lc_tipologiaconstruccion_lc_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey FOREIGN KEY (lc_unidad_construccion) REFERENCES test_distinct_geoms.lc_unidadconstruccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_lc_unidad_construccion_fkey;
       test_distinct_geoms       postgres    false    2640    2644    14416            �9           2606    732471 E   lc_tipologiaconstruccion lc_tipologiaconstruccion_tipo_tipologia_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion
    ADD CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey FOREIGN KEY (tipo_tipologia) REFERENCES test_distinct_geoms.lc_tipologiatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.lc_tipologiaconstruccion DROP CONSTRAINT lc_tipologiaconstruccion_tipo_tipologia_fkey;
       test_distinct_geoms       postgres    false    2640    2703    14541            �9           2606    732553 :   lc_unidadconstruccion lc_unidadconstruccion_dimension_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_dimension_fkey FOREIGN KEY (dimension) REFERENCES test_distinct_geoms.col_dimensiontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_dimension_fkey;
       test_distinct_geoms       postgres    false    14469    2667    2644            �9           2606    732548 @   lc_unidadconstruccion lc_unidadconstruccion_lc_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey FOREIGN KEY (lc_construccion) REFERENCES test_distinct_geoms.lc_construccion(t_id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_lc_construccion_fkey;
       test_distinct_geoms       postgres    false    14267    2644    2617            �9           2606    732558 D   lc_unidadconstruccion lc_unidadconstruccion_relacion_superficie_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey FOREIGN KEY (relacion_superficie) REFERENCES test_distinct_geoms.col_relacionsuperficietipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_relacion_superficie_fkey;
       test_distinct_geoms       postgres    false    14499    2644    2682            �9           2606    732518 B   lc_unidadconstruccion lc_unidadconstruccion_tipo_construccion_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey FOREIGN KEY (tipo_construccion) REFERENCES test_distinct_geoms.lc_construcciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_construccion_fkey;
       test_distinct_geoms       postgres    false    2644    2709    14553            �9           2606    732513 =   lc_unidadconstruccion lc_unidadconstruccion_tipo_dominio_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey FOREIGN KEY (tipo_dominio) REFERENCES test_distinct_geoms.lc_dominioconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_dominio_fkey;
       test_distinct_geoms       postgres    false    14543    2644    2704            �9           2606    732528 <   lc_unidadconstruccion lc_unidadconstruccion_tipo_planta_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey FOREIGN KEY (tipo_planta) REFERENCES test_distinct_geoms.lc_construccionplantatipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_planta_fkey;
       test_distinct_geoms       postgres    false    2644    2685    14505            �9           2606    732523 I   lc_unidadconstruccion lc_unidadconstruccion_tipo_unidad_construccion_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey FOREIGN KEY (tipo_unidad_construccion) REFERENCES test_distinct_geoms.lc_unidadconstrucciontipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_tipo_unidad_construccion_fkey;
       test_distinct_geoms       postgres    false    2644    2687    14509            �9           2606    732538 4   lc_unidadconstruccion lc_unidadconstruccion_uso_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion
    ADD CONSTRAINT lc_unidadconstruccion_uso_fkey FOREIGN KEY (uso) REFERENCES test_distinct_geoms.lc_usouconstipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY test_distinct_geoms.lc_unidadconstruccion DROP CONSTRAINT lc_unidadconstruccion_uso_fkey;
       test_distinct_geoms       postgres    false    2644    2699    14533            o9           2606    731967 5   snr_derecho snr_derecho_calidad_derecho_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_derecho
    ADD CONSTRAINT snr_derecho_calidad_derecho_registro_fkey FOREIGN KEY (calidad_derecho_registro) REFERENCES test_distinct_geoms.snr_calidadderechotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY test_distinct_geoms.snr_derecho DROP CONSTRAINT snr_derecho_calidad_derecho_registro_fkey;
       test_distinct_geoms       postgres    false    2702    2608    14539            p9           2606    731972 /   snr_derecho snr_derecho_snr_fuente_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_fuente_derecho_fkey FOREIGN KEY (snr_fuente_derecho) REFERENCES test_distinct_geoms.snr_fuentederecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY test_distinct_geoms.snr_derecho DROP CONSTRAINT snr_derecho_snr_fuente_derecho_fkey;
       test_distinct_geoms       postgres    false    14242    2608    2611            q9           2606    731977 0   snr_derecho snr_derecho_snr_predio_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_derecho
    ADD CONSTRAINT snr_derecho_snr_predio_registro_fkey FOREIGN KEY (snr_predio_registro) REFERENCES test_distinct_geoms.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY test_distinct_geoms.snr_derecho DROP CONSTRAINT snr_derecho_snr_predio_registro_fkey;
       test_distinct_geoms       postgres    false    14250    2608    2613            r9           2606    731982 X   snr_estructuramatriculamatriz snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey    FK CONSTRAINT     '  ALTER TABLE ONLY test_distinct_geoms.snr_estructuramatriculamatriz
    ADD CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey FOREIGN KEY (snr_predioregistro_matricula_inmobiliaria_matriz) REFERENCES test_distinct_geoms.snr_predioregistro(t_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY test_distinct_geoms.snr_estructuramatriculamatriz DROP CONSTRAINT snr_estructuramatriclmtriz_snr_prdrgstr_l_nmblr_mtriz_fkey;
       test_distinct_geoms       postgres    false    14250    2609    2613            s9           2606    731987 E   snr_fuentecabidalinderos snr_fuentecabidalinderos_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_fuentecabidalinderos
    ADD CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_distinct_geoms.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY test_distinct_geoms.snr_fuentecabidalinderos DROP CONSTRAINT snr_fuentecabidalinderos_tipo_documento_fkey;
       test_distinct_geoms       postgres    false    2610    14443    2654            t9           2606    731992 7   snr_fuentederecho snr_fuentederecho_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_fuentederecho
    ADD CONSTRAINT snr_fuentederecho_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_distinct_geoms.snr_fuentetipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY test_distinct_geoms.snr_fuentederecho DROP CONSTRAINT snr_fuentederecho_tipo_documento_fkey;
       test_distinct_geoms       postgres    false    2654    14443    2611            w9           2606    732007 ?   snr_predioregistro snr_predioregistro_clase_suelo_registro_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey FOREIGN KEY (clase_suelo_registro) REFERENCES test_distinct_geoms.snr_clasepredioregistrotipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro DROP CONSTRAINT snr_predioregistro_clase_suelo_registro_fkey;
       test_distinct_geoms       postgres    false    14547    2613    2706            x9           2606    732012 D   snr_predioregistro snr_predioregistro_snr_fuente_cabidalinderos_fkey    FK CONSTRAINT       ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro
    ADD CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey FOREIGN KEY (snr_fuente_cabidalinderos) REFERENCES test_distinct_geoms.snr_fuentecabidalinderos(t_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY test_distinct_geoms.snr_predioregistro DROP CONSTRAINT snr_predioregistro_snr_fuente_cabidalinderos_fkey;
       test_distinct_geoms       postgres    false    2613    2610    14239            y9           2606    732022 8   snr_titular_derecho snr_titular_derecho_snr_derecho_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_derecho_fkey FOREIGN KEY (snr_derecho) REFERENCES test_distinct_geoms.snr_derecho(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_derecho_fkey;
       test_distinct_geoms       postgres    false    2614    2608    14232            z9           2606    732017 8   snr_titular_derecho snr_titular_derecho_snr_titular_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho
    ADD CONSTRAINT snr_titular_derecho_snr_titular_fkey FOREIGN KEY (snr_titular) REFERENCES test_distinct_geoms.snr_titular(t_id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY test_distinct_geoms.snr_titular_derecho DROP CONSTRAINT snr_titular_derecho_snr_titular_fkey;
       test_distinct_geoms       postgres    false    2612    14245    2614            u9           2606    732002 +   snr_titular snr_titular_tipo_documento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_titular
    ADD CONSTRAINT snr_titular_tipo_documento_fkey FOREIGN KEY (tipo_documento) REFERENCES test_distinct_geoms.snr_documentotitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY test_distinct_geoms.snr_titular DROP CONSTRAINT snr_titular_tipo_documento_fkey;
       test_distinct_geoms       postgres    false    2714    14563    2612            v9           2606    731997 )   snr_titular snr_titular_tipo_persona_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.snr_titular
    ADD CONSTRAINT snr_titular_tipo_persona_fkey FOREIGN KEY (tipo_persona) REFERENCES test_distinct_geoms.snr_personatitulartipo(t_id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY test_distinct_geoms.snr_titular DROP CONSTRAINT snr_titular_tipo_persona_fkey;
       test_distinct_geoms       postgres    false    14445    2612    2655            �9           2606    732563 ,   t_ili2db_basket t_ili2db_basket_dataset_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_basket
    ADD CONSTRAINT t_ili2db_basket_dataset_fkey FOREIGN KEY (dataset) REFERENCES test_distinct_geoms.t_ili2db_dataset(t_id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY test_distinct_geoms.t_ili2db_basket DROP CONSTRAINT t_ili2db_basket_dataset_fkey;
       test_distinct_geoms       postgres    false    2646    2645    14428            c:      x������ � �      �:   �   x����
�0��{�=�l�պ%�^	c�)����z�^�R��v����HNQ��<�ω7�l���^��;�/��+3��ᡭtc�̀@܉F��_�T�����0X�
_sL��qC��!�spR���wcg�oDl�0��T�ļ:ъ+����rc�F�`�B>�p����C� А�v      �:     x�͑Aj�0E��)�&����qK7i
�t0y�ƌ�@��e]��X%�MI�uc����?_��:[U�M��j^��E�N�Q�"����Y�m��"���F����^��
��%ԗ;��Q��B��frۖ  �1ZN��N��d� l�Q0C��ݷ���B0�ϡ�֓� u���́��c�Q������H{���>�
~>�������\�����g/��Ў=�o��L���X�򏺁�������`�2�������{4,�8�g��!�RA~����cS�y����      d:      x������ � �      :      x������ � �      u:      x������ � �      w:      x������ � �      {:      x������ � �      �:   �   x���ˊ�0���S��Z/u9(�Vq%��D�@�)���n�����ڢ��ݹ�|��������z�ݻ�r%1���Rj�A%�
$���_Jc9�>TI�K����Z_u�w�4N� m��f�Ѭ�|$��V�V�f����adH�7��㐦v�qoH��"�:ǜ1Gd+/���A�`�F��!2�=�4P�x.��?�o�Q��V��E��׿GĹ�A��{�����M�"J���      �:   j   x�340��qt�w���3�7���J�sR��@�.���yř�y!���1~��@!#3�*{xs�X�����TA�ch5ЄT�8�K��!�AY\1z\\\ ֟G�      �:   �   x���M�0F��stm��B㊄�v4MjKh�>���[.fA�\���o&3/FIwɡ��iqY��QV3��oý���D�R+qRp�Ϣ�$�H@b��XY�;��9�p�QYl��AAC�̭j�@��(���!ܰ��0�,P
I���lt�'�#������^��[���r�����s���5zHw6�=���ȋw       ;   �   x�350��qt�w���3�7���J�sR��@���%�)�A�)��Ee�ə��!���1~��9�y�@Y/��ej`L�����y��PS]�J��f��m��[ijQb�Kj<Lb<XX!%U�!�ɔl��9�K���CY\1z\\\ z1r      �:   �   x�3�4��qt�w���3�7���J�sR��@���%E��%�E�!���1~���E����� N���҂d�9}2�R���$S!f�^�S��WHE�ZeI�UF�!�%��aL.#�M2��/���O�L��������� w5p      �:   �  x����R1�k�S�07�����O�L*f<�n�et�C:y&y�Tti�b��;�3&��I�o���d�ev���^��^-�.�벻Iֱ�Y�L�{^4�x�}0����tvw3;�]�M-.��{Z9�E����m���D�i���4�5��}�Vԛ ӫ����Q�S�^D%�	Zk��y�5-��Z��e�]5G�[;{��SgB/69\w�c)���d|S#�q���m��W��m53�#���c�:�QF�?x������I�q�}A���M<�S����/��[x�������0Yu�"2PxE�8N
�H]�̿~"R�i���H���/�ba��>[P ��sLN#����U��[	e���ؙ� m�Q~��K~�hV�ITr�6rD���5ےC�������y\      �:   %  x��T�n�@����2�GkX�!@��He�����[���Q��U������h!R$�$�13;�bqV�ϗ���u���:)ǧM���*��xz��驸�'Ņ��dBu]��Hը�l
�s���)p��R��*���"t��WG�B+�ɩ�cm��-o�b�(����TS��FD�Q��?m��2ĉ[�v��fy~;Wu�zj�ԁt�������f�U�8�k��<@P&�S��'�a�&"�%�Mq�#5'wO�Z��N:�k-�D嫔�����a�?I��ޚ���9iЉ��
�u�|�[#R-�	Co��$�}�>p�q�7��	�aׁم.p�S��!&SUH=��h�c"�ZG��b�)�zS�1;�1�b�O��:^$;�̈�C�G�"|9v<|x���j��a���S�A����jU��<jfF.Q&�����9-���GN)+��-�񞹲�v2��;e��,��d��Q�8-VN�`u��=Ec�8�#���}8��Yq���T]M	<�{y�	�w�?����l��i��      �:   �   x����
�@�������Y,"H�D�@�u�	ە��z��z_,]�����0��1�3g��4���c�N<[%� �n�)Ŗk��h&X
�8�6�oX4���,��7'���*©6��<����.z}-��D:���q1�zeȨ�X��~=4G&�
ճE�����TJ'y��Z��
:��z u���a�c�����5�C      �:   |   x�345��qt�w���3�7���J�sR��@��y%�E�9�ə�y!���1~�����9�)`N���Ԙ9�¹�)���E�P��
�A�&�X`�l�Of^j"�9��B��b���� �.Z�      �:   �   x�32��qt�w���3�7���J�sR��@�������F��!���1~��.��Y�y%`^2��ȈT�9C�!&AY\FƤ�b�\Z�ZT���
1
��edB�yƜ.����y�ə)0o�p��qqq \�\�      y:      x������ � �      }:      x������ � �      x:      x������ � �      |:      x������ � �      ;   #  x��SKjA]K��a��k��@BV���]#*�T��#�q��B+a.�ꙑcBV��~��Ss��^��n��o�ͯ��j=F���uM>PV�ߣ�����^����b�4[���k�KM����O�B����
S$�"GN�v��S
в���ذ� #�9��[	�]{&�,]�}��^�l>���B����4^�tS� x��-;t<�
��9Y���%goG8�Ĩ����h��r����$�-�K$I#��D�Y�ʆ2��R���.�K=c�c��Ԯ��a���0C�
;��
P��`��g�`���	�b�V"W�cdL�L�;�}�xĬ�'���X����LE�9��^�������+�P����_��/o�4[r'�ͩ�Ӏ{���@��o�t��~��U��?b5��h�q?c�va�ȸ~4�h*��Y,��n�K��tU���j�렧�1���e����ޤ�e�{K(� �+��'1�ó���a���q)t4�29Ѡ��l���#�<Z6mt�<��
�q1�(j��n�\.� ��/      �:      x������ � �      z:      x������ � �      ~:      x������ � �      s:      x������ � �      �:   `   x�3��qt�w���3�7���J�sR��@��y%�!���1~����y%E�9 N�ˈc9�K��z�� x\Ƥd��7������ �F@�      �:   �   x�34���qt�w���3�7���J�sR��@�A�)��Ee�ə��!���1~���%E�@% ^�wx3��ehlI������������#K��q�M�0҈(�Z4'b*P@���J��`C26�I�IM��-���Ƀ��*zx3H�+F��� �$tB      �:   f   x�32���qt�w���3�7���J�sR��@�A���%E�!���1~��A�E�9 f��edl@�9���EI�y���l�I�$�d���Á��b���� �rA�      q:      x������ � �      v:      x������ � �      �:   �   x�343��qt�w���3�7���J�sR��@�A�9�ə�y���Ei�ə�!���1~���y�A�ŉy%� ~��P�s��m�!���Ԝ|��eP�\��5�\�T�bt1B h�)٦s��A����b���� ��p�      �:      x������ � �      o:      x������ � �      �:      x������ � �      g:      x������ � �      p:      x������ � �      t:      x������ � �      n:      x������ � �      �:   e  x���Mn�0���)|����e�.) �]!E�� KI���Eo�5��b�h�.R�<o�����	Z$/���j����(l����C+�U� IH�*&� �N���c5G�%����5�C�nm~�pv9['&�-/ge�ښ��h�3F+Ah%����
�&����[w���If����Rqb9�2]�`9�� Wח/��.�!{���� �%(-����qu�S�^��~�~@k�����\���x�M<AIin�Ӭyè<v�ѩͲ\c02�B�؛y�^.�e&��);�'ܚ�R#o��Ꚋ�����GyS����p�~������h'��5�-��L���0؇A|a�0�      �:   g   x��0��qt�w���3�7���J�sR��@��y�)�)�)�i�ɉə�y!���1~������E%�)`~*��\�9=�R2�2SJs &��b���� n:�      r:      x������ � �      �:   j   x�313��qt�w���3�7���J�sR�����9���y!���1~���i�ə�9 N���̘4�9�s�KsS�!�!s�ƙ�f��I�$(�+F��� ��Dk      m:      x������ � �      l:      x������ � �      e:      x������ � �      �:   �   x����n�0F���	�@1c�t�Cńd]SY�����'mpew������;84�Q��A]*U��4jg���9�6�m��7�bQ}�}���	Jh&���D���u��J�/���Y'�L���x�.Atm"6s,�=�]A3���C�'�qQ��z�:�!?fǚ��B�Z�5"wY[�4�]Ck��˺�k�s"]�W@�O&�Q��cKt에y�w�k�{�:~      �:   }   x�34���qt�w���3�7���J�sR��\+J\2�R��3���S�K��3KSS8c�88��JRA�48���Ԓl9�K� �A\�fd�f��Zs�4ϐl�9�S�\1z\\\ (+d�      �:   z   x�34��qt�w���3�7���J�sR��\+J\2�R��3���S�K���RS2�9c�88��JRA�48��Аl9�K� �A\�Fdf��Zs��ehL�qƜ��p�`L�=... hd?      �:   f   x�312��qt�w���3�7���J�sR��\+J\2�R��3���B2���\�?NN�⒢��ҢĔD�H����	�r���c�ᗯ��fM� �xB�      j:      x������ � �      k:      x������ � �      h:      x������ � �      f:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:   �  x��V;OA�ϿbK�,c P&(
����N��,��1���t�)�)("����2�kcLH������~�7���p'�&UXSqf\h�'�<��<8o�..�����8&S�R��-V�>�eW�l'�2��Ƥf�f+��Y����:KʐrԠ�)��mLu�FU��l�� f���<�M0���m5_�Ck⌑��9L,*>Y�!�M-N�(O8U�/�V��������ͮ����<9_a�6�f�g`=0O}5��g^���iO�"����*��K�wx�W��:���BY�)���O��܂JWZ����8�.�ʖ�!�a]�_�Z��X�Q��2٠FMσ�������C�޽x����U>k�x5l+�k������o��`���|[�:AڜkL����,?�}�����u�W���/��� ��,˕Xc,<���i[�����ws"5�$�1ev{o��1z6���J�H喂�N�1(�r 6S��J�>�>��M�O���������elxu�%'l���49ܠ��N�R��Jj���a����r��`��C3��b����H��[�C��~(bu �Qv�!�l ��fR[���L�U��?��-�m^�������W�������;�e@�kN(yH��n���S��pT�!*�8�j|�-���Lp"��(>RE����CN��"S��X�c�E�g�s�L�S3I��bxY�'a�|���U���p�9���ՠ���f'      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:   �   x�342�.M��OI�ɏ��+.��/�wO-.�/�wN,I,.)J̉3�7�sw��,.I�M(�ONMI�K�LtI,�/�,����4��s1�8�*��3��s��q��(�V 9�צ �@�p�K{�;:�qYPѵ����I�9�B�x�������=... �o�      �:      x������ � �      �:      x������ � �      �:   �   x����
�0���S�dl�v^v�z��fP�mW�|_�ԋ�'�[��O�R�E��3t��>���n1.t�%�ӇJ�E�轷LC�qGK~gO$�N���}f�2�>I�*�d1��sB� ���FeP�H���=p+��r�PYo�)d���w%:���e���s����<^���+v��B����F�      �:      x������ � �      `:      x������ � �      b:      x������ � �      _:      x������ � �      a:      x������ � �      i:      x������ � �      �:   6  x����J�0���)�M?v5D�+�īAɶ(��)Y�r��b��"����)i~�@�����6{Y�2�[�j�N����6���</��V7��7���[��6
�P�t�_ƚPt��ɺx$3��U��$��٪J	�����Y���]Kkȃ�{%*מ��ͱ=|j��V�ө���8f	lL���1�+��Y
s��y�h��w�`���cO������8����V=�9�8p�S�� `���3��M�cNa�g�~���l#!LĜ�{"~�F�!!�)L^�H��
��D�0��f�1��Sn�      �:      x������ � �      �:   �   x�326���OI�ɏw,��LNL��ϋ�qt�u����I-�wN,�3�7��q�wL.M-J��,����4��
�8ip�kEfqI�Bi�B"DD�8?�(U!'Q� �839���<��
�y%�\FƦ�;���%�8�H|�CR�������� �t^�      �:      x������ � �      �:   �  x��\M��F=˿�/؀2�(����řd�'l�@h�=c&[�`�Oٛ�9�䖫�ؾ�n~���fwo�E�{�]���hg�M^�@Dr�j�>�C��_}������د�x��~��]�߭_��|���o'��7q·<���NnD��O��8�􊆭of4�a��$�������x�����HY �^���x���L�ʾI�$��<�xP�'"�S����%���9ۊ�����ď�^��f��=p8ۇAJ��Ɉ'��]�J��Q �㧘^��dR����Q�"���"�WϜ�ʖ���/��kԔ�V܀ȧ0��Ld"���P����'�����������e���w!^�3�沇0�����X`�%�1�">nl�X��ý�w�_n���0rk(�#2�"�mF�b�#�x�%���<��X�k�#
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
FPB���*W׌�|k��]-&���{���(�~<��J`���WT��f��>�i�R�����E��Zj�6��g�K�Df�<�������h5�Q`؇,�����t��������P�j7��Ly����R�!��q���ճ��={�o<���      �:      x������ � �      �:      x������ � �      �:   �   x����
� ��>�O �Eێ�.��`��u����ڋ��b�CY���>����#�����1 �gyY�+v+y�?���?S�В�g�>�h��(Aw@i+A�a�Z,�^��kI#� ��
\ J�.8�cMq���`Rt����,�y�S�K�ɮ9��võ����=�~ �[H{��[��Oq\�ȱ����?	'��      �:   G  x��T�n�:];_1���Iq�e�.�Т� ƈ�UG%E�����������3�d���d�ș3眙���7�Y/ۛ�;��I�nn^��}��n�~{�������zs��m/���(������ͱ�P^wO^o%��M���ib25���s���h��-*w���0E��S�sd�����R�4��!��$����rn'q(�h�:.�c�L�去�:��m��I���P���C"�m����@�7n
�1[`�H�~��b�/q���H��Σ3ʬ-���ѧCm� +��[C=G�{��	=�I��4Y��B���!m���_��
�#�
 (���*�����I��6�������������/����K�Ce8��q����������(�sG��p'�T	EH�@�Q�mZ߅��A|�=��(xr��TTom��TFdȞg�!����`��	�F۹�?�����ZQ�,[@�N^��Pr�Z!ڽc�TL�r%�<F16I]�N�ċkk�F�Tr�d��� �W�9�"����0��Q�=�`6׏�ͣp^Mh��=�j�,L�S:���g�#Ztu�
4��4a�5A���g7q:<���Mq�������]]���9_����պa�w�x�1jfp[,� �r��-�R�����N�������l%TS����^�ixTH1�ap�����{+=����TI������N}�P����뎘0�:����0@Y��@�ʜ��`��K˱?�
�353?"���
B��\��v��0z���i�S�>�A��q�y�^M�0%�vnU��I@��l����z�gݭ������)      �:   e  x��T�n1<�~�?`Y%A�m3䀴� N�F=��M#?&~D"Ñ�'�Q�>�r �i�vOuW��g篛k?���|4�I�w�b������е��/���l�v���-Yn3?����IsS�:�@%^�WNi�j�e��MG�F9o���>�
��粉̯�%���e��Te'C���d{C�/ɬS����9��IرS��2�Z� �2���"�E?��(��e���o*r�J��Mq��Ȩ���T�I�^J>)�1��'�^�@�(1�5.Ց�D���ɀ�v�D���*
��L6�ڑν0��M���î�f��/�u����Ǎq�5��xh����'V�-p ��>�7H%_�%x`��)Ֆ��k�&������ТT��M��*�T�PZ�`��Fc���f�j�P�X���JT�2�jxuG�$�?�����u�����~��c��¿l.ɉ�(}I�_�2�hi�^E4�l�6|�a�U)0 F�͓y�S"[�˴��ȅ���� ���8�WM�5<ٰٮ��b\��	E����/���cP;;n���2�V�L�GJ�GW�-�@�ؑ��
[����� ���� ��/2fg6��M&�?>�!      �:     x��U=o9��_��Fd�GR�;%�We@�#.���
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
�^Ovv��(��<��MtU�O�>�f��4{�I!(���"����ҽ"���ՠr�f�fNq��WAJS��)!ڔBb���P���0���$A{����Z�%��)�k�S�9��bJyHO��(�#��EO�Qe�xy��Hݹ��^���������^�      �:   �  x��VMO1=;��G��(�@ɑ����=4��V��!1ڵۋ���S8����������I4@���(���{��Gqnr,LzZ*�L�NN?��?O�	ަc��� ��&�tlt��"��+�EUF\NE_L�3\����5��r�4V}3�C!���t�D�r#�����P%j���c��pt��@$g�s��6��Kv\�/W&+�e���q��EI�Y�3������&'��Z�)t��C�����w��f�{�D߯Ҍ�rmzZ��@���X��.�����&p��Zi�5�ӵ,D�fC+�wY��L�Ԭ�D�ռ�>'s���.��euq�\<�[��	����(ƑN��:
�0���<M���W� ���Q{�m;þMg�$Jb�bж�E���=\b���Bo�"��|_��Ε�J�ZG��]��b$����>^Þ�����t�O�Y����߉,a:�Ps�y��m�m��e�[�(h�Y�1��;��C��E���3��6c���.�c2�X��Aw��j"��(W|�-9��WP�Q������d�$��f�f�%ͳ*j��
��a�l�AjȫZ?�����M0�D�-ѺM'���Q��^���P�^4� >���Ƚ]Q%"�2W����u5�4��� �ms��sA�oq��g5eNw�.G�҉_G�ÿ�A_���IgΤI䉌x5<P�l��tY��8<Md���GCJ��:K0GŇ��*D�rˌYJO�"�`х��GY�����X?K�S�)�(|��N���1a�      �:      x������ � �      �:   q  x���KN1��3��P��²*�*��4r3.e�4�J�6��#�b83S^6�DN�G����dR,�A���Ҡ�m=��-f�z��z�~���h>�glC�Ig�Ҁ��H���}1.��h�G���oI��t`ՠJVap���KQ��%�j�P5�'Q'�V���è�&7gᭊ��Ş���و��F�F��8����jr`0�݀�@����/g�۳@^+�`[WǏ��F%U���a��Kj�Ya��=v��Li
���,lW�
[!����?�8o<q�C3�Z�����l!ӽ��,�9������_ˆnd�,��������,g�
�2��5Z�u4�Σ�ĳj�{�G�zT��'�;      �:   �   x���A
�0E��)r )-T�.q�օ�B3�@�Ԥ)��#x17*���̟7Û��I�,�v�fT�A'E���^H��j��J�������c��fF2��$)]��LٜL����ɀ�.�U��o� 0,LX0:�)�I�|.0�tL|j
Z7�?�+ң���1k���d�N3����_^���
:����      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:   �  x�Ŕ�n�0Eg�+���+�%v�lNӡ�@�%�e �*)H�&c�E?A?V^*�:�AϽ���c,�v�\{1�S�q�=\\^�o�A?�{5�_Y����R{�}s_���OY�]���&-�^W��#}�5MàΊ&u>�姥ѻ��^���H���H[����?:��-��+:���#�&��j�Q>(R�h&��Qgm'�%�(m{-lܡA?����y�^[��w~ڑ����)gy��P
�"Pj�E���1p�J�

��AQ@Q@Q@Q . ���0�s��0��qp%�\	�W¹\¹����\� W�+��
p�J0�
X �`X �kp5�k�5�H����׀k�50m 70m�h�h��PH($
	��BB!��PH�&�f���V���\G�f��u�i�i�9F�1~�c\�h G�x/�봌��
	K�{!a+�*q%$K�J<[�6H���Jt[
(��+��`�즛�$Y���\~���"r�S��䐠���6�S�
SJ�������5�^�^�1�=���1g�Ѩ}pV�j��Gtpt?�幏�?D$�/���I{�GG5�˳�°�c��YGI�YwHr|�/����+E���to�^���.6���aE��^����k��齗'k�	z����o�w����>~jGoT�y��l6 ɰ��      �:   w  x��ZMo9=˿��1 x#;�{�z� ��`3�S ��dl�C6���M�9�[��c��H��,�ɠ�du7?__�*����w[Im���JQ*k�o_�����.����R���.����^.��U�ۼ.��5:��;������UTi���u��^��j��:bQ��Wj1/ħ ���h���V�T��p]o�)ʠ[��O��n#��5�h��-&��B�B�+%M+}aD�����\K�+z<;�x9ю�W7�����rnq`��n̈́���h�Z������tNt� ���E��k�jQ��Ma����F8�a0��BY��7ZNgnlaWג��E��Z�ҡp����|ºj�+�����tTLحП}4�kXLxKSI��a}��$���5���6�48Y2��&'|���^nv�m��LpP[��ȳ⽚�7�7�:[x�:n]I;���҆�T��0ņ��+�����e�N�<�ȱ�ɕ�2U�-�Н{���c�f��V���C܅Pռ�� ţ���Z��E��s��w7�o�w��/��Ľ?'�[�°X�Ѐr1�[��{s��� �Z��,UM�C[��V�W"� +n�'�c�
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
q�,3gS]l�l���s �]�X~<�Vj�C�h�aA��nݩ��S�X +�r��W�JJh�*���r-~�P�]s��5�4�6V���B�~N��T����콀�	�����k���oI�U.�Q�*��R|"2���W�7�MW����g��&���!HV2@�:=�x���X������*T��l��Zro{�l�,��	�L��|��"����/?�k���2 C��IG���u'��<�b�KW`?��=��|Ӕ�6�#���P(�Z�`V�<Og�t����b�*s::����]`�F�?��Q���?�#�f�z��tS<��:�E�c[�d���E-T(�[|xD�l("b�z��x�nOcs�G+�Œ����]�p��t�GsJ���a:� �X�"��`�����~)���x������R�h      �:   �   x����
� ���)|QكMۡt
�/�I�k_�X�ҹ���_�j8���[&
>gt]?سC��~ÛA��Şg�Ė�c[�P�WZ�h�<��{��g��ɘd�7>�Mk�5pY��+�k~�K͕��\R�      ;   �  x��TMk1=ۿB��Iڦ�5qC/NM�)����@+m�a⟓�C�O��i�8!ǀ�ZI3��{3:;�4��-[�\�h�ƻfy��z�c�,y�,(5�O���r�\�D�_x9l��_f���5ٲZ��+�B�)�/&V�;�C�3E2[KQ�C�)�q�ت�v>�. H��_�`|�
1*�2�%)�@a&��n��ᨆ���AF��d� mH#6��uB�=;2nC+�he9Ε�Ǝ�z&H�#�4�#�d������IH	���÷%�ɚ�������M4>���.[
U�Ǐ�"��%�|�����רڬ��^�[�L%��v���Z����(}���AÉz\Kō��r���h�D�]Nz�^<��|K[�:�+��^�E���6��t<�7N����tH!�� �̖908јʸ�[C��Λ#Ť5�"�����FJ��R�����~~k?L.Am���}�ѵB��*Q��5Cg�y�Xs��M�2o�d�!�r��0`�5�ZL�m�ΐh���k*�#��S��~�k���Y�
zvrk����Ԁ��5�䋔9�m�ig�BkgE���!A��؎�S��l־��!'Ww��Щ�<}�ȣ�Fk��X����Px�CR�R
�'��5�������l�W���G~U��!�5��o��2��A�l�B��d�#�n����?�,�      �:      x������ � �      �:      x������ � �      �:   �   x���An�0EמS��@�%
�B�u�d�,9�(عXw�r1�$������%��,Ď����k�V��ͮ�,eI�,�ɯ���!�u�h��#ƫ���e!���k�;��'���u��H�8��Ԉc%fbh��s$�dv"�L�5���>�(�/�*�ҋ���yxK/�*
�5��Q�nߑ�{z�E�hN�1ř�v�~��e���}��^v)*m/���p���B�      �:   �   x���M��@�םS�	B�$:�����Д�(H�b�x�9�G�b&fpA�Ŭ��x�Q��Zm�S/v5��бۮ��f�ږ.��l��m�daO!s���Q�q��:p�SO��bM�9y��%��+��0���,p.���+�vD�,��y��8J2����ٺ2���Q��y@/�S����E�3�L�#�t�)��:9Q�%b���<�UU��֙�      �:      x������ � �      �:   �  x��T;n�@��S��v�_)�Iȉǩ��(^��a�#@�M��]Z],o��%9�
��|߼�\]��n��V�I�:K։�g���Y=�U=�T����ǳi�9�O<i:�]L��[�w�K��:�>E\ʁ��<�X*^�Ŧ��-�{O��Cd�7���!��b�nͯ�&�	L�{"C���^w`�18q Jj�<�}���r����L�T����#�).td��?K��w<�D���eشp�d6Ԙe�?��5Pb�`�ƿZ.���ƣ7ϣ��w'j�Eu�Jo�_2�8jKw^䀹��(vR�Gi�u�g�b���4�`��6���O�ͳ�ҹ^�r�i�~&��r�qRF�8+Ab]�X�8:H���jH6e*�ʀt.v�ޟ���jb�*�Ц
CǊ{��^���$�#����$�R�U �2XFb�h�+2�KM� 6i�y�2S<37n�����nh�[��^�������nΡ������`�,c^r�{�(j��l�2�A5sZ��.��=}�1:��DzS]�E}[ ��\��V��(<�B�����2���n�r��)N��cൄ�'*᪺s�~A��Jwp�iN������;�(j�zBt	�x�V�ԎG��h�ii/7      �:      x������ � �      �:      x������ � �      �:   �  x��V�nG<S_1G
P2����X��J�0@4w��1f��3���S�!_�:���/I�̮^W�������b�rr.%;ٜ6�TX���O��_כ56Kj7o��l����FV����f�����'�}i+�������4�oؙJϘ}W��cs�6%*:���E��P�+������5�V�����9%�o)h�a��	���hh+!%�:�i�4���Ɩ̵�����̮�Sm?�p��J��{��`iv���<�7A�`�Z9�t�ō:4b*�*~(X�gKM�����Z���;����i(�<d]�q�6j��sڼ�ߡ��Z�43W�A��Qs\P&u�9a�����$��&��p�;���n�t� ��!׊�RE��>M�l8� ��a��M������t��
`Ĭ�"���-���MR?u��q�|�R��9���������s!�Ω���㓔 Z�<�p�H����>u��][�5[��h�U�|*5�w�k��'o��6�߫�W5����J�y]���8�e�o@�\fb��% ���A-*��A4?�Y�SlL� �4��M��ѐ��Z_9��86�K��8�.c��*�] �0����r�7vc3�ǘ'3-#�1z!p�=���
��sj�r���UG���*}Uz�%��"��	$7�oF `��d�Ϩ���_ȶ��������fr	�í8Hf��x��]eB3Γj���M�����M�ߧ$�&�����v�-aխ��Ef>+�nT�d[�u�Mf�ُ[Ф$m�VX�����
��bo�a\�1�Ō��ٌ5���ǔ�yaF �G��a돩U_Q��&}������������數��@����$B���;:�L�`��-a��
ي��oR�04VUj��&�=�`�W��X��y���\ppz�Ή��
,����ؔ����	����r6k�發G)�'�.�U��N�XH͕ސ�:>|��U�Ǔ��a/(TZ�5���v�6�.������Ou#_%R���Z��?x-��g߃l���ɵ��{�{/�Xt2������KŜ�G�T����?��A�����Q ��/��c���Bӿ#y\��`E_z�Θ����_��ѻ��������      �:      x������ � �      �:      x������ � �      �:   �  x��T�n�@���2A�#Ik�
`@V�DHe�XO��s!�߸L�"p�V?��#%9��J��؝��ݳᨸu��]y��F�2Ζӫ���i9��ṟ�:*��鸼�Q{�r�N�F���u�ݬc]��˱IWl���o�>U�T����$P�T�nL4���y���zeB�\%��4˸�F��&!����Բgj�������,3�퓕��?�څ='gó���O��}���:�g=P9����OjںC�4Vy��N�B����J(`�&:oٝZ
�R4����@�G�X9/uqV�[���b}�ID���HuV�n�6���4��i�C�ݼ`;�f���0�����-�Qۧʬ`o��qJA+��Ed�`KT`-E��j:��Ni/�a%�FN���q8�s�:r���:�����r��
�����Pp���uC�K������E��Y���} ���y�Eߩ���������do�[9t��eE�lC�yN�]��VG�Iȸ�ύ���F�g��Tz��`�����c�{����뚣Yc%V�fFƓ{���!h�;�ɂ<�r� cB^�c{����s����y�G���(Ǿ
�S����b�����I+ZcO!feE�E����ܰ��
��%�ʌ�v{���T���ZZ���X�|�Y���TV%�@�0�w���CD]��k^ܘ>�*!hn��#̒�7&�@�5-�*�������_~��      �:      x���MN�0F��)� U�@W쪰�	Ī�5�'�+Ƕ�IE�`ۋ1��V��y�7?O.w�*rA-���^���U�R����^}�j^ԕz�=1%4��Ɛm��<{%N��Zc?0���oL��a@p��=y����Fy�x�Y��c?������9�n
�h������j+Tc�/0�'���dһ��:��QXh�ݞ�)���(ͤAƒ�LQ���hƋf��$�O��Nr*��4Y��]�:#�)EҖ҃p<>B;x3U�ܐ�o��e?��O3�m�o�<����      �:      x������ � �      �:      x������ � �      ;   �  x��[KO�^ï��-M30���In$�&Y\Yj�t�PwW����7^f�E�]����w�Տy�H%�M$������<k�OO��U&r��W�Ly*U�\���^�\%W�)Y�&�m�\-���h�B�u�۔���J�}�e�p�\��*�y&4�g�{/���_�K�ϧ�Q���-o���K��2����%�?���,l�3-s�w���[������� ���8
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
r3W�}� �Ig��{"��S�����~�Xm;{Z�C[*}PW����y8[���/�C�ɸ���T5vW}^�io�3Oԕx��u�6�rY�ao��/����a\�T黑��!?,N�4Od�K���߿�����x��(lpDկ%;�ṹ��Z�8�_�7������_��v���]�����5N�j��Qqt#S���y'EE����J�X�7���)~j���ُ�8i'J�W��@�c`q��%Q��p�Bl�n P��Qt�Pl+�<���d~�.��cWU5�Ȩ�:����b��U�*���qI5��N�L(%G`�a1��>��:��%��V��*��1o��N�~��#�����x�[Q������1�g�T��쨩N�DS<��mkQ�ʍ �8Q���c;�����A@'6�Bj�fW^��tc�%N�0����l7�q�����8v$3H/�9�����)�&oZ����2k1V��_Z����f(2]7t�gqbr�����|�R�.����e�<L�8� ��31��gc.z��Y���9y.�[ѻ}6�J��ӳ89�n��9}W�y@�������9�R      �:      x������ � �      �:   �   x���1n�@E��)� ���r�4�jlh�eƬw]p�����b�MPDM��ϟ����/f�=9���ÎUlS�m�}c�l��VvY6�ݟ�|�A�qg��@0��]nF�����4
\#�H�	���i�!m|���E[v��u�ܞQ�C�"�T	����A�RM�MyН�/ə��uT�ק�V��Iz������$!]#;���l�z�<�EQ|漞      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:   $  x��U;o�@��_qc�����i''5��@�Og��Q�G���t̐��U��I�$�'��#��Ǐ�|z�]a�����F�//.�?��R=���,�N��|�T��Vט=\g�l����`�ϾM�eռ%�`w��7/�k��ж�jm�(���ZP�a@\���?+�E\��F^���(?�O���;������n�^�OX��p��K�gѣ�(j�ݐJ��C�*e� ?�Z ۏ��*����޻IO���.p�-p��
������nq�;7Y\!:DNo{������q`���~E��1%ի����?2(������G�X$��n��P>4/��>hKJ�s���lR#��#l��/k�+�������ќX���mD�8�Գ.���>*�3�gӽ�t��ҝǼ���Kw��R���1ܖ~�>�r'ҝBAdb�K����9�Q�j 3���ľ߸H�K4D�~B&a�7	G���'z�/��xU�J�Ax0���v�5	%E��b�pc���N	�%i�%��k�6hR��(Q�*Iٴj�J��M�`#�	p(�Fjt�4���)��Y7�K�,f'S�f����|ov���mc�E�xG��h׌�$Z�D<�?c��(O��*Z�b��NZ%�(]��V�,)�wlU�dK4�Z���D ?D3RFpIX��`/Z��^��[Jv��S;��u�Wʖu�ӗI�C�V���ݠ��d�O�~�7�'�=H�������Ա0I4�&�9��A����<?u��\��r�i�U�n��iA��&���?t{�Y      �:   $  x��VMo7=K��?@P-%@[�$8=P��(z2 PܑKnH�P����CO���?�7$wW���t|0ŏ�7�w6�y��Ud�j����ή��wn?.WKڭne\�>[�L���O�)�t��F���架:~Ӎ=܍nF[i��Nۊ���9^;�m�)�B9+hC*b컐F������{�"P�DT$�F�"��!ۊ��#a`DĔ�>�q�ώ7T��V��H��1u%+
�9��fF���RB��#a����i-燽���UȊ�1F+��[Z�l�]����Aօ�h\��%����DK$�K���n�B<<)\	qG�kT���N�j���4;�,���]���������!��A��:�b�JP��>���% ��Z0�|���"\}x���Q|�edJ3��%>��O]��������)%~χ1x�G(�A_e�>�����Z�Ɖ�4��~��w�<E'fo����t<��\�"��=NI� ��q4_K�+�nP8�HZ+�.y4��'�"���Z,�>K�Pb�C�����^,���X5���ı�  ���j�4Ep�_�R�N�A��+�-L�P�l&�OItRN}B�u�ܣ p� $.�m���~<����]߃�3�>S�}�˄�� ǃ���6I��3���]r��^|�q��pk��m��������(�J9Ɨ��i5�9��sQ��\�Ԛa�#�e����e[4�{e�Ӕ6�'���q�c����;����|Xۍ�\�A�I۵����S��6�������7�4��%���Nu�F̯o�7��V�6p�[�=��e�s�E+lYJ�y���.�;ʖ�?V8ӕ��)�S�Gy�<os�t�W�u�/=�QB�,ٳr� ���P%���P:'��BY@V02��܁l߂Yꚛc҆��k��mi�}
߉����0��������)���#6/�)�������x�%���g`�ֲ4\������lV�[��q��͊|s}E�ݹ�=}i�(k��?G�D��D��r����C#������_�ӭ      �:      x������ � �      �:     x��P�n�0�����F�����v(:�(�JQ�I:��c��t�&�w����#w����-���iO���1�F5�[���ڼ&�\�Wa�f��bS����35y J"���P|��/���"|$�heȻ�#A@Ap�%��@k�ox���d�1��Vӂ����u�T�W��mѠ�ZM(�<���u��W./Q�%Ss�֮n9�˹;\�RrԑR;�U��?���mq|�����Z<UeY� ����      �:      x������ � �      �:   �   x���K
�0E��*����
J�*(�
�Dx�&%���q.����ĉ�s�SV%i��Ɖz0(A����w-?4�ѣ�ťy�pqL6��qp�ۓ�pgC�I.�Bn2=-Y���fF�`#��g��0S�=F��@`r+�;K(��_[F˪��� '�GT��z��ނ��Kh���[����.�]F)}$cz      �:      x������ � �      �:   �  x��U�n�0<�_�0�8'=N�4@��kj���H����CN��X�;���Q�%9�;;��ϫ+۰��E��$�����W���zɛzA��1����&�`���V���auc}�\�e����Tc	m��.�v/h,�#�܆�hXPg�4��#58��&!���E)U�{��Ԯ5�"�iT����NI�ּFz��母��<@I+�Sё#�tl��Ԁ���G��
�����@� �F5� :ݹ�EZ�&����՛U�7z�E\��SL a�(=o�ʜH��#>G���~"�B���@��p,��h}	X-�^���7��O9�W]�p�jU �$Xh(?U�,�����M�I]�1�5j��EnЦ9EyO�/���]"(n;�(��R<�>L�5��H$_�
S�{Yn��4.�@�q���6��One�"ɭ�O���4:�N� ��X*.��)J��2<�n7�J���t9؜�yΎ�>Z}S�����(��v&�!�ݍ����
�4���r��
�����z�(����n�Oq-��t����bca����
O�%��N>�Y�o�t2�
s����=L}�B������w����a��MrX*� �u��d��\c�|:�Y��H��l���W;�8m��fdyl}�m>�9t���V���D���&�����֣�ld����1By�.�����L&�?�í,      �:   5  x����j�0�g�)nl!�8��ѤNcJ��u	�$$9׵/V�v��N�i'I�������X[E���i��fkdY<���R�t�K�r��ٴ\�W��ʓb��Ί݋��
}$�2�<TxN�]
|I���1E�l'P�@�����n�c������h�\l�fc;�~�2*U���8�(��Q�[J�SB��i S�?�jKa$�ȟK�8pL��X���*m5�xd��;��j`����t��v[����[��o�\��ԇ�$ ���1ц��{��^���V��V�PG6�O�oFC�ۭ��M�,��s�      �:      x������ � �      �:   �	  x��Y��9��_�pBK�62z�٠����4�*JM�U�a��Ё��3���9��j�^�j�V�H�}�s��|v}��ʍ�^l��tf����ů��~��7ۇ;�<�{�p>��{���o3�yk7�ٻ�g�go���<Ko�o�.k�ȓ��/�G��[���1���*7j�Mn+U[�4ecԟ��:��QƩ��[]�Rm��jc|a��*��P�����
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
���C`ȕ��w&�($�;+���4fO~�h��F�{�	�x���̳�-.�'�oUg���Ab�����-�n��ٳ�=P      �:   �  x���An�0E��)x�n��]N�h�,� -N�h�@RFz�������I)�d'@����33�ϫ;��D_��Ӱx����[nVzEG�4I?���^-�7��K��GN�[��մ�y�$�����Q�i���$��6�e������7rh�A��|�ޚ��~��� ����g�S{c�z��(DT��^�D����Z	%���Z
Q����$uҦk!��.��}�t�9pb
���y��q�}۾��ʑ��-�klTB�1%4t�Xԋ"�ȩ���;Ψc�e&�:�h�I��/�&X�z���_C>���ڞ��7� Ot01�"���0��Њ�()�P�<LE,D䝣l�o5�,���\T?�Zى�'nؽ}�eP�N��|~v��/���ʧ�p�`��$��A%<�J����{B��r�{��N>Z��l���j���|����<�x�%��z�XO&�+ü�      �:      x������ � �      �:   �   x���1
�0 �99EN��Υ�ZDq*|>ɯj~H�^��	�����M�Ե����Ф)8t�#�f۵�K7hq���J��t�SH,���D��+S�o�_<RK�H����<���H�D�Y�z��jĎ��tկs��y=k9h)�	2S      �:      x������ � �      �:      x������ � �      �:   �  x���n�8Ư�S�����	���*lW���h/VH�$n�Qbg�������b4wsˋ�q� 6��]i�J��	>���;���{���n��F8���Ʒ�ޏ>�gc�2�|��?;�G��4�	�X��L�w��1a�IW]���j�s�9Cj�ЭH���v��qL�A���꿜��b�D��CD��I�FŜ�c�.'�Y9I�DX>.^�"�7hB%�(�;F�8�ݓ�7p	�7�:��:�)�9~Ƃ�U���%�m�{���,RA~��B@�w�Fs$
	!s�5���&��G�y!b�_�DlF�El"KD�^����|AS��S���]�	^|'9P�pF�t�y(��J�2A@�7�̸t��3�gF�Ό� �"��U�F�E����[��"��A�d��VSCC��\b=Y=,�A~��"inW0�\`��0{�d뵓m���y¡��K��C}}����Wqn$\�s±e�]o#�o��]����i�:����s�a�J��2
s�GI�1�gC��]�j�w2/"xLD��5��kʏ�
�w:��S1l�bS��X¡�CI�s�KO��x.3g+�)3�e;��V��h�T�_��g�I��%����=+��!����IC.Jw�#XU�=	��jL�0ܧ�����r�oߞ�����fW��=J��Q � j�^���ɡ\k��ʀ՞�}c�Fp��o�.^� ;)A�4#"%xQ~�����'�e�B�@t�*R�x�|��s�e�s�, W��ȡԁ,��2�iu':-�¡���;?S���.��~a`���A�j�R]����Z�*ߤ��U���К��:�%+D�jO��:Eo����:�8~�񔈒�v)x���a3r���7�oŮO��ۺ�k5ze�7e�v>5u�����3 �N��9����v0e��W=�W�&��j+:�B~π1�c���nð�����Mz�)\0^�P]�]=����5�:�:8@��8�a�'�ܖ�͠1��z?��SϨ���ԧ����j1ؾ���f���bVk��<�%�y*,�U/�/o��hVo�ޚ�j#�[��z&�Jߩ_��F�ղ,���j�^V���mPf�K��j][ԇa��i��{�@DeԶ�sJR����߶Z��S[�Z��dF�ulqS��LX)3���[�zo��0���S�:H��4[��byG8��D�Ut�+����
ZU�XE��Y�"�Z������i�4.G�5����R��*("����ѕr�P���2W;XwL_(f�)����c�0W <�e}{[5�/���Ӛ���VߩC��LX�-X����}ޑ|��Ŏ���cJ�^78o�sObk��մ/0��^U �y�g���n�:[�vf��2�Cgkʗj����ޅsj��$���j�����pjؗ�-~�r����\��'s��1h����̵R��|ػvaN�~�3�f*����kOu����GX]%�~w2힜����!�      �:      x������ � �      �:     x����J�@���)�JI�^z�"�
��
�twԑt&d7E|-�s�HROJ�m���ϗb���8lĔmC,	����U����d*�0�����W	���6U���Q��CO�4)x���v���t�q��5���:�':��eVl�Yp����D�����l��XB;?ߣO��,ʕ�f��xd��/s�80@׳@���>���<��{�1�7��7�d|�A:�	!�`�[�4��m$>�[b���=`�]�l_����L1	r��8�`�̲���2�      �:      x��]K��F�>K�G;���/�c}ؐZ=c�J�K���"XM�Da�`��7:���W7����6�̬B$-ɘ��ݍP��@������U<;=y��-l�fO�<KM��b��ɳ7�?�=��ٍif?�̎����~�ݏ7��_e�{��_?�����if�'����E����l3[�zVf5}����[<q��葯����<�$���:�[$��m���I��:���$mm��UY�'˷�<��̳��o�	n��.���.%4tm���w����c�V���U��ˌf�g�ʕ�]�E��U�[W4D����L;9̴�bv�3fNgw̾�Y��|��4�ۈfpt��K���[���1|�
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
?� ��������I6�xs�y�xC��˿�הw���ɒ��c`(�t����~�`C�p�TCf��T��e���~�mqO��/=*c���1/�}�q�R���gr,ڌC�b�U��ύ�n�v3M�~4�Ce-2���l����������;���G��4I�RO��{����X-�� �F��ȱ�?ef�'d_Y����Q�sg4C�ȣ>A{׸)�٢�ְ՚��֡2K#�|������x	�      �:   �  x��VM��6=˿�����l�osr>�9���I������s�C�[��c}3e;m/���Λy�7W��P����Y��~����z�ެ�߬t���ܜ��W��V�M����Ϋ��R����d|^��Iu^%�Z�k�[�T��e�WM$�c��<o46���n���'���6�r:ay?|K����J|Г�f��iy�v��I�g^�]��7�� .���c9���h�U�1Q�#?!>���@��O?����1ZGE�Smh����P
�=igk�qZ��&22%E7yۓc�T[�Xn���c��F2-�
x�O&8�]����.|���۽�B�O�؄8F~�����̋j�#�[G9����=����Z!���޶6rAdJO��V��	I��iN<6%z�xc��P�3P��CqY��q!v��[8�r���uk�O(���ش�N�����BDπ߮K����y�^U����K���)�}��I���8W̷�ΐb:;4Ꞙa:C)��h��� b��|�z�(!LJ��Bb���!��y���{�V��.�:]�&h�qNȏ��>L;CZܞ��zC,3��7Ys�{�h���˙S�E�S�\e-Z*2p,���y�wp%����]��:x��'[(�����V
��O$���J��-�}t���v9/��:�R���
^H�����?���,S�P�3�9�����ż�?��M��_F�X"���Ӫ�R�����=Xz7�h*��R�T��ݢ��2���%�cL;!]<K�⮕�����[����δ��W�p*��L�����R�ɺ+3&�Q{-�7X�!�|[K���5�"�<�����s���E'7�ndO�>"�$K���;�����!K��;~�A�ӿ;�PFz���$��3syQ}(��X&�D��>o�������&���Y
��*�;� 96ݾqY�w��<�B�.�	z4�N�-@72?
�Y�;�5�^8"l����a�:y/�9��������%�D:x2��$��Z�YD=s�.���o�>���>�U�*��y�Rg���\����%�y���E=��k԰z��[`�a���9Ϛ��ͻ��FF��Μ��k��le1ʽ��w��1�c��<�BO��Xq�Č^�lC��;�Ca��H �9���/�óŗ��b�z��$      ;   {  x���K�l7@ǥU��(��<���4����߅�fJ��W�AU�A�����6�c咞�@�\uP^�
2 ��tV�R92|��o���������������	F(�@��_E�5�/$���_��.�-U߸,�1r'�8���+9��u��J�7N.�ƶqd�GWvp+�����5����c�8��8��#�Z3@�7���=�gS�8��+N�:���{?�CC!�)/������!98�ʹV�'3��悍K6>q�K!;��H�$�q�{����6.����+.����=K��g�h�������rŕ ��A���޼9�Zs�==�z����U��;0M�XC�e_�Y��v9�w|2B/��Ԍ����i#�R;&��yw` �2���F�}1�L;���x��O�]4@<�0�' mo�4;�.���O6p�p �7���Zt�ēr_���+>�w����6��bb{+@f�2�穯�d޽�3O���l��P�+�i�;��O�]>�x��R�̌���@����|����O��@����C�3�i�.���\Yx�����<4��v�����c� x|� wa�y�Ԥ:��=OX#�u��p�w��9���*Jp��궑?^/�B����Zz"nP���]9��g��ü{)��f�5;�~6g�9�+�y���!䀞����:u�g��O��0�	�y�J@�C�d�U��a����=�e��!�{5�硆(�8wE8C�vm�gz�a�=�)��!]� �s3�茶��}������!�=�B�Ӫ���O{8k)h��^��ü{K �C�����9�-���]�Yy���(�<hU�9G�철6��[z�ü{� ��Zx�\�ԙJ���i9�,�<Dw�5]���(AN��=�5[���8��e��w�D�E�<%��}i��$EI}=L~�a�=D����j�<�պ1�~Zy���HyʫM�|�y;�:�G��0�	�y�i �C�&�!��|^l!��73=�0���m�8�V;�vsT!;K����ü{�r �C�Z)_�O6�6�~�e�E����!*�=� �U��-#d��֩�-�=��C{ꋺ���0s5�)ߍ�;��C�=-1���S�k͙�X%���O8̻�{�KKׄ�����4�:��,�<�w1v�!ȥ��j�-0/�:���O8̟��{�V�����E�fu�y�,�=��C,�=uj�ܮgm��[�t���ü{�5��^����v_��lZi�Z{⻇8�<dm��V��V��N����e��!�{�s`�C:t(M�[Vs�����#Y{⻇��<װ9���F����ֲ���=$1��VKցCvMi��"�+��C���!���3      ;   �  x���K�,5��'�`����Y���!�!��]��fR�r;�g�����v�W[��X���+�>W�W�� �5���T��������ַ�����o�}����'���gП ���k,_H����:�:�4�շ|��n���S��ȑO\ǚ�Tx�K�=��6�d�)OGy
�ȯ�Ǣ
�&qp�~��g[Oy>�sG�8j� ��eV�]I�ˋ����%�#Q5bG�F&KG)���z��Q^Cr�E�*�Z�����6���S>�SȎ|i�&�$��5�VgKkm䳭�|>��P��ܳ����/&[��7Ͼ�zʗ�|	�6{���[Nļ�es���'y�=1 x	�M{�����}d�^�����  �fL}M���1r,��������@� g���1ɴc�{�;􊧇3�x(4�' �u�nC�ҥ�N���LC� qIӵ��xR�K�9)�xz8#$�E�5�$ Ȍ]��>�+��\��1�ڀW�o�9Y�Jc�w�+��p��ã��ff�;'J�fgt{.�+�΄��e�,J���쮔�}�<�.�QΘ����LjX,�w�=u�c� ��i�Μ���$��I%����Hq�<���3'��D���T�
%��auK�}��]�m�WĀ'�[Ԯ���]9�Ȼ�@W8ΜD
�q������nf�:(+��_�x8s9��IKI�P������Sf�y�+gN��8i|B�Y��"�2�M���vA��x�$j@��Q��9��b7l��}HW8Μ��㤮V �y{��3ZV�Xm���I<ss@����n����5���v�,���3'��89��hZz{��̴m���,w�$�@'��6&��(;��z۝ۅ<Nҙ��<N����~�z���U:w��]��$�9I6T{��&9�����f���<v���B�\��5�8�l�k�T��.S���Н���p�$q ���:Y���6m����v!��t�$I ��y�iu��|׬�+��f�y�+gN��8Y j"r�g�:!�[[�
�Ù����6��j�ϸ�9�����C���p�$�@'s�Q�z����m��]��$�9I%��I ��~�#d���n�y�����I��=N�E�Ɯ���<e���va��|�$C`��K�8�Z�r��37�Ik��p<�9���d\Z�&�xHi-M��]��]��$�9���'!�Nv��� �eG��
������'����|�݉"S�>wW�m�8�gN��8٩Y���y�ɉm��y�+gN��8��հXNެ��M+�]��]��$�9�)���1���E~�G�4[���w¶{��3'9�8�C����5g��K�ͼ�{��3'��8װk���gasD��n��W8o�Ϝ���d�%��!��i��"�<���3'�?����7      ;   �  x���K��E��*�����d��mY�̒��_2y=yHteJ�!��č�Ox�U|��wژ�K��V"��(2BQ�$�&��l3��z�����������o�����������_��F�W���â?�'����Cz뚫�_�M�'�ڄ��U|�3[�CsFz�󝞯���!}��爹Л>T��b��M_�M��@$ɐ^�|��kzqzH?}�S
}��໖��7���M�?��H�x���5��pH/�$��o�<��XWQ�g�v}T�a3��x�Ӈk���޳���>����UP�!��#)1��)g�1<����\<���i*Ev��Ә�����0R�9�ҋx���k���!}�bH��[j�����[�H��X���|�O����S�um)�a��O�����=s�,!fj��x�w�|M��C��׽��4�����=vB�hyfY�y�<���NX���ۆ�dMV@��j����$i�%,�ķ���?rt`(�c��¾���si�5�F��Q{���~�[Ý�ĎN\�+T辈E_Jk��GC��@p4hJ�>��� $qtB���~ ��a�ھ�4@x�<^�ķ�;I�x�3T�S>D��6ç&K�����2�\���H���Em(�޴����-���а�$Im�G�=���E2G'2�R*)�}�5Y��}�̟}a�:g������p�#EG'<���H�a�d���h�{�-L�(��g~�!=��NHJ����Qn#�������\�V����Y������X̨�ݥz��[��jH��曵��2HO,ҝ���8)��0$��h�(���0bj6�«�j�X�O��;'>��If)&Y"}�0
��n�n����F��j��G���";>qR�zbk�Ϣ53 �z�� G�f2��d�AÝ�,�O���?G۶a��E�i����jW��X�O��;'Y�8���Aeخ��A�Q���
j1���ii+�����I��5�b�?x8�~�K\v"W/�G��'N�l�O���``韻4�o��x�������ӑwx�+�����I�5�u_ ���j�y���EZq�p�$'�'Nf�t���0%g��}΢��s;KC^q�p�$g''Nv�,N�z�!�$;�aop}�k���'�ܝ�❜8I&�f.'[�V��)�{�*�,O�U��I�sR�ɉ�%��^��כx��h������*������ȉ�r�`�>q&nA���s���O}�ɂ��ᬻ���n�"ǹ�/����Ɉ��T��.���n{@n����1t�AÝ��NN���.$K}3��0mk�|0�5�f��)./�U��I�sR��'Ӭ}���{V�}����Y0ڏ�����4؊��;'Ŝ�8��[�a�gX&Ȃҟ�>���{W4�9)��q�֘ji��9���`k�V�AP�K��dZq�p�$''N��Q���iG��h�޽.�	~tL�KC^q�p�d�'N�N���sʄ)����8C��]�qz��7/��T����6�a�i���$���OU�9���f�$V�'��I%�'N΀��e{��j���ѐ(s[c���j�wN*;=q�O��"4�8��^��5Jl>Y��>�����8�wN�8=�IJ�	>�>R����3�k���|V��Kȿ�R��8I5�+��{��Q��]���*�fi+������&=���,*�Q1���g�e8���V�'��I5�'N��jr������,Ԛ�$w{�!�8h�sR��'{o��E~�G�8j(��Nؼ����DG]��艓z�&�'NZ�E��ݻKJRb~ϼ�2��^Ҩ���XEO��;'5�p�� �n�y��=&*���Ս�vR�x�����������p�d-��{�3ő2Mxؽ8�����c�X%�8����w����S�      ;   �  x���ݎ�����{��`�)�j7�6g�r�wU�*R9b��tӯ�~���|��ʝ�>�A�����k/� �ǐ�i�Ι�6l,��ݘ��~�����o�����?�������?�+�A��ȟ���k�H�*�(@? a G&�`�Qy�if6·�AY�V��X5������U&
�T�s���r��V{o9�Q� j�!_�r�*�rv����G�(yr��-G�T����9�þ���U��!����[���VǓT��yni�%[��)��唫��$��Q$���tХ ��w�G�j�z�msS���-G�r$�@N)؅[�t*�Y�	k�[�J#�����r��-�^���9:H\@-�-G���F��ȱ����%]V��-�]崤Q*O�V�s:ۓ����sq�Rl�������U�&ȁ�1�:^\�[�Z�m�5�}<S�O��2�J��M�|GaN QBA�2��p#7�N���T6&jdĽD��ߚ~ϐ t���%�Y��e��G��>ט�;F��ߚ�LQ��}��~����̫�ɔ�[F���s�W|k��(A�j��yy[8}Տ�P�ة~s:�7��uŚ�ߚ�N�w�7}4/j��'�{�1KAZ�#M�ߚ�Ȇ� �6�'Sw��ii ee+�67(n�e�P���[ӝ� 	"r����=9��sy'���*�f���W����oMwxCMỨ�������[�>u�R6/������^��Nph	B�/5P[�ߚ�Դ�M�ؑ��
HF��3�&}ŷ�;�AF_U��u��jh�[S���*��F��|E`!�ǜ0�8�7�E��9Q�=+A�GӪ�d-v�&�1�]1�8�9��#�#RR����6O����S����6����bh��kc��#�ɹ;3o!#�9'wxސ���X=h�s)a���z�2�c�����n��\�i�5�ܾ+F�;ǑF��}�ɧ�v:%�8�j�ۥ<SD����;Ǳ$�8�D.���O��t^�\}씎L.,4߾+F�;�QF���>?,(� �ck��)��)�o��a�>h�sk㲇�S�oM�AV��:�ſ�������]{"�t�8������w�R��On��*��𺻹r{�g��4���;�QE���H�r4�闶}ƕ�v�qA�P�����}�8�D�}Jqf�a�� e��Sw�q?3p��ь�R�q�s� Q�����3G	e�58�y��m��xݝ�J���q�D���>P��^��9�y�xwd�\&W���J��O<�P���է��CK]�ǁ�K�9圓wن��3����@ӝ�ĉ"��֚�y��( ���I�W��5�+E�;ǩ$�8��Xއ��Ӄ��Xv|A���l=߳"M�D���q�D��T�Y�;���
=��k�j���������;ǩ&
�S��э>�)�|n"ϣ�)K�艏n��oO����(�x�>
{�f�e؛�ǫ<�v~͞#?�R�q�s�4q��2������1B�&cf�Ey�IE����-��8�m2;���uo��g��P8���d��f/�qߕ#����#���Ͷ�[�3K�6�O�M�yfɬ�&|"�t�8c��y��T�h�uo�s���F�j��s�O��+G�;Ǚ�~�����v��>�������>�E>�w���'^�9q�q�^�i~�U*e� �>^e��uW�n�"M�@ӝ�\G7��L>w7��\y��vhs��2�/�F��w��|�8K����9~zK�t�}�;w�b���N�ϩ>h�s�k��s����?�ї'���d^]��v��'ߕ#����G��c.�(ǫ�֨W+��a�I&��Fg)ߕ#��㬩D ^{���>��3߁������V��R^�����S�8>�:|p�3sB]Ma�Lp���r��tx�E��Z"��;���-��_� �#      �:   w  x��V�n�6<;_��0K�h�=�N
,P���'-�Z.$�KJ�?ꡇbo{���q��	�S.E��Q|�,�z�q<��ѝۿ�a�]�|x����׫�٪�4���^ן�'sr���b��s��/���cM겯�fA��S�b����e'�NF�|L�	��e^��i�F�X�Bl��y�-�Iy�Z����5&��՞�D�S�`��Q���^2�X0�6����u���/���m݊���Ê	!�v�Ï;���l�F����r��m�V�6>>>>+Жh��������������������������`q�8X9Xx<� � � � �@���
ppK�J�J�J�J�J�J�J���BD� W�%�`	�X,��bm�� �r��
�W�W�W�W�R�U!Jnn�W�+���Jp%�\	�Wʤ�$�u�ez$eLҘ��ı�&5%!%e�!�q�8$��L����Z���7i$�%BJp%BHP"�D	��,a*�qM����d$�&���<{�+d�_T���W�����0Ȇ4x�f��Q�joN��OC�	ac��Gݚ0x�������]`.��!�X�O��JW� ���Hk���$��+�����N�5}V�f����V�}pV���9Ϡ㗯#9
��߯�Eߞ�.����i@51b?�C�����@�|E@E"H�@B$  ��
$W ��H����X �)H���D��%f���R��-���al��ó��Ǳ��/~}�B;�Qظ�ac�a��	�krg�쫉�;��+{�^�5�u!�)�>r��S�H��?�o�C���?�ߺN׃9�鸻����z�$y_�$���p�GkҾ�h.����u�Պ�6_F�ˇ���Ɛ��-���Ű[�O��q�'����uhG�꾷����[G�e�1����!˝���1*��kLZ��M�8�c:J�9�x[N���a<���<e��z�����x�xQ��_ĺ�{@ _ѓ�U=vC�Q�cLF0]BP�-��L��	#;:O�}�nTt�e��h���4���`ͨ/��%�Hf�[,�8�֐7���&�(gם�zch�;���D]���7�w�����4yҡj��Ϊ#�z�E�
jŪ�_/<�ә�s�Chq�r��,���nuss�/�A�      �:   �  x���Mn1���)�lÈ�4?�"�@IەC��
�8�4A��� Yu��\�����mw���̈|��xt�qrӯ[qd�%澕����^}_�����*��r͍�%�W��dy99�\��7cx.1_�-G�\YS��4<
��pJD!��I�8P����6Qf�I�d�$r&�$8�>zg܌���=^�R4��#���4�d�gԘh'A���b#F>��)�M��>��h�v��[2��[-����}���9���
J�A��pF����SͲ8;;y?=:>~���[E�C:�{LZG�gT�E�}b��B��$/�4�G�@ւ��⑚��#�]�\�"CL�"�q4��XP�g�d{��`%���d�*�V�ѭG�-H*�.��$_%GN�?ў�����`\�x�k|�:�*�ߍs��m��g��#��{��2�+q		���l9�ɿmh�KPl�~��.�ee��U}��v���HC��y(D_Oܑ!KP�����*:4�x�J����Q�?$��Q*a@M�ۢ�W��4^�l�|����uNa����Ȩx`���W�\�C���!����T�X�M�#k�W�T�ֹ�;]؎ϑ��u0:����O*vT�f��*�՚QZ�����^��}����"B3�:H��r�ߥ<y�R~����[*d��v⡮��!&����|:���!�O      �:      x������ � �      ;     x��U=oA��_1e"Y�8qjB$d�$�%��-x��]�(䧤s�"E�.-,on��X({����y3\�wiQ��Tn>�!�.�醴�/���/��N����fS���׮���bdJ�#N�*�e%�e1���8��t�����q�d��g#Ss����y��[���*��i�*�Ϊ
Y*��pr��h�����r���%��5�잭��*U.t \������;��L�h�	�f��2��	��z]e\K�&ȥ�Z�].Y[I���gGv�ϖB�������"�<)��T�Y�j�A�C�!\?<"�\�+�e1�̲�W4����U�L^�y^$`cE�p�5��5����y�r_P0�q
��a	�PO��R��4|���ƋJXFya+���ù��3�MT�L6���x������QThc��7�������AZ�>�l��(���I�~7v����h;�͛����14�ĺ��Y�	���sI�$�R`֮^�(�����fy=\P�P��Y���,���_��)Ѓ���M�"o����o�4��}7}��<�]6�Ƅw�lۃ}����������B:݇��~UL?On�V��Q��~X�'[�Ev!�rDI��gᱣP�<�\����#�U%�#c��	��s���È��q��)b$�<��.�KMI^Y���U����5�ʃu�V R�[��>G�R�M�%� ��$���g��������}�9�N�%Ҭ��-s(DXK���^��)��eB�f�$Ў�{�|�;��h��Ɯ���z���<��      �:      x������ � �      �:      x������ � �      �:      x������ � �      �:     x��T�n�P];_q?���[DA������5�'t"����J�����c��̵�&�*�(���3^���s3hǽ֟}̃����[�sU�/��Sf����Z�\V���6i���KL���Ǻ8;~xG�͎�Kڑ�˚c�V��ީ��)̯7!�c��A��;n�5�������VZ�n�dU;�9�L���	a#K����0�g���>{d��M@O����U���p�J���lNS@d�N���RZvx�/���6m�zq�� �t�X�>��U�1�ART_����޼$ �gf#!{�i�T���3�6qd�zy ��&
rm5p f��n/7�x�rҀ��\'f\��Jg��Z�@ �̠H�5u~z�g�|zԛ�B��E�69l�v���02� �~��3�-�}\�ޜF����^}+T��(�O��f�%��Y�<�� �I̻8̸�\M��S2�f�B��� M�4�S��GV�G�ɮ�h��lo2im�Ė�V8:hf
(7�kͻ�+]�ޞ����b���j��	��'���'�md|a�"5\�p!�$��sW�j����q��)��^'�x�ѻ���O|��a�O����Լ�Zn�n&*�r�MRF��84�/7��b�o� �      �:     x���AN�@E��)|�*j��@�BMŪR��8��dfdg�N\�m/���Vl�����_^�Wm��SH�c�2$����{]u�f*^H4E��Xʖs�v�jY]x�Ʊ�	�3�x�-�P�$!_�C0bS�-�g���?a������~�%���UZ@�7ܳٱQ�?�БđX)�I�.�Q�X�~C�)���w��55Y()������d����L��Q�zK�``:�͘4�c� 9�l|��D?w6��h�v�>��t��]S��L�(      �:      x������ � �      �:      x������ � �      �:      x������ � �      ;      x��][oܸ�~���ƙ�a����d����X� -��R]�9���K�*R"դ�<$�H�[M�Ū����|us_^�\�x_���}����ۿ����ټ��񌪦/op��?=x,04ո�D�_�7����g�W}[����f:̸�q�V%9�Q]��8sE>�+������y�o�}�۾�:�ME��+�7ѯ��_�k4�?~�_�_Q7�S����͈|j�����C��=\u��-�-Ƴ�������|n��'�z�s��0��
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
��4�Z�'���B�r�G՘%QF��/'5;�V� ����馡 l  a'F�kq�Jc�F�$%hw�Ǧ����w-=�Z�����/��pfUk�m�b�$�rK�G;�<	@��v.���Rf�R2K%{Py��{��}+>W�)���$�ksa�W����U�+�.⑸! ������e�����{�������`��%X��%���t�)�Fn��R�LS� a���������K��z�jn�<�C,��䈉\l�Q�G�{ޫ\<da!�;��ș|C��w�w&�Q8#���a��a�Mv؎y��ҳ��E0u$F��h.�Zcn��A��(���'�֫q�o�#MA����^���\Ѵ��x���;��v$�i��LBA>����~���)��      �:      x������ � �      ;   5  x���n�:������b������ �n�@S��B��d��/�,�$c�)�C�s�i�okQ�J�M�ע-����X����$U�������t3����b)j�rѰ���5b��u�N�nn���C���÷��VL\SQ���Ě�1XK9Y8�t�3;,�oB֤XIֲ�#~V�XP^�!r�#)"��	��v�V��K^r*^^���o��.xL��4�z\ĆEW��H��l๧xr�F��'���������s|� �C�1����}��˂<!f��R4%Q��Z*���:��m��zo��V3�e���_���n��aP�n�n���(z��%l��ZR
ܧ�w�ĭ^Z�7j�F}+zd_�6�@@|kW�`���"GAP����C�~u7���X�_я�Rz�����iP��~�t��H����Ex������>���b�p�t�Ѥ��Xlz�F(�|����T=[��5в�AA�L�
��epჴ�g�-��y�aՃ�pŤҢ�V�(�2h���5��J��^��\1�;��|h��X�j��V��6�b�Vr���X׎��X��
��ʃ�}<z�k&�JYi�j1�F�hp�^�H�-7��,Q/K�f�}Żj��œ����n`,���׸���܁�����ުp����ҷGN�=�y�<��9uG?g_��-o���[^)�t@�#�	j9������]����0nӾ.N�-�J�0s-*��8�C�y����17�
%#:~ _Ik%n�k�h��d���3N+Am|ok����c�	2�� a�D���7�O��T*�c;�of��g}}�to��@�s*�!QR3�';c^_v��h3Z4�sqmL����������������F�4FСY<�N��yϤ�phQ#HXP���h@x^Mj �k���q{@DP��@=ʡa! �(UR8���DC��U7�,��,	Z�[��.�l�91YV�e�V[C�U���ы�M|9�����X�_����@<ɈPxe���=��9�C�4�3	�p:�QvB�#��Y�|�� $1�Ț�&~�=
C@�[�ʥJ��?�/)��Z'�,��7���ī��A��HAOm�H�)��[1��&�����;Ě��ᄿ��e�.���N�?��p��[�!���y��a�3a�@L"������QO)x��|�<�8�MT7=8Z�.g�V6�j*b?�d�K �+wyׁ�v��C{������wg�]��]T=ռ�TO58E��N��-GF���s���^sd�K�ͺ��A���u���c�����x��)4.)R��i�P��4-v\���2�qZ'����I^�Tn����5X�-S�e�$���D��%���.3� �����Ш��_լB�/��/^�:��:�S�0��Up�äv=�]d��˔�@*��s�]��N�~Z�N{Ԥ5��'�����њR:����6����H�A�~�����l�8M�{Qb���͖��Qe�ڜ[����'�j����;-���8��k;RD�\��N��p�����)N�4���d�ĸfF;�;>#J� wF�{3����H��T(w�'iA4���r�^���$��J�#�L�0`�@���cT=
��ϫ�qU|V����o����`p�o�g%���Gxv<~/E-�*4A]�;]���ӆA|��́�L��h/�r��������C��H�sC��%z�G�oz|V(U�P���2���{�
Cr��$0�E��)A3#M^v1�d-_/g�}��:��ؒm�F����Ժ�n����n�KQȰr4�K	��x���v��}�Ш$jh�>�Fi�������?>"p��TLx^ �h��DY۵����2K�ҍ���\:��,(�Ub�ɱ�,"��E|��2��`��b�1y�k/	�zV��u������#���؀�(z� PF瑩�
��$J*�����d)��~j�������G����&�o������ͽ����;��������?q��'�y�u��Ա4�;l�����n�U���{D+�I��DeJ�Q8G��G9���U�4ז�#&���w�s���T��ƨo��@L���4�d~��PS{�̗TC��@ehW�S�gg;��.�˛�(�`��Sw���D��@<8@pԩd1O5�/B�ԓ���W�׍a�-H1�V��N�3� ��O���Hd��:�D���`<;L8.�-�WfP�I�dd�g?A��Ѯ��)�g(�7��D3x�G��&h�~L�'�$�+��%��Uݞ���+�'�|�*|5�cs+)J�ڒ)��!r�φv�Qw3v���&��%�������8��C�c��VMtBd	��\�����'����+���[|J��h�b�����q��}�U�+ a�͆��d7S������]�G��/��
��n�oTi+-*�HaC�&���ѹ�����}��$��R��������J�&���ᾁwFG7sD$٩�c_u���U��V�C�1�4R����ڐD��x�B�A��-�(q�5���0�c�Y�j�Zl��}�(����n~�$һa��&��Sr����؍\�aj�|�Y�48�O�x�K�j��L_�����&[g=]�MH�z�{г���gSǝYϢ~�7;��[/��'��y����q���N���)�|ٲ8�K*�!������(5��Ɏ5�R?�<��N��̟�3��|{ꄇ?���n�a*r�hOgwm�P���za�4U�BcT
x�^��R�p%]o������Oӌ�}�xKk��O�v�E�b�(9�r����������9       ;      x��]K��ȑ>�E��x$xw�dF�@��F��@�Y�,��b5$����qs0t�ŀ�mF�� �6`��*"*�̌�����:M�k�z��'?�>����P�Ǧ��'͇o��7]�=��}��Χ���>���|�2��͡�.C����8����4�8���;��~<vM�z�hv�v'�n���Z&��R������S^����ρ��N��r���y��s7�g�wǖ���2�ǩ��_�OO���4|�8=�炀�#�ri���������{���9M��t��]�C�*�ױf�홉���T͸��b��h*��fK��(���K�� ���wl&�a�i�����~O�T�����_$����qi��;����{>/���T��F��3��/%,<Iy?p��MӃ�KT=�kQ���al��(Y��ӝۏ�.r j�&Y��c߉��Z�&�30vx�a���5���W��@�vja�ja��2�#{�l}����<L��͗��@VB���:x�A���E�*J>c���J���W�>�Le����j?�<���0N��s�� �'�U"̫W�;C���vb���N[�p��:�f����J�/ ����N���a��;ɸ���WG�G͎�j��/�
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
      �:      x������ � �      �:   �  x��ZKs�8>�CM6��=�d�B���T��,��l�+�����mI��<,9�L�dIV������d����y�y�����߲�	c*�hKʌ�Pʻ���B�,�$O8%��,����9;DQ��^��$S$�,SB�BI���A4��� �L�J`�{7�)�<MuO|*r}���1��=�1��b����xO5�lB�ѺܦV�YV��(�V(!ORX�D]y6�ӈ�~�Ԩ'�,�Fu���as/�;�C+�$d{ۘ��L��4�N*+��;P�� 2Oބ�l��[�"��r"Y��J�Q��$<��I�
x6�&q�3�Q�@��%Ǝ���l�~aG��F��}v�J�b/�N�!�XB�z;&a4J��`�g�����#�٦�1���!�B�u�7Sb�d��a л���t�D�%������������oF��d9Y�U/�hQ&��K�#��1uo\�%?��=1/��A��4OFBUJ� JrZ&��/� �8
�<�L�"��֗�r�X@b���HR�y�!pzxZ�T�D �vB�v-��d��3C�I��{�$+�-ܮc��	C\y�9<��D��rK2� ��b�<�s���AEJ*r)r��	qt�b��̙��%�D'�!D�!H|= Q�Q��!@N�,�6~RT����tp�x~���ɭ�=���P@��3��D�@i�#�����}2�Wf��$�����h|���Up5�����(9���P� �S�a',�;#zF���z0�^�d�Sr�8�UW��#�Z[>�±�ث
�c�wV�:��b����j����	.C���܏DV���O�s):q>/f>���P힚hR�i2��4��gՁwժ��-��T!��*�m 9A"7��~�7��D�9i�՗�_`*^ �n"<��e�R��
�*�t�D��/d�Ƀ�q�S޻���yZސ�D*B$�E2G�Ճ��}}��� 7EQ�hӵ\�e����j���Ɗc�d�T�"?ŀ~�W�[�&������$ôu%# Bz��0�7[1��C5��_A����2_i��5o�����џF��Ţ	��-΋A#�d�(�\���No�mg.��J8F��%�p����5dI�Z�1j��!Nz��dϐ\���j)XQ�}n�Y��� ��-g�
f�zSUb����N���a�(ժ�x�_OR�eu��1B�zI�q�;�6")�;դa�;b��n����N4pަ;,�Y�Z(s�'O �]�%XD
g(�rxǧ���K�=�"�#ۄ���۶�� J;��לI�nl;5�R�ClNЋb�������3u��lr��dEkj=1�uM
��.�r���Bc�b����<U6tR7,WX}��d���k�~uGͣB#��E'��H��X�O]P�?+�=|���>�k�1�n,��l�@��X�b:Z����po�c8_�8�aP�w�Շ��n��9���h4���zB      	;      x��}�n�Ȓ��)�<=���%YV_K�H��\��X)�YM��>�ͣ��Y�b�;o.p�b7���dFfF&��%fTD�Hf���.n���/���������ܱ�g��阤YY|.�}�'�e�~OrR�.���i��<�y����풦�Γj�I�5��I����?~�+#+~�wL��>�&�C��a��D���w�N��Ȅ9~3v����θ���׿�N��rO�2�.�ӡ��+R7e�'MR7U��_�N�]$�bmwu����,�S�$��ͤ�,�����.��"��������@�R\�>�B��U�o�]�a�HwOn_�3��(�D��li������'�9����'�CVdL�&{?�u]�[�z��͓�����>�_�}���F���c��|_�� &�yawK�C����CFE�������gO����z!���}*z���g��h���M��rN�	��5��8+��� >��3�N���<mJF���du� ^���yނR��'RU�(wgI�_�S�b�^�5��[���t5ړ��]��\��5{Ε=d�7d�� ^����ɾ�]QC��/�"KC<��16'���I����*��{j0U�0O?e�_��H��|Idҋr�z�n�����H�5����<��e�/ޓvH�A��vr"�_�3���q���G�=I'/J�]v�/�+�Jz�޽��j��� �ck%�<T���>�'Iկ1J����lOsW�
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
6S��y��'�v'�k��|Q� ��X��=Ǽ�uN�θ��-)�m�3D�1R��n�J���~�����6��      �:      x��[s�X�&�\�+0i6�Ru$ŋn��ƖIQY��(�L�ޮ�0D�D���6���6������e����O����~n "RY5f]m�d ��Ǐ��ۣW�����?��Y�����߼���k����������ۣӣ~�o�yszyr���ED_��c����o���}���h\������eq�fID}F�E�D�I���1�~�?_o�?�	�TQ�G3�_���8�/�8�&I��Q��Y:�'џ�ߖ�"���EVL�?��u��GY2N�U�̖?�tG��O<��yZ-�x�.Ω�,Z$e�.�2-�qa4��J�<�@�����+:��������{��j�����(-d-�D�x!�E��j�q�i1|���x�I	T�Y\%�w9C���P�1�ڦ/]	uq���8���G�79A0��	�f��{j���/�D�a9Is��$'he1Ol�&�QYT�pQ6����iYϹ���B��;;{4(����g;��P_O�/���u�H��)��@�%U1 ��]9�s��e7��hsqIVF�K^���@��a�q=��Ѵ��,^�����6���Y��� ���b~���S����� ��� @&AOB��/o��7���X��EW3dt�pr�|���-P�9z'��,��iV��@���@����mA�5|3	�6��#�օ��{<�m�3�DP�4g�MB$aL��ƞ����klґ%��:�pأ#�����:�R���N�f�J�Ì'�N���0�sT'�P��j.��y��g������rj�D�Y���	������C�5^�bb�˽fE>%�4vธ��bx�L6���J��l/g$i�'�q<��|�uR�A�a�	��Z�����`��H&�Fo�=:�m�8=�F�1���(�I)�����G�߽u�6
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
��9�-4>[�©{n��h��n��eu(H�9m���.i�/l�����5۵�M�_يI�\�x�5��5��u	�q��+熄���8�&O7�`����������9�3���/�zv�ڹ1�f��~'����Z7�k��wǭ�P�߷U��1�{���(՘YB��םp�6T�Ĥ�U���&�8�Zl�Ȅ|�Z�+.fm�Ɵ��8�S��Ej��0�sJ�+T�m����P�NL��Z/��v<m;�l�\Pg^.���m�ܤ���Ur(~qe���b�m�t\�l�}7���]�&����H$��F<�Wm�)�Pf�T"��<e?4�i��b,1�I�h`ƫ��v�ˮ��7޼���V��My9c����y��џ7�m����W�	�s�����Ŭ�Z���'�&�z��a8�5l���ŉw�W�o�Eps@8V�1�u]��Iz�d�u�kn{���q��s�|g�J]����ST;�������ӄ��U���;��[~�ᑒ�$x:7���D��n�/�L[ׅ��W��>���1������׻O������?x��t�����񎝯�G��4�S|�6�&F`1�~�z ������l��_��z$N^ʩdߥ��zVT�E���~c�/D4��?��:���R��ɾd�Ė�7�H�ҌMP�V�L�?������~�����C�\����Eyso��vwv�����=}4���N�p����{��������'�G拧;�O���^TFo�=:~tqz���vv��F�N*�ɓ��C��H, "�@�������'����|�N�b��I���c]���M���6����ۗ�U�":��k�:�Do�����|�}4ݫ/���e�o�5lW�?���=���]�^D�p;����&��� ����[;!��5��+��Y�AvBf���%��iV�pY�Xb���]����vS�6�6�9���z v�l]��M:s��`�ʮ�O���qQ�'���S�d'�eC`<L�d�M$��0�J��֎I�S���CE�g��g/$U'��I��H5`}aLR�]0x$ǯ����D���P� �o��0��=k���Ų��7�̝	�Fs�N����M�Z�!�Н��n�VMl�q�Ou* �Å������e$Ĉ?�߽'YS���_9q��m$�b]������/�6x-���&<Ã��d;�Dqc����cN���D�r�cO79!Gd|��!�}�{~�͊dP��)}T���e�s��w0�(s�<�Ǜ	�tP�#]F�H!P���,�Z�yrA�/i\�>	N-ȟ�@q��\�x����^n2�V�7-C�ށ�`��e��re�),��a6�0���$]
�O��!�<1�M�|��55�iMȥY
}�7�=:3#F2"�AK1#zKO�h'�)�4u��^����9����s!��6�Im٫3�7�JyS9M<鯭���T&f�6��5�9#�=>p�X ��j��0oƔ,��Aڤ$
�U� ��G���nx��HLҎ%et_��z�î�3�F�?�WLå��ǖ��`��R�p��ܼ��л��AL�0����<+�6�� ޞ���s䴛ӳ:n����'�"�X��<s�;���ӛ�!�84 ��	dԪZ�;0<���<�h�6���4IL;*���������Н�?��Q��.vOl�.��g�{Vۿ��;�mK8w���0T��1�|�k,�E�y�Q��
B�^&��\���zw�V��f�(\�ÜK`}KTx��K?�+�g��EV��}���)x�c"ٝ��z�A� V8��q&�[O� ,$�Y����M�%��������'�����<�n��٣A!`�� n�)&^�4]ԓ���Ec��{����>�i(���B{�ރ剫�`б�2��'<�^A����{'���踑���`u*�_��(*$�T`��tN�)��0��o1��Q���i�~_%(��xrq~�̛} ��wY�z'����?�h�'&"��>˅Y1���y"���g��Ճ\*���h^q��G�Y�\��&�:�bj�o��8֬dv� s�ˀk��A1�E<�^�!@W���]��,�:�U�xZ��f'rY�t7$Q�cQ��Ć{<�כ�Ǜ 㔗s��/<�p\x�P$0���ݲC}/��6����/�	�ܦ��0��|��vь:�{鋚>9E_�q��6H��8̐���� a)H��3ĭ�X^���!!�U>�.܂9��8�}��{�G���22�2�~e�_51��	@L�6��b񂲄��K?�g;�a�-�	�����뀖���V'��'�|�9��ox>|�Ø;wi$���g�Z�����&=7����7�ئ�8'3h�Q���WK�]*|-�Jy��M�����3UI���{�����~t����h���ӽ����o�G�=~��_�yu�FO���}�=���s]��s��x^����0eܢ����պ�����l�;y�{���m���;z�T���e�Շ�b��ѣ?���;D�X�&��,㝔죯������%�����WQ����׻�_����xZћwg��//:��@�>�]�n5�|��-��`$1	��짚OCτ�F�����䥭i+�s	�\èk�UU�J�5�1��}�}��������k�O��0�[�ާ��v���=4������ɧ��r ȡG�h��QR.���9��97(�`{�M�3	i��7� �)�P�kfY��˟H F8��*��&I�H�;�G)�;�I	�d���I�d��#(����*���Ƞr��f&�괃h�VE4�3��?�|?�$�Z�>�F���;���]Y	���졘�w��{��򇻃&�<@��t� �}&v�BI	D!���y�,u��$��������}�v��<@�E�p�E���rݚ#�3S]���ڱ����n��/y���T  r�/���u��Ng_r�w,��{�pp+�6���|g&)����o����:D��q�5��Y]�rR�v��1;6�
�>"
Ot'��Vl���lE'��>tf�ԛ,�Ϲ��Y�й`��`��V�Ѭb��TA˲>$��5rدpf�A���nD�֬zк��r�$�2��
���R|��w d��i�A�ќI�_���ٷ�R.��-Z�tq�|�>���	�}�
]� ��TkK��>A9�Fw�[�U ���"�R`�@a�8��=�MP�g�f�w�R*�X��௼�{�G���z�CB��WAK ��ɴ��m�g��:J�	ij�)�@I4-��Z�pg���B�Z�U�sp�P_���bw"_��+�ӯ�bm�/�p���S�+��Ap$�"�a��#M��+ZwaH�㪶X*�vj`fqǱ��U/@��՘8&�}҆�y���l.Is�g�lۢ��ssMh��0�^���!���1�\g���ѯE	kB�\Լ`	[�8sX�V    1bsO��z��q��URT۠���߮Z�0��.k aR���
�x獍Y��ܐ,�E"��D��U���������k��kI^!�/��'�~�f�s����5E\��h�s������ ��*Y���<�{P�]�9�ȧ���u���d�G�[M��av��G#� �u=őE���G�L���W2@1� �򇜀�H��sUL���.�m�^���X�uO��s��b�]�9� ���pZ�/்2Zi��uo�0[��׻�	7�UT��ͽl1�f/%ۡ�;= �`nx��dfƱ�&/�`L���-o�Ӿu�+�t��U��{`��!9��Nj���-,�:�1�5dL˲�5'�~�^��\�d�5b��&$���mǪ6��� v��R�R�#Y��(WN�(�9{�:l�x��$�vw��t2��t��_�����rN��=����!�
�5.N��`�2�`z���ʫ��#a�{�S�J�����>w���m�+�c�t�D�ꜽ\rM�{���>��l.���Z=�H`��lR��'���i�����oq��[�>�L�}c���}E��Ikz"���iX�p��P�)��\�����k�|+:m�z���_RVb+i0�\��/h��.���4��s�
���$��;ָb�W��;��M�b|����M�l�1\TS\:�G!� �p�&u��#����@���ֻ��e�ཱྀ�o����b�ӥl}�<GNLm�|���ܘDw�S����,��뾗t���٦��b�Nm�m���lH&��{�ď��w�+I�kh-6���y*oo9�f���C��˶�\�B���ο�B�p��s;����2��k�}�LD��&e�+o����=\��^�1�|ʣ�J��
Tg�hh$םH������\ǥ��-���N3�{p��^�{��B��,�.�c����j=�a%v�rT���ws������;+>�)�n۝詄99�jL?>�3I��x7��H�;URM�d����,����׈��t�k�)d���6:zL���h����[SԱ��v�5mj)�p����g6D��(Ou��م>7�j
���	�����yZ�;��8�.�2S�"Eh���"�?�-["��(%N��oOk1�����x���cD��9�˄�ٓ� *=���=�ln�����jϯ�T�}��8���~���I޾��u�����iw�a8���d�/Y�5��;��t6��t�To'���?�̆��k2Mhms����N,�Y��I������6W��]���6�Zc���[�ǆzD�sug��4+&��1�����bTL�<���g-���$T8$��{�[T;� 	�X^�ѳ'hE��E�C���U�w����Do4�z.�n�E��	���Q���<����if��Nw �Z�a4�O�{&�W~U�K�
.�ۀ��I%V����=CaC��P��<��
���re�&I�q�I�yƲbl�c�H��+�� �O�*�V,p��t-��P6tq@9��u@y@����s
�]��:�d����:��B�>Vw�����w�{��0��6�%�Z� B��[n�׍(<���ܼ�C���c6��(5�g��e�q�F�t�T��<���շi��]��e��
Ĺ9
����᱾�:,h���������Rt<�_@T=OQ�y2��;�$9�T�[��c���������,�6{I@��Q�.Td�+<��&ɗ�s�;ү��-�C�D���/:�:��(zV��.�3������E5�$�ˢ�Y ���C�ڍ�� T�(��7.�@�:�c�6��`2=5?�B$?���>��Ns�CguK{,�����{���#����ǲL|����x�ɹ����+�DNB�C����\�����F�y��h�x�l���{���#�CF� 98U��;4���.-<O2)�y���k�@,.Y\Aas|�Q�J��q�9���i���[�~,h��2M�#(_��i9�0+�z9g�����D�<�&����-��0z�oO?��ަ8�sE7H�5�w�;�{f;�a��?៬w��da�д����}E��Z�� ��y�U2'	oBU�F ��լ��	ʃ"]�g!��y�u�q���BP�����;ـ�m�� �-*����L �u�R$.��䣐���;�W�k�����g�ͯ�l��'݇zPU�U�u�^�4�q���8m��D1|���3Ӽ��v����F�I\�X�z�B�M��(��E.���)O`��5�q���jOE�q�h�Es]�&z�� H����?Ȇ?��\bb7�����$��/+� #Ub�ͥ�5]�V�*WrAKp�t�&�������f��h� �I��e2A�U����q�Z�$��6��~�ӱ1M��w���;]��Nl��7Q�M��8R�%�c,(�����b@�_;-{o��R�{���2㹩��+m�~�Ʈ��En���p7�*'zC�њ�|���95�
�@f3|K{���M�98�Ad{���g��׫����^�y;�_W'��Z�ދ)�4���'8���疳�r߾Fh^"�˴��A�ۚO�ŭS����~6"�I���l��(�@��cq��z��c+:ĕ���y��.�	�M���f�f5�S�	#�f$�4�K���3�5&Y1�]U�O�Dr�����1��}�-�{:�;�4��HG�{*o��L���yC�G<���z���6������l����96�n��l.�ia��$9�9��Il=���%��6��T���@]#�/��
�-j7z�����<c��TQ=B�V>�u��&*��| T�2�$���8S�C-�L{)����J��1��l�7r�Ԝ��O�`�OK�X�jY���<εj9b
��e�O�R����N���(�+��}�N�`p�N~�)�ɭ�91>�f׋W�ԩ��fʘ�`-AjfIf�(K9|n�>�����$6q�%cu�#��Mn��CV�0�5������;�Y1A��@�t@ksi*�#�f����~5�i��ĥ2@�E��R�(8*Q��-B�j���K�v�����/��~��"�RK��}S7��p"-ov�lNg�3*{;�f�Ez���n����F��#����QԒls8�U����ʑ�.K�-{T�V�.����{e�}U��.��
��ra�k(:Phb\Ԓr*^�cB�z̪�8�*�4� b������D�ʅ�$���?W<z����G?(�<k�b�8��)c�?s���4k�Jj�qvc��0��{R�'��7�]R��2�˟�fT�s��6]I2�y�V�G���Pz#ax )~Z'�Mc!���fƶ�N�L5�����PS��J8��L��H�%M�i�	
���p�4#��9���n�C=Á�����|
d���Z8�����Jv@�T0��]1���M�y�͊K��{��БF=�_��B���a���B�����q���9ಎ��+B��Q�/����=��'�E�|a-In��ä� PN�.�ƞ�[uE��3SO��`+�8����D��(�!�a�|�T$����Fe�a�έP_�@n�"ń��LF+g��=�%�z	��X��E��߱��$��2�����M\=.L^Y�q��Մ"��yR"D\+�!���+=��e�t�fwR&-��L��rQI���b&��o� �,�lݶ�Ծ�1=a{�`�ӁE����ؼ���-q���(����R�CQ����K�R�@8
�n��X��S�y���Y1R:�s�ߠ+?��Vq�k`��5�1��vQ��9.���AsEJrl]��ZlȲ��ǜ]�^-�w�rR`�Ŏ-[�	���c��x�F
��N� t����dꂻ5�\1C�ʲa^y\��Tr��`�P�"
or1pܽx7����`τސ�{aRPU����� ��V�t�d>��N���E#X��%R��\V�Lt��
2*xj�����?KS� �p��khw�D��sA�8oʃ��ca]���Yf�:��O���6��h�63x��p��!pq �D�b�@��(�!�    e��T

��p�B�
UñH65�����x3l����vnf!�,�����Z���h�I����:��wWNﻦ���:��SOQTN^@|�|a��h�P�XA�V_Ɵ��Ϝ��6L>�=�����������0"K��+�*$�
B*�:֮.�VǓ
ɞ����b��>L�
�s���YIs���x��� r�+�B炲�\^���0��Ѥ���ޔ��A�i�R$�!�!�cL� WC��<�H�n�Zg����)�z�8��:&.�'+*��Nţ������"Du7�1�����k6��"e鈓�ܠoɁ�L�Ι�8
F�Uk��A/Zj��.�L�C��0�A�H���1
\Z1�3a^���!@-C�En�N�T���Ϡ��l���J���K��Р���*�8�TU'�`\(���\]��(���Ħ��?��R�\z�$	�w%	'ͣ��_�ȇL{�0l�
�٤,�d=W^=�6of�#e�4-ш��A���q
&]�C�az�=y�Ӣ�>�g�tN�Ϭ�%՘(+�,2e\'q���������N�2�j)~f�{��Ed/�^�D��(#I� 90�z��7%��r;����>yԎR�r.V[4T"�|Η?W)��Y�aT����ٛ��F��߷�cA�K�E�Ls�L��sV-̴t^�,پ7�h��3�s -������_��Wd�e�!B�S���4�^+�)�:�Ğ����k	�@4578c��W�~7�>8��J��!K��¡�B����rl���3�ZUL�ȴ�,[}��ˊ�J���FV�=�Xp�c��A;l��&�Nӭ�i��AF�~��v�|���^s�*�L'}�M�w�m�2~�k�BC���~��|U\�z�dѠ��w�B!�a��H���ر�&�*��3���}�gg̒��8�U�]�����
2�7���/�&�к���� )͹'��rjϮ��g�x���(1��a�2�v��}��{K�
*��]��R4��}0�iAx��������iv�j��T��oDv�O�ɿ�gu2�fB.�3��Ȕ�%&� �<휘?������+1R��,:U��I���V�T�!�2�!���J��������x����Rυ3Ly����g ��.H�'8Alg�z%Y�6�L:�ߗR�U@��g���&���5⢄$_�g����"�m��X�.���A7�<Ꚛ�K��Qu9�?
�d+r�1%��,\,^4��E[}�3�x,�g�L<X'�^q�b�2������w�m2K����k���֒�n%�я�r_"z�%��;�z ���	_U�t�����A]{\g�hܟm�΁sD%�m�+�Y��rh�7���&���.��jh<koMɸ{���П��}xE3XU�>�����k��:B���<���Dz#P�eG\�9�kejʟ��R|�`�-ŏ�����5���˥$��7��aƋ?B&e��N���at|��E���t�����?��)�y���C�g���n���n�1�y������{�b_��}|����h����h����h|��h|���� ��� ���1�=F��h�����h�=?����4~��O��	?A�'h�����n��⋧��)?E�h�����S4~�����z~������<C�gh��=G��h�힣��h��>����s|q�/��!�8����_�C|q�/yy�v�O�_�@�A�B���=�l�h��]l��� ��]؁ �  :x�&X��3�I�1�!�8D����Ct{�^DL�������>6������S|���߁~�Ғ�&��\��:���1��v�xC�*.s6-�BݨL����X_�@�p&2O��]��ܲ�ȇ��	>��a'_�p�-G\�	̬�OzR���zފчE��1��;2��1w����>jI��l��ayVTI�t��g�\�X���z�Pu�B�[G�x�G�+c�-���ULxb�k "V �H-����6��E��	�x��6�4��Z� �P'��q6M�=�p�L�����s���Q���^�1xw,�Jڸ�m�xT��������?��*&�lj�b'��Ix�N��$B�'�?���g7\]������z�(/#L��-���D=*&�����]�A��&� Rx��i�j��SH�v�}�����k0 /��y�BJgU;/J��C���t�w���� fWoW���w>�M˞8V8���<���-`���T��x�����2�	8��<�'���C�|�CU��n/�*��?м���A�9��Dn�^�"J�&��\����:� "C����dRy..<v�b����f�S�!:LpX29 ���:�4�6p���O�4�[϶��YF�|�A�"KU�o$m��DVˊ�V��^cܦ�*�S7��{7�o�����`J�Y7��C��&�k�I҅r��l���f�E'��DZh��.�|�E�`�1�&	g�
tZ!b�� ��>!}���`ֵ���,�c�������\�8v*K��p��J�
"R�I����4+N;�VZ�Uժ��ɣ	|D��\t�c��ܑ⺪+��E�X�8΅MA�s�����[�6��Kjik�P�wr�@@�O�u�MXC�If���s�ʱ��!��#{
M���W�-�W��?�S�37PJ>-��"���ۅ-(�G+M��P(���`��b�.߳0�|Op�n����h���MҾ�ۨ�<릘�t
B5�O�6*���,Nn�S\>8��8}�"d�C�$�2*&ʥ�IvV�R��^_��{:����y=�ti���ثxTz�<�`�������K��F(U��)~��/O��,�F�{e�������2/���X�a��1�B�������}^vޓmk����pi\j}����:6�e��1�.,�L��B̍,��Q�x�"̩�����ŋh��BѡB�L_h�**oc�{�;$�5�x�#'<0GUF�n��}X�	��_����~[��#��C�)�g�o�����ۨ�99d����d9y�W^e�G��y-ִ�C����qĭh�p�ِ�"J�	�Ն��WĦ[�˼�X*�4*�:I�(sn�9�N-��ԯ܏5��{j˦m�� �q�@	_��Kn����审8���8����p{B$h�a�5�+�`S��y�H�u;J�ـ~Ȇ�{4}����ny[�[���W���%Ӻ���{<�*� �j��q��@	땰p����<c�	��� 0&&x�YA�LA����hk��- kd�V�pu>��3)���+��6}m~��Q�,���%���\Қ{g����A-l"%��\�t��-� �����J������D�0E6vb���&`�B�k�o\���E�k�i��\��d��&�8خA�K��⎟h���/Xf�;/���2��H�)+��Y̕�W�bED�Is�
��"D'�� �Ռ��%��q-�$-9�]9j������LЪ��5�})�;��`��+�r�����})�:@a�w�<�|�Ih��qx�-^l(��j�p"�>�b�f�PHC��wav�DFC�
L��G��(���To����En���?'�U��$����9�횼�J$���$��>�;tԭ���Ϋs�M�p⫀6)�����f�UN�F�{.�|�#��!Q�Qz^���ӁT^�ܦ�,�Br�.�p�ٜz�T_H��٩wy'&52��ؠ��l��b6���)���Ȥdo�*�R�r�����)�"w8r�c��Z̐5D4��� .�5I�c�YPw�Ic5,���ԫ�>�K'r���du������L��V�T��Uo������_A����66�e�Z_(��&1��A+˃�
�e�F;�_�h�LP�u���z�W
���KtM��WDY�dp��I�F�� y���MᔥP�wae[��^����K/���f\#P �	�2�!�t��oB�E����x��Z
bf*g����.��k��Wt�e    '�s3� j����$d���B�����ф�É�S$�[ra��������{<:�B�%�D�B_��֔�����JmG�U�H��e~�����녅��:� u�א��Hp��<��l4��	�^4
�7d�ͪؓpO\8���x����Y�_����+�������1�����v��up~og�$�,�ZO��i�NHn��!P�!;�BE�Na��"<~6�U`q.Js�	�ؘc*�������$pY�r��m�=bD���ĵV�J�YQ�Lq����RX|���I��:F��H~i8uuenW���O�f���c�I�Bߛ\�
����
�{�-G�ƥ>���<�5���GM��SG����4M꠩�#��[��S�9Ǭ���r��g��#�D;g�j�V����c�RJ�fu��-H��c�8HZ'�F}�%��Lq�+�ƙ����]&��2#�����J�|:�HfVII"���c8^��i̹�ė����1&����I|����-o�O$`�K�9.��M	�&[+��f��8�kɶt�#�&3c_���/�c/E(($AH{�� o7=�"6�"4[m�|�2�d5��ܱl�f um%G*�ã^��:��Ą��a�︆��4 _F�*jVZ0is��k���ϯܶ\Ua�Z>%��H��P"I�l�H���?D���t���VZ��W;�V^�B�������6����6h�C�����5il���Fh~fUUp!��ͤx���*FܟF��Y�V�ڍ�I��`Y�<_�P�v�9�@�^������bQ����%��+b�ʱ+��	3�X�[�Ȥ��^.�Ƹ�������8U~2X3sN?
���`{mOC<.FI)�v�j���Nd~���>Z���v��*�A_�7�;F�V�d�Uc�5YE<�uS��34�}^��ϵ���h2�c��5�����o�xxEL@ؓ�>���+A���=FvW�Y�tlb�!2���K.�Y4P�^���hBɃ5\��wǚ��N_*_ڴ#���y��ƎSt���i�j��ř"+�I�AM�Ϭ�OG5�G�,;�$�m��w�����!�L
ϓx̦uo0�jЌ	�s[�+]���e����A_���I�mǄ�Ua_�+g��i$.���䚉��<�΁ZᣧB��$\`v�V�:�qd�	\״��C虊�@���8?3GLz�ӑ��AT5��IU$0nR��8�]�u���v�s_��� �dQ�Ҽh_Y���$�s�.fR��U��5��G���I�K)����c�UjD�L3�������k�
KRn�7p���Qou�E��Y��|h'���KBXq��
y��&��?���u"vp�%(�Q�C�&&�a"��
��'�$��Ԝ�^q����4���u��N�����\j�|�sˈ	mNa������Ь}h�r�@��7�����L ��s4c�G4�9a/*#!�D!��5��č��k�U��ǅ����Ù��z�C�cξ.��Q�/�,�8�h!{uDK�rڦ�]�8(��7��8�_����سp�sh�G�1Gvz ]��#K��ޞP�'�j9���;*�&|��J&9��T���QR!؏3c$���U%�b�B�jL����WC����@8� ��W���g�q>%��_�E5��K���3sg��έ@�#����D^��	�5Hu�r�?����?)��j�ʪ(�\/k�ޤ��"��A��=ͧYRI ��"�| ���JR�Y�L|�S�s��}_�mI�*����8z0.��!+jU`�PK�<�=V/@r�ӊyG���Qh��Bp���B��������,�#��8],�m1Q��������;	����j8c���*o&���� ���W�������mj;HFT|�<�@��U=M� �e���5�̕�O8V������A�����ȥ��욐��� z�����1�HM_0~��.Fɴ���?�X����}����$@�?Lj��u����xR�bz���$�":[�X?�@������t̸A��p�\ԄT���f�]�a��6��\�͔i����V��NF�h���UbRYȹ#f,Y�q1�[s�!�Qtz6=-�%��ն�~W5������[_k�qw���"�+�o�qj��Pc��4�p{	4�.x!$�4�|2!|FQ��[N�ָY��� ���7�	�F����&s��Q�ݧ�K5H�0	ك��� �p�d%��F��<��H�Ґ�T�q)��M
Ϛ��N�3���v�^��4�Ў�4P���[�mN�kY�8�%����;N�~x�/[��r'����L��ʡrXNt�T콩����z��paq�1�s!0W�ݡD9!�#p�y�l��~d?�6xN�m�d���Y"d�M
��0�=8}s�P�>����{�#*�6 �8�.�4TxEbԽ��� )�L��&��J��ț�[6��t
��fru-z��[�%5�0����f:{�
ٽ��J���e\���QoA�z�Ƽk,��f-�}6Uo�Je��a͙�~��H�S`֎���!��-J���@�z9����Ml��c&	�@=I�2#
-��QďODn�{��lF&�k	�7~�(C���X �BC�2�kcV���f�q4SI�N�qv��$w��U�&��;�z[k�[������n�L]���a��ܶhg��UAKV�p�μƦ��4^��m^����n�|���P�\��37��n������Y��Á����+��%u�ݪ�ABc�m$�ٽ*��Z��
��8D��f]-�݀�bmSU��4q�Rb���7��װ��˷�%v�U����~����UN� �%4J�-!m���? p�^�č�\�_�?�Q}����r�G���g��:��$���ҒH�Z؄m���&�z%�P�D�C.�'�4-�w�e�m���.;.i��Qo�1Gr�eW���?�ɔs��/��iTw�
1�1��M�'l�T��t6x��2A�W�gV�B����l��&v�{�s�yvV�AN0�XBduH�$�pY3���@��������	s!�q�����Tq��등�:b˕���Ok��S���[U�6��V�����W�E�ϑ0�H��G�~���)���@/z���b�(+�~���7��g�ǫ67ô�����jxƾ*[�F�߂�D���s����X�t͚Y��k
L��;:+��c4� L�bÙ=x}}��a3���qKN��y�@�G��&�L㭍�y-�<&7��G�2�Ʋm�Gh2�d��kew9UډŚ���eѥ�!3���c�m~94m5^�:�XvE�%8����˧�<�ua��9�h#43�Wb�"�r��U�qF����G��F�v����|<`�0��y8�%e�.�r�Gqs�4�ǘ�0�O�����=�pb8�聩�k�ECz���C����}��9)�4�+��t��3RH�o@���B?�9����"A��8�)�����pEݓ&(�������B ��͞3�ēq�p�1��:�-�,�]Βc��O���������������O�)D��J��a�O�2��@�J�b�md�#KDTrld��`h���)N�?~%3rc��X�Rt"��QĶ]�����)�z�;�3I�����Ϟ�dj�9]3�2�}S)Iig?��<i������-�Ɓ/��l�zUѨ.�3�x���3�'�d��q��0F>91��2��(�H��E����� 
��/��G�Z8l��V��AbQq�w���T��YF�ŚOk	4� �z�ۦp�Θ9z���vLS^�WL{�o�w�K�E�Ը���������u��&�e��'4�X��Ó)�D&�d��%\�%AK8=��bs�*�w���;��F$�	���ʪ8<<1�X�%��<IE9hC�2QPK����-�uf0'2�?v���ktr)<�Ȟے�+��''i�H���,����Y��u#�p��qT�C���V�d,3Q�    ����
��m:���0��[t^�0��F<�(;b��?��=���������B�E1�`�n]�4D�R*�wn@�-}�� �ni�B}Bd��/.��뼨������n����TTJ���],P��)7�u��
�]n���0L�����p����5�o(���I#�U�oh�QpȞ� ��D*$� ��B�QwH���nOc뀝�y4[hvq�9$�?��.����4|�%�<�-�-v�8��v��+��+��0W6�����Y��q��}x8�;Gd_m��p�,���bl�Ų�q�P.w>"����u:�:���,��6'�G����5�R��8�mb�:�Z���ܹ[8��E�l���r&��X�N�H��=�&~W�:̷'�B|`�=mW�����l�k��ۦ��.҅]�ϙ���:/{��vﱜ!���NIf�f2p���V܄�E3�o�C�������������c�֡�����pn�}�r&L���n�j��i=��4�ێ.���x΂_X[����_�X��c��=%	����P��u�
�]Y�WE,#F�z�x_Ί�a���5����]j�_��	䂦��QZՆ��Z�*	7��7���� ��x��S���>���e9P ,>�2d��s߳����B�7	�L'��ghcr��z�R#�qa����\�P���xQـRT9A�B�x��VB,a.e��E6e���-!&�-�����ʋ^�^����'Q�D�H�\����x�4�{�;g���n������#�W�~���iY�L^u)�eB=m���5`;^@��%ǘĒ��� �A��;Gcm�)�,+�V< ��?��-��HJ,�ૢ
א�$��ڏ-M��c5f��Zʑڿ'�ZfYdin~C�\�$ ����ޙ�ۂ|hz0������:}�X�t�"u���6Uw�rfh�����;>T������gC�aM@���w��	S��a�"���-J��}n9<NP:x�^��]�W3��GV(ȥ���yZ�,��@�NϢ,�'��{Q߇Es[�{M��(2�l9�Q�k++��r�q�8P��;s��N[%ջx�47��[W��uy78���eƖ��rj�ֱ؋�&�3���i�8��8[�R���{�K�ёFÇѥ��B}�o`�˿y�ǆ/�uߡ�WZ=�A�|g)i	B���QNכ�E�?Uz���/���a�(D�ټ�����F�)B���ߠ� �Z�`���ͽ1��Ip��)G
\p�.���c�xxD�
���/�"�Ӽ�H!���Wl8C�j��<��/oa�!��y��G���_cG�z��ʹא&��DZ(�j�Ă���V��M�V:.�N��߁�2B�꼣�=�P�b��9�C�[�.��[*�*f��=3[Y��=)�i����Z674���l�$$?I�������SL�~������Y공�D����l�|�r�`Z�h���B��RuU�h�R��.N/ox��ɖ?!�ErɸJB�\.~J$q�Z@��[D��ʜ����T˴e�&Y�"��m$*���	�p&֌���~z�;�
~@L����M~"B@�W4d5;�n�=���G���N}խ��,���O�P|��/:tp��ﴭ/1�y:�.i�p`��-���я�D�]\<��B�S��ش3\��#[�@�Y�y����r���iߙ�����{��=��Ň�W.�D��D���5��ݔ	��'�H�/%��!Ӥ֢�\�3<�� pa(��Z�@O��4�9[���j�;J)
G�<G�V��Mo��n�-qf��^�vN� ���@0�M�lc
�����LҽM'q94H� m|j*�8l!�SUCn��YH�s��R�6��@�Ϡ�r>h����3dυ�6��$U�.�v"�̇I�3	[�l�ݱŢ$v8Ϧ&d	`�6�<\�>\0�Ed�7�1a��<+,��"'�Zw\�Y5�&��$�#�<�b9��(�V3-�RH)z��k�0&>�\Y�VB=���fMk���^b6	�L%-BT͓�E#_����~]�g�_ s������3�%	c�츷�.���>�>S7&��'��`�/�:L�TQ/H ���ك:��w�C�8�����.K����D��T�=;|۾8��)=IBT�B�1�؈�lu�,e�k�&��F �����uI�[w*�\�!�m�eO��vƿM�)�بVw_���[�d�7�������=��=�_��7��X~{��
<�xL�c���f<o�7g����)�ԯ����L��s��2�%�����r{p;�g�nh�nf�\7�]��n����f�ִ/+0.t|����q�y=�}�ɍG�'-���,���t�xG�3*i�G��?��W�Z�8�֦"t+�/�k��)����������R�tσJI��b�����j��1�o�gt�'z��T�º�/�S�fH�@C)*bj��ۮ�H�	b����]>��!+w9ɴ���#s��l�T��7��W�$̉�QS�HȦ�L4	i���]�Ckt��\��% �x���O"+���2Zb�U���)[�Hf��-j�?F(����L��\���H͗��)H�-.E+8�������٥�iE�Y5��_s'��Q�dT���Mj!6{���y0�������-��Dl-E�4Vw4S	r�]�-�b3��r�a�x�TÅ��U���px+��jW��+�{��Z�RG�ɓ�H�M�6�g���+��್��v��u�B���}�u���鄥�N?�ݢ dB�f;I� 
�o�/��UWe��a�w�ژ�PXQ䧳�O��N%�ЌK��%�����b��T�Dq�Y8_R�y�\[˟�H�vc2s���zu&S��G��W+f\.��"z�\����&�{��_{��=������[�N�}Q�E!�	g��aӜ�n_�D#-�V�]����X �Q�m����e(�*�����b�0���4	�����
�'Qa��.+�LM*7o���Rh�쳭{鎁�o��=1����J��mV� �1����+9��d(�>ExJ��	�1��["�M�֞�V��Aiy��)Ɖ)+��� ���B��`R2������Kn7`u����
P��c&�����ewV�7pX�M�>g#�)]W�K�Ǹd�Ͻ�cLd�o�Qr�΋	W��9��|��/�P�g2'\�Cq�k��,�h
�&�L��*�9=�=��l�3:�����~���	|��{ş�tj��m%�ܯ&����&�;]&
qJQ�t!�v���M6���d4���[xp��݁Iq�,a%�ײC|�"e���#���l��=!������K%��h�æ-�T|O|�-�Kx�����ؘ0q�z�HiI�c�W�`C�R�f���L�j�p�<Q+Gj�,���IB~stLrR������#b���
h�fYn�aj�r���M=qS3���K��s&�,�r�g�|�cN)��i; y*�8�[:pG��&���֪��}�n;S�5��g�8���Q+�Iw�%
�O�����.��T��j�"g������*V#(jr�hr�� 07Z�s`M��j�l����Ŷ]wn�:e�����;��D;S��"WŊ����ښ_��$�|n��^5�(�`��k%���4¿��UC��!m(�6��_
G��&[`�H�X%,��
Y!�y
"���L�$d���/��q�$U�˗�Do�^�)��l�$�x���Y]Y,��"���iu\�mǕ�* ��и(f���H$�p��օ��ۻ��]�	�I1Y���f�I��l��7����O�w�í��S0*�ٳw�K
�;|�G|�0~v�bx�m�����2h]��b#IE%��T7Z�%ƪ����,2�/�[��mb}�
ϋ���W�f*'���­ kc�+r��ł:��r��(�a�e�r����*�qK�(���W��k��<Cj��k)
���%G����#T���(N���C�D�wD�1h7��ՈLu.�U���m!S��6�&�.k�d	���6%tA�f~2�O(���־�߫Oܙ9>�Ģ?���    �Df��ֻ����כaŃ�[(�h�^v#��T/N�����g�mr����jco�1g�Ȉj-Xs��[-F�5i$������-���{�Y�n�[�����1��S��~�����j-T��^� �	�W����C)��U�ٳɛ>��P�!4����c�� ��VIFR)�.'͠�tE��ӟ&�����&��0��I�*V��1���XW�:a�y��8Oq_Y��볢
�}��k� r)k�JauEِ��`!ʖ����*7�Ai������6��tR�]�p�*E�J-�j�<Tk���O��`z��%�i��R�%�"��d⸩o�\�[�C����dj+ �s2��8*ĥ���i�D�<\�M݊����[n#�����"���6�E"%*g{��������=� A(4�T�%���f����./�B�y�ek6f�7�'Y??��  P�Y�i=SbD ��q����;2;�.�[7h�T:4��|�p��%����QY�o��U��r��d)�&>����$I��AQ�M���%�`8�-(S+0���8�H��$&���<<��G�m)�ˤ��iQzn�n: T�DD/>�����f[��?I�@� }�r�sǱ�Q�v^|�q��@6�zòF���,]:m��n�3�N��3�[�Q�*'�꾠+N����)w�ȷ��4C���#t���fuE�(}�J�b�a?]i�VΧ$A��%Bv͒�-�n�~�a���n`�ʃ3��D���<Ls��N��NͯN���-?�Q٧�R��Aբ1hI��`)�筭����򪆩��w@,�#��ɳ@��R�0_@4E�.3R�}0����YRh<�8���0uy�x��	{�dRd�ȼ�@d@V�N@�T7��m�qk;��p�w&�l� V����B��{�{�н�ʽ�ڽp�\x��^�s/��������K�����r��z���0�:
�XY��]����q�#n�	͸��p���qֈ��F�� �pn���C%�޾=�Q���t��vz;��j��1��ѭ��m��V9��N5�T��"�8L^Bnx��$(�j:��)Lح�?�7ڝ�h���:]�H�񛔚c'7Í���|�cP��%��yB^����+�MK��(W������f�! �b�"mݨU������ԎQeMa�/a7���)dJQYDo�c���	��g�h���-8��u@�L�v;F&��+3���>'<���ܥN�	\�kL�V^��V�cΡA���Xܔ=+N	j��%g�
���3�g�=+�Vb��>1���tP��·�0�ʅC�w14s�9�+W��G'�L;�舑�O,�R�.	��``�1*g.�Yt�AΜ�bꐊE�L���UM��Jg�XC�U�  }���:��!� �4�4��B#i�Ρ)�:y)��c��X��)y��������HK��Z����C����֛�nS��+�i�#�q�rq���ٴ��HC���1���k&%"���|׌�@0����gq � ��Å��EA�:��W�Q�9ސܻC�P�leI�Ҩ')�Ps.V7������neO��T .�n��Ǘ�*�^�/��|�f�̎c��P��W�N�Y9�Ih�n�x�Su|jf��Ci�G� Y�th������BM_��4�	�e���@�yB|P"�6��	7�R{�>@k�����4B�Q����I�/Cf�lw�ZD���\��OF��zǢ;w�lٹ��)��">G��/�n�#Q����^��}"�<5?��ò~�)��
̞Xi���+Մ�f$#RR��{�y��_ï�������vM��ڀ��Z1����*+��Ry2cD-	�}� w�mw�k�U�9����6�y�
5�� i�kfZ�P�� ����>�註�G]V�):��ޜ���G����W�,a�X�))����	0N�D�'��}C��L;�����(���Oi_�6��8c;�_/qB%*���&r��K��Ȕ|���V�4�䄴-������`k�RnM���Ӫ�.��O5ܮj���د�mE˶�y%�������N��UN�{�`s���)i�#5��!�bZ�b/]`< �O�&���N9�>-�XƔ�8��]��u�+��|�@�>�f���g��[.;��1�#��2����U��I!��C�#�Y��(�V��;�?`����L=�ԷDy3(�U��
�F��
�:Or��:̂F�D�Y<��r�g�����,�c[Ҭ��WC�ʩ��]��fʣ2������B"�
"���,g��dY*�q%�dEE �O�����(0�J�/�考:<���yvS�5x�4,���*��B��HEm��i���g�� @�(m�Wg�L�������'q@(� �&d�~J��R�\�4)��u� ]���/�ee�?�Νk}ZL��K��)ڝ�⽬q.��/N�X)��Hv ���q���2[w�6vc�シ+��_8k�>I0����*��BB\�|V@Ě:v$��MU�RfM�t`�Fj��� �h�WK]�!�7�Q�r�\p�wSi���,imT�QJ�u��ET�Q����.�{6T �/u�@���F>}�^���E�CgW�BQ)UiT�(YA>Fq:�q���(N� ��&�h4�)	�Ǖ �@%T".1)^:��'wX�	V%�r������K�Go�w�D�m��^����&x����l�,K�ĢPb)�\�f���uFN"����(u�J�_3��MfCOi?͍�{�2G���dťA"����p6�.�Q�,V1���2n�Z�(@B���\�sn��us����L←��N�zXɚt�0o�m�ȯ��4��B@���oM�9�Q�p424�$�ʎ��#����0����wP��������n{PS@���V������?�ϥ!t2����d����U��iݡ-�[Sj�T\=���|��!� �i>+D>es!�G@6b0�ӛk�T�y�i�`��o�{G�wG�]����t��lB�54���[BH���oyU_lFǹN*t�0��(��Pj���)�>��	�.�y�
-Xl��i���A�T�l�g�ݢ�$#��֥�9���*U�mrƀPU)[GL|����-IXP$��Qj�.������~ш�%�[k�eI�m6!��>��)�1�#�|$Ĥ�(w�̑h��&Nt��
��LV���Q҇�nZX�Na��lڈ�I�#:̅�)���rM*�eo�O�a�t�K�D ����S�#0���yv��!���TQ�1�c�FB.��ՃbӅ�Ϝ!#��fi�/xƅfY���
6��»�0�s���&kT|�{Z��FAw�|nȯ�G���T���lqՀU�rǕ��v*���Y��B-�_o-[��l_���R#o�/Y1N�_�)�A3/�东ďb��a��o�s�in�Qf]�=o�+"� �@3,�5�-�S�O��n�C�I��`;�
ؤ��sp��Ib�{�N��i��;���UF9�?�`7%6=��r<M�����9͇0�O�^�b���y:� �U�[�p���m`�oW����~hN7�sjO�Bk8��3�Y�����h=5�.��h�F�W�N��m�5l�-�.�/ɰEͶn�ٖ����Xb�������Bl"��2u�-_�\�+lNz�l��2��:{�J���2�X|�E�o�?3Ƚ�X�XL��eK`
�*�e�.����2� ���ڳ�ȁ}�a�a�+�zY�T�-dq�"��p#�%,�Zؽ�u��>|Mf�,̗����|�ef�]_��[ߖ�X�/�Z�߬��Nt�A��\��p��2]��[��A`���r��6V��d�2�
y�*a�����\Vw��1�
0�n��M%+�m�%�"�s�v��A`�le����ܬ�!nx���n?ʧ��a`���@)�ݼ@F�.��%�V��[��i0�W ��*6l��۝Ӈ�p6���=�aW㟄�b��u^�m	b0u�Q믿��F!�o�* s�#5    1XI�S�� ]�@��h���k�Ժٍ<D���дܗ���Xh��C�:]*ֶd�e�����H��
�d�v�m?8o�K��T���	O�J>.e�0d37�i�l�i�D]��虒iӲ��z0«��7-�Ǳ�����bϼ��G�����ӝs��z8S���/ܲ�ߥӨa㺇Ӳ9v�$�����4e��d�M�$I�PRZ���O`��ۚ���\�y�3���wKJkL�Z2��� Z���ӯת	��Z��7F����)�R�����{��藖��hG/�wR=�ڨ�MӍ��V��JQ�&���R	��Qi����L���i6ʠMuXuS���0���/n\)���2=yc��y�gR���<��C������|e��u��?��
��vNg�Jw��ҽ���N�B��f��;�?�γ"<oαg�-Up�i;O��蹳�p���R�����e��ٜ��Wܜ%�3q�	5v�WP��fO��E�;4o��y���x��j��SsCg���ߔ�_�r�����6�ӛ���������Ys$3�$�6�eN%��B�����.���0E��t�~��t*���8���؉�O?��_G'�����ǽ���]�aXо��&�hC1��@��0��S(u�M5V_ u�M1^�$�b(�����~�PY��VhSEd����ʑ��Dv�N��Ư-"��-���sL%��'�Hp(��V�*maԖ���`r�O�%`y
Š�y�q�oZ(v�wX*��������]��.�ջN�I��6�"K��B���	6L(�{��kڧ[T��>K�9i9�q�NQZ���PT�V�H+:x�-^���Ň�_}oWKO�_�������}H��>Tt�������c�:��� �Ci��z��X�mϛ�p����#}�q_���x�`m�E\,���̊s�N�|��IUE�jdo(3|�X�|#,�D���o:��	E���sp��%���J$�r?A��U���# g����=|'���q��G�&g�``�2BG�z
�R\���BM��������ϔٟP���en)�rڿ��{S��`�����\��eݎ�������M SV�e'V)�C y��m�� w���?�0�
y'���+8�����X�ŋ�C� ɧ᳓���� ����3��g� �fx$ lc1s��������6���￣�5�Y=H2P
�����m��P�X��G���x,߉��I�M6�)�w���6R�&<�+��NI�7���<&���#Q��4x�&@%������9A;�j��p59k\����Z���ܕ�� 1�?���4�pXH_�'�#��Zu�3�Ĺ�O���SU7̳��1�o⌚��k��,p�ߣ;��Z=��":����@M���R1 8+� )c�Ya�3��g�3�	NC,48ti�RܚV�䍠�| qC�x�-�~�<�$a�ߣ��X�r"�� �G���_�,ƾ����P�V�' [���[��
�b�E��^���Y�
j���u�1��7�AVR�2դb�� ������ӥ ��6M>m���A*y=b����ݾ�ۤ+�Z��yz�`c/(�Gl-���A�Β��� Z�f�D�\&�q�ؚO5��+c{o���6̅��~�A}�%hUت 杪k?�'q�+p�B��;�Aˠ�d	�`�݌dF,�-�	��(�S���h�����w���(��R�ū��?�GCa� &���I��A
&.����.�	y�Lƙ�B'$�fZ�cxrNK�2��?�*�)F����I	�1�_�����Q������R��/y.c��7��yPBc�Rѣ�H^w?��{�	X����hݵ�K/tE�D���8��\U���w6d|Q\ʈ��z�cD	��W���8�Tz4y��	�	{O�)��AQ�4�P��3MV���� p'c�L0A�(F{��N�-F	���8z &�|L�M��~�7~��_��/����?��d�������/a�f����{%����������`���6e� IgW���&��I;���C��z���?�ݰ��D�N�I��M�|g��
 0f���j(B���[�h1&��/�&�v��}s�����['0[����f?yf(�����pMx�G�Ry!2�10A�+}��1ɵ�т�X�Y=@�ދ+ ���7�|+Y,��X#3Tv�첊{�G�
��[)|������'�h˵hul/R�P�,K߰����F(^h�bb6vِa�O~J^l�"�����ͱ�6;�^�|��j���w��_�RT��Dݖo��M2͗^fű"M!��=�q��eLG�N���l�W���
�1�)�%�~d6�y����>�������\�m���8���J�[��@�d^n�+���׶ɇ'$=�7�N���l���>n�>�?A<��K8I�3����:�I�Ac�M�?����������l�v�>����L�|b�q�=�~��R;>Y�g}�p����˦����:�q��
�,���T;�`L1$oA��ȃ�t������B���V=�xB���Dq@!W�T�ʵ�|�$O,�!�
�gBO�O��%�L��9�� <R˂|y����}�-@�uh�K6ň���3QKP�,sFǘ�� ��*��~%�gU.E!�c�1���
S)k �K����_�_^$w��nH��}h�n�~�' �#���>�TP�)Q��6$\�/���\>g��3����Ls��]�t���n�&�����.��1t��L.e�Q�C�� ������DL�z�!NWb��SB`#ކ���G$�-�gp�Nw�*f��S�i ��vs"�yOo��p��n<��2��I��H^�/�F�Wt���Čy�I�nHK�]Y<$�'�4�P���K�D�8�~(����V����IM�a@	����D�S�-؅�	"	����n����6r��q��)���	���FN-R�����Z�I��U(pI�<s��d�M�)$C)�o��@�����x�[3��ѿ(*�<�n3!��2F�(�֬��'�ɨkP32��q�\̆�n;n�/ɍ�ZG�6��������k3g3�_+ӯo6�P�a`���Md���5%T5�Zt�"+@냶$�Ao4�(�x��B��9��Ŗbi�j�p)�����1��u���ʫd��8�!��4Z�"%���
̊�؜{,A�NSY���ȞG�uF��Ќ֩O�� �{xo��eS!f&h�`�D� ��$n՗���p_4��,�<�J�[���2�^�Q1�)A�f��btV&���9�x���B�v�u9�j��RDuc߸&Y,��KD+H���n�+TI�L��y#n~�^��3��� č��t�O�Ƅs��c�g��M�c�9��ʺ���92.�E)a���nA�58!��� C���=5��2��ٯ"�E��e��%�b�e���� �Z�p�r��ڵ�_�ޖ�eq���)�!��Ɠ��"�Y,-�-Ǩ=>���ɤc�Ω���jf��Ҳ|&�,�%@��ħ�����FI�<�.ϳ���0��Y��@���������}�$  À�I}�$�F��� ��CRձ)�m�s�B�m��Ȓ1U$�7��w"��P����3~�U��Fy�^yX�Z��g��o��#ڞ��[E�V�;�|q���,|��lo>�Sθ��Rh��Gu�FѢ��O���/�ѕ�؂����߱t����3%�I�8[0`i.��]X)�pTCZ�Nt���m����7%�%Y-��EsJ�����pN�+#~g�s&��6y3��5�Nt��²E�R{,��X?����Û��1��{(|_�lu�rE�J	��r�Ʌ��	�KY���Rl��)�UU��g�T �Πk_}4m�n[y�΢;����ޜ�P�)Tɔl*3�B���6��J�U(\��ە��fPׄ��uE�g\LS��>�/�R0n���6{q$P�&�,-eg���Q���    n�m��E
��t�rG)�$;�b��U�h�(��px��&	K-�8���R{�,�Wy�J�u��Vl���wi:�!)�x���2��x���ؼ��B�O�F^"crXq�$!��Y�VcHe�I���_��OX|���Ϳ��t��&�l�y�����Zx8_תG�ͫ�9&�A���'|kB��ԮV��)�H��%U>O��49��b��p��-,I���P8Z������ k�5��`�Ln��IȈ�"��0x�Z
�s�~���:��q/�����Q��R��aô�,�W������:(�3�(˔e�9[q	���0���mz+�\cل�� �G":�ŹUR���!"O����������G���&�n.9�X��F�&C�D!��c��8p�{�g�8����>���vĥ�[�>�>",b��`i�cH����;���L��'���:��\�J�kp)�qJi��X��-p���������J~s�C�����s\pd����Y����Pp*ۨ�dY<٥O@�Y��z��~�����y�{<ʝ�j�� �ͻ�������}�z������-<"��r�Xfp���CA��@&��ɩ㒵2�}$Ɍ|�P�6��Ȫ��7J7g1����\�x���[ �	ۋ�zY� �J�{yl�~��^�c�;�a������ę�s~�<�e�2�D%��
1��{LK��<��V^�3�I6�iT���ڜ���(�����+x���*>D���
-%����9�bN�K���C��+��\�eqŘ����!�i~���/���0�Q����C�(	��]]�F��'�g�@e2]k��?���!���j`I8�遾��-�@����=��z߁c�7���"-L��	V�f�t�w���U�9pQ�f�d��	 Ŋ�#'KT�-+1�H�c���p�qIմΦ��HX�`0F�f����wn3oý|A��CG
`��6��
X؉E�L�P?�l�a<��:=~��~��~�	�����"����j[�G��B.a����_ga��l�m� ug�MٚJcbtj�������j��l�C��0s�4��x�|����Z>B!��;nNp�,��l�	�6r�9A:���k��B�D	�����aY?2�so��t�D��Ҏl:a����hB 3�V���IST�tT �2D*3W�����̅�����}%W�YJ�2�l!9��t�fkU�)&���tC�t���@{��R�Uj�P��U�\�>���4��+�xU��m2�`����)ZUח4�ED���xɁ-,k�;�\(#q��$��מ��#�?0��[�	{@�W}��>��������7���x��C|�@: �D�BqþP>�0g@y	��d�u �O�*C�4ƆIU!v'�OJ��V��J�m[g���͔�/�QWx��a�\��������}�t�x6��M9�I�� �"���B��u�uP#C_�v���0��~1L�%v�
��p�C��ܬ��x3f��d��	V᳊,"�
�l#:��6t����m2ZM�.��u�'Μ��G��?�?*�7�$�Mg��,��5Mer:�d�zc�w�Y̿ К8���"��}<�*�}y�~V#:����kh(�."�VAũ��f܌�<N�s|�?���E��g;�䲓�`J�q!�Av��7��`^����7�V6xY��|�)\)�����r@�xj����r�	3�b$�ZmӬ`�H��/lVBy��ś�2�'�(�@ٖTɠdA��q$��A_?�7��e&���@��JUO(���m��L��]-7�0;�%�J)be��X.�Mt�S���-f{�AqC��C�J2�|����K�^%[=���|V�#4=��"hp�
�{ �$�u�3��R��4g���e�~��\�L�.A�o�`bq��U�=�07o����z. ��VCqR�),�X":3j����R4�lsg���X�A�hj��d��RJS�}J���]����)����"�K5��<��#�DP�T�`��ҳ�8��(
��,F��+�7����l�f��g��S@>�����;S�"U��G�0�9�`��1�9��<VK!r���"�8��Pje��|��L��iгm{�����#n�N��]H?7��峁�����2M1�<��U���ĉ�w3@��QH�I4���:�x�Xa\0��Y���]n�����+H��8�� 㝟(����тzU�j@nB�܊#5�+a >+�a���3�8ԥ���_��a���+��/�H��29 �ƣ}zp��I2��:�\�B��x����8�"�f��ٌp���D��}��`o0h��&nD�-���3JUɭ]��L ��A�8r���iTB6�:Ns��9q��
G���r��T8l��kM^}�wJ^=�7�R�Yß����+-��@�'���S�&Y�<KƉZ?��+�v����q�f�>� ��uQ�l���y%��TF��`�x�ғ(-��)2��
�4�Hqa���B��������g�[��b�g��>���m(T��7����U�K; ��6D��|BI6��D���76�dC����*Ց#�!��P�>cTvT1)�Ǧ��Ӛ��L�n(���L*E܆�p�A�m1���4�r��"�(@I"l��׍U�tE�˞Y�?V7=6��'4I�  ��F�r��Jd��P����A��QH�'-�:P�^+`���n�\	�L29��yj���{dˌ@��4�8��-�	%��K8�y�`z�C��"�S�l�W�l�&�GQ���-]�G���>?�,�Tr1�|� ��xVyy��f�S�[:&���R�"�c+$g�܍OU<�7-v���P�
t;���稄�wQ�+�9\��ϐ�(s�ꟳoAE����/�v}&������RL����Z	�rP��R�W���ō�.5�8cO����7Or�6 *�ؚ��IZ]
I�d-g1�('�����Ke��f����\�\i,�2��XYȀaKY�b$-0MW���2�6�t��aNZ�IC#Dt�q^��dMC���|K�w�[�Z`�+��n{5�q&+t<�W��E4��#0��5���62h�`�&�7�ř�+{���W�S�TJ�,l����b�"ĺX�b�n��d�/A��u]�0J�~����D,�i�aȁG>}�/}XG����M&"mp$�°���X��C
Y��.� �}��NѽNgf̰�}`������4�K(>�G`<�#!;+���1��N�.!CQT�*�u�_x����oe�]у}�`�'����c����B��[�B�!iNʚs~��X�$/*�X������r������B�ɰ���zm%���>�8��V>�"\�8�Ի)�~>����L�b#pPs�<�M�&R�ѸH��4�Q��^�D9h����5���GU�T�D��r���D���N� 9(����9�+2L�a�ͮ�z�(�K
s��&�JՏA"`&$�Q��Pfep�,E &�dŐw�d�%g,A�g�'���m�R9&C�N`�P��@P�e���d�	-�-�H�H�+tJ�ͳJ�]bD�͞�jhy@toh�R^,fބ�:M:���>%Hmۆ�=�&!xk��t���+�'}��2Q8���R�%�l���zZY\�6���bʒHb:П�ӈiB��ֽ��1��$|��*�)+�v��:ۑp�j��Z�RN�)m'���Y$�J���R�I0�U�� �f���g��9�G��-�`\��K,�$��w[N����Ⱔ�u�82#���	�}�-�5�3:��z(�@˹|J�o���J�"�#䞔{�Hgz2!D����ꕥ0� H��R���&��Y����yW��8��k9I�	�U ��C�	x�_����Xn)f�XK�/rh6'ˢq>1�97jI��XJ^rH{G���>
E=(�ZP��%�F���$]��luA]s��炢Nv�    �4�gnv�
]��,&�K��"�	��X
� ��$'�s }��c�\�%&ѯ�v�G������M���a��"J�rQ�' {&*��� �o�1I��2�R��PXS�+R��L]`ac{��Φ �,�3Z�l8�����LN��t�V�/����������C�;�=�[D������6Z��Fa�C�C��(Q�R����M�N�z�%�MA�<��$��܊�*��B�o�;[�����1`�2�n/��zѻ�^R����xž��������&zw|r��]����ww�Z���(�o�<;��o������wg7;�ߟ��k���'�W��ˋ�un�P��}�?�[��2nؖU�Þx�$�D��m�l����K �BA�Y�j�]⃟j��e=�����ɲ�P�	h2@����KԌ���܀U+�-r�1��R��[��3"����f1P6�J�A��Kӕ�u3�g9�:*��+T�(�D�s�EвV|"+ƩQ��傝h��~Z�� ����ا�s��}�}�ҞZ�#Ā0��k�b�K,��*Rh��I�/9�v�L�g�oon��{�ϽY\�Ko:O%$��Q�x$��ve!KG�@p�4e�	�3V=�[7��c��C���4V���'�0�mb%z���o��?S�ޑ,e�em���Qq6�z	 �J2+�f���[e���6�1]����Mt~|qr|{y�Oѭ�����
nb��@'%JЄ�L��ܹ��r�J�3'�0O qߚE	��i�������!����Û��5䔬gZ8�od��!�=�Š�k�pO��6#��,�#�)IH�Q�Mx[�ǀns:D_�p�[Kp7�ى����h��?	�n�dʷ�����7D���2'�c��\[�=
�k}��W&Z�>'�7�	w�p�x�ʎw27�Q��}�U̞z�e�� ��?����}���*�:���h��w��z�(<�'\j�O�+a;���;�z��ԚTx�"B�}Of�m�Ë��o�(�/�H&����|
 �Z�F�_g�M� ����ݍ��2H&.5���d���lEXo6�5�������^�Z׬>͠@�! ����}O
���̌�:ʣ��Sq����8����i|�|�7�S���G�e�YXku��W[G��������&Lcy�
�P�<p��cK�L8c���'"')jF�����L��DF#W��;�l
m��N/�d��9�qb�;Gn�q͒���Ild?�č0��i�e��]��&h\�$�����/�#!"�.�F�4p�ZJbb�a�DW}���` ���"�SKY��S�g�6�q͉�p�RRκ��|�$pМ@J�Z
2#��yф2�J0Y��~�W���`>"'|���Z!�"��t6/�Qz���g:$�����k>��K�W<��G�O��c w��x�@�����P߇G���l�������}�Y$)m��c���U%������w��]�P]8�!����g��i4� ����a�J����216]}��gH�������W%7M<o�-�]o��q8k��
�����-�����߀�4�^/���2��������9
�������I�Y<�t0�� ��'�~xd=������`�pl����ש�Q�t����ґna�jɌR�	�����Sz�ods�:�K��Pv+���uN��[!����9����+������`Nf8\A�@u[\Q%�ʉZ��B��P�:a�?10�ؑhv��W���Y��O����g�8�Q5os�i��n(���j�s�ߣ��q�k���ؚ	S���Hy+�$�s��E��[Վ�ڄ��XwMe���GŰ��S�Ԅ.�:��r���MS��T]���` �r4�� ��l��=��b��/�.�-�;UN�����L�B$J�e#���,���Ȟ������rI��抷Ŵ�����5 ����9�6�h�E���;�	c_s��Q}^�	��{V�x��� �%��F'���wB%��"f��>�����2�.�{���=?S���^��ݾ�>�w�g�Q񤹳�L��O�t\D��gW��W�pUw�oV>L"����^ﺜ	Q�	�$%W��y1ˈR��
̓_iti�Wy>���rn�XDNĹQ9�7����oD��ɽSz�7đ ntVx�	�ӏ�b`cP�˫��4����ȲR�{����Z�=�m�q&y�2�t��_�9��X/�k���[�Z�TY��*����gI5,S�҄FT�������bQ�˪Fx'�Q�R]���h4�ؤ\䂗��;�sו�KU�o	������c�S����\5�z@��+p�9��u��4�g4�ӓ�k*]��4��JEg�W�2T�fͳ��Q��O�#8ȟ��)�A���I���S�� �
f�\z�L�k���/�V���κ�S-N��>�<S+ݠP%��1ÓȪ�� �;h����Z�!��>W�!3ٴ!a�N ��'�P���+�^����gm� Z-n��e�V
��_d�'�Yg�R�5��}�M�1N�$�u�a�|��E�*�d͑��C���-��X��`�|��c����kC4���2-B�G(��cTK�C�pQ0�T�c�q��D�gU< ���w�>��ͨ�O��p���(Q4�y�������%�do�}ԘY���D'fa��~�Zii���
���3���2��_���B�My9�υ�7�Qd��1;f�|���$�ٜ���U[��}邜�f�z��H��x�D�e/�p�S�0�>J���# ����M���V���g/T��J���z�tơ��?�?�߅JhY�1�KF�Mж䚡7��m��� }��XZ�y�1��I1��U^���,�ZzzF2Y`�1��e�cQ�V΄R{W�C��6��?�+��c���ט��uh�д�H�ɢ4�M.?+��r�II�V?��Π��ͣ�C�-�o5	�G�n��m$3����O�Ud�Qb?���DC��������]�M����)E
�P#	lsU�㳬�@zN��ViS/5�6ԇV��yj�H�Ѡ�?�@S(1M+���Y/v���`�.︓g�w�dD47RH ��6�B�H�M�I��@O�BS,ф�i�
yS�vb�mb;M���� ���|���ً�D�=1��]�.I�t}�@�&p���&_f!���EJ�y���򨽉��U<Q��tp5�-��KB�]RMOYY�[nU�Pb�us=gk��U����Ә���VW�}��d=�Y4��Z�uuU;M����;t��O�*���;���^[p�
YQ6�X��sz��x�ۘ2_��n�(���o@�0ĥ\޾�(I>*̜�5���[)��5�8�}�Y����ᪧ�.�&JZ�j��)B�g\�_�ek�
?��͓q��u��
)FdRT� [�M�X$�Π�W�q]��=4��Ha�[RP�S	8�fa���t�d��K�t�=Zu�y'^���
����nN�GmV���J&�b՗�I\Y���v��ǂF3	R��w�'@J�a��RrQ(���<�ք�Oʴ��{�Y#Rc�1c����X!Dv�n���-���Ci���T#�����<��9�T����ag+(�4����{E&�7���@�9R�T�^p,�ds�%àR��	�n�*�U ��q�Ҋ�B�:���+K�+��K��t���K��v��m��sN֞G8��/J�4lB�W�Ą�Ͳ>D�D|���N�>�]]�;�f���q9h��a��X3�8Q��f�;��6o�u|X�;B]7	 ���� �D1�8	]��<�dM�m�$����pP���;z���zx`4X1@��	�>������+j��~�b1*�<k����/�#}��(ށ`��K̥)��7��r���]�ɽ�yPy-��ׂPS�ҟuw����1:0+�{s	?@�N���!Rf�/$��_��/ �261� �U�ؑv%�~T�ͬ)�� L��b,{"�kq.|�a>���t̓�����?�ޥ#��9zM�g����W��tK�b�N#_��Ma,�P�e��ʆ�UR��~��'��    �n1˙��V >�Χ���)ﯮOA�H'h'B�UCھ���0�my�ߥ�F!��8���b<L-j��R>��p<�[����I���E���7�b� N��i~8�cU����T�ݎ#�Hg{Ȟ�.��IY1f.f�\��QYH�p-I�&5� ��jD�%���;Y��5��C�EU�4�����Z1b��v�����@�f5@�5��
�A�����_�vv��_��o����3�3���g����ҝ�QM��8����ԩ�
A�q��q"8X����
YO �X����?V��>@P�s�h�n��vV�؍��\Xf 6����N[}�$�S�=!jd��ֵ[Φ�Ti�˔?�M�{,�?�%y�:��|��?ޒl�ùf7�J��F܃�f+�s��zoL�q��j7*�a(��3�q@H�6��G�!t�=-Gz��/o�������ȇ���N��1�d���1|��m=)��j��䔺Ks��8���A;���V֠�jX�}< A�/���;S���
	t����w���n�����¦m�hfd=�9�0D(�7�$B	5����<.2��Y ��y�]�L��]F��$a��jLD�
1�����׋�/��F�ڊk������۹w[�G�?i�V��Ѓ��F�+�"�c+[ͪ�I�3�))�ڨ��H�j΄������>b�;h.��) ��z�'�I�P��ma��RZ���g��0�km9�b㶯%�.�Lŉ��0>�X9�bR&�V�÷蕚'��N`���@�$���9^h���� �� ����T<'�MT`�I��Q����O�;�s�(��H/Qx��&҃o��`���t[j��)m�>��'C=�����X�O�-��(�Ia*&�Xe��
vt���-��g頛��%�@j<�1�쀼NPBjn[
���f��z���b�B��>���)F�\ˮ��;쨽�Ho+a��#W��n&^�ɸd���J���5R���K ]��;���4nRP�n.���v_���_�в��.DDzS�w�0鞸��׳/Dy�鮭������8�3P���пDy����.}�
��|$�_n�w�Ozzi{�p%3�JY���\f:�8ý�P;!���j8���C7ʺ��)�����Y����,������Z�dM�ڌ�T��,��!XRz��'�V���ﮁ���p�>�F�����.�[���fx����e��N��Z��[�X6�K�b�n�p��@�Ր�4�	����3�7t�8�c�K����5�>=�n�Xu�biQ�`��Q7�a< L��-����N�	�]���i���sIt9����9źh�|�vK�
�~y�������?�70�v���ݥ��M�w0D�q�~>�2e��Iq]�+���:e����#�= &m5���D0x�VF�AVp����*5QRI{�7��BLVd�OG=qg�h�o��i��K�\�W��j�u?�Q��&�l�W�V�5�:�{xQ��a�*33���̑J�QMh���?�_���3��靅�~�����l���^Ү��
�)Cl֭���9�+EmS��h�#*�*[���������Z+���Ss*(��]�S�K�*���}�U	D:�(E�+�N3q�nT�� x�K��~�|A0cB�}EI	'_c�������4�n���o���542 X���8 qyR�[� �'���Ά>������a����21cU��{ﬆ޷%��s{3����ib��������'瞄�<k�f�jM�Ȫ���
�U9���!�6ǣml�E�Aԉ�/Ϝ�A��A
�C�ے�Wmn0�jCMM���O�U
��$�����v�ga`�%�2zmؚ��+�$���Ч\56�R�%Y�'�u��⡮���36@Gx�N#5{�+�F��Sj�pRUW�5���r���S�0�ɥ�[0���᳍m%���	��ŁpTp*
�'k�^_Y�5R=ȇ��az�ea~��	`�1��@�B(S�c<�q�[����d�O�l�H����f1�놟����=��ƖX���Vϼ�X�V���N��_,W���QB��ʗq^YXc�&֙�7�יϴ̷N�3?�a�r��qg������ݹ���*�Z�����g�����4�F�s���䉸�[:^s:�[����ym��t�y&u�Ys���@���=��_�^��P Mg��-�p�\/��tU�EH�����na��li%�f�E�,S�XS��߇"�AN[JL�e������"ʆ}��f�s@�Ϫ�/^H�Y3`���s��s~d�`A�FB��9�}DT�a�}��߷�$����o�s}�̀ŗd*c��P�h�ӏ}V��a�E=��N=�M]�+$��d��A���B¨5ϰ��_
��<
�߾�o�x4�Ӭ���^ސ<jW���3ͫz"Tc��f_�Ee�����sc�7��J�q?��>R�B'$t{���y�W�iZM\���h..R���~ڀ���Ӽ.���`�A}�.z�w�JA�&�J"EIN9�4S�tPQrК-y
�?F�;<k��1�
�8yo���J��?s�'oٖlg�I�NC^7��~���a�}�Tk>-<Z����bh�:����X�zN���tKO)��*^���^���H�A%S���}�|Y�U�F�q�(2��4�Z�g,%b�����c�?���n������w,ѠRpJ���z��N;�-uwuTL�_��}�|��&p���T�w�lMbK�88�cd&ǂΗR���� KeWTݴ��_�#��P�a�*�ѧIIa�9F�$�Z#_N�jҦ��r.��M�mJxkq�r�/s �9!�1U,K�\Ӳ��P�X��-�.����ZD�S?�C|#;y?�V�k���k~ ��h����,�鵓�-g{��2���[�ʚc]�V���FYy�M�vJ��t������}÷]>�&�j�/����7�,f�;6���Ry��ϱK_"G�^�<`���Pa0�����3ad�ѳy�6�Kc��1��x��~*�@u�Oӑ VJ�>�D�E��o��D����WU��y���2���/��L���}�iђLD�{*���=B��G[Q:M���'�ڣ�
?(�����c�%,ӘeF0�����|_�g����Y"�R$ 7 C�?8�Y���i��{{���}_<x�n�%V�7�ӯ�n�*�MO*b������硧?��osH�NƋˠf2M��z9�q���7�r���ZL��43㊞���6+�3�7I[Z��b�x���C��gQtq�l��Ѻj/X4������7�##�;G&>�*`њ������r��(#~ZA�KA�a��ˢ�/�E���9��n��ً�dH�<nV4hEn4Ǡ�2��%�Y����yp�)4�+4�3���gV<���������=|� �����Ý�˽����V���N�w����{?O(rn���4:�<9}���%6�?����q6�������?�TN�*��?�� m���70����;|��}���� 1�������\ߝ���4���л��>��G��$��W��OS~u?��{�����-������G{�8���>A�.��ӻ�����8��>zv|ݻ���^�}�����H�OH$�fx���mt)n�;���{����^�Oܼ������/��ݧ�a'zq`<v�>�����m��nk>��������ק�+��x�?y�V�B�S=�`���hz�?�M��v�G?���9�M�RKqկ�����c|�8�'�t��cꨐ�Rhe��¢
o�m(�3A�>��5`y��N�\P4�_Y�Ze�ƶ^��F�Dۓд���P7���+/�տ�B��K(���Pw�%��XB�m.��Hn`dp	d���+�f
���!5��w��Zu�����&q�;]�^vsq��*�%�x]����װE�Ӫ�7U�I�f���U��B��Ǣ�y��ы��/v��*Eg�W�׷7A�u,�k4�{A���}f��΋������x���E    |�Y�v�}'HX�8+�m�t�Wh"���h�ZL���C-ʱ3�#�-#���W%�y2��hV ��v�u����,�ciͳ��S?��?��ӥ�;�cOn��#�{�����N��Ҫ{4���ع�^����� �b�-=�m��K�r�JΫa����{�B���bq}��W[����%�jG�92�b�<�s���}p,�݊G��vu�
�}���+[S�f��o\�� hh���%Ǡ+NKb&+�.�3�@b�6�a�A$�S]οPd���"ɡ�@�dk�zΓO�媤ު��z7-�LkL}�y�D��X�VJ�y+��YC���(���V�C�a
A��&$�$Cj�쳭�/
�v.U���D3���Z�`�4/K�2��a��Y��Q�*�����9�|�������Խ1���G�˂6���"����r� �tW��z=�Dq���k����:���-u+Ċ�Yh��؟s��=@�w�-ո0X��`�`fr�;� }���`W�|Hc��3� �(�W�I���k� X�|�5a�5	ȶ�4S"�����+Phj*���B����rToS���.�"�Q�m�]���ݯ�}n{ {�j�FPe��i�a��0��bŊ���P�� L���,:���!��f!�E�ӂ�����w��+Vk�����,+��7�<�N��I���j�x��o���o{!����B���v�X�		sȌ�6|^�y�\S��c5�����G��s-�Q��;b�c/1��TΌΏ�cy[�^1T���d�G@D���}�]�y������%F׽Ȫ�>��N�](�N�����p�g���k}�~�u�n����Ʈ3�9,ۂr��X��{���ǙP7!Kf9�R9`:�^y��/��;���JÂ��KnW�Ű�ͽ�� �7+a���X�j�.�~_�k0�JE�r��s��m��lp�e9Lj;���ְ�3 �����>e-\��7K 0���Iy2BO��b���3.j��!��X
�|��4�`��#+�Nb�s� ���8����x6.���43o�RbL�г�	��6��˪��X�ls�߀!QI8��Ā��+�bQ��䓋v<��])X�U��V���okL�e+gX�;��s�s��_��w[��#�,_�Ү_24s�~Kv�I�Y��py�������/c�?je��\�ZA�:���/V��G�"�t�r%L����I5=[2㗮��¯��6�POg�X�� &T[3�_eZ��o`|%��+���4�m�d�,-f�
�͗΅��v+פ�5K����YV�x�6q�>}7}N .#p�<�y�'[�P��'�\}qe"�D����� 7���Jߟ[:��KF�k�d߱x:2� �]���������Q�ű�}@y�h�t��=e�������^^�vUd�/�"/B���cJ�U�'S�9e�c�ENP(��*�q,N�m��d�p%�S����jY[݋�A��b���<"_'�`��[��0�����Qa|�S�Z�JJ���7�N�X{�[MVbn��`���I�Y<����� �bsf�>J�;�aj���	5hx�	�>�t�[�SP`�B"�*αq��.���zAZ�r��O��Z6v"�Y�	����кg�@H]2p�����"�6�[K������� ��zc�_y���0�y�Z�N�����T+�G�r���\�\�pD
�7N�[�-(r�jZ��lgO�V��6@D<�m�8Dr63�W�!M�6M�$�Φ�=��Q���X[D�2ӵ���37w�4��b	��{0-�/d������P�h���~$���u��+-��֩#������{���gˡmZ���D�-\��w�/9�ǆ2�b ���ڞ3��_���N�wB2O��<!���n/0���S����/e�A�v�|�J5:�햷�9��S^xxA�O4�ƬM�j�cz�+��C���c����� :�x�(z���/���U�#���c��V5{82�,P9E�Ӫ��ܩ%��#���Q�غ����H���35ŉ8���8����yN��u(�є�iy�^E���q�X��mgm�Z�ߌ�>���e�S�X~�q݆�5%s��f��~�O<��6��*�3����3m��VwZ�)VDu9`�mK��
P������R�mN�޷��I��re3k��P��{��+	֮����,2�h���A�)_�sv���	g�L�",4�T=��l�W�~�h��ۆ�8�b�K����5���v7XI��F��s�q������#��:���4�\t���b�Z9����y�ב��)>n�T�r�i��|~�o;�?��jX6��'�J�,HB�8	x�f1V��P�*)(
z�K�>��Q����&% 8�MWt�Wӕ���Խ�y�������_��з��7os�����܋U�L�ZXU��V�h���������KL�s��׬�dv�L���`������@[���e�8��x�����*��}�������Թ��n9}��X��B��#�oXL
[0�?�u؉�y�~��CTh����b˦.T�cU��ǻ�K��pK�8�]�f�E,to�d��)���+��Yî���h���~yI��b��WZc��=�{�/nZdt��U�3�2���*�L^�Q�����X�P��ɴ;s�F���,qE�^����C	���,3{��8�:��5�i�h��'E;���dd�����N�Zߗ(?C1!��(�	�,tؚ٭� ����'���Gf�K9�t;�O:Q�p��M�ll���M���]S��U��\���T��V`�B���4�u�:�)[*e_�F��V��ﻴ�gkf��O���U[����`���[�58�~u;$,��q롚lB/��O6���um)���٠��VJB~�lQ}����b�PI�ڕf����be�FySd����9�`�� ��k�M�_?k�KMڔ��S�P|k�6�"?�P;C��m�6��m�gd�]��	����@[���gfu�#��\�qBm+]� �,��x@�oH�4s	jn.#vݥ���w�C��r]��%UZ��3K�U����ڹZӤ� س<ˬ��<�S=�r_HC�1yz�{�@2Q����L�2[3���!ޅ�;Kg����D��q]��_r���c�t86�a!v��;aWH��|�3d�ltp1*�*�d���Q`K�L���s���pF�4d���-���l':͢��Wק��I'ؖQ0(�j 35L#Exo�S�.U�����G5�*�Ü����a�@07!g��Y9�[�����s�Mn�% �����,��}�J������0#�׊���뤲�<�J�j���P�RN�o�=�J����Y,5�'�gƓ��}��G��l���ƫ�\(��7����dW��oW�3���w��=Ly<�ó�o�(�����,�+�S߉�ƙ��E':�����\'ո��M)^!��<�/C������i��:Ј�o�q%>>���l�G���@4+�B�AP>��m��,nP�ý�l'���N��4u-́Nb�`��Q��!��Ϳ�Sj��$�� H�EJ{X�?b���o�Ɔs�EG3����/:M�
A6�=lq����j�����xfg<al�Ԋ���,_�R�j��*������WO�i:���:�|�����T�<tv­x��I4�yV����\�p��դu��K�_¦��%�W�e�4*x�����L9���턮n�KnW4>h�`D��C���2IS��B�;�e3��]1����_�[cAm�}:��[�/4:�ē�����J�lͲ>���`pӢ�������,��{��2��Z4d������+Xp>��Ǻeī	�c~�h(�-a�g1�����d��/n*��M���[�1�+��<i=����ԫWO�E��{�y��1��j��zX�Uh#����@��aΡO�,�_�k������c����X�{���XV���R�bk��"k����
������b�YQ�Z�����n��}-WV��	ԩ�(�+��j$�    �Δة�&�)�gv��+�N3�ˠ���A��L�!xdU�A���O�l�l�F�8�M�����w/Q��ͶN�?���$����AH�?F�/�Ջ���4L^�72��Z숓Dخz#�f*��-�,��Z&��A:�17��8�,�ۄh��W����(��l�q���^.��סMU��z��&�`wI��6,(ؐ<D����$PFώ��Ntxx�z�ߘjXd��+��{aϽ��^������G΅=��=��=��=�������K�K�K�K�K�K�K�KؾKؾKؾKؾKؾKX�%���u	�,캄u]:�.]���./]:^�t�t�x�r�K�K�c/]J_������������������x��,<t)=t)=t	;t	;t	;t	;t	;t	;t	{������+��W.��Ͼr?����k��]:^�t�v�x�2�K�k�A�]J_���v)=r)=r)=r)=r)=r)=r)=r)=r)=r)=r)��������]�˻�����/�=y��	�]O��z~��]����t]��u�`�]ww_��uu�����#�qG.�G.K��3��eёˡ#��;rO�#��;rO�#��;rϯ#��8r%�ѡK�-�Vp�z9�|%��L�)�T��yI�!Ш���Й�����{���)B��+�r��CJ�Jsh��%3�~�� w����m��3 ����?�)�=ě��[��Ț'7�ݕn�7��f���U���q�*s��?tw���n�u{�n�Cw��+��]ه�B>tw����]e��]��R?t�����]iq�)s]����l�m�g�	� ��R7o�o�V�;k���G[A�L�>���j�f��X �U����3�:W08�ZdQt�%�u��uY�}�LK�V V��[ñ��oE������5
ցx�"���;��C$'�HpM��h{��0�#����}���c'�Ŭ00����-��$߬H'>ұ�w�^:IB��ͦx��|5�3#�u�J�L�E=EC�S+X��i�+λnIۺ�� o� �ݐ�h�3 %���@���u6�uBv;z6�Q��U:<�K�abn
�ͭf1�&�')?0�i)�بN�):�I�3G���|�
�����+�Ev��Q*fbO�����9P��?�IYtd��1Qv�8������P؉^�w�9��x�zjھ#޻���u�����w]����J�^N�U?���%�3::��QM�8�H��Dr�>@4P�58��q�Y�V�8�EO15|@b��_:A��P��Hw&��wa��!�~_E��U��8j��q��;(ϟQx�>O�b��)Ě�K�y.S �
R�op����bW�V�"�v;���}�󇏎^=o76�FD(����!�M2
<��K�R����	u�b�RBfWf�g�VN�h�;5m��r$d�\��3(	 9*Q���8�T�=�<>2���v8u��sc1�,�����`���ā<���R���ȅ؇*f"Le�<X�vT Ltމ���=��)�%Hw�b,��!f`4Xfr��Zɭ:��Y��Q:�(
��\�_g�*�� ����Ԍ	U�SQ2���fp,f2��7�1�l^O"��+��8�`oAp�&�O
��0
T�pl�)�V0$i�!YW� fQ!D f�8%jŎ
A����!T8� f
L��}�3��2�S��r
�A4r��J���a$�ި{�nT�$b,���ޤv�F+Y!���"o�
c�V��,.��t�+<�D�f�����j�2��g���HS�nZӆȦ��|�5,��u�C�SFAY�w�	����{|3�t�3�!��������i����3����0�X~�A(�fi���(��A�"D�v�̚�O�
Q�W�1363>�>w�;��9�w}�d&�ęÅ�2�3L�|vqv��U@����� j�%���R*=��hg-%qW���$������m��{vk0g�K&s`YcE7�<�ӯ
�ď�X�q+A1-�W����:���)�q��A	��EƷ�g�3<����50����bB^�kX����ɔ0�P�j�P���
L
���G趜4
�d�C}���J}�*�E���eC��3�+@��Q|�ز�Q��Sy�x�-(&���{W�֚�D��d�>ʻ�-3��s.jpw���H��.xH����Ŭ�R��Zl���
i�0���ٕ��~v���oafu�8�N�U%j�@���h�Y�8�*O��~ J�z F���&(b�6���|"��2�c��T�CB��P�X�?���m*Tʔt���Y�|�x@�[c��$��Q����8�7 ��|t�Js��~����N<�%��B�j�lCb	b�Ų&#��u���W��"�H6
H��0e	-�b��;qR^�d�@�N��ty\�EE�#��bz"�
�ϲt �F��Z������X՟������b�$��(V�LXmX�{l;e�>K͂jq�l����Kr���ьt�+9�0k��6�)�x>/(�F=�.��F���������p�N0�~w)�U���X��/�W�I#���S��T,8��&�,<Pxa�a>j�����nNN=~Zi�|�U�=��[���ݕby��HK]&i�����Q\CX�#ɣ`2j#9k	����DIX�),J�Ot�Kξ/�i
~%YL!?F�L<��L*�"EP[y#*�e������p��V�e�<��
���qF���W�-�(+hM���ן�}mŬ�#�;�G�MQq|<��6�����ja$���2��}"챶�d`�����0SD7�v�e7�FH��>�Oʏ��}c���R� t��%<�
|ȯ�]�1�tb懳}�  Q-��S�H���l+qM���X���6�Ÿ�����^���sE���g�!�_q�b��I�F��)-Vh�#� �5/FB�Hʛ59�H	��j�~�[�r{yu��B�T(9O>h��ig��HX�Rm��spj�у�q1��\�a�-�U�.A����*="��+�,fhΙ�	g*:�F�^�J��J+ԿH;����y�^7�}�zJ� �q���y[�%.�}�Q�I]`M���'����wW�)s��U��kèX5�@끺�\���@r���2���puQ�5)<�6��h��d9�b�!��.�Ol��vi!m`$r�4�`#���4�c�o�Y$�0 ̥�#�Mi-���_�_�R� ='[��¡_���_��F�z�LZ'1��]�ݪ����mą��֬ud#�7T�/�sC3n�MX�ۅ����-�f.j3^�XΦv�`��w����Z�����̧�q,������0v���%ܻ�J�+��qB�A�I�ֲ�y���Q���InAh��F���A�E�Ï  �h��Wd�@��?�1	�.)[+���v􌾷�����?�IÐi-�b���kV����7���o�ߢ�;��p��)���,{.�t�jC�]��w������e�������}��; N�V]�W����ٰM)
��H4�:n���b�ɻ�iS84NH~�P�n�_��~~��Xi�s���v�9O��js���ኑ�4F��,	pd�����\���/ʥ@�=�@MR�*B�c܆�J֑qr�����S��<.����y]ԉ�^�����bѤ���\��ܸ�a�Ѡ���a>^`��;N�Ikݷ:
$�R�������E��O�x�EKa��O�g����7�]җ�_rv�����/�A��RF�'��j��|ϣ��Db��\���l�]����%��x�1�ߤ�Cf��Y��k��v��SY�H0-�ިd�)���b�B+��ʻȇ�7��,H 
p<�p �8%�z�*
�1�Z!#�2���<��d��2'rY%��4��N>��\bH���+�`<e�ˢ�+��5�2y�%�ɉ�h��@�r,5���Y�Yל2a�Ɛ�]4��m�ק�Y����듻O�i�`�SՂ|u�U�Y�M��6�%�͔,PR�`�⪠wk������: @�L ;  �V��6�ֺ��/6qIds�Զ�s�J�߿����У �+Ϳ�wVHIvc2k���ܙ_' H.:��@�i����	�_#<-tA�c\�� R���p"%��c>�� 6����K4��lV����O���xf�����?D.ъ�I�f���]��O'b�&��0&��:�`��gDd�3�S�������x�E���o��J�n���o$��v��\��^����.��R����u��>-w7$��K�˯����=p�=p��%o�C��õ�_��ܯ�j��W��k����qcC2�\2�6d˚Byדʻ���u>�
j�)1p�k����J(7�8�W��gv0��`P�v6X����n4Y<�5�zX�7�X� L9��o�WZ=��Ԏ�%��bA�[��^+�2�w}ؚ�� ��;a˱|/��o���f��.c�7�̱�io-�4O������>�<��8~��T�7�do�7��u�m��p%3�ؖ)�Hi��>Q���li�4�Y��MG-��P�E�hR5lx�w������y� ΃7��7��;ݗ{��?w~������*��      �:   �  x���Qo�0ǟ�O�G�v��ԍR1� � UW���9vz�����4E0S֗H�~����gQgX�Li5��L��O�amJ�6p$^;��U�ݛ��)�~�Y0�	K)D�mb-aA�)�� �ʁ�CF&�`��Z\Z�<�2��[TBRbY�x�C:6�O`��4����j�M��j6��n$���&S��<��c���t!3\�+���ؾ��G�X��7���BsBVh�u��᜽������kK�w���X�[Z�,����	��w�t���ۨ�%�ϓ7o��'���$C;��5��zP��2N)&xDE����m���C���@ȿ�����l�b.�]���V�J��)�1�j��VX�	�$"�Ķ�K7J~�����X��"��BJCEu�~:k^]١��`��q6�~hߕ������/�c�b�����5���*S���`�)� �q*��~���.�ڏ6]Ɗ@%�3�`?� ��]���F�_tf��      ;   �  x��Z�n�8>�O����)��Ǭ7m�m� ?=0h�VXH�@IF���������v8�)Q����[Z#���͌r�-U�Z�����B��2�]�l����J�\o�nW\�Thη\��6�R�2g�f�b�G�J#Pf��x��~|������*7�o�r���o��K�$�:zx[�J-U�����?_=<,�v�݀6�a�`r��o�;�=�{��m�d�ҾMi�� Y��A�4��U<������o�o�l�5�u�e
F�{�]1w 8&]ޖ�ZW,�V�����zV!A�Y��N��n���t>e���x�'�x����\��0�;}оuG�}�l���>��&OO�oC%?��
Q�T�F�T)xY%~в
����'�� 7��\���m��>	��lY+뀆c�R��Hl�o+���w��Ȓ�"�@Q�aR���4F(��ǁ�ȏ��UVl����i����fZ�.�˂e�R�6��g��T���=A$��w�kN>i#_��Yn#�}fp,�L��8��5�g��ΛB(0�6{t�'�I*e�����M���>��L����<:�s�/���l�Q���������;fŁFq����4 �Ua�!��S���dЈ�ܗ�s*H�|xҵ���	'�HxP^�DUC޵��Mv�0@�*���n�,���3�xIQ����[�O?���Z�%�/r�p%���Ď�{Y��	V���!��8���g�3ƾd�%�0@�
a8�Z�B�g��#���$�V$��`Əh1f�����c~�e3�
N�M�����fK`p�$}��I�0)�3|8�gt���������&����ke�	�#�_ǥj��̂�k��pV%#r�rԲ`��a�I�P$g�����[0��t&m�MI�4�����ɑ�d�Mf�/������o?������j��Awd�b�c&l�y��DǶ�i�D�o�����n��]f�RGƞe�2&0��g�,;,�]M����u��}2M�e�U#rZ6f��W:�/���b�XW-��,�W]'[�<�1*e,�zaj�Mxg�^x�0h���:�f&�� J�7��sݓhI������ ��P��a���_�
�h{����� k����Y�A��dێ�&��z�kr�� ޫ��9�]z��x��<�㊂9����p�@K0��6�ѓ̉��y&�;�\�wnoz�)���r�0�J�B�.��_�3�J������[�5�����"ΣA��)6�)�Y�.uf�^G$���i#:�Ȥ��w�K���t��i�'��P��%�������r�!H�׶|�* +���W�Yى���a���J7�ϖ	^�-(^~K�׸q��Գ�e�,�x{|��p��::�"I)�`���#�}�A�J!R��9H��U�Q>G��豩5"��O8�mr�IQ?�b��߁_1�Ps6�U��'?}<Yn�s�����Og��1Jz�A�f�'D�Ef� 2Xs�}�o6�p�O�<d�5�S]�:����N\����JKm�t��2#K$����h���'#/�0���,Z���͂�T
M��B�:1�1U�������?�Ko�F�����iL\��)~������Q��y�!�����.}��	�l�?����m��Gm����f�����HTv
Cdԕ�$0LZ�����]
C�*�; )a�3�U���>�%�p���ϘH:z4r�s���9g; �$xivG���Q�8Ov�;fQ��c?7���a��y:<Ȱ�ч==f��1�;Ǹ��j:�v��-,�eV\D�$naw��-���Y<�\Xo��fe
�m���\���O ��$*�O��&�?.gT�6���-�tiD�%����@k���ω�$7�\����ݧM�3�S��,�|�����O�'�)	�1Q���ƓW��%�q�iI�(Jp���r���k����7j��b�Z���w�      �:   C  x��[Ks�8>O~5�9L�8$�
����%��e[^YfS��e�`[�� �$w����R��Tpƅ��Q�~=��l����6���,�,�ki�Y�K{�(~�EH�Rq�����Z�D*�%���נ�f9�/9��ϓy��RV�7�����b~M*���q�Ɯ��7�?2+�0/�L��#�Z��+[y���Y�1�#�������\RI�`U.4n/�(���%d{^���m�k��$	$��T�dZ}x��J��Wj�8<+�D�%K��� �Y���O2�s�v�J4��v���AY��U)���K�6��.���oPj4���D��'BY���zw �V<�`m�L���+���al{�^Ԃ� ������	;Ǒ�oM[/v���w��C!�P�!�}x˴�e�*��"�0��Z�~b�,7o{�����Q�|2;�/�왥A���Rl�P��J��� n�i5�5J@����O��D�XDL
fJ��>���:�E!S���Q)��f�m��Њ|TU��v	�8x�}��bs��RySÚM�Q�	=�M��GU툼��`8�����x:�O�s{���x��ݏ�/���rp�f�픴t��62�����Q�����z�ۇȉܠ�'��y��a��;�{݁�}��[~���+�V�*O���l�uPR{��0��O�'�9��gpT=z��W& �9���Yh]i���M6��l����}�����N%� Ѥ�@ٚ����e�w5�%#xG���Sr#?t���Eeuh�F��>��C���O��I$�G��4�� �eD������w|-�emt�?�S�B�L��՚�o�h�	��e��Y���RTh�/b	�,b��#��F�;n�7�����C���"Z`l��ڏ����[�Iɰ�`�+l����:�\��*>9�Fc���1#0&�I��ʓ]ц�k">�gZ0%$�vn��F�+����,��r��IK�a����5k�ǝ>*�����m]þs�=�c��ۮ�4ĩ�� �yYG��bh�x�L���xz
��D>���c$�.�ˊѻ��a_�s0L��]w�^E�G�<��a���c������]��b��8ʌ����	|g�?�<��Y�3���)w�vJ{�qmeu�_z�t��7b���O�>@X���F���= �JKߗm0ӏ���W��&V@���/�ˌ[֋2��D�+��Jz�h#,�]x ��C�ݬ	��m�zX`���c�c���di�ز�a7���[��	(��}Ȫ�'�aH�-_���eQ����^�'�%��m���`������wN5޷6C�"-�[^.��KDc��2R��|�q8x��@��.p&����:z��
��K����Z�꾟3T�blqp�m9]�B�5W�p����s�
~�b��J�ztֿ�fZ%$cÌ��,��0Wt����w�.f��#�I�T"b�+���/����U��D��8��TZ��i�1�
^�����~6�&��xOLhk�F�.���0O���Q=�2j�H!��V6����:�.c��M�A1R?��W��T�eگ�q��/�]j�nnn���C     