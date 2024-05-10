
--copy of mp9 but diff stats

AddCSLuaFile()

SWEP.Base = "arc9_eft_mp9"
SWEP.Spawnable = true
SWEP.Category = "ARC9 - Escape From Tarkov"

SWEP.PrintName = "B&T MP9-N"
SWEP.DefaultBodygroups = "01000000000000"

SWEP.RPM = 1100
SWEP.Firemodes = {
    { Mode = -1, PoseParam = 3},
    { Mode = 1, PoseParam = 1 }
}


SWEP.Description = [[MP9-N is the further modification of the MP9 submachine gun, which was refined and optimized in cooperation with special units from police and military. MP9-N is currently in service with close protection teams as well as with SWAT teams worldwide. It is also a perfect choice as a Personal Defense Weapon (PDW).]]

SWEP.DefaultElements = {"eft_mp9n"} -- owo

SWEP.Attachments = {_, { Installed = "eft_mp9_rec_n" }, _, _, _, _, { PrintName = "Foregrip", Category = "eft_mp9_bottom_n", Installed = "eft_mp9_fg" } } -- hack