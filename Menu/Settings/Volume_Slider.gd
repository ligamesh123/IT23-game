extends HSlider

# AudioServer bus name
@export var bus_name: String

var bus_index: int

func _ready() -> void:
	bus_index = AudioServer.get_bus_index(bus_name)
	
	value_changed.connect(_on_volume_value_changed)
	
	value = db_to_linear(AudioServer.get_bus_volume_db(bus_index))

func _on_volume_value_changed(volume: float) -> void:
	AudioServer.set_bus_volume_db(bus_index, linear_to_db(volume))
