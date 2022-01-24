--Cursor que muestre por año el valor de ingreso total por cada servicio dado a cada cantón.

--Creacion del cursor
CREATE OR REPLACE FUNCTION recorrerValorTotal() RETURNS void AS $$
DECLARE
	register record;
	cur_value CURSOR FOR SELECT
							EXTRACT(YEAR FROM solicitud.fecha_solicitud) AS Año,
							canton.nombre_canton AS Canton,
							servicio_tecnico.nombre_serv_tecnico AS Servicio,
							SUM(solicitud.monto_pagar) AS Ingreso_total
						FROM servicio_tecnico
						INNER JOIN solicitud ON servicio_tecnico.id_serv_tecnico = solicitud.id_serv_tecnico
						INNER JOIN ficha_catastral ON solicitud.id_catastral = ficha_catastral.id_catastral
						INNER JOIN predio_catastral ON ficha_catastral.id_catastral = predio_catastral.id_catastral
						INNER JOIN predio ON predio_catastral.id_predio = predio.id_predio
						INNER JOIN canton ON predio.id_canton = canton.id_canton
						WHERE solicitud.fecha_inicio BETWEEN '2021/01/01' AND '2021/12/31'
						GROUP BY Año, Canton, Servicio
						ORDER BY canton;
BEGIN					
	FOR register IN cur_value LOOP
		RAISE NOTICE '| Año: %			| Canton: % | Servicio: % | Ingreso total: % |', register.Año, register.Canton, register.Servicio, register.Ingreso_total;
	END	LOOP;
END;
$$ LANGUAGE plpgsql;



--Ejercucion del cursor
Select * from recorrerValorTotal();
