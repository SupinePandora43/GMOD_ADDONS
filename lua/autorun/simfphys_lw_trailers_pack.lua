AddCSLuaFile()
--Trailer Transporter
local light_table = {
	ModernLights = true,

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
    R_RearLampAng = Angle(0,0,0), -- угол поворота фар
    FogLight_sprites = {
        {pos = Vector( -48, 294.62, 142.06 -0.4 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, 182.81, 137.15 -0.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, 75.34, 132.21),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, -31.94, 128.03 -0.1 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, -138.79, 123.96 -0.2 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, -260.47, 118.93 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( -47, -38.54 -0.6, 32 -0.25 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -47, -128.94, 31.6 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -45, -218.2, 26.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},


        {pos = Vector( 48, 294.62, 142.06 -0.4 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, 182.81, 137.15 -0.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, 75.34, 132.21),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, -31.94, 128.03 -0.1 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, -138.79, 123.96 -0.2 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, -260.47, 118.93 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector(47, -38.54 -0.6, 32 -0.25 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector(47, -128.94, 31.6 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector(45, -218.2, 26.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары
        Vector( -36, -277.6, 26.5 ),
        Vector( 36,  -277.6, 26.5 ),

        {pos = Vector( -43, -272.5, 34 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( -43, -272.5, 37 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( -43, -272.5, 40 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( -43, -272.5, 43 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( -43, -272.5, 46 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( -43, -272.5, 49 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},

        {pos = Vector( 43, -272.5, 34 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( 43, -272.5, 37 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( 43, -272.5, 40 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( 43, -272.5, 43 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( 43, -272.5, 46 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
        {pos = Vector( 43, -272.5, 49 -1 ),size = 15,color=Color(255,120,0,100),material="sprites/light_ignorez"},
	},
	ems_sprites = { -- тормозные огни
        {pos = Vector( -42.38,-273 -4, 26.71 ),size = 25,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( 42.38, -273 -4, 26.71 ),size = 25,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
	},
	Turnsignal_sprites = { -- поворотники
		Left = { -- левый
            {pos = Vector( -49,-275, 27 + 8.5 ),size = 7,color=Color(255,120,0,255)},
		},
		Right = { -- правый
            {pos = Vector( 49,-275, 27 + 8.5 ),size = 7,color=Color(255,120,0,255)},
		},
	
	},
}
list.Set( "simfphys_lights", "lw_transporter_trailer", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Transporter Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_transporter.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 1150, -- масса авто

		OnSpawn = function(ent)
			ent:Lock()
			if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
				ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
				ent:SetCenterposition(Vector(0,250,35)) -- position of center ballsocket for trailer hook 33
				ent:SetTrailerCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        	
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
		OnTick = function(ent) 
			local phys = ent:GetPhysicsObject()
            local physMass = 1150
	        if ent:GetBodygroup(1) == 1 then
                physMass =physMass+700
            end
            if ent:GetBodygroup(2) == 1 then
                physMass=physMass+700
            end
            phys:SetMass(physMass)
            if ent:SimfIsTrailer() ~= nil then 
	        	 -- locks trailer
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
			end
        end,

        LightsTable = "lw_transporter_trailer", -- название light_table

        --[[CustomWheels = true,
        CustomSuspensionTravel = 1,

        CustomWheelModel = "models/props_phx/wheels/trucktire2.mdl",
        CustomWheelPosFL = Vector(-81.4,-44.8,-17.3),
        CustomWheelPosFR = Vector(-81.4,44.8,-17.3),
        CustomWheelPosRL = Vector(67.7,-44.8,-17.3),
        CustomWheelPosRR = Vector(67.7,44.8,-17.3),
        CustomWheelAngleOffset = Angle(0,90,0),]]




        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_transporter.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_lw_transporter_trailer", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end
--Schmied Bigcargo
local light_table = {
	ModernLights = true,

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( 50, 134.2, 51.09 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector(-50, 134.2, 51.09 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak

        {pos = Vector( 22.5, 82, 50.18 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -22.5, 82, 50.18 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( 30, -41.5, 50.15 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -30, -41.5, 50.15 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары Vector( -40, -144.29, 42.65 )
        {pos = Vector( -40, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( -43.5, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( -47, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( -36, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( -32, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},

        {pos = Vector( 40, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( 43.5, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( 47, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( 36, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},
        {pos = Vector( 32, -143, 42.65 ), size = 30, color = Color(255,0,0,100),},


        {pos = Vector( -40.32, -144, 37.25 ),size = 50,color = Color(255,0,0,100),},
        {pos = Vector( 40.32, -144, 37.25 ),size = 50,color = Color(255,0,0,100),},
	},
	ems_sprites = { -- тормозные огни
        {pos = Vector( -40.32, -144, 37.25 ),size = 50,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( 40.32, -144, 37.25 ),size = 50,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector( -32.82, -144, 39 ),size = 15},
        {pos = Vector( -32.82, -144, 37.06 ),size = 15},
        {pos = Vector( -32.82, -144, 35 ),size = 15},

        {pos = Vector( 32.82, -144, 39 ),size = 15},
        {pos = Vector( 32.82, -144, 37.06 ),size = 15},
        {pos = Vector( 32.82, -144, 35 ),size = 15},
	},
	Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -49.2,-140,52 ),size = 7,color=Color(255,50,0,255)},
            Vector( -47, -144, 39 ),
            Vector( -47, -144, 37 ),
            Vector( -47, -144, 35 ),
        },
        Right = { -- правый
            {pos = Vector( 49.2,-140, 52 ),size = 7,color=Color(255,50,0,255)},
            Vector( 47, -144, 39 ),
            Vector( 47, -144, 37 ),
            Vector( 47, -144, 35 ),
        },
	},
}
list.Set( "simfphys_lights", "lw_schimedbigcargo", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Schmied Bigcargo", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_schmied.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 900, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
	        if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,122,30)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
		OnTick = function(ent) 
			local phys = ent:GetPhysicsObject()
	        if not (ent:GetBodygroup(2) == 0 or ent:GetBodygroup(2) ==5) then
                phys:SetMass(1100)
            else phys:SetMass(900) end
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	        end
        end,

        LightsTable = "lw_schimedbigcargo", -- название light_table

        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_schmied.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_schimedbigcargo", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end


--Panel Trailer-----------------------------------------
local light_table = {
    ModernLights = true,
    
    --[[L_HeadLampPos = Vector(-36.74,121.35,45.43),
	L_HeadLampAng = Angle(15,90,0),
	R_HeadLampPos = Vector(32.15,118.88,45.13),
	R_HeadLampAng = Angle(15,90,0),]]

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( -51.3, 194.5, 48.75 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -53.3, 75.5, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -53.3, -12.5, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -53.3, -101.04, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -51.3, -203.94, 43 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( 51.3, 194.5, 48.75 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 53.3, 75.5, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 53.3, -12.5, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 53.3, -101.04, 13 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 51.3, -203.94, 43 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары Vector( 43.03, -138.6, 48.93 )
        {pos = Vector( -24.41, -258, 20.37 ),size = 20,color=Color(255,50,0,255)},
        {pos = Vector( 24.41, -258, 20.37 ),size = 20,color=Color(255,50,0,255)},
	},
	ems_sprites = { -- тормозные огни
        {pos = Vector( -38.47, -258, 20.06 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( 38.47, -258, 20.06 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
    },
    Reverselight_sprites = { -- фары заднего хода
        Vector( -10.94, -256.72, 27.21 ),
        Vector( 10.94, -256.72, 27.21 ),

        Vector( -31, -256.72, 22.25 ),
        Vector( 31, -256.72, 22.25 )
	},
	Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -55.7,-258, 20.5 ),size = 7,color=Color(255,50,0,255)},

            Vector( -45.41, -256.72, 22.46 )
        },
        Right = { -- правый
            {pos = Vector( 55.7,-258, 20.5 ),size = 7,color=Color(255,50,0,255)},

            Vector( 45.41, -256.72, 22.46 )
        },
	},
}
list.Set( "simfphys_lights", "lw_paneltrailer", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Panel Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_panel.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
	        if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,234.5,32)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
		OnTick = function(ent) 
			local phys = ent:GetPhysicsObject()
	        if ent:GetBodygroup(1) == 1 then
                phys:SetMass(800)
            elseif ent:GetBodygroup(1) == 2 then
                phys:SetMass(1000)
            elseif ent:GetBodygroup(1) == 3 then
                phys:SetMass(700)
            else
                phys:SetMass(525) 
            end
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	        end
        end,

        LightsTable = "lw_paneltrailer", -- название light_table

        BulletProofTires = false,

        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса 14
        RearWheelRadius = 21,--радиус заднего колеса 0.1
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_panel.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_trailerpanel", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end


-------Truck Transporter Trailer

local light_table = {
	ModernLights = true,

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( -53.5, 190.53, 55.8 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -53, 134.46, 26.65 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -53, 33.43, 21.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -52, -85.35, 31.71 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -52, -137.91, 31.71 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -50.5, -245.66, 18.09 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( 53.5, 190.53, 55.8 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 53, 134.46, 26.65 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 53, 33.43, 21.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 52, -85.35, 31.71 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 52, -137.91, 31.71 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 50.5, -245.66, 18.09 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары Vector( 43.03, -138.6, 48.93 )
        {pos = Vector( -45.72, -254.82, 15.93 ),size = 20,color=Color(255,0,0,200)},--triangular
        {pos = Vector( 45.72, -254.82, 15.93 ),size = 20,color=Color(255,0,0,200)},--triangular
	},
	ems_sprites = { -- тормозные огни
        {pos = Vector( -42.13, -254.1, 16.31 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn
        {pos = Vector( -37.88, -254.16, 16.28 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--turn
        {pos = Vector( -33.6, -254.07, 16.31 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--reverse

        {pos = Vector( 42.13, -254.1, 16.31 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn
        {pos = Vector( 37.88, -254.16, 16.28 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--turn
        {pos = Vector( 33.6, -254.07, 16.31 ),size = 20,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04}--reverse
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector( -33.6, -254.07, 16.31 ),size = 10},

		{pos = Vector( 33.6, -254.07, 16.31 ),size = 10}
	},
	Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -53.5, -251.6, 17.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
            {pos = Vector( -53.5, -253.8, 17.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

            {pos = Vector( -42.13, -254.1, 16.31 ),size = 10,color=Color(255,50,0,255)},--left turn
            {pos = Vector( -37.88, -254.16, 16.28 ),size = 10,color=Color(255,50,0,255)},--turn
        },
        Right = { -- правый
            {pos = Vector( 53.5, -251.6, 17.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
            {pos = Vector( 53.5, -253.8, 17.5 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

            {pos = Vector( 42.13, -254.1, 16.31 ),size = 10,color=Color(255,50,0,255)},--left turn
            {pos = Vector( 37.88, -254.16, 16.28 ),size = 10,color=Color(255,50,0,255)},--turn
        },
	},
}
list.Set( "simfphys_lights", "lw_trucktrans", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Truck Transporter Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_truck.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
	        if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,226.6,33)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
        OnTick = function(ent) 
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	        end
        end,

        LightsTable = "lw_trucktrans", -- название light_table

        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,20,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_truck.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_trucktrans", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end


------------Profiliner Trailer

local light_table = {
	ModernLights = true,

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( -48, 161.5, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -48, 48.7, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -48, -70.66, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -48, -182.63, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( 48, 161.5, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 48, 48.7, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 48, -70.66, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 48, -182.63, 45.3 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        

	},
    Rearlight_sprites = { -- задние фары Vector( 43.03, -138.6, 48.93 )
        {pos = Vector( 49.2,-140, 52 ),size = 7,color=Color(255,50,0,255)},

        {pos = Vector( -43.3, -265, 39.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( -43.3, -265, 38.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( -43.3, -265, 37.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( -43.3, -265, 36.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( -43.3, -265, 35.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( -43.3, -265, 34.5 ),size = 10,color=Color(255,0,0,255)},

        {pos = Vector( 43.3, -265, 39.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( 43.3, -265, 38.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( 43.3, -265, 37.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( 43.3, -265, 36.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( 43.3, -265, 35.5 ),size = 10,color=Color(255,0,0,255)},
        {pos = Vector( 43.3, -265, 34.5 ),size = 10,color=Color(255,0,0,255)},
	},
	ems_sprites = { -- тормозные огни
        {pos = Vector( -35, -265, 37 ),size = 33,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( -32, -265, 37 ),size = 33,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( -38, -265, 37 ),size = 33,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},

        {pos = Vector( 35, -265, 37 ),size = 30,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( 32, -265, 37 ),size = 30,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector( 38, -265, 37 ),size = 30,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector( -41, -265, 39.5 ),size = 10},
        {pos = Vector( -41, -265, 38.5 ),size = 10},
        {pos = Vector( -41, -265, 37.5 ),size = 10},
        {pos = Vector( -41, -265, 36.5),size =  10},
        {pos = Vector( -41, -265, 35.5 ),size = 10},
        {pos = Vector( -41, -265, 34.5 ),size = 10},

        {pos = Vector( 41, -265, 39.5 ),size = 10},
        {pos = Vector( 41, -265, 38.5 ),size = 10},
        {pos = Vector( 41, -265, 37.5 ),size = 10},
        {pos = Vector( 41, -265, 36.5),size =  10},
        {pos = Vector( 41, -265, 35.5 ),size = 10},
        {pos = Vector( 41, -265, 34.5 ),size = 10},
    
	},
	Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -45.7, -265, 39.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( -45.7, -265, 38.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( -45.7, -265, 37.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( -45.7, -265, 36.5),size =  20,color=Color(255,120,0,255)},
            {pos = Vector( -45.7, -265, 35.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( -45.7, -265, 34.5 ),size = 20,color=Color(255,120,0,255)},

            {pos = Vector( -54.8,-261.6,42 ),size = 7,color=Color(255,120,0,255)},
        },
        Right = { -- правый
            {pos = Vector( 45.7, -265, 39.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( 45.7, -265, 38.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( 45.7, -265, 37.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( 45.7, -265, 36.5),size =  20,color=Color(255,120,0,255)},
            {pos = Vector( 45.7, -265, 35.5 ),size = 20,color=Color(255,120,0,255)},
            {pos = Vector( 45.7, -265, 34.5 ),size = 20,color=Color(255,120,0,255)},

            {pos = Vector( 54.8,-261.6,42 ),size = 7,color=Color(255,120,0,255)},
        },
	},
}
list.Set( "simfphys_lights", "lw_profiliner", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Profiliner Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_profiliner.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
	        if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,211,30)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
        OnTick = function(ent) 
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	        end
        end,

        LightsTable = "lw_profiliner", -- название light_table

        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_profiliner.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_profiliner", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end

--------Glass Trailer

local light_table = {
	ModernLights = true,--true

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( -46, 210.87, 69.93 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -50, 105.09, 57.06 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -52, -26.82, 57 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -52, -147.57, 56.96 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( -41.38, -221, 63.03 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -45.97, -227, 104.75 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -46.1, -227, 137.28 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -25.54, -227, 161.96 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},


        {pos = Vector( 46, 210.87, 69.93 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 50, 105.09, 57.06 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 52, -26.82, 57 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 52, -147.57, 56.96 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        
        {pos = Vector( 41.38, -221, 63.03 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 45.97, -227, 104.75 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 46.1, -227, 137.28 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 25.54, -227, 161.96 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары
        {pos = Vector( -42.32, -222, 20.06 ),size = 45,Colors = {Color(255,0,0,100),Color(255,0,0,100)}},
        {pos = Vector(  42.32, -222, 20.06 ),size = 45,Colors = {Color(255,0,0,100),Color(255,0,0,100)}},
	},
	ems_sprites = { -- тормозные огни ems_sprites
        {pos = Vector( -42.32, -222, 20.06 ),size = 25,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
        {pos = Vector(  42.32, -222, 20.06 ),size = 25,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04,},
    },
    Reverselight_sprites = { -- фары заднего хода
		{pos = Vector( -46.82, -221.07, 21.46 ),size = 15},
        {pos = Vector( -37.1,-221.07, 21.46 ),size = 15},
        
        {pos = Vector( 46.82, -221.07, 21.46 ),size = 15},
		{pos = Vector( 37.1,-221.07, 21.46 ),size = 15},
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -55.5, -220, 23.06 ),size = 7,color=Color(255,50,0,255)},
        },
        Right = { -- правый
            {pos = Vector( 55.5, -220, 23.06 ),size = 7,color=Color(255,50,0,255)},
        },
	},
}
list.Set( "simfphys_lights", "lw_glasstrailer", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Glass Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_glass.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
	        if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,193.5,30)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
        OnTick = function(ent) 
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	    	end
        end,

        LightsTable = "lw_glasstrailer", -- название light_table

        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески 4
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_glass.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_glasstrailer", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end

-----------Livestock Trailer

local light_table = {
	ModernLights = true,

	L_RearLampPos = Vector(96,-23.6,3.3), -- расположение задних фар
	L_RearLampAng = Angle(0,0,0), -- угол поворота фар

	R_RearLampPos = Vector(96,23.6,3.3), -- расположение задних фар
	R_RearLampAng = Angle(0,0,0), -- угол поворота фар
	FogLight_sprites = {
        {pos = Vector( -49.5, 250.8, 55.9 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -49.5, 152.03, 55.9 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( -49.5, 69.15, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -49.5, -29.6, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -49.5, -128.4, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( -49.5, -227.2, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},

        {pos = Vector( 49.5, 250.8, 55.9 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 49.5, 152.03, 55.9 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},--unbreak
        {pos = Vector( 49.5, 69.15, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 49.5, -29.6, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 49.5, -128.4, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
        {pos = Vector( 49.5, -227.2, 43.21 ),size = 5,color=Color(255,120,0,255),material="sprites/light_ignorez"},
	},
    Rearlight_sprites = { -- задние фары Vector( 43.03, -138.6, 48.93 )
        {pos =  Vector( -19.3,-250, 32.5 ),size = 35,color=Color(255,0,0,200)},--triangular
        {pos =  Vector( 19.3, -250, 32.5 ),size = 35,color=Color(255,0,0,200)},--triangular

        {pos =  Vector( -16.5, -247.5, 26.5 ),size = 30,color=Color(255,0,0,240)},
        {pos =  Vector( 16.5, -247.5, 26.5 ),size =  30,color=Color(255,0,0,240)},

        
        
	},
    ems_sprites = { -- тормозные огни
        {pos = Vector( -44.88,-248,27.9 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
        {pos = Vector( -37.3, -248,27.9 ),size =40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
        {pos = Vector( -29.85,-248,27.9 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake

        {pos = Vector( 44.88, -248,27.9 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
        {pos = Vector( 37.3,  -248,27.9 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
        {pos = Vector( 29.85, -248,27.9 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake

        {pos = Vector( -40.35, -252, 178 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
        {pos = Vector( 40.35, -252, 178 ),size = 40,Colors = {Color(255,0,0,255),Color(255,0,0,255)},Speed = 0.04},--left turn brake
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector( -22.44, -247.5, 26.5 ),size = 30},
        {pos = Vector( 22.44, -247.5, 26.5 ),size = 30},
	},
	Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector( -54.2, -244.7, 33.53 ),size = 7,color=Color(255,100,0,255)},--TURN

            {pos = Vector( -44.88, -248.3,27.8 ),size = 25,color=Color(255,100,0,255)},--TURN
            {pos = Vector( -37.3, -248.3, 27.8 ),size = 25,color=Color(255,100,0,255)},--TURN
            {pos = Vector( -29.85, -248.3,27.8 ),size = 25,color=Color(255,100,0,255)},--TURN

            {pos = Vector( -40.35, -252, 178 ),size = 25,color =Color(255,100,0,255)},--left turn brake
        },
        Right = { -- правый
            {pos = Vector( 54.2, -244.7, 33.53 ),size = 7,color=Color(255,100,0,255)},--turn

            {pos = Vector( 44.88, -248.3,27.8 ),size = 25,color=Color(255,100,0,255)},--TURN
            {pos = Vector( 37.3, -248.3, 27.8 ),size = 25,color=Color(255,100,0,255)},--TURN
            {pos = Vector( 29.85, -248.3,27.8 ),size = 25,color=Color(255,100,0,255)},--TURN

            {pos = Vector( 40.35, -252, 178 ),size = 25,color =Color(255,100,0,255)},--left turn brake
        },
	},
}
list.Set( "simfphys_lights", "lw_livestock", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

	Name = "Livestock Trailer", -- название машины в меню
    Model = "models/lonewolfie/trailers/trailer_livestock.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "LW Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0,0,61),
    SpawnAngleOffset = 0,
 
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
			ent:Lock() -- locks trailer
            if ent:SimfIsTrailer() ~= nil then 
	        	ent:SetActive( true ) -- makes avtive
	        	ent:SetSimfIsTrailer(true)  -- Is traieler?true - yes, false - no
	        	ent:SetTrailerCenterposition(Vector(0,216.4,30)) -- position of center ballsocket for trailer hook
                ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
	        else
        		print("This trailer support trailers BASE, but you don't installed it")
        	end
        end,
		OnTick = function(ent) 
			local phys = ent:GetPhysicsObject()
	        if ent:GetBodygroup(2) == 1 then
                phys:SetMass(1000)
            else
                phys:SetMass(525) 
            end
            if ent:SimfIsTrailer() ~= nil then 
	        	if not ent:GetIsBraking() then
	        		ent.ForceTransmission = 1
		        	if ent:GetNWBool("zadnyaya_gear", false) then
		        		ent.PressedKeys["joystick_throttle"] = 0 -- makes thottle to 0 when reverse, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 1 -- makes brake to 1, for turn on reverse
		        	else
		        		ent.PressedKeys["joystick_throttle"] = 1 -- makes thottle to 1, for remove handbrake
		        		ent.PressedKeys["joystick_brake"] = 0 -- makes brake to 0, for turn off reverse
		        	end
	        	end 
	        end
        end,

        LightsTable = "lw_livestock", -- название light_table

        BulletProofTires = false,
 
        CustomSteerAngle = 0,
 
        AirFriction = -3000,
 
        FrontWheelRadius = 21,--радиус переднего колеса
        RearWheelRadius = 21,--радиус заднего колеса
 
        CustomMassCenter = Vector(0,-40,23.3),
 
		SeatOffset = Vector(226.4,-32.1,30), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = -90,

        MaxHealth = 9999999999,
        IsArmored = false,
 
        EnginePos = Vector(0,0,0),

        StrengthenSuspension = true, -- жесткая подвеска.

		FrontHeight = 4, -- высота передней подвески
		FrontWheelMass = 200,
		FrontConstant = 25000,
		FrontDamping = 2000,
		FrontRelativeDamping = 2500,

		RearHeight = 4, -- высота задней подвески
		RearWheelMass = 200,
		RearConstant = 25000,
		RearDamping = 2000,
		RearRelativeDamping = 2500,

		FastSteeringAngle = 10,
		SteeringFadeFastSpeed = 535,

		TurnSpeed = 4,

		MaxGrip = 79,
		Efficiency = 0.9,
		GripOffset = -3,
		BrakePower = 0, -- сила торможения

		IdleRPM = 0, -- мин. кол-во оборотов
		LimitRPM = 0, -- макс. кол-во оборотов
		Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
		PeakTorque = 0, -- крутящий момент
		PowerbandStart = 0,
		PowerbandEnd = 0,
		Turbocharged = false, -- турбо false = нет, true = да
		Supercharged = false, -- супер заряд
		Backfire = false, -- стреляющий выхлоп

		FuelFillPos = Vector(59.5,55,11.1), -- положение заправки
		FuelType = FUELTYPE_NONE, -- тип топлива
		FuelTankSize = 0, -- размер бака

		PowerBias = 1,

		EngineSoundPreset = 1,
--
		snd_pitch = 0.5,
		snd_idle = "common/null.wav",

		snd_low = "common/null.wav",
		snd_low_revdown = "common/null.wav", -- это всё звук
		snd_low_pitch = 1,

		snd_mid = "common/null.wav",
		snd_mid_gearup = "common/null.wav",
		snd_mid_geardown = "common/null.wav",
		snd_mid_pitch = 2,

		snd_horn = "common/null.wav",

		snd_blowoff = "common/null.wav",
		snd_backfire = "common/null.wav",
--
		DifferentialGear = 0.4,
		Gears = {-0.2,0,0.1} -- кол-во передач и "мощность"
	}
}
if (file.Exists( "models/lonewolfie/trailers/trailer_livestock.mdl", "GAME" )) then -- путь модели (".mdl")
    list.Set( "simfphys_vehicles", "sim_fphys_livestocktrailer", DKCAR ) -- изменить на люброе название(например sim_fphys_lalala)
end