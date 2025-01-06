AddCSLuaFile()
SWEP.Base = "arc9_eft_base"
SWEP.Category = "ARC9 - Escape From Tarkov"
SWEP.Spawnable = true

------------------------- |||           Trivia            ||| -------------------------

SWEP.PrintName = "HK MP7A1"
SWEP.Description = [[The HK MP7 submachine gun is extremely compact, lightweight, can be used in very confined spaces, and is practically recoil-free. It can be carried continuously, making it the ideal personal weapon for the soldier of today. Those who carry it will be suitably armed for the broadest range of operations. Manufactured by Heckler & Koch.]]

SWEP.Class = ARC9:GetPhrase("eft_class_weapon_smg")
SWEP.SubCategory = ARC9:GetPhrase("eft_subcat_smg")

SWEP.Trivia = {
    [ARC9:GetPhrase("eft_trivia_manuf") .. "1"] = "Heckler & Koch",
    [ARC9:GetPhrase("eft_trivia_cal") .. "2"] = "HK 4.6x30mm",
    [ARC9:GetPhrase("eft_trivia_act") .. "3"] = ARC9:GetPhrase("eft_trivia_act_gas"),
    [ARC9:GetPhrase("eft_trivia_country") .. "4"] = ARC9:GetPhrase("eft_trivia_country_germ"),
    [ARC9:GetPhrase("eft_trivia_year") .. "5"] = "2001"
}

SWEP.StandardPresets = false 

SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"
SWEP.ViewModel = "models/weapons/arc9/darsu_eft/c_mp7.mdl"
SWEP.DefaultBodygroups = "0000000000000"

------------------------- |||           Offsets            ||| -------------------------

SWEP.WorldModelOffset = {
    Pos = Vector(-13, 5.4, -5),
    Ang = Angle(-7, 0, 180),
    TPIKPos = Vector(-6, 5, -4), -- rpg
    TPIKAng = Angle(-11.5, 0, 180),
    Scale = 1
}

SWEP.IronSights = {
    Pos = Vector(-4.28, -5, 0.85),
    Ang = Angle(0, 0.09, 0),
    Midpoint = { Pos = Vector(-1, 0, 8), Ang = Angle(0, 0, -145) },
    Magnification = 1.1,
    ViewModelFOV = 54
}

SWEP.ActivePos = Vector(-0.7, -4.5, 0)
SWEP.CustomizePos = Vector(17, 24, 6)
SWEP.CustomizeSnapshotFOV = 95
SWEP.CustomizeRotateAnchor = Vector(17, -4.28, -5.23)

-- this thing can one hand sprint
local handupang, handuppos, handupholdtype = Angle(-2, 40, -7), Vector(1, -5, -6), "normal"
SWEP.OneHandedSprint = true
SWEP.OneHandedSprintHook = function(self, old) if self:GetValue("HasStock") then return false end end
SWEP.SprintAngHook = function(self, old) if !self:GetValue("HasStock") then return handupang end end
SWEP.SprintPosHook = function(self, old) if !self:GetValue("HasStock") then return handuppos end end
SWEP.HoldTypeSprintHook = function(self, old) if !self:GetValue("HasStock") then return handupholdtype end end

------------------------- |||           Stats            ||| -------------------------

SWEP.Spread = 8.594 * ARC9.MOAToAcc
SWEP.RPM = 950
SWEP.EFTErgo = 65
SWEP.BarrelLength = 20
SWEP.Ammo = "pistol"
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 2},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}

SWEP.Slot = 2

------------------------- |||           Recoil            ||| -------------------------

SWEP.Recoil = 0.5 -- general multiplier of main recoil

SWEP.RecoilUp   = 2.3   -- up recoil
SWEP.RecoilSide = 2.3 -- sideways recoil
SWEP.RecoilRandomUp   = 2.1 -- random up/down
SWEP.RecoilRandomSide = 1.5   -- random left/right

SWEP.RecoilAutoControl = 3.75 -- autocompenstaion, could be cool if set to high but it also affects main recoil

-- visual recoil   aka visrec
SWEP.VisualRecoil = 0.2 -- general multiplier for it

SWEP.EFT_VisualRecoilUp_BURST_SEMI   = 0.15   -- up/down tilt when semi/bursts
SWEP.VisualRecoilUp                   = 0.6   --   when fullautoing
SWEP.EFT_VisualRecoilSide_BURST_SEMI = 0.001 -- left/right tilt when semi/burst
SWEP.VisualRecoilSide                 = 0.09   --   when fullautoing
SWEP.VisualRecoilRoll = 4 -- roll tilt, a visual thing

SWEP.VisualRecoilPunch = 2 -- How far back visrec moves the gun
SWEP.VisualRecoilPunchSights = 1.5 -- same but in sights only

SWEP.VisualRecoilDampingConst = 200  -- spring settings, this is speed of visrec
SWEP.VisualRecoilSpringPunchDamping = 5 -- the less this is the more wobbly gun moves
SWEP.VisualRecoilSpringMagnitude = 0.5 -- some third element of spring, high values make gun shake asf on low fps

SWEP.VisualRecoilPositionBumpUpHipFire = 0.1 -- gun will go down each shot by this value
SWEP.VisualRecoilPositionBumpUp = -0.3 -- same but in sights
SWEP.VisualRecoilPositionBumpUpRTScope = 0.05 -- same but in rt scopes, you probably should keep it same as sight value, i guess it doesn't matter anymore after recoil update

-- SWEP.VisualRecoilCenter = Vector(2, 14, 0) -- ugh, i dont now what to set it too, but probably it should be diffferent on each gun
SWEP.EFT_ShotsToSwitchToFullAutoBehaviur = 3 -- how many shots for switch to fullauto stats from semi/burst, + 2 shots afterwards are lerping. you probably should not touch this but ok

SWEP.RecoilKick = 0.145 -- camera roll each shot + makes camera go more up when fullautoing

SWEP.VisualRecoilCenter = Vector(4.28, 19, -1)
SWEP.SubtleVisualRecoil = 0.75
SWEP.SubtleVisualRecoilDirection = -3
SWEP.SubtleVisualRecoilSpeed = 1.5

------------------------- |||           Damage            ||| -------------------------
--          default

SWEP.DamageMax = 43 * 0.5
SWEP.DamageMin = 28.54 * 0.5
SWEP.PhysBulletMuzzleVelocity = 620 /0.0254
SWEP.RangeMin = 10
SWEP.RangeMax = 1000 /0.0254 * 1

SWEP.Penetration =      40 *2.54/100/0.0254
SWEP.PenetrationDelta = 41/100
SWEP.ArmorPiercing =    41/100
SWEP.RicochetChance =   40/100

SWEP.DamageLookupTable = {
    {   10/0.0254 * 1, 
    43 * 0.5     },

    {   100 /0.0254 * 1, 
    38.25 * 0.5     },

    {   200 /0.0254 * 1, 
    34.75 * 0.5     },

    {   300 /0.0254 * 1, 
    33 * 0.5     },

    {   400 /0.0254 * 1, 
    32 * 0.5     },

    {   500 /0.0254 * 1, 
    31.15 * 0.5     },

    {   600 /0.0254 * 1, 
    30.5 * 0.5     },

    {   700 /0.0254 * 1, 
    29.9 * 0.5     },

    {   800 /0.0254 * 1, 
    29.4 * 0.5     },

    {   900 /0.0254 * 1, 
    29 * 0.5     },

    {   1000 /0.0254 * 1, 
    28.54 * 0.5     },
}

------------------------- |||           Malfunctions            ||| -------------------------

SWEP.MalfunctionNeverLastShoot = false  
SWEP.MalfunctionMeanShotsToFail = 583
SWEP.MalfunctionMeanShotsToFailMultHot = -0.2
SWEP.HeatCapacity = 240
SWEP.HeatDissipation = 2.5

------------------------- |||           Minor stuff            ||| -------------------------

SWEP.CamQCA_Mult = 0.3
SWEP.MuzzleParticle = "muzzleflash_smg"
SWEP.ShellModel = "models/weapons/arc9/darsu_eft/shells/46x30.mdl"
SWEP.ShellSounds = ARC9EFT.Shells9mm

------------------------- |||           Sounds            ||| -------------------------

local path = "weapons/darsu_eft/mp7/"

SWEP.ShootSound = { path .. "fire_new/mp7_outdoor_close_loop1.ogg", path .. "fire_new/mp7_outdoor_close_loop2.ogg", path .. "fire_new/mp7_outdoor_close_loop3.ogg", path .. "fire_new/mp7_outdoor_close_loop4.ogg" }
SWEP.LayerSound = path .. "fire_new/mp7_outdoor_close_loop_tail.ogg"

SWEP.ShootSoundSilenced = { path .. "fire_new/mp7_outdoor_silenced_close_loop1.ogg", path .. "fire_new/mp7_outdoor_silenced_close_loop2.ogg", path .. "fire_new/mp7_outdoor_silenced_close_loop3.ogg", path .. "fire_new/mp7_outdoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilenced = path .. "fire_new/mp7_outdoor_silenced_close_loop_tail.ogg"

SWEP.ShootSoundIndoor = { path .. "fire_new/mp7_indoor_close_loop1.ogg", path .. "fire_new/mp7_indoor_close_loop2.ogg", path .. "fire_new/mp7_indoor_close_loop3.ogg", path .. "fire_new/mp7_indoor_close_loop4.ogg" }
SWEP.LayerSoundIndoor = path .. "fire_new/mp7_indoor_close_loop_tail.ogg"

SWEP.ShootSoundSilencedIndoor = { path .. "fire_new/mp7_indoor_silenced_close_loop1.ogg", path .. "fire_new/mp7_indoor_silenced_close_loop2.ogg", path .. "fire_new/mp7_indoor_silenced_close_loop3.ogg", path .. "fire_new/mp7_indoor_silenced_close_loop4.ogg" }
SWEP.LayerSoundSilencedIndoor = path .. "fire_new/mp7_indoor_silenced_close_loop_tail.ogg"

SWEP.DistantShootSound = { path .. "fire_new/mp7_outdoor_distant_loop1.ogg", path .. "fire_new/mp7_outdoor_distant_loop2.ogg", path .. "fire_new/mp7_outdoor_distant_loop3.ogg", path .. "fire_new/mp7_outdoor_distant_loop4.ogg" }
SWEP.DistantShootSoundSilenced = { path .. "fire_new/mp7_outdoor_silenced_distant_loop1.ogg", path .. "fire_new/mp7_outdoor_silenced_distant_loop2.ogg", path .. "fire_new/mp7_outdoor_silenced_distant_loop3.ogg", path .. "fire_new/mp7_outdoor_silenced_distant_loop4.ogg" }
SWEP.DistantShootSoundIndoor = { path .. "fire_new/mp7_indoor_distant_loop1.ogg", path .. "fire_new/mp7_indoor_distant_loop2.ogg", path .. "fire_new/mp7_indoor_distant_loop3.ogg", path .. "fire_new/mp7_indoor_distant_loop4.ogg" }
SWEP.DistantShootSoundSilencedIndoor = { path .. "fire_new/mp7_indoor_silenced_distant_loop1.ogg", path .. "fire_new/mp7_indoor_silenced_distant_loop2.ogg", path .. "fire_new/mp7_indoor_silenced_distant_loop3.ogg", path .. "fire_new/mp7_indoor_silenced_distant_loop4.ogg" }

SWEP.EnterSightsSound = ARC9EFT.ADSSMG
SWEP.ExitSightsSound = ARC9EFT.ADSSMG

------------------------- |||           Dropped magazines            ||| -------------------------

SWEP.DropMagazineAmount = 1
SWEP.DropMagazineTime = 0.53
SWEP.DropMagazineQCA = 4
SWEP.DropMagazinePos = Vector(0, 0, 0)
SWEP.DropMagazineAng = Angle(-180, 180-20, 0)
SWEP.DropMagazineVelocity = Vector(0, -30, 0)

------------------------- |||           Animations            ||| -------------------------

SWEP.BulletBones = {
    [1] = "patron_in_weapon",
    [2] = "patron_in_mag0",
    [3] = "patron_in_mag1",
    [4] = "patron_in_mag2",
    [5] = "patron_in_mag3",
}

SWEP.SuppressEmptySuffix = true

SWEP.Hook_TranslateAnimation = function(swep, anim)
    local elements = swep:GetElements()

    local ending = ""

    -- local rand = math.Truncate(util.SharedRandom("hi", 0, 2.99)) -- 0, 1, 2
    -- local rand = 0
    local nomag = false

    if elements["eft_mp7_mag_20"] then ending = 0
    elseif elements["eft_mp7_mag_30"] then ending = 1
    elseif elements["eft_mp7_mag_40"]  then ending = 2
    else nomag = true end

    local empty = swep:Clip1() == 0 and !nomag
    
    -- 0 looking
    -- 1 slide check  (!empty)
    -- 2 mag checking  (!nomag)
    if elements["eft_mp7_a2"] then
        if anim == "ready" then anim = "readya2" 
        elseif anim == "draw" then anim = "drawa2" 
        elseif anim == "draw_empty" then anim = "drawa2_empty" 
        elseif anim == "holster" then anim = "holstera2"
        elseif anim == "holster_empty" then anim = "holstera2_empty" end
    end
    
    if anim == "inspect" or anim == "inspect_empty" then
        swep.EFTInspectnum = swep.EFTInspectnum or 0
        if IsFirstTimePredicted() then
            swep.EFTInspectnum = swep.EFTInspectnum + 1
        end
        local rand = swep.EFTInspectnum
        if rand == 3 then swep.EFTInspectnum = 0 rand = 0 end
        if empty and rand == 0 then swep.EFTInspectnum = 1 rand = 1 end
        
        if rand == 1 and elements["eft_mp7_a2"] then
            if anim == "inspect" then return "inspecta2" end
            if anim == "inspect_empty" then return "inspecta2_empty" end
        end

        if rand == 2 and !nomag then -- mag
            ending = "_mag_" .. ending
            
            if ARC9EFTBASE and SERVER then
                net.Start("arc9eftmagcheck")
                net.WriteBool(false) -- accurate or not based on mag type
                net.WriteUInt(math.min(swep:Clip1(), swep:GetCapacity()), 9)
                net.WriteUInt(swep:GetCapacity(), 9)
                net.Send(swep:GetOwner())
            end
        else
            if nomag and rand == 2 then 
                if swep:Clip1() == 1 then return "trick" else rand = 0 end end
            ending = rand
        end
        
        return anim .. ending
    elseif anim == "reload" then
        return anim .. (empty and "_empty" or "") .. ending
    end

    if anim == "fix" then
        rand = math.Truncate(util.SharedRandom("hi", 1, 4.99))
        -- rand = 4

        if SERVER and ARC9EFTBASE then
            net.Start("arc9eftjam")
            net.WriteUInt(rand, 3)
            net.Send(swep:GetOwner())
        end

        return "jam" .. rand
    end
    
    -- print("nomag:", nomag, "rand:", rand, "anim:", anim, "ending:", ending)
    return anim
end

SWEP.ReloadHideBoneTables = {
    [1] = {
        "mod_magazine",
        "patron_in_mag0",
        "patron_in_mag1",
        "patron_in_mag2",
        "patron_in_mag3"
    },
}

local path = "weapons/darsu_eft/mp7/"
local randspin = {"arc9_eft_shared/weapon_generic_rifle_spin1.ogg","arc9_eft_shared/weapon_generic_rifle_spin2.ogg","arc9_eft_shared/weapon_generic_rifle_spin3.ogg","arc9_eft_shared/weapon_generic_rifle_spin4.ogg","arc9_eft_shared/weapon_generic_rifle_spin5.ogg","arc9_eft_shared/weapon_generic_rifle_spin6.ogg","arc9_eft_shared/weapon_generic_rifle_spin7.ogg","arc9_eft_shared/weapon_generic_rifle_spin8.ogg","arc9_eft_shared/weapon_generic_rifle_spin9.ogg","arc9_eft_shared/weapon_generic_rifle_spin10.ogg"}
local slidelock = {"arc9_eft_shared/pistol_jam_slidelock_try1.ogg", "arc9_eft_shared/pistol_jam_slidelock_try2.ogg", "arc9_eft_shared/pistol_jam_slidelock_try3.ogg"}
local slidelockgrab = {"arc9_eft_shared/pistol_jam_slidelock_grab1.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab2.ogg", "arc9_eft_shared/pistol_jam_slidelock_grab3.ogg"}
local pouchin = {"arc9_eft_shared/generic_mag_pouch_in1.ogg","arc9_eft_shared/generic_mag_pouch_in2.ogg","arc9_eft_shared/generic_mag_pouch_in3.ogg","arc9_eft_shared/generic_mag_pouch_in4.ogg","arc9_eft_shared/generic_mag_pouch_in5.ogg","arc9_eft_shared/generic_mag_pouch_in6.ogg","arc9_eft_shared/generic_mag_pouch_in7.ogg"}
local pouchout = {"arc9_eft_shared/generic_mag_pouch_out1.ogg","arc9_eft_shared/generic_mag_pouch_out2.ogg","arc9_eft_shared/generic_mag_pouch_out3.ogg","arc9_eft_shared/generic_mag_pouch_out4.ogg","arc9_eft_shared/generic_mag_pouch_out5.ogg","arc9_eft_shared/generic_mag_pouch_out6.ogg","arc9_eft_shared/generic_mag_pouch_out7.ogg"}

local rst_single = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.06},
    { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.72 },
    { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.85 },
    { s = randspin, t = 1.49 },
    { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 2.16},
    { s =  path .. "ak74_round_in_chamber.ogg", t = 2.83  },
    { s = "arc9_eft_shared/weap_handon.ogg", t = 3.54},
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 4.31 },
    { s = randspin, t = 4.74 },
}

local rst_def = {
    { s = randspin, t = 0.05 },    
    { s =  path .. "mp7_mag_button.ogg", t = 0.51 },
    { s =  path .. "mp7_mag_out.ogg", t = 0.59 },
    { s = randspin, t = 0.96 },
    { s = pouchin, t = 1.1 },
    { s = pouchout, t = 1.2 },
    { s =  path .. "mp7_mag_in.ogg", t = 1.55 },
    { s = randspin, t = 2.44},
}

local rst_empty = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.16},
    { s =  path .. "mp7_mag_button.ogg", t = 0.3 },
    { s =  path .. "mp7_mag_out.ogg", t = 0.34 },
    { s = randspin, t = 0.87 },
    { s = pouchout, t = 0.92 },
    { s =  path .. "mp7_mag_in.ogg", t = 1.11 },
    { s = randspin, t = 1.72 },
    { s = path .. "mp7_bolt_release_from_catch.ogg", t = 2.1 },
    { s = randspin, t = 2.42 },
    {hide = 0, t = 0},
    {hide = 1, t = 0.53},
    {hide = 0, t = 1.1}
}

local rst_magcheck = {
    { s = "arc9_eft_shared/weap_handoff.ogg", t = 0.1},
    { s =  path .. "mp7_mag_button.ogg", t = 0.3 },
    { s =  path .. "mp7_mag_out.ogg", t = 0.35 },
    { s = randspin, t = 1.66 },
    { s =  path .. "mp7_mag_in.ogg", t = 1.84 },
    { s = randspin, t = 2.45},
}
local rik_magcheck = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_look = {
    { t = 0, lhik = 1 },
    { t = 0.1, lhik = 0 },
    { t = 0.8, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_single = {
    { t = 0, lhik = 1 },
    { t = 0.07, lhik = 0 },
    { t = 0.93, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_def = {
    { t = 0, lhik = 1 },
    { t = 0.15, lhik = 0 },
    { t = 0.85, lhik = 0 },
    { t = 1, lhik = 1 },
}
local rik_empty = {
    { t = 0, lhik = 1 },
    { t = 0.12, lhik = 0 },
    { t = 0.62, lhik = 0 },
    { t = 0.72, lhik = 1 },
    { t = 1, lhik = 1 },
}
local rik_ready = {
    { t = 0, lhik = 1 },
    { t = 0.001, lhik = 0 },
    { t = 0.7, lhik = 0 },
    { t = 0.92, lhik = 1 },
    { t = 1, lhik = 1 },
}

SWEP.Animations = {
    ["idle"] = {
        Source = "idle",
        RareSource = {"tooidle0", "tooidle1", "tooidle2"},
        RareSourceChance = 0.0001,
        -- Time = 1000, -- reset when done soundstables!!!!!!!!
    },

    ["ready"] = {
        Source = {"ready0", "ready1", "ready2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "mp7_glip_on.ogg", t = 0.3 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.82 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.96 },
        },
        IKTimeLine = rik_ready,
    },        
    ["readya2"] = {
        Source = {"ready0a2", "ready1a2", "ready2a2"},
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.75 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.89 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.5, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },


    ["draw"] = {
        Source = "draw",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "mp7_glip_on.ogg", t = 0.35 },
        }
    },
    ["draw_empty"] = {
        Source = "draw_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
            { s = path .. "mp7_glip_on.ogg", t = 0.35 },
        }
    },

    ["drawa2"] = {
        Source = "drawa2",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.4, lhik = 0 },
            { t = 0.8, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    ["drawa2_empty"] = {
        Source = "drawa2_empty",
        EventTable = {
            { s = "arc9_eft_shared/pm_draw.ogg", t = 0.05 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.001, lhik = 0 },
            { t = 0.48, lhik = 0 },
            { t = 1, lhik = 0.75 },
            { t = 1, lhik = 1 },
        },
    },

    ["holster"] = {
        Source = "holster",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
            { s = path .. "mp7_glip_off.ogg", t = 0.17 },
        }
    },
    ["holster_empty"] = {
        Source = "holster_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
            { s = path .. "mp7_glip_off.ogg", t = 0.17 },
        }
    },

    ["holstera2"] = {
        Source = "holstera2",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.45, lhik = 0 },
            { t = 1, lhik = 0 },
        },
    },
    ["holstera2_empty"] = {
        Source = "holstera2_empty",
        EventTable = {
            { s =  "arc9_eft_shared/pm_holster.ogg", t = 0 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.45, lhik = 0 },
            { t = 1, lhik = 0 },
        },
    },

    ["fire"] = {
        Source = "fire",
        EventTable = {
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },
    ["fire_empty"] = {
        Source = "fire_last",
        EventTable = {
            { s = path .. "mp7_hammer.ogg", t = 0 },
        }
    },
    ["dryfire"] = {
        Source = "fire_dry",
    },
    ["dryfire_empty"] = {
        Source = "fire_dry_empty",
    },

    ["reload"] = {
        Source = "reload_single",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_single,
        IKTimeLine = rik_single
    },

    ["reload0"] = {
        Source = "reload0",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = rik_def
    },
    ["reload1"] = {
        Source = "reload1",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = rik_def
    },
    ["reload2"] = {
        Source = "reload2",
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_def,
        IKTimeLine = rik_def
    },

    ["reload_empty0"] = {
        Source = {"reload_empty0_0", "reload_empty0_1", "reload_empty0_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty,
        IKTimeLine = rik_empty
    },
    ["reload_empty1"] = {
        Source = {"reload_empty1_0", "reload_empty1_1", "reload_empty1_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty,
        IKTimeLine = rik_empty
    },
    ["reload_empty2"] = {
        Source = {"reload_empty2_0", "reload_empty2_1", "reload_empty2_2"}, 
        MinProgress = 0.85,
        FireASAP = true,
        EventTable = rst_empty,
        IKTimeLine = rik_empty,
    },

    ["toggle"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights"] = {
        Source = "mod_switch",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["toggle_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },
    ["switchsights_empty"] = {
        Source = "mod_switch_empty",
        EventTable = {{ s = {"arc9_eft_shared/weapon_light_switcher1.ogg", "arc9_eft_shared/weapon_light_switcher2.ogg", "arc9_eft_shared/weapon_light_switcher3.ogg"}, t = 0 },}
    },



    
    ["jam1"] = {
        Source = "jam_shell",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.72 },
            { s = randspin, t = 1.16 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.75 },
            { s = slidelockgrab, t = 1.82 },
            { s = slidelockgrab, t = 2.32 },
            { s = randspin, t = 2.88 },
            -- { s =  path .. "generic_jam_shell_ remove_heavy1.ogg", t = 2.98 },
            { s = randspin, t = 3.4 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.75 },
            { s = randspin, t = 4.01 },
        },
        -- EjectAt = 1.97
    },        
    
    ["jam3"] = {
        Source = "jam_hardjam",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.72 },
            { s = randspin, t = 1.16 },
            -- { s = slidelockgrab, t = 1.78 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.78 },
            { s = randspin, t = 2.3 },
            { s = slidelockgrab, t = 3.4 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 3.76 },
            -- { s =  path .. "generic_jam_shell_ remove_heavy1.ogg", t = 4.05 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 4.18 },
            { s = randspin, t = 4.63 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.2, lhik = 1 },
            { t = 0.3, lhik = 0 },
            { t = 0.88, lhik = 0 },
            { t = 0.96, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 4.05
    },      
    
    ["jam2"] = {
        Source = "jam_feed",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.72 },
            { s = randspin, t = 1.16 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.76 },
            { s = slidelockgrab, t = 1.83 },
            { s = slidelockgrab, t = 2.31 },
            { s = randspin, t = 2.87 },
            -- { s =  path .. "generic_jam_shell_ remove_heavy1.ogg", t = 3.06 },
            { s = randspin, t = 3.41 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.75 },
            { s = randspin, t = 4.01 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.23, lhik = 1 },
            { t = 0.35, lhik = 0 },
            { t = 0.87, lhik = 0 },
            { t = 0.98, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        -- EjectAt = 2.52
    },        
    
    ["jam4"] = {
        Source = "jam_softjam",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = randspin, t = 0.72 },
            { s = randspin, t = 1.16 },
            -- { s = slidelockgrab, t = 1.8 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 1.8 },
            { s = randspin, t = 2.01 },
            { s = slidelockgrab, t = 2.57 },
            { s =  path .. "mp7_bolt_na_tebya.ogg", t = 2.72 },
            -- { s =  path .. "generic_jam_shell_ remove_heavy1.ogg", t = 2.85 },
            { s =  path .. "mp7_bolt_ot_tebya.ogg", t = 3.04 },
            { s = randspin, t = 3.29 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.27, lhik = 1 },
            { t = 0.38, lhik = 0 },
            { t = 0.84, lhik = 0 },
            { t = 0.97, lhik = 1 },
            { t = 1, lhik = 1 },
        },
        EjectAt = 2.85
    },

    ["inspect"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle",
    },
    ["inspect_empty"] = { -- TO STUPID ARK NINE SEE WE HAVE INSPECT
        Source = "idle_empty",
    },

    ["inspect1"] = {
        Source = "look",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.23 },
            { s = randspin, t = 2.27 },
            { s = randspin, t = 2.63 },
        },
        IKTimeLine = rik_look
    },
    ["inspect_empty"] = {
        Source = "look_empty",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.23 },
            { s = randspin, t = 2.27 },
            { s = randspin, t = 2.63 },
        },
        IKTimeLine = rik_look
    },
    
    ["inspecta2"] = {
        Source = "looka2",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.23 },
            { s = randspin, t = 2.27 },
            { s = randspin, t = 2.63 },
        },
        IKTimeLine = rik_look
    },
    ["inspecta2_empty"] = {
        Source = "looka2_empty",
        EventTable = {
            { s = randspin, t = 0.25 },
            { s = "arc9_eft_shared/weapon_generic_pistol_spin4.ogg", t = 1.23 },
            { s = randspin, t = 2.27 },
            { s = randspin, t = 2.63 },
        },
        IKTimeLine = rik_look
    },


    ["inspect_mag_0"] = {
        Source = "check_0",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_0"] = {
        Source = "check_0_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_1"] = {
        Source = "check_1",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_1"] = {
        Source = "check_1_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_mag_2"] = {
        Source = "check_2",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },
    ["inspect_empty_mag_2"] = {
        Source = "check_2_empty",
        EventTable = rst_magcheck,
        IKTimeLine = rik_magcheck
    },

    ["inspect0"] = {
        Source = "check_chamber",
        EventTable = {
            { s = randspin, t = 0.1 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.55 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 1.14 },
            { s = randspin, t = 1.35 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.17, lhik = 0 },
            { t = 0.75, lhik = 0 },
            { t = 0.95, lhik = 1 },
            { t = 1, lhik = 1 },
        },
    },
    
    ["trick"] = {
        Source = "trick",
        MinProgress = 0.95,
        FireASAP = true,
        EventTable = {
            { s = randspin, t = 0.15 },
            { s = path .. "mp7_bolt_na_tebya.ogg", t = 0.81 },
            { s = path .. "ak74_round_out.ogg", t = 0.86 },
            { s = path .. "mp7_bolt_ot_tebya.ogg", t = 0.9 },
            { s = randspin, t = 1.19 },
            { s = path .. "ak74_round_catch.ogg", t = 1.35 },
            { s = randspin, t = 1.89 },
            { s = randspin, t = 2.51 },
            { s = randspin, t = 2.72 },
            { s = randspin, t = 3.4 },
            { s = "arc9_eft_shared/weap_round_pullout.ogg", t = 4.02},
            { s = path .. "ak74_round_in_chamber.ogg", t = 4.63 },
            { s = randspin, t = 5.34 },
            { s = path .. "mp7_bolt_release_from_catch.ogg", t = 5.98 },
            { s = randspin, t = 6.38 },
            { s = randspin, t = 6.77 },
        },
        IKTimeLine = {
            { t = 0, lhik = 1 },
            { t = 0.05, lhik = 0 },
            { t = 0.95, lhik = 0 },
            { t = 1, lhik = 1 },
        },
    },

    ["firemode_1"] = {
        Source = "firemode1",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.32 } }
    },
    ["firemode_2"] = {
        Source = "firemode0",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.32 } }
    },
    ["firemode_1_empty"] = {
        Source = "firemode1_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.32 } }
    },
    ["firemode_2_empty"] = {
        Source = "firemode0_empty",
        EventTable = { { s = "arc9_eft_shared/weap_fireselctor.ogg", t = 0.32 } }
    },


}

------------------------- |||           Attachments            ||| -------------------------

SWEP.EFTRequiredAtts = { "HasBufferTube", "HasAmmoooooooo" }

SWEP.AttachmentElements = {
    ["eft_mp7_fh"] = { Bodygroups = { {2, 1} } },
    ["eft_mp7_silencer"] = { Bodygroups = { {3, 1} } },
    ["eft_mp7_silencer"] = { Bodygroups = { {3, 1} } },
    ["eft_mp7_stock_a1"] = { Bodygroups = { {5, 1} } },
    ["eft_mp7_stock_a2"] = { Bodygroups = { {5, 2} } },
    ["eft_mp7_stock_a1unfolded"] = { Bodygroups = { {6, 1} } },
    ["eft_mp7_stock_a2unfolded"] = { Bodygroups = { {6, 3} } },
    ["eft_mp7_stock_a1folded"] = { Bodygroups = { {6, 2} } },
    ["eft_mp7_stock_a2folded"] = { Bodygroups = { {6, 4} } },

    ["eft_mp7a2_blk"] = { Bodygroups = { {1, 2} } },
    -- ["eft_mp7_a2"] = { Bodygroups = { {1, 1} } },
}

SWEP.Attachments = {
    {
        PrintName = "Muzzle",
        Category = "eft_mp7_muzzle",
        Bone = "mod_muzzle",
        Installed = "eft_mp7_fh",
        Pos = Vector(0, 0.1, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Rear Sight",
        Category = {"eft_rearsight"},
        ExcludeElements = {"NoRS"},
        Bone = "mod_sight_rear",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
        Installed = "eft_rearsight_mp7",
    },
    {
        PrintName = "Front Sight",
        Category = {"eft_frontsight"},
        Bone = "mod_sight_front",
        Installed = "eft_frontsight_mp7",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Optic",
        Category = {"eft_optic_medium", "eft_optic_small", "eft_optic_large_nosniper"},
        ExcludeElements = {"IronsBlockingSight"},
        Bone = "mod_scope",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Ammunition",
        Category = "eft_ammo_4630",
        Bone = "mod_sight_rear",
        Integral = true,
        Installed = "eft_ammo_4630_fmjsx",
        Pos = Vector(0, -0, -7),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Magazine",
        Category = "eft_mag_mp7",
        Bone = "mod_magazine",
        Installed = "eft_mp7_mag_40",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Stock",
        Category = "eft_mp7_stock",
        Bone = "mod_stock",
        Installed = "eft_mp7_stock_a1",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
    {
        PrintName = "Foregrip",
        Category = {"eft_foregrip_small"},
        Bone = "weapon",
        RequireElements = {"eft_mp7_a2"},
        Pos = Vector(0, 21.35, -2.05),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },    
    {
        PrintName = "Top Tactical",
        Category = {"eft_tactical_top", "eft_tactical_top_big"},
        Bone = "mod_tactical_000",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "R Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Bone = "mod_tactical_002",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    {
        PrintName = "L Tactical",
        Category = {"eft_tactical", "eft_tactical_top"},
        Bone = "mod_tactical_001",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0.5),
    },
    
    {
        PrintName = "Custom slot",
        Category = {"eft_custom_slot", "eft_custom_slot_mp7"},
        Bone = "mod_sight_rear",
        Pos = Vector(0, -2, -5),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, 0),
    },
}