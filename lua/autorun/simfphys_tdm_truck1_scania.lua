------------------------------------------------------
---------template by DK / Пример сделан DK------------
------------------------------------------------------
AddCSLuaFile()

local light_table = {
    ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
    L_HeadLampPos = Vector(-31.4, 100.4, 37.5), -- рассположение обычных фар (левых - L)
    L_HeadLampAng = Angle(180, -90, 0), -- угол поворота фар

    R_HeadLampPos = Vector(31.4, 100.4, 37.5), -- рассположение обычных фар (правых - R)
    R_HeadLampAng = Angle(180, -90, 0), -- угол поворота фар

    L_RearLampPos = Vector(-33.3, -123.8, 33), -- расположение задних фар
    L_RearLampAng = Angle(0, -90, 0), -- угол поворота фар

    R_RearLampPos = Vector(33.3, -123.8, 33), -- расположение задних фар
    R_RearLampAng = Angle(0, -90, 0), -- угол поворота фар

    Headlight_sprites = { -- Обычные фары
        {pos = Vector(-31.4, 100.4, 37.5), size = 30},

        {pos = Vector(31.4, 100.4, 37.5), size = 30}
    },
    Headlamp_sprites = { -- дальние
        {pos = Vector(-37.2, 98, 38.1), size = 65},

        {pos = Vector(37.2, 98, 38.1), size = 65}
    },
    --[[FogLight_sprites = {
		{pos = Vector(-108.6,-44.3,-18.5),size = 5},

		{pos = Vector(-109.9,42.4,-24.1),size = 5},
	},]]
    Rearlight_sprites = { -- задние фары
        {pos = Vector(-37.1, -123.8, 33), size = 25},
        {pos = Vector(-33.3, -123.8, 33), size = 25},
        {pos = Vector(-30.2, -123.8, 33), size = 25},

        {pos = Vector(37.1, -123.8, 33), size = 25},
        {pos = Vector(33.3, -123.8, 33), size = 25},
        {pos = Vector(30.2, -123.8, 33), size = 25}
    },
    Brakelight_sprites = { -- тормозные огни
        {pos = Vector(-37.1, -123.8, 33), size = 25},
        {pos = Vector(-33.3, -123.8, 33), size = 25},
        {pos = Vector(-30.2, -123.8, 33), size = 25},

        {pos = Vector(37.1, -123.8, 33), size = 25},
        {pos = Vector(33.3, -123.8, 33), size = 25},
        {pos = Vector(30.2, -123.8, 33), size = 25}
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector(-27.3, -123.8, 33), size = 15},

        {pos = Vector(27.3, -123.8, 33), size = 15}
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector(-42.3, 97.5, 38), size = 25},

            {pos = Vector(-40.9, -123.8, 33), size = 25}
        },
        Right = { -- правый
            {pos = Vector(42.3, 97.5, 38), size = 25},

            {pos = Vector(40.9, -123.8, 33), size = 25}
        }

    }
}
list.Set("simfphys_lights", "tdmtruck1", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Scania 2009", -- название машины в меню
    Model = "models/tdmcars/trucks/scania_4x2_nojiggle.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trucks", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 0,
    FLEX = {
        Trailers = {outputPos = Vector(0, -67.3, 50), outputType = "axis"}
    },
    Members = {
        Mass = 1500, -- масса авто
        -- OnSpawn = function(ent)
        -- ent.ForceTransmission = 2
        --     	ent:SetTrailerCenterposition(Vector(0,68,85)) -- position of center ballsocket for trailer hook
        -- end,

        LightsTable = "tdmtruck1", -- название light_table
        SpeedoMax = 149.129,

        BulletProofTires = false,

        CustomSteerAngle = 35,

        AirFriction = -3000,

        FrontWheelRadius = 20, -- радиус переднего колеса
        RearWheelRadius = 20, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 33.5),

        SeatOffset = Vector(-7, 0, 0), -- положение водительского сидения
        FirstPersonViewPos = Vector(0, -7, 2),
        SeatPitch = 0,
        SeatYaw = -0,

        MaxHealth = 4500,
        IsArmored = false,

        EnginePos = Vector(0, 68, 12),

        PassengerSeats = { -- пассажирские места
            {pos = Vector(25, 68, 75), ang = Angle(0, 0, 14)},
            --{pos = Vector(0, 40, 76), ang = Angle(0, 0, 14)}
        },

        ExhaustPositions = { -- позиция выхлопа
            {pos = Vector(99.4, 21.3, -13.5), ang = Angle(90, 0, 0)}
        },

        StrengthenSuspension = false, -- жесткая подвеска.

        FrontHeight = 9, -- высота передней подвески
        FrontWheelMass = 200,
        FrontConstant = 25000,
        FrontDamping = 3500,
        FrontRelativeDamping = 2500,

        RearHeight = 9, -- высота задней подвески
        RearWheelMass = 200,
        RearConstant = 44000,
        RearDamping = 3500,
        RearRelativeDamping = 2500,

        FastSteeringAngle = 10,
        SteeringFadeFastSpeed = 535,

        TurnSpeed = 4,

        MaxGrip = 70,
        Efficiency = 0.8,
        GripOffset = -3,
        BrakePower = 32, -- сила торможения

        IdleRPM = 750, -- мин. кол-во оборотов
        LimitRPM = 3000, -- макс. кол-во оборотов
        Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
        PeakTorque = 360, -- крутящий момент
        PowerbandStart = 750, -- какие обороты на нейтральной передаче
        PowerbandEnd = 2800, -- ограничение по оборотам
        Turbocharged = false, -- турбо false = нет, true = да
        Supercharged = false, -- супер заряд
        Backfire = false, -- стреляющий выхлоп

        FuelFillPos = Vector(-40, 87.5, 43), -- положение заправки
        FuelType = FUELTYPE_PETROL, -- тип топлива
        FuelTankSize = 60, -- размер бака

        PowerBias = 0.5,

        EngineSoundPreset = -1,
        --
        snd_pitch = 1,
        snd_idle = "tdmfura/idle.wav",

        snd_low = "tdmfura/low.wav",
        snd_low_revdown = "tdmfura/low.wav", -- это всё звук
        snd_low_pitch = 1,

        snd_mid = "tdmfura/mid.wav",
        snd_mid_gearup = "tdmfura/second.wav",
        snd_mid_geardown = "tdmfura/second.wav",
        snd_mid_pitch = 1,

        snd_horn = "simulated_vehicles/horn_5.wav",

        snd_blowoff = "simulated_vehicles/turbo_blowoff.ogg",
        snd_backfire = "simulated_vehicles/sfx/ex_backfire_1.ogg",
        --
        DifferentialGear = 0.15,
        Gears = {
            -0.5, 0, 0.5, 0.6, 0.7, 0.8, 0.9, 1, 1.1, 1.2, 1.3, 1.4, 1.5, 1.6,
            1.7, 1.8, 1.9
        } -- кол-во передач и "мощность"
    }
}
if (file.Exists("models/tdmcars/trucks/scania_4x2_nojiggle.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "scania09jigtdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
