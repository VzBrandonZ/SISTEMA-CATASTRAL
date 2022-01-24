/*TRANSACTION ONE GOOD*/
Create or replace procedure transactionOne(idLote int, idPredio int8, cantidadLote int8, areaLote char(50), tipoLote char(10), nombrePredio char(50), sitioReferencia char(50), numTituloPredio char(10))
As
$$
Declare
    x char(50);
    BEGIN
        Insert into lote(id_lote, id_predio, cantidad_lote, area_lote, tipo) values(idLote, idPredio, cantidadLote, areaLote, tipoLote);
        update predio set nombre_predio = nombrePredio, sitio_referencia = sitioReferencia, num_titulo_predio = numTituloPredio Where id_predio = idPredio;
		select num_titulo_predio into x from predio where id_predio = idPredio;
        if (x != '') then
                update predio set estado_predio = 'identificado' where id_predio = idPredio;
        else
                update predio set estado_predio = 'No identificado' where id_predio = idPredio;
        end if;
    exception
        when sqlstate '23514' then
        raise exception 'No se realizo la transaccion, excedio la cantidad de numeros del titulo';
        rollback;
        commit;
    end;
$$
language plpgsql;



call transactionOneFail(11, 8, 3, '600m²', 'Plano', 'Montenegro','Av.Milagro Rios','12345678');



/*TRANSACTION ONE FAIL*/
Create or replace procedure transactionOneFail(idLote int, idPredio int8, cantidadLote int8, areaLote char(50), tipoLote char(10), nombrePredio char(50), sitioReferencia char(50), numTituloPredio char(15))
As
$$
    BEGIN
        Insert into lote(id_lote, id_predio, cantidad_lote, area_lote, tipo) values(idLote, idPredio, cantidadLote, areaLote, tipoLote);
        update predio set nombre_predio = nombrePredio, sitio_referencia = sitioReferencia, num_titulo_predio = numTituloPredio Where id_predio = idPredio;
        update predio set estado_predio = 'identificado' where id_predio = idPredio;
    end;
$$
language plpgsql;


/**call transactionOneFail(12, 8, 3, '600m²', 'Plano', 'Montenegro','Av.Milagro Rios','');*/


/* TRANSACTION TWO GOOD */

Create or replace procedure transactionTwo(idFecha int, fechaSolicitud date, fechaInicio date, fechaFinal date)
As
$$
Declare
    fecha1 date;
    fecha2 date;
    BEGIN
        Insert into fecha_solicitud(id_fecha, fecha_solicitud, fecha_inicio, fecha_final)values(idFecha, fechaSolicitud, fechaInicio, fechaFinal);
        update solicitud set id_fecha = idFecha where id_solicitud = idFecha;
        select fecha_inicio into fecha1 from fecha_solicitud where id_fecha = idFecha;
        select fecha_final into fecha2 from fecha_solicitud where id_fecha = idFecha;
        raise notice '%, %', fecha1, fecha2;
        if(fecha1 is null and fecha2 is null) then
            update solicitud set estado_solicitud = 'Pendiente' where id_solicitud = idFecha;
        else
            if(fecha1 is not null and fecha2 is null) then
                update solicitud set estado_solicitud = 'Proceso' where id_solicitud = idFecha;
            else
                if(fecha1 is not null and fecha2 is not null)then
                    update solicitud set estado_solicitud = 'Finalizado' where id_solicitud = idFecha;
                else
                    raise exception 'Esta ingresando las fecha en orden incorrecto';
                    rollback;
                end if;
            end if;
        end if;
        exception
			when sqlstate '23514' then
			raise exception 'No se realizo la transaccion';
			rollback;
        commit;
    end;
$$ 
language plpgsql;







/* TRANSACTION TWO FAIL */

Create or replace procedure transactionTwoFail(idFecha int, fechaSolicitud date, fechaInicio date, fechaFinal date)
As
$$
Declare
    fecha1 date;
    fecha2 date;
    BEGIN
        Insert into fecha_solicitud(id_fecha, fecha_solicitud, fecha_inicio, fecha_final)values(idFecha, fechaSolicitud, fechaInicio, fechaFinal);
        update solicitud set id_fecha = idFecha where id_solicitud = idFecha;
        select fecha_inicio into fecha1 from fecha_solicitud where id_fecha = idFecha;
        select fecha_final into fecha2 from fecha_solicitud where id_fecha = idFecha;
        raise notice '%, %', fecha1, fecha2;
        update solicitud set estado_solicitud = 'Pendiente' where id_solicitud = idFecha;
    end;
$$ 
language plpgsql;









        /*Insert into solicitud(id_solicitud, id_catastral, id_serv_tecnico, id_propietario, id_tecnico, estado_solicitud, id_fecha, id_descripcion monto_pagar)values(IdSolicitud, idCatastral, idServTecnico, idPropietario, idTecnico, estadoSolicitud, idFecha, idDescripcion, montoPagar);*/


































/*ROGERS*/



/*TRANSACTION ONE GOOD*/
create or replace procedure transaccion_uno(docAsigId int,tratamientoDescripcion char(100),tratamientoRazon char(100), DocSintomas char(100), DocNivelGravedad int)
as
$$
declare
    x int;
    begin
            insert into tratamiento(doc_asig_id,tratamiento_descripcion,tratamiento_razon) values(docAsigId, tratamientoDescripcion, tratamientoRazon);
            update doctor_asignacion set doc_sintomas = DocSintomas, doc_nivel_gravedad = DocNivelGravedad where doc_asig_id = docAsigId;
            select doc_nivel_gravedad into x from doctor_asignacion where doc_asig_id = docAsigId;
            if (x=1) then
                    update doctor_asignacion set doc_estado ='Estable' where doc_asig_id = docAsigId;
            else
                if(x=2) then
                    update doctor_asignacion set doc_estado = 'Inestable' where doc_estado = docAsigId;
                else
                    if(x=3) then
                        update doctor_asignacion set doc_estado = 'Desconocido' where doc_estado = docAsigId;
                    else
                        raise exception 'No se encuentra el nivel';
                        rollback;
                    end if;
                end if;
            end if;
    exception
            when sqlstate '23514' then
            raise exception 'No se realizo la transaccion.';
        rollback;
        commit;
end;
$$
language plpgsql;




/*TRANSACTION ONE FAIL*/
create or replace procedure transaccion_uno(docAsigId int,tratamientoDescripcion char(100),tratamientoRazon char(100), DocSintomas char(100), DocNivelGravedad int)
as
$$
declare
    x int;
    begin
        insert into tratamiento(doc_asig_id,tratamiento_descripcion,tratamiento_razon) values(docAsigId, tratamientoDescripcion, tratamientoRazon);
        update doctor_asignacion set doc_sintomas = DocSintomas, doc_nivel_gravedad = DocNivelGravedad where doc_asig_id = docAsigId;
        select doc_nivel_gravedad into x from doctor_asignacion where doc_asig_id = docAsigId;
        update doctor_asignacion set doc_estado ='Estable' where doc_asig_id = docAsigId;
    end;
$$
language plpgsql;


/* TRANSACTION TWO GOOD */

create o replace procedure transaccion_dos(estipendioId char(10), huerfanoId char(10), estipendioMesada number(3,2), estipendioDescripcion char(40), huerfanoDetalleComportamiento char(30))
as
$$
declare
    x int
    begin
        insert into estip_mensual(estipendio_id, huerfano_id, estipendio_mesada, estipendio_descripcion)values(estipendioId, huerfanoId, estipendioMesada, estipendioDescripcion);
        update huerfano set huerfano_detalle_comportamiento = huerfanoDetalleComportamiento where huerfano_id = huerfanoId;
    exception
            when sqlstate '23514' then
            raise exception 'No se realizo la transaccion.';
        rollback;
        commit;
    end;
$$
language plpgsql;



/* TRANSACTION TWO FAIL */

create o replace procedure transaccion_dos(estipendioId char(10), huerfanoId char(10), estipendioMesada number(3,2), estipendioDescripcion char(40), huerfanoDetalleComportamiento char(30))
as
$$
declare
    x int
    begin
        insert into estip_mensual(estipendio_id, huerfano_id, estipendio_mesada, estipendio_descripcion)values(estipendioId, huerfanoId, estipendioMesada, estipendioDescripcion);
        update huerfano set huerfano_detalle_comportamiento = huerfanoDetalleComportamiento where huerfano_id = huerfanoId;
    end;
$$
language plpgsql;












