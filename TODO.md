Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [ ] Send a toy with currently charged battery with space/enter
  * [ ] Add timer for current battery charge
  * [ ] Reset timer on send
  * [ ] Use timer to set charge of toy
  * [ ] Show progress bar for timer
  * [ ] Style progressbar in the shape of a battery

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