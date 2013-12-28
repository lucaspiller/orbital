# Orbital

Orbital is a basic simulation of orbiting planetary bodies. There isn't really anything special about the result, but it uses the entity-component-system pattern, so is a bit different.

## WAT???

Say you have a racing game. There are cars on a track, as well as various walls you can crash into. So you have a Car and Wall class which inherit from a Collidable class. Some of the cars are driven by AI players, so you have a PlayerCar class and AiCar class. You can get different *classes* of cars, so you also end up with BasicPlayerCar, MediumPlayerCar, FastPlayerCar, etc…. You end up with lots of classes, but hardly any of the stuff you inherit is used. If you then want a power up which let's you drive through walls you are royally screwed.

In the entity-component-system pattern you start off with a Car (an *entity*) and various *components* to it like AiDriverComponent, CarClassComponent, DriveThroughWallPowerUpComponent, CollisionComponent. The components hold state, for example the CarClassComponent may have a topSpeed of 100km/h and the CollisionComponent may have a impactRestituion of 0.4.

Alone the components don't do anything, they just hold state, that is where *systems* come in. You may have a CollisionSystem which finds all entities which have a CollisionComponent, it then finds out whether they have collided with anything, and adjusts the PositionComponent, VelocityComponent and DamageComponent accordingly.

So what's the point? Well by doing this, you are writing your game in a more functional way. You have greater seperation of concerns. The CollisionSystem doesn't know, and doesn't care, that the entity it is dealing with is a car. All it cares about is that it has a CollisionComponent. You can write very concise and very testable code this way.

For more details take a look at the source of this project. I admit it isn't very in-depth, but it provides a good simple overview. Turn to Google for further reading, however one of the issues I found (which is why I wrote this in the first place), is there aren't really any good examples explaining the core concepts.

Feel free to open an issue if you still don't get it and want to know more. Contributions welcome and accepted!

## License

<a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/"><img alt="Creative Commons License" style="border-width:0" src="http://i.creativecommons.org/l/by-sa/3.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" href="http://purl.org/dc/dcmitype/InteractiveResource" property="dct:title" rel="dct:type">orbital</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/lucaspiller/orbital" property="cc:attributionName" rel="cc:attributionURL">Luca Spiller</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/3.0/">Creative Commons Attribution-ShareAlike 3.0 Unported License</a>.<br />Based on a work at <a xmlns:dct="http://purl.org/dc/terms/" href="https://github.com/lucaspiller/orbital" rel="dct:source">github.com</a>.<br />Permissions beyond the scope of this license may be available at <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/lucaspiller/orbital" rel="cc:morePermissions">https://github.com/lucaspiller/orbital</a>.
