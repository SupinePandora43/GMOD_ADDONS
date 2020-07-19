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
            pos = Vector(51.341, -180.058, 158.342),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(-51.341, -180.058, 158.342),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(57.437, -173.736, 158.343),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(-57.437, -173.736, 158.343),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(57.437, -173.736, 55.865),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(-57.437, -173.736, 55.865),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(57.437, 177.241, 158.343),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(-57.437, 177.241, 158.343),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(57.437, 177.241, 55.865),
            size = 15,
            color = Color(255, 142, 85, 255)
        }, {
            pos = Vector(-57.437, 177.241, 55.865),
            size = 15,
            color = Color(255, 142, 85, 255)
        }
    },
    Rearlight_sprites = { -- задние фары
        {
            pos = Vector(49.156, -181.341, 51.395),
            size = 25,
            color = Color(255, 0, 0, 255)
        }, {
            pos = Vector(-49.156, -181.341, 51.395),
            size = 25,
            color = Color(255, 0, 0, 255)
        }, {
            pos = Vector(38.382, -181.341, 51.395),
            size = 25,
            color = Color(255, 0, 0, 255)
        }, {
            pos = Vector(-38.382, -181.341, 51.395),
            size = 25,
            color = Color(255, 0, 0, 255)
        }
    },
    ems_sprites = { -- тормозные огни
        {
            pos = Vector(49.156, -181.341, 51.395),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(-49.156, -181.341, 51.395),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(38.382, -181.341, 51.395),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(-38.382, -181.341, 51.395),
            size = 25,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }
    },
    Reverselight_sprites = { -- фары заднего хода
        {
            pos = Vector(38.382, -181.341, 51.395),
            size = 15,
            color = Color(255, 255, 255, 255)
        }, {
            pos = Vector(-38.382, -181.341, 51.395),
            size = 15,
            color = Color(255, 255, 255, 255)
        }
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {
                pos = Vector(-49.156, -181.341, 51.395),
                size = 15,
                color = Color(255, 142, 85, 255)
            }
        },
        Right = { -- правый
            {
                pos = Vector(49.156, -181.341, 51.395),
                size = 15,
                color = Color(255, 142, 85, 255)
            }
        }

    }
}
list.Set("simfphys_lights", "tdm_trailer10", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Single axlebox Trailer", -- название машины в меню
    Model = "models/tdmcars/trailers/singleaxlebox.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 0,
    FLEX = {
		Trailers = {
			inputPos = Vector(0, 137.1, 33.6),
			inputType = "axis",
			outputPos = Vector( 0, -180, 40),
			outputType = "ballsocket"
		}
	},
    Members = {
        Mass = 1150, -- масса авто

        OnSpawn = function(ent)
            ent:Lock() -- locks trailer
            -- ent:SetCenterposition(Vector(0,0,90)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        LightsTable = "tdm_trailer10", -- название light_table
        BulletProofTires = false,

        CustomSteerAngle = 0,

        AirFriction = -3000,

        FrontWheelRadius = 22, -- радиус переднего колеса
        RearWheelRadius = 22, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 0),

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
if (file.Exists("models/tdmcars/trailers/singleaxlebox.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "singleaxleboxtrailertdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
