extends Area2D


@onready var game_manger: Node = %"Game Manager"
@onready var animation_player: AnimationPlayer = $AnimationPlayer


func _on_body_entered(body: Node2D) -> void:
	game_manger.add_point()
	animation_player.play("pick_up_animation")
