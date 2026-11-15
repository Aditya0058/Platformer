extends Area2D

@export var music: AudioStream
@onready var audio_player: AudioStreamPlayer2D = $AudioStreamPlayer2D


func _ready() -> void:
	audio_player.stream = music


func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		audio_player.play()


func _on_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		audio_player.stop()
