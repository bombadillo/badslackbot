lastCharRemover = require '../../common/services/lastCharacterInstanceRemover'

convertToArray = (data) ->
  data = lastCharRemover.remove ',', data
  data = "[#{data}]"
  return JSON.parse data

exports = this
exports.convertToArray = convertToArray
