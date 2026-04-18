extends SceneTree

class Spec:
    var desc: String
    var scope: Callable
    func _init(desc:String, scope: Callable):
        self.desc = desc
        self.scope = scope
    
    func run(t: Runner):
        t.describe(desc, scope)

class Runner:
    func describe(desc: String, scope: Callable): pass
    func it(desc: String, scope: Callable): pass

class Printer extends Runner:
    var indent: int = 0
    
    func describe(desc: String, scope: Callable):
        print("  ".repeat(indent) + desc)
        indent += 1;
        scope.call(self)
        indent -= 1;
        
    func it(desc: String, scope: Callable):
        print("  ".repeat(indent) + "it " + desc)
        indent += 1;
        scope.call(self)
        indent -= 1;

var spec: Spec = Spec.new("A BDD Test Framework", func(t: Runner):
   t.describe("The describe function", func(t: Runner):
       t.it("creates a new suite", func(t: Runner):
           pass
       )
       t.describe("when nested", func(t: Runner):
           t.it("is indented correctly", func(t: Runner):
               pass
           )
       )
   )
   t.describe("The it function", func(t: Runner):
       t.it("creates a new test", func(t: Runner):
           pass
       )
   )
)

func _init():
    spec.run(Printer.new())
    quit()

