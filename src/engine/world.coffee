class Engine.World
  constructor: ->
    @systems = []
    @entities = []

  addSystem: (system) ->
    @systems.push system
    system.setWorld this

  createEntity: () ->
    entity = new Engine.Entity()
    @entities.push entity
    entity

  getEntitiesWithComponent: (componentClass) ->
    @entities.filter (entity) ->
      entity.hasComponent componentClass

  update: ->
    for system in @systems
      system.update()
