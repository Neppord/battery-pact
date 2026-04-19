
var spec: Spec = Spec.new("Toy", func(t: Runner):
    t.describe("defaults", func(t: Runner):
        t.it("has a charge of 1", func(t: Runner):
            var toy: Toy = Toy.new()
            assert(toy.charge == 1, "charge should be one")
            toy.free()
        )
    )

    t.describe("physics process", func(t: Runner):
        t.it("depletes charge over time", func(t: Runner):
            var toy: Toy = Toy.new()
            var initial_charge: float = toy.charge
            toy._physics_process(1.0)
            assert(toy.charge < initial_charge, "charge should decrease")
            assert(abs(toy.charge - (initial_charge - 1.0/15)) < 0.001, "charge should decrease by delta/15")
            toy.free()
        )

        t.it("sets linear velocity based on charge and speed", func(t: Runner):
            var toy: Toy = Toy.new()
            toy.charge = 0.5
            toy.direction = Vector2.RIGHT
            # delta=0 to check velocity without depleting charge
            toy._physics_process(0.0)
            assert(toy.linear_velocity == Vector2(150, 0), "velocity should be direction * charge * SPEED (0.5 * 300 = 150)")
            toy.free()
        )
    )

    t.describe("visuals", func(t: Runner):
        t.it("flips sprite based on direction", func(t: Runner):
            var toy: Toy = Toy.new()
            var sprite: Sprite2D = Sprite2D.new()
            toy.sprite = sprite
            
            toy.direction = Vector2.RIGHT
            toy._process(0.1)
            assert(sprite.flip_h == false, "sprite should not be flipped for RIGHT")
            
            toy.direction = Vector2.LEFT
            toy._process(0.1)
            assert(sprite.flip_h == true, "sprite should be flipped for LEFT")
            
            sprite.free()
            toy.free()
        )
    )
)
