AddCSLuaFile()
local light_table = {
    ModernLights = false, -- грубо говоря, ксенон или старые фары. True - ксенон, false - старые
    L_HeadLampPos = Vector( -36.5, 119  , 39.8 ), -- рассположение обычных фар (левых - L)
    L_HeadLampAng = Angle(180, -90, 0), -- угол поворота фар

    R_HeadLampPos = Vector( 36.5, 119  , 39.8 ), -- рассположение обычных фар (правых - R)
    R_HeadLampAng = Angle(180, -90, 0), -- угол поворота фар

    -- L_RearLampPos = Vector(-33.3, -123.8, 33), -- расположение задних фар
    -- L_RearLampAng = Angle(0, -90, 0), -- угол поворота фар

    -- R_RearLampPos = Vector(33.3, -123.8, 33), -- расположение задних фар
    -- R_RearLampAng = Angle(0, -90, 0), -- угол поворота фар

    Headlight_sprites = { -- Обычные фары
        --LEFT
    --quad
        {pos = Vector( -36.1, 120, 32.5 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -34, 120.8, 32 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -37.8, 119  , 35.6 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -35.7,  119.8, 35.1 ), size = 10, color=Color(255,255,255)},
    --quad
        {pos = Vector( -36.3, 120, 33.5 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -34.2, 120.8, 33 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -38, 119  , 36.6 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -35.9,  119.8, 36.1 ), size = 10, color=Color(255,255,255)},
    --quad
        {pos = Vector( -35.9, 120, 31.5 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -33.8, 120.8, 31 ), size = 10, color=Color(255,255,255)},
        {pos = Vector( -37.6, 119  , 34.6), size = 10, color=Color(255,255,255)},
        {pos = Vector( -35.5,  119.8, 34.1 ), size = 10, color=Color(255,255,255)},

        --RIGHT
    --quad
    {pos = Vector( 36.1, 120, 32.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 34, 120.8, 32 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 37.8, 119  , 35.6 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 35.7,  119.8, 35.1 ), size = 10, color=Color(255,255,255)},
--quad
    {pos = Vector( 36.3, 120, 33.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 34.2, 120.8, 33 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 38, 119  , 36.6 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 35.9,  119.8, 36.1 ), size = 10, color=Color(255,255,255)},
--quad
    {pos = Vector( 35.9, 120, 31.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 33.8, 120.8, 31 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( 37.6, 119  , 34.6), size = 10, color=Color(255,255,255)},
    {pos = Vector( 35.5,  119.8, 34.1 ), size = 10, color=Color(255,255,255)},

    --LEFT
    --quad
    {pos = Vector( -36.1, 120, 32.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -34, 120.8, 32 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -37.8, 119  , 35.6 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -35.7,  119.8, 35.1 ), size = 10, color=Color(255,255,255)},
--quad
    {pos = Vector( -36.3, 120, 33.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -34.2, 120.8, 33 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -38, 119  , 36.6 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -35.9,  119.8, 36.1 ), size = 10, color=Color(255,255,255)},
--quad
    {pos = Vector( -35.9, 120, 31.5 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -33.8, 120.8, 31 ), size = 10, color=Color(255,255,255)},
    {pos = Vector( -37.6, 119  , 34.6), size = 10, color=Color(255,255,255)},
    {pos = Vector( -35.5,  119.8, 34.1 ), size = 10, color=Color(255,255,255)},

    --RIGHT
--quad
{pos = Vector( 36.1, 120, 32.5 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 34, 120.8, 32 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 37.8, 119  , 35.6 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 35.7,  119.8, 35.1 ), size = 10, color=Color(255,255,255)},
--quad
{pos = Vector( 36.3, 120, 33.5 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 34.2, 120.8, 33 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 38, 119  , 36.6 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 35.9,  119.8, 36.1 ), size = 10, color=Color(255,255,255)},
--quad
{pos = Vector( 35.9, 120, 31.5 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 33.8, 120.8, 31 ), size = 10, color=Color(255,255,255)},
{pos = Vector( 37.6, 119  , 34.6), size = 10, color=Color(255,255,255)},
{pos = Vector( 35.5,  119.8, 34.1 ), size = 10, color=Color(255,255,255)},

    },
    Headlamp_sprites = {
        --LEFT
        {pos = Vector( -36.5, 119  , 39.8 ), size = 20, color=Color(255,255,255)},
        {pos = Vector( -36.5, 119  , 39.8 ), size = 20, color=Color(255,255,255)},

        --RIGHT
        {pos = Vector( 36.5, 119  , 39.8 ), size = 20, color=Color(255,255,255)},
        {pos = Vector( 36.5, 119  , 39.8 ), size = 20, color=Color(255,255,255)},
    },
    FogLight_sprites = {
        --RIGHT
        {pos = Vector( 8, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 8.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 9, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 9.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 10, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 10.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 11, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 11.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 12, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 12.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 13, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 13.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 14, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 14.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 15, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 15.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 16, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 16.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 17, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 17.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 18, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 18.5, -129.9, 28 ), size = 6, color=Color(255,255,255,100)},
        {pos = Vector( 19, -129.8, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 19.5, -129.7, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 20, -129.6, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 20.5, -129.5, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 21, -129.4, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 21.5, -129.3, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 22, -129.2, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 22.5, -129.1, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 23, -129, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 23.5, -128.9, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 24, -128.8, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 24.5, -128.7, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 25, -128.6, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 25.5, -128.5, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 26, -128.4, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 26.5, -128.3, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 27, -128.2, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 27.5, -128.1, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( 28, -128, 28 ), size = 6, color=Color(255,255,255,50)},
        --LEFT
        {pos = Vector( -8, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -8.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -9, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -9.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -10, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -10.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -11, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -11.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -12, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -12.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -13, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -13.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -14, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -14.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -15, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -15.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -16, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -16.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -17, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -17.5, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -18, -130, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -18.5, -129.9, 28 ), size = 6, color=Color(255,255,255,100)},
        {pos = Vector( -19, -129.8, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -19.5, -129.7, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -20, -129.6, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -20.5, -129.5, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -21, -129.4, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -21.5, -129.3, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -22, -129.2, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -22.5, -129.1, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -23, -129, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -23.5, -128.9, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -24, -128.8, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -24.5, -128.7, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -25, -128.6, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -25.5, -128.5, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -26, -128.4, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -26.5, -128.3, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -27, -128.2, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -27.5, -128.1, 28 ), size = 6, color=Color(255,255,255,50)},
        {pos = Vector( -28, -128, 28 ), size = 6, color=Color(255,255,255,50)},


        --LEFT
        {pos = Vector( -31.2,  125.6, 28.3 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -32,  125.3, 28.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -32.8,  125, 28.7 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -33.6,  124.5, 28.9 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -34.4,  124, 29.1 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -35.2,  123.5, 29.3 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -36,  123, 29.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -36.8,  122.5, 29.7 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -37.3,  122, 30.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -37.7,  121.5, 31.1 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -37.9,  121, 31.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -38.1,  120.8, 32.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -38.3,  120.5, 33.2 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -38.4,  120.1, 34 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -38.6,  119.8, 34.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -38.8,  119.5, 35.6 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -39,  119.1, 36.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -39.2,  118.8, 37.2 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -39.4,  118.5, 38 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -39.6,  118, 38.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -39.8,  117.5, 39.6 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -40,  117, 40.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( -40.2,  116.4, 41.2 ), size = 8, color=Color(255,255,255)},

        --RIGHT
        {pos = Vector( 31.2,  125.6, 28.3 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 32,  125.3, 28.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 32.8,  125, 28.7 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 33.6,  124.5, 28.9 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 34.4,  124, 29.1 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 35.2,  123.5, 29.3 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 36,  123, 29.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 36.8,  122.5, 29.7 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 37.3,  122, 30.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 37.7,  121.5, 31.1 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 37.9,  121, 31.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 38.1,  120.8, 32.5 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 38.3,  120.5, 33.2 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 38.4,  120.1, 34 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 38.6,  119.8, 34.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 38.8,  119.5, 35.6 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 39,  119.1, 36.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 39.2,  118.8, 37.2 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 39.4,  118.5, 38 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 39.6,  118, 38.8 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 39.8,  117.5, 39.6 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 40,  117, 40.4 ), size = 8, color=Color(255,255,255)},
        {pos = Vector( 40.2,  116.4, 41.2 ), size = 8, color=Color(255,255,255)},
	},
    Rearlight_sprites = { -- задние фары
--RIGHT
    {pos = Vector( 8, -130, 28 ), size = 12,    color=Color(180, 0 ,0)},
    {pos = Vector( 9, -130, 28 ), size = 12,    color=Color(180, 0 ,0)},
    {pos = Vector( 10, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 11, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 12, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 13, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 14, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 15, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 16, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 17, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 18, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 19, -129.8, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 20, -129.6, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 21, -129.4, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 22, -129.2, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 23, -129, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( 24, -128.8, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 25, -128.6, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 26, -128.4, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 27, -128.2, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( 28, -128, 28 ), size = 12,   color=Color(180, 0 ,0)},


    {pos = Vector( 0, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 1, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 2, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 3, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 4, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 5, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 6, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( 7, -130, 28 ), size = 12, color=Color(180,0,0)},

        {pos = Vector( 29, -128, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 30, -128, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 31, -128, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 32, -127.8, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 33, -127.6, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 34, -127.4, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 35, -127.2, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 36, -127, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 37, -126.8, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 38, -126.6, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 39, -126.4, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 40, -126.2, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 41, -126, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 42, -125.8, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 43, -125.6, 28 ), size = 12, color=Color(180,0,0)},
        {pos = Vector( 44, -125.4, 28 ), size = 12, color=Color(180,0,0)},


        {pos = Vector( 47, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
        {pos = Vector( 46, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
        {pos = Vector( 45, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
        {pos = Vector( 44, -125.2, 16.5 ), size = 15, color=Color(180,0,0)},
        {pos = Vector( 43, -125.4, 16.5 ), size = 15, color=Color(180,0,0)},
        {pos = Vector( 42, -125.6, 16.5 ), size = 15, color=Color(180,0,0)},
        {pos = Vector( 41, -125.8, 16.5 ), size = 15, color=Color(180,0,0)},
        {pos = Vector( 40, -126, 16.5 ), size = 15, color=Color(  180,0,0)},

        {pos = Vector( 29, -128.6, 16.5 ), size = 15, color=Color(180,  0,0)},
        {pos = Vector( 28, -128.8, 16.5 ), size = 15, color=Color(180,  0,0)},
        {pos = Vector( 27, -129, 16.5 ), size = 15, color=Color(  180,  0,0)},
        {pos = Vector( 26, -129.2, 16.5 ), size = 15, color=Color(180,  0,0)},
        {pos = Vector( 25, -129.4, 16.5 ), size = 15, color=Color(180,  0,0)},
   --LEFT
    {pos = Vector( -8, -130, 28 ), size = 12,    color=Color(180, 0 ,0)},
    {pos = Vector( -9, -130, 28 ), size = 12,    color=Color(180, 0 ,0)},
    {pos = Vector( -10, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -11, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -12, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -13, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -14, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -15, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -16, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -17, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -18, -130, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -19, -129.8, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -20, -129.6, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -21, -129.4, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -22, -129.2, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -23, -129, 28 ), size = 12,   color=Color(180, 0 ,0)},
    {pos = Vector( -24, -128.8, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -25, -128.6, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -26, -128.4, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -27, -128.2, 28 ), size = 12, color=Color(180, 0 ,0)},
    {pos = Vector( -28, -128, 28 ), size = 12,   color=Color(180, 0 ,0)},


    {pos = Vector( -0, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -1, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -2, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -3, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -4, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -5, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -6, -130, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -7, -130, 28 ), size = 12, color=Color(180,0,0)},

    {pos = Vector( -29, -128, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -30, -128, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -31, -128, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -32, -127.8, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -33, -127.6, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -34, -127.4, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -35, -127.2, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -36, -127, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -37, -126.8, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -38, -126.6, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -39, -126.4, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -40, -126.2, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -41, -126, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -42, -125.8, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -43, -125.6, 28 ), size = 12, color=Color(180,0,0)},
    {pos = Vector( -44, -125.4, 28 ), size = 12, color=Color(180,0,0)},

    {pos = Vector( -47, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
    {pos = Vector( -46, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
    {pos = Vector( -45, -125, 16.5 ), size = 15, color=Color(  180,0,0)},
    {pos = Vector( -44, -125.2, 16.5 ), size = 15, color=Color(180,0,0)},
    {pos = Vector( -43, -125.4, 16.5 ), size = 15, color=Color(180,0,0)},
    {pos = Vector( -42, -125.6, 16.5 ), size = 15, color=Color(180,0,0)},
    {pos = Vector( -41, -125.8, 16.5 ), size = 15, color=Color(180,0,0)},
    {pos = Vector( -40, -126, 16.5 ), size = 15, color=Color(  180,0,0)},
    {pos = Vector( -29, -128.6, 16.5 ), size = 15, color=Color(180,  0,0)},
    {pos = Vector( -28, -128.8, 16.5 ), size = 15, color=Color(180,  0,0)},
    {pos = Vector( -27, -129, 16.5 ), size = 15, color=Color(  180,  0,0)},
    {pos = Vector( -26, -129.2, 16.5 ), size = 15, color=Color(180,  0,0)},
    {pos = Vector( -25, -129.4, 16.5 ), size = 15, color=Color(180,  0,0)},
},
    Brakelight_sprites = { -- тормозные огни
    --RIGHT
    {pos = Vector( 8, -130, 28 ), size = 12,    color=Color(255, 0 ,0)},
    {pos = Vector( 9, -130, 28 ), size = 12,    color=Color(255, 0 ,0)},
    {pos = Vector( 10, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 11, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 12, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 13, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 14, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 15, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 16, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 17, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 18, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 19, -129.8, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 20, -129.6, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 21, -129.4, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 22, -129.2, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 23, -129, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( 24, -128.8, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 25, -128.6, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 26, -128.4, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 27, -128.2, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( 28, -128, 28 ), size = 12,   color=Color(255, 0 ,0)},

    {pos = Vector( 0, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 1, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 2, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 3, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 4, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 5, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 6, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 7, -130, 28 ), size = 12, color=Color(255,0,0)},

    {pos = Vector( 29, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( 30, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( 31, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( 32, -127.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 33, -127.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 34, -127.4, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 35, -127.2, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 36, -127, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( 37, -126.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 38, -126.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 39, -126.4, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 40, -126.2, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 41, -126, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( 42, -125.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 43, -125.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( 44, -125.4, 28 ), size = 12, color=Color(255,0,0)},

    {pos = Vector( 47, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( 46, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( 45, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( 44, -125.2, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( 43, -125.4, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( 42, -125.6, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( 41, -125.8, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( 40, -126, 16.5 ), size = 15, color=Color(  255,0,0)},


    {pos = Vector( 29, -128.6, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( 28, -128.8, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( 27, -129, 16.5 ), size = 15, color=Color(  255,  0,0)},
    {pos = Vector( 26, -129.2, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( 25, -129.4, 16.5 ), size = 15, color=Color(255,  0,0)},
    --LEFT
    {pos = Vector( -8, -130, 28 ), size = 12,    color=Color(255, 0 ,0)},
    {pos = Vector( -9, -130, 28 ), size = 12,    color=Color(255, 0 ,0)},
    {pos = Vector( -10, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -11, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -12, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -13, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -14, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -15, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -16, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -17, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -18, -130, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -19, -129.8, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -20, -129.6, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -21, -129.4, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -22, -129.2, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -23, -129, 28 ), size = 12,   color=Color(255, 0 ,0)},
    {pos = Vector( -24, -128.8, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -25, -128.6, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -26, -128.4, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -27, -128.2, 28 ), size = 12, color=Color(255, 0 ,0)},
    {pos = Vector( -28, -128, 28 ), size = 12,   color=Color(255, 0 ,0)},

    {pos = Vector( -1, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -2, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -3, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -4, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -5, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -6, -130, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -7, -130, 28 ), size = 12, color=Color(255,0,0)},

    {pos = Vector( -29, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( -30, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( -31, -128, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( -32, -127.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -33, -127.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -34, -127.4, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -35, -127.2, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -36, -127, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( -37, -126.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -38, -126.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -39, -126.4, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -40, -126.2, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -41, -126, 28 ), size = 12,   color=Color(255,0,0)},
    {pos = Vector( -42, -125.8, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -43, -125.6, 28 ), size = 12, color=Color(255,0,0)},
    {pos = Vector( -44, -125.4, 28 ), size = 12, color=Color(255,0,0)},

    {pos = Vector( -47, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( -46, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( -45, -125, 16.5 ), size = 15, color=Color(  255,0,0)},
    {pos = Vector( -44, -125.2, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( -43, -125.4, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( -42, -125.6, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( -41, -125.8, 16.5 ), size = 15, color=Color(255,0,0)},
    {pos = Vector( -40, -126, 16.5 ), size = 15, color=Color(  255,0,0)},

    {pos = Vector( -29, -128.6, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( -28, -128.8, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( -27, -129, 16.5 ), size = 15, color=Color(  255,  0,0)},
    {pos = Vector( -26, -129.2, 16.5 ), size = 15, color=Color(255,  0,0)},
    {pos = Vector( -25, -129.4, 16.5 ), size = 15, color=Color(255,  0,0)},
    },
    Reverselight_sprites = { -- фары заднего хода
    {pos = Vector( 39, -127, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( 38, -127.2, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( 37, -127.5, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( 36, -127.6, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( 35, -127.7, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( 34, -127.8, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( 33, -127.9, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( 32, -128, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( 31, -128.2, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( 30, -128.4, 16.5 ), size = 15, color=Color(255,  255,255)},
    --LEFT
    {pos = Vector( -39, -127, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( -38, -127.2, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( -37, -127.5, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( -36, -127.6, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( -35, -127.7, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( -34, -127.8, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( -33, -127.9, 16.5 ), size = 15, color=Color(255,255,255)},
    {pos = Vector( -32, -128, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( -31, -128.2, 16.5 ), size = 15, color=Color(255,  255,255)},
    {pos = Vector( -30, -128.4, 16.5 ), size = 15, color=Color(255,  255,255)},

    },
    Turnsignal_sprites = {
        Left = {

        {pos = Vector( -33,  122.2, 34.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.9,  122.3, 34 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.8,  122.4, 33.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.7,  122.5, 33 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.6,  122.5, 32.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.5,  122.5, 32 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.4,  122.5, 31.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.3,  122.6, 31 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.2,  122.7, 30.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.1,  122.8, 30 ), size = 8, color=Color(255,140,0)},

        {pos = Vector( -33,  122.2, 34.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.9,  122.3, 34 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.8,  122.4, 33.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.7,  122.5, 33 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.6,  122.5, 32.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.5,  122.5, 32 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.4,  122.5, 31.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.3,  122.6, 31 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.2,  122.7, 30.5 ), size = 8, color=Color(255,140,0)},
        {pos = Vector( -32.1,  122.8, 30 ), size = 8, color=Color(255,140,0)},
        },
        Right = {
            {pos = Vector(33,  122.2, 34.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.9,  122.3, 34 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.8,  122.4, 33.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.7,  122.5, 33 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.6,  122.5, 32.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.5,  122.5, 32 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.4,  122.5, 31.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.3,  122.6, 31 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.2,  122.7, 30.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.1,  122.8, 30 ), size = 8, color=Color(255,140,0)},

            {pos = Vector(33,  122.2, 34.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.9,  122.3, 34 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.8,  122.4, 33.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.7,  122.5, 33 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.6,  122.5, 32.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.5,  122.5, 32 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.4,  122.5, 31.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.3,  122.6, 31 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.2,  122.7, 30.5 ), size = 8, color=Color(255,140,0)},
            {pos = Vector(32.1,  122.8, 30 ), size = 8, color=Color(255,140,0)},
        }

    }
}
list.Set("simfphys_lights", "simfphys_sgm_tesla_semi", light_table) -- здесь тебе нужно изменить "test" на любое другое название, например "myfirstsimfcar"

local semi = {

    Name = "Tesla Semi", -- название машины в меню
    Model = "models/sentry/teslasemi.mdl", -- модель машины (в вкладке дополнения и проп авто)
    Category = "SGM Trucks", -- категория в которой будет машина
    SpawnOffset = Vector(0, 0, 0),
    SpawnAngleOffset = 90,

    Members = {
        Mass = 1000, -- масса авто

        OnSpawn = function(ent)
            ent.Exitpoints= {"exit3"}
            -- ent:SetLightsEnabled(true)
            -- ent:SetLampsEnabled(true)
            -- ent:SetFogLightsEnabled(true)
        end,

        LightsTable = "simfphys_sgm_tesla_semi", -- название light_table
        SpeedoMax = 100,

        BulletProofTires = false,

        CustomSteerAngle = 35,

        AirFriction = -3000,

        FrontWheelRadius = 18.6, -- радиус переднего колеса
        RearWheelRadius = 20, -- радиус заднего колеса

        CustomMassCenter = Vector(0, 0, 0),

        SeatOffset = Vector(0, 0, -5), -- положение водительского сидения
        FirstPersonViewPos = Vector(0, -3, 0),
        SeatPitch = 0,
        SeatYaw = -0,

        MaxHealth = 5000,
        IsArmored = false,

        EnginePos = Vector(0, 0, 0),

        PassengerSeats = { -- пассажирские места
            {pos = Vector(20, 43, 45), ang = Angle(0, 0, 0)}
        },

        ExhaustPositions = { -- позиция выхлопа
            -- {pos = Vector(99.4, 21.3, -13.5), ang = Angle(90, 0, 0)}
        },

        StrengthenSuspension = false, -- жесткая подвеска.

        FrontHeight = 9, -- высота передней подвески
        FrontWheelMass = 450,
        FrontConstant = 125000,
        FrontDamping = 5000*2,
        FrontRelativeDamping = 2500,

        RearHeight = 9, -- высота задней подвески
        RearWheelMass = 550,
        RearConstant = 125000,
        RearDamping = 2000*2,
        RearRelativeDamping = 2500,

        FastSteeringAngle = 10,
        SteeringFadeFastSpeed = 535,

        TurnSpeed = 4,

        MaxGrip = 70,
        Efficiency = 3.9,
        GripOffset = 0,
        BrakePower = 3.2, -- сила торможения

        IdleRPM = 750, -- мин. кол-во оборотов
        LimitRPM = 5000, -- макс. кол-во оборотов
        Revlimiter = false, -- Если true - Когда стрелка спидометра доходит до красного обозначения, она не проходит дальше, если false - это игнорируется
        PeakTorque = 360, -- крутящий момент
        PowerbandStart = 750, -- какие обороты на нейтральной передаче
        PowerbandEnd = 2800, -- ограничение по оборотам
        Turbocharged = false, -- турбо false = нет, true = да
        Supercharged = false, -- супер заряд
        Backfire = false, -- стреляющий выхлоп

        FuelFillPos = Vector(-48, -22, 33),
        FuelType = FUELTYPE_ELECTRIC ,
        FuelTankSize = 5000, -- maximum

        PowerBias = 0.5,

        EngineSoundPreset = -1,
        --
        snd_pitch = 1,
        snd_idle = "common/null.wav",

        snd_low = "vehicles/sgmcars/teslasemi/first.wav",
        snd_low_revdown = "common/null.wav",
        snd_low_pitch = 1,

        snd_mid = "vehicles/sgmcars/teslasemi/rev.wav",
        snd_mid_gearup = "vehicles/sgmcars/teslasemi/start.wav",
        snd_mid_geardown = "vehicles/sgmcars/teslasemi/start.wav",
        snd_mid_pitch = 1,

        snd_horn = "simulated_vehicles/horn_5.wav",

        snd_blowoff = "vehicles/sgmcars/teslasemi/throttle_off.wav",
        snd_backfire = "common/null.wav",
        --
        DifferentialGear = 0.4,
        Gears = {
            -0.65, 0, 1
        } -- кол-во передач и "мощность"
    }
}
if (file.Exists("models/sentry/teslasemi.mdl", "GAME")) then -- путь модели (".mdl")
    list.Set("simfphys_vehicles", "simfphys_sgm_tesla_semi", semi) -- изменить на люброе название(например sim_fphys_lalala)
end
