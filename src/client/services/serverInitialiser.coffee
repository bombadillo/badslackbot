express = require('express')
app = express()

initialise = ->
  app.set('port', (process.env.PORT || 5000))
  app.use(express.static(__dirname))
  app.set('views', __dirname + "/../views")
  app.set('view engine', 'ejs')

  app.listen(app.get('port'), ->
    console.log('The app is running on port', app.get('port'))
  )
  
  return app

exports = this
this.initialise = initialise
