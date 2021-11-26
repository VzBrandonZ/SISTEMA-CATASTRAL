/*=========================================================================================================================================*/
/* Stored procedure: Procedimiento almacenado que, al momento de ingresar un técnico, devuelva que cantidad de servicios ha hecho por año. */                                       */
/*=========================================================================================================================================*/
--año, tecnico, servicio, cantidad
CREATE OR REPLACE FUNCTION Mostrar_tecnico(varchar) RETURNS void
AS
$$
DECLARE
	register record;
	cur_cantidad CURSOR FOR SELECT
								EXTRACT(YEAR FROM solicitud.fecha_solicitud) AS Año,
								tecnico.nombre_persona || ' ' || tecnico.apellido_persona AS Tecnico,
								servicio_tecnico.nombre_serv_tecnico AS Servicio,
								COUNT(solicitud.monto_pagar) AS Cantidad
							FROM tecnico
							INNER JOIN servicio_tecnico on tecnico.id_serv_tecnico = servicio_tecnico.id_serv_tecnico
							INNER JOIN solicitud on tecnico.id_tecnico = solicitud.id_tecnico
							WHERE tecnico.doc_ident_persona = $1 AND solicitud.monto_pagar IS NOT null
							GROUP BY Año,  tecnico, Servicio
							ORDER BY Año;
BEGIN
	FOR register IN cur_cantidad LOOP
		RAISE NOTICE 'Año: %  |  Tecnico: %  |  Servicio: %  |  Cantidad: %  |', register.año, 
		register.tecnico, register.servicio, register.cantidad;
	END LOOP;
END;
$$	LANGUAGE plpgsql;


--puede buscar por id_tecnico:
SELECT Mostrar_tecnico(1);

--busqueda por documento de identidad:
SELECT Mostrar_tecnico('1892467598');
