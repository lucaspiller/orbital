class RenderSystem extends Engine.System
  constructor: (@container) ->
    @canvas = document.createElement 'canvas'
    @canvas.width = window.innerWidth - 20
    @canvas.height = window.innerHeight - 20
    @container.appendChild @canvas
    @ctx = @canvas.getContext '2d'

  update: =>
    @ctx.clearRect(0, 0, @canvas.width, @canvas.height)
    for entity in @world.getEntitiesWithComponent GraphicsComponent
      @renderEntity entity

  renderEntity: (entity) ->
    position = entity.getComponent PositionComponent
    graphics = entity.getComponent GraphicsComponent

    @ctx.save()

    switch graphics.colour
      when COLOURS.red
        @ctx.fillStyle = '#f00'
      when COLOURS.green
        @ctx.fillStyle = '#0f0'
      when COLOURS.blue
        @ctx.fillStyle = '#00f'
      else
        @ctx.fillStyle = '#000'

    switch graphics.type
      when TYPES.planet
        @ctx.beginPath()
        @ctx.arc position.x, position.y, graphics.size, 0, Math.PI*2, true
        @ctx.closePath()
        @ctx.fill()
      else
        @ctx.fillRect position.x, position.y, graphics.size, graphics.size

    @ctx.restore()
