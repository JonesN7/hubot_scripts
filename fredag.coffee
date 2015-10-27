listofdays = [
	'Søndag'
	'Mandag',
	'Tirsdag'
	'Onsdag'
	'Torsdag'
	'Fredag'
	'Lørdag'
]
module.exports = (robot) ->
	today = new Date() 
	day = today.getDay()

	robot.respond /fredag?/i, (res) ->
		if listofdays[day] == 'Fredag'
			res.send "JA!!!!!"
		else
			res.send "Nei :("
