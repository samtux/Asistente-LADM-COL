from copy import deepcopy

from asistente_ladm_col.config.ladm_names import LADMNames
from asistente_ladm_col.config.query_names import QueryNames


class DBMappingConfig:
    """
    Stores the mapping of DB object (tables/fields) names given by INTERLIS,
    for each model supported by default by the Asistente LADM-COL.

    A model mapping could be an empty dict, but it is better to set a proper
    mapping for two reasons:

    1) They allow us to abstract names for any DB engine (note that the same
       table will probably have different names depending on the DB engine,
       think about capital case vs. lower case or variations).
    2) They allow us to check that some variables that we'll use in several
       modules are properly set and are actually found in the DB. For
       instance, we can easily detect if a user changes the underlying .ili
       model and pretends it to be a known model.

    How to set a mapping:

    1. You need the ilinames that are present in the DB (ili2db metadata tables). You can do this by code,
       just get a DBConnector object and call its get_db_mapping() method, like this:

       a = qgis.utils.plugins['asistente_ladm_col']
       a.get_db_connection().get_db_mapping()

    2. Choose variable names you'll use throughout the code. Example: "GC_MYTABLE_T".
        We suggest you to use these suffixes: T for tables, D for domains, F for fields.
        If your variable points to an application or extended model, use its prefix.

    3. You can map both tables and fields. It depends on what you'll use in your code.

    4. Note that fields coming from relations have a special notation for their ilinames,
       namely, they include a ".." separator. Don't worry, get_db_mapping() will give you
       the proper iliname you need to use, also in the case of fields coming for relations.
    """
    __DB_MAPPING_CONFIG = {
        LADMNames.LADM_COL_MODEL_KEY: {
        },
        LADMNames.SURVEY_MODEL_KEY: {
            # First, map extended and used classes from LADM_COL
            "LADM_COL.LADM_Nucleo.ExtArchivo": {QueryNames.VARIABLE_NAME: "EXT_ARCHIVE_S", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.ExtArchivo.Datos": "EXT_ARCHIVE_S_DATA_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Extraccion": "EXT_ARCHIVE_S_EXTRACTION_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Fecha_Aceptacion": "EXT_ARCHIVE_S_ACCEPTANCE_DATE_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Fecha_Entrega": "EXT_ARCHIVE_S_DELIVERY_DATE_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Fecha_Grabacion": "EXT_ARCHIVE_S_STORAGE_DATE_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Espacio_De_Nombres": "EXT_ARCHIVE_S_NAMESPACE_F",
                "LADM_COL.LADM_Nucleo.ExtArchivo.Local_Id": "EXT_ARCHIVE_S_LOCAL_ID_F",
                "LADM_COL.LADM_Nucleo.COL_Fuente.Ext_Archivo_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteAdministrativa": "EXT_ARCHIVE_S_LC_ADMINISTRATIVE_SOURCE_F",
                "LADM_COL.LADM_Nucleo.COL_Fuente.Ext_Archivo_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": "EXT_ARCHIVE_S_LC_SPATIAL_SOURCE_F"
            }},
            "LADM_COL.LADM_Nucleo.ExtDireccion.Tipo_Direccion": {QueryNames.VARIABLE_NAME: "EXT_ADDRESS_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.ExtDireccion.Clase_Via_Principal": {QueryNames.VARIABLE_NAME: "EXT_ADDRESS_TYPE_MAIN_ROAD_CLASS_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.ExtDireccion.Sector_Ciudad": {QueryNames.VARIABLE_NAME: "EXT_ADDRESS_TYPE_CITY_SECTOR_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.ExtDireccion.Sector_Predio": {QueryNames.VARIABLE_NAME: "EXT_ADDRESS_TYPE_PARCEL_SECTOR_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.ExtDireccion": {QueryNames.VARIABLE_NAME: "EXT_ADDRESS_S", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.ExtDireccion.Valor_Via_Principal": "EXT_ADDRESS_S_VALUE_MAIN_ROAD_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Numero_Predio": "EXT_ADDRESS_S_PARCEL_NUMBER_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Localizacion": "EXT_ADDRESS_S_LOCALIZATION_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Clase_Via_Principal": "EXT_ADDRESS_S_MAIN_ROAD_CLASS_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Sector_Predio": "EXT_ADDRESS_S_PARCEL_SECTOR_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Nombre_Predio": "EXT_ADDRESS_S_PARCEL_NAME_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Es_Direccion_Principal": "EXT_ADDRESS_S_IS_MAIN_ADDRESS_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Letra_Via_Generadora": "EXT_ADDRESS_S_LETTER_GENERATOR_ROAD_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Valor_Via_Generadora": "EXT_ADDRESS_S_VALUE_GENERATOR_ROAD_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Letra_Via_Principal": "EXT_ADDRESS_S_LETTER_MAIN_ROAD_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Tipo_Direccion": "EXT_ADDRESS_S_ADDRESS_TYPE_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Sector_Ciudad": "EXT_ADDRESS_S_CITY_SECTOR_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Codigo_Postal": "EXT_ADDRESS_S_POSTAL_CODE_F",
                "LADM_COL.LADM_Nucleo.ExtDireccion.Complemento": "EXT_ADDRESS_S_COMPLEMENT_F",
                "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Ext_Direccion_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "EXT_ADDRESS_S_LC_BUILDING_F",
                "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Ext_Direccion_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": "EXT_ADDRESS_S_LC_RIGHT_OF_WAY_F",
                "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Ext_Direccion_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": "EXT_ADDRESS_S_LC_PLOT_F",
                "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Ext_Direccion_ID..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": "EXT_ADDRESS_S_LC_BUILDING_UNIT_F"
            }},
            "LADM_COL.LADM_Nucleo.COL_EstadoDisponibilidadTipo": {QueryNames.VARIABLE_NAME: "COL_AVAILABILITY_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.CI_Forma_Presentacion_Codigo": { QueryNames.VARIABLE_NAME: "CI_CODE_PRESENTATION_FORM_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_FuenteAdministrativaTipo": { QueryNames.VARIABLE_NAME: "COL_ADMINISTRATIVE_SOURCE_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_FuenteEspacialTipo": {QueryNames.VARIABLE_NAME: "COL_SPATIAL_SOURCE_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_GrupoInteresadoTipo": {QueryNames.VARIABLE_NAME: "COL_GROUP_PARTY_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_InterpolacionTipo": {QueryNames.VARIABLE_NAME: "COL_INTERPOLATION_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_MetodoProduccionTipo": {QueryNames.VARIABLE_NAME: "COL_PRODUCTION_METHOD_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_RelacionSuperficieTipo": {QueryNames.VARIABLE_NAME: "COL_SURFACE_RELATION_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.ExtInteresado": {QueryNames.VARIABLE_NAME: "EXT_PARTY_S", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.Fraccion": {QueryNames.VARIABLE_NAME: "FRACTION_S", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.Fraccion.Denominador": "FRACTION_S_DENOMINATOR_F",
                "LADM_COL.LADM_Nucleo.Fraccion.Numerador": "FRACTION_S_NUMERATOR_F"
            }},
            "LADM_COL.LADM_Nucleo.COL_UnidadAdministrativaBasicaTipo": {QueryNames.VARIABLE_NAME: "COL_BAUNIT_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_DimensionTipo": {QueryNames.VARIABLE_NAME: "COL_DIMENSION_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.COL_PuntoTipo": {QueryNames.VARIABLE_NAME: "COL_POINT_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "LADM_COL.LADM_Nucleo.col_miembros": {QueryNames.VARIABLE_NAME: "MEMBERS_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_miembros.participacion..LADM_COL.LADM_Nucleo.col_miembros": "FRACTION_S_MEMBER_F",
                "LADM_COL.LADM_Nucleo.col_miembros.agrupacion..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_AgrupacionInteresados": "MEMBERS_T_GROUP_PARTY_F",
                "LADM_COL.LADM_Nucleo.col_miembros.interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado": "MEMBERS_T_PARTY_F"
            }},
            "LADM_COL.LADM_Nucleo.col_masCcl": {QueryNames.VARIABLE_NAME: "MORE_BFS_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_masCcl.ccl_mas..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero": "MORE_BFS_T_LC_BOUNDARY_F",
                "LADM_COL.LADM_Nucleo.col_masCcl.ue_mas..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "MORE_BFS_T_LC_BUILDING_F",
                "LADM_COL.LADM_Nucleo.col_masCcl.ue_mas..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": "MORE_BFS_T_LC_RIGHT_OF_WAY_F",
                "LADM_COL.LADM_Nucleo.col_masCcl.ue_mas..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": "MORE_BFS_T_LC_PLOT_F",
                "LADM_COL.LADM_Nucleo.col_masCcl.ue_mas..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": "MORE_BFS_T_LC_BUILDING_UNIT_F"
            }},
            "LADM_COL.LADM_Nucleo.col_menosCcl": {QueryNames.VARIABLE_NAME: "LESS_BFS_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_menosCcl.ccl_menos..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero": "LESS_BFS_T_LC_BOUNDARY_F",
                "LADM_COL.LADM_Nucleo.col_menosCcl.ue_menos..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "LESS_BFS_T_LC_BUILDING_F",
                "LADM_COL.LADM_Nucleo.col_menosCcl.ue_menos..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": "LESS_BFS_T_LC_RIGHT_OF_WAY_F",
                "LADM_COL.LADM_Nucleo.col_menosCcl.ue_menos..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": "LESS_BFS_T_LC_PLOT_F",
                "LADM_COL.LADM_Nucleo.col_menosCcl.ue_menos..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": "LESS_BFS_T_LC_BUILDING_UNIT_F",
            }},
            "LADM_COL.LADM_Nucleo.col_puntoCcl": {QueryNames.VARIABLE_NAME: "POINT_BFS_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_puntoCcl.ccl..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero": "POINT_BFS_T_LC_BOUNDARY_F",
                "LADM_COL.LADM_Nucleo.col_puntoCcl.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl": "POINT_BFS_T_LC_CONTROL_POINT_F",
                "LADM_COL.LADM_Nucleo.col_puntoCcl.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento": "POINT_BFS_T_LC_SURVEY_POINT_F",
                "LADM_COL.LADM_Nucleo.col_puntoCcl.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero": "POINT_BFS_T_LC_BOUNDARY_POINT_F",
            }},
            "LADM_COL.LADM_Nucleo.col_puntoFuente": {QueryNames.VARIABLE_NAME: "COL_POINT_SOURCE_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_puntoFuente.fuente_espacial..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": "COL_POINT_SOURCE_T_SOURCE_F",
                "LADM_COL.LADM_Nucleo.col_puntoFuente.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl": "COL_POINT_SOURCE_T_LC_CONTROL_POINT_F",
                "LADM_COL.LADM_Nucleo.col_puntoFuente.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento": "COL_POINT_SOURCE_T_LC_SURVEY_POINT_F",
                "LADM_COL.LADM_Nucleo.col_puntoFuente.punto..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero": "COL_POINT_SOURCE_T_LC_BOUNDARY_POINT_F"
            }},
            "LADM_COL.LADM_Nucleo.col_rrrFuente": {QueryNames.VARIABLE_NAME: "COL_RRR_SOURCE_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_rrrFuente.fuente_administrativa..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteAdministrativa": "COL_RRR_SOURCE_T_SOURCE_F",
                "LADM_COL.LADM_Nucleo.col_rrrFuente.rrr..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Derecho": "COL_RRR_SOURCE_T_LC_RIGHT_F",
                "LADM_COL.LADM_Nucleo.col_rrrFuente.rrr..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Restriccion": "COL_RRR_SOURCE_T_LC_RESTRICTION_F"
            }},
            "LADM_COL.LADM_Nucleo.col_ueBaunit": {QueryNames.VARIABLE_NAME: "COL_UE_BAUNIT_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_ueBaunit.baunit..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "COL_UE_BAUNIT_T_PARCEL_F",
                "LADM_COL.LADM_Nucleo.col_ueBaunit.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": "COL_UE_BAUNIT_T_LC_PLOT_F",
                "LADM_COL.LADM_Nucleo.col_ueBaunit.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "COL_UE_BAUNIT_T_LC_BUILDING_F",
                "LADM_COL.LADM_Nucleo.col_ueBaunit.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": "COL_UE_BAUNIT_T_LC_BUILDING_UNIT_F",
                "LADM_COL.LADM_Nucleo.col_ueBaunit.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": "COL_UE_BAUNIT_T_LC_RIGHT_OF_WAY_F"
            }},
            "LADM_COL.LADM_Nucleo.col_ueFuente": {QueryNames.VARIABLE_NAME: "COL_UE_SOURCE_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_ueFuente.fuente_espacial..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": "COL_UE_SOURCE_T_SOURCE_F",
                "LADM_COL.LADM_Nucleo.col_ueFuente.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "COL_UE_SOURCE_T_LC_BUILDING_F",
                "LADM_COL.LADM_Nucleo.col_ueFuente.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": "COL_UE_SOURCE_T_LC_RIGHT_OF_WAY_F",
                "LADM_COL.LADM_Nucleo.col_ueFuente.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": "COL_UE_SOURCE_T_LC_PLOT_F",
                "LADM_COL.LADM_Nucleo.col_ueFuente.ue..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": "COL_UE_SOURCE_T_LC_BUILDING_UNIT_F"
            }},
            "LADM_COL.LADM_Nucleo.col_baunitFuente": {QueryNames.VARIABLE_NAME: "COL_BAUNIT_SOURCE_T", QueryNames.FIELDS_DICT: {
               "LADM_COL.LADM_Nucleo.col_baunitFuente.fuente_espacial..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": "BAUNIT_SOURCE_T_SOURCE_F",
               "LADM_COL.LADM_Nucleo.col_baunitFuente.unidad..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "BAUNIT_SOURCE_T_UNIT_F"
           }},
            "LADM_COL.LADM_Nucleo.col_cclFuente": {QueryNames.VARIABLE_NAME: "COL_CCL_SOURCE_T", QueryNames.FIELDS_DICT: {
                "LADM_COL.LADM_Nucleo.col_cclFuente.fuente_espacial..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": "COL_CCL_SOURCE_T_SOURCE_F",
                "LADM_COL.LADM_Nucleo.col_cclFuente.ccl..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero": "COL_CCL_SOURCE_T_BOUNDARY_F"
            }},
            # Now map new classes
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_AcuerdoTipo": {QueryNames.VARIABLE_NAME: "LC_AGREEMENT_TYPE_D",
                                                                 QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_UsoUConsTipo": {QueryNames.VARIABLE_NAME: "LC_BUILDING_UNIT_USE_D",
                                                                  QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_ConstruccionPlantaTipo": {
                QueryNames.VARIABLE_NAME: "LC_BUILDING_FLOOR_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_ConstruccionTipo": {QueryNames.VARIABLE_NAME: "LC_BUILDING_TYPE_D",
                                                                      QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_DominioConstruccionTipo": {
                QueryNames.VARIABLE_NAME: "LC_DOMAIN_BUILDING_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_UnidadConstruccionTipo": {
                QueryNames.VARIABLE_NAME: "LC_BUILDING_UNIT_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_CondicionPredioTipo": {
                QueryNames.VARIABLE_NAME: "LC_CONDITION_PARCEL_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_DerechoTipo": {QueryNames.VARIABLE_NAME: "LC_RIGHT_TYPE_D",
                                                                 QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_AgrupacionInteresados": {
                QueryNames.VARIABLE_NAME: "LC_GROUP_PARTY_T", QueryNames.FIELDS_DICT: {
                    "LADM_COL.LADM_Nucleo.COL_AgrupacionInteresados.Tipo": "COL_GROUP_PARTY_T_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Interesado.Nombre": "COL_PARTY_T_NAME_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion": {
                QueryNames.VARIABLE_NAME: "LC_BUILDING_UNIT_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Altura": "LC_BUILDING_UNIT_T_HEIGHT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Area_Construida": "LC_BUILDING_UNIT_T_BUILT_AREA_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Planta_Ubicacion": "LC_BUILDING_UNIT_T_FLOOR_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_construccion_unidadconstruccion.lc_construccion..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": "LC_BUILDING_UNIT_T_BUILDING_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_unidadconstruccion_caracteristicasunidadconstruccion.lc_caracteristicasunidadconstruccion..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_CaracteristicasUnidadConstruccion": "LC_BUILDING_UNIT_T_CHARACTERISTICS_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Avaluo_Unidad_Construccion": "LC_BUILDING_UNIT_T_BUILDING_UNIT_VALUATION_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Identificador": "LC_BUILDING_UNIT_T_IDENTIFICATION_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Uso": "LC_BUILDING_UNIT_T_USE_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Anio_Construccion": "LC_BUILDING_UNIT_T_YEAR_OF_BUILDING_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Observaciones": "LC_BUILDING_UNIT_T_OBSERVATIONS_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Tipo_Construccion": "LC_BUILDING_UNIT_T_BUILDING_TYPE_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Tipo_Dominio": "LC_BUILDING_UNIT_T_DOMAIN_TYPE_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Tipo_Planta": "LC_BUILDING_UNIT_T_FLOOR_TYPE_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Tipo_Unidad_Construccion": "LC_BUILDING_UNIT_T_BUILDING_UNIT_TYPE_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Total_Banios": "LC_BUILDING_UNIT_T_TOTAL_BATHROOMS_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Total_Habitaciones": "LC_BUILDING_UNIT_T_TOTAL_ROOMS_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Total_Locales": "LC_BUILDING_UNIT_T_TOTAL_LOCALS_F",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Total_Pisos": ",
                    # "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_UnidadConstruccion.Area_Privada_Construida": "LC_BUILDING_UNIT_T_BUILT_PRIVATE_AREA_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Dimension": "COL_SPATIAL_UNIT_T_DIMENSION_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Etiqueta": "COL_SPATIAL_UNIT_T_LABEL_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Geometria": "COL_SPATIAL_UNIT_T_GEOMETRY_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Relacion_Superficie": "COL_SPATIAL_UNIT_T_SURFACE_RELATION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion": {
                QueryNames.VARIABLE_NAME: "LC_BUILDING_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Area_Construccion": "LC_BUILDING_T_BUILDING_AREA_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Avaluo_Construccion": "LC_BUILDING_T_BUILDING_VALUATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Numero_Pisos": "LC_BUILDING_T_NUMBER_OF_FLOORS_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Altura": "LC_BUILDING_T_HEIGHT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Anio_Construccion": "LC_BUILDING_T_YEAR_OF_BUILD_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Observaciones": "LC_BUILDING_T_OBSERVATIONS_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Identificador": "LC_BUILDING_T_IDENTIFIER_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Numero_Mezanines": "LC_BUILDING_T_NUMBER_OF_MEZZANINE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Numero_Semisotanos": "LC_BUILDING_T_NUMBER_OF_LOOKOUT_BASEMENT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Numero_Sotanos": "LC_BUILDING_T_NUMBER_OF_BASEMENT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Tipo_Construccion": "LC_BUILDING_T_BUILDING_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Construccion.Tipo_Dominio": "LC_BUILDING_T_DOMAIN_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Dimension": "COL_SPATIAL_UNIT_T_DIMENSION_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Etiqueta": "COL_SPATIAL_UNIT_T_LABEL_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Geometria": "COL_SPATIAL_UNIT_T_GEOMETRY_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Relacion_Superficie": "COL_SPATIAL_UNIT_T_SURFACE_RELATION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Derecho": {
                QueryNames.VARIABLE_NAME: "LC_RIGHT_T",
                QueryNames.FIELDS_DICT: {
                    "LADM_COL.LADM_Nucleo.col_baunitRrr.unidad..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "COL_BAUNIT_RRR_T_UNIT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Derecho.Tipo": "LC_RIGHT_T_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Derecho.Fecha_Inicio_Tenencia": "LC_RIGHT_T_DATE_START_TENANCY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Derecho.Fraccion_Derecho": "LC_RIGHT_T_RIGHT_FRACTION_F",
                    "LADM_COL.LADM_Nucleo.COL_DRR.Descripcion": "COL_RRR_T_DESCRIPTION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.col_rrrInteresado.interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado": "COL_RRR_PARTY_T_LC_PARTY_F",
                    "LADM_COL.LADM_Nucleo.col_rrrInteresado.interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_AgrupacionInteresados": "COL_RRR_PARTY_T_LC_GROUP_PARTY_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteAdministrativa": {
                QueryNames.VARIABLE_NAME: "LC_ADMINISTRATIVE_SOURCE_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteAdministrativa.Ente_Emisor": "LC_ADMINISTRATIVE_SOURCE_T_EMITTING_ENTITY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteAdministrativa.Tipo": "LC_ADMINISTRATIVE_SOURCE_T_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_FuenteAdministrativa.Numero_Fuente": "COL_ADMINISTRATIVE_SOURCE_T_SOURCE_NUMBER_F",
                    "LADM_COL.LADM_Nucleo.COL_FuenteAdministrativa.Observacion": "COL_ADMINISTRATIVE_SOURCE_T_OBSERVATION_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Estado_Disponibilidad": "COL_SOURCE_T_AVAILABILITY_STATUS_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Fecha_Documento_Fuente": "COL_SOURCE_T_DATE_DOCUMENT_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Tipo_Principal": "COL_SOURCE_T_MAIN_TYPE_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial": {
                QueryNames.VARIABLE_NAME: "LC_SPATIAL_SOURCE_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial.Tipo": "COL_SPATIAL_SOURCE_T_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Estado_Disponibilidad": "COL_SOURCE_T_AVAILABILITY_STATUS_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Fecha_Documento_Fuente": "COL_SOURCE_T_DATE_DOCUMENT_F",
                    "LADM_COL.LADM_Nucleo.COL_FuenteEspacial.Descripcion": "COL_SOURCE_T_DESCRIPTION_F",
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_FuenteEspacial.Metadato': "COL_SOURCE_T_METADATA_F",
                    "LADM_COL.LADM_Nucleo.COL_FuenteEspacial.Nombre": "COL_SOURCE_T_NAME_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.COL_Fuente.Tipo_Principal": "COL_SOURCE_T_MAIN_TYPE_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado": {
                QueryNames.VARIABLE_NAME: "LC_PARTY_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Documento_Identidad": "LC_PARTY_T_DOCUMENT_ID_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Grupo_Etnico": "LC_PARTY_T_ETHNIC_GROUP_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Primer_Apellido": "LC_PARTY_T_SURNAME_1_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Primer_Nombre": "LC_PARTY_T_FIRST_NAME_1_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Razon_Social": "LC_PARTY_T_BUSINESS_NAME_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Segundo_Apellido": "LC_PARTY_T_SURNAME_2_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Segundo_Nombre": "LC_PARTY_T_FIRST_NAME_2_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Sexo": "LC_PARTY_T_GENRE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Tipo": "LC_PARTY_T_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado.Tipo_Documento": "LC_PARTY_T_DOCUMENT_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Interesado.Nombre": "COL_PARTY_T_NAME_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero": {
                QueryNames.VARIABLE_NAME: "LC_BOUNDARY_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Lindero.Longitud": "LC_BOUNDARY_T_LENGTH_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.COL_CadenaCarasLimite.Geometria": "COL_BFS_T_GEOMETRY_F",
                    "LADM_COL.LADM_Nucleo.COL_CadenaCarasLimite.Localizacion_Textual": "COL_BFS_T_TEXTUAL_LOCATION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": {
                QueryNames.VARIABLE_NAME: "LC_PARCEL_T",
                QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Avaluo_Catastral": "LC_PARCEL_T_VALUATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Codigo_ORIP": "LC_PARCEL_T_ORIP_CODE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Condicion_Predio": "LC_PARCEL_T_PARCEL_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Departamento": "LC_PARCEL_T_DEPARTMENT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Direccion..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "LC_PARCEL_T_ADDRESS_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Matricula_Inmobiliaria": "LC_PARCEL_T_FMI_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Tiene_FMI": "LC_PARCEL_T_HAS_FMI_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Municipio": "LC_PARCEL_T_MUNICIPALITY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Numero_Predial": "LC_PARCEL_T_PARCEL_NUMBER_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Numero_Predial_Anterior": "LC_PARCEL_T_PREVIOUS_PARCEL_NUMBER_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Id_Operacion": "LC_PARCEL_T_ID_OPERATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.NUPRE": "LC_PARCEL_T_NUPRE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio.Tipo": "LC_PARCEL_T_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadAdministrativaBasica.Nombre": "COL_BAUNIT_T_NAME_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_predio_copropiedad": {
                QueryNames.VARIABLE_NAME: "LC_COPROPERTY_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_predio_copropiedad.Coeficiente": "LC_COPROPERTY_T_COEFFICIENT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_predio_copropiedad.matriz..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "LC_COPROPERTY_T_PARENT_PARCEL_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_predio_copropiedad.unidad_predial..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "LC_COPROPERTY_T_PARCEL_UNIT_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_predio_ini_predioinsumos": {
                QueryNames.VARIABLE_NAME: "LC_OPERATION_SUPPLIES_T", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl": {
                QueryNames.VARIABLE_NAME: "LC_CONTROL_POINT_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl.Exactitud_Horizontal": "LC_CONTROL_POINT_T_HORIZONTAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl.Exactitud_Vertical": "LC_CONTROL_POINT_T_VERTICAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl.ID_Punto_Control": "LC_CONTROL_POINT_T_ID_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl.PuntoTipo": "LC_CONTROL_POINT_T_POINT_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoControl.Tipo_Punto_Control": "LC_CONTROL_POINT_T_CONTROL_POINT_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Posicion_Interpolacion": "COL_POINT_T_INTERPOLATION_POSITION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Geometria": "COL_POINT_T_ORIGINAL_LOCATION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.MetodoProduccion": "COL_POINT_T_PRODUCTION_METHOD_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento": {
                QueryNames.VARIABLE_NAME: "LC_SURVEY_POINT_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.Exactitud_Horizontal": "LC_SURVEY_POINT_T_HORIZONTAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.Exactitud_Vertical": "LC_SURVEY_POINT_T_VERTICAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.Fotoidentificacion": "LC_SURVEY_POINT_T_PHOTO_IDENTIFICATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.ID_Punto_Levantamiento": "LC_SURVEY_POINT_T_ID_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.PuntoTipo": "LC_SURVEY_POINT_T_POINT_TYPE_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLevantamiento.Tipo_Punto_Levantamiento": "LC_SURVEY_POINT_T_SURVEY_POINT_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Posicion_Interpolacion": "COL_POINT_T_INTERPOLATION_POSITION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Geometria": "COL_POINT_T_ORIGINAL_LOCATION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.MetodoProduccion": "COL_POINT_T_PRODUCTION_METHOD_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero": {
                QueryNames.VARIABLE_NAME: "LC_BOUNDARY_POINT_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.Acuerdo": "LC_BOUNDARY_POINT_T_AGREEMENT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.Exactitud_Horizontal": "LC_BOUNDARY_POINT_T_HORIZONTAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.Exactitud_Vertical": "LC_BOUNDARY_POINT_T_VERTICAL_ACCURACY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.Fotoidentificacion": "LC_BOUNDARY_POINT_T_PHOTO_IDENTIFICATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.ID_Punto_Lindero": "LC_BOUNDARY_POINT_T_ID_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_PuntoLindero.PuntoTipo": "LC_BOUNDARY_POINT_T_POINT_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Posicion_Interpolacion": "COL_POINT_T_INTERPOLATION_POSITION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.Geometria": "COL_POINT_T_ORIGINAL_LOCATION_F",
                    "LADM_COL.LADM_Nucleo.COL_Punto.MetodoProduccion": "COL_POINT_T_PRODUCTION_METHOD_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Restriccion": {
                QueryNames.VARIABLE_NAME: "LC_RESTRICTION_T", QueryNames.FIELDS_DICT: {
                    "LADM_COL.LADM_Nucleo.col_baunitRrr.unidad..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Predio": "COL_BAUNIT_RRR_T_UNIT_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Restriccion.Tipo": "LC_RESTRICTION_T_TYPE_F",
                    "LADM_COL.LADM_Nucleo.COL_DRR.Descripcion": "COL_RRR_T_DESCRIPTION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.col_rrrInteresado.interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado": "COL_RRR_PARTY_T_LC_PARTY_F",
                    "LADM_COL.LADM_Nucleo.col_rrrInteresado.interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_AgrupacionInteresados": "COL_RRR_PARTY_T_LC_GROUP_PARTY_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito": {
                QueryNames.VARIABLE_NAME: "LC_RIGHT_OF_WAY_T", QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_ServidumbreTransito.Area_Servidumbre": "LC_RIGHT_OF_WAY_T_RIGHT_OF_WAY_AREA_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Dimension": "COL_SPATIAL_UNIT_T_DIMENSION_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Etiqueta": "COL_SPATIAL_UNIT_T_LABEL_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Geometria": "COL_SPATIAL_UNIT_T_GEOMETRY_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Relacion_Superficie": "COL_SPATIAL_UNIT_T_SURFACE_RELATION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno": {
                QueryNames.VARIABLE_NAME: "LC_PLOT_T",
                QueryNames.FIELDS_DICT: {
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno.Area_Terreno": "LC_PLOT_T_PLOT_AREA_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno.Avaluo_Terreno": "LC_PLOT_T_PLOT_VALUATION_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno.Geometria": "LC_PLOT_T_GEOMETRY_F",
                    "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Terreno.Manzana_Vereda_Codigo": "LC_PLOT_T_BLOCK_RURAL_DIVISION_CODE_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Dimension": "COL_SPATIAL_UNIT_T_DIMENSION_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Etiqueta": "COL_SPATIAL_UNIT_T_LABEL_F",
                    "LADM_COL.LADM_Nucleo.COL_UnidadEspacial.Relacion_Superficie": "COL_SPATIAL_UNIT_T_SURFACE_RELATION_F",
                    "LADM_COL.LADM_Nucleo.Oid.Local_Id": "OID_T_LOCAL_ID_F",
                    "LADM_COL.LADM_Nucleo.Oid.Espacio_De_Nombres": "OID_T_NAMESPACE_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Comienzo_Vida_Util_Version": "VERSIONED_OBJECT_T_BEGIN_LIFESPAN_VERSION_F",
                    "LADM_COL.LADM_Nucleo.ObjetoVersionado.Fin_Vida_Util_Version": "VERSIONED_OBJECT_T_END_LIFESPAN_VERSION_F"
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto": {
                QueryNames.VARIABLE_NAME: "LC_PARTY_CONTACT_T", QueryNames.FIELDS_DICT: {
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto.Autoriza_Notificacion_Correo': 'LC_PARTY_CONTACT_T_ALLOW_MAIL_NOTIFICATION_F',
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto.Correo_Electronico': 'LC_PARTY_CONTACT_T_EMAIL_F',
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto.Domicilio_Notificacion': 'LC_PARTY_CONTACT_T_NOTIFICATION_ADDRESS_F',
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto.Telefono1': 'LC_PARTY_CONTACT_T_TELEPHONE_NUMBER_1_F',
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_InteresadoContacto.Telefono2': 'LC_PARTY_CONTACT_T_TELEPHONE_NUMBER_2_F',
                    'Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.lc_interesado_interesadocontacto.lc_interesado..Modelo_Aplicacion_LADMCOL_Lev_Cat.Levantamiento_Catastral.LC_Interesado': 'LC_PARTY_CONTACT_T_LC_PARTY_F'
                }},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_FotoidentificacionTipo": {
                QueryNames.VARIABLE_NAME: "LC_PHOTO_IDENTIFICATION_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_GrupoEtnicoTipo": {QueryNames.VARIABLE_NAME: "LC_ETHNIC_GROUP_TYPE_D",
                                                                     QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_InteresadoDocumentoTipo": {
                QueryNames.VARIABLE_NAME: "LC_PARTY_DOCUMENT_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_InteresadoTipo": {QueryNames.VARIABLE_NAME: "LC_PARTY_TYPE_D",
                                                                    QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_PuntoControlTipo": {
                QueryNames.VARIABLE_NAME: "LC_CONTROL_POINT_TYPE_D",
                QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_PuntoLevTipo": {QueryNames.VARIABLE_NAME: "LC_SURVEY_POINT_TYPE_D",
                                                                  QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_RestriccionTipo": {QueryNames.VARIABLE_NAME: "LC_RESTRICTION_TYPE_D",
                                                                     QueryNames.FIELDS_DICT: {}},
            "Modelo_Aplicacion_LADMCOL_Lev_Cat.LC_SexoTipo": {QueryNames.VARIABLE_NAME: "LC_GENRE_D",
                                                              QueryNames.FIELDS_DICT: {}}
        },
        LADMNames.SUPPLIES_INTEGRATION_MODEL_KEY: {
            "Submodelo_Integracion_Insumos.Datos_Integracion_Insumos.INI_PredioInsumos": {
                QueryNames.VARIABLE_NAME: "INI_PARCEL_SUPPLIES_T", QueryNames.FIELDS_DICT: {}}
        },
        LADMNames.SUPPLIES_MODEL_KEY: {
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Barrio": {
                QueryNames.VARIABLE_NAME: "GC_NEIGHBOURHOOD_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Construccion": {
                QueryNames.VARIABLE_NAME: "GC_BUILDING_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_DatosPHCondominio": {
                QueryNames.VARIABLE_NAME: "GC_HP_CONDOMINIUM_DATA_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.gc_copropiedad": {
                QueryNames.VARIABLE_NAME: "GC_COPROPERTY_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_DatosTorrePH": {
                QueryNames.VARIABLE_NAME: "GC_HP_TOWER_DATA_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_EstadoPredio": {
                QueryNames.VARIABLE_NAME: "GC_PARCEL_STATUS_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Manzana": {
                QueryNames.VARIABLE_NAME: "GC_BLOCK_T",
                QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Perimetro": {
                QueryNames.VARIABLE_NAME: "GC_PERIMETER_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro": {
                QueryNames.VARIABLE_NAME: "GC_PARCEL_T", QueryNames.FIELDS_DICT: {
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Circulo_Registral": "GC_PARCEL_T_REGISTRY_OFFICE_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Condicion_Predio": "GC_PARCEL_T_CONDITION_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Destinacion_Economica": "GC_PARCEL_T_ECONOMIC_DESTINATION_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Fecha_Datos": "GC_PARCEL_T_DATE_OF_DATA_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Matricula_Inmobiliaria_Catastro": "GC_PARCEL_T_FMI_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Numero_Predial": "GC_PARCEL_T_PARCEL_NUMBER_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Numero_Predial_Anterior": "GC_PARCEL_T_PARCEL_NUMBER_BEFORE_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.NUPRE": "GC_PARCEL_T_NUPRE_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Sistema_Procedencia_Datos": "GC_PARCEL_T_DATA_SOURCE_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Tipo_Catastro": "GC_PARCEL_T_CADASTRAL_TYPE_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro.Tipo_Predio": "GC_PARCEL_T_PARCEL_TYPE_F"
                }},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario": {
                QueryNames.VARIABLE_NAME: "GC_OWNER_T", QueryNames.FIELDS_DICT: {
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Digito_Verificacion": "GC_OWNER_T_VERIFICATION_DIGIT",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Numero_Documento": "GC_OWNER_T_DOCUMENT_ID_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.gc_propietario_predio.gc_predio_catastro..Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro": "GC_OWNER_T_PARCEL_ID_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Primer_Apellido": "GC_OWNER_T_SURNAME_1_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Primer_Nombre": "GC_OWNER_T_FIRST_NAME_1_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Razon_Social": "GC_OWNER_T_BUSINESS_NAME_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Segundo_Apellido": "GC_OWNER_T_SURNAME_2_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Segundo_Nombre": "GC_OWNER_T_FIRST_NAME_2_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Propietario.Tipo_Documento": "GC_OWNER_T_DOCUMENT_TYPE_F",
                }},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_SectorRural": {
                QueryNames.VARIABLE_NAME: "GC_RURAL_SECTOR_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_SectorUrbano": {
                QueryNames.VARIABLE_NAME: "GC_URBAN_SECTOR_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Terreno": {
                QueryNames.VARIABLE_NAME: "GC_PLOT_T",
                QueryNames.FIELDS_DICT: {
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.gc_terreno_predio.gc_predio..Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_PredioCatastro": "GC_PLOT_T_GC_PARCEL_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Terreno.Area_Terreno_Digital": "GC_PLOT_T_DIGITAL_PLOT_AREA_F",
                    "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Terreno.Area_Terreno_Alfanumerica": "GC_PLOT_T_ALPHANUMERIC_AREA_F"
                }},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_UnidadConstruccion": {
                QueryNames.VARIABLE_NAME: "GC_BUILDING_UNIT_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Vereda": {
                QueryNames.VARIABLE_NAME: "GC_RURAL_DIVISION_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_ComisionesConstruccion": {
                QueryNames.VARIABLE_NAME: "GC_COMMISSION_BUILDING_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_ComisionesTerreno": {
                QueryNames.VARIABLE_NAME: "GC_COMMISSION_PLOT_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_ComisionesUnidadConstruccion": {
                QueryNames.VARIABLE_NAME: "GC_COMMISSION_BUILDING_UNIT_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_CalificacionUnidadConstruccion": {
                QueryNames.VARIABLE_NAME: "GC_QUALIFICATION_BUILDING_UNIT_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.GC_CondicionPredioTipo": {QueryNames.VARIABLE_NAME: "GC_PARCEL_TYPE_D",
                                                                          QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.Datos_Gestor_Catastral.GC_Direccion": {
                QueryNames.VARIABLE_NAME: "GC_ADDRESS_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_Gestor_Catastral.GC_UnidadConstruccionTipo": {
                QueryNames.VARIABLE_NAME: "GC_BUILDING_UNIT_TYPE_T", QueryNames.FIELDS_DICT: {}}
        },
        LADMNames.SNR_DATA_SUPPLIES_MODEL_KEY: {
            "Submodelo_Insumos_SNR.Datos_SNR.SNR_Derecho": {QueryNames.VARIABLE_NAME: "SNR_RIGHT_T",
                                                            QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.Datos_SNR.SNR_FuenteCabidaLinderos": {
                QueryNames.VARIABLE_NAME: "SNR_SOURCE_BOUNDARIES_T", QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.Datos_SNR.SNR_FuenteDerecho": {QueryNames.VARIABLE_NAME: "SNR_SOURCE_RIGHT_T",
                                                                  QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.Datos_SNR.SNR_PredioRegistro": {QueryNames.VARIABLE_NAME: "SNR_PARCEL_REGISTRY_T",
                                                                   QueryNames.FIELDS_DICT: {
                                                                       "Submodelo_Insumos_SNR.Datos_SNR.SNR_PredioRegistro.Numero_Predial_Nuevo_en_FMI": "SNR_PARCEL_REGISTRY_T_NEW_PARCEL_NUMBER_IN_FMI_F"
                                                                   }},
            "Submodelo_Insumos_SNR.Datos_SNR.SNR_Titular": {QueryNames.VARIABLE_NAME: "SNR_TITLE_HOLDER_T",
                                                            QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.SNR_CalidadDerechoTipo": {QueryNames.VARIABLE_NAME: "SNR_RIGHT_TYPE_D",
                                                             QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.SNR_DocumentoTitularTipo": {QueryNames.VARIABLE_NAME: "SNR_TITLE_HOLDER_DOCUMENT_T",
                                                               QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.SNR_FuenteTipo": {QueryNames.VARIABLE_NAME: "SNR_SOURCE_TYPE_D",
                                                     QueryNames.FIELDS_DICT: {}},
            "Submodelo_Insumos_SNR.SNR_PersonaTitularTipo": {QueryNames.VARIABLE_NAME: "SNR_TITLE_HOLDER_TYPE_D",
                                                             QueryNames.FIELDS_DICT: {}}
        },
        LADMNames.FIELD_DATA_CAPTURE_MODEL_KEY: {
            "Captura_Geo.Captura_Geo.Construccion": {QueryNames.VARIABLE_NAME: "FDC_BUILDING_T",
                                                     QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.Derecho": {QueryNames.VARIABLE_NAME: "FDC_RIGHT_T", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.Punto_control": {QueryNames.VARIABLE_NAME: "FDC_CONTROL_POINT_T",
                                                      QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.Punto_levantamiento": {QueryNames.VARIABLE_NAME: "FDC_SURVEY_POINT_T",
                                                            QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.Punto_lindero": {QueryNames.VARIABLE_NAME: "FDC_BOUNDARY_POINT_T",
                                                      QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.construccion_unidad_construccion": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.derecho_propietario": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.lindero": {QueryNames.VARIABLE_NAME: "FDC_BOUNDARY_T", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.predio": {QueryNames.VARIABLE_NAME: "FDC_PARCEL_T", QueryNames.FIELDS_DICT: {
                "Captura_Geo.Captura_Geo.predio.numero_predial": "FDC_PARCEL_T_PARCEL_NUMBER_F",
                "Captura_Geo.Captura_Geo.predio_reconocedores.reconocedor..Captura_Geo.Captura_Geo.reconocedores": "FDC_PARCEL_T_SURVEYOR_F"
            }},
            # "Captura_Geo.Captura_Geo.predio_construccion": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.predio_derecho": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.predio_terreno": {QueryNames.VARIABLE_NAME: "FDC_PARCEL_PLOT_T",
                                                       QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.propietario": {QueryNames.VARIABLE_NAME: "FDC_PARTY_T",
                                                    QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.propietario_Contacto": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.propietario_propietario_contacto": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.Captura_Geo.punto": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.Captura_Geo.reconocedores": {QueryNames.VARIABLE_NAME: "FDC_USER_T", QueryNames.FIELDS_DICT: {
                "Captura_Geo.Captura_Geo.reconocedores.primer_nombre": "FDC_USER_T_FIRST_NAME_F",
                "Captura_Geo.Captura_Geo.reconocedores.segundo_nombre": "FDC_USER_T_SECOND_NAME_F",
                "Captura_Geo.Captura_Geo.reconocedores.primer_apellido": "FDC_USER_T_FIRST_LAST_NAME_F",
                "Captura_Geo.Captura_Geo.reconocedores.segundo_apellido": "FDC_USER_T_SECOND_LAST_NAME_F",
                "Captura_Geo.Captura_Geo.reconocedores.tipo_documento": "FDC_USER_T_DOCUMENT_TYPE_F",
                "Captura_Geo.Captura_Geo.reconocedores.numero_documento": "FDC_USER_T_DOCUMENT_ID_F"
            }},
            "Captura_Geo.Captura_Geo.terreno": {QueryNames.VARIABLE_NAME: "FDC_PLOT_T", QueryNames.FIELDS_DICT: {
                "Captura_Geo.Captura_Geo.predio_terreno.predio..Captura_Geo.Captura_Geo.predio": "FDC_PLOT_T_PARCEL_F"
            }},
            "Captura_Geo.Captura_Geo.unidad_construccion": {QueryNames.VARIABLE_NAME: "FDC_BUILDING_UNIT_T",
                                                            QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_AcuerdoTipo": {QueryNames.VARIABLE_NAME: "FDC_AGREEMENT_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_ClaseSueloTipo": {QueryNames.VARIABLE_NAME: "FDC_LANDCLASS_TYPE_D",
                                             QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_CondicionPredioTipo": {QueryNames.VARIABLE_NAME: "FDC_CONDITION_PARCEL_TYPE_D",
                                                  QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_ConstruccionPlantaTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_ConstruccionTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_ControlTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_DerechoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_DominioConstruccionTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_FotoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_GrupoEtnico": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_GrupoInteresadoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_PredioTipo": {QueryNames.VARIABLE_NAME: "FDC_PARCEL_TYPE_D", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_PropietarioDocumentoTipo": {QueryNames.VARIABLE_NAME: "FDC_PARTY_DOCUMENT_TYPE_D",
                                                       QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_PropietarioTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_PuntoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_RestriccionTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_SexoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_UnidadConstruccionTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_UsoUConsTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            "Captura_Geo.D_VolumenTipo": {QueryNames.VARIABLE_NAME: "FDC_VOLUME_TYPE_D", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.D_puntoLevTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
            # "Captura_Geo.SNR_CalidadDerechoTipo": {QueryNames.VARIABLE_NAME: "", QueryNames.FIELDS_DICT: {}},
        },
        LADMNames.CADASTRAL_CARTOGRAPHY_MODEL_KEY: {
            "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_LimiteMunicipio": {
                QueryNames.VARIABLE_NAME: "CC_MUNICIPALITY_BOUNDARY_T", QueryNames.FIELDS_DICT: {
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_LimiteMunicipio.Nombre_Municipio": "CC_MUNICIPALITY_BOUNDARY_T_NAME_MUNICIPALITY_F",
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_LimiteMunicipio.Geometria": "CC_MUNICIPALITY_BOUNDARY_T_GEOMETRY_F"
                }},
            "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_PerimetroUrbano": {
                QueryNames.VARIABLE_NAME: "CC_URBAN_PERIMETER_T", QueryNames.FIELDS_DICT: {
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_PerimetroUrbano.Nombre_Geografico": "CC_URBAN_PERIMETER_T_GEOGRAPHIC_NAME_F",
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_PerimetroUrbano.Geometria": "CC_URBAN_PERIMETER_T_GEOMETRY_F"
                }},
            "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_NomenclaturaVial": {
                QueryNames.VARIABLE_NAME: "CC_ROAD_NOMENCLATURE_T", QueryNames.FIELDS_DICT: {
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_NomenclaturaVial.Numero_Via": "CC_ROAD_NOMENCLATURE_T_ROAD_NUMBER_F",
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_NomenclaturaVial.Tipo_Via": "CC_ROAD_NOMENCLATURE_T_ROAD_TYPE_F",
                    "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_NomenclaturaVial.Geometria": "CC_ROAD_NOMENCLATURE_T_GEOMETRY_F"
                }},
            "Submodelo_Cartografia_Catastral.LimitesOperativosCatastro.CC_NomenclaturaVial.Tipo_Via": {
                QueryNames.VARIABLE_NAME: "CC_ROAD_TYPE_D", QueryNames.FIELDS_DICT: {}},
        },
        LADMNames.QUALITY_ERROR_MODEL_KEY: {
            "Errores_Calidad.Catalogos_Errores.TipoError": {
                QueryNames.VARIABLE_NAME: "ERR_ERROR_TYPE_T", QueryNames.FIELDS_DICT: {
                    "Errores_Calidad.Catalogos_Errores.TipoError.Codigo": "ERR_ERROR_TYPE_T_CODE_F",
                    "Errores_Calidad.Catalogos_Errores.TipoError.Descripcion": "ERR_ERROR_TYPE_T_DESCRIPTION_F"
                }},
            "Errores_Calidad.Catalogos_Errores.TipoRegla": {
                QueryNames.VARIABLE_NAME: "ERR_RULE_TYPE_T", QueryNames.FIELDS_DICT: {
                    "Errores_Calidad.Catalogos_Errores.TipoRegla.Codigo": "ERR_RULE_TYPE_T_CODE_F",
                    "Errores_Calidad.Catalogos_Errores.TipoRegla.Descripcion": "ERR_RULE_TYPE_T_DESCRIPTION_F",
                    "Errores_Calidad.Catalogos_Errores.TipoRegla.Entidad": "ERR_RULE_TYPE_T_ORGANIZATION_F"
                }},
            "Errores_Calidad.Topic_Errores.EstadoError": {QueryNames.VARIABLE_NAME: "ERR_ERROR_STATE_D", QueryNames.FIELDS_DICT: {}},
            "Errores_Calidad.Topic_Errores.Punto": {QueryNames.VARIABLE_NAME: "ERR_POINT_T", QueryNames.FIELDS_DICT: {}},
            "Errores_Calidad.Topic_Errores.Linea": {QueryNames.VARIABLE_NAME: "ERR_LINE_T", QueryNames.FIELDS_DICT: {}},
            "Errores_Calidad.Topic_Errores.Poligono": {QueryNames.VARIABLE_NAME: "ERR_POLYGON_T", QueryNames.FIELDS_DICT: {}},
            "Errores_Calidad.Topic_Errores.Metadatos": {
                QueryNames.VARIABLE_NAME: "ERR_METADATA_T", QueryNames.FIELDS_DICT: {
                    "Errores_Calidad.Topic_Errores.Metadatos.Fecha_Validacion": "ERR_METADATA_T_VALIDATION_DATE_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Fuente_Datos": "ERR_METADATA_T_DATA_SOURCE_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Herramienta_Validacion": "ERR_METADATA_T_TOOL_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Persona_Que_Valido": "ERR_METADATA_T_PERSON_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Tolerancia": "ERR_METADATA_T_TOLERANCE_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Reglas_Validadas": "ERR_METADATA_T_RULES_F",
                    "Errores_Calidad.Topic_Errores.Metadatos.Opciones_Reglas": "ERR_METADATA_T_RULE_OPTIONS_F"
                }},
            "Errores_Calidad.Topic_Errores.ErrorCalidad": {
                QueryNames.VARIABLE_NAME: "ERR_QUALITY_ERROR_T", QueryNames.FIELDS_DICT: {
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Detalles": "ERR_QUALITY_ERROR_T_DETAILS_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Id_Objetos": "ERR_QUALITY_ERROR_T_OBJECT_IDS_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Id_Objetos_Relacionados": "ERR_QUALITY_ERROR_T_RELATED_OBJECT_IDS_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Nombre_ili_Objetos": "ERR_QUALITY_ERROR_T_ILI_NAME_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Valores": "ERR_QUALITY_ERROR_T_VALUES_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Tipo_Error..Errores_Calidad.Catalogos_Errores.TipoError": "ERR_QUALITY_ERROR_T_ERROR_TYPE_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.Tipo_Regla..Errores_Calidad.Catalogos_Errores.TipoRegla": "ERR_QUALITY_ERROR_T_RULE_TYPE_F",
                    "Errores_Calidad.Topic_Errores.ErrorCalidad.EstadoError": "ERR_QUALITY_ERROR_T_ERROR_STATE_F",
                    "Errores_Calidad.Topic_Errores.Error_Linea.Linea_Relacionada..Errores_Calidad.Topic_Errores.Linea": "ERR_QUALITY_ERROR_T_LINE_F",
                    "Errores_Calidad.Topic_Errores.Error_Poligono.Poligono_Relacionado..Errores_Calidad.Topic_Errores.Poligono": "ERR_QUALITY_ERROR_T_POLYGON_F",
                    "Errores_Calidad.Topic_Errores.Error_Punto.Punto_Relacionado..Errores_Calidad.Topic_Errores.Punto": "ERR_QUALITY_ERROR_T_POINT_F"
                }}
        }
    }

    def get_model_mapping(self, model_key):
        # Return a deepcopy of the mapping to protect the original config
        return deepcopy(self.__DB_MAPPING_CONFIG.get(model_key, dict()))
