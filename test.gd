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
    for spec_file in specs():
        var spec = load(spec_file).new().spec
        spec.run(TAPRunner.new())
    quit()

