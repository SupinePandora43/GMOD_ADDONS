hook.Add("PlayerDeathSound", "DeFlatline", function() return true end)
local deathsounds = {
    Sound("coffin_death/1.wav"), Sound("coffin_death/2.wav"),
    Sound("coffin_death/3.wav")
}
local deads = {}
hook.Add("PlayerSpawn", "Coffin_dance", function(ply, _)
    for _, ply1 in pairs(deads) do
        if ply1 == ply then
            ply:StopSound("coffin_death/1.wav")
            ply:StopSound("coffin_death/2.wav")
            ply:StopSound("coffin_death/3.wav")
            table.RemoveByValue(deads, ply)
        end
    end
end)
hook.Add("PlayerDeath", "Coffin_dance", function(v, _, _)
    for _, ply in pairs(deads) do
        if ply == v then
            ply:StopSound("coffin_death/1.wav")
            ply:StopSound("coffin_death/2.wav")
            ply:StopSound("coffin_death/3.wav")
            table.RemoveByValue(deads, v)
        end
    end
    v:EmitSound(deathsounds[math.random(3)])
    table.insert(deads, v)
end)
