class_name Test extends SceneTree

func specs() -> Array[String]:
    var root := "res://tests/"
    var dir := DirAccess.open(root)
    var names: Array[String] = [] 
    dir.list_dir_begin()
    var name := dir.get_next()
    while name != '':
        if name.match("*_spec.gd"):
            names.append(root + name)
        name = dir.get_next()
    return names
    
func _init():
    # find all files in the tests folder that ends in _spec.gd
    # loop over them and take the spec filed from them and run it in the printer
    for spec_file in specs():
        var spec = load(spec_file).new().spec
        spec.run(Printer.new())
    quit()

