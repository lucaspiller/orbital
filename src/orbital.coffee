class Orbital
  constructor: (@element) ->
    true

  start: ->
    @world = new Engine.World()
    @world.addSystem new OrbitalSystem()
    @world.addSystem new RenderSystem(@element)

    entity0 = @world.createEntity()
    entity0.addComponent new PositionComponent(400, 300)
    entity0.addComponent new GraphicsComponent(TYPES.planet, 50, COLOURS.blue)

    entity1 = @world.createEntity()
    entity1.addComponent new PositionComponent()
    entity1.addComponent new GraphicsComponent(TYPES.planet, 10, COLOURS.blue)
    entity1.addComponent new OrbitComponent(entity0, 300)

    entity2 = @world.createEntity()
    entity2.addComponent new PositionComponent()
    entity2.addComponent new GraphicsComponent(TYPES.planet, 3, COLOURS.red)
    entity2.addComponent new OrbitComponent(entity1, 15)

    entity2 = @world.createEntity()
    entity2.addComponent new PositionComponent()
    entity2.addComponent new GraphicsComponent(TYPES.planet, 2, COLOURS.green)
    entity2.addComponent new OrbitComponent(entity1, 25)

    setInterval =>
      @world.update()
    , 1000 / 30

window.Orbital = Orbital
