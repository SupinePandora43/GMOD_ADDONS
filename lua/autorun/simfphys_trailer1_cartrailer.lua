------------------------------------------------------
---------template by DK / Пример сделан DK------------
------------------------------------------------------
-- Copyright © 2023 DK Scripts--
AddCSLuaFile()

local light_table = {
    ModernLights = true,

    L_RearLampPos = Vector(96, -23.6, 3.3), -- расположение задних фар
    L_RearLampAng = Angle(0, 0, 0), -- угол поворота фар

    R_RearLampPos = Vector(96, 23.6, 3.3), -- расположение задних фар
    R_RearLampAng = Angle(0, 0, 0), -- угол поворота фар
    Rearlight_sprites = { -- задние фары
        {pos = Vector(-32.8, -95, 21.9), size = 25},
        {pos = Vector(-25.6, -95, 21.9), size = 25}, --
        {pos = Vector(-32.8, -95, 53.8), size = 25}, --
        {
            pos = Vector(-44.9, -86.8, 26),
            size = 25,
            color = Color(255, 93, 0, 255)
        }, --
        {
            pos = Vector(-44.9, 41.3, 26),
            size = 25,
            color = Color(255, 93, 0, 255)
        }, {pos = Vector(32.8, -95, 21.9), size = 25},
        {pos = Vector(25.6, -95, 21.9), size = 25}, --
        {pos = Vector(32.8, -95, 53.8), size = 25}, --
        {
            pos = Vector(44.9, -86.8, 26),
            size = 25,
            color = Color(255, 93, 0, 255)
        }, --
        {
            pos = Vector(44.9, 41.3, 26),
            size = 25,
            color = Color(255, 93, 0, 255)
        }
    },
    ems_sprites = { -- тормозные огни
        {
            pos = Vector(-32.8, -95, 21.9),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(-25.6, -95, 21.9),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(32.8, -95, 21.9),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(25.6, -95, 21.9),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector(-32.8, -95, 21.9), size = 25}
        },
        Right = { -- правый
            {pos = Vector(32.8, -95, 21.9), size = 25}
        }

    }
}
list.Set("simfphys_lights", "tdm_trailer1", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Car Trailer", -- название машины в меню
    Model = "models/tdmcars/trailers/car_trailer.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 0,
    FLEX = {
        Trailers = {inputPos = Vector(0, 93, 23.3), inputType = "ballsocket"} -- outputPos = Vector(0,-96.5,21.2)
    },
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
            ent:Lock() -- locks trailer
            -- ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        LightsTable = "tdm_trailer1", -- название light_table

        BulletProofTires = false,

        CustomSteerAngle = 0,

        AirFriction = -3000,

        FrontWheelRadius = 14, -- радиус переднего колеса
        RearWheelRadius = 0.1, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 0),

        SeatOffset = Vector(0, 0, 0), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = 0,

        MaxHealth = 10000, --9999999999
        IsArmored = true,

        EnginePos = Vector(0, 0, 0),

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

        FuelFillPos = Vector(0, 0, 0), -- положение заправки
        FuelType = FUELTYPE_NONE, -- тип топлива
        FuelTankSize = 0, -- размер бака

        PowerBias = 1,

        EngineSoundPreset = 1,
        snd_pitch = 0,
        snd_idle = "common/null.wav",
        snd_low = "common/null.wav",
        snd_low_revdown = "common/null.wav", -- это всё звук
        snd_low_pitch = 0,
        snd_mid = "common/null.wav",
        snd_mid_gearup = "common/null.wav",
        snd_mid_geardown = "common/null.wav",
        snd_mid_pitch = 0,
        snd_horn = "common/null.wav",
        snd_blowoff = "common/null.wav",
        snd_backfire = "common/null.wav",
        DifferentialGear = 0.4,
        Gears = {0.1, 0, -0.2} -- кол-во передач и "мощность"
    }
}
if (file.Exists("models/tdmcars/trailers/car_trailer.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "cartrailertdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
