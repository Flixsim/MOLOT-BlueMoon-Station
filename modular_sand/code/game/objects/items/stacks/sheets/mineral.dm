/obj/item/stack/sheet/mineral/plasma/cyborg
	custom_materials = null
	is_cyborg = TRUE
	source = /datum/robot_energy_storage/plasma
	cost = MINERAL_MATERIAL_AMOUNT * 0.25

/obj/item/stack/sheet/mineral/plasma/cyborg/attackby(obj/item/W as obj, mob/user as mob, params)
	if(W.get_temperature() > 300)
		var/turf/T = get_turf(src)
		message_admins("Plasma sheets attempted to be ignited by [ADMIN_LOOKUPFLW(user)] in [ADMIN_VERBOSEJMP(T)]")
		log_admin("Plasma sheets attempted to be ignited by [key_name(user)] in [AREACOORD(T)]")
		return
	else
		return ..()

/obj/item/stack/sheet/mineral/plasma/cyborg/fire_act(exposed_temperature, exposed_volume)
	return
