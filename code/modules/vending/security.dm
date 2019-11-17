/obj/machinery/vending/security
	name = "\improper SecTech"
	desc = "A security equipment vendor."
	product_ads = "Crack capitalist skulls!;Beat some heads in!;Don't forget - harm is good!;Your weapons are right here.;Handcuffs!;Freeze, scumbag!;Don't tase me bro!;Tase them, bro.;Why not have a donut?"
	icon_state = "sec"
	icon_deny = "sec-deny"
	req_access = list(ACCESS_SECURITY)
	products = list(/obj/item/restraints/handcuffs = 16,
		            /obj/item/restraints/handcuffs/cable/zipties = 20,
		            /obj/item/grenade/flashbang = 10,
		            /obj/item/gun/ballistic/automatic/pistol/silencedpistolone = 2,
		            /obj/item/gun/ballistic/automatic/pistol/m1911 = 4,
		            /obj/item/ammo_box/magazine/m45 = 24,
		            /obj/item/assembly/flash/handheld = 10,
					/obj/item/reagent_containers/food/snacks/donut = 24,
					/obj/item/storage/box/evidence = 12,
				    /obj/item/flashlight/seclite = 8,
				    /obj/item/restraints/legcuffs/bola/energy = 14)
	contraband = list(/obj/item/clothing/glasses/sunglasses = 2,
		              /obj/item/storage/fancy/donut_box = 2)
	premium = list(/obj/item/storage/belt/security/webbing = 5,
					/obj/item/coin/antagtoken = 1,
					/obj/item/clothing/head/helmet/blueshirt = 1,
					/obj/item/clothing/suit/armor/vest/blueshirt = 1)
	armor = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 100, "acid" = 50)
	resistance_flags = FIRE_PROOF
	default_price = 100
	extra_price = 150
	payment_department = ACCOUNT_SEC

/obj/machinery/vending/security/pre_throw(obj/item/I)
	if(istype(I, /obj/item/grenade))
		var/obj/item/grenade/G = I
		G.preprime()
	else if(istype(I, /obj/item/flashlight))
		var/obj/item/flashlight/F = I
		F.on = TRUE
		F.update_brightness()
