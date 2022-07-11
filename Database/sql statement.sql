SELECT DISTINCT * FROM agenda 

LEFT JOIN agendadetails ON agendadetails.agenda_id = agenda.id  
LEFT JOIN persoonsgegevens ON persoonsgegevens.id = agenda.persoonsgegevens_id 
LEFT JOIN takenclient ON takenclient.id = agendadetails.takenclient_id
LEFT JOIN takenlijst ON takenlijst.id = takenclient.taak_id 
GROUP BY agendadetails.id 
ORDER BY naam, datumtijd ASC;