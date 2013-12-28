class GraphicsComponent
  constructor: (@type, @size, @colour) ->
    @type ||= TYPES.empty
    @size ||= 10
    @colour ||= COLOURS.empty

TYPES =
  empty: 0
  planet: 1

COLOURS =
  empty:  0
  red:    1
  greeen: 2
  blue:   3
