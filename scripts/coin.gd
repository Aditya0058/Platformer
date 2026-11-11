extends Area2D


@onready var game_manger: Node = %"Game Manager"


func _on_body_entered(body: Node2D) -> void:
	game_manger.add_point()
	queue_free()
