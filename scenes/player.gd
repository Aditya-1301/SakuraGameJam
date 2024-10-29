extends CharacterBody2D


const SPEED = 60.0
#const JUMP_VELOCITY = -400.0
@onready var player: CharacterBody2D = $"."

func movement():
	var dir_x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	var dir_y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	var mov = Vector2(dir_x, dir_y)
	velocity = mov.normalized()*SPEED
	move_and_slide()


func _physics_process(delta: float) -> void:
	movement()
	
	

#func _input(event: InputEvent) -> void:
	#if Input.is_action_pressed("ui_up"):
		#player.position.y -= SPEED
	#elif Input.is_action_pressed("ui_left"):
		#player.position.x -= SPEED
	#elif Input.is_action_pressed("ui_down"):
		#player.position.y += SPEED
	#elif Input.is_action_pressed("ui_right"):
		#player.position.x += SPEED


#func _physics_process(delta: float) -> void:
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var direction := Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.x = direction * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
#
	#move_and_slide()
