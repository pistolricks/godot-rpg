extends CharacterBody2D

@onready var weapon_marker: Node = get_node("weapon_holder")
@export var speed:int = 80

var dying:bool = false
var attacking_melee:bool = false 
var attacking_ranged:bool = false


var health: int = 5
var damage: int = 2

func _physics_process(delta: float) -> void:
	
	if not dying:
		weapon_marker.look_at(get_global_mouse_position())
		attack_check(delta)
		var input_vector: Vector2 = Vector2.ZERO
		input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
		input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")

		velocity = input_vector*speed
		move_and_slide()


func _on_melee_body_entered(body: Node2D) -> void:
	# Check for damage from enemy
	pass 

func attack_check(delta: float):
	pass