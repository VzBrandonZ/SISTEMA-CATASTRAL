/*=================================================================================================*/
/* Trigger: Trigger  que restringa  al tecnico tener mas de 3 solicitudes aprobadas, es decir, 	   */
/*que no tenga nuevas solicitudes aprobadas asignadas, hasta que baje del limite puesto.           */
/*=================================================================================================*/
CREATE OR REPLACE FUNCTION tg_solicitud_maxima() RETURNS TRIGGER
AS
$tg_solicitud_maxima$
DECLARE
	acumSolicitud int;
	maximo int = 3;
BEGIN
	SELECT COUNT(estado_solicitud) INTO acumSolicitud FROM solicitud WHERE id_tecnico = new.id_tecnico AND estado_solicitud = new.estado_solicitud;
	IF(acumSolicitud >= maximo AND new.estado_solicitud = 'Aprobado') THEN
		RAISE EXCEPTION 'No se puede registrar mas solicitudes aprobadas a este tecnico.';
	END IF;
	RETURN new;
END;
$tg_solicitud_maxima$
LANGUAGE plpgsql;

CREATE TRIGGER tg_solicitud_maxima BEFORE INSERT
ON solicitud FOR EACH ROW
EXECUTE PROCEDURE tg_solicitud_maxima();
