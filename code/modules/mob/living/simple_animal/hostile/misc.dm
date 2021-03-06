// Xenoarch aliens.
/mob/living/simple_animal/hostile/samak
	name = "samak"
	desc = "A tough, armoured predator accustomed to hiding and ambushing in cold terrain."
	faction = "samak"
	icon_state = "samak"
	icon_living = "samak"
	icon_dead = "samak_dead"
	move_to_delay = 5
	maxHealth = 130
	health = 130
	speed = 2
	melee_damage_lower = 8
	melee_damage_upper = 15
	attacktext = "mauled"
	cold_damage_per_tick = 0
	speak_chance = 5
	speak = list("Hruuugh!","Hrunnph")
	emote_see = list("paws the ground","shakes its mane","stomps")
	emote_hear = list("snuffles")
	meat_amount = 3
	mob_size = 10
	resistance = 8

/mob/living/simple_animal/hostile/diyaab
	name = "diyaab"
	desc = "A small pack animal. Although omnivorous, it will hunt meat on occasion."
	faction = "diyaab"
	icon_state = "diyaab"
	icon_living = "diyaab"
	icon_dead = "diyaab_dead"
	move_to_delay = 2
	maxHealth = 25
	health = 25
	speed = 1
	melee_damage_lower = 1
	melee_damage_upper = 5
	attacktext = "gouged"
	cold_damage_per_tick = 0
	speak_chance = 5
	speak = list("Awrr?","Aowrl!","Worrl")
	emote_see = list("sniffs the air cautiously","looks around")
	emote_hear = list("snuffles")
	pass_flags = PASSTABLE
	density = 0
	mob_size = 3

/mob/living/simple_animal/hostile/shantak
	name = "shantak"
	desc = "A piglike creature with a bright iridiscent mane that sparkles as though lit by an inner light. Don't be fooled by its beauty though."
	faction = "shantak"
	icon_state = "shantak"
	icon_living = "shantak"
	icon_dead = "shantak_dead"
	move_to_delay = 2.5
	maxHealth = 55
	health = 55
	speed = 1
	melee_damage_lower = 6
	melee_damage_upper = 14
	attacktext = "gouged"
	cold_damage_per_tick = 0
	speak_chance = 5
	speak = list("Shuhn","Shrunnph?","Shunpf")
	emote_see = list("scratches the ground","shakes out it's mane","tinkles gently")
	mob_size = 5
	resistance = 3
	meat_amount = 6 //Pigs are known for giving meat

/mob/living/simple_animal/yithian
	name = "yithian"
	desc = "A friendly creature vaguely resembling an oversized snail without a shell."
	icon_state = "yithian"
	icon_living = "yithian"
	icon_dead = "yithian_dead"
	pass_flags = PASSTABLE
	density = 0
	mob_size = 2

/mob/living/simple_animal/tindalos
	name = "tindalos"
	desc = "It looks like a large, flightless grasshopper."
	icon_state = "tindalos"
	icon_living = "tindalos"
	icon_dead = "tindalos_dead"
	pass_flags = PASSTABLE
	density = 0
	mob_size = 1.5

/mob/living/simple_animal/hostile/snake
	name = "viper"
	desc = "A ferocious, fang-bearing creature that resembles a snake. Rather calm, unless you get close."
	icon = 'icons/mob/mobs-domestic.dmi'
	icon_state = "snake"
	speak_chance = 0
	pass_flags = PASSTABLE
	layer = HIDE_LAYER
	density = 0
	turns_per_move = 5
	meat_type = /obj/item/weapon/reagent_containers/food/snacks/meat/carp
	response_help = "pets the"
	response_disarm = "gently pushes aside the"
	response_harm = "hits the"
	speed = 12
	maxHealth = 25
	health = 25
	aggro_vision_range = 1
	vision_range = 1
	harm_intent_damage = 8
	melee_damage_lower = 4
	melee_damage_upper = 7
	attacktext = "bitten"
	attack_sound = 'sound/weapons/bite.ogg'
	break_stuff_probability = 4
	faction = "pond"
	var/attack_reagent = "toxin"

/mob/living/simple_animal/hostile/snake/AttackingTarget()
	. = ..()
	if(attack_reagent && . && isliving(target_mob))
		var/mob/living/L = target_mob
		if(L.reagents)
			L.reagents.add_reagent(attack_reagent, rand(3,5))