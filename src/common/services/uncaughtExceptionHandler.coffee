log = require './log'

handle = ->
  process.on 'uncaughtException', (err) ->
    log.error err

exports = this
this.handle = handle
