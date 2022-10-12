/obj/effect/temp_visual/point
	name = "pointer"
	icon = 'icons/mob/screen_gen.dmi'
	icon_state = "arrow"
	layer = POINT_LAYER
	duration = 25

/obj/effect/temp_visual/point/Initialize(mapload, set_invis = 0)
	. = ..()
	var/atom/old_loc = loc
	loc = get_turf(src) // We don't want to actualy trigger anything when it moves
	pixel_x = old_loc.pixel_x
	pixel_y = old_loc.pixel_y
	invisibility = set_invis

//Used by spraybottles.
/obj/effect/decal/chempuff
	name = "chemicals"
	icon = 'icons/obj/chempuff.dmi'
	pass_flags = PASSTABLE | PASSGRILLE
	layer = FLY_LAYER

/obj/effect/decal/chempuff/blob_act(obj/structure/blob/B)
	return

/obj/effect/decal/fakelattice
	name = "lattice"
	desc = "A lightweight support lattice."
	icon = 'icons/obj/smooth_structures/lattice.dmi'
	icon_state = "lattice"
	density = FALSE

/obj/effect/decal/spline
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_plain"
	density = FALSE

/obj/effect/decal/spline_corner
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_fancy_corner"
	density = FALSE

/obj/effect/decal/spline_end
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_plain_cee"
	density = FALSE

/obj/effect/decal/spline_full
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_plain_full"
	density = FALSE

/obj/effect/decal/fspline
	name = "Spline"
	desc = "A fancy ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_fancy"
	density = FALSE

/obj/effect/decal/fspline_corner
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_fancy_corner"
	density = FALSE

/obj/effect/decal/fspline_end
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_fancy_cee"
	density = FALSE

/obj/effect/decal/fspline_full
	name = "Spline"
	desc = "A basic ground divider"
	icon = 'icons/fallout/objects/decals.dmi'
	icon_state = "spline_fancy_full"
	density = FALSE
