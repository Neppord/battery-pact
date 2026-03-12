Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [x] Update sounds
* [ ] Introduce the concept of a state machine
* [ ] Look over the use of bools to get true one-shot plays for SFX
    * [ ] Enter state trigger

* [ ] The "yellow" toy should point the way it travels
    - it should be rotated together with its velocity when sent


## Needs refining

* [ ] New movement patterns
  * [ ] Teleport
  * [ ] Random
  * [ ] Evade
  * [ ] Lane-skip at intervals

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

* [ ] Sprites
  * [ ] Fifth element taxi

## juicy stuff!

* [ ] Screen shake
* [ ] particles
* [ ] "invis frames"
* [ ] stretching
* [ ] other forms of tweening