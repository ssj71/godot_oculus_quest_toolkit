extends Node

		
		
var room_list = [
	"res://demo_scenes/UIDemoScene.tscn",
	"res://demo_scenes/PhysicsScene.tscn",
	"res://demo_scenes/ClimbingScene.tscn",
	"res://demo_scenes/experiments/TableTennis.tscn",
	"res://demo_scenes/experiments/TestRoom.tscn"
	]

var current_room = 0;

func _process(dt):
	if (vr.button_just_released(vr.BUTTON.ENTER)):
		#current_room = (current_room + 1) % room_list.size();
		#switchScene(room_list[current_room]);
		vr.switch_scene(room_list[0]);
		
func _ready():
	vr.initialize();
	
	vr.scene_switch_root = self;

	# Always advertise Godot a bit in the beggining
	#switchScene("res://demo_scenes/GodotSplash.tscn");
	vr.switch_scene(room_list[current_room], 5.0);

	vr.log_info("  Tracking space is: %d" % vr.get_tracking_space());
	vr.log_info(str("  get_boundary_oriented_bounding_box is: ", vr.get_boundary_oriented_bounding_box()));
	vr.log_info("Engine.target_fps = %d" % Engine.target_fps);
