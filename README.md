GridNode2D
==========

Description
-----------
This very simple plugin adds a `GridNode2D` class to Godot (a subclass of `Node2D`) that has the property of always "snapping" to a user-defined grid. Crucially, it also brings an editor add-on, which allows the user to place these `GridNode2D`s in the canvas, snapping them to their cell in real-time.

With this node and editor add-on it becomes very easy to prototype games in which all elements must snap to a grid.

Why not use a `TileMap`? 
--------------------------  
Tiles are far more limited compared to `Node2D`s, which is why for many games it is more convenient to have static elements (like walls, decoration and floors) be tiles while more dynamic elements can be `GridNode2D`s. This is probably not true anymore for Godot 4, but some of us still use Godot 3, so...

GridNode2D's properties
-----------------------
Each `GridNode2D` has three properties:

+ `grid_spacing (int)`: This property defines the width/height of each cell in the grid. Different `GridNode2D`s can snap to different grids.
+ `grid_position (Vector2)`: The offset of the grid. By default it's set to `(0, 0)`, meaning that the grid starts at the origin.
+ `anchor (AnchorSettings)`: The anchor of the `Node2D`. It can either be `CENTERED` or `TOP_LEFT`.  

How to install
--------------
TODO
