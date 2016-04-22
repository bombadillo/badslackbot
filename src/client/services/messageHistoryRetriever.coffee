config = require '../../common/config'
q = require 'q'
logToArray = require './convertMessageHistoryData'
fileReader = require '../../common/services/fileReader'

deferred = undefined

get = ->
  deferred = q.defer()
  fileReader.readAll(config.annoyOutputFile).then onData, onFail
  return deferred.promise

onData = (data) ->
  data = logToArray.convertToArray data
  deferred.resolve data

onFail = (err) ->
  deferred.resolve {}

exports = this
exports.get = get
