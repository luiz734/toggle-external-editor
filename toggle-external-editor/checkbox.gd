@tool
extends CheckBox

const USE_EXTERNAL_EDITOR_SETTING_STRING: String = "text_editor/external/use_external_editor"

func _ready() -> void:
    var settings = EditorInterface.get_editor_settings()
    var is_enable_external_editor := settings.get(USE_EXTERNAL_EDITOR_SETTING_STRING)
    button_pressed = is_enable_external_editor
    
    toggled.connect(func(toggled_on: bool):
        if toggled_on:
            print('Plugin<toggle_external_editor>: enable external editor')
            settings.set(USE_EXTERNAL_EDITOR_SETTING_STRING, true)
        else:
            print('Plugin<toggle_external_editor>: disable external editor')
            settings.set(USE_EXTERNAL_EDITOR_SETTING_STRING, false)
    )
