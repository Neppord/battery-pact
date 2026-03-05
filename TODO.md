Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [x] Add music bus connected to master
* [x] Add sfx bus connected to master
* [x] Play background music
* [x] Play sound when car is spawned
* [x] Play sound when toy collides
* [x] Rework toy as a rigidbody and improve it
* [x] Give (max) charge to toys when spawned
  * [x] Toys lose charge over time
  * [x] Toys stops when they reach 0 charge
  * [x] Toys become gray when they reach 0 charge
  * [x] Toys push the other car proportionally to their charge

* [ ] Have sendable toys
  * [ ] Send a toy with currently charged battery with space/enter
  * [ ] Battery icon showing current charge
    * [ ] Have battery charge itself - 15% to 100% in 3s
  * [ ] Reset battery on send

* [ ] Count toys that pass the other side
  * [ ] One toy is worth 1 point, first to 10 wins

# Visuals
* [ ] Background
* [ ] Toys
  * [ ] Stopped state
* [ ] Arrow
* [ ] Battery icon
* [ ] Score
* [ ] Charge bar on battery

# Audio
* [ ] Send sound
* [ ] Travel sound
* [ ] Collision sound
* [ ] Battery max charge sound
* [ ] Stop sound
* [ ] Arrow collision (up/down) sound
* [ ] Background music
* [ ] Victory fanfare
* [ ] Get a point sound

## Later stuff!

* [ ] Colliding toys push each other
    * [ ] More charged toy wins
        * [ ] Bigger minus smaller charge for total movement?

* [ ] Collided toys perform their activation
  * [ ] Different for each toy - defining trait

* [ ] Different toys move differently
```
move and slide
	if charge <= 0:
		sprite.modulate = Color.DIM_GRAY
	
	if charge > 0 and not collided:
		charge -= CONSUMPTION
		velocity = direction * SPEED * charge / 10.0
		if get_slide_collision_count() > 0 and !sfx_player.is_playing():
			sfx_player.play()
			collided = true
			for i in get_slide_collision_count():
				var collision = get_slide_collision(i)
				collider = collision.get_collider()
				velocity = collider.velocity
	elif collided: 
		move_and_slide()