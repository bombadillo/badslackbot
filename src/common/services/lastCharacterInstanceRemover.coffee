remove = (character, string) ->
  pos = string.lastIndexOf character
  string = string.substring(0,pos) + string.substring(pos+1)

exports = this
this.remove = remove
