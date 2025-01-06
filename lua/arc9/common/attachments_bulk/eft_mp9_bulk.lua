local ATT = {}


///////////////////////////////////////      eft_mp9_silmount


ATT = {}

ATT.PrintName = "MP9 9x19 sound suppressor mount"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/sm.png", "mips smooth")
ATT.Description = [[A mount for sound suppressor installation directly onto the barrel of the MP9 9x19 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_muzzle"}

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }

ATT.Attachments = {
    {
        PrintName = "Silencer",
        Category = "eft_mp9_silen",
        Pos = Vector(-2, 0, 0),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(-2, 0, 1.33),
        Ang = Angle(0, 0, 180),
        Icon_Offset = Vector(0, 0, 1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_silmount")


///////////////////////////////////////      eft_mp9_silencer


ATT = {}

ATT.PrintName = "MP9 9x19 sound suppressor"
ATT.CompactName = "MP9 sup."
ATT.Icon = Material("entities/eft_mp9_attachments/s.png", "mips smooth")
ATT.Description = [[A sound suppressor for the MP9 9x19 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = -16
ATT.CustomCons = { Ergonomics = "-16" }
ATT.RecoilMult = 0.94
ATT.VisualRecoilMult = 0.94
ATT.HeatCapacityMult = 0.87

ATT.Silencer = true 
ATT.BarrelLengthAdd = 5

ATT.MuzzleParticle = "muzzleflash_suppressed"
ATT.MuzzleEffectQCA = 5
ATT.NoFlash = true

ATT.Category = {"eft_mp9_silen"}

ARC9.LoadAttachment(ATT, "eft_mp9_silencer")

///////////////////////////////////////      eft_mp9_stockk


ATT = {}

ATT.PrintName = "MP9 stock"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/st.png", "mips smooth")
ATT.Description = [[A standard-issue foldable stock for the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 3
ATT.CustomPros = { Ergonomics = "+3", ["Recoil while extended"] = "-13%" }

ATT.Category = {"eft_mp9_stock"}

ATT.ToggleStats = {
    {
        PrintName = "Unfolded",
        RecoilMult = 0.87,
        VisualRecoilMult = 0.87,
        ActivateElements = {"eft_mp9_stock_unfolded"},
        HasStock = true
    },
    {
        PrintName = "Folded",
        CustomizePos = Vector(18, 25, 6),
        CustomizeRotateAnchor = Vector(18, -4.28, -5.23),
        ActivateElements = {"eft_mp9_stock_folded"}
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_stockk")


///////////////////////////////////////      eft_mp9_siderail


ATT = {}

ATT.PrintName = "MP9 side rail"
ATT.CompactName = "MP9 side"
ATT.Icon = Material("entities/eft_mp9_attachments/side.png", "mips smooth")
ATT.Description = [[A short side rail that allows installation of additional equipment on the side of the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_side"}

ATT.Attachments = {
    {
        PrintName = "Tactical",
        Category = {"eft_tactical"},
        Pos = Vector(0, 0.09, 0.15),
        Ang = Angle(0, 0, 90),
        Icon_Offset = Vector(0, 0, 1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_siderail")

///////////////////////////////////////      eft_mp9_bottomrail


ATT = {}

ATT.PrintName = "MP9 bottom rail"
ATT.CompactName = "MP9 bottom"
ATT.Icon = Material("entities/eft_mp9_attachments/b.png", "mips smooth")
ATT.Description = [[A bottom rail that allows installation of additional equipment on the MP9 SMG. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_bottom"}

ATT.Attachments = {
    {
        PrintName = "Grip",
        Category = {"eft_foregrip_small"},
        RejectAttachments = { 
            ["eft_foregrip_cobra"] = true,
            ["eft_foregrip_se5"] = true,
            ["eft_foregrip_se5_fde"] = true,
            ["eft_foregrip_afg"] = true,
            ["eft_foregrip_afg_fde"] = true,
            ["eft_foregrip_afg_fg"] = true,
            ["eft_foregrip_afg_od"] = true,
            ["eft_foregrip_rk6"] = true,
         },
        Pos = Vector(0, 0, -0.12),
        Ang = Angle(0, -90, 0),
        Icon_Offset = Vector(0, 0, -1),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_bottomrail")

///////////////////////////////////////      eft_mp9_fg


ATT = {}

ATT.PrintName = "MP9-N vertical foregrip"
ATT.CompactName = "MP9 grip"
ATT.Icon = Material("entities/eft_mp9_attachments/g.png", "mips smooth")
ATT.Description = [[A standard-issue detachable vertical foregrip for the MP9-N submachine gun. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.EFTErgoAdd = 6
ATT.CustomPros = { Ergonomics = "+6" }

ATT.Category = {"eft_mp9_bottom_n"}

ATT.Model = "models/weapons/arc9/darsu_eft/mods/foregrip_mp9_lhik.mdl"
ATT.LHIK = true 

ARC9.LoadAttachment(ATT, "eft_mp9_fg")

///////////////////////////////////////      eft_mp9_rec_std


ATT = {}

ATT.PrintName = "MP9 9x19 upper receiver"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/r.png", "mips smooth")
ATT.Description = [[An upper receiver for the MP9 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasReceiver = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_mp9_rec"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0.5, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_mp9_rearsight",
        Pos = Vector(3.2, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Side Rail",
        Category = "eft_mp9_side",
        Pos = Vector(-3, 1, 0.1),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_rec_std")

///////////////////////////////////////      eft_mp9_rec_n


ATT = {}

ATT.PrintName = "MP9-N 9x19 upper receiver"
ATT.CompactName = "MP9-N"
ATT.Icon = Material("entities/eft_mp9_attachments/rn.png", "mips smooth")
ATT.Description = [[An upper receiver for the MP9-N SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasReceiver = true 

ATT.EFTErgoAdd = 5
ATT.CustomPros = { Ergonomics = "+5" }

ATT.Category = {"eft_mp9_rec"}

ATT.Attachments = {
    {
        PrintName = "Optic",
        Category = {"eft_optic_large", "eft_optic_medium", "eft_optic_small"},
        Pos = Vector(0.5, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Rear sight",
        Category = "eft_mp9_rearsight",
        Pos = Vector(3.2, 0, -0.37),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "Side Rail",
        Category = "eft_mp9_side",
        Pos = Vector(-3, 1, 0.1),
        Ang = Angle(0, 0, 0),
    },
}

ARC9.LoadAttachment(ATT, "eft_mp9_rec_n")

///////////////////////////////////////      eft_mp9_charge


ATT = {}

ATT.PrintName = "MP9 charging handle"
ATT.CompactName = "MP9"
ATT.Icon = Material("entities/eft_mp9_attachments/c.png", "mips smooth")
ATT.Description = [[A standard-issue charging handle for MP9 and compatible systems. Manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.HasBolt = true

ATT.Category = {"eft_mp9_handle"}

ARC9.LoadAttachment(ATT, "eft_mp9_charge")

///////////////////////////////////////      eft_mp9_rs


ATT = {}

ATT.PrintName = "MP9 rear sight"
ATT.CompactName = "MP9 RS"
ATT.Icon = Material("entities/eft_mp9_attachments/rs.png", "mips smooth")
ATT.Description = [[A regular rear sight for the MP9 SMG, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Category = {"eft_mp9_rearsight"}

ARC9.LoadAttachment(ATT, "eft_mp9_rs")

///////////////////////////////////////      eft_mp9_mag_15


ATT = {}

ATT.PrintName = "MP9 9x19 15-round magazine"
ATT.CompactName = "MP9 15"
ATT.Icon = Material("entities/eft_mp9_attachments/15.png", "mips smooth")
ATT.Description = [[A standard 15-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_15.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_15.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 15

ATT.EFTErgoAdd = 4
ATT.CustomPros = { Ergonomics = "+4" }
ATT.MalfunctionMeanShotsToFailMult = 0.99

ATT.Category = {"eft_mag_mp9"}

ARC9.LoadAttachment(ATT, "eft_mp9_mag_15")


///////////////////////////////////////      eft_mp9_mag_20


ATT = {}

ATT.PrintName = "MP9 9x19 20-round magazine"
ATT.CompactName = "MP9 20"
ATT.Icon = Material("entities/eft_mp9_attachments/20.png", "mips smooth")
ATT.Description = [[A standard 20-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_20.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_20.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 20

ATT.EFTErgoAdd = 2
ATT.CustomPros = { Ergonomics = "+2" }
ATT.MalfunctionMeanShotsToFailMult = 0.98

ATT.Category = {"eft_mag_mp9"}

ARC9.LoadAttachment(ATT, "eft_mp9_mag_20")

///////////////////////////////////////      eft_mp9_mag_25


ATT = {}

ATT.PrintName = "MP9 9x19 25-round magazine"
ATT.CompactName = "MP9 25"
ATT.Icon = Material("entities/eft_mp9_attachments/25.png", "mips smooth")
ATT.Description = [[A standard 25-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_25.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_25.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 25

ATT.EFTErgoAdd = 1
ATT.CustomPros = { Ergonomics = "+1" }
ATT.MalfunctionMeanShotsToFailMult = 0.97

ATT.Category = {"eft_mag_mp9"}

ARC9.LoadAttachment(ATT, "eft_mp9_mag_25")
///////////////////////////////////////      eft_mp9_mag_30


ATT = {}

ATT.PrintName = "MP9 9x19 30-round magazine"
ATT.CompactName = "MP9 30"
ATT.Icon = Material("entities/eft_mp9_attachments/30.png", "mips smooth")
ATT.Description = [[A standard 30-round capacity polymer magazine for MP9-based SMGs, manufactured by Brügger & Thomet.]]
ATT.SortOrder = 0
ATT.MenuCategory = "ARC9 - EFT Attachments"

ATT.Model = "models/weapons/arc9/darsu_eft/mods/mag_mp9_30.mdl"
ATT.DropMagazineModel = "models/weapons/arc9/darsu_eft/mods/mag_mp9_30.mdl"

ATT.SuppressEmptySuffix = false 
ATT.ChamberSize = 1
ATT.ClipSize = 30

ATT.EFTErgoAdd = -1
ATT.CustomCons = { Ergonomics = "-1" }
ATT.MalfunctionMeanShotsToFailMult = 0.96

ATT.Category = {"eft_mag_mp9"}

ARC9.LoadAttachment(ATT, "eft_mp9_mag_30")
