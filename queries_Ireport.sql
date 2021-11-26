--Total de ingresos por cada servicio dado
SELECT
	servicio_tecnico.nombre_serv_tecnico AS Servicio,
	SUM(solicitud.monto_pagar) AS Total_pagos
FROM servicio_tecnico
INNER JOIN solicitud ON servicio_tecnico.id_serv_tecnico = solicitud.id_serv_tecnico
GROUP BY Servicio
ORDER BY Total_pagos;
