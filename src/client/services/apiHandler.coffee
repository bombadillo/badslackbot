logRetriever = require './messageHistoryRetriever'

handle = (app) ->
  app.get '/', (request, response) ->
    logRetriever.get().then((logs) ->
      response.render 'pages/index', { logs: logs })

exports = this
this.handle = handle
