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
If you are *not* using git:

1. Clone the repository into a folder inside your project. I usually create a folder for addons, so I'd do something like this:

```
git clone https://github.com/rmgaray/godot-gridnode2d addons/GridNode2D
```

2. Activate the plugin under Project Settings. It should be auto-detected by the engine and have the name `GridNode2D`.

If you *are* using git, then I suggest to substitute step (1) from above with this:

```
git submodule add https://github.com/rmgaray/godot-gridnode2d addons/GridNode2D
```

This creates a submodule [^1] that you can update whenever you want, so you can keep the add-on and your own project separate.

Try the example project
-----------------------
There is an _extremely minimal_ example that showcases the `GridNode2D` in [godot-gridnode2d-example](https://github.com/rmgaray/godot-gridnode2d-example).

[^1]: Read more about submodules [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules)