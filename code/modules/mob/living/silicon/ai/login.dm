/mob/living/silicon/ai/Login()	//ThisIsDumb(TM) TODO: tidy this up �_� ~Carn
	..()
	if(wipe_timer_id)
		deltimer(wipe_timer_id)
		wipe_timer_id = 0
	for(var/mob/living/M in mob_list)
		if(M.digitalcamo && M.digitaldisguise)
			client.images += M.digitaldisguise
	for(var/obj/effect/rune/rune in world)
		var/image/blood = image('icons/effects/blood.dmi',rune,"mfloor[rand(1,7)]",2)
		blood.override = 1
		blood.color = "#a10808"
		client.images += blood
	regenerate_icons()

	if(stat != DEAD)
		for(var/obj/machinery/ai_status_display/O in machines) //change status
			O.mode = 1
			O.emotion = "Neutral"
	src.view_core()
	return
	var/image/blood = image('icons/effects/blood.dmi', src, "mfloor[rand(1, 7)]", 2)
	blood.override = 1
	blood.color = "#a10808"
	for(var/mob/living/silicon/S in mob_list)
		if(S.client)
			S.client.images += blood
