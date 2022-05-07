tool
extends EditorPlugin

var selected_node : GridNode2D = null

# We want these nodes to be moved only by the grid increments
func handles(object):
	return object is GridNode2D

func forward_canvas_gui_input(event):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT and not event.is_pressed():
		updatePosition()
		selected_node.property_list_changed_notify()
	return false

# Update the node position on the grid and on the screen	
func updatePosition():
	var pos = selected_node.position
	var grid_pos = Vector2()
	var spacing = selected_node.grid_spacing
	var offset = Vector2()
	if selected_node.anchor_settings == GridNode2D.AnchorSettings.CENTERED:
		offset = Vector2(spacing / 2, spacing / 2)
	grid_pos.x = int(pos.x / spacing)
	grid_pos.y = int(pos.y / spacing)
	selected_node.grid_position = grid_pos
	selected_node.position = grid_pos * spacing + offset
	
func edit(node):
	selected_node = node
	
func clear():
	selected_node = null

func _enter_tree():
	print('GridNode2D addon loaded!')
	set_process_input(true)

func _exit_tree():
	print('GridNode2D addon unloaded!')
