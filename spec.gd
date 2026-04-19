class_name Spec

var desc: String
var scope: Callable

func _init(desc: String, scope: Callable):
    self.desc = desc
    self.scope = scope

func run(t: Runner):
    t.describe(desc, scope)