Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [x] Second toy (change player 1 toy to this)
  * [x] Color Yellow
  * [x] Moves diagonally
  * [x] Change direction when hitting a wall
  * [x] Make sure charge is enough for diagonal cars too

* [ ] Remove crash sound from hitting wall

* [ ] Allow players to pick among all toys
  * [ ] Put all toys in a list
  * [ ] Give each player an index in the list for "their" toy
  * [ ] Allow players to switch toy index using their "left/right" keys
  * [ ] Reset timer when the player changes toy (?)

## Audio
* [ ] Travel sound
* [ ] Battery max charge sound
* [ ] Stop sound
* [ ] Arrow collision (up/down) sound
* [ ] Get a point sound

## Needs refining

* [ ] Recolour cars
  * [ ] Red
  * [ ] Yellow

* [ ] New movement patterns
  * [ ] Diagonal
  * [ ] Teleport
  * [ ] Random
  * [ ] Evade
  * [ ] Lane-skip at intervals

* [ ] Make it more fun to win
    * [ ] Add a fanfare sound

* [ ] Take all parameters/effects and design toys
  * [ ] Standard toys
    * [ ] Reliable, common
  * [ ] Special toys
    * [ ] Chaotic, fun

* Toy strength
  * [ ] Weak+fast
  * [ ] Strong+slow
  * [ ] Mid+mid

* Toy wind-up cost
  * [ ] Low     - Reserved for non-complicated toys
  * [ ] Medium  - Reserved for most toys
  * [ ] High    - Reserved for powerful toys

* [ ] Collided toys perform their activation
  * [ ] Different for each toy - defining trait
    * [ ] New collision effects
      * [ ] Charge a single toy to full and discharge self
      * [ ] Charges everything in an area around itself on collision
      * [ ] Teleports backwards
      * [ ] Pushes target

* [ ] Toy projectiles
  * [ ] Reduce target's charge
  * [ ] Moves target randomly on the y-axis
  * [ ] Moves target to adjacent lane
  * [ ] Rotates target

* [ ] Toy path drops
  * [ ] Charge pack
  * [ ] Push-bomb
  * [ ] Teleport pack
  * [ ] Push-arrow, direction

* [ ] Randomly spawned power-ups
  * [ ] Player battery charger - instant
  * [ ] Player battery charger - Over time
  * [ ] Battery has max charge for 5s
  * [ ] Doubles toy speed
  * [ ] Gives all your toys full charge
  * [ ] Gives all toys full charge

* [ ] Adjust cooldown timer
  * [ ] 0.1s instead

## juicy stuff!

* [ ] Screen shake
* [ ] particles
* [ ] "invis frames"
* [ ] stretching
* [ ] other forms of tweening