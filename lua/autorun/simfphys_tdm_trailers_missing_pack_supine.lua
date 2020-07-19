AddCSLuaFile()
if SERVER then
    resource.AddWorkshop("2164601477") -- this
	resource.AddWorkshop("215871671") -- Trailers Pack
	resource.AddWorkshop("469173046") -- European Trucks Pack
	resource.AddWorkshop("112606459") -- TDM Base Pack
end
-- Reefer 3000R -not long
local light_table = {
    ModernLights = true,

    L_RearLampPos = Vector(96, -23.6, 3.3), -- расположение задних фар
    L_RearLampAng = Angle(0, 0, 0), -- угол поворота фар

    R_RearLampPos = Vector(96, 23.6, 3.3), -- расположение задних фар
    R_RearLampAng = Angle(0, 0, 0), -- угол поворота фар
    FogLight_sprites = {
        {
            pos = Vector(-51, 238.4, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(-51, 143.93, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(-51, 1.84, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(-50.5, 1, 47),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-51, -137.57, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-51, -251.19, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-45.233, -313.704 + 51, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(45.233, -313.704 + 51, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-13.46, -313.704 + 51, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(13.46, -313.704 + 51, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(0, -313.704 + 51, 157.484),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-50.728, -302.523 + 52, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(50.728, -302.523 + 52, 157.336),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-51, 238.56, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-51, 144.31, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(-51, 2.25, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(-51, -137.54, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        },

        {
            pos = Vector(51, 238.56, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(51, 144.31, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(51, 2.25, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        }, {
            pos = Vector(51, -137.54, 157.03),
            size = 25,
            color = Color(255, 134, 74, 255)
        },

        {
            pos = Vector(51, 238.4, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(51, 143.93, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(51, 1.84, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {pos = Vector(50.5, 1, 47), size = 25, color = Color(255, 134, 74, 255)},
        {
            pos = Vector(51, -137.57, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        },
        {
            pos = Vector(51, -251.19, 52.46),
            size = 25,
            color = Color(255, 134, 74, 255)
        }
    },
    Rearlight_sprites = { -- задние фары
        {pos = Vector(39.829, -313.244 + 49.7, 48.38), size = 30},
        {pos = Vector(32.891, -313.244 + 49.7, 48.38), size = 30},
        {pos = Vector(-39.829, -313.244 + 49.7, 48.38), size = 30},
        {pos = Vector(-32.891, -313.244 + 49.7, 48.38), size = 30}
    },
    ems_sprites = { -- тормозные огни
        {
            pos = Vector(32.891, -313.244 + 49.7, 48.38),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }, {
            pos = Vector(-32.891, -313.244 + 49.7, 48.38),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04
        }
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {pos = Vector(-39.829, -313.244 + 49.7, 48.38), size = 30}
        },
        Right = { -- правый
            {pos = Vector(39.829, -313.244 + 49.7, 48.38), size = 30}
        }

    }
}
list.Set("simfphys_lights", "tdm_trailer_refeer", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Reefer 3000R", -- название машины в меню
    Model = "models/tdmcars/trailers/reefer3000r.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 0,
    FLEX = {Trailers = {inputPos = Vector(0, 216.2, 37), inputType = "axis"}},
    Members = {
        Mass = 1150, -- масса авто

        OnSpawn = function(ent)
            ent:Lock()
            -- ent:SetCenterposition(Vector(0,-96.5,21.2)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        OnTick = function(ent)
            local physMass = 1150
            if ent:GetBodygroup(1) == 1 then
                physMass = physMass + 700
            end
            if ent:GetBodygroup(2) == 1 then
                physMass = physMass + 700
            end
            ent:GetPhysicsObject():SetMass(physMass)
        end,

        LightsTable = "tdm_trailer_refeer", -- название light_table

        BulletProofTires = false,

        CustomSteerAngle = 0,

        AirFriction = -3000,

        FrontWheelRadius = 21, -- радиус переднего колеса
        RearWheelRadius = 21, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 20),

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
if (file.Exists("models/tdmcars/trailers/reefer3000r.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "reefer3000r_tdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
-- dolly
local light_table = {
    ModernLights = true,

    L_RearLampPos = Vector(96, -23.6, 3.3), -- расположение задних фар
    L_RearLampAng = Angle(0, 0, 0), -- угол поворота фар

    R_RearLampPos = Vector(96, 23.6, 3.3), -- расположение задних фар
    R_RearLampAng = Angle(0, 0, 0), -- угол поворота фар
    Rearlight_sprites = { -- задние фары
        -- {pos = Vector( -38.29, -63.3, 28.12 ),size = 30,color=Color(255,0,0,100),material="sprites/light_ignorez"},

        -- {pos = Vector( 38.29, -63.3, 28.12 ),size = 30,color=Color(255,0,0,100),material="sprites/light_ignorez"},

        {
            pos = Vector(-31.88, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(-35.04, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(-38.29, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(31.88, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(35.04, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(38.29, -63.3, 28.12),
            size = 30,
            color = Color(255, 0, 0, 100),
            material = "sprites/light_ignorez"
        }
    },
    Reverselight_sprites = { -- фары заднего хода
        {pos = Vector(-28.79, -63.3, 30), size = 15},
        {pos = Vector(-28.79, -63.3, 29), size = 15},
        {pos = Vector(-28.79, -63.3, 28.12), size = 15},
        {pos = Vector(-28.79, -63.3, 27), size = 15},
        {pos = Vector(-28.79, -63.3, 26), size = 15},

        {pos = Vector(28.79, -63.3, 30), size = 15},
        {pos = Vector(28.79, -63.3, 29), size = 15},
        {pos = Vector(28.79, -63.3, 28.12), size = 15},
        {pos = Vector(28.79, -63.3, 27), size = 15},
        {pos = Vector(28.79, -63.3, 26), size = 15}
    },
    ems_sprites = { -- тормозные огни
        {
            pos = Vector(-31.88, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(-35.04, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(-38.29, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(31.88, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(35.04, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }, {
            pos = Vector(38.29, -63.3, 28.12),
            size = 30,
            Colors = {Color(255, 0, 0, 255), Color(255, 0, 0, 255)},
            Speed = 0.04,
            material = "sprites/light_ignorez"
        }
    },
    Turnsignal_sprites = { -- поворотники
        Left = { -- левый
            {
                pos = Vector(-43, -63.3, 30),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-43, -63.3, 29),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-43, -63.3, 28.12),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-43, -63.3, 27),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-43, -63.3, 26),
                size = 20,
                color = Color(255, 120, 0, 255)
            },

            {
                pos = Vector(-42, -63.3, 30),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-42, -63.3, 29),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-42, -63.3, 28.12),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-42, -63.3, 27),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(-42, -63.3, 26),
                size = 20,
                color = Color(255, 120, 0, 255)
            }
        },
        Right = { -- правый
            {
                pos = Vector(43, -63.3, 30),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(43, -63.3, 29),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(43, -63.3, 28.12),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(43, -63.3, 27),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(43, -63.3, 26),
                size = 20,
                color = Color(255, 120, 0, 255)
            },

            {
                pos = Vector(42, -63.3, 30),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(42, -63.3, 29),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(42, -63.3, 28.12),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(42, -63.3, 27),
                size = 20,
                color = Color(255, 120, 0, 255)
            },
            {
                pos = Vector(42, -63.3, 26),
                size = 20,
                color = Color(255, 120, 0, 255)
            }
        }

    }
}
list.Set("simfphys_lights", "tdm_trailer_dolly", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local DKCAR = {

    Name = "Pup trailer dolly", -- название машины в меню
    Model = "models/tdmcars/trailers/dolly.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 0,
    FLEX = {
        Trailers = {
            inputPos = Vector(0, 147, 39),
            inputType = "ballsocket",

            outputPos = Vector(0, -11, 46),
            outputType = "axis"
        }
    },
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
            ent:Lock()
            -- ent:SetTrailerCenterposition(Vector(0,147,39)) -- position of center ballsocket for trailer hook 33
            -- ent:SetCenterposition(Vector(0,-11,46)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        LightsTable = "tdm_trailer_dolly", -- название light_table

        BulletProofTires = false,

        CustomSteerAngle = 0,

        AirFriction = -3000,

        FrontWheelRadius = 21, -- радиус переднего колеса
        RearWheelRadius = 21, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 40),

        SeatOffset = Vector(0,0,0), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = 0,

        MaxHealth = 20000,
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
if (file.Exists("models/tdmcars/trailers/dolly.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "dollytdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
-- dolly (without lights!!!)
local DKCAR = {

    Name = "Single Axle dolly 2", -- название машины в меню
    Model = "models/tdmcars/trailers/dolly2.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "TDM Trailers", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 61),
    SpawnAngleOffset = 0,
    FLEX = {
        Trailers = {
            inputPos = Vector(0, 118, 36),
            inputType = "ballsocket",

            outputPos = Vector(0, 8, 40),
            outputType = "axis"
        }
    },
    Members = {
        Mass = 700, -- масса авто

        OnSpawn = function(ent)
            ent:Lock()
            -- ent:SetTrailerCenterposition(Vector(0,118,36)) -- position of center ballsocket for trailer hook 33
            -- ent:SetCenterposition(Vector(0,8,40)) -- position of center ballsocket for tow hitch(trailer coupling)
        end,
        BulletProofTires = false,

        CustomSteerAngle = 0,

        AirFriction = -3000,

        FrontWheelRadius = 21, -- радиус переднего колеса
        RearWheelRadius = 21, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 16, 0), -- Vector(0,-40,23.3)

        SeatOffset = Vector(0,0,0), -- положение водительского сидения
        SeatPitch = 0,
        SeatYaw = 0,

        MaxHealth = 20000,
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
        Gears = {0.1, 0, -0.1} -- кол-во передач и "мощность"
    }
}
if (file.Exists("models/tdmcars/trailers/dolly2.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "dolly2tdm", DKCAR) -- изменить на люброе название(например sim_fphys_lalala)
end
