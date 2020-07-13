﻿------------------------------------------------------
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
    FogLight_sprites = {
        {
            pos = Vector(-45.233, -313.704, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(45.233, -313.704, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-13.46, -313.704, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(13.46, -313.704, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(0, -313.704, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, -302.523, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, -302.523, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, -302.523, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, -302.523, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, -148.642, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, -148.642, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, -148.642, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, -148.642, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 5.154, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 5.154, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 5.154, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 5.154, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 158.628, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 158.628, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 158.628, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 158.628, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 311.473, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, 311.473, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 311.473, 52.335),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, 311.473, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-49.92, 4.385, 46.805),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(49.92, 4.385, 46.805),
            size = 25,
            color = Color(255, 134, 74, 255)
        }
    },
    Rearlight_sprites = { -- задние фары
        {pos = Vector(39.829, -313.244, 48.38), size = 30},
        {pos = Vector(32.891, -313.244, 48.38), size = 30},
        {pos = Vector(-39.829, -313.244, 48.38), size = 30},
        {pos = Vector(-32.891, -313.244, 48.38), size = 30}
    },
    ems_sprites = { -- тормозные огни
        {
            pos = Vector(32.891, -313.244, 48.38),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(-32.891, -313.244, 48.38),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector(-39.829, -313.244, 48.38), size = 30}
        },
        Right = { -- правый
            {pos = Vector(39.829, -313.244, 48.38), size = 30}
        }

    }
}
list.Set("simfphys_lights", "tdm_trailer11", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Reefer3000R Long", -- название машины в меню
    Model = "models/tdmcars/trailers/reefer3000r_long.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 61),
    SpawnAngleOffset = 0,
    FLEX = {Trailers = {inputPos = Vector(0, 288.9, 38), inputType = "axis"}},
    Members = {
        Mass = 1150, -- масса авто

        OnSpawn = function(ent)
            ent:Lock() -- locks trailer
            -- ent:SetCenterposition(Vector(0,0,40)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        LightsTable = "tdm_trailer11", -- название light_table
        BulletProofTires = false,
        CustomSteerAngle = 0,
        AirFriction = -3000,
        FrontWheelRadius = 21, -- радиус переднего колеса
        RearWheelRadius = 21, -- радиус заднего колеса
        CustomMassCenter = Vector(0, 200, 30),
        SeatOffset = Vector(0,0,0), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = 0,
        MaxHealth = 10000,
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
        BrakePower = 100, -- сила торможения

        IdleRPM = 0, -- мин. кол-во оборотов
        LimitRPM = 0, -- макс. кол-во оборотов
        Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
        PeakTorque = 0, -- крутящий момент
        PowerbandStart = 0,
        PowerbandEnd = 0,
        Turbocharged = false, -- турбо false = нет, true = да
        Supercharged = false, -- супер заряд
        Backfire = false, -- стреляющий выхлоп

        FuelFillPos = Vector(0,0,0), -- положение заправки
        FuelType = FUELTYPE_NONE, -- тип топлива
        FuelTankSize = 0, -- размер бака

        PowerBias = 1,

        EngineSoundPreset = 1,
        --
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
        --
        DifferentialGear = 0.4,
        Gears = {-0.2, 0, 0.1} -- кол-во передач и "мощность"
    }
}
if (file.Exists("models/tdmcars/trailers/car_trailer.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "reefer3000r_longtdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
