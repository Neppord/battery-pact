Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [x] Send a toy with currently charged battery with space/enter
  * [x] Add timer for current battery charge
  * [x] Reset timer on send
  * [x] Use timer to set charge of toy
  * [x] Show progress bar
  * [x] Hook it up to timer
  * [x] Don't reset timer on timeout
  * [x] Give player 2 the same progress bar

* [ ] Count toys that pass the other side
  * [x] Create goal lines, area2d
  * [x] Add walls to prevent toy from flying past goal line
  * [x] Add player score and connect to signals on goal line
  * [x] Display player scores
  * [x] Remove toys that score from node tree
  * [x] Display finish screen when a player wins
  * [ ] Add a fanfare sound

# Audio
* [ ] Travel sound
* [ ] Battery max charge sound
* [ ] Stop sound
* [ ] Arrow collision (up/down) sound
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