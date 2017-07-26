
/mob/living/carbon/human/proc/get_wings_icon()

	if(wings_style && !(wear_suit && wear_suit.flags_inv & HIDEWINGS))
		var/icon/wings_s = new/icon("icon" = wings_style.icon)
		if(wings_style.do_colouration)
			wings_s.Blend(rgb(src.r_wings, src.g_wings, src.b_wings), wings_style.color_blend_mode)
		if(wings_style.extra_overlay)
			var/icon/overlay = new/icon("icon" = wings_style.icon, "icon_state" = wings_style.extra_overlay)
			wings_s.Blend(overlay, ICON_OVERLAY)

		return wings_s

/mob/living/carbon/human/proc/get_anatomy_icon()

	if(anatomy_style && !(wear_suit && wear_suit.flags_inv & HIDEANATOMY))
		var/icon/anatomy_s = new/icon("icon" = anatomy_style.icon)
		if(anatomy_style.do_colouration)
			anatomy_s.Blend(rgb(src.r_anatomy, src.g_anatomy, src.b_anatomy), anatomy_style.color_blend_mode)

		return anatomy_s

/mob/living/carbon/human/proc/get_breast_icon()

	if(breast_style && !(wear_suit && wear_suit.flags_inv & HIDEBREAST))
		var/icon/breast_s = new/icon("icon" = breast_style.icon)
		if(breast_style.do_colouration)
			breast_s.Blend(rgb(src.r_breast, src.g_breast, src.b_breast), breast_style.color_blend_mode)

		return breast_s

/mob/living/carbon/human/proc/set_taur_tail()

	if(species.name == "Veirei")
		var/datum/sprite_accessory/tail/taur/spider/spiderbutt = new
		tail_style = spiderbutt
	else if(species.name == "Lamia")
		var/datum/sprite_accessory/tail/taur/naga/snakebutt = new
		tail_style = tail_styles_list[snakebutt]