
--copy of mp9 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_mp7a1"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = "HK MP7A2"
SWEP.DefaultBodygroups = "01000000000000"

SWEP.Description = [[MP7A2 is a further modification of the MP7A1 SMG. The key feature of this submachine gun is the replacement of the standard folding foregrip for a Picatinny rail, allowing mounting of various vertical foregrips. Manufactured by Heckler & Koch.]]

SWEP.DefaultElements = {"eft_mp7_a2"} -- owo

SWEP.Attachments = {_, _, _, _, _, { Installed = "eft_mp7_mag_20" }, { Installed = "eft_mp7_stock_a2" } } -- hack

SWEP.AttachmentTableOverrides = { -- what a fucking hell
    ["eft_mp7_stock_a1"] = {
        Model = "models/weapons/arc9/darsu_eft/mods/lhik_nohg.mdl",
        LHIK = true,
        LHIK_Priority = 0,
        ModelAngleOffset = Angle(0, 90, 0),
        ModelOffset = Vector(0.2, 9, -0.8),
    },
    ["eft_mp7_stock_a2"] = {
        Model = "models/weapons/arc9/darsu_eft/mods/lhik_nohg.mdl",
        LHIK = true,
        LHIK_Priority = 0,
        ModelAngleOffset = Angle(0, 90, 0),
        ModelOffset = Vector(0.2, 9, -0.8),
    },
}