# Description:
#   "What's for lunch at the university of Oslo?"
#
# Configuration:
#   None
#
# Commands:
#   hubot lunsj <cafeteria>
#
# Author:
#	espenaj
#	API: vegermol


module.exports = (robot) ->
	url = 'http://api.desperate.solutions:5000/todays_dinner/informatikk'
	robot.respond /lunsj1/i, (res) ->
		robot.http(url)
			.header('Accept', 'application/json')
			.get() (err, wres, body) ->
					data = null
					try
						data = JSON.parse body
					catch error
						res.send "Ran into an error parsing JSON :("
						console.log error
						return
					console.log data
					console.log data.cafeteria[0]
					dagens = data.cafeteria[0].dishes

					for ent in data.cafeteria
						res.send food for food in ent.dishes
