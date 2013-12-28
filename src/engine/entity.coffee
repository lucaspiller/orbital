class Engine.Entity
  constructor: ->
    @components = []

  addComponent: (component) ->
    @components.push(component)

  getComponent: (componentClass) ->
    for component in @components
      return component if component instanceof componentClass
    return undefined

  hasComponent: (componentClass) ->
    @getComponent(componentClass) != undefined
