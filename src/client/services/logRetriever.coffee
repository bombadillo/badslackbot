fs = require 'fs'
config = require '../../common/config'

get = ->
  fs.readFile(config.logFile, 'utf8', (err, data) ->
    if !err
      return data
    else
      return false
  )

exports = this
exports.get = get
