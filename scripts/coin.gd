extends Area2D
#@onready var game_manager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body):
	var game_manager = body.get_parent().get_node("GameManager")
	game_manager.add_point()
	animation_player.play("pickup")
