Co-authored-by: Karl Wängberg <karlwangberg@gmail.com>
## Important stuff!

* [x] Set correct resolution for project 1920x1080
* [x] Set background image

* [ ] Have an arrow to be moved up and down
  * [x] Show player 1 arrow
  * [x] Decide how many rows we have - 5?
  * [x] Move player 1 arrow up when hitting w
  * [x] Move player 1 arrow down when hitting s
  * [ ] Refactor arrow movement
    * [ ] Find and list all y position of the arrow here
    * [ ] Create a list of all valid y positions
    * [ ] Give the arrow a index representing the lane the arrow is in
    * [ ] Change the index when using w and s 
          then use that index and array to set the y position
  * [ ] Stop movement at edges
  * [ ] Show player 2 arrow
  * [ ] Move player 2 arrow up when hitting w
  * [ ] Move player 2 arrow down when hitting s

* [ ] Have sendable toys
  * [ ] Send a toy with currently charged battery with space/enter
  * [ ] Battery icon showing current charge
    * [ ] Have battery charge itself - 15% to 100% in 3s
  * [ ] Reset battery on send
  * [ ] Toys slow down on low battery
  * [ ] Toys stop on emptied battery
    * [ ] Turn stopped toys gray

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