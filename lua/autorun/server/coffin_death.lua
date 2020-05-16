hook.Add("PlayerDeathSound", "DeFlatline", function() return true end)
local deathsounds = {}
if file.Exists("sound/coffin/1.wav", "GAME") then
	table.Add(deathsounds, {
		Sound("coffin/1.wav"), Sound("coffin/2.wav"), Sound("coffin/3.wav")
	})
end
if file.Exists("sound/coffin/medieval.wav", "GAME") then
	table.insert(deathsounds, Sound("coffin/medieval.wav"))
end
if file.Exists("sound/coffin/minecraft.wav", "GAME") then
	table.insert(deathsounds, Sound("coffin/minecraft.wav"))
end
hook.Add("PlayerSpawn", "Coffin_dance", function(ply, _)
	ply:StopSound("coffin/1.wav")
	ply:StopSound("coffin/2.wav")
	ply:StopSound("coffin/3.wav")
	ply:StopSound("coffin/medieval.wav")
	ply:StopSound("coffin/minecraft.wav")
end)
hook.Add("PlayerDeath", "Coffin_dance", function(ply, _, _)
	ply:StopSound("coffin/1.wav")
	ply:StopSound("coffin/2.wav")
	ply:StopSound("coffin/3.wav")
	ply:StopSound("coffin/medieval.wav")
	ply:StopSound("coffin/minecraft.wav")
	ply:EmitSound(deathsounds[math.random(#deathsounds)])
end)
