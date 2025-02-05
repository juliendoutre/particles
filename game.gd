extends Node2D

var time_start = 0

func _ready():
	time_start = Time.get_unix_time_from_system()

func _process(delta: float) -> void:
	var time_elapsed = Time.get_unix_time_from_system() - time_start
	$CanvasLayer/Label.text = str(snappedf(time_elapsed, 0.1)) + " s"
