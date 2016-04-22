serverInitialiser = require './services/serverInitialiser'
apiHandler = require './services/apiHandler'

start = ->
  server = serverInitialiser.initialise()
  apiHandler.handle server

exports = this
exports.start = start
