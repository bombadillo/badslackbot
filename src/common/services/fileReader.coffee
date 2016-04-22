q = require 'q'
fs = require 'fs'

readAll = (file) ->
  deferred = q.defer()
  fs.readFile(file, 'utf8', (err, data) ->
    if !err
      deferred.resolve data
    else
      deferred.resolve {}
  )

  return deferred.promise

exports = this
this.readAll = readAll
