## Converts the value of the input into the physical distance traveled by the mouse on the
## player's desk. The conversion from pixels to inches is based on the DPI (dots per inch)
## of the player's screen.
## As a consequence, this modifier shares the same limitations and caveats as
## [method DisplayServer.screen_get_dpi].
@tool
class_name GUIDEModifierPhysicalDistance
extends GUIDEModifier

## The screen to fetch the DPI from. Useful when the game supports multiple windows and
## the player may place them on separate monitors.
@export var screen := DisplayServer.SCREEN_OF_MAIN_WINDOW


func _modify_input(input:Vector3, delta:float, value_type:GUIDEAction.GUIDEActionValueType) -> Vector3:
	return input / DisplayServer.screen_get_dpi(screen)


func _editor_name() -> String:
	return "Physical distance"


func _editor_description() -> String:
	return "Converts the value of the input into the physical distance traveled by the mouse on the\n" + \
			"player's desk. The conversion from pixels to inches is based on the DPI (dots per inch)\n" + \
			"of the player's screen.\n" + \
			"As a consequence, this modifier shares the same limitations and caveats as\n" + \
			"[method DisplayServer.screen_get_dpi]."

