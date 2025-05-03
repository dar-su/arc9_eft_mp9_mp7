
--copy of mp9 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_mp9"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = ARC9:GetPhrase("eft_weapon_mp9n")
SWEP.DefaultBodygroups = "01000000000000"

SWEP.RPM = 1100
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 3},
    { Mode = 1, RPM = 450, PoseParam = 1 }
}


SWEP.Description = "eft_weapon_mp9n_desc"

SWEP.DefaultElements = {"eft_mp9n"} -- owo

SWEP.Attachments = {_, { Installed = "eft_mp9_rec_n" }, _, _, _, _, { PrintName = "Foregrip", Category = "eft_mp9_bottom_n", Installed = "eft_mp9_fg" } } -- hack