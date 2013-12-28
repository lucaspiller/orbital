class Engine.System
  setWorld: (@world) ->
    true

  update: ->
    # Abstract, to be overwritten in implementation
    true
