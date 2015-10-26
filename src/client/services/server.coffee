express = require 'express'
server = require('http').Server app
io = require('socket.io')(server)
logRetriever = require './logRetriever'
app = express()

start = ->
  app.set('port', (process.env.PORT || 5000))

  app.use(express.static(__dirname + '/public'))

  app.set('views', __dirname + "/../views")
  app.set('view engine', 'ejs')

  app.get('/', (request, response) ->
    logRetriever.get().then((logs) ->
      console.log logs
      response.render('pages/index', { logs: logs })
    )
  )

  app.listen(app.get('port'), ->
    console.log('The app is running on port', app.get('port'))
  )

exports = this
exports.start = start
