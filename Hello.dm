/*
	These are simple defaults for your project.
 */

world
	fps = 25		// 25 frames per second
	icon_size = 32	// 32x32 icon size by default

	view = 6		// show up to 6 tiles outward from center (13x13 view)


// Make objects move 8 pixels per tick when walking

mob
	step_size = 8

obj
	step_size = 8


mob
	Login()
		world << "Hello, World"



mob
	verb
		smile()
			world << "[usr] grins."


mob
	verb
		say(msg as text)
			world << "[usr] says, [msg]"


turf
	area/dark
		luminosity = 0
	floor
		icon = 'floor.dmi'
		icon_state = "white"

	start
		icon = 'snow.dmi'
	wall
		icon = 'wall.dmi'
		density = 1
		opacity = 1
mob
	icon = 'player.dmi'
	icon_state = "aliend_s"
	luminosity = 3
	Login()
		loc = locate(/turf/start)
		world << key
	verb
		Die()
			world << "[usr] is died"

obj/object1
	name = "Object 1"
	icon = 'floor.dmi'
	icon_state = "floor"
	verb/lume()
		set src in view(1)
		luminosity = 0
		world << "О да..."
