--Consulta 1: Mostrar histórico de servicios atendido por los técnicos del año 2021 con sus servicios dados.
SELECT
	tecnico.doc_ident_persona AS Cedula,
	tecnico.nombre_persona || ' ' || tecnico.apellido_persona AS Tecnico,
	tecnico.email_persona AS Email,
	tecnico.celular_persona AS Numero_Celular,
	tecnico.fecha_cont_tecnico AS Fecha_Contrato,
	tecnico.pago_mensual AS Pago_mensual,
	tecnico.pago_anual AS Pago_anual,
	EXTRACT(YEAR FROM solicitud.fecha_inicio) AS año,
	servicio_tecnico.nombre_serv_tecnico AS Servicio,
	COUNT(solicitud.id_tecnico) AS Cantidad_Servicio_Dado
FROM tecnico
INNER JOIN servicio_tecnico on tecnico.id_serv_tecnico = servicio_tecnico.id_serv_tecnico
INNER JOIN solicitud on tecnico.id_tecnico = solicitud.id_tecnico
WHERE solicitud.fecha_inicio BETWEEN '2021/01/01' AND '2021/12/31'
GROUP BY Cedula, Tecnico, Email, Numero_Celular, 
Fecha_Contrato, Pago_mensual, Pago_anual, año, Servicio
ORDER BY COUNT (solicitud.id_tecnico) DESC


--Consulta 2: Mostrar histórico de ingresos por servicios, del año 2021.

SELECT
	servicio_tecnico.id_serv_tecnico AS Id_servicio,
	Servicio_tecnico.nombre_serv_tecnico AS Servicio,
	EXTRACT(YEAR FROM solicitud.fecha_inicio) AS año,
	SUM(solicitud.monto_pagar) AS Total_Por_Servicio
FROM servicio_tecnico
INNER JOIN solicitud on servicio_tecnico.id_serv_tecnico = solicitud.id_serv_tecnico
WHERE solicitud.fecha_inicio BETWEEN '2021/01/01' AND '2021/12/31'
GROUP BY id_servicio, servicio, año
ORDER BY SUM(solicitud.monto_pagar) DESC 

--Consulta 3: Mostrar histórico de solicitudes pendientes, aprobadas y finalizadas por año.

SELECT
	EXTRACT(YEAR FROM solicitud.fecha_solicitud) AS Año,
	servicio_tecnico.nombre_serv_tecnico AS Servicio,
	solicitud.estado_solicitud AS Estado,
	COUNT(solicitud.estado_solicitud) AS Cantidad
FROM servicio_tecnico
INNER JOIN solicitud ON servicio_tecnico.id_serv_tecnico = solicitud.id_serv_tecnico
WHERE solicitud.fecha_solicitud BETWEEN '2021/01/01' AND '2021/12/31'
GROUP BY Año, Servicio, estado




--Consulta 4 : Mostrar histórico de solicitudes por zona, provincia, cantones, y parroquia de cada servicio dado.
SELECT
	EXTRACT(YEAR FROM solicitud.fecha_solicitud) AS Año,
	zona.nombre_zona AS Zona,
	provincia.nombre_provincia AS Provincia,
	canton.nombre_canton AS Canton,
	parroquia.nombre_parroquia AS Parroquia,
	servicio_tecnico.nombre_serv_tecnico AS Solicitud_Servicio,
	COUNT(solicitud.id_serv_tecnico) AS Cantidad
FROM servicio_tecnico
INNER JOIN solicitud ON servicio_tecnico.id_serv_tecnico = solicitud.id_serv_tecnico
INNER JOIN ficha_catastral ON solicitud.id_catastral = ficha_catastral.id_catastral
INNER JOIN predio_catastral ON ficha_catastral.id_catastral = predio_catastral.id_catastral
INNER JOIN predio ON predio_catastral.id_predio = predio.id_predio
INNER JOIN zona ON predio.id_zona = zona.id_zona
INNER JOIN provincia ON predio.id_provincia = provincia.id_provincia
INNER JOIN canton ON predio.id_canton = canton.id_canton
INNER JOIN parroquia ON predio.id_parroquia = parroquia.id_parroquia
WHERE solicitud.fecha_solicitud BETWEEN '2021/01/01' AND '2021/12/31'
GROUP BY Año, Zona, Provincia, Canton, 
Parroquia, Solicitud_Servicio
ORDER BY Zona
