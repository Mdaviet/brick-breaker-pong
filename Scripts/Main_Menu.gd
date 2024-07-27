#extends Node2D
#
#var peer = ENetMultiplayerPeer.new()
#@export var player_prefab: PackedScene
#
#func _on_host_pressed():
	#peer.create_server(135)
	#multiplayer.multiplayer_peer = peer
	#start_game()
#
#func _on_join_pressed():
	#peer.create_client("localhost", 135)
	#multiplayer.multiplayer_peer = peer
	#start_game()
#
#func start_game():
	#$UI.hide()
	#
	#var level = $Level
	#var levelScene = load("res://Scenes/Dev_Sandbox_Z.tscn")
	#level.add_child(levelScene.instantiate())
	#
extends Node2D

var peer = ENetMultiplayerPeer.new()

func _on_host_button_pressed():
	peer.create_server(135)
	multiplayer.multiplayer_peer = peer
	start_game()

func start_game():
	$UI.hide()
	
	if multiplayer.is_server():
		change_level.call_deferred(load("res://Scenes/Level_Scene.tscn"))

func change_level(scene: PackedScene):
	var level = $Level
	
	clear_old_level(level)
	level.add_child(scene.instantiate())

func clear_old_level(level: Node):
	for c in level.get_children():
		level.remove_child(c)
		c.queue_free()
