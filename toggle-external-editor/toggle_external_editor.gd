@tool
extends EditorPlugin

var checkbox_prefab = load("res://addons/toggle-external-editor/checkbox.tscn")
var checkbox: CheckBox

func _enter_tree():
    checkbox = checkbox_prefab.instantiate()
    add_control_to_container(EditorPlugin.CONTAINER_TOOLBAR, checkbox)

func _exit_tree():
    remove_control_from_container(EditorPlugin.CONTAINER_TOOLBAR, checkbox)
    checkbox.queue_free()
