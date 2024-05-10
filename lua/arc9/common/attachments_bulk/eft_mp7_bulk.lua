local ATT = {}


///////////////////////////////////////      eft_mp7_fh


ATT = {}

ATT.PrintName = "HK MP7A1 4.6x30 flash hider"
ATT.CompactName = "MP7A1"
ATT.Icon = Material("entities/eft_mp7_attachments/mz.png", "mips smooth")
ATT.Description = [[A flash hider designed for installation on the MP7 SMGs chambered in 4.6x30mm, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp7_muzzle"}

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.RecoilMult = 0.95
ATT.VisualRecoilMult = 0.95
ATT.SpreadMult = 0.97
ATT.PhysBulletMuzzleVelocityMult = 1.005
-- ATT.HeatCapacityMult = 0.989

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_mp7_silen",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp7_fh")


///////////////////////////////////////      eft_mp7_silencer


ATT = {}

ATT.PrintName = "HK MP7 B&T Rotex 2 4.6x30 sound suppressor"
ATT.CompactName = "Rotex 2"
ATT.Icon = Material("entities/eft_mp7_attachments/sil.png", "mips smooth")
ATT.Description = [[Rotex 2 is a 4.6x30mm sound suppressor manufactured by Brügger & Thomet. Installed on the HK MP7 submachine guns.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -20
ATT.CustomCons = { Ergonomics = "-20" }
ATT.RecoilMult = 0.9
ATT.VisualRecoilMult = 0.9
ATT.PhysBulletMuzzleVelocityMult = 1.005
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_mp7_silen"}

ARC9.LoadAttachment(ATT, "eft_mp7_silencer")

///////////////////////////////////////      eft_mp7_stock_a1


ATT = {}

ATT.PrintName = "HK MP7A1 stock"
ATT.CompactName = "A1"
ATT.Icon = Material("entities/eft_mp7_attachments/sta1.png", "mips smooth")
ATT.Description = [[A standard-issue retractable stock for the MP7A1 submachine gun. Manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasStock = true

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3", ["Recoil while extended"] = "-17%" }

ATT.Category = {"eft_mp7_stock"}

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.83,
        VisualRecoilMult = 0.83,
        ActivateElements = {"eft_mp7_stock_a1unfolded"}
    },
    {
        PrintName = "Folded",
        CustomizePos = Vector(18, 24, 6),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp7_stock_a1folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_mp7_stock_a1")


///////////////////////////////////////      eft_mp7_stock_a2


ATT = {}

ATT.PrintName = "HK MP7A2 stock"
ATT.CompactName = "A2"
ATT.Icon = Material("entities/eft_mp7_attachments/sta2.png", "mips smooth")
ATT.Description = [[A standard-issue retractable stock for the MP7A2 submachine gun. Manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasStock = true
ATT.Category = {"eft_mp7_stock"}

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3", ["Recoil while extended"] = "-17%" }

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.83,
        VisualRecoilMult = 0.83,
        ActivateElements = {"eft_mp7_stock_a2unfolded"}
    },
    {
        PrintName = "Folded",
        CustomizePos = Vector(18, 24, 6),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp7_stock_a2folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_mp7_stock_a2")


///////////////////////////////////////      eft_mp7_mag_20


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 20-round magazine"
ATT.CompactName = "MP7 20"
ATT.Icon = Material("entities/eft_mp7_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Category = {"eft_mag_mp7"}

ARC9.LoadAttachment(ATT, "eft_mp7_mag_20")


///////////////////////////////////////      eft_mp7_mag_30


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 30-round magazine"
ATT.CompactName = "MP7 30"
ATT.Icon = Material("entities/eft_mp7_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.Category = {"eft_mag_mp7"}

ARC9.LoadAttachment(ATT, "eft_mp7_mag_30")

///////////////////////////////////////      eft_mp7_mag_40


ATT = {}

ATT.PrintName = "HK MP7 4.6x30 40-round magazine"
ATT.CompactName = "MP7 40"
ATT.Icon = Material("entities/eft_mp7_attachments/40.png", "mips smooth")
ATT.Description = [[A standard 30-round 4.6x30 magazine for the MP7 SMGs, manufactured by Heckler & Koch.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_40.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp7_hk_std_46x30_40.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 40

ATT.EFTErgoAdd = -4
ATT.CustomCons = { Ergonomics = "-4" }
ATT.MalfunctionMeanShotsToFailMult = 0.95

ATT.Category = {"eft_mag_mp7"}

ARC9.LoadAttachment(ATT, "eft_mp7_mag_40")



local dmgrange = (GetConVar("arc9_eft_mindmgrange"):GetInt() or 1000)/1000
local mult9 = GetConVar("arc9_eft_mult_pistol"):GetFloat() or 0.5


///////////////////////////////////////      eft_ammo_4630_actionsx


ATT = {}

ATT.PrintName = "4.6x30mm Action SX"
ATT.CompactName = "Action SX"
ATT.Icon = Material("entities/eft_mp7_attachments/ac.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK Action SX cartridge with a 2 gram hollow-point bullet made entirely of brass, in a brass case. This cartridge is designed to effectively incapacitate an aggressor during close-quarters operations thanks to its considerable stopping power effect, in addition to preventing over-piercing, however, due to its design, it has a significant bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "4.6x30mm Action SX"

ATT.DamageMax = 65 * mult9
ATT.DamageMin = 40.77 * mult9
ATT.PhysBulletMuzzleVelocity = 690 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
-- ATT.RecoilMult = 1.1
-- ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      18 *2.54/100/0.0254
ATT.PenetrationDelta = 39/100
ATT.ArmorPiercing =    39/100
ATT.RicochetChance =   30/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    65 * mult9     },

    {   100 /0.0254 * dmgrange, 
    57 * mult9     },

    {   200 /0.0254 * dmgrange, 
    50.3 * mult9     },

    {   300 /0.0254 * dmgrange, 
    47.55 * mult9     },

    {   400 /0.0254 * dmgrange, 
    46 * mult9     },

    {   500 /0.0254 * dmgrange, 
    44.7 * mult9     },

    {   600 /0.0254 * dmgrange, 
    43.72 * mult9     },

    {   700 /0.0254 * dmgrange, 
    42.9 * mult9     },

    {   800 /0.0254 * dmgrange, 
    42.1 * mult9     },

    {   900 /0.0254 * dmgrange, 
    41.1 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    40.77 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 57.02	50.3	47.54	45.93	44.71	43.72	42.86	42.1	41.41	40.77


ATT.Category = {"eft_ammo_4630"}


ARC9.LoadAttachment(ATT, "eft_ammo_4630_actionsx")


///////////////////////////////////////      eft_ammo_4630_subsonicsx

ATT = {}

ATT.PrintName = "4.6x30mm Subsonic SX"
ATT.CompactName = "Subsonic SX"
ATT.Icon = Material("entities/eft_mp7_attachments/subs.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK Subsonic SX cartridge with a 5 gram copper-plated tungsten alloy core subsonic bullet in a brass case with a reduced charge. The powder load in this subsonic cartridge is adjusted to operate with the MP7 family of submachine guns, ensuring the weapon's fire cycling and achieving excellent noise reduction when used in conjunction with a suppressor. Despite its low muzzle velocity, the bullet has ballistic capabilities to pierce basic ballistic body protections and provides excellent results against intermediate protection models, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "4.6x30mm Subsonic SX"

ATT.DamageMax = 45 * mult9
ATT.DamageMin = 38.64 * mult9
ATT.PhysBulletMuzzleVelocity = 290 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
ATT.SpreadMult = 0.9
ATT.RecoilMult = 0.78
ATT.VisualRecoilMult = 0.78
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      36 *2.54/100/0.0254
ATT.PenetrationDelta = 46/100
ATT.ArmorPiercing =    46/100
ATT.RicochetChance =   50/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    45 * mult9     },

    {   100 /0.0254 * dmgrange, 
    44.1 * mult9     },

    {   200 /0.0254 * dmgrange, 
    43.3 * mult9     },

    {   300 /0.0254 * dmgrange, 
    42.56 * mult9     },

    {   400 /0.0254 * dmgrange, 
    41.9 * mult9     },

    {   500 /0.0254 * dmgrange, 
    41.26 * mult9     },

    {   600 /0.0254 * dmgrange, 
    40.66 * mult9     },

    {   700 /0.0254 * dmgrange, 
    40.1 * mult9     },

    {   800 /0.0254 * dmgrange, 
    39.6 * mult9     },

    {   900 /0.0254 * dmgrange, 
    39.1 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    38.64 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 44.09	43.3	42.56	41.88	41.26	40.66	40.11	39.59	39.1	38.64


ATT.Category = {"eft_ammo_4630"}

ARC9.LoadAttachment(ATT, "eft_ammo_4630_subsonicsx")

///////////////////////////////////////      eft_ammo_4630_jsp

ATT = {}

ATT.PrintName = "4.6x30mm JSP SX"
ATT.CompactName = "JSP SX"
ATT.Icon = Material("entities/eft_mp7_attachments/subs.png", "mips smooth")
ATT.Description = [[Fibonacci 40gr. Jacketed Soft Point Ammo for the 4.6x30 HK caliber. This round is designed along the same lines as the 5.7x28 round. The jacketed soft point makes this a viable varmint and small game round. Usable in the H&K MP7. This ammo is brass cased, boxer primed, and non-corrosive.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "4.6x30mm JSP SX"

ATT.DamageMax = 46 * mult9
ATT.DamageMin = 38.64 * mult9
ATT.PhysBulletMuzzleVelocity = 579 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
-- ATT.RecoilMult = 0.78
-- ATT.VisualRecoilMult = 0.78
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      32 *2.54/100/0.0254
ATT.PenetrationDelta = 37/100
ATT.ArmorPiercing =    37/100
ATT.RicochetChance =   30/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    46 * mult9     },

    {   100 /0.0254 * dmgrange, 
    44.1 * mult9     },

    {   200 /0.0254 * dmgrange, 
    43.3 * mult9     },

    {   300 /0.0254 * dmgrange, 
    42.56 * mult9     },

    {   400 /0.0254 * dmgrange, 
    41.9 * mult9     },

    {   500 /0.0254 * dmgrange, 
    41.26 * mult9     },

    {   600 /0.0254 * dmgrange, 
    40.66 * mult9     },

    {   700 /0.0254 * dmgrange, 
    40.1 * mult9     },

    {   800 /0.0254 * dmgrange, 
    39.6 * mult9     },

    {   900 /0.0254 * dmgrange, 
    39.1 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    38.64 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 44.09	43.3	42.56	41.88	41.26	40.66	40.11	39.59	39.1	38.64


ATT.Category = {"eft_ammo_4630"}

ARC9.LoadAttachment(ATT, "eft_ammo_4630_jsp")

///////////////////////////////////////      eft_ammo_4630_fmjsx

ATT = {}

ATT.PrintName = "4.6x30mm FMJ SX"
ATT.CompactName = "FMJ SX"
ATT.Icon = Material("entities/eft_mp7_attachments/fmj.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK FMJ SX cartridge with a 2.6 gram lead-antimony alloy core bullet with a brass full metal jacket (FMJ) in a brass case. This cartridge was developed for general military use, but the ballistic capabilities of its bullet allow it to pierce basic and intermediate ballistic body protections, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "4.6x30mm FMJ SX"

ATT.DamageMax = 43 * mult9
ATT.DamageMin = 28.54 * mult9
ATT.PhysBulletMuzzleVelocity = 620 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
-- ATT.RecoilMult = 1.1
-- ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      40 *2.54/100/0.0254
ATT.PenetrationDelta = 41/100
ATT.ArmorPiercing =    41/100
ATT.RicochetChance =   40/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    43 * mult9     },

    {   100 /0.0254 * dmgrange, 
    38.25 * mult9     },

    {   200 /0.0254 * dmgrange, 
    34.75 * mult9     },

    {   300 /0.0254 * dmgrange, 
    33 * mult9     },

    {   400 /0.0254 * dmgrange, 
    32 * mult9     },

    {   500 /0.0254 * dmgrange, 
    31.15 * mult9     },

    {   600 /0.0254 * dmgrange, 
    30.5 * mult9     },

    {   700 /0.0254 * dmgrange, 
    29.9 * mult9     },

    {   800 /0.0254 * dmgrange, 
    29.4 * mult9     },

    {   900 /0.0254 * dmgrange, 
    29 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    28.54 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 38.25	34.75	33.03	31.94	31.15	30.48	29.91	29.41	28.95	28.54


ATT.Category = {"eft_ammo_4630"}


ARC9.LoadAttachment(ATT, "eft_ammo_4630_fmjsx")


///////////////////////////////////////      eft_ammo_4630_apsx

ATT = {}

ATT.PrintName = "4.6x30mm AP SX"
ATT.CompactName = "AP SX"
ATT.Icon = Material("entities/eft_mp7_attachments/ap.png", "mips smooth")
ATT.Description = [[A 4.6x30mm HK AP SX cartridge with a 2 gram copper-plated steel core armor-piercing bullet in a brass case. The AP SX cartridge provides the highest penetration capability of the 4.6x30mm caliber, allowing the shooter to pierce basic and intermediate ballistic body protections in addition to providing outstanding results against some specialized protection models, however, due to its design, it has a high bounce probability off various surfaces.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasAmmoooooooo = true 

ATT.EFTRoundName = "4.6x30mm FMJ SX"

ATT.DamageMax = 35 * mult9
ATT.DamageMin = 21.22 * mult9
ATT.PhysBulletMuzzleVelocity = 680 /0.0254
-- ATT.TracerNum = 1
-- ATT.TracerColor = Color(255, 16, 16)
-- ATT.SpreadMult = 0.9
ATT.RecoilMult = 1.1
ATT.VisualRecoilMult = 1.1
-- ATT.HeatPerShotMult = 1

ATT.RangeMin = 10
ATT.RangeMax = 1000 /0.0254 * dmgrange

ATT.Penetration =      53 *2.54/100/0.0254
ATT.PenetrationDelta = 46/100
ATT.ArmorPiercing =    46/100
ATT.RicochetChance =   60/100

ATT.DamageLookupTable = {
    {   10/0.0254 * dmgrange, 
    35 * mult9     },

    {   100 /0.0254 * dmgrange, 
    29.47 * mult9     },

    {   200 /0.0254 * dmgrange, 
    26.23 * mult9     },

    {   300 /0.0254 * dmgrange, 
    25 * mult9     },

    {   400 /0.0254 * dmgrange, 
    24.14 * mult9     },

    {   500 /0.0254 * dmgrange, 
    23.5 * mult9     },

    {   600 /0.0254 * dmgrange, 
    23 * mult9     },

    {   700 /0.0254 * dmgrange, 
    22.42 * mult9     },

    {   800 /0.0254 * dmgrange, 
    22 * mult9     },

    {   900 /0.0254 * dmgrange, 
    21.58 * mult9     },

    {   1000 /0.0254 * dmgrange, 
    21.22 * mult9     },
}

-- 100m     200m    300m    400m    500m    600m    700m    800m    900m    1000m
-- 29.47	26.23	24.96	24.14	23.47	22.91	22.42	21.98	21.58	21.22


ATT.Category = {"eft_ammo_4630"}


ARC9.LoadAttachment(ATT, "eft_ammo_4630_apsx")