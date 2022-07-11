SELECT DISTINCT
*
FROM agendadetails

LEFT JOIN agenda
ON agenda.id = agendadetails.agenda_id 
LEFT JOIN persoonsgegevens
ON persoonsgegevens.id = agenda.persoonsgegevens_id
RIGHT JOIN takenclient
ON takenclient.persoonsgegevens_id = agenda.persoonsgegevens_id
LEFT JOIN takenlijst 
ON takenlijst.id = takenclient.taak_id

ORDER BY agenda.id, datumtijd ASC