extends Node3D




func _process(delta: float) -> void:
	var player_dir = Input.get_vector("left","right","down","up");
	self.rotate_x(player_dir.x * delta)
	self.rotate_z(player_dir.y * delta)
	
	self.rotation.x=clamp(self.rotation.x,-.5,.5)
	self.rotation.z=clamp(self.rotation.z,-.5,.5)
	pass;
