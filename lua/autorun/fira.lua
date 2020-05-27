if CLIENT then
surface.CreateFont("ScoreboardDefault",{font="FiraCode Nerd Font",size=16})
surface.CreateFont("ScoreboardDefaultTitle",{font="FiraCode Nerd Font",size=30})
surface.CreateFont("GModToolName", {font="FiraCode Nerd Font", size=22, weight=800})
surface.CreateFont("GModToolSubtitle", {font="FiraCode Nerd Font", size=21, weight=700})
surface.CreateFont("GModToolHelp", {font="FiraCode Nerd Font", size=16, weight=600})
surface.CreateFont("GModToolScreen", {font="FiraCode Nerd Font", size=50, weight=700})
surface.CreateFont("ContentHeader", {font="FiraCode Nerd Font", size=50, weight=700})
surface.CreateFont("GModWorldtip", {font="FiraCode Nerd Font", size=20, weight=700})
surface.CreateFont("DermaDefault",{font="FiraCode Nerd Font",size=13})
surface.CreateFont("DermaDefaultBold",{font="FiraCode Nerd Font",size=13,weight=600})
surface.CreateFont("DermaLarge",{font="FiraCode Nerd Font",size=32,weight=600})
surface.CreateFont("GModNotify",{font="FiraCode Nerd Font",size=22,weight=600})
else AddCSLuaFile()resource.AddFile("resource/fonts/fira code regular nerd font complete.ttf")end