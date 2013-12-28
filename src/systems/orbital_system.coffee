class OrbitalSystem extends Engine.System
  update: =>
    for entity in @world.getEntitiesWithComponent OrbitComponent
      @updateEntityOrbit entity

  updateEntityOrbit: (entity) ->
    position = entity.getComponent PositionComponent
    orbit = entity.getComponent OrbitComponent

    orbit.angle += (Math.PI / 2) * (1 / orbit.distance)

    parentPosition = orbit.parent.getComponent PositionComponent
    position.x = parentPosition.x + orbit.distance * Math.cos(orbit.angle)
    position.y = parentPosition.y + orbit.distance * Math.sin(orbit.angle)
