hook.Add("PlayerDeathSound", "DeFlatline", function() return true end)
local deathsounds = {}
if file.Exists("coffin/1.wav", "GAME") then
    table.add(deathsounds, {Sound("coffin_death/1.wav"), Sound("coffin_death/2.wav"), Sound("coffin_death/3.wav")})
end
if file.Exists("coffin/medieval.wav", "GAME") then
    table.insert(deathsounds, Sound("coffin_death/medieval.wav"))
end
if file.Exists("coffin/minecraft.wav", "GAME") then
    table.insert(deathsounds, Sound("coffin_death/minecraft.wav"))
end
--local deads = {}
hook.Add("PlayerSpawn", "Coffin_dance", function(ply, _)
    --for _, ply1 in pairs(deads) do
    --    if table.HasValue(deads, ply) then
            ply:StopSound("coffin/1.wav")
            ply:StopSound("coffin/2.wav")
            ply:StopSound("coffin/3.wav")
            ply:StopSound("coffin/medieval.wav")
            ply:StopSound("coffin/minecraft.wav")
            --table.RemoveByValue(deads, ply)
    --    end
    --end
end)
hook.Add("PlayerDeath", "Coffin_dance", function(ply, _, _)
    --for _, ply in pairs(deads) do
    --    if ply == v then
            ply:StopSound("coffin/1.wav")
            ply:StopSound("coffin/2.wav")
            ply:StopSound("coffin/3.wav")
            ply:StopSound("coffin/medieval.wav")
            ply:StopSound("coffin/minecraft.wav")
    --        table.RemoveByValue(deads, v)
    --    end
    --end
    v:EmitSound(deathsounds[math.random(#deathsounds)])
    --table.insert(deads, v)
end)
