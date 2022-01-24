/*==============================================================*/
/* Table: ADQUISICION                                           */
/*==============================================================*/
create table ADQUISICION (
   ID_ADQUISICION       INT8                 not null,
   NOMBRE_ADQUISICION   CHAR(50)             not null,
   constraint PK_ADQUISICION primary key (ID_ADQUISICION)
);

/*==============================================================*/
/* Index: ADQUISICION_PK                                        */
/*==============================================================*/
create unique index ADQUISICION_PK on ADQUISICION (
ID_ADQUISICION
);

/*==============================================================*/
/* Table: AVALUO_CATASTRAL                                      */
/*==============================================================*/
create table AVALUO_CATASTRAL (
   ID_AVA_IMP           INT8                   not null,
   ID_CATASTRAL         INT8                   not null,
   AVA_PREDIO           NUMERIC                not null,
   AVA_CONSTRUCCION     NUMERIC                not null,
   AVA_OTRO             NUMERIC                not null,
   AVA_TOTAL            NUMERIC                not null,
   IMP_SEGURIDAD        NUMERIC                not null,
   IMP_BOMBERO          NUMERIC                not null,
   IMP_PREDIAL          NUMERIC                not null,
   IMP_TOTAL            NUMERIC                not null,
   constraint PK_AVALUO_CATASTRAL primary key (ID_AVA_IMP)

);

/*==============================================================*/
/* Index: AVALUO_CATASTRAL_PK                                   */
/*==============================================================*/
create unique index AVALUO_CATASTRAL_PK on AVALUO_CATASTRAL (
ID_AVA_IMP
);

/*==============================================================*/
/* Index: AVALUO_CATASTRAL_PK                                   */
/*==============================================================*/
create unique index AVALUO_CATASTRAL_FK on AVALUO_CATASTRAL (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
/*create  index RELATIONSHIP_14_FK on AVALUO_CATASTRAL (
ID_CATASTRAL
);*/

/*==============================================================*/
/* Table: CANTON                                                */
/*==============================================================*/
create table CANTON (
   ID_CANTON            INT2                 not null,
   NOMBRE_CANTON          CHAR(50)             not null,
   constraint PK_CANTON primary key (ID_CANTON)
);

/*==============================================================*/
/* Index: CANTON_PK                                             */
/*==============================================================*/
create unique index CANTON_PK on CANTON (
ID_CANTON
);

/*==============================================================*/
/* Table: CARTOGRAFIA                                           */
/*==============================================================*/
create table CARTOGRAFIA ( 
   ID_CARTOGRAFIA       SERIAL               not null,
   ID_PREDIO            INT8                 not null,
   COORDENADA_X         CHAR(50)             not null,
   COORDENADA_Y         CHAR(50)             not null,
   constraint PK_CARTOGRAFIA primary key (ID_CARTOGRAFIA)
   
);

/*==============================================================*/
/* Index: CARTOGRAFIA_PK                                        */
/*==============================================================*/
create unique index CARTOGRAFIA_PK on CARTOGRAFIA (
ID_CARTOGRAFIA
);

/*==============================================================*/
/* Index: CARTOGRAFIA_PK                                        */
/*==============================================================*/
create unique index CARTOGRAFIA_PREDIO_FK on CARTOGRAFIA (
ID_PREDIO
);

/*==============================================================*/
/* Table: CONSTRUCCION                                          */
/*==============================================================*/
create table CONSTRUCCION (
   ID_CONSTRUCCION      INT8                 not null,
   ID_CATASTRAL         INT8                 not null,
   MED_FRENTE_CONS      CHAR(50)             not null,
   MED_FONDO_CONS       CHAR(50)             not null,
   MED_IZQUIERDA_CONS   CHAR(50)             not null,
   MED_DERECHO_CONS     CHAR(50)             not null,
   MED_AREA             CHAR(50)             not null,
   constraint PK_CONSTRUCCION primary key (ID_CONSTRUCCION)
);

/*==============================================================*/
/* Index: CONSTRUCCION_PK                                       */
/*==============================================================*/
create unique index CONSTRUCCION_PK on CONSTRUCCION (
ID_CONSTRUCCION
);

/*==============================================================*/
/* Index: index_ID_CATASTRAL                                    */
/*==============================================================*/
create  index index_ID_CATASTRAL on CONSTRUCCION (
ID_CATASTRAL
);

/*==============================================================*/
/* Table: FICHA_CATASTRAL                                       */
/*==============================================================*/
create table FICHA_CATASTRAL (
   ID_CATASTRAL         INT8                 not null,
   ID_ADQUISICION       INT8                 null,
   ID_USO               INT8                 null,
   ID_POBLACION         INT8                 null,
   CLAVE_CATASTRAL      CHAR(50)     unique  not null,
   constraint PK_FICHA_CATASTRAL primary key (ID_CATASTRAL)
);

/*==============================================================*/
/* Index: FICHA_CATASTRAL_PK                                    */
/*==============================================================*/
create unique index FICHA_CATASTRAL_PK on FICHA_CATASTRAL (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_ADQUISICION_FK                                  */
/*==============================================================*/
create  index INDEX_ADQUISICION_FK on FICHA_CATASTRAL (
ID_ADQUISICION
);

/*==============================================================*/
/* Index: INDEX_USO_FK                                          */
/*==============================================================*/
create  index INDEX_USO_FK on FICHA_CATASTRAL (
ID_USO
);

/*==============================================================*/
/* Index: INDEX_POBLACION_FK                                    */
/*==============================================================*/
create  index INDEX_POBLACION_FK on FICHA_CATASTRAL (
ID_POBLACION
);


/*==============================================================*/
/* Table: FICHA_PREDIO                                          */
/*==============================================================*/
create table FICHA_PREDIO (
   ID_PROPIETARIO       INT8                 not null,
   ID_PREDIO            INT8                 not null,
   TIPO_PROPIETARIOS    CHAR(50)              not null, 
   constraint PK_FICHA_PREDIO primary key (ID_PROPIETARIO, ID_PREDIO)
);

/*==============================================================*/
/* Index: INDEX_FICHA_PREDIO_PK                                 */
/*==============================================================*/
create unique index INDEX_FICHA_PREDIO_PK on FICHA_PREDIO (
ID_PROPIETARIO,
ID_PREDIO
);

/*==============================================================*/
/* Index: INDEX_FPREDIO_FK                                      */
/*==============================================================*/
create  index INDEX_FPREDIO_FK on FICHA_PREDIO (
ID_PREDIO
);

/*==============================================================*/
/* Index: INDEX_FPROPIETARIO_FK                                     */
/*==============================================================*/
create  index INDEX_FPROPIETARIO_FK on FICHA_PREDIO (
ID_PROPIETARIO
);

/*==============================================================*/
/* Table: FICHA_SERVICIO_BASICO                                 */
/*==============================================================*/
create table FICHA_SERVICIO_BASICO (
   ID_SERV_BASICO       INT8                 not null,
   ID_CATASTRAL         INT8                 not null,
   constraint PK_FICHA_SERVICIO_BASICO primary key (ID_SERV_BASICO, ID_CATASTRAL)
);

/*==============================================================*/
/* Index: INDEX_FICHA_SERVICIO_BASICO_PK                        */
/*==============================================================*/
create unique index INDEX_FICHA_SERVICIO_BASICO_PK on FICHA_SERVICIO_BASICO (
ID_SERV_BASICO,
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_FICHA_SERVICIO_BASICO_CATASTRAL_PK              */
/*==============================================================*/
create  index INDEX_FICHA_SERVICIO_BASICO_CATASTRAL_FK on FICHA_SERVICIO_BASICO (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_FICHA_SERVICIO_BASICO_SERV_FK                   */
/*==============================================================*/
create  index INDEX_FICHA_SERVICIO_BASICO_SERV_FK on FICHA_SERVICIO_BASICO (
ID_SERV_BASICO
);

/*==============================================================*/
/* Table: LOTE                                                  */
/*==============================================================*/
create table LOTE (
   ID_LOTE              SERIAL               not null,
   ID_PREDIO            INT8                 not null,
   CANTIDAD_LOTE        INT8                 not null,
   AREA_LOTE            CHAR(50)             not null,
   TIPO                 CHAR(10)             not null,
   constraint PK_LOTE primary key (ID_LOTE)
);

/*==============================================================*/
/* Index: INDEX_LOTE_PK                                         */
/*==============================================================*/
create unique index INDEX_LOTE_PK on LOTE (
ID_LOTE
);

/*==============================================================*/
/* Index: INDEX_PREDIO_FK                                       */
/*==============================================================*/
create  index INDEX_PREDIO_FK on LOTE (
ID_PREDIO
);

/*==============================================================*/
/* Table: NOTARIA                                               */
/*==============================================================*/
create table NOTARIA (
   ID_NOT               SERIAL               not null,
   NOMBRE_NOT           CHAR(50)             not null,
   REPRESENTANTE_NOT    CHAR(50)             not null,
   CALLE_PRINCIPAL_NOT  CHAR(50)              null,
   SITIO_REFERENCIA_NOT CHAR(50)              null,
   TELEFONO_NOT         CHAR(50)             not null,
   constraint PK_NOTARIA primary key (ID_NOT)
);

/*==============================================================*/
/* Index: NOTARIA_PK                                            */
/*==============================================================*/
create unique index INDEX_NOTARIA_PK on NOTARIA (
ID_NOT
);

/*==============================================================*/
/* Table: OTRA_INSTALACION                                      */
/*==============================================================*/
create table OTRA_INSTALACION (
   ID_INSTALCION        INT8                 not null,
   NOMBRE_INSTALACION   CHAR(50)             not null,
   constraint PK_OTRA_INSTALACION primary key (ID_INSTALCION)
);

/*==============================================================*/
/* Index: INDEX_OTRA_INSTALACION_PK                             */
/*==============================================================*/
create unique index INDEX_OTRA_INSTALACION_PK on OTRA_INSTALACION (
ID_INSTALCION
);

/*==============================================================*/
/* Table: PARROQUIA                                             */
/*==============================================================*/
create table PARROQUIA (
   ID_PARROQUIA         INT8                 not null,
   NOMBRE_PARROQUIA     CHAR(50)             null,
   constraint PK_PARROQUIA primary key (ID_PARROQUIA)
);

/*==============================================================*/
/* Index: INDEX_PARROQUIA_PK                                    */
/*==============================================================*/
create unique index INDEX_PARROQUIA_PK on PARROQUIA (
ID_PARROQUIA
);

/*==============================================================*/
/* Table: PERSONA                                               */
/*==============================================================*/
create table PERSONA (
   ID_PERSONA           SERIAL               not null,
   NOMBRE_PERSONA       CHAR(50)             not null,
   APELLIDO_PERSONA     CHAR(50)             not null,
   DOC_IDENT_PERSONA    CHAR(50)             not null,
   EMAIL_PERSONA        CHAR(50)             not null,
   TELEFONO_PERSONA     CHAR(20)             not null,
   CELULAR_PERSONA      CHAR(20)             not null,
   FECHA_NAC_PERSONA    DATE                 not null,
   EST_CIVIL_PERSONA    CHAR(50)             not null,
   constraint PK_PERSONA primary key (ID_PERSONA)
);

/*==============================================================*/
/* Index: INDEX_PERSONA_PK                                      */
/*==============================================================*/
create unique index INDEX_PERSONA_PK on PERSONA (
ID_PERSONA
);

/*==============================================================*/
/* Table: PREDIO                                                */
/*==============================================================*/
create table PREDIO (
   ID_PREDIO            SERIAL               not null,
   ID_ZONA              INT8                 not null,
   ID_PROVINCIA         INT8                 not null,
   ID_CANTON            INT2                 not null,
   ID_PARROQUIA         INT8                 not null,
   ID_TIPO_VIA          INT8                 not null,
   ID_RODADURA          INT8                 not null,
   NOMBRE_PREDIO        CHAR(50)             not null,
   MED_FRENTE           CHAR(50)             not null,
   MED_FONDO            CHAR(50)             not null,
   MED_IZQUIERDA        CHAR(50)             not null,
   MED_DERECHA          CHAR(50)             not null,
   MED_AREA             CHAR(50)             not null,
   CALLE_PRINCIPAL_PRE  CHAR(50)             not null,
   CALLE_SECUNDARIA_PRE CHAR(50)             not null,
   SITIO_REFERENCIA     CHAR(50)             not null,
   ESTADO_PREDIO        CHAR(50)             not null,
   NUM_TITULO_PREDIO    CHAR(10)             null,
   constraint PK_PREDIO primary key (ID_PREDIO)
);

/*==============================================================*/
/* Index: INDEX_PREDIO_PK                                       */
/*==============================================================*/
create unique index INDEX_PREDIO_PK on PREDIO (
ID_PREDIO
);

/*==============================================================*/
/* Index: INDEX_PREDIO_ZONA_FK                                  */
/*==============================================================*/
create  index INDEX_PREDIO_ZONA_FK on PREDIO (
ID_ZONA
);

/*==============================================================*/
/* Index: INDEX_PREDIO_PROVINCIA_FK                             */
/*==============================================================*/
create  index INDEX_PREDIO_PROVINCIA_FK on PREDIO (
ID_PROVINCIA
);

/*==============================================================*/
/* Index: INDEX_PREDIO_CANTON_FK                                */
/*==============================================================*/
create  index INDEX_PREDIO_CANTON_FK on PREDIO (
ID_CANTON
);

/*==============================================================*/
/* Index: INDEX_PREDIO_PARROQUIA_FK                             */
/*==============================================================*/
create  index INDEX_PREDIO_PARROQUIA_FK on PREDIO (
ID_PARROQUIA
);

/*==============================================================*/
/* Index: INDEX_PREDIO_TIPO_FK                                  */
/*==============================================================*/
create  index INDEX_PREDIO_TIPO_FK on PREDIO (
ID_TIPO_VIA
);

/*==============================================================*/
/* Index: INDEX_PREDIO_RODADURA_FK                              */
/*==============================================================*/
create  index INDEX_PREDIO_RODADURA_FK on PREDIO (
ID_RODADURA
);

/*==============================================================*/
/* Table: PREDIO_CATASTRAL                                      */
/*==============================================================*/
create table PREDIO_CATASTRAL (
   ID_PREDIO            INT8                 not null,
   ID_CATASTRAL         INT8                 not null,
   constraint PK_PREDIO_CATASTRAL primary key (ID_PREDIO, ID_CATASTRAL)
);

/*==============================================================*/
/* Index: INDEX_PREDIO_CATASTRAL_PK                             */
/*==============================================================*/
create unique index INDEX_PREDIO_CATASTRAL_PK on PREDIO_CATASTRAL (
ID_PREDIO,
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_PREDIO_CATASTRAL2_PK                            */
/*==============================================================*/
create unique index INDEX_PREDIO_CATASTRAL2_PK on PREDIO_CATASTRAL (
ID_PREDIO
);

/*==============================================================*/
/* Index: INDEX_PREDIO_CATASTRAL3_PK                            */
/*==============================================================*/
create unique index INDEX_PREDIO_CATASTRAL3_PK on PREDIO_CATASTRAL (
ID_CATASTRAL
);

/*==============================================================*/
/* Table: PROPIETARIO                                           */
/*==============================================================*/
create table PROPIETARIO (
   ID_PROPIETARIO       SERIAL               not null,
   NRO_TITULO_PROPIEDAD INT8                 not null,
   constraint PK_PROPIETARIO primary key (ID_PROPIETARIO)
) INHERITS (PERSONA);

/*==============================================================*/
/* Index: INDEX_PROPIETARIO_PK                                  */
/*==============================================================*/
create unique index INDEX_PROPIETARIO_PK on PROPIETARIO (
ID_PROPIETARIO
);

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   ID_PROVINCIA         INT8                 not null,
   NOMBRE_PROVINCIA     CHAR(50)             not null,
   constraint PK_PROVINCIA primary key (ID_PROVINCIA)
);

/*==============================================================*/
/* Index: INDEX_PROVINCIA_PK                                    */
/*==============================================================*/
create unique index INDEX_PROVINCIA_PK on PROVINCIA (
ID_PROVINCIA
);

/*==============================================================*/
/* Table: REGISTRO_LEGAL                                        */
/*==============================================================*/
create table REGISTRO_LEGAL (
   ID_REGISTRO          INT8                 not null,  
   ID_CATASTRAL         INT8                 not null,
   ID_NOT               INT8                 not null,
   FECHA_ESCRITURA      DATE                 not null,
   NRO_CERTIFICADO      INT8                 not null,
   constraint PK_REGISTRO_LEGAL primary key (ID_REGISTRO)
);
/*==============================================================*/
/* Index: INDEX_REGISTRO_CATASTRAL_PK                           */
/*==============================================================*/
create unique index INDEX_REGISTRO_REGISTRO_PK on REGISTRO_LEGAL (
ID_REGISTRO
);

/*==============================================================*/
/* Index: INDEX_REGISTRO_CATASTRAL_PK                               */
/*==============================================================*/
create unique index INDEX_REGISTRO_CATASTRAL_PK on REGISTRO_LEGAL (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_REGISTRO_NOTARIA_FK                             */
/*==============================================================*/
create  index INDEX_REGISTRO_NOTARIA_FK on REGISTRO_LEGAL (
ID_NOT
);

/*==============================================================*/
/* Table: FICHA_INSTALACION                                     */
/*==============================================================*/
create table FICHA_INSTALACION (
   ID_INSTALCION        INT8                 not null,
   ID_CATASTRAL         INT8                 not null,
   constraint PK_FICHA_INSTALACION primary key (ID_INSTALCION, ID_CATASTRAL)
);

/*==============================================================*/
/* Index: FICHA_INSTALACION_PK                                  */
/*==============================================================*/
create unique index INDEX_FICHA_INSTALACION_PK on FICHA_INSTALACION (
ID_INSTALCION,
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_CATASTRAL_FK                                    */
/*==============================================================*/
create  index INDEX_CATASTRAL_FK on FICHA_INSTALACION (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_INSTALACION_FK                                  */
/*==============================================================*/
create  index INDEX_INSTALACION_FK on FICHA_INSTALACION (
ID_INSTALCION
);

/*==============================================================*/
/* Table: SERVICIO_BASICO                                       */
/*==============================================================*/
create table SERVICIO_BASICO (
   ID_SERV_BASICO       INT8                 not null,
   NOMBRE_SERV_BASICO   CHAR(50)             null,
   constraint PK_SERVICIO_BASICO primary key (ID_SERV_BASICO)
);

/*==============================================================*/
/* Index: INDEX_SERVICIO_BASICO_PK                              */
/*==============================================================*/
create unique index INDEX_SERVICIO_BASICO_PK on SERVICIO_BASICO (
ID_SERV_BASICO
);

/*==============================================================*/
/* Table: SERVICIO_TECNICO                                      */
/*==============================================================*/
create table SERVICIO_TECNICO (
   ID_SERV_TECNICO      INT8                 not null,
   NOMBRE_SERV_TECNICO  CHAR(50)             not null,
   constraint PK_SERVICIO_TECNICO primary key (ID_SERV_TECNICO)
);

/*==============================================================*/
/* Index: INDEX_SERVICIO_TECNICO_PK                             */
/*==============================================================*/
create unique index INDEX_SERVICIO_TECNICO_PK on SERVICIO_TECNICO (
ID_SERV_TECNICO
);

/*==============================================================*/
/* Table: DESCRIPCION_SOLICITUD                                 */
/*==============================================================*/
create table DESCRIPCION_SOLICITUD (
   ID_DESCRIPCION       SERIAL               not null,
   NRO_TITULO_PROPIEDAD INT8                 not null,
   CLAVE_CATASTRAL      CHAR(50)             not null,
   DESCRIPCION_E        CHAR(100)            not null,
   constraint PK_DESCRIPCION_SOLICITUD primary key (ID_DESCRIPCION)
);
/*==============================================================*/
/* Index: INDEX_DESCRIPCION_SOLICITUD_PK                        */
/*==============================================================*/
create unique index INDEX_DESCRIPCION_PK on DESCRIPCION_SOLICITUD (
   ID_DESCRIPCION
);


/*==============================================================*/
/* Table: FECHA_SOLICITUD                                       */
/*==============================================================*/
create table FECHA_SOLICITUD (
   ID_FECHA             SERIAL                 not null,
   FECHA_SOLICITUD      DATE                 not null,
   FECHA_INICIO         DATE,
   FECHA_FINAL          DATE,
   constraint PK_FECHA_SOLICITUD primary key (ID_FECHA)
);
/*==============================================================*/
/* Index: INDEX_FECHA_SOLICITUD_PK                              */
/*==============================================================*/
create unique index INDEX_FECHA_PK on FECHA_SOLICITUD (
   ID_FECHA
);



/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   ID_SOLICITUD         SERIAL               not null,
   ID_CATASTRAL         INT8                 not null,
   ID_SERV_TECNICO      INT8                 not null,
   ID_PROPIETARIO       INT8                 not null,
   ID_TECNICO           INT8                 not null,
   ESTADO_SOLICITUD     CHAR(50)             not null,
   ID_FECHA             INT8                 not null,
   ID_DESCRIPCION       INT8                     null,
   MONTO_PAGAR          NUMERIC                  null,
   constraint PK_SOLICITUD primary key (ID_SOLICITUD)
);

/*==============================================================*/
/* Index: SOLICITUD_PK                                          */
/*==============================================================*/
create unique index INDEX_SOLICITUD_PK on SOLICITUD (
ID_SOLICITUD
);

/*==============================================================*/
/* Index: INDEX_SOLICITUD_CATASTRAL_FK                          */
/*==============================================================*/
create  index INDEX_SOLICITUD_CATASTRAL_FK on SOLICITUD (
ID_CATASTRAL
);

/*==============================================================*/
/* Index: INDEX_SOLICITUD_TECNICO_FK                            */
/*==============================================================*/
create  index INDEX_SOLICITUD_TECNICO_FK on SOLICITUD (
ID_TECNICO
);

/*==============================================================*/
/* Index: INDEX_SOLICITUD_SERV_TEC_FK                           */
/*==============================================================*/
create  index INDEX_SOLICITUD_SERV_TEC_FK on SOLICITUD (
ID_SERV_TECNICO
);

/*==============================================================*/
/* Index: INDEX_SOLICITUD_PROPIETARIO_FK                        */
/*==============================================================*/
create  index INDEX_SOLICITUD_PROPIETARIO_FK on SOLICITUD (
ID_PROPIETARIO
);

/*==============================================================*/
/* Index: INDEX_FECHA_SOLICITUD_FK                              */
/*==============================================================*/
create  index INDEX_FECHA_SOLICITUD_FK on SOLICITUD (
ID_FECHA
);

/*==============================================================*/
/* Index: INDEX_DESCRIPCION_SOLICITUD_FK                        */
/*==============================================================*/
create  index INDEX_DESCRIPCION_SOLICITUD_FK on SOLICITUD (
ID_DESCRIPCION
);





/*==============================================================*/
/* Table: TECNICO                                               */
/*==============================================================*/
create table TECNICO (
   ID_TECNICO           SERIAL               not null,
   ID_SERV_TECNICO      INT8                 not null,
   FECHA_CONT_TECNICO   DATE                 not null,
   PAGO_MENSUAL         NUMERIC              not null,
   PAGO_ANUAL           NUMERIC              not null, 
   constraint PK_TECNICO primary key (ID_TECNICO)
) INHERITS(PERSONA);

/*==============================================================*/
/* Index: INDEX_TECNICO_PK                                      */
/*==============================================================*/
create unique index INDEX_TECNICO_PK on TECNICO (
ID_TECNICO
);

/*==============================================================*/
/* Index: INDEX_TEC_SERV_TECNICO                                */
/*==============================================================*/
create  index INDEX_TEC_SERV_TECNICO on TECNICO (
ID_SERV_TECNICO
);

/*==============================================================*/
/* Table: TIPO_POBLACION                                        */
/*==============================================================*/
create table TIPO_POBLACION (
   ID_POBLACION         INT8                 not null,
   NOM_TIPO_PORBLACION  CHAR(50)             not null,
   constraint PK_TIPO_POBLACION primary key (ID_POBLACION)
);

/*==============================================================*/
/* Index: INDEX_TIPO_POBLACION_PK                               */
/*==============================================================*/
create unique index INDEX_TIPO_POBLACION_PK on TIPO_POBLACION (
ID_POBLACION
);

/*==============================================================*/
/* Table: TIPO_RODADURA                                         */
/*==============================================================*/
create table TIPO_RODADURA (
   ID_RODADURA          INT8                 not null,
   NOMBRE_RODADURA      CHAR(50)             not null,
   constraint PK_TIPO_RODADURA primary key (ID_RODADURA)
);

/*==============================================================*/
/* Index: INDEX_TIPO_RODADURA_PK                                */
/*==============================================================*/
create unique index INDEX_TIPO_RODADURA_PK on TIPO_RODADURA (
ID_RODADURA
);

/*==============================================================*/
/* Table: TIPO_VIA                                              */
/*==============================================================*/
create table TIPO_VIA (
   ID_TIPO_VIA          INT8                 not null,
   NOMBRE_TIPO_VIA      CHAR(50)             not null,
   constraint PK_TIPO_VIA primary key (ID_TIPO_VIA)
);

/*==============================================================*/
/* Index: INDEX_TIPO_VIA_PK                                     */
/*==============================================================*/
create unique index INDEX_TIPO_VIA_PK on TIPO_VIA (
ID_TIPO_VIA
);

/*==============================================================*/
/* Table: USO                                                   */
/*==============================================================*/
create table USO (
   ID_USO               INT8                 not null,
   TIPO_USO             CHAR(50)             not null,
   constraint PK_USO primary key (ID_USO)
);

/*==============================================================*/
/* Index: INDEX_USO_PK                                          */
/*==============================================================*/
create unique index INDEX_USO_PK on USO (
ID_USO
);

/*==============================================================*/
/* Table: ZONA                                                  */
/*==============================================================*/
create table ZONA (
   ID_ZONA              INT8                 not null,
   NOMBRE_ZONA          CHAR(50)             not null,
   constraint PK_ZONA primary key (ID_ZONA)
);

/*==============================================================*/
/* Index: INDEX_ZONA_PK                                         */
/*==============================================================*/
create unique index INDEX_ZONA_PK on ZONA (
ID_ZONA
);


/*==============================================================*/
/*                       FOREIGN KEY                            */
/*==============================================================*/



/*==============================================================*/
/* Foreign key: AVALUO_CATASTRAL                                */
/*==============================================================*/
alter table AVALUO_CATASTRAL
   add constraint FK_AVALUO_C_RELATIONS_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;

/*==============================================================*/
/* Foreign key: CARTOGRAFIA                                     */
/*==============================================================*/
alter table CARTOGRAFIA
   add constraint FK_CARTOGRA_RELATIONS_PREDIO foreign key (ID_PREDIO)
      references PREDIO (ID_PREDIO)
      on delete restrict on update restrict;

/*==============================================================*/
/* Foreign key: CONSTRUCCION                                    */
/*==============================================================*/
alter table CONSTRUCCION
   add constraint FK_CONSTRUC_RELATIONS_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;

/*==============================================================*/
/* Foreign key: FICHA_CATASTRAL                                */
/*==============================================================*/
alter table FICHA_CATASTRAL
   add constraint FK_FICHA_CA_RELATIONS_ADQUISIC foreign key (ID_ADQUISICION)
      references ADQUISICION (ID_ADQUISICION)
      on delete restrict on update restrict;

alter table FICHA_CATASTRAL
   add constraint FK_FICHA_CA_RELATIONS_USO foreign key (ID_USO)
      references USO (ID_USO)
      on delete restrict on update restrict;

alter table FICHA_CATASTRAL
   add constraint FK_FICHA_CA_RELATIONS_TIPO_POB foreign key (ID_POBLACION)
      references TIPO_POBLACION (ID_POBLACION)
      on delete restrict on update restrict;




/*==============================================================*/
/* Foreign key: FICHA_PREDIO                                    */
/*==============================================================*/
alter table FICHA_PREDIO
   add constraint FK_FICHA_PR_FICHA_PRE_PROPIETA foreign key (ID_PROPIETARIO)
      references PROPIETARIO (ID_PROPIETARIO)
      on delete restrict on update restrict;

alter table FICHA_PREDIO
   add constraint FK_FICHA_PR_FICHA_PRE_PREDIO foreign key (ID_PREDIO)
      references PREDIO (ID_PREDIO)
      on delete restrict on update restrict;



/*==============================================================*/
/* Foreign key: FICHA_SERVICIO_BASICO                           */
/*==============================================================*/

alter table FICHA_SERVICIO_BASICO
   add constraint FK_FICHA_SE_FICHA_SER_SERVICIO foreign key (ID_SERV_BASICO)
      references SERVICIO_BASICO (ID_SERV_BASICO)
      on delete restrict on update restrict;

alter table FICHA_SERVICIO_BASICO
   add constraint FK_FICHA_SE_FICHA_SER_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;



/*==============================================================*/
/* Foreign key: LOTE                                            */
/*==============================================================*/
alter table LOTE
   add constraint FK_LOTE_RELATIONS_PREDIO foreign key (ID_PREDIO)
      references PREDIO (ID_PREDIO)
      on delete restrict on update restrict;




/*==============================================================*/
/* Foreign key: PREDIO                                          */
/*==============================================================*/
alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_ZONA foreign key (ID_ZONA)
      references ZONA (ID_ZONA)
      on delete restrict on update restrict;

alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_PROVINCI foreign key (ID_PROVINCIA)
      references PROVINCIA (ID_PROVINCIA)
      on delete restrict on update restrict;

alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_CANTON foreign key (ID_CANTON)
      references CANTON (ID_CANTON)
      on delete restrict on update restrict;

alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_PARROQUI foreign key (ID_PARROQUIA)
      references PARROQUIA (ID_PARROQUIA)
      on delete restrict on update restrict;

alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_TIPO_VIA foreign key (ID_TIPO_VIA)
      references TIPO_VIA (ID_TIPO_VIA)
      on delete restrict on update restrict;

alter table PREDIO
   add constraint FK_PREDIO_RELATIONS_TIPO_ROD foreign key (ID_RODADURA)
      references TIPO_RODADURA (ID_RODADURA)
      on delete restrict on update restrict;




/*==============================================================*/
/* Foreign key: PREDIO_CATASTRAL                                */
/*==============================================================*/
      alter table PREDIO_CATASTRAL
   add constraint FK_PREDIO_C_RELATIONS_PREDIO foreign key (ID_PREDIO)
      references PREDIO (ID_PREDIO)
      on delete restrict on update restrict;

alter table PREDIO_CATASTRAL
   add constraint FK_PREDIO_C_RELATIONS_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;


/*==============================================================*/
/* Foreign key: REGISTRO_LEGAL                                  */
/*==============================================================*/
alter table REGISTRO_LEGAL
   add constraint FK_REGISTRO_RELATIONS_NOTARIA foreign key (ID_NOT)
      references NOTARIA (ID_NOT)
      on delete restrict on update restrict;




/*==============================================================*/
/* Foreign key: FICHA_INSTALACION                               */
/*==============================================================*/

alter table FICHA_INSTALACION
   add constraint FK_RELATION_RELATIONS_OTRA_INS foreign key (ID_INSTALCION)
      references OTRA_INSTALACION (ID_INSTALCION)
      on delete restrict on update restrict;

alter table FICHA_INSTALACION
   add constraint FK_RELATION_RELATIONS_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;




/*==============================================================*/
/* Foreign key: SOLICITUD                                       */
/*==============================================================*/

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_FICHA_CA foreign key (ID_CATASTRAL)
      references FICHA_CATASTRAL (ID_CATASTRAL)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_TECNICO foreign key (ID_TECNICO)
      references TECNICO (ID_TECNICO)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_PROPIETA foreign key (ID_PROPIETARIO)
      references PROPIETARIO (ID_PROPIETARIO)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_SERVICIO foreign key (ID_SERV_TECNICO)
      references SERVICIO_TECNICO (ID_SERV_TECNICO)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_FECHA foreign key (ID_FECHA)
      references FECHA_SOLICITUD (ID_FECHA)
      on delete cascade on update cascade;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_DESCRIPCION foreign key (ID_DESCRIPCION)
      references DESCRIPCION_SOLICITUD (ID_DESCRIPCION)
      on delete cascade on update cascade;



/*==============================================================*/
/* Foreign key: TECNICO                                         */
/*==============================================================*/

alter table TECNICO
   add constraint FK_TECNICO_RELATIONS_SERVICIO foreign key (ID_SERV_TECNICO)
      references SERVICIO_TECNICO (ID_SERV_TECNICO)
      on delete restrict on update restrict;

/*==============================================================*/
/* ADD CHECK                                                    */
/*==============================================================*/


alter table predio add check (char_length(num_titulo_predio) > 0 OR char_length(num_titulo_predio) <=10);
