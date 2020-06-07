Metrostroi.DefineSystem("Arcade_Systems")
TRAIN_SYSTEM.DontAccelerateSimulation = true

function TRAIN_SYSTEM:Initialize()
	print("initl")
	self.Drive = 0
	self.Brake = 0
	self.Reverse = 0
	self.Force = 200000
	self.Horn = 0
	self.Turbo = 0
end

function TRAIN_SYSTEM:Inputs()
	return {
		"Drive",
		"Brake",
		"Reverse",
		"Horn",
		"Turbo"
	}
end

function TRAIN_SYSTEM:TriggerInput(name, value)
	if self[name] then self[name] = value end
end

function TRAIN_SYSTEM:Think()
	--[[if self.Horn > 0.5 then
		--self.Train:PlayOnce("horn", "bass", 1);
		print("sv horn")
		self.Train:SetSoundState("horn", 1, 1)
	end]]
	self.Train.FrontBogey.MotorForce = self.Force
	self.Train.FrontBogey.MotorPower = self.Drive - self.Brake
	self.Train.FrontBogey.Reversed = (self.Reverse > 0.5)
	self.Train.RearBogey.MotorForce  = self.Force
	self.Train.RearBogey.MotorPower = self.Drive - self.Brake
	self.Train.RearBogey.Reversed = not (self.Reverse > 0.5)
	if self.Turbo and self.Turbo > 0.5 then -- турбо, уиииии
		self.Train.FrontBogey.MotorForce = self.Train.FrontBogey.MotorForce*2--тли
		self.Train.RearBogey.MotorForce = self.Train.RearBogey.MotorForce*2
	end
end
function TRAIN_SYSTEM:ClientThink(dT)
	if self.Horn > 0.5 then
		print("cl horn")
		self.Train:SetSoundState("horn", 1, 1)
	end
end