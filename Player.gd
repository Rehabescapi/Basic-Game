extends KinematicBody2D

var started = false
export (int) var speed = 200
var velocity = Vector2()

#Test message Adding additional. 
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	


func get_input():
	velocity = Vector2()
	if Input.is_action_pressed("move_left"):
		velocity.x  -= 1
		# or input_velocity.x equals itself with a difference of a value
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		
	velocity = velocity.normalized() * speed
