extends Node2D
class_name GridNode2D

enum AnchorSettings {CENTERED, TOP_LEFT}

export (int) var grid_spacing = 40 setget updateSpacing
export (Vector2) var grid_position = Vector2(0, 0)
export (AnchorSettings) var anchor_settings = AnchorSettings.CENTERED
var offset : Vector2 = Vector2(20, 20)

# This function is only used to set the position without an animation
func updatePosition(pos : Vector2):
	grid_position = pos
	position = pos * grid_spacing + offset
	
# Automatically updates offset with grid spacing
func updateSpacing(new_spacing):
	offset = Vector2()
	if anchor_settings == AnchorSettings.CENTERED:
		offset = Vector2(1, 1) * new_spacing / 2
	return new_spacing
# Automatically updates offset with anchor setting
func updateAnchor(new_anchor):
	offset = Vector2()
	if new_anchor == AnchorSettings.CENTERED:
		offset = Vector2(1, 1) * grid_spacing / 2
	return new_anchor

func _ready():
	position = grid_position * grid_spacing + offset
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
