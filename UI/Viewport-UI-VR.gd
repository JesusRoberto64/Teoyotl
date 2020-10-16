extends Viewport

func set_viewport_texture(p_texture):
	$"VR-preview".texture = p_texture
	pass

func _ready():
	_on_resize()
	get_tree().get_root().connect("size_changed",self,"_on_resize")
	pass


func _on_resize():
	size = OS.get_window_size()
