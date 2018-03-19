Weapon = { }


local weapons = {
	["WEAPON_KNIFE"] = {
		name = "Knife",
		components = { },
		melee = true,
	},

	["WEAPON_STUNGUN"] = {
		name = "Stun Gun",
		components = { },
		RP = 1000,
		secondary = true,
	},

	["WEAPON_FLASHLIGHT"] = {
		name = "Flashlight",
		components = { },
		RP = 1000,
		melee = true,
	},

	["WEAPON_NIGHTSTICK"] = {
		name = "Nightstick",
		components = { },
		RP = 5000,
		melee = true,
	},

	["WEAPON_HAMMER"] = {
		name = "Hammer",
		components = { },
		RP = 5000,
		melee = true,
	},

	["WEAPON_BAT"] = {
		name = "Bat",
		components = { },
		RP = 5000,
		melee = true,
	},

	["WEAPON_GOLFCLUB"] = {
		name = "Golf Club",
		components = { },
		RP = 6000,
		melee = true,
	},

	["WEAPON_CROWBAR"] = {
		name = "Crowbar",
		components = { },
		RP = 7000,
		melee = true,
	},

	["WEAPON_SAWNOFFSHOTGUN"] = {
		name = "Sawed-Off Shotgun",
		components = { },
		RP = 30000,
		primary = true,
	},

	["WEAPON_RPG"] = {
		name = "RPG",
		components = { },
		unique = true,
	},

	["WEAPON_MINIGUN"] = {
		name = "Minigun",
		components = { },
		unique = true,
	},

	["WEAPON_GRENADE"] = {
		name = "Grenade",
		components = { },
		RP = 25000,
		gadget = true,
	},

	["WEAPON_STICKYBOMB"] = {
		name = "Sticky Bomb",
		components = { },
		RP = 60000,
		gadget = true,
	},

	["WEAPON_SMOKEGRENADE"] = {
		name = "Tear Gas",
		components = { },
		RP = 15000,
		gadget = true,
	},

	["WEAPON_MOLOTOV"] = {
		name = "Molotov Cocktail",
		components = { },
		RP = 35000,
		gadget = true,
	},

	["WEAPON_BOTTLE"] = {
		name = "Broken Bottle",
		components = { },
		RP = 3000,
		melee = true,
	},

	["WEAPON_GUSENBERG"] = {
		name = "Gusenberg Sweeper",
		components = { },
		RP = 146000,
		primary = true,
	},

	["WEAPON_DAGGER"] = {
		name = "Antique Cavalry Dagger",
		components = { },
		RP = 20000,
		melee = true,
	},

	["WEAPON_MUSKET"] = {
		name = "Musket",
		components = { },
		unique = true,
	},

	["WEAPON_HOMINGLAUNCHER"] = {
		name = "Homing Launcher",
		components = { },
		unique = true,
	},

	["WEAPON_PROXMINE"] = {
		name = "Proximity Mine",
		components = { },
		RP = 100000,
		gadget = true,
	},

	["WEAPON_FLAREGUN"] = {
		name = "Flare Gun",
		components = { },
		RP = 37500,
		secondary = true,
	},

	["WEAPON_MARKSMANPISTOL"] = {
		name = "Marksman Pistol",
		components = { },
		RP = 43500,
		primary = true,
	},

	["WEAPON_KNUCKLE"] = {
		name = "Knuckle Dusters",
		components = { },
		RP = 75000,
		melee = true,
	},

	["WEAPON_HATCHET"] = {
		name = "Hatchet",
		components = { },
		RP = 75000,
		melee = true,
	},

	["WEAPON_MACHETE"] = {
		name = "Machete",
		components = { },
		RP = 89000,
		melee = true,
	},

	["WEAPON_SWITCHBLADE"] = {
		name = "Switchblade",
		components = { },
		RP = 19500,
		melee = true,
	},

	["WEAPON_REVOLVER"] = {
		name = "Heavy Revolver",
		components = { },
		RP = 54000,
		primary = true,
	},

	["WEAPON_DBSHOTGUN"] = {
		name = "Double Barrel Shotgun",
		components = { },
		RP = 154500,
		primary = true,
	},

	["WEAPON_AUTOSHOTGUN"] = {
		name = "Sweeper Shotgun",
		components = { },
		RP = 149000,
		primary = true,
	},

	["WEAPON_BATTLEAXE"] = {
		name = "Battle Axe",
		components = { },
		RP = 95000,
		melee = true,
	},

	["WEAPON_COMPACTLAUNCHER"] = {
		name = "Compact Grenade Launcher",
		components = { },
		unique = true,
	},

	["WEAPON_PIPEBOMB"] = {
		name = "Pipe Bomb",
		components = { },
		RP = 50000,
		gadget = true,
	},

	["WEAPON_POOLCUE"] = {
		name = "Pool Cue",
		components = { },
		RP = 62500,
		melee = true,
	},

	["WEAPON_WRENCH"] = {
		name = "Pipe Wrench",
		components = { },
		RP = 71500,
		melee = true,
	},

	["WEAPON_PISTOL"] = {
		name = "Pistol",
		components = {
			{ owned = nil, hash = 3978713628, name = "Extended Clip" },
			{ owned = nil, hash = 1709866683, name = "Suppressor" },
		},
		RP = 0,
		secondary = true,
	},

	["WEAPON_MINISMG"] = {
		name = "Mini SMG",
		components = {
			{ owned = nil, hash = 2474561719, name = "Extended Clip" },
		},
		RP = 89000,
		secondary = true,
	},

	["WEAPON_MACHINEPISTOL"] = {
		name = "Machine Pistol",
		components = {
			{ owned = nil, hash = 3106695545, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
		},
		RP = 62500,
		secondary = true,
	},

	["WEAPON_COMPACTRIFLE"] = {
		name = "Compact Rifle",
		components = {
			{ owned = nil, hash = 1509923832, name = "Extended Clip" },
		},
		RP = 146500,
		primary = true,
	},

	["WEAPON_COMBATPDW"] = {
		name = "Combat PDW",
		components = {
			{ owned = nil, hash = 860508675, name = "Extended Clip" },
			{ owned = nil, hash = 202788691, name = "Grip" },
			{ owned = nil, hash = 2855028148, name = "Scope" },
		},
		RP = 117500,
		secondary = true,
	},

	["WEAPON_SNSPISTOL"] = {
		name = "SNS Pistol",
		components = {
			{ owned = nil, hash = 2063610803, name = "Extended Clip" },
		},
		RP = 27500,
		secondary = true,
	},

	["WEAPON_HEAVYPISTOL"] = {
		name = "Heavy Pistol",
		components = {
			{ owned = nil, hash = 1694090795, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
		},
		RP = 37500,
		secondary = true,
	},

	["WEAPON_SPECIALCARBINE"] = {
		name = "Special Carbine",
		components = {
			{ owned = nil, hash = 2089537806, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 2698550338, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 147500,
		primary = true,
	},

	["WEAPON_BULLPUPRIFLE"] = {
		name = "Bullpup Rifle",
		components = {
			{ owned = nil, hash = 3009973007, name = "Extended Clip" },
			{ owned = nil, hash = 2205435306, name = "Suppressor" },
			{ owned = nil, hash = 2855028148, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 145000,
		primary = true,
	},

	["WEAPON_VINTAGEPISTOL"] = {
		name = "Vintage Pistol",
		components = {
			{ owned = nil, hash = 867832552, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
		},
		RP = 34500,
		secondary = true,
	},

	["WEAPON_HEAVYSHOTGUN"] = {
		name = "Heavy Shotgun",
		components = {
			{ owned = nil, hash = 2535257853, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 135500,
		primary = true,
	},

	["WEAPON_MARKSMANRIFLE"] = {
		name = "Marksman Rifle",
		components = {
			{ owned = nil, hash = 3439143621, name = "Extended Clip" },
			{ owned = nil, hash = 2205435306, name = "Suppressor" },
			{ owned = nil, hash = 471997210, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		unique = true,
	},

	["WEAPON_COMBATPISTOL"] = {
		name = "Combat Pistol",
		components = {
			{ owned = nil, hash = 3598405421, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
		},
		RP = 32000,
		secondary = true,
	},

	["WEAPON_APPISTOL"] = {
		name = "AP Pistol",
		components = {
			{ owned = nil, hash = 614078421, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
		},
		RP = 50000,
		secondary = true,
	},

	["WEAPON_DOUBLEACTION"] = {
		name = "Double-Action Revolver",
		components = { },
		unique = true
	},

	["WEAPON_PISTOL50"] = {
		name = "Pistol .50",
		components = {
			{ owned = nil, hash = 3654528146, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
		},
		RP = 40000,
		secondary = true,
	},

	["WEAPON_MICROSMG"] = {
		name = "Micro SMG",
		components = {
			{ owned = nil, hash = 283556395, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 2637152041, name = "Scope" },
		},
		RP = 37500,
		secondary = true,
	},

	["WEAPON_SMG"] = {
		name = "SMG",
		components = {
			{ owned = nil, hash = 889808635, name = "Extended Clip" },
			{ owned = nil, hash = 3271853210, name = "Suppressor" },
			{ owned = nil, hash = 1019656791, name = "Scope" },
		},
		RP = 75000,
		secondary = true,
	},

	["WEAPON_ASSAULTSMG"] = {
		name = "Assault SMG",
		components = {
			{ owned = nil, hash = 3141985303, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 2637152041, name = "Scope" },
		},
		RP = 125500,
		secondary = true,
	},

	["WEAPON_ASSAULTRIFLE"] = {
		name = "Assault Rifle",
		components = {
			{ owned = nil, hash = 2971750299, name = "Extended Clip" },
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 2637152041, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 85500,
		primary = true,
	},

	["WEAPON_CARBINERIFLE"] = {
		name = "Carbine Rifle",
		components = {
			{ owned = nil, hash = 2433783441, name = "Extended Clip" },
			{ owned = nil, hash = 2205435306, name = "Suppressor" },
			{ owned = nil, hash = 2698550338, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 130000,
		primary = true,
	},

	["WEAPON_ADVANCEDRIFLE"] = {
		name = "Advanced Rifle",
		components = {
			{ owned = nil, hash = 2395064697, name = "Extended Clip" },
			{ owned = nil, hash = 2205435306, name = "Suppressor" },
			{ owned = nil, hash = 2855028148, name = "Scope" },
		},
		RP = 142500,
		primary = true,
	},

	["WEAPON_MG"] = {
		name = "MG",
		components = {
			{ owned = nil, hash = 2182449991, name = "Extended Clip" },
			{ owned = nil, hash = 1006677997, name = "Scope" },
		},
		RP = 135000,
		secondary = true,
	},

	["WEAPON_COMBATMG"] = {
		name = "Combat MG",
		components = {
			{ owned = nil, hash = 3603274966, name = "Extended Clip" },
			{ owned = nil, hash = 2698550338, name = "Scope" },
		},
		RP = 148000,
		secondary = true,
	},

	["WEAPON_PUMPSHOTGUN"] = {
		name = "Pump Shotgun",
		components = {
			{ owned = nil, hash = 3859329886, name = "Suppressor" },
		},
		RP = 35000,
		primary = true,
	},

	["WEAPON_ASSAULTSHOTGUN"] = {
		name = "Assault Shotgun",
		components = {
			{ owned = nil, hash = 2260565874, name = "Extended Clip" },
			{ owned = nil, hash = 2205435306, name = "Suppressor" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 100000,
		primary = true,
	},

	["WEAPON_BULLPUPSHOTGUN"] = {
		name = "Bullpup Shotgun",
		components = {
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		RP = 80000,
		primary = true,
	},

	["WEAPON_SNIPERRIFLE"] = {
		name = "Sniper Rifle",
		components = {
			{ owned = nil, hash = 2805810788, name = "Suppressor" },
			{ owned = nil, hash = 3159677559, name = "Advanced Scope" },
		},
		unique = true,
	},

	["WEAPON_HEAVYSNIPER"] = {
		name = "Heavy Sniper",
		components = {
			{ owned = nil, hash = 3159677559, name = "Advanced Scope" },
		},
		unique = true,
	},

	["WEAPON_GRENADELAUNCHER"] = {
		name = "Grenade Launcher",
		components = {
			{ owned = nil, hash = 2855028148, name = "Scope" },
			{ owned = nil, hash = 202788691, name = "Grip" },
		},
		unique = true,
	},
}


function Weapon.GetWeapons()
	return weapons
end


function Weapon.GetWeapon(id)
	return weapons[id]
end


function Weapon.GetSpawningAmmo(weaponHash)
	local clipSize = GetWeaponClipSize(weaponHash)
	if clipSize <= 0 then clipSize = 1 end
	return clipSize * Settings.weaponClipCount
end