class_name Printer extends Runner

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