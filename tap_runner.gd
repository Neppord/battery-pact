class_name TAPRunner extends Runner

var test_count: int = 0

func _init():
    print("TAP version 13")

func describe(_desc: String, scope: Callable):
    # TAP does not have a native grouping concept.
    # We execute the scope and let the 'it' cases handle the output.
    scope.call(self)

func it(desc: String, scope: Callable):
    test_count += 1
    var id = test_count
    
    # In GDScript, we cannot catch errors from scope.call(self).
    # If an assertion fails, the engine will print an error to stderr.
    # A successful test will proceed to print the 'ok' line.
    scope.call(self)
    print("ok %d - %s" % [id, desc])
