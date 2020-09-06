if SERVER then
    AddCSLuaFile()
    
    ---------------------------------
    --
    --    Add FastDL for Clients
    --
    ---------------------------------
    
    -- add other addons
    -- TTTC Fate Item Collection
    resource.AddWorkshop("1384447444")
--------
-- hooks
--------

    ---------------------------------
    --
    --      Initialize Classes
    --
    ---------------------------------

    hook.Add("TTTCPreClassesInit", "InitClassPackBomber", function()
        AddCustomClass("AGENT", {
            color = Color(31, 31, 31, 255),
            name = "agent",
            weapons = {
                "weapon_ttt_adv_disguiser",
                "weapon_ttt_cloak"
            }
        })

        AddCustomClass("ELF", {
            color = Color(77, 146, 18, 255),
            name = "elf",
            weapons = {
                "weapon_ttt_snowball",
                "weapon_ttt_gift"
            }
        })

        AddCustomClass("HUNTER", {
            color = Color(155, 77, 25, 255),
            name = "hunter",
            weapons = {
                "weapon_ttt_beartrap",
                "ttt_m9k_harpoon"
            }
        })

        AddCustomClass("VAMPIRE", {
            color = Color(112, 23, 12, 255),
            name = "vampire",
            weapons = {
				"ttt_perk_staminup",
                "weapon_ttt_cannibal"
                --"vampiredeagle"
            }
        })

        AddCustomClass("TROLL", {
            color = Color(255, 58, 220, 255),
            name = "troll",
            weapons = {
                "weapon_ttt_prop_disguiser",
                "weapon_ttt_minifier"
            }
        })

        AddCustomClass("ATHLETE", {
            color = Color(23, 202, 26, 255),
            name = "athlete",
            weapons = {
                "weapon_ttt_homebat",
                "weapon_ttt_jarate"
            }
        })

        AddCustomClass("JUNKIE", {
            color = Color(255, 215, 0, 255),
            name = "junkie",
            weapons = {
				"ttt_perk_doubletap",
				"ttt_perk_staminup",
                "ttt_perk_speed"
            }
        })

        AddCustomClass("PRIEST", {
            color = Color(205, 16, 118, 255),
            name = "priest",
            weapons = {
                "weapon_ttt_medkit",
                "weapon_amaterasu"
            }
        })

        AddCustomClass("SPARTAN", {
            color = Color(210, 105, 30, 255),
            name = "spartan",
            weapons = {
                "weapon_ttt_spartankick"
            },
			items = {
				EQUIP_ARMOR
			}
        })
        
        AddCustomClass("GAMBLER", {
            color = Color(161, 129, 21, 255),
            name = "gambler",
            weapons = {
                "random_damage"
            },
            items = {
                EQUIP_ASC
            }
        })
            
        AddCustomClass("SCIENTIST", {
            color = Color(255, 122, 103, 255),
            name = "scientist",
            weapons = {
                "weapon_ttt_wtester",
                "weapon_ttt_push"
            }
        })
            
        AddCustomClass("FREERUNNER", {
            color = Color(255, 130, 71, 255),
            name = "freerunner",
            items = {
                EQUIP_BLUE_BULL,
				EQUIP_NOFALLDMG
				
            }
        })
        
        AddCustomClass("MAGICIAN", {
            color = Color(223, 85, 239, 255),
            name = "magician",
            weapons = {
                "weapon_ttt_dead_ringer",
                "weapon_ttt_teleport"
            }
        })
        
        AddCustomClass("NINJA", {
            color = Color(166, 170, 164, 255),
            name = "ninja",
            weapons = {
                "weapon_ttt_shurikens"
            },
            items = {
                EQUIP_SILENTSTEP
            }
        })
            
        AddCustomClass("STUNTMAN", {
            color = Color(0, 0, 128, 255),
            name = "stuntman",
			items = { 
			EQUIP_NOEXPLOSIONDMG,
			EQUIP_NOFIREDMG,
			EQUIP_NOFALLDMG
			}
        })
		
		AddCustomClass("FRAUD", {
            color = Color(178, 34, 34, 255),
            name = "fraud",
            weapons = {
                "weapon_ttt_fakedeath",
				"weapon_ttt_flashbang"
            }
        })
		
		AddCustomClass("HACKER", {
            color = Color(0, 255, 255, 255),
            name = "hacker",
            items = {
                EQUIP_SM,
				EQUIP_TLH
            }
        })
		
		AddCustomClass("MEDIUM", {
            color = Color(64, 224, 208, 255),
            name = "medium",
            weapons = {
                "weapon_ttt_phammer",
				"weapon_ttt_ghostknife"
            }
        })
		
		AddCustomClass("VISIONARY", {
            color = Color(100, 149, 237, 255),
            name = "visionary",
			items = {
				EQUIP_RADAR_CUSTOM,
				EQUIP_SM
			}
        }) 
		
		AddCustomClass("BOUNTYHUNTER", {
            color = Color(226, 187, 77, 255),
           name = "bountyhunter",
			items = {
				EQUIP_RADAR_CUSTOM
			},
			weapons = {
				"weapon_ttt_goldendeagle"
	   	}
        }) 
    end)
	
else

--------
-- hooks
--------

    hook.Add("TTTCFinishedClassesSync", "TTTCBombersClassPackInit", function(ply, first)
        if first then -- just on client and first init !

            -- setup here is not necessary but if you want to access the role data, you need to start here
            -- setup basic translation !
            LANG.AddToLanguage("English", CLASSES.AGENT.name, "Agent")
            LANG.AddToLanguage("English", CLASSES.ELF.name, "Elf")
            LANG.AddToLanguage("English", CLASSES.HUNTER.name, "Hunter")
            LANG.AddToLanguage("English", CLASSES.VAMPIRE.name, "Vampire")
            LANG.AddToLanguage("English", CLASSES.TROLL.name, "Troll")
            LANG.AddToLanguage("English", CLASSES.ATHLETE.name, "Athlete")
            LANG.AddToLanguage("English", CLASSES.JUNKIE.name, "Junkie")
            LANG.AddToLanguage("English", CLASSES.PRIEST.name, "Priest")
            LANG.AddToLanguage("English", CLASSES.SPARTAN.name, "Spartan")
            LANG.AddToLanguage("English", CLASSES.GAMBLER.name, "Gambler")
            LANG.AddToLanguage("English", CLASSES.SCIENTIST.name, "Scientist")
            LANG.AddToLanguage("English", CLASSES.FREERUNNER.name, "Freerunner")
            LANG.AddToLanguage("English", CLASSES.MAGICIAN.name, "Magician")
            LANG.AddToLanguage("English", CLASSES.NINJA.name, "Ninja")
            LANG.AddToLanguage("English", CLASSES.STUNTMAN.name, "Stuntman")
			LANG.AddToLanguage("English", CLASSES.FRAUD.name, "Fraud")
			LANG.AddToLanguage("English", CLASSES.HACKER.name, "Hacker")
			LANG.AddToLanguage("English", CLASSES.MEDIUM.name, "Medium")
			LANG.AddToLanguage("English", CLASSES.VISIONARY.name, "Visionary")
			LANG.AddToLanguage("English", CLASSES.BOUNTYHUNTER.name, "Bountyhunter")
            
            -- just this language too
            LANG.AddToLanguage("Deutsch", CLASSES.AGENT.name, "Agent")
            LANG.AddToLanguage("Deutsch", CLASSES.ELF.name, "Elf")
            LANG.AddToLanguage("Deutsch", CLASSES.HUNTER.name, "Jäger")
            LANG.AddToLanguage("Deutsch", CLASSES.VAMPIRE.name, "Vampir")
            LANG.AddToLanguage("Deutsch", CLASSES.TROLL.name, "Troll")
            LANG.AddToLanguage("Deutsch", CLASSES.ATHLETE.name, "Sportler")
            LANG.AddToLanguage("Deutsch", CLASSES.JUNKIE.name, "Junkie")
            LANG.AddToLanguage("Deutsch", CLASSES.PRIEST.name, "Priester")
            LANG.AddToLanguage("Deutsch", CLASSES.SPARTAN.name, "Spartan")
            LANG.AddToLanguage("Deutsch", CLASSES.GAMBLER.name, "Gambler")
            LANG.AddToLanguage("Deutsch", CLASSES.SCIENTIST.name, "Wissenschaftler")
            LANG.AddToLanguage("Deutsch", CLASSES.FREERUNNER.name, "Freerunner")
            LANG.AddToLanguage("Deutsch", CLASSES.MAGICIAN.name, "Magier")
            LANG.AddToLanguage("Deutsch", CLASSES.NINJA.name, "Ninja")
            LANG.AddToLanguage("Deutsch", CLASSES.STUNTMAN.name, "Stuntman")
			LANG.AddToLanguage("Deutsch", CLASSES.FRAUD.name, "Betrüger")
			LANG.AddToLanguage("Deutsch", CLASSES.HACKER.name, "Hacker")
			LANG.AddToLanguage("Deutsch", CLASSES.MEDIUM.name, "Medium")
		    LANG.AddToLanguage("Deutsch", CLASSES.VISIONARY.name, "Seher")
			LANG.AddToLanguage("Deutsch", CLASSES.BOUNTYHUNTER.name, "Kopfgeldjäger")
			
			LANG.AddToLanguage("Русский", CLASSES.AGENT.name, "Агент")
            LANG.AddToLanguage("Русский", CLASSES.ELF.name, "Эльф")
            LANG.AddToLanguage("Русский", CLASSES.HUNTER.name, "Охотник")
            LANG.AddToLanguage("Русский", CLASSES.VAMPIRE.name, "Вампир")
            LANG.AddToLanguage("Русский", CLASSES.TROLL.name, "Тролль")
            LANG.AddToLanguage("Русский", CLASSES.ATHLETE.name, "Атлет")
            LANG.AddToLanguage("Русский", CLASSES.JUNKIE.name, "Наркоман")
            LANG.AddToLanguage("Русский", CLASSES.PRIEST.name, "Священник")
            LANG.AddToLanguage("Русский", CLASSES.SPARTAN.name, "Спартанец")
            LANG.AddToLanguage("Русский", CLASSES.GAMBLER.name, "Шулер")
            LANG.AddToLanguage("Русский", CLASSES.SCIENTIST.name, "Учёный")
            LANG.AddToLanguage("Русский", CLASSES.FREERUNNER.name, "Фрираннер")
            LANG.AddToLanguage("Русский", CLASSES.MAGICIAN.name, "Волшебник")
            LANG.AddToLanguage("Русский", CLASSES.NINJA.name, "Ниндзя")
            LANG.AddToLanguage("Русский", CLASSES.STUNTMAN.name, "Каскадёр")
			LANG.AddToLanguage("Русский", CLASSES.FRAUD.name, "Мошенник")
			LANG.AddToLanguage("Русский", CLASSES.HACKER.name, "Хакер")
			LANG.AddToLanguage("Русский", CLASSES.MEDIUM.name, "Медиум")
			LANG.AddToLanguage("Русский", CLASSES.VISIONARY.name, "Провидец")
			LANG.AddToLanguage("Русский", CLASSES.BOUNTYHUNTER.name, "Наёмник")
        end
    end)
end
