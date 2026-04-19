
var spec: Spec = Spec.new("Toy", func(t: Runner):
   t.describe("defaults", func(t: Runner):
       t.it("has a charge of 1", func(t: Runner):
           var toy = Toy.new()
           assert(toy.charge == 1, "charge should be one")
           toy.free()
       )
   )
)