
-- 03/08/2023 Ливаю с помойного хвх

local gif = render.load_image(network.get("https://i.imgur.com/Lz6tI3v.gif"))
local alpha = 0  
local time = math.floor(globals.realtime) or 0 
local screen_media = render.screen_size()

function loading()
	local screen = render.screen_size()
	if math.floor(globals.realtime) - time > 9 then return end
 
	if globals.realtime - time > 8 then
		alpha = math.clamp(alpha - 1, 0, 70)
	else
		alpha = math.clamp(alpha + 1, 0, 70)	
	end
	
	render.rect(vector(0, 0), vector(screen.x, screen.y), color(208, 209, 218, alpha))	

	render.texture(gif, vector(screen.x/2.8, screen.y/4), vector(540, 540), color(255, 255, 255, alpha* 5.5))

end
function render_call()
    if globals.realtime > 1111 then loading() end
end
events.render:set(function() render_call() end)



local smoothy = require("neverlose/smoothy")
local enc = require("neverlose/crc32")
local gradient = require ("neverlose/gradient")
local drag_system = require("neverlose/drag_system")
local anti_aim = require("neverlose/anti_aim")
local animation = require("neverlose/animations")


local pui = require("neverlose/pui")
local base64 = require("neverlose/base64")
local clipboard = require("neverlose/clipboard")
local JSON = panorama.loadstring([[
    return {
        stringify: JSON.stringify,
        parse: JSON.parse
    };
]])()
  
local username = common.get_username()
local net = utils.net_channel()

 
 
------------------ media version ------------------
local Media_player = false
local s = network.get("https://pastebin.com/raw/27YZDwc8")
local words = {}
for word in s:gmatch("%w+") do table.insert(words, word) end

for key, val in pairs(words) do
    if common.get_username() == val then
        print_raw("\aFFD700FF You have received the premium version of vega-sync, namely the Media version")
        Media_player = true
    end
end

if Media_player then 
    local font_test = render.load_font("Arial", 62, "ba")
    local gradient_animation = gradient.text_animate("Media version", -3, {
        color(0, 135, 255), 
        color(183, 0, 255)
    })

    events.render:set(function() 
        render.rect(vector(0, 0), vector(screen_media.x, screen_media.y), color(208, 209, 218, 255))	
        render.text(font_test, vector(790, 500), color(128, 0, 255), nil, gradient_animation:get_animated_text())
        gradient_animation:animate()
    end)
end
------------------ media version ------------------


------------------------------------------------------ШРИФТЫ------------------------------------------------------
aim_ack_state = falsehiden_e
check_tp_0 = true
me = entity.get_local_player()

local check_zeus = false
local aimbot_logger = {ё}
local callbacks = {}
local client = {}
local ui_handler = {}
local defines = {}
local colors = {}
local neverlose_refs = {}
local console_color = {}
local ffi_handler = {}
local indicatorsMas = {}     
local local_player_angles = {}
local ui_handler = {}
ui_handler.configs = {}
local animations = {}
local menu = {}
local neverlose_refs = {}
ui_handler.refs = {}
ui_handler.elements = {}
local AntiBrute = {}
local molotov_wireframe = {}
local grenade_radius = {}
local assist = {}
local handling = {}
local faina = {}
local faina2 = {}

handling.vars = {
    bestenemy = 0
}

ffi.cdef[[
    void* __stdcall URLDownloadToFileA(void* LPUNKNOWN, const char* LPCSTR, const char* LPCSTR2, int a, int LPBINDSTATUSCALLBACK);
    bool DeleteUrlCacheEntryA(const char* lpszUrlName);
]]
file_downloader = {}

ffi_handler.bind_argument = function(fn, arg)
    return function(...)
        return fn(arg, ...)
    end
end



local urlmon = ffi.load 'UrlMon'
local wininet = ffi.load 'WinInet' 
local Download = function(from, to)
    wininet.DeleteUrlCacheEntryA(from)
    urlmon.URLDownloadToFileA(nil, from, to, 0,0)
end


files.create_folder('nl\\vega-sync')
Download("https://cdn.discordapp.com/attachments/1109193803102949498/1111439797697921145/smallest_pixel-7.ttf", "nl\\vega-sync\\Smallest Pixel-7.ttf")
Download("https://cdn.discordapp.com/attachments/689186327886954619/1043930890625097758/DEJAVUSANS-BOLD.TTF", 'nl\\vega-sync\\DejaVu Sans.ttf')
Download("https://cdn.discordapp.com/attachments/716691980637307001/1118202815463047239/Verdana.ttf", 'nl\\vega-sync\\Verdana.ttf')
Download("https://cdn.discordapp.com/attachments/716691980637307001/1129759395094478848/Retromoticons.ttf", 'nl\\vega-sync\\heart.ttf')


local calibri = render.load_font("Calibri Bold", 19)
local lucida_big = render.load_font("Calibri Bold", 20)
local font = render.load_font('nl\\vega-sync\\Smallest Pixel-7.ttf', 12, "o")
local font_min_d = render.load_font("nl\\vega-sync\\DejaVu Sans.ttf", 12)
local hearts = render.load_font('nl\\vega-sync\\heart.ttf', 13, 'o')


--utils.console_exec("clear")
local function textt()
    -- utils.console_exec("sv lan 1")
    -- utils.console_exec("cam_collision 0")
    utils.console_exec("cam_collision 0")
    utils.console_exec("playvol \"survival/buy_item_01.wav\" 1")
    print_raw("\aFFD700FF ██╗   ██╗███████╗ ██████╗  █████╗     ███████╗██╗   ██╗███╗   ██╗ ██████╗")
    print_raw("\aFFF700FF ██║   ██║██╔════╝██╔════╝ ██╔══██╗    ██╔════╝╚██╗ ██╔╝████╗  ██║██╔════╝")
    print_raw("\aD7FF00FF ██║   ██║█████╗  ██║  ███╗███████║    ███████╗ ╚████╔╝ ██╔██╗ ██║██║     ")
    print_raw("\aB7FF00FF ╚██╗ ██╔╝██╔══╝  ██║   ██║██╔══██║    ╚════██║  ╚██╔╝  ██║╚██╗██║██║     ")
    print_raw("\a9FFF00FF  ╚████╔╝ ███████╗╚██████╔╝██║  ██║    ███████║   ██║   ██║ ╚████║╚██████╗")
    print_raw("\a87FF00FF   ╚═══╝  ╚══════╝ ╚═════╝ ╚═╝  ╚═╝    ╚══════╝   ╚═╝   ╚═╝  ╚═══╝ ╚═════╝") 
end
utils.execute_after(0.1, textt)

common.add_notify("\ad38312FFVEGA \aa83279FFSYNC", "" .. username .. " Thanks for the purchase. Have a good game!") 

------------------------------------------------------ШРИФТЫ------------------------------------------------------


local code = 'H36XRzIfvxVm09CgGywB7kLSYhrN8ocPKl4Z/)JUeFWDq52AtdTEin1Qu+apsbMj'

function encode(data)
    return ((data:gsub('.', function(x) 
        local r, b = '', x:byte()
        for i = 8, 1, -1 do r = r .. (b % 2 ^ i - b % 2 ^ (i - 1) > 0 and '1' or '0') end
        return r;
    end) .. '0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c = 0
        for i = 1, 6 do c = c + (x:sub(i, i) == '1' and 2 ^ (6 - i) or 0) end
        return code:sub(c + 1, c + 1)
    end) .. ({ '', '==', '=' })[ #data % 3 + 1 ])
end

function decode(data)
    data = string.gsub(data, '[^' .. code .. '=]', '')
    return (data:gsub( '.', function(x)
        if (x == '=') then return '' end
        local r, f = '', (code:find(x) - 1)
        for i = 6, 1, -1 do r = r .. (f % 2 ^ i - f % 2 ^ (i - 1) > 0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c = 0
        for i = 1, 8 do c = c + (x:sub(i, i) == '1' and 2 ^ (8 - i) or 0) end
        return string.char(c)
    end))
end


local utilsTwo = {
    -- *Animação*
    animation = { 
        ["lerp"] = nil,
        ["new"]  = nil,
        ["data"]     = {  }
    },

    -- *Fontes*
    fonts = {
        ["small_pixel"] = render.load_font('nl\\vega-sync\\Smallest Pixel-7.ttf', 14, "o"),
    },

    -- *Gradiente*
    gradient = function(r1, g1, b1, a1, r2, g2, b2, a2, text)
    
        local output = ''
        local len = #text-1
        local rinc = (r2 - r1) / len
        local ginc = (g2 - g1) / len
        local binc = (b2 - b1) / len
        local ainc = (a2 - a1) / len

        for i=1, len+1 do
            output = output .. ('\a%02x%02x%02x%02x%s'):format(r1, g1, b1, a1, text:sub(i, i))
            r1 = r1 + rinc
            g1 = g1 + ginc
            b1 = b1 + binc
            a1 = a1 + ainc
        end
    
        
        return output
    
    end,


    -- *Callbacks (Usados para executar o codigo)*
    callbacks = { 

        draw = function(to_register)

            if to_register == nil then
                if _DEBUG == true then
                    print("Forgot to type-in function name when calling the callback!")

                    return

                else
                    common.add_notify("ERROR", "Check console for more info!")
                    return print_raw("Please Send the following code \afa7373" .. enc.crc32("draw_error") .. "\aFFFFFFFF in this dm\afa7373 $omeone#4103")

                end
            
            end

            events.render:set(to_register)

        end,

        
    },

}

local function gradient_text(r1, g1, b1, a1, r2, g2, b2, a2, text, T)
     
    local output = ''
    local len = #text-1
    local rinc = (r2 - r1) / len
    local ginc = (g2 - g1) / len
    local binc = (b2 - b1) / len
    local ainc = (a2 - a1) / len
 

    for i=1, len+1 do
        output = output .. ('\a%02x%02x%02x%02x%s'):format(r1, g1, b1, a1, text:sub(i, i))
        r1 = r1 + rinc
        g1 = g1 + ginc
        b1 = b1 + binc
        a1 = a1 + ainc
    end


    return output

end


local ffi_helpers = {
    _link = function (link)
        local steam_overlay_API = panorama.SteamOverlayAPI
        local open_external_browser_url = steam_overlay_API.OpenExternalBrowserURL
        open_external_browser_url(link)
    end,
}


function grad_label(color1, color2, speed, grp, text)
    local gradient_animation = gradient.text_animate(text, speed, {
        color1,
        color2
    })
    
    grp:label(gradient_animation:get_animated_text())
    gradient_animation:animate()
end

local funcs = {
    killsays = {
        "шо ты голова, упала да)", "1", "1 нищий", "сосать сын фермера", "Ты сдох by VEGA-SYNC", "гетни vega-sync луа", "лежать, сын автобусной проститутки", "пиу пау", "тише нищи", "Еблан? Куда ты лезешь", "бездарь", "NIGGA", "О, сдох бездарь", "Так так, хуесос снова упал", "На колени сучка", "Уебал тебя арматурой", "На по бошке идиот", "Тебе мама не говорила что ты уебан?", "ой ой ой, прости, не думал что ты такой слабый", "ха тьфу, на те в ебало блять", "Быстро в будку пёс", "Умер? Ну не знаю купи луа VEGA-SYNC и не будь хуесосом", "Успокойся, всего лишь сдох как тварь", "Мда.. Выглядишь как клоп", "емае, опять на коленки посадили шлюху", "ебать ты слабый", "уфффф", "упала нищая", "сосать + лежать", "насрал в панамку", "мусор ливни с сервера", "1 свинья", "ебать тебя унесло", "ой нищий упал щас скорую вызовем", "поешь говна", "упала помойка", "получи по горбине, псина", "1 свинья", "нехуй на жопе сидеть", "поешь говнеца", "1", "опа, попуск попустился, ничего нового", "не почувствовал", "1 сын обезьяны", "опа, а че это мы упали", "опа, помойка не вывезла", "уффф какого же ляпаса дал", "изи хуесос", "пам парам", "на фд сел - говна поел"
    },

    deathsays = {
        "лаки ебаный", "я бы сказал тебе застрелиться, но боюсь ты промахнешься", "я твою маму ебал", "ШЛЮХАААААААААА ТУПАЯ", "да ты че, БЛЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯЯТЬ", "мдаа, слабый", "я на очке твоей матери форсаж 15 снимал", "ахахахх онли толпой", "ебать ты конечно слабый", "повезло", "повезло уебану", "челу везет", "ебать везет слабому", "повезло псине", "пошли 1x1 чмо ебаное", " пошли 1x1 попуск", "пошли 1х1 долбаеб тупоголовый", "кв пойдешь или слит?", "аахах ты даже 1x1 не вывезешь", "1x1 или скаред?", "повезло псине", "ахахх какой эе лаки"
    }
}



local cvarSettings = {
    {cvar = {cvar.r_shadows, cvar.cl_csm_static_prop_shadows, cvar.cl_csm_shadows, cvar.cl_csm_world_shadows, cvar.cl_foot_contact_shadows, cvar.cl_csm_viewmodel_shadows, cvar.cl_csm_rope_shadows, cvar.cl_csm_sprite_shadows, cvar.cl_foot_contact_shadows}},
    {cvar = {cvar.r_drawparticles, cvar.cl_detail_multiplier}},
    {cvar = {cvar.r_eyesize, cvar.r_eyeshift_z, cvar.r_eyeshift_y, cvar.r_eyeshift_x, cvar.r_eyemove, cvar.r_eyegloss}},
    {cvar = {cvar.r_drawtracers_firstperson, cvar.r_drawtracers}},
    {cvar = {cvar.mat_postprocess_enable}},
    {cvar = {cvar.fog_enable_water_fog}},
    {cvar = {cvar.m_rawinput, cvar.cl_bob_lower_amt}},
    {cvar = {cvar.cl_disablefreezecam, cvar.cl_freezecampanel_position_dynamic, cvar.cl_freezecameffects_showholiday}},
    {cvar = {cvar.r_drawropes, cvar.r_drawsprites, cvar.func_break_max_pieces, cvar.mat_drawwater}},
    {cvar = {cvar.cl_disablehtmlmotd, cvar.r_dynamic, cvar.cl_autohelp, cvar.r_drawdecals, cvar.muzzleflash_light}}
}


------------------------------------------------------ИНТЕРФЕЙС------------------------------------------------------
local screen = render.screen_size()
-- положения кондишинала
local aa_states = {ui.get_icon("globe").."  Global", ui.get_icon("person").."  Standing", ui.get_icon("person-walking").."  Moving", ui.get_icon("person-hiking").."  Slowwalk", ui.get_icon("person-seat").."  Crouch", ui.get_icon("plane").."  Air", ui.get_icon("wheelchair-move").."  Air+Crouch"}
local aa_states2 = {ui.get_icon("globe"), ui.get_icon("person"), ui.get_icon("person-walking"), ui.get_icon("person-hiking"), ui.get_icon("person-seat"), ui.get_icon("plane"), ui.get_icon("wheelchair-move")}
local AirStrefe = ui.find("Miscellaneous", "Main", "Movement", "Air Strafe")


local refs = {
    HidenHead = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Hidden"),
    offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
    yawmodifier = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
    modifier_offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
    leftlimit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
    rightlimit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
    options_by = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
    options = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"),
    desync_freestanding = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding"),
    hit_marker_ui = ui.find("Visuals", "World", "Other", "Hit Marker"),
    duck_spam_s = ui.find("Miscellaneous", "Main", "Movement", "Air Duck"),
    duck_spam_type = ui.find("Miscellaneous", "Main", "Movement", "Air Duck", "Mode"),
    isBA = ui.find("Aimbot", "Ragebot", "Safety", "Body Aim"),
    isSP = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points"),
    isDT = ui.find("Aimbot", "Ragebot", "Main", "Double Tap"),
    isAP = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
    isSW = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
    isHS = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"),
    isFS = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding"),
    Hs_type = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options"),
    extend_bactrack = ui.find("Aimbot", "Ragebot", "Main", "Enabled", "Extended Backtrack"),
    dt_tp_menu = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Immediate Teleport"),
    quick_dt_menu = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Quick-Switch"),
    hitboxes_menu = ui.find("Aimbot", "Ragebot", "Selection", "Hitboxes"),
    head_scale = ui.find("Aimbot", "Ragebot", "Selection", "Multipoint", "Head Scale"),
    body_scale = ui.find("Aimbot", "Ragebot", "Selection", "Multipoint", "Body Scale"),
    hitchance_menu = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance"),
    hitchance_dt_menu = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance", "Double Tap"),
    fake_latency = ui.find("Miscellaneous", "Main", "Other", "Fake Latency"),
    slow_walk_menu = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
    auto_peek = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
    fake_duck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck"),
    hide_shots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"),
    safe_points_ui = ui.find("Aimbot", "Ragebot", "Safety", "Safe Points"),
    head_scale_ui = ui.find("Aimbot", "Ragebot", "Selection", "Multipoint", "Head Scale"),
    body_scale_ui = ui.find("Aimbot", "Ragebot", "Selection", "Multipoint", "Body Scale"),
    min_damage_ui = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage"),
    AA = ui.find("Aimbot", "Anti Aim", "Angles", "Enabled"),
    Yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"),
    YawOffset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
    YawModifer = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
    YawModiferOffset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
    BodyYawSwitch = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
    BodyYawSlideL = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
    BodyYawSlideR = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
    BodyYawJitter = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"),
    BodyYawInvert = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Inverter"),
    invert = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Inverter"),
    fs_bodyyaw = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding"),
    FakeLag = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Enabled"),
    fl = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Limit"),
    fl_vari = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Variability"),
    Pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"),
    dt = ui.find("Aimbot", "Ragebot", "Main", "Double Tap"),
    dt_lag = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options"),
    dt_lag_limit = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Fake Lag Limit"),
    dt_tp = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Immediate Teleport"),
    dt_qk_switch = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Quick-Switch"),
    dmg = ui.find("Aimbot", "Ragebot", "Selection", "Min. Damage"),
    hitchance_a = ui.find("Aimbot", "Ragebot", "Selection", "Hit Chance"),
    astop = ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop"),
    asoptions = ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop", "Options"),
    asdtoptions = ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop", "Double Tap"),
    aimbot_ui = ui.find("Aimbot", "Ragebot", "Main", "Enabled"),
}


aa_refs = {
    pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"),
    yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"),
    base = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Base"),
    offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
    backstab = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Avoid Backstab"),
    yaw_modifier = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
    modifier_offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
    body_yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
    inverter = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Inverter"),
    left_limit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
    right_limit = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
    options = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Options"),
    desync_freestanding = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Freestanding"),
    slowwalk = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
    fakeduck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck"),
}

local cheat = {
    -- *Referencias*
    ref = {
        doubletap = ui.find("aimbot", "ragebot", "main", "double tap"), 
        hideshots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"), 
        fakeduck = ui.find("Aimbot", "Anti Aim", "Misc", "Fake Duck") ,
        delayshot = ui.find("Aimbot", "Ragebot", "Selection", "Global", "Min. Damage", "Delay Shot"),
        pitch = ui.find("Aimbot", "Anti Aim", "Angles", "Pitch"),
        offset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Offset"),
        yaw = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw"),
        modifier = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier"),
        moffset = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw Modifier", "Offset"),
        limit1 = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Left Limit"),
        limit2 = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw", "Right Limit"),
        freestand = ui.find("Aimbot", "Anti Aim", "Angles", "Freestanding"),
        antistab = ui.find("Aimbot", "Anti Aim", "Angles", "Yaw", "Avoid Backstab"),
        bodyyaw = ui.find("Aimbot", "Anti Aim", "Angles", "Body Yaw"),
        roll = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles"),
        rollval = ui.find("Aimbot", "Anti Aim", "Angles", "Extended Angles", "Extended Roll"),
        airstrafe = ui.find("Miscellaneous", "Main", "Movement", "Air Strafe"),
        legmov = ui.find("Aimbot", "Anti Aim", "Misc", "Leg Movement"),
        slowwalk = ui.find("Aimbot", "Anti Aim", "Misc", "Slow Walk"),
        fakelag = ui.find("Aimbot", "Anti Aim", "Fake Lag", "Limit"),
        asoptions = ui.find("Aimbot", "Ragebot", "Accuracy", "Auto Stop", "Options"),
        asdtoptions = ui.find("Aimbot", "Ragebot", "Accuracy", "Auto Stop", "Double Tap")
    } 
}

-- local str = 'VEGA~SYNC'

local iconexport = ui.get_icon("inbox-out")
local iconimport = ui.get_icon("inbox-in") 
local icondefault = ui.get_icon("folder-gear")
local iconstar = ui.get_icon("star")

local main_tab = ui.get_icon("house")
local information_tab = ui.get_icon("square-question")
local anti_aims_tab = ui.get_icon("uniform-martial-arts")
local other_tab = ui.get_icon("circle-ellipsis")
local builder_cfg_tab = ui.get_icon("sliders")
local visuals_tab = ui.get_icon("hexagon-image")
local world_tab = ui.get_icon("earth-americas")
local enemy_tab = ui.get_icon("person")
local modelchang_tab = ui.get_icon("user-bounty-hunter")




local General_info = ui.create("⚙️ General", information_tab.." INFORMATION")
local General_expl = ui.create("⚙️ General", main_tab.." Exploits") ------ AIMBOT
local General_info_cfg = ui.create("⚙️ General", ui.get_icon("memo-circle-info").." CFG")
local General_other = ui.create("⚙️ General", main_tab.." Other") ------ AIMBOT


grad_label(color(211, 131, 18), color(168, 50, 121), 0.05, General_info, "                                 𝒱ℰ𝒢𝒜-𝒮𝒴𝒩𝒞               \n")


General_info:texture(render.load_image(network.get("https://i.imgur.com/jgTguf4.jpg"), vector(500, 500)), vector(265, 265), 'f')

General_info:label("\aC6D0F2FF                            Welcome \a288DFEFF"..common.get_username().."\n\aC6D0F2FF                            Lua Version:\aE20FF8FF 4.0.0\n")


-- General_info:label("\n\aC6D0F2FFThank you very much for the purchase. If you have any questions about lua, you can go to our Discord channel. You can also find cfg on lua there. Желаю пены на швш, гудлак в общем))\n\n")

icondc = ui.get_icon("headset")
General_info:button(icondc.. "  Discord  ",function ()
    ffi_helpers._link('https://discord.gg/7DV6kyTmVG')
end)
General_info:button( ui.get_icon("youtube").. "  YouTube  ",function ()
    ffi_helpers._link('https://www.youtube.com/channel/UCl-ty-KfEUzRNDbjt1ZGfIA')
end)



adaptive_back = General_other:switch(ui.get_icon("reply").."  Adaptive Backtrack", true)

fast_movement_stairs = General_other:switch(ui.get_icon("stairs").."  Fast Ladder", true)
fast_movement_stairs:tooltip("🚨 Fast movement on the stairs")

avoid_collisions_s = General_other:switch(ui.get_icon("wheelchair-move").."  Avoid Collisions", true)
avoid_collisions_s:tooltip("🚨 Eliminates collision with walls")


-- General_mov = ui.create("⚙️ General", "Trashtalk") ------ AIMBOT    
trashtalk = General_other:switch(ui.get_icon("person-harassing").."  Trashtalk", false) 
death = trashtalk:create()
on_death = death:switch("Death", false) 
on_kill = death:switch("Kill", false) 

custom_trash_switch = death:switch("Custom Trashtalk", false) 
custom_trash_text = death:input("Text", 'снова упал')
custom_trash_text:visibility(false)


-- dis_fl_on_shot = General_other:switch(ui.get_icon("toggle-off").."  Shutdown when fired", false) 
-- dis_fl_on_shot:tooltip("🚨 Disables Fakelag and Desync when fired")

anti_defensive_ui = General_expl:switch("\aA3D92BF7"..ui.get_icon("shield-virus").."  Anti Defensive", false) 
anti_defensive_ui:tooltip("🚨 Sets cl_lagcompensation 0 right in the game. It is advisable not to use it with a high ping or for getting into the head.\n\n\aFF0000A5 When the function is enabled, backtrack does not work!!")

-- aimbot_fix = General_expl:switch("Aimbot Fix [TEST]", false) 

-- safe_head_fire = General_expl:switch("\a13AEEBFF"..ui.get_icon("hat-witch").."  Safe Head Exploit", false) 
-- safe_head_fire_c = safe_head_fire:create()
-- safe_head_fire_type = safe_head_fire_c:combo("Type", {"FakeLag", "Fast Fire", "Break LC"})
-- safe_head_fire:tooltip("🚨 Hides his head at the right moments\n\nDoubletap will not work on automatic weapons")

teleportinair = General_expl:switch("\a13AEEBFF"..ui.get_icon("transporter-1").."\aFFFFFFFF  Teleport Exploit", false)
teleportinair_c = teleportinair:create()
teleportinair_type = teleportinair_c:combo("Type", {"DoubleTap", "HS (Break LC)"})
teleportinair:tooltip("🚨 Automatically disables double tap.")

auto_rs = General_other:switch(ui.get_icon("star-half").."  Auto !rs", false)
auto_rs_int = auto_rs:create()
auto_rs_slider = auto_rs_int:slider("If KD less than", 0.01, 4000, 4, 0.01)
auto_rs:visibility(false)


air_mode = General_other:switch(ui.get_icon("gear")..'  Hitchance Mode', false)
air_hit_s = air_mode:create()
air_hit_combo = air_hit_s:selectable("Mode", {"Noscope", "Air"})
air_hit_slider_hitboxes = air_hit_s:selectable("Hitboxes in Air", {"Head", "Chest", "Stomach", "Arms", "Legs", "Feet"})
air_hit_slider = air_hit_s:slider("In Air", 1, 100, 30)
noscope_hit_slider = air_hit_s:slider("Noscope", 1, 100, 30)

-- astop_ui = General_other:selectable("Autostop", {"Early", "In Air", "Full Stop", "Move Between Shots"})
-- astop_ui:set("Move Between Shots")
-- -- astop_ui:visibility(false)

jump_scout_fix = General_other:switch(ui.get_icon("person-ski-jumping")..'  Jump Scout Fix', false)


when_enemy_zeus = General_other:switch(ui.get_icon("bolt")..'  When enemy has Zeus', false)
when_enemy_zeus_c = when_enemy_zeus:create()
when_enemy_zeus_combo = when_enemy_zeus_c:selectable("Action", {"SafePoints set Default", "Set Multipoints", "Set Damage"})
when_enemy_zeus_mult_head = when_enemy_zeus_c:slider("Head", 2, 100, 1)
when_enemy_zeus_mult_body = when_enemy_zeus_c:slider("Body", 2, 100, 1)
when_enemy_zeus_mind = when_enemy_zeus_c:slider("Damage", 1, 120, 1)
when_enemy_zeus_switch = when_enemy_zeus_c:switch("Auto Switch")
when_enemy_zeus_dist = when_enemy_zeus_c:slider("Distance", 10, 2000, 500)

when_enemy_zeus_mult_head:visibility(false)
when_enemy_zeus_mult_body:visibility(false)
when_enemy_zeus_mind:visibility(false)
when_enemy_zeus:tooltip("🚨 Do certain actions when the enemy has zeus in his hands")



when_enemy_weapon = General_other:switch(ui.get_icon("person-rifle")..'  When enemy has Gun', false)
when_enemy_weapon_c = when_enemy_weapon:create()
when_enemy_weapon_gun = when_enemy_weapon_c:selectable("Guns", {"Knife", "Glock", "Deagle", "R8", "Tec-9", "USP", "P2000", "AK-47", "M4A4", "M4A1-S", "Scout", "AWP", "G3SG1", "SCAR"})
when_enemy_weapon_dist = when_enemy_weapon_c:slider("Distance(units)", 2, 6000, 1)

when_enemy_weapon_combo = when_enemy_weapon_c:selectable("Action", {"SafePoints set Default", "Set Multipoints", "Set Damage", "Set Delay Shot"})

when_enemy_weapon_mult_head = when_enemy_weapon_c:slider("Head", 2, 100, 1)
when_enemy_weapon_mult_body = when_enemy_weapon_c:slider("Body", 2, 100, 1)

when_enemy_weapon_mind = when_enemy_weapon_c:slider("Damage", 1, 120, 1)

when_enemy_weapon_mult_head:visibility(false)
when_enemy_weapon_mult_body:visibility(false)
when_enemy_weapon_mind:visibility(false)
when_enemy_weapon:tooltip("🚨 Perform certain actions when the weapon is in the hands of the enemy")
when_enemy_weapon:visibility(false)




-------------------------------------------------- AA --------------------------------------------------
AntiAimA = ui.create("🥋 AntiAim", anti_aims_tab.." Anti-Aims") ------ AA Presets
AAon = AntiAimA:switch(ui.get_icon("bullseye-arrow").."  Enable AA", false)
------------Пресеты-----------
presets = AntiAimA:combo("Presets AA", {"Disable", "Unhittable old", "Unhittable new", "God AA", "Test Jitter", "Low Desync"})
presets:visibility(false)


enable_builder = AntiAimA:switch("Enable Builder", false)
manual_yaw_base = AntiAimA:combo("Manual", {"Disabled", "Forward", "Left", "Right"})
condition = AntiAimA:combo("AA States", aa_states)
enable_builder:visibility(false)
manual_yaw_base:visibility(false)

AntiAimO = ui.create("🥋 AntiAim", other_tab.." Other") ------ AA other
------------Deff air AA-----------
zeus_aa = AntiAimO:switch(ui.get_icon("raygun").."  Disabling DT with Zeus", true)
zeus_aa:tooltip("🚨 Automatically disables DT when in the hands of Zeus")
zeus_aa:visibility(true)

hiden_exp = AntiAimO:switch(ui.get_icon("shield-halved").."  Defensive AA", true)
hiden_exp_type_s = hiden_exp:create()
hiden_exp_type = hiden_exp_type_s:combo("Type", {"Up Jitter", "Down 3 Way", "Random", "Custom"})
-- hiden_exp_type:visibility(false)

hiden_exp_pitch_type = hiden_exp_type_s:combo("Pitch Type", {"Static", "Jitter", "Safety Jitter", "3-Way", "Random"})
hiden_exp_pitch_type:visibility(false)
hiden_exp_pitch1_slider = hiden_exp_type_s:slider("Pitch", -89, 89, 0)
hiden_exp_pitch1_slider:visibility(false)
hiden_exp_pitch2_slider = hiden_exp_type_s:slider("Pitch 2", -89, 89, 0)
hiden_exp_pitch2_slider:visibility(false)
hiden_exp_pitch3_slider = hiden_exp_type_s:slider("Pitch 3", -89, 89, 0)
hiden_exp_pitch3_slider:visibility(false)

hiden_exp_yaw_type = hiden_exp_type_s:combo("Yaw Type", {"Static", "Jitter", "Safety Jitter", "3-Way", "Spin", "Random"})
hiden_exp_yaw_type:visibility(false)
hiden_exp_yaw1_slider = hiden_exp_type_s:slider("Yaw", -179, 179, 0)
hiden_exp_yaw1_slider:visibility(false)
hiden_exp_yaw2_slider = hiden_exp_type_s:slider("Yaw 2", -179, 179, 0)
hiden_exp_yaw2_slider:visibility(false)
hiden_exp_yaw3_slider = hiden_exp_type_s:slider("Yaw 3", -179, 179, 0)
hiden_exp_yaw3_slider:visibility(false)
-- hiden_exp:tooltip("🚨Hides his head")
hiden_exp:visibility(false)


breal_lc = AntiAimO:switch(ui.get_icon("plane-departure").."  Force Break LC in Air", true)
breal_lc:tooltip("🚨Automatically enables Defensive only in Air")
breal_lc:visibility(false)

peek_fake_always = AntiAimO:switch(ui.get_icon("backward")..'  Auto Invert Fake', false)
peek_fake_always:tooltip("🚨 Always turns fake to the enemy.\n\n\a0080FFFF A more detailed description of the function can be found on our YouTube channel")
peek_fake_always:visibility(false)

-- fk_60_ticks = AntiAimO:switch(ui.get_icon("people-pants")..'  FakeLag 60 Ticks', false)
-- fk_60_ticks_c = fk_60_ticks:create()
-- fk_60_ticks_slider = fk_60_ticks_c:slider("Limit", 1, 60, 14)
-- fk_60_ticks:visibility(false)

smart_fk = AntiAimO:switch(ui.get_icon("server")..'  Smart FakeLag', false)
smart_fk_c = smart_fk:create()
smart_fk_s1 = smart_fk_c:slider("To the Enemy", 1, 13, 13)
smart_fk_s2 = smart_fk_c:slider("From enemy", 1, 13, 1)
smart_fk:tooltip("🚨 During the rails, the value of FK 'Then the Enemy' increases, in other cases it decreases to 'From enemy'.\n\n\a0080FFFF A more detailed description of the function can be found on our YouTube channel")
smart_fk:visibility(false)

lerp_desync = AntiAimO:switch(ui.get_icon("backward")..'  Lerp desync', false)
lerp_desync:tooltip("🚨 Smoothly increases desync from 0 to 60")
lerp_desync:visibility(false)


fluc_fk = AntiAimO:switch("Fluctuate in Air", true)
fluc_fk:visibility(false)


AntiAimCfg = ui.create("🥋 AntiAim", builder_cfg_tab.." Configuration Builder") ------ AA other
presets_builder = AntiAimCfg:combo("Presets Builder", {"Disabled", "Soon"})

Anti_Brute_Cfg = ui.create("🥋 AntiAim", builder_cfg_tab.." Configuration Anti-Bruteforce") ------ Anti brute
presets_Anti_Brute = Anti_Brute_Cfg:combo("Presets Anti-Bruteforce", {"Disabled", "Preset 1"})
Anti_Brute_Cfg:visibility(false)

zatichka_UI = ui.create("🥋 AntiAim", " Nothing") ------ 0
presets_zatichka = zatichka_UI:switch("Hi!", false)
presets_zatichka:tooltip("🚨 A switch that does nothing))")

Anti_brute_UI = ui.create("🥋 AntiAim", " Anti-Bruteforce") ------ Anti brute
maxphases = 10
currentphase = 1
abtime = -5
AntiBrute["Enable"] = Anti_brute_UI:switch("Enable Anti-Bruteforce")
AntiBrute["Reset time"] = Anti_brute_UI:slider("Reset time",1, 10, 1)
AntiBrute["Phases"] = Anti_brute_UI:slider("Phases",1, maxphases, 1)
for i = 1, maxphases do  
	AntiBrute[""..i.."Phase"] = Anti_brute_UI:label("Brute Phase #"..i.."")
	AntiBrute[""..i.."Phase group"] = AntiBrute[""..i.."Phase"]:create()
    AntiBrute[""..i.."Phase Yaw L"] = AntiBrute[""..i.."Phase group"]:slider("Yaw Left", -180, 180, 0)
    AntiBrute[""..i.."Phase Yaw R"] = AntiBrute[""..i.."Phase group"]:slider("Yaw Right", -180, 180, 0)
	
	AntiBrute[""..i.."Phase Jitter type"] = AntiBrute[""..i.."Phase group"]:combo("Jitter Modifier", "Disabled", "Center", "Offset", "Random", "Spin")
	AntiBrute[""..i.."Phase Jitter"] = AntiBrute[""..i.."Phase group"]:slider("Jitter Offset", -180, 180, 0)
	AntiBrute[""..i.."Phase Options"] = AntiBrute[""..i.."Phase group"]:selectable("Options", "Avoid Overlap", "Jitter", "Randomize Jitter")
	AntiBrute[""..i.."Phase Left"] = AntiBrute[""..i.."Phase group"]:slider("Left Limit", 0, 60, 0)
	AntiBrute[""..i.."Phase Right"] = AntiBrute[""..i.."Phase group"]:slider("Right Limit", 0, 60, 0)
end





V_misc = ui.create("👁️ Visuals", other_tab.." Misc") ------ Visuals Misc

HUD = V_misc:switch(ui.get_icon("fill-drip").."  Sidebar Color", true)
HUD_c1 = HUD:create()
HUD_color1 = HUD_c1:color_picker("Color 1", color(211,131,18))
HUD_c2 = HUD:create()
HUD_color2 = HUD_c2:color_picker("Color 2", color(168,50,121))
HUD_s = HUD:create()
HUD_speed = HUD_s:slider("Speed", 1, 25, 10, 0.1)

fps_boost = V_misc:switch(ui.get_icon("binary").."  FPS Boost")
fps_boost_c = fps_boost:create()
fps_boost_list = fps_boost_c:list("Select Option", {"Low", "Medium", "High"})

clan_tag = V_misc:switch(ui.get_icon("users-medical").."  Clan Tag", true)  -- ClanTag

rainbow = V_misc:switch(ui.get_icon("paintbrush").."  Rainbow Bar", true)
rainbow_c = rainbow:create()
rainbow_c_s = rainbow_c:switch("Rainbow")
rainbow_c_color1 = rainbow_c:color_picker("Color 1", color(0, 191 , 255))
rainbow_c_color2 = rainbow_c:color_picker("Color 2", color(0, 88 , 255))

indicators = V_misc:switch(ui.get_icon("display-medical").."  Indicators", true) -- Indicators
indicators_t = indicators:create()
indicators_type = indicators_t:combo("Type", {"Vega-Sync", "Small", "Small 2", "Small 3", "Skeet"})
indicators_c = indicators:create()
indicators_color = indicators_c:color_picker("Color", color(0, 255 , 24))

indicators_color_t1 = indicators_c:color_picker("Color 1", color(0, 191 , 255))
indicators_color_t2 = indicators_c:color_picker("Color 2", color(0, 88 , 255))
indicators_color_t1:visibility(false)
indicators_color_t2:visibility(false)


local enable_w = V_misc:switch(ui.get_icon("window-flip").."  Watermark")
local enable_group = enable_w:create()
-- local text_name = "VEGA-SYNC"
local uiclr = enable_group:color_picker("Color 1", color(17, 106, 237,255))
local animcolor = enable_group:color_picker("Color 2", color(34,178,243,255))

keybinds_switch = V_misc:switch(ui.get_icon("keyboard").."  Keybinds")
keybinds_s_gear = keybinds_switch:create()
keybinds_color = keybinds_s_gear:color_picker("Color", color(17, 86, 237,255))
keybinds_pos_x = keybinds_s_gear:slider("keybind_pos_x", 0, render.screen_size().x, 120)
keybinds_pos_y = keybinds_s_gear:slider("keybind_pos_y", 0, render.screen_size().y, 200)
keybinds_pos_x:visibility(false)
keybinds_pos_y:visibility(false)

min_d = V_misc:switch(ui.get_icon("gauge-simple-min").."  Min damage indicator")
min_d_x = min_d:create()
min_d_color = min_d_x:color_picker("Color", color(255, 255, 255))

scope = V_misc:switch(ui.get_icon("crosshairs").."  Custom Zoom") 
scope_c = scope:create()
scope_color = scope_c:color_picker("Color", color(4, 122 , 226))
scope_l = scope:create()
scope_length = scope_l:slider("Length", 0, 360, 109, 1)
scope_g = scope:create()
scope_gap = scope_g:slider("Gap", 0, 100, 9, 1)


velwarning = V_misc:switch(ui.get_icon("triangle-exclamation").."  Velocity Warning")
velwarning_c = velwarning:create()
m_color = velwarning_c:color_picker("Color", color(78, 104, 244, 255))
img_v_color = velwarning_c:color_picker("Color Image", color(89, 127, 225, 255))
img_v_select = velwarning_c:combo("Image", {"Running Model", "Shit", "Trololo", "Arrow", "Disabled"})





V_visuals = ui.create("👁️ Visuals", visuals_tab.." Visuals")   ---------------- Visuals Visuals
killeffect_s = V_visuals:switch(ui.get_icon("skull-crossbones").."  Kill Effect", true)
killeffect_t = killeffect_s:create()
killeffect_time = killeffect_t:slider("Speed", 1, 50, 23, 1)

aimbot_log = V_visuals:switch(ui.get_icon("bullseye-arrow").."  Aimbot Logger") -- aimbot logger
aimbot_log_select = aimbot_log:create()
log_select = aimbot_log_select:selectable("Settings", {"Console", "Screen", "Notify"})
aimbot_log_color_hit = aimbot_log:create()
log_color_hit = aimbot_log_color_hit:color_picker("Hit Color", color(0, 255, 24, 165))
aimbot_log_color_miss = aimbot_log:create()
log_color_miss = aimbot_log_color_miss:color_picker("Miss Color", color(255, 0, 0, 165))



hit_marker = V_visuals:switch(ui.get_icon("heart-circle-minus").."  Hit Marker") -- aimbot logger
hit_marker_sett = hit_marker:create()
hit_marker_select = hit_marker_sett:selectable("Settings", {"Text", "Icon"})
hit_marker_color_text = hit_marker:create()
hit_marker_color_text_M = hit_marker_color_text:color_picker("Color", color(0, 255, 24, 165))


console_color_s = V_visuals:switch(ui.get_icon("rectangle-terminal").."  Console Color")
console_c = console_color_s:create()
console_color_picker = console_c:color_picker("Color", color(122, 26, 144, 112))

revolver = V_visuals:switch(ui.get_icon("gun-squirt").."  Revolver Helper", false) 

back_chams = V_visuals:switch(ui.get_icon("mars-double").."  Backtrack Chams", true)
back_chams_c1 = back_chams:create()
back_chams_color1 = back_chams_c1:color_picker("Color 1", color(103, 13, 205, 124)) --Color 1
back_chams_c2 = back_chams:create()
back_chams_color2 = back_chams_c2:color_picker("Color 2", color(232, 122, 13, 157)) --Color 2


arrows = V_visuals:switch(ui.get_icon("arrows-left-right")..'  Arrows', false)
arrow = color(103, 13, 205)
inverter_a = arrows:create()
inverter = inverter_a:color_picker("Invert", color(2, 81, 255, 255)) 
distance_arrow_a = arrows:create()
distance_arrow = distance_arrow_a:slider("Distance", 1, 150, 30)


molotov_wireframe_s = V_visuals:switch(ui.get_icon("fire-smoke").."  Molotov Wireframe", false)


nade_radius_s = V_visuals:switch(ui.get_icon("circle-dashed").."  Nade radius", false)
nade_radius_cre = nade_radius_s:create()
nade_radius_select = nade_radius_cre:selectable("Nades", {"Molotov", "Smoke"})
nade_radius_molotov_enemy_c = nade_radius_cre:color_picker("Enemy Molotov Color", color(255, 0, 0, 150)) 
nade_radius_molotov_team_c = nade_radius_cre:color_picker("Team Molotov Color", color(0, 255, 112, 150))
nade_radius_smoke_c = nade_radius_cre:color_picker("Smoke Color", color(71, 71, 249, 150))


shared_icon = V_visuals:switch(ui.get_icon("share-nodes").."  Shared Icon")
------------------------------------------------------ИНТЕРФЕЙС------------------------------------------------------


------------------------------------------------------ПРОЧЕЕ------------------------------------------------------



neverlose_refs.doubletap = ui.find("Aimbot", "Ragebot", "Main", "Double Tap")
neverlose_refs.doubletap_config = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options")
neverlose_refs.doubletap_fakelag = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Fake Lag Limit")

neverlose_refs.hideshots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots")
neverlose_refs.hideshots_config = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options")




ffi_handler.engine_client = ffi.cast(ffi.typeof("void***"), utils.create_interface("engine.dll", "VEngineClient014"))
ffi_handler.console_is_visible = ffi_handler.bind_argument(ffi.cast("bool(__thiscall*)(void*)", ffi_handler.engine_client[0][11]), ffi_handler.engine_client)


defines.screen_size = render.screen_size()



defines.colored_text = function(...)
    local data = {...}
    local str = ""

    for k, v in pairs(data) do
        local text = v[1]
        local clr = ""

        if text:find("icon_") then
            text = ui.get_icon(text:gsub("icon_", ""))
        end

        text = text or "nil"

        if v[2] == nil then
            v[2] = "DEFAULT"
        end

        if type(v[2]) == "userdata" then
            v[2] = v[2]:to_hex()
            clr = ("\a%s"):format(v[2])
        else
            clr = "\a" .. v[2]
        end

        str = str .. clr .. text
    end

    return str
end



callbacks.discord_error = false
callbacks.error_logged = false
callbacks.last_error_log = -1


client.log_error = function(message)
    local error_message = message:gsub("\a.{6}", "")

    if not callbacks.discord_error then
        callbacks.discord_error = true
    end

    if not callbacks.error_logged then
        callbacks.error_logged = true
        callbacks.last_error_log = globals.realtime

        print_raw(error_message)
        print_dev(error_message)
        utils.console_exec("play resource\\warning.wav")
    end
end

local safecall = function(name, report, f)
    return function(...)
        local s, ret = pcall(f, ...)

        if not s then
            local retmessage = name .. " : " .. ret:gsub(".{6}", "")

            if report then
                client.log_error(retmessage)
            end

            return false, retmessage
        else
            return ret, s
        end
    end
end

callbacks.register = function(event, name, fn)
    events[event]:set(safecall(name, true, fn))
end


colors.black = color(0, 255)
colors.white = color(255)
colors.main = color(255, 120, 30, 255)
colors.link_active = ui.get_style("Link Active")

getmetatable(color()).override = function(c, k, n)
    local cl = c:clone()

    cl [k] = n

    return cl
end



math.difference = function (num1, num2)
    return math.abs(num1 - num2)
end

math.color_lerp = function(start, end_pos, time)
    local frametime = globals.frametime * 100
    time = time * math.min(frametime, math.max_lerp_low_fps)
    return start:lerp(end_pos, time)
end

math.max_lerp_low_fps = (1 / 45) * 100

math.lerp = function(start, end_pos, time)
    return start + (end_pos - start) * time
end


aimbot_logger.data = {}
aimbot_logger.shots = 0
aimbot_logger.count = {[1] = "st", [2] = "nd", [3] = "rd"}
aimbot_logger.hitboxes = {"Generic","Head", "Chest", "Stomach","Arm", "Arm","Leg", "Leg","Neck", "Generic", "Gear"}

aimbot_logger.get = function(shot)
    if aimbot_log:get() then

        aimbot_logger.shots = aimbot_logger.shots + 1

        local aimbot_logger_settings = log_select
        local hit_color =      "\a" .. log_color_hit:get():to_hex(): sub(0, 8)
        local miss_color =     "\a" .. log_color_miss:get():to_hex(): sub(0, 8)
        
        local dickpickovaya_dama = ("%i%s"):format(aimbot_logger.shots, aimbot_logger.count[aimbot_logger.shots] or "th")


        if shot.state == nil then -- Hit
            if aimbot_logger_settings:get("Console") then
                print_raw(
                    (hit_color.."%s\aFFFFFFFF \aFFFFFFFF Hit in %s\'s "..hit_color.."%s\aFFFFFFFF for "..hit_color.."%s\aFFFFFFFF("..hit_color.."%s\aFFFFFFFF) (hitchance: "..hit_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.hitgroup+1], shot.damage, shot.wanted_damage, shot.hitchance, shot.backtrack)
                )
            end

            if aimbot_logger_settings:get("Screen") then
                print_dev(
                    (hit_color.."%s\aFFFFFFFF \aFFFFFFFF Hit in %s\'s "..hit_color.."%s\aFFFFFFFF for "..hit_color.."%s\aFFFFFFFF("..hit_color.."%s\aFFFFFFFF) (hitchance: "..hit_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.hitgroup+1], shot.damage, shot.wanted_damage, shot.hitchance, shot.backtrack)
                )
            end

            if aimbot_logger_settings:get("Notify") then
                table.insert(aimbot_logger.data, {
                    {
                        shot.target:is_alive() and "Hit " or "Killed ",
                        tostring(shot.target:get_name()),
                        " in ",
                        tostring(aimbot_logger.hitboxes[shot.hitgroup+1]),
                        " for ",
                        tostring(shot.damage),
                        " damage (",
                        tostring(math.max(0, shot.target.m_iHealth)),
                        " hp remaining)",
                    },
                    alpha = 0, 
                    alpha1 = 0,
                    time = globals.realtime,
                    color = log_color_hit:get()
                })
            end
        else -- miss
            if aimbot_logger_settings:get("Console") then
                print_raw(
                    (miss_color.."%s \aFFFFFFFF Missed shot in %s\'s "..miss_color.."%s\aFFFFFFFF due to "..miss_color.."%s\aFFFFFFFF (hitchance: "..miss_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.wanted_hitgroup+1], shot.state, shot.hitchance, shot.backtrack, (neverlose_refs.doubletap:get() and 1 or 0), (neverlose_refs.hideshots:get() and 1 or 0))
                )
            end

            if aimbot_logger_settings:get("Screen") then
                print_dev(
                    (miss_color.."%s \aFFFFFFFF Missed shot in %s\'s "..miss_color.."%s\aFFFFFFFF due to "..miss_color.."%s\aFFFFFFFF (hitchance: "..miss_color.."%s%% \aFFFFFFFF| Backtrack: "..miss_color.."%s \aFFFFFFFF"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.wanted_hitgroup+1], shot.state, shot.hitchance, shot.backtrack, (neverlose_refs.doubletap:get() and 1 or 0), (neverlose_refs.hideshots:get() and 1 or 0))
                )
            end

            if aimbot_logger_settings:get("Notify") then
                table.insert(aimbot_logger.data, {
                    {
                        "Missed ",
                        tostring(shot.target:get_name()),
                        " in the ",
                        tostring(aimbot_logger.hitboxes[shot.wanted_hitgroup+1]),
                        " due to ",
                        tostring(shot.state),
                        "",
                        "",
                        "",
                    },
                    alpha = 0,
                    alpha1 = 0,
                    time = globals.realtime,
                    color = log_color_miss:get()
                })
            end
        end
    end
end

 
render.container = function(text, pos, clr, time)
    local text_size = render.measure_text(1, nil, text) + vector(45, 10)
    pos = pos - vector(text_size.x/2, 0)

    render.shadow(pos, (pos + text_size)-2, clr, 50, 0, 11)
    render.blur(pos, pos + text_size, 1, clr.a/255, 10)
    render.rect_outline(pos, pos + text_size, clr:override("a", clr.a/3), 1, 10)
    render.text(1, pos - vector(1, 5), clr:override("a", clr.a), nil, ui.get_icon("fly"))

    render.text(1, pos + vector(30, 5), colors.white:override("a", clr.a), nil, text)
end

aimbot_logger.handle = function()
    local add_y = 0

    for k, v in pairs(aimbot_logger.data) do
        local text = v[1]

        if v.time + 3 > globals.realtime then
            v.alpha = math.lerp(v.alpha, 255, 0.095)
            v.alpha1 = math.lerp(v.alpha1, 1, 0.03)
        end

        render.container(
            defines.colored_text(
                {
                    text[1], 
                    colors.white:override("a", v.alpha)
                },
                {
                    text[2], 
                    v.color:override("a", v.alpha)
                },
                {
                    text[3], 
                    colors.white:override("a", v.alpha)
                },
                {
                    text[4], 
                    v.color:override("a", v.alpha)
                },
                {
                    text[5],
                    colors.white:override("a", v.alpha)
                },
                {
                    text[6], 
                    v.color:override("a", v.alpha)
                },
                {
                    text[7], 
                    colors.white:override("a", v.alpha)
                },
                {
                    text[8], 
                    v.color:override("a", v.alpha)
                },
                {
                    text[9], 
                    colors.white:override("a", v.alpha)
                }
            ),
            vector(defines.screen_size.x / 2, defines.screen_size.y / 1.2 + add_y),
            v.color:override("a", v.alpha),
            v.time
        )

        add_y = add_y + 30 * v.alpha/255

        if v.time + 5 < globals.realtime then
            v.alpha = math.lerp(v.alpha, 0, 0.095)
            v.alpha1 = math.lerp(v.alpha1, 0, 0.03)
        end

        if v.alpha < 0.01 and (v.time + 7 < globals.realtime) or #aimbot_logger.data > 6 then
            table.remove(aimbot_logger.data, k)
        end
    end
end

console_color.material = {"vgui_white", "vgui/hud/800corner1", "vgui/hud/800corner2", "vgui/hud/800corner3", "vgui/hud/800corner4"}
 
console_color.last = colors.white
console_color.change = function(clr)
    if console_color.last ~= clr then
        if console_color_s:get() then 
            for _, mat in pairs(console_color.material) do
                materials.get_materials(mat)[1]:alpha_modulate(1)
                materials.get_materials(mat)[1]:color_modulate(console_color_picker:get())  --(color(clr.r, clr.g, clr.b))
            end
            console_color.last = clr
        else
            for _, mat in pairs(console_color.material) do
                materials.get_materials(mat)[1]:alpha_modulate(1)
                materials.get_materials(mat)[1]:color_modulate(color(255, 255, 255))  --(color(clr.r, clr.g, clr.b))
            end
            console_color.last = clr
        end
    end
end

console_color.handle = function()
    local clr = (console_color and ffi_handler.console_is_visible()) and console_color_picker or colors.white

    console_color.change(clr)
end



utilsTwo.animation["lerp"] = function(start, end_pos, time)

    if type(start) == 'userdata' then

        local color_data = {0, 0, 0, 0}

        for i, color_key in ipairs({'r', 'g', 'b', 'a'}) do
            color_data[i] = utilsTwo.animation["lerp"](start[color_key], end_pos[color_key], time)
        end

        return color(unpack(color_data))
    
	end

    return (end_pos - start) * (globals.frametime * time * 175) + start

end

utilsTwo.animation["new"] = function(name, value, time)

    if utilsTwo.animation["data"][name] == nil then
        
		utilsTwo.animation["data"][name] = value
    
	end

    utilsTwo.animation["data"][name] = utilsTwo.animation["lerp"](utilsTwo.animation["data"][name], value, time)

    return utilsTwo.animation["data"][name]

end


local color_lerp2 = function(start, end_pos, time) --changes the color
    return start:lerp(end_pos, time)
end

local lerp2 = function(time,a,b)
    return a * (1-time) + b * time
end

local function hsv_to_rgb(h, s, v, a)
    local r, g, b

    local i = math.floor(h * 6);
    local f = h * 6 - i;
    local p = v * (1 - s);
    local q = v * (1 - f * s);
    local t = v * (1 - (1 - f) * s);

    i = i % 6

    if i == 0 then r, g, b = v, t, p
    elseif i == 1 then r, g, b = q, v, p
    elseif i == 2 then r, g, b = p, v, t
    elseif i == 3 then r, g, b = p, q, v
    elseif i == 4 then r, g, b = t, p, v
    elseif i == 5 then r, g, b = v, p, q
    end

    return r * 255, g * 255, b * 255, a * 255
end
local function func_rgb_rainbowize(frequency, rgb_split_ratio)
    local r, g, b, a = hsv_to_rgb(globals.realtime * frequency, 1, 1, 1)

    r = r * rgb_split_ratio
    g = g * rgb_split_ratio
    b = b * rgb_split_ratio

    return r, g, b
end


function can_fire( )
    local player = entity:get_local_player()
    if not player then
        return false
    end

    if not player:is_alive( ) then
        return false
    end

    local weapon = player:get_player_weapon()
    if not weapon then
        return false
    end

    local weapon_data = weapon:get_weapon_info()
    if not weapon_data then
        return false
    end

    local is_gun = weapon_data.weapon_type > 0 and weapon_data.weapon_type < 7 or weapon_data.weapon_type == 8
    local server_time = player["m_nTickBase"]
  
    if not is_gun and weapon["m_flNextPrimaryAttack"] > server_time * globals.tickinterval then
        return false
    end

    if ( is_gun and ( weapon["m_iClip1"] < 1 ) or player["m_flNextAttack"] > server_time * globals.tickinterval ) then
        return false
    end

    return not ( weapon["m_flNextPrimaryAttack"] > server_time * globals.tickinterval )
end

function process_indicators()
    for i in pairs (indicatorsMas) do
        indicatorsMas[i] = nil
    end

    -- local net = utils.net_channel()
    local player = entity:get_local_player()
    if not player or not net then
        return
    end

    if refs.isFS:get() then
        table.insert( indicatorsMas, { text = "FS", color = color( 255, 255, 255 ), -1.0 } )
    end

    if refs.auto_peek:get( ) then
        table.insert( indicatorsMas, { text = "PEEK", color = color( 255, 255, 255 ), -1.0 } )
    end

    if refs.fake_duck:get( ) then
        table.insert( indicatorsMas, { text = "DUCK", color = color( 255, 255, 255, 200 ), -1.0 } )
    end

    local binds = ui.get_binds()
    for i = 1, #binds do
        if binds[i].active and binds[i].name == "Min. Damage" then
            table.insert( indicatorsMas, { text = ( "refs.dmg: %s" ):format( binds[i].value ), color = color( 255, 255, 255 ), -1.0 } )
        end
    end

    if refs.hide_shots:get() then
        table.insert( indicatorsMas, { text = "HIDE", color = color( 255, 255, 255 ) , -1.0} )
    end
  
    local can_dt = rage.exploit:get() == 1 and can_fire( )
    if refs.dt:get() then
        local dt_color = color( 255, 0, 0 )
        if can_dt then
            dt_color = color( 255, 255, 255)
        end
        table.insert( indicatorsMas, { text = "DT", color = dt_color, -1.0 } )
    end
end

------------------------------------------------------ПРОЧЕЕ------------------------------------------------------



------------------------------------------------------ФУНКЦИИ------------------------------------------------------


local function fast_ladder(cmd)
    if not entity.get_local_player() then return end

    if entity.get_local_player().m_MoveType ~= 9 then return end

    local p = {43, 44, 45, 46, 47, 48}

    for k, v in pairs(p) do if entity.get_local_player():get_player_weapon():get_weapon_index() == v then return end end

    cmd.in_moveleft = cmd.in_back

    if cmd.sidemove == 0 then cmd.view_angles.y = cmd.view_angles.y + 45 end

    if cmd.in_forward and cmd.sidemove < 0 then cmd.view_angles.y = cmd.view_angles.y + 90 end

    if cmd.in_back and cmd.sidemove > 0 then cmd.view_angles.y = cmd.view_angles.y + 90 end

    if cmd.view_angles.x < 0 then cmd.view_angles.x = -45 end

    cmd.in_moveright = cmd.in_forward
end


menu_condition = {}


for a, b in pairs(aa_states2) do
    menu_condition[a] = {
        enable = AntiAimA:switch("Enable  " .. aa_states[a]),
        left_yaw_add = AntiAimA:slider(b.." Left Yaw", -180, 180, 0),
        right_yaw_add = AntiAimA:slider(b.." Right Yaw", -180, 180, 0),
        yaw_modifier = AntiAimA:combo(b.." Yaw Modifier", aa_refs.yaw_modifier:list()),
        modifier_offset = AntiAimA:slider(b.." Modifier Offset", -180, 180, 0),
        options = AntiAimA:selectable(b.." Options", aa_refs.options:list()),
        desync_freestanding = AntiAimA:combo(b.." Freestanding", aa_refs.desync_freestanding:list()),
        left_limit = AntiAimA:slider(b.." Left Desync", 0, 60, 0),
        right_limit = AntiAimA:slider(b.." Right Desync", 0, 60, 0),

        random_desync = AntiAimA:switch(b.." Random Desync", false),
        random_desync_start_l = AntiAimA:slider(b.." Range Left Start", 0, 60, 0),
        random_desync_end_l = AntiAimA:slider(b.." Range Left End", 0, 60, 0),
        random_desync_start_r = AntiAimA:slider(b.." Range Right Start", 0, 60, 0),
        random_desync_end_r = AntiAimA:slider(b.." Range Right End", 0, 60, 0),

        random_yaw = AntiAimA:switch(b.." Random Yaw", false),
        random_yaw_start = AntiAimA:slider(b.." Range Start", -180, 180, 0),
        random_yaw_end = AntiAimA:slider(b.." Range End", -180, 180, 0),
    }
end




exporting = {
    ["number"] = {},
    ["boolean"] = {},
    ["table"] = {},
    ["string"] = {}
}



get_player_state = function()
    local_player = entity.get_local_player()
    if not local_player then return "Not connected" end
    
    on_ground = bit.band(local_player.m_fFlags, 1) == 1
    jump = bit.band(local_player.m_fFlags, 1) == 0
    crouch = local_player.m_flDuckAmount > 0.7 or aa_refs.fakeduck:get()
    vx, vy, vz = local_player.m_vecVelocity.x, local_player.m_vecVelocity.y, local_player.m_vecVelocity.z
    math_velocity = math.sqrt(vx ^ 2 + vy ^ 2)
    move = math_velocity > 5

    if jump and crouch then return "Jump+Crouch" end
    if jump then return "Jump" end
    if crouch then return "Crouch" end
    if on_ground and aa_refs.slowwalk:get() and move then return "Slowwalk" end
    if on_ground and not move then return "Standing" end
    if on_ground and move then return "Running" end
end


antiaim = function()
    local_player = entity.get_local_player()
    if not local_player then return end
    if not AAon:get() then return end
    if not enable_builder:get() then return end

    invert_state = (math.normalize_yaw(local_player:get_anim_state().eye_yaw - local_player:get_anim_state().abs_yaw) <= 0)

    if menu_condition[2].enable:get() and get_player_state() == "Standing" then aaid = 2
    elseif menu_condition[3].enable:get() and get_player_state() == "Running" then aaid = 3
    elseif menu_condition[4].enable:get() and get_player_state() == "Slowwalk" then aaid = 4
    elseif menu_condition[5].enable:get() and get_player_state() == "Crouch" then aaid = 5
    elseif menu_condition[6].enable:get() and get_player_state() == "Jump" then aaid = 6
    elseif menu_condition[7].enable:get() and get_player_state() == "Jump+Crouch" then aaid = 7
    else
        aaid = 1
    end

    left_yaw_add = menu_condition[aaid].left_yaw_add:get()
    right_yaw_add = menu_condition[aaid].right_yaw_add:get()
    yaw_modifier = menu_condition[aaid].yaw_modifier:get()
    modifier_offset = menu_condition[aaid].modifier_offset:get()
    options = menu_condition[aaid].options:get()
    desync_freestanding = menu_condition[aaid].desync_freestanding:get()
    left_limit = menu_condition[aaid].left_limit:get()
    right_limit = menu_condition[aaid].right_limit:get()

    random_desync = menu_condition[aaid].random_desync:get()
    random_desync_start_l = menu_condition[aaid].random_desync_start_l:get()
    random_desync_end_l = menu_condition[aaid].random_desync_end_l:get()
    random_desync_start_r = menu_condition[aaid].random_desync_start_r:get()
    random_desync_end_r = menu_condition[aaid].random_desync_end_r:get()

    random_yaw = menu_condition[aaid].random_yaw:get()
    random_yaw_start = menu_condition[aaid].random_yaw_start:get()
    random_yaw_end = menu_condition[aaid].random_yaw_end:get()


    
    aa_refs.offset:set(invert_state and right_yaw_add or left_yaw_add)
    aa_refs.yaw_modifier:set(yaw_modifier)
    aa_refs.modifier_offset:set(modifier_offset)
    aa_refs.options:set(options)
    aa_refs.desync_freestanding:set(desync_freestanding)
    aa_refs.left_limit:set(left_limit)
    aa_refs.right_limit:set(right_limit)
    aa_refs.base:set(aa_refs.base:get())

    if random_desync then
        aa_refs.left_limit:set(math.random(random_desync_start_l, random_desync_end_l))
        aa_refs.right_limit:set(math.random(random_desync_start_r, random_desync_end_r))
    end

    if random_yaw then
        aa_refs.offset:set( math.random(random_yaw_start, random_yaw_end) )
    end

    if manual_yaw_base:get() == "Left" then
        aa_refs.offset:set(-85)
        aa_refs.base:set("Local View")
    elseif manual_yaw_base:get() == "Right" then
        aa_refs.offset:set(85)
        aa_refs.base:set("Local View")
    elseif manual_yaw_base:get() == "Forward" then
        aa_refs.offset:set(180)
        aa_refs.base:set("Local View")
    end
end


menu_ui = function()
    menu_condition[1].enable:set(true)
    aa_work = AAon:get()
    builder_work = enable_builder:get()
    cond_select = condition:get()
    all_work = aa_work and builder_work
    condition:visibility(all_work)
    enable_builder:visibility(aa_work)
    manual_yaw_base:visibility(builder_work)
    
    for a, b in pairs(aa_states2) do
        need_select = cond_select == aa_states[a]
        all_work2 = all_work and menu_condition[a].enable:get() and cond_select == aa_states[a]
        menu_condition[a].enable:visibility(all_work and need_select)
        menu_condition[1].enable:visibility(false)
        menu_condition[a].yaw_modifier:visibility(all_work2)
        menu_condition[a].modifier_offset:visibility(all_work2 and menu_condition[a].yaw_modifier:get() ~= "Disabled")
        menu_condition[a].options:visibility(all_work2)
        menu_condition[a].desync_freestanding:visibility(all_work2)

        menu_condition[a].random_desync:visibility(all_work2)

        menu_condition[a].random_yaw:visibility(all_work2)

        if menu_condition[a].random_desync:get() then
            menu_condition[a].left_limit:visibility(false)
            menu_condition[a].right_limit:visibility(false)

            menu_condition[a].random_desync_start_l:visibility(all_work2)
            menu_condition[a].random_desync_end_l:visibility(all_work2)
            menu_condition[a].random_desync_start_r:visibility(all_work2)
            menu_condition[a].random_desync_end_r:visibility(all_work2)
        else
            menu_condition[a].left_limit:visibility(all_work2)
            menu_condition[a].right_limit:visibility(all_work2)

            menu_condition[a].random_desync_start_l:visibility(false)
            menu_condition[a].random_desync_end_l:visibility(false)
            menu_condition[a].random_desync_start_r:visibility(false)
            menu_condition[a].random_desync_end_r:visibility(false)
        end


        if menu_condition[a].random_yaw:get() then
            menu_condition[a].left_yaw_add:visibility(false)
            menu_condition[a].right_yaw_add:visibility(false)

            menu_condition[a].random_yaw_start:visibility(all_work2)
            menu_condition[a].random_yaw_end:visibility(all_work2)

        else
            menu_condition[a].left_yaw_add:visibility(all_work2)
            menu_condition[a].right_yaw_add:visibility(all_work2)

            menu_condition[a].random_yaw_start:visibility(false)
            menu_condition[a].random_yaw_end:visibility(false)
        end

    end
end


local killeffect = function(e)
    if not globals.is_connected then return end
    local me = entity.get_local_player()
    local attacker = entity.get(e.attacker, true)
    if me == attacker then
        if killeffect_s:get() then
            me.m_flHealthShotBoostExpirationTime = globals.curtime + 20 / killeffect_time:get()
        end
    end
end

indicator = function()
    if not ((indicators_type:get() == "Small") and indicators:get()) then return end
    local exploit_charge = rage.exploit:get() < 1
    -- local itick = ideal_tick:get()

    local col  = indicators_color:get()
    local font = utilsTwo.fonts["small_pixel"]

    local dt        = not cheat.ref.doubletap:get()
	local hs        = not cheat.ref.hideshots:get() 
    local dt_col    = utilsTwo.animation["new"]('doubletap color', dt and color(155,155,155, 200) or col , 0.07)
	local hs_col    = utilsTwo.animation["new"]('hideshots color', hs and color(155,155,155, 200) or col , 0.07)
    local itick_col = utilsTwo.animation["new"]('ideal tick color', exploit_charge and color(155,155,155, 200) or col , 0.07)
    local bar_color = utilsTwo.animation["new"]('test color', exploit_charge and color(155,155,155, 200) or col, 0.07)
    
    local screen_x, screen_y = render.screen_size().x, render.screen_size().y
	local text_size = render.measure_text(font, "",  '[Vega-Sync]')
	local x = utilsTwo.animation["new"]('test x', val and -20 or 26.5, 0.07)

	render.text(font, vector(screen_x / 2 - text_size.x / 2, screen_y / 2 + 22), color(255, 255, 255, 255), "nil", 'Vega -')
    render.text(font, vector(screen_x / 2 + text_size.x / 2 - 27, screen_y / 2 + 22), bar_color, "nil", 'Sync')
    render.text(font, vector(screen_x / 2 - render.measure_text(font, "", 'doubletap').x / 2 - 3, screen_y / 2 + render.measure_text(font, "",  'doubletap').y + 17), dt_col, "nil", 'doubletap')
	render.text(font, vector(screen_x / 2 - render.measure_text(font, "", 'hideshots').x / 2 - 3, screen_y / 2 + render.measure_text(font, "",  'hideshots').y + 28), hs_col, "nil", 'hideshots')
    
    
    -- if itick and hs then render.text(font, vector(screen_x / 2 - render.measure_text(font, "", 'ideal tick').x / 2 - 1, screen_y / 2 + render.measure_text(font, "", 'ideal tick').y + 39), itick_col, "nil", 'ideal tick') end
end


function AA2(cmd) -- AA2 ========================
    if cmd.tickcount % 3 == 0 then
        refs.YawOffset:set(-30)
        refs.BodyYawSlideL:set(math.random(10, 57) )
        refs.BodyYawSlideR:set(math.random(10, 57) )
    end

    if cmd.tickcount % 25 == 0 then
        refs.YawOffset:set(25)
    else
        refs.YawOffset:set(0)
    end
end


function AA3(cmd) -- AA3 ========================

    if cmd.tickcount % 3 == 0 then
        refs.YawOffset:set(20)
        refs.BodyYawSlideL:set(math.random(44, 57.89) )
        refs.BodyYawSlideR:set(math.random(44, 57.89) )
    end

    if cmd.tickcount % 22 == 0 then
        refs.YawOffset:set(-25)
    else
        refs.YawOffset:set(2)
    end
end


function AA4(cmd) -- AA4 ======================== TOP
    AA2(cmd)-- |Смешииваем 2 ебейших АА
    AA3(cmd)-- |
end


function AA6(cmd) -- AA4 ======================== TOP
    refs.YawModifer:reset()
    -- refs.BodyYawSlideL:set(rage.antiaim:get_max_desync() - 1)
    -- refs.BodyYawSlideR:set(rage.antiaim:get_max_desync())

    if cmd.tickcount % 17 == 0 and globals.choked_commands == 0 then
        refs.BodyYawSwitch:set(false)
    end

    refs.BodyYawSwitch:set(true)
    if get_player_state() == "Crouch" then
        refs.BodyYawJitter:reset()
        refs.YawOffset:set(-12)
        if cmd.tickcount % 5 == 0 and globals.choked_commands == 0 then
            refs.BodyYawJitter:set("Jitter")
        end
    end

    if get_player_state() == "Jump" then
        refs.BodyYawJitter:reset()
        refs.YawOffset:set(11)
        if cmd.tickcount % 5 == 0 and globals.choked_commands == 0 then
            refs.BodyYawJitter:set("Jitter")
        end
    end

    if get_player_state() == "Standing" then
        refs.BodyYawJitter:set("Jitter")
        refs.YawOffset:set(12)
    end


end



local function AA7(cmd) -- AA4 ======================== TOP
    refs.YawModifer:reset()
    
    if Desyncside == 1 and peek_fake_always:get() then
        if get_player_state() == "Crouch" then
            refs.YawOffset:set(-2)
        end
        if get_player_state() == "Jump" or (get_player_state() == "Jump+Crouch") then
            refs.YawOffset:set(-8)
        end

        if get_player_state() == "Standing" then    
            refs.YawOffset:set(-2)
        end

        if get_player_state() == "Slowwalk" then    
            refs.YawOffset:set(-4)
        end

        if get_player_state() == "Running" then
            refs.YawOffset:set(-1)
        end

        if cmd.tickcount % 10 == 1 then
            refs.BodyYawJitter:reset()
        end
    else
        if get_player_state() == "Crouch" then
            refs.YawOffset:set(22)
        end
        if get_player_state() == "Jump" or (get_player_state() == "Jump+Crouch") then
            refs.YawOffset:set(21)
        end

        if get_player_state() == "Standing" then    
            refs.YawOffset:set(14)
        end

        if get_player_state() == "Slowwalk" then    
            refs.YawOffset:set(15)
        end

        if get_player_state() == "Running" then
            refs.YawOffset:set(16)
        end

        if cmd.tickcount % 10 == 1 then
            refs.BodyYawJitter:reset()
        end
    end


    refs.BodyYawSlideL:set((math.random(43, 46)))
    refs.BodyYawSlideR:set((math.random(44, 47)))
end


function AA8(cmd) -- AA4 ======================== TOP
    refs.YawModifer:reset()

    refs.BodyYawSwitch:set(true)
    if get_player_state() == "Crouch" then
        refs.BodyYawJitter:set("Avoid Overlap")
        refs.YawOffset:set(14)

    end

    if get_player_state() == "Jump" then
        refs.BodyYawJitter:reset()
        if cmd.tickcount % 4 == 2 then
            refs.BodyYawJitter:set("Avoid Overlap")
        end
        refs.YawOffset:set(15)
        refs.BodyYawSlideL:set(math.random(30, 34))
        refs.BodyYawSlideR:set(math.random(26, 30))
    end

    if get_player_state() == "Standing" then    

        if cmd.tickcount % 8 == 0 then
            refs.BodyYawJitter:set("Anti Bruteforce")
        end

        refs.YawOffset:set(6)

    end

    if get_player_state() == "Running" then
        refs.YawModifer:reset()
        refs.YawOffset:set(9)
        refs.BodyYawJitter:set("Avoid Overlap")

        if cmd.tickcount % 4 == 2 and globals.choked_commands == 0 then
            refs.BodyYawJitter:set("Anti Bruteforce")
        end

        if cmd.tickcount % 8 == 0 and globals.choked_commands == 0 then
            refs.BodyYawJitter:set("Anti Bruteforce")
        end
    end

    if get_player_state() == "Slowwalk" then
        refs.BodyYawJitter:set("Anti Bruteforce")
        refs.YawOffset:set(0)
        refs.BodyYawSlideL:set(math.random(3, 6))
        refs.BodyYawSlideR:set(math.random(3, 6))
    end

    refs.BodyYawSlideL:set(math.random(3, 6))
    refs.BodyYawSlideR:set(math.random(3, 6))

    if cmd.tickcount % 5 == 1 then
        refs.BodyYawJitter:reset()
    end


end



function AA9(cmd) -- AA4 ======================== TOP
    refs.fs_bodyyaw:override("Off")
    refs.BodyYawSlideL:override(34)
    refs.BodyYawSlideR:override(29)
    refs.YawOffset:set(0)
    refs.BodyYawSlideL:set(math.random(32,36) )
    refs.BodyYawSlideR:set(math.random(25, 32) )


    refs.YawModifer:set("Center")
    refs.YawModiferOffset:set(35)
    refs.BodyYawJitter:set("Avoid Overlap", "Anti Bruteforce")

    refs.BodyYawSwitch:set(true)
    if get_player_state() == "Crouch" then
        refs.BodyYawJitter:set("Avoid Overlap")
        refs.YawOffset:set(10)

        if cmd.tickcount % 7 == 0 then
            refs.BodyYawJitter:set("Jitter")
        end
    end

    if get_player_state() == "Jump" or (get_player_state() == "Jump+Crouch") then
        refs.BodyYawJitter:reset()
        if cmd.tickcount % 4 == 2 then
            refs.BodyYawJitter:set("Avoid Overlap")
        end
        refs.YawModifer:reset()
        refs.YawOffset:set(16)
    end

    if get_player_state() == "Running" then
        refs.YawModifer:reset()
        refs.YawOffset:set(9)
        if cmd.tickcount % 4 == 2 then
            refs.BodyYawJitter:set("Anti Bruteforce")
        end
    end

    if cmd.tickcount % 17 == 0 and globals.choked_commands == 0 then
        refs.BodyYawSlideL:set(rage.antiaim:get_max_desync()-10)
        refs.BodyYawSlideR:set(rage.antiaim:get_max_desync()-16)
    end
end



function C_tag()
    if globals.tickcount % 200 == 50 then
        common.set_clan_tag("Vega-Sync")
    end
    if globals.tickcount % 200 == 60 then
        common.set_clan_tag("_|ega-Syn|_")
    end
    if globals.tickcount % 200 == 70 then
        common.set_clan_tag("__|ga-Sy|__")
    end
    if globals.tickcount % 200 == 80 then
        common.set_clan_tag("___|a-S|___")
    end
    if globals.tickcount % 200 == 90 then
        common.set_clan_tag("____|-|____")
    end
    if globals.tickcount % 200 == 100 then
        common.set_clan_tag("_________")
    end
    if globals.tickcount % 200 == 110 then
        common.set_clan_tag("____|-|____")
    end
    if globals.tickcount % 200 == 120 then
        common.set_clan_tag("___|a-S|___")
    end
    if globals.tickcount % 200 == 130 then
        common.set_clan_tag("__|ga-Sy|__")
    end
    if globals.tickcount % 200 == 140 then
        common.set_clan_tag("_|ega-Syn|_")
    end
    if globals.tickcount % 200 == 150 then
        common.set_clan_tag("Vega-Sync")
    end
    if globals.tickcount % 200 == 190 then
        common.set_clan_tag("Vega-Sync")
    end
end

state_dis_dt = false
local check_live = false
function zeus_dt_off()
    if entity.get_local_player() ~= nil then
        if entity.get_local_player():get_player_weapon(false):get_weapon_index() == 31 and entity.get_local_player():is_alive() then -- Зевс
            refs.isDT:override(false)
            state_dis_dt = false
        else
            if state_dis_dt == false then
                refs.isDT:override()
                state_dis_dt = true
            end
        end

    end
end



function  handle_esp()
    local alpha = math.sin(math.abs(-math.pi + (globals.curtime * (1 / 0.7)) % (math.pi * 2)))
    ui.find("Visuals", "Players", "Enemies", "Chams", "History", "Color"):override(color_lerp2(back_chams_color1:get(), back_chams_color2:get(), alpha))
end



length = 0
gap = 0
events.render:set(function()
    if not scope:get() then 
        ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay"):set("Remove Overlay")
        return 
    end

    local x = render.screen_size().x
    local y = render.screen_size().y
    local localplayer = entity.get_local_player()
    ui.find("Visuals", "World", "Main", "Override Zoom", "Scope Overlay"):set("Remove All")
    if localplayer == nil then return end
    if localplayer.m_iHealth < 1 then return end
    length = lerp2(0.15, length, localplayer.m_bIsScoped and scope_length:get() or 0) 
    gap = lerp2(0.15, gap, localplayer.m_bIsScoped and scope_gap:get() or 0) 
    local scope_color_x = color(scope_color:get().r, scope_color:get().g, scope_color:get().b, 255)
    local scope_color_y = color(scope_color:get().r, scope_color:get().g, scope_color:get().b, 0)
    render.gradient(vector(x / 2 - gap, y / 2), vector(x / 2 - gap - length, y / 2 + 1), scope_color_x, scope_color_y, scope_color_x, scope_color_y)
    render.gradient(vector(x / 2 + gap, y / 2), vector(x / 2 + gap + length, y / 2 + 1), scope_color_x, scope_color_y, scope_color_x, scope_color_y)
    render.gradient(vector(x / 2, y / 2 + gap), vector(x / 2 + 1, y / 2 + gap + length), scope_color_x, scope_color_x, scope_color_y, scope_color_y)
    render.gradient(vector(x / 2, y / 2 - gap), vector(x / 2 + 1, y / 2 - gap - length), scope_color_x, scope_color_x, scope_color_y, scope_color_y)
end)



function bar()
    local r, g, b = func_rgb_rainbowize(0.1, 1)

    local r3 = rainbow_c_color1:get().r
    local g3 = rainbow_c_color1:get().g
    local b3 = rainbow_c_color1:get().b
    local a3 = rainbow_c_color1:get().a

    local r2 = rainbow_c_color2:get().r
    local g2 = rainbow_c_color2:get().g
    local b2 = rainbow_c_color2:get().b
    local a2 = rainbow_c_color2:get().a

	local screen_size = render.screen_size() 
	local a = 255

    if rainbow_c_s:get() then
        render.gradient(vector(0,0), vector(screen_size.x / 4, 2),color(r,g,b,a), color(b,g,r,a), color(r,g,b,a), color(b,g,r,a),0)
        render.gradient(vector(screen_size.x / 4,0), vector(screen_size.x / 2, 2),color(b,g,r,a), color(g,r,b,a), color(b,g,r,a), color(g,r,b,a),0)
        render.gradient(vector(screen_size.x / 2,0), vector(screen_size.x / 1.3, 2),color(g,r,b,a), color(b,r,g,a), color(g,r,b,a), color(b,r,g,a),0)
        render.gradient(vector(screen_size.x / 1.3,0), vector(screen_size.x, 2),color(b,r,g,a), color(g,b,r,a), color(b,r,g,a), color(g,b,r,a),0)


        render.gradient(vector(0,2), vector(screen_size.x / 4, 4),color(r,g,b,a), color(b,g,r,a), color(r,g,b,0), color(b,g,r,0),0)
        render.gradient(vector(screen_size.x / 4,2), vector(screen_size.x / 2, 4),color(b,g,r,a), color(g,r,b,a), color(b,g,r,0), color(g,r,b,0),0)
        render.gradient(vector(screen_size.x / 2,2), vector(screen_size.x / 1.3, 4),color(g,r,b,a), color(b,r,g,a), color(g,r,b,0), color(b,r,g,0),0)
        render.gradient(vector(screen_size.x / 1.3,2), vector(screen_size.x, 4),color(b,r,g,a), color(g,b,r,a), color(b,r,g,0), color(g,b,r,0),0)
    end


    if not rainbow_c_s:get() then
        render.gradient(vector(0,0), vector(screen_size.x, 2),color(r3,g3,b3,a3), color(r2,g2,b2,a2), color(r3,g3,b3,a3), color(r2,g2,b2,a2),0)
    end
end




--ACATEL
function desync_delta()
    local desync_rotation = rage.antiaim:get_rotation(true)
    local real_rotation = rage.antiaim:get_rotation()
    local delta_to_draw = math.min(math.abs(real_rotation - desync_rotation) / 2, 60)
    return string.format("%.1f", delta_to_draw)
end
local fake = desync_delta()
local currentTime = globals.curtime

local acatel_indicators = function()

    local lp = entity.get_local_player()
    if not lp or not lp:is_alive() then return end
    if not indicators:get() then return end 

    if ((indicators_type:get() == "Small 2") and indicators:get()) then
        local x = render.screen_size().x
        local y = render.screen_size().y

        

        if globals.is_connected then
            aa_inv_state = lp.m_flPoseParameter[11] * 120 - 60 <= 0 and true or false
        else
            return
        end

        if aa_inv_state == false then
            invert ="R"
        else
            invert ="L"
        end

        local minDmg = false
        local binds = ui.get_binds()
        for i, v in pairs(binds) do
            local bind = binds[i]
            if v.name == 'Minimum Damage' then
                minDmg = true
            end
        end

        if currentTime + 0.38 < globals.curtime then
            currentTime = globals.curtime
            fake = desync_delta()
        end

        local ay = 10
        local alpha = math.min(math.floor(math.sin((globals.curtime%3) * 4) * 175 + 50), 255)

        local eternal_ts = render.measure_text(font, nil, "VEGA-SYNC ")
        render.text(font, vector(x/2, y/2+ay), color(255,255,255,255), nil, "VEGA-SYNC")
        render.text(font, vector(x/2+eternal_ts.x-2, y/2+ay), color(255, 130, 130, alpha), nil, "STABE")
        ay = ay + 9

        local text_ =""
        local clr0 = color(0, 0, 0, 0)
        if refs.isSW:get() then
            text_ ="DANGEROUS+ "
            clr0 = color(255, 50, 50, 255)
        else
            text_ ="DYNAMIC- "
            clr0 = color(255, 117, 107, 255)
        end

        local d_ts = render.measure_text(font, nil, text_)
        render.text(font, vector(x/2, y/2+ay), clr0, nil, text_)
        render.text(font, vector(x/2+d_ts.x, y/2+ay), color(255,255,255,255), nil, math.floor(fake).."°")
        ay = ay + 9

        local fake_ts = render.measure_text(font, nil, "FAKE YAW: ")
        render.text(font, vector(x/2, y/2+ay), color(130, 130, 255, 255), nil, "FAKE YAW:")
        render.text(font, vector(x/2+fake_ts.x, y/2+ay), color(255, 255, 255, 255), nil, invert)
        ay = ay + 9

        local asadsa = math.min(math.floor(math.sin((rage.exploit:get()%2) *1) * 122), 100)
        
        if refs.isAP:get() and refs.isDT:get() then
            local ts_tick = render.measure_text(2, nil, "IDEALTICK")
            render.text(font, vector(x/2, y/2+ay), color(255, 255, 255, 255), nil, "IDEALTICK")
            render.text(font, vector(x/2+ts_tick.x, y/2+ay), rage.exploit:get() and color(0, 255, 0, 255) or color(255, 0, 0, 255), nil, "x"..asadsa)
            ay = ay + 9
        else
            if refs.isAP:get() then
                render.text(font, vector(x/2, y/2+ay), color(255, 255, 255, 255), nil, "PEEK")
                ay = ay + 9
            end
            if refs.isDT:get() then
                render.text(font, vector(x/2, y/2+ay), rage.exploit:get() == 1 and color(0, 255, 0, 255) or color(255, 0, 0, 255), nil, "DT")
                ay = ay + 9
            end
        end

        local ax = 0
        if refs.isHS:get() then
            render.text(font, vector(x/2, y/2+ay), color(250, 173, 181, 255), nil, "OS-AA")
            ay = ay + 9
        end

        render.text(font, vector(x/2, y/2+ay), refs.isBA:get() == "Force" and color(255, 255, 255, 255) or color(255, 255, 255, 128), nil, "BAIM")
        ax = ax + render.measure_text(font, nil, "BAIM ").x

        render.text(font, vector(x/2+ax, y/2+ay), refs.isSP:get() == "Force" and color(255, 255, 255, 255) or color(255, 255, 255, 128), nil, "SP")
        ax = ax + render.measure_text(font, nil, "SP ").x

        render.text(font, vector(x/2+ax, y/2+ay), refs.isFS:get() and color(255, 255, 255, 255) or color(255, 255, 255, 128), nil, "FS")
        ax = ax + render.measure_text(font, nil, "FS ").x
    end
end




local fnt = render.load_font('nl\\vega-sync\\Smallest Pixel-7.ttf', 10, "o")
local foont = render.load_font('nl\\vega-sync\\DejaVu Sans.ttf', 10, "odu")
local clr1 =  color(255, 255, 255, 255)
local clr2 =  color(255, 255, 255, 255)
local ax = 0
local keybinds = {
    ["DT"] = ui.find("Aimbot", "Ragebot", "Main", "Double Tap"),
    ["AP"] = ui.find("Aimbot", "Ragebot", "Main", "Peek Assist"),
    ["FD"] = ui.find("Aimbot","Anti Aim","Misc","Fake Duck"),
    ["HS"] = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots"),
}
local mein

local lerp = function(a, b, percent)
    return a - (a - b) * percent
end
  
local move = 0;
local scnd
function get_bodyaw()
    local player = entity.get_local_player()
    if player == nil then return end
	local pose = player.m_flPoseParameter[11]

	return math.floor(math.min(60, (pose * 120 - 60)))
end
-- events.render:set(get_bodyaw)
local function menuxd()
    if ((indicators_type:get() == "Small 3") and indicators:get()) then
    else
    end
end
-- events.render:set(menuxd)
events.render:set(function()
    local animtime = 0.03

    local gradient_animation = gradient.text_animate("VEGA-SYNC", -3, {
        indicators_color:get(),
        color(200, 217, 238)
    })

    
    local yaww = get_bodyaw()
    if not ((indicators_type:get() == "Small 3") and indicators:get()) then return end
    local lp = entity.get_local_player()
    if not globals.is_in_game then return end
    local is_scoped = lp.m_bIsScoped
    if yaww > 0 then
        mein = clr1
        scnd = clr2
    elseif yaww < 0 then
        mein = clr2
        scnd = clr1
    end
    local scrsz = render.screen_size()
    local txtsz2 = render.measure_text(foont, "c", ("VEGA-"))
    local txtsz3 = render.measure_text(foont, "c", ("SYNC"))
    local txtsz = render.measure_text(foont, "c", ("VEGA-"), ("SYNC"))
    local txtstt
    if lp.m_fFlags == 263 then
        txtstt = "crouching"
    elseif lp.m_vecVelocity:length2d() < 5 then
        txtstt = "stand"
    elseif lp.m_fFlags == 256 then
        txtstt = "air"
    elseif lp.m_fFlags == 262 then
        txtstt = "air-c"
    elseif lp.m_vecVelocity:length2d() <= 110 then
        txtstt = "slowwalk"
    elseif lp.m_vecVelocity:length2d() > 110 then
        txtstt = " WALK"
    end
    local txtsz4 = render.measure_text(foont, "c",txtstt)
    local txtsz5 = render.measure_text(fnt, "c","DT")
    if is_scoped then
        ax = 2
        a = 0
        b = 0
        n = 0
    else
        ax = 0
        n = 2
        a = 0
        b = 0
    end
    local prsnt = (lp.m_vecVelocity:length2d()/320)
    if prsnt > 1 then prsnt = 1 end
    for i = 0, 1 do
        move = lerp(move, ax*i, animtime) 
    end
        local offset = render.measure_text(fnt, "c","DT").y + 4
        local offset2 = render.measure_text(fnt, "c","DT").y + 4
        for i, v in pairs(keybinds) do
            local dap = v
            if dap:get() then
                a = a + 1.11
             render.text(fnt, vector(scrsz.x/2-txtsz5.x/2+txtsz5.x/2*move+1+5*move,scrsz.y/2-txtsz3.y/2+18+1+a*offset2/2+-5+11), clr1,"", i)
            end
        end
        
    render.rect_outline(vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+1+1+5*move-1,scrsz.y/2+txtsz.y/2-1+11), vector(scrsz.x/2+txtsz.x/2+txtsz.x/2*move-4+1-move+5*move,scrsz.y/2+txtsz.y/2+2+1+11), color(0,0,0,255))
    render.rect(vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+move*2+2-2*move+1+5*move-1,scrsz.y/2+txtsz.y/2+11), vector(scrsz.x/2+txtsz.x/2*move-move+txtsz.x/2-4*move-4+4*move+5*move,scrsz.y/2+txtsz.y/2+2+11), color(30,30,30,150))
    render.rect(vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+move*2+2-2*move+1+5*move-1,scrsz.y/2+txtsz.y/2+11), vector(scrsz.x/2+txtsz.x/2*move-move+txtsz.x/2-4*move-4+4*move+5*move,scrsz.y/2+txtsz.y/2+2+11), color(30,30,30,150))

    render.gradient(vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+move*2+2-2*move+1+5*move-1,scrsz.y/2+txtsz.y/2+11), vector(scrsz.x/2+txtsz.x/2*move-move+txtsz.x/2-4*move-4+4*move+5*move-(txtsz.x-12)+(txtsz.x-12)*prsnt,scrsz.y/2+txtsz.y/2+2+11), clr1,color(clr1.r,clr1.g,clr1.b,30),clr1,color(clr1.r,clr1.g,clr1.b,30))
    render.gradient(vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+move*2+2-2*move+1+5*move-1+(txtsz.x-5)*prsnt,scrsz.y/2+txtsz.y/2+11), vector(scrsz.x/2+txtsz.x/2*move-move+txtsz.x/2-4*move-4+4*move+5*move,scrsz.y/2+txtsz.y/2+2+11), color(0,0,0,200),color(0,0,0),indicators_color:get(),color(0,0,0))
    render.text(fnt, vector(scrsz.x/2-txtsz4.x/2+move*txtsz4.x/2+1+5*move,scrsz.y/2-txtsz2.y/2+txtsz.y/1.5+5+11), clr1, "с",  txtstt)
    render.text(foont, vector(scrsz.x/2-txtsz.x/2+txtsz.x/2*move+1+5*move,scrsz.y/2-txtsz2.y/2+11), clr1,"", gradient_animation:get_animated_text())
	render.text(foont, vector(scrsz.x*.522-txtsz.x/2+txtsz.x/2*move+1+5*move,scrsz.y/2-txtsz2.y/2+10), clr1,"", "")
    gradient_animation:animate()
end)





gjioer = false
teleport_tick = 0
function draw_indicators()
    local y_offset = 0
    local screen_size = render.screen_size()
    local y_pos = screen_size.y - ( screen_size.y - 320 ) / 2.0
    for i = 1, #indicatorsMas do
        local indicator = indicatorsMas[ i ]

        if not indicator then
            goto continue
        end

        local size = render.measure_text( lucida_big, "", indicatorsMas[ i ].text ) + vector( 0, 4 )

        render.gradient( vector( 10, y_pos - y_offset - 2 ), vector( 10 + size.x / 2.0, y_pos - y_offset + size.y - 2 ), color( 0, 0, 0, 0 ), color( 0, 0, 0, 58 ), color( 0, 0, 0, 0 ), color( 0, 0, 0, 58 ) )
        render.gradient( vector( 10 + size.x / 2.0, y_pos - y_offset - 2 ), vector( 10 + size.x, y_pos - y_offset + size.y - 2), color( 0, 0, 0, 58 ), color( 0, 0, 0, 0 ), color( 0, 0, 0, 58 ), color( 0, 0, 0, 0 ) )

        render.text( lucida_big, vector( 20, y_pos - y_offset + 1 ), indicatorsMas[ i ].color, "s", indicatorsMas[ i ].text )
        y_offset = y_offset + size.y + 2
        ::continue::
    end
end


function grad_sidebar(color1, color2, speed)
    local gradient_animation = gradient.text_animate("VEGA~SYNC", speed, {
        color1,
        color2
    })
    -- ☣️ 
    ui.sidebar(gradient_animation:get_animated_text(), '🎷')
    gradient_animation:animate()
end




local ffi = require("ffi")
 ffi.cdef[[
    typedef struct{
     void*   handle;
     char    name[260];
     int     load_flags;
     int     server_count;
     int     type;
     int     flags;
     float   mins[3];
     float   maxs[3];
     float   radius;
     char    pad[0x1C];
 } model_t;
 typedef struct {void** this;}aclass;
 typedef void*(__thiscall* get_client_entity_t)(void*, int);
 typedef void(__thiscall* find_or_load_model_fn_t)(void*, const char*);
 typedef const int(__thiscall* get_model_index_fn_t)(void*, const char*);
 typedef const int(__thiscall* add_string_fn_t)(void*, bool, const char*, int, const void*);
 typedef void*(__thiscall* find_table_t)(void*, const char*);
 typedef void(__thiscall* full_update_t)();
 typedef int(__thiscall* get_player_idx_t)();
 typedef void*(__thiscall* get_client_networkable_t)(void*, int);
 typedef void(__thiscall* pre_data_update_t)(void*, int);
 typedef int(__thiscall* get_model_index_t)(void*, const char*);
 typedef const model_t(__thiscall* find_or_load_model_t)(void*, const char*);
 typedef int(__thiscall* add_string_t)(void*, bool, const char*, int, const void*);
 typedef void(__thiscall* set_model_index_t)(void*, int);
 typedef int(__thiscall* precache_model_t)(void*, const char*, bool);
]]

local a = ffi.cast(ffi.typeof("void***"), utils.create_interface("client.dll", "VClientEntityList003")) or error("rawientitylist is nil", 2)
local b = ffi.cast("get_client_entity_t", a[0][3]) or error("get_client_entity is nil", 2)
local c = ffi.cast(ffi.typeof("void***"), utils.create_interface("engine.dll", "VModelInfoClient004")) or error("model info is nil", 2)
local d = ffi.cast("get_model_index_fn_t", c[0][2]) or error("Getmodelindex is nil", 2)
local e = ffi.cast("find_or_load_model_fn_t", c[0][43]) or error("findmodel is nil", 2)
local f = ffi.cast(ffi.typeof("void***"), utils.create_interface("engine.dll","VEngineClientStringTable001")) or error("clientstring is nil", 2)
local g = ffi.cast("find_table_t", f[0][3]) or error("find table is nil", 2)
function p(pa)
    local a_p = ffi.cast(ffi.typeof("void***"), g(f, "modelprecache"))
    if a_p~= nil then
        e(c, pa)
        local ac = ffi.cast("add_string_fn_t", a_p[0][8]) or error("ac nil", 2)
        local acs = ac(a_p, false, pa, -1, nil)
        if acs == -1 then print("failed")
            return false
        end
    end
    return true
end
function smi(en, i)
    local rw = b(a, en)
    if rw then
        local gc = ffi.cast(ffi.typeof("void***"), rw)
        local se = ffi.cast("set_model_index_t", gc[0][75])
        if se == nil then
            error("smi is nil")
        end
        se(gc, i)
    end
end
function cm(ent, md)
    if md:len() > 5 then
        if p(md) == false then
            error("invalid model", 2)
        end
        local i = d(c, md)
        if i == -1 then
            return
        end
        smi(ent, i)
    end
end



files.create_folder('csgo\\materials\\models\\player\\custom_player')


events.render:set(function()
    local gradient_animation = gradient.text_animate("Model Changer", -0.9, {
        color(211,131,18),
        color(168,50,121)
    })

    local anim = math.abs(1 * math.cos(2 * math.pi * globals.curtime / 15)) * 30
	ui.sidebar(gradient_animation:get_animated_text(), 'biohazard')
    
    gradient_animation:animate()
end)

model_ch = ui.create("👁️ Visuals", "Misc")
local main = ui.create("👁️ Visuals", "Model Changer")
local en = main:switch("Enabled", false)
local custom = main:input(ui.get_icon("person-military-to-person").."  Model", "")


------------Aspect Ratio-----------
V_world = ui.create("👁️ Visuals", world_tab.." World")  
aspect_ratio = V_world:slider(ui.get_icon("arrows-maximize").."  Aspect Ratio", 0, 50, 17, 0.01)

viewmodel = V_world:switch(ui.get_icon("glasses").."  Viewmodel")
view_fov = viewmodel:create()
viewmodel_fov = view_fov:slider("Fov", -50, 50, 0, 1)
view_x = viewmodel:create()
viewmodel_x = view_x:slider("X", -30, 30, 0, 1)
view_y = viewmodel:create()
viewmodel_y = view_y:slider("Y", -50, 50, 0, 1)
view_z = viewmodel:create()
viewmodel_z = view_z:slider("Z", -50, 50, 0, 1)



local aimbotx = {

    DT = ui.find("aimbot", "ragebot", "main", "double tap"),
    HS = ui.find("aimbot", "ragebot", "main", "hide shots"),
    QP = ui.find("aimbot", "ragebot", "main", "peek assist"),
    FakeDuck = ui.find("aimbot", "anti aim", "misc" , "Fake Duck"),
    FS = ui.find("aimbot", "anti aim", "angles" , "freestanding")

}
local check_safe_head = false


animations.base_speed = 0.07
animations._list = {}
animations.new = function(name, new_value, speed, init)
    speed = speed or animations.base_speed
    local is_color = type(new_value) ~= "number"

    if animations._list[name] == nil then
        animations._list[name] = (init and init) or (is_color and colors.white or 0)
    end

    local interp_func

    if is_color then
        interp_func = math.color_lerp
    else
        interp_func = math.lerp
    end

    animations._list[name] = interp_func(animations._list[name], new_value, speed)
    return animations._list[name] -- требую моржовые операторы в луа
end





neverlose_refs.doubletap = ui.find("Aimbot", "Ragebot", "Main", "Double Tap")
neverlose_refs.doubletap_config = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Lag Options")
neverlose_refs.doubletap_fakelag = ui.find("Aimbot", "Ragebot", "Main", "Double Tap", "Fake Lag Limit")

neverlose_refs.hideshots = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots")
neverlose_refs.hideshots_config = ui.find("Aimbot", "Ragebot", "Main", "Hide Shots", "Options")


neverlose_refs._vars = {}

for k, v in pairs(neverlose_refs) do
    if k ~= "_vars" then
        neverlose_refs._vars[k] = {
            tick = -1,
            var = v
        }
    end
end

neverlose_refs.deoverride_unused = function(unoverride_all)
    local ticks = cmd.tickcount

    for k, v in pairs(neverlose_refs._vars) do
        if unoverride_all or math.difference(v.tick, ticks) > 16 then
            v.var:override()
        end
    end

end



ui_handler.global_update_callback = safecall("global_update", true, function()

    for k, v in pairs(ui_handler.refs) do
        for name, table_reference in pairs(v) do
            if table_reference ~= nil and table_reference.condition then
                table_reference.update_value(table_reference.ref)
                table_reference.ref:visibility(table_reference.condition() or false)
            end
        end
    end

end)


ui_handler.reverse_tbl = function(tbl)

    local value_list = tbl
    local value_list_num = #value_list

    local tmp = {}
    for k, v in pairs(value_list) do
        if k ~= "_len" then
            tmp[v] = true
        end
    end

    return tmp
end

ui_handler.new_element = function(tab, name, include_in_config, cheat_var, condition)

    if include_in_config == nil then
        include_in_config = true
    end

    if type(cheat_var) ~= "userdata" then
        error("Failed to create " .. name .. ": " .. type(cheat_var))
        return
    end

    if ui_handler.refs[tab] == nil then
        ui_handler.refs[tab] = {}
        ui_handler.elements[tab] = {}
    end

    if ui_handler.refs[tab][name] ~= nil then
        print(string.format("[UI_HANDLER] Element already exists: %s->%s", tab, name))
        error("[UI_HANDLER] error")
    end

    ui_handler.refs[tab][name] = {
        ref = cheat_var,
        condition = condition,
        config = include_in_config
    }

    local update_value = function(new_value)

        local menu_type = new_value:type()
        local val = new_value:get()
        if menu_type == "selectable" then

            local tmp = ui_handler.reverse_tbl(val)

            ui_handler.elements[tab][name] = tmp
            ui_handler.elements[tab][name]._len = value_list_num -- мне лень ставить метатаблицу, пишов нахуй

        elseif menu_type == "listable" then
            local list = new_value:list()
            local len = #list

            local tmp = {}
            for k, v in ipairs(val) do
                tmp[list[v]] = k
            end

            ui_handler.elements[tab][name] = tmp
            ui_handler.elements[tab][name]._len = len
        else
            ui_handler.elements[tab][name] = val
        end

    end

    ui_handler.refs[tab][name].update_value = update_value

    cheat_var:set_callback(update_value, true)
    cheat_var:set_callback(ui_handler.global_update_callback)
    return cheat_var
end



ui_handler.hashed_icons = {}
ui_handler.get_icon = function(icon)
    if ui_handler.hashed_icons[icon] == nil then
        ui_handler.hashed_icons[icon] = ui.get_icon(icon)
    end

    return ui_handler.hashed_icons[icon]
end


ui_handler.groups = {}

ui_handler.groups_name = {
    setup = {
        information = {defines.colored_text({ui_handler.get_icon("user-check"), colors.link_active}, {" Setup"}), defines.colored_text({ui_handler.get_icon("home"), colors.link_active}, {" Home"})},
        settings = {defines.colored_text(   {ui_handler.get_icon("user-check"), colors.link_active}, {" Setup"}), defines.colored_text({ui_handler.get_icon("database"), colors.link_active}, {" Settings"})},
        additional = {defines.colored_text( {ui_handler.get_icon("user-check"), colors.link_active}, {" Setup"}), defines.colored_text({ui_handler.get_icon("lightbulb"), colors.link_active}, {" Other"})}
    },

    features = {
        ragebot =       {defines.colored_text({ui_handler.get_icon("user-edit"), colors.link_active}, {" Additions"}), defines.colored_text({ui_handler.get_icon("crosshairs"), colors.link_active}, {" Ragebot"})},
        interface =     {defines.colored_text({ui_handler.get_icon("user-edit"), colors.link_active}, {" Additions"}), defines.colored_text({ui_handler.get_icon("palette"), colors.link_active}, {" Interface"})},
        additional =    {defines.colored_text({ui_handler.get_icon("user-edit"), colors.link_active}, {" Additions"}), defines.colored_text({ui_handler.get_icon("cogs"), colors.link_active}, {" Other"})},
        miscellaneous = {defines.colored_text({ui_handler.get_icon("user-edit"), colors.link_active}, {" Additions"}), defines.colored_text({ui_handler.get_icon("wrench"), colors.link_active}, {" Miscellaneous"})}
    },

    antiaim = {
        general = {defines.colored_text({ui_handler.get_icon("user-shield"), colors.link_active}, {" Anti-Aim"}), defines.colored_text({ui_handler.get_icon("sitemap"), colors.link_active}, {" General"})},
        builder = {defines.colored_text({ui_handler.get_icon("user-shield"), colors.link_active}, {" Anti-Aim"}), defines.colored_text({ui_handler.get_icon("sliders-h"), colors.link_active}, {" Builder"})}
    }
}      


local function adaptive_backtrack(cmd)
    if not adaptive_back:get() then return end


    local me = entity:get_local_player()
    if not me or not me:is_alive() then return end
    if not me:get_player_weapon() then return end
    local weapon_index = me:get_player_weapon():get_weapon_index()


    refs.fake_latency:set(37)
end



local dopusk_hiden = true
local yaw_def_1 = 0
local yaw_def_2 = 0
local yaw_def_3 = 0
local pitch_def_1 = 0
local pitch_def_2 = 0
local pitch_def_3 = 0
local function hiden_exploit(cmd)
    if get_vel(entity.get_local_player()) < 55 then
        if cmd.tickcount % math.random(5, 10) == 0 then
            dopusk_hiden = true
        else
            dopusk_hiden = false
        end
    else
        if cmd.tickcount % 2 == 0 then
            dopusk_hiden = false
        else
            dopusk_hiden = true
        end 
    end

    if dopusk_hiden then
        refs.HidenHead:override(true)

        if breal_lc:get() then
        else
            refs.dt_lag:override("Always On")
        end
    else
        refs.HidenHead:override(false)
    end

    if (hiden_exp_type:get() == "Up Jitter") then
        if cmd.tickcount % 3 == 0 then
            rage.antiaim:override_hidden_pitch(60)
        end
        if cmd.tickcount % 3 == 1 then
            rage.antiaim:override_hidden_pitch(80)
        end
        if cmd.tickcount % 3 == 2 then
            rage.antiaim:override_hidden_pitch(60)
        end



        if cmd.tickcount % 3 == 0 then
            rage.antiaim:override_hidden_yaw_offset(-57)
        end
        if cmd.tickcount % 3 == 1 then
            rage.antiaim:override_hidden_yaw_offset(37)
        end
        if cmd.tickcount % 3 == 2 then
            rage.antiaim:override_hidden_yaw_offset(-57)
        end
    end


    if (hiden_exp_type:get() == "Down 3 Way") then
        rage.antiaim:override_hidden_pitch(75)

        if cmd.tickcount % 3 == 0 then
            rage.antiaim:override_hidden_yaw_offset(-84)
        end
        if cmd.tickcount % 3 == 1 then
            rage.antiaim:override_hidden_yaw_offset(0)
        end
        if cmd.tickcount % 3 == 2 then
            rage.antiaim:override_hidden_yaw_offset(78)
        end
    end


    if (hiden_exp_type:get() == "Random") then
        rage.antiaim:override_hidden_pitch(math.random(-89, 89))
        rage.antiaim:override_hidden_yaw_offset(math.random(-179, 179))
    end


    if (hiden_exp_type:get() == "Custom") then

        if (hiden_exp_pitch_type:get() == "Static") then
            rage.antiaim:override_hidden_pitch(pitch_def_1)
        end

        if (hiden_exp_pitch_type:get() == "Jitter") then
            if cmd.tickcount % 3 == 0 then
                rage.antiaim:override_hidden_pitch(pitch_def_1)
            end
            if cmd.tickcount % 3 == 1 then
                rage.antiaim:override_hidden_pitch(pitch_def_2)
            end
            if cmd.tickcount % 3 == 2 then
                rage.antiaim:override_hidden_pitch(pitch_def_1)
            end
        end

        if (hiden_exp_pitch_type:get() == "Safety Jitter") then
            if cmd.tickcount % 2 == 0 then
                rage.antiaim:override_hidden_pitch(pitch_def_1)
            end
            if cmd.tickcount % 2 == 1 then
                rage.antiaim:override_hidden_pitch(pitch_def_2)
            end
        end


        if (hiden_exp_pitch_type:get() == "3-Way") then
            if cmd.tickcount % 3 == 0 then
                rage.antiaim:override_hidden_pitch(pitch_def_1)
            end
            if cmd.tickcount % 3 == 1 then
                rage.antiaim:override_hidden_pitch(pitch_def_2)
            end
            if cmd.tickcount % 3 == 2 then
                rage.antiaim:override_hidden_pitch(pitch_def_3)
            end
        end

        if (hiden_exp_pitch_type:get() == "Random") then
            rage.antiaim:override_hidden_pitch(math.random(pitch_def_1, pitch_def_2))
        end




        if (hiden_exp_yaw_type:get() == "Static") then
            rage.antiaim:override_hidden_yaw_offset(yaw_def_1)
        end

        if (hiden_exp_yaw_type:get() == "Jitter") then
            if cmd.tickcount % 3 == 0 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_1)
            end
            if cmd.tickcount % 3 == 1 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_2)
            end
            if cmd.tickcount % 3 == 2 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_1)
            end
        end

        if (hiden_exp_yaw_type:get() == "Safety Jitter") then
            if cmd.tickcount % 2 == 0 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_1)
            end
            if cmd.tickcount % 2 == 1 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_2)
            end
        end

        if (hiden_exp_yaw_type:get() == "3-Way") then
            if cmd.tickcount % 3 == 0 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_1)
            end
            if cmd.tickcount % 3 == 1 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_2)
            end
            if cmd.tickcount % 3 == 2 then
                rage.antiaim:override_hidden_yaw_offset(yaw_def_3)
            end
        end

        if (hiden_exp_yaw_type:get() == "Spin") then    
        end

        if (hiden_exp_yaw_type:get() == "Random") then
            rage.antiaim:override_hidden_yaw_offset(math.random(yaw_def_1, yaw_def_2))
        end

    else
        hiden_exp_pitch_type:visibility(false)
        hiden_exp_yaw_type:visibility(false)
        hiden_exp_yaw1_slider:visibility(false)
        hiden_exp_yaw2_slider:visibility(false)
        hiden_exp_yaw3_slider:visibility(false)
        hiden_exp_pitch1_slider:visibility(false)
        hiden_exp_pitch2_slider:visibility(false)
        hiden_exp_pitch3_slider:visibility(false)
    end
end


local helpers = {}

helpers.dragging_fn = function(name, initial_pos)
    local name = tostring(name)
    local initial_pos = initial_pos or vector()

    local ui_group = ui.create 'DRAGGING\n%_#_&'
    local mi_intersection = false

    local mt = { }
    local mt_data = {
        dragging = false,
        mouse_pos = vector(0, 0),
        mouse_pos_diff = vector(0, 0),
        intersected = nil,
        mi_intersection = nil,
        initial_pos = initial_pos,

        reference = (function()
            local dragging_vector = {
                ui_group:slider(('%s:dragging_x'):format(name), -16384, 16384, initial_pos.x),
                ui_group:slider(('%s:dragging_y'):format(name), -16384, 16384, initial_pos.y)
            }

            local visibility = function()
                dragging_vector[1]:visibility(false)
                dragging_vector[2]:visibility(false)
            end

            dragging_vector[1]:set_callback(visibility)
            dragging_vector[1]:set_callback(visibility, true)

            return dragging_vector
        end)()
    }

    function mt.intersects(self, mouse, pos, size)
        return
            mouse.x >= pos.x and mouse.x <= pos.x+size.x and
            mouse.y >= pos.y and mouse.y <= pos.y+size.y
    end

    function mt.get(self)
        return vector(
            self.reference[1]:get(),
            self.reference[2]:get()
        )
    end

    function mt.is_dragging(self)
        return self.dragging
    end

    function mt.drag(self, size)
        local new_mouse_pos = ui.get_mouse_position()
        local menu_pos = ui.get_position()
        local menu_size = ui.get_size()

        local holding_key, holding_reset_key, intersection_check =
            ui.get_alpha() > 0 and common.is_button_down(1),
            ui.get_alpha() > 0 and common.is_button_down(2),
            self:intersects(new_mouse_pos, self:get(), size) and not
            self:intersects(new_mouse_pos, menu_pos, menu_size)

        self.mouse_pos_diff = -(self.mouse_pos-new_mouse_pos)

        if holding_key and self.intersected == nil then
            self.intersected = intersection_check
        end

        if holding_key and self.intersected then
            self.dragging = true
        elseif not holding_key then
            self.dragging = false
            self.intersected = nil
        end

        if holding_reset_key and intersection_check then
            self.reference[1]:set(self.initial_pos.x)
            self.reference[2]:set(self.initial_pos.y)
        end

        if self.dragging then
            local screen = render.screen_size()
            local limit, new_pos = size * .5, vector(
                self.reference[1]:get() + self.mouse_pos_diff.x,
                self.reference[2]:get() + self.mouse_pos_diff.y
            )

            self.reference[1]:set(math.max(-limit.x, math.min(screen.x-limit.x, new_pos.x)))
            self.reference[2]:set(math.max(-limit.y, math.min(screen.y-limit.y, new_pos.y)))
        end

        self.mouse_pos = new_mouse_pos
        self.mi_intersection = intersection_check or self.dragging

        return self:get(), self.dragging
    end

    local dragging = setmetatable(mt, { __index = mt_data })

    events.mouse_input:set(function()
        if dragging.mi_intersection then
            return false
        end
    end)

    return dragging
end

local damage_indicator = {}

damage_indicator.dragging = helpers.dragging_fn('vega-sync_dmgindicator', vector(screen.x/2 + 10, screen.y/2 - 20))

damage_indicator.draw = function()
    if not min_d:get() then return end

    if not entity.get_local_player() or not entity.get_local_player():is_alive() then return end
    
    pos_w = damage_indicator.dragging:get()
    pos_w.x = math.ceil(pos_w.x)
    pos_w.y = math.ceil(pos_w.y)

    local text_color = min_d_color:get()
    local fonta = font_min_d

    local text_size = render.measure_text(fonta, nil, refs.dmg:get())

    if ui.get_alpha() > 0.5 then
        render.rect_outline(vector(pos_w.x - 2, pos_w.y - 1), vector(pos_w.x + text_size.x + 2, pos_w.y + text_size.y + 2), color(255,255,255,120), 1, 3)
    end

    render.text(fonta, vector(pos_w.x, pos_w.y), text_color, nil, refs.min_damage_ui:get())

    damage_indicator.dragging:drag(vector(text_size.x + 2, text_size.y + 2))
end



function viewmodel_func()
    if(viewmodel:get()) then
        if(cvar.viewmodel_fov:int() ~= viewmodel_fov:get() + 68) then
            cvar.viewmodel_fov:int(viewmodel_fov:get() + 68, true) 
        end
        if(cvar.viewmodel_offset_x:float() ~= viewmodel_x:get() + 1) then
            cvar.viewmodel_offset_x:float(viewmodel_x:get() + 1, true) 
        end
        if(cvar.viewmodel_offset_y:float() ~= viewmodel_y:get() + 1) then
            cvar.viewmodel_offset_y:float(viewmodel_y:get() + 1, true) 
        end
        if(cvar.viewmodel_offset_z:float() ~= viewmodel_z:get() / 2 - 1) then
            cvar.viewmodel_offset_z:float(-1 + viewmodel_z:get() / 2, true) 
        end
    else  
        cvar.viewmodel_fov:int(68) 
        cvar.viewmodel_offset_x:int(1) 
        cvar.viewmodel_offset_y:int(1) 
        cvar.viewmodel_offset_z:int(-1) 
    end
end



function leerp(start, vend, time)
    return start + (vend - start) * time
end

local is_in_bounds = function(bound_a, bound_b, position)
    return position.x >= bound_a.x and position.y >= bound_a.y and position.x <= bound_b.x and position.y <= bound_b.y
end

local vdragging = false
local vdrag_offset = vector(0, 0)
local dragging = false
local drag_offset = vector(0, 0)
local Verdana_bold = render.load_font("Verdana", 10, 'ab')
local anim1 = 0
local a_width = 0
local size2 = vector(30, 50)
local url2 = 'https://i.imgur.com/lXknTp6.png' 
local url3 = 'https://i.imgur.com/hwSE6cG.png'
local url4 = 'https://i.imgur.com/HnnKxGh.png'
local velocity_icon_1 = render.load_image(network.get(url2), size2)
local velocity_icon_2 = render.load_image(network.get(url3), size2)
local velocity_icon_3 = render.load_image(network.get(url4), size2)

local vpos_x = V_misc:slider("vdrag_offset", 0, screen.x, screen.x / 2 - 82):visibility(false)
local vpos_y = V_misc:slider("vdragging", 0, screen.y, screen.y / 2 - 200):visibility(false)

local velocitywarningel = function()
    if not velwarning:get() then return end
    local local_player = entity.get_local_player()
    if local_player == nil then return end
    local modifier_vel = local_player.m_flVelocityModifier + 0.01
    if ui.get_alpha() == 1 then
        modifier_vel = local_player.m_flVelocityModifier
    end
    if modifier_vel == 1.01 then return end

    local text_vel = string.format('  %.0f%%', math.floor(modifier_vel*100))
    local text_vel_2 = string.format('▼')
    local text_vel_2 = string.format('▼')
    local text_width_vel = 95

    a_width = leerp(a_width, math.floor((text_width_vel - 2) * modifier_vel), globals.frametime * 9)

    local xv, yv = vpos_x:get(), vpos_y:get()
    
    if img_v_select:get() == "Running Model" then
        render.texture(velocity_icon_1, vector(xv+43+(a_width*1.2 + 7), yv-30), vector(30, 50), img_v_color:get(), f, 10)
    end
    if img_v_select:get() == "Shit" then
        render.texture(velocity_icon_2, vector(xv+43+(a_width*1.2 + 7), yv-30), vector(30, 50), img_v_color:get(), f, 10)
    end
    if img_v_select:get() == "Trololo" then
        render.texture(velocity_icon_3, vector(xv+43+(a_width*1.2 + 7), yv-34), vector(30, 50), img_v_color:get(), f, 10)
    end
    if img_v_select:get() == "Arrow" then
        render.text(1, vector(xv+58+(a_width*1.2 + 7), yv+5), img_v_color:get(), nil, text_vel_2)
    end
    if img_v_select:get() == "Disabled" then
    end

    render.text(1, vector(xv+55+48, yv+32), m_color:get(), nil, text_vel)

    render.rect(vector(xv+56, yv+18+4), vector(xv+65+(a_width*1.2 + 7), yv+30), m_color:get(), 5)
    render.shadow(vector(xv+57, yv+18+5), vector(xv+64+(a_width*1.2 + 7), yv+29), m_color:get(), 35, 0, 5)
    
    render.rect_outline(vector(xv+55, yv+17+4), vector(xv+165+20, yv+31), color(55, 55, 55, 200), 2, 5)
    
    if common.is_button_down(0x01) and ui.get_alpha() == 1 then
        local mouse_position = ui.get_mouse_position()
        if dragging == false and vdragging == false and is_in_bounds(vector(vpos_x:get(), vpos_y:get()-10), vector(vpos_x:get()+185, vpos_y:get()+31), mouse_position) == true then
            vdrag_offset.x = mouse_position.x - vpos_x:get()
            vdrag_offset.y = mouse_position.y - vpos_y:get()
            vdragging = true
        end
        if vdragging == true then
            vpos_x:set(mouse_position.x - vdrag_offset.x)
            vpos_y:set(mouse_position.y - vdrag_offset.y)
        end
    else
        vdragging = false
    end
end

-- bbb_random = 0
local function breack_lc_air()

    if dopusk_hiden and hiden_exp:get() then
        refs.HidenHead:override(true)

        bbb_random = utils.random_int(1,3)
        if (get_player_state() == "Jump") or (get_player_state() == "Jump+Crouch") and breal_lc:get() then
            if bbb_random >= 2 then
                refs.dt_lag:override("Always On")
                refs.Hs_type:override("Break LC")
            end
        else
            refs.dt_lag:override("On Peek")
            refs.Hs_type:override("Favor Fire Rate")
        end
    else
        -- refs.dt_lag:override("Disabled")
    end
end


calculate_distance = function(from_x,from_y,from_z,to_x,to_y,to_z)  
    return math.ceil(math.sqrt(math.pow(from_x - to_x, 2) + math.pow(from_y - to_y, 2) + math.pow(from_z - to_z, 2)))
end

helper_get_dist = function(player,victim)
    if not globals.is_in_game then
        return end
      if player == nil then return end
      if victim == nil then return end
      
      local weap = player:get_player_weapon()
      if weap == nil then
          return
      end
      local weap_id = weap:get_weapon_index()
      if weap_id == nil then 
          return
      end
  
      local player_origin = player.m_vecOrigin
      local victim_origin = victim.m_vecOrigin
  
      local units = calculate_distance(player_origin.x, player_origin.y, player_origin.z, victim_origin.x, victim_origin.y, victim_origin.z)
      local no_kevlar = victim.m_ArmorValue == 0	
  
      if not (weap_id == 64 and no_kevlar) then
          return 0
      end
      
      if units < 585 and units > 511 then
          return 1
      elseif units < 511 then
          return 2
      else
          return 0
      end
  end

helper_create_flag = esp.enemy:new_text("Revolver Helper", "DMG+", function(index)
    local local_idx = entity.get_local_player()
      if not local_idx:is_alive() then 
          return
      end

    if index ~= nil and index ~= local_idx then
        local revolver = helper_get_dist(local_idx, index)
        local enemy_revolver = helper_get_dist(index, local_idx)

        if revolver ~= 0 and revolver ~= nil then
            if revolver == 1 then
                return 'DMG'
            else
                return 'DMG+'
            end

        end
    end
end)

helper_create_line = function()
    if not globals.is_in_game then
        return end

      local local_idx = entity.get_local_player()
      if not local_idx:is_alive() then 
          return
      end
  
      local get_targets = entity.get_players(true, false)


      for i = 1, #get_targets do
        local index = get_targets[i]
        if index == local_idx or not index:is_alive() then goto skip end
        
          if index ~= nil and index ~= local_idx then
              local enemy_revolver = helper_get_dist(index, local_idx)

              if enemy_revolver ~= 0 and enemy_revolver ~= nil then
                local position = render.world_to_screen(index:get_hitbox_position(4))
                if position == nil then return end

                render.line(position, vector(render.screen_size().x / 2, render.screen_size().y), color(255, 11, 11, 255))
              end
        end
        ::skip::
    end
end

helper_setup = function()
    if revolver:get() then
        helper_create_flag:set(true)
        helper_create_line()
    end
end

-- events.render:set(helper_setup)




function hitchance_air(cmd)
    local hit_ch = refs.hitchance_a:get()

    if entity.get_local_player().m_vecVelocity.z > 0 then -- Air
        local hit_ch = refs.hitchance_a:get()
        refs.hitchance_a:override(air_hit_slider:get())
    else
        refs.hitchance_a:override()
    end
end





handle_arrows = function()
    if not globals.is_in_game then
        return end

    if not arrows:get() then
        return end

    local local_player = entity.get_local_player()
    if not local_player:is_alive() then return end
    
    local x, y = render.screen_size().x/2, render.screen_size().y/2
    local bodyyaw = local_player.m_flPoseParameter[11] * 120 - 60
    if globals.choked_commands == 0 then
        aainverted = bodyyaw > 0
    end

    local _color, _color1 = inverter:get(), inverter:get()
    local r, g, b, r1, g1, b1, a, a1 = _color.r, _color.g, _color.b, _color1.r, _color1.g, _color1.b, _color.a, _color1.a
    local rightmanual, leftmanual = manual_yaw_base:get() == 'Right', manual_yaw_base:get() == 'Left'

    local offset = 35
    render.poly(color(rightmanual and r or 35, rightmanual and g or 35, rightmanual and b or 35, rightmanual and a or 150),
        vector(x + distance_arrow:get() + offset, y + 2),
        vector(x + (distance_arrow:get()-13) + offset, y - 7),
        vector(x + (distance_arrow:get()-13) + offset, y + 11)
    )
    render.poly(color(leftmanual and r or 35, leftmanual and g or 35, leftmanual and b or 35, leftmanual and a or 150),
        vector(x - distance_arrow:get() - offset, y + 2),
        vector(x - (distance_arrow:get()-13) - offset, y - 7),
        vector(x - (distance_arrow:get()-13) - offset, y + 11)
    )
    
    if (manual_yaw_base:get() == 'Disabled') then
        render.rect(vector(x + (distance_arrow:get()-17) + offset, y - 7), vector(x + (distance_arrow:get()-17) + offset, y - 7 + 18), color(aainverted and r1 or 35, aainverted and g1 or 35, aainverted and b1 or 35, aainverted and a1 or 150))
        render.rect(vector(x - (distance_arrow:get()-17) - offset, y - 7), vector(x - (distance_arrow:get()-17) - offset, y - 7 + 18), color(not aainverted and r1 or 35, not aainverted and g1 or 35, not aainverted and b1 or 35, not aainverted and a1 or 150))
    end
end




local x = render.screen_size().x 
local y = render.screen_size().y 
local pos_x = enable_group:slider("posx", 0, x, 234) 
local pos_y = enable_group:slider("posy", 0, y, 454) 

local new_drag_object = drag_system.register({pos_x, pos_y}, vector(120, 60), "Test", function(self)
    if enable_w:get()  then

    local lp = entity.get_local_player()
	if not lp then return end 
    local user = string.upper(common.get_username())
    local x_b, y_b = pos_x:get(), pos_y:get()                                       --
	local clr = uiclr:get()
    local animationcolor = animcolor:get()
    local animation = gradient.text_animate("USER  :  "..user.."", -3, {
        color(animationcolor.r, animationcolor.g, animationcolor.b), 
        color(clr.r, clr.g, clr.b)
    })



    local avatar = lp:get_steam_avatar()

    render.shadow(vector(x_b+1, y_b + 38  ), vector(x_b + 123, y_b + 40), clr, 35, 0, 11)

    render.rect(vector(x_b - 2, y_b - 2  ),  vector(x_b + 125, y_b + 40 ), color(20,20,20,240), 8)
    render.circle_outline(vector(x_b+2, y_b + 34.75), color(clr.r,clr.g,clr.b,240), 6, 100, 0.30, 2)
    render.circle_outline(vector(x_b + 121.5, y_b + 34.75), color(clr.r,clr.g,clr.b,240), 6, -30, 0.35, 2)
    render.rect(vector(x_b, y_b + 38  ),  vector(x_b + 123, y_b + 40), color(clr.r,clr.g,clr.b,240), 8)
    render.texture(avatar, vector(x_b + 5, y_b + 3), vector(30, 30), color(), 0)
    render.text(2, vector(x_b + 40, y_b + 6), color(255, 255, 255, 255), "", string.upper("VEGAS-SYNC"))
    render.text(2, vector(x_b + 40, y_b + 17), color(255,255,255,255), "", animation:get_animated_text())
    render.rect_outline(vector(x_b - 7, y_b - 7 ), vector(x_b + 130, y_b + 45 ), color(255, 255, 255, ui.get_alpha()*255))
    animation:animate()
    end
end)
--# end start #--

--# callbacks start #--
-- events.render:set(function()
--     new_drag_object:update()
--     uiclr:visibility(enable_w:get())
--     animcolor:visibility(enable_w:get())
--     pos_x:visibility(false)
--     pos_y:visibility(false)
-- end)




local fonts = {
    render.load_font("nl\\vega-sync\\Verdana.ttf",12,'aub'),
    render.load_font('calibri',vector(12,14),'au'),
}

local screen_i = {render.screen_size():unpack()}
local center_i = {screen_i[1]/2,screen_i[2]/2}

local function paint()

    local lp = entity.get_local_player()
    if not lp or not lp:is_alive() then
        return
    end

    if not ((indicators_type:get() == "Vega-Sync") and indicators:get()) then return end

    indicators_color:visibility(false)
    indicators_color_t1:visibility(true)
    indicators_color_t2:visibility(true)


    local r,g,b,a = indicators_color_t1:get():unpack()
    local r2,g2,b2,a2 = indicators_color_t2:get():unpack()
   
    local desync = animation.new('desync_delta',0):update(animation.types.LERP,math.abs(anti_aim.get_desync_delta(1)))

    local offset = animation.new('offset_',0):update(animation.types.LERP,math.floor(desync) == 56 and 0 or (math.floor(desync) < 28 and -6 or 6),0.01)
    local lap_alpha = animation.new('lap_alpha',0):update(animation.types.LERP,math.floor(desync) < 28 and 255 or 125)
    local lbp_alpha = animation.new('lbp_alpha',0):update(animation.types.LERP,math.floor(desync) > 28 and 255 or 125)
    local lap_alpha2 = animation.new('lap2_alpha',0):update(animation.types.LERP,math.floor(desync) < 28 and 255 or 0)
    local lbp_alpha2 = animation.new('lbp2_alpha',0):update(animation.types.LERP,math.floor(desync) > 28 and 255 or 0)

    local w,h = 60,3
    render.text(fonts[1],vector((center_i[1]-6) + offset + 3 ,center_i[2] + 30),color(255),'c',gradient_text(r,g,b,a,r2,g2,b2,a2,'Vega-Sync'))
    render.rect(vector(center_i[1] - w/2 + offset - 5, center_i[2] + 39), vector(center_i[1] + w - w/2 + offset, center_i[2] + h + 40), color(0,0,0,125), 1, true)
    render.gradient(vector(center_i[1] - w/2 + offset - 5, center_i[2] + 39), vector(center_i[1] - w/2 + offset + math.floor(desync) + 4, center_i[2] + h + 40), indicators_color_t1:get(), indicators_color_t2:get(), indicators_color_t1:get(),indicators_color_t2:get(), 1)
    render.text(2,vector(center_i[1] - 40 + offset, center_i[2] + 44),color(r, g, b,lap_alpha),'','LAP')
    render.text(2,vector(center_i[1] + 20 + offset, center_i[2] + 44),color(r2, g2, b2,lbp_alpha),'','LBY')

    render.text(fonts[2],vector(center_i[1] - 45 + offset, center_i[2] + 34),color(r2, g2, b2,lap_alpha2),'','⯇')
    render.text(fonts[2],vector(center_i[1] + 31 + offset, center_i[2] + 34),color(r2, g2, b2,lbp_alpha2),'','⯈')

end
-- events.render:set(paint)




local funcs_k = {}
local main = {}

function funcs_k.shadowtext(font, position, colorr, text)
    render.text(font, position + 1, color(0, 0, 0, colorr.a), nil, text)
    render.text(font, position, colorr, nil, text)
end

function funcs_k.lerp(from, to, time)
    return from + (to - from) * time
end

function funcs_k.anybindactive() 
    for _, binds in pairs(ui.get_binds()) do   
        return binds.active
    end
    return false
end

function funcs_k.valtotype(val, type)
    local types = {[0]="on",[1]="hold"} 
    if val == true then 
        return types[type] 
    end 
    if val == nil then return "on" end
    if val == "Prefer" then return "prefer" end
    if val == "Force" then return "force" end
    if val == "Hold" then return "hold" end
    return val
end

function funcs_k.is_menu_opened()
    return ui.get_alpha() > 0 and true or false
end

-- drag system
function class()
    local class = {}
    local mClass = {__index = class}
    function class.instance() return setmetatable({}, mClass) end
        return class
    end
    
    local keybindsw = class()
    
    function keybindsw:new(x, y, w)
        local self = keybindsw.instance()
        self.x, self.y, self.w, self.h = x or 200, y or 400, w or 160, 20
        self.drag_x, self.drag_y = 0, 0
        self.is_dragging = false
        return self
    end
    
    function keybindsw:drag()
    local m = ui.get_mouse_position()
    local is_hovered = (m.x > (self.x) and m.x < (self.x + self.w) and m.y > (self.y) and m.y < (self.y + self.h))
    
    if is_hovered then
        if common.is_button_down(1) and not self.is_dragging then
            self.is_dragging = true
       
            self.drag_x = self.x - m.x
            self.drag_y = self.y - m.y
        end
    end
    if not common.is_button_down(1) then
        self.is_dragging = false
    end
    if self.is_dragging and funcs_k.is_menu_opened() then
        self.x = (self.drag_x + m.x)
        self.y = (self.drag_y + m.y)
    end
    end
    
    function keybindsw:paint() end
    function keybindsw:draw()self:paint()self:drag()end
    
    local keybinds_p = keybindsw:new(
        keybinds_pos_x:get(),
        keybinds_pos_y:get(),
    80
    )
main.k_alpha = 0
main.binds_active = {}
main.menu_alpha = 0
main.font = render.load_font("arial", 10)
-- render
function keybinds_p:paint()
    if keybinds_switch:get() then
        main.max_offset = 100
        local x, y, w = self.x, self.y, self.w
        
        if funcs_k.anybindactive() then
            main.k_alpha = funcs_k.lerp(main.k_alpha, 1, globals.frametime * 12)
        else
            main.k_alpha = funcs_k.lerp(main.k_alpha, 0, globals.frametime * 12)  -- render if binds active
        end
        
        if funcs_k.is_menu_opened() then
            main.menu_alpha = funcs_k.lerp(main.menu_alpha, 1, globals.frametime * 12)   -- menu render
        else
            main.menu_alpha = funcs_k.lerp(main.menu_alpha, 0, globals.frametime * 12)
        end

        alpha_x = funcs_k.anybindactive() and main.k_alpha or main.menu_alpha 
        for i, bind_data in pairs(ui.get_binds()) do
            local bind_key = bind_data.name
            if bind_data.active then
                if main.binds_active[bind_key] == nil then
                    main.binds_active[bind_key] = {value = "", alpha = 0, offsetr = 0, offset = 0, name = "", y_add = -6}
                end
                main.binds_active[bind_key].name = bind_data.name
                main.binds_active[bind_key].value = funcs_k.valtotype(bind_data.value, bind_data.mode)
                main.binds_active[bind_key].offsetr = render.measure_text(main.font, "s", "[" ..tostring(bind_data.value) .."]").x + 7
                main.binds_active[bind_key].offset = render.measure_text(main.font, "s", bind_data.name).x + main.binds_active[bind_key].offsetr + 10
                main.binds_active[bind_key].alpha = funcs_k.lerp(main.binds_active[bind_key].alpha, 1, globals.frametime * 12)   
                main.binds_active[bind_key].y_add = funcs_k.lerp(main.binds_active[bind_key].y_add , 0, globals.frametime * 12)
            else
                if main.binds_active[bind_key].alpha then
                    main.binds_active[bind_key].alpha = funcs_k.lerp(main.binds_active[bind_key].alpha, 0, globals.frametime * 12)
                end
                if main.binds_active[bind_key].y_add then
                    main.binds_active[bind_key].y_add = funcs_k.lerp(main.binds_active[bind_key].y_add, -6, globals.frametime * 12)
                end
            end
            if main.binds_active[bind_key] ~= nil and main.binds_active[bind_key].offset > main.max_offset then
                main.max_offset = main.binds_active[bind_key].offset
            end               
        end    

        self.w = funcs_k.lerp(self.w, main.max_offset, globals.frametime * 17)
        local a_c = keybinds_color:get()
        local accent_color = color(a_c.r, a_c.g, a_c.b, a_c.a * alpha_x)

        -- render.rect(vector(x, y), vector(x + w, y + 15), color(0, 0, 0, alpha_x * 120), 8, false)
        render.blur(vector(x, y), vector(x + w, y + 15), accent_color.a/70, 10, 8)
        render.shadow(vector(x+3, y+3), vector(x + w - 3, y + 12), accent_color, 50, 0, 8)

        render.rect_outline(vector(x, y), vector(x + w, y + 15), accent_color, 1, 8)
        funcs_k.shadowtext(main.font, vector(x + 32, y + 2), color(255, 255, 255, alpha_x * 255), "keybinds")

        for bk, bind_data in pairs(ui.get_binds()) do
            local key = bind_data.name
            local ba = main.binds_active[key]
            local f = funcs_k.valtotype(ba.value, ba.type)
                if string.len(ba.name) >= 20 then return end
                text_size = render.measure_text(main.font, "s", f)
                funcs_k.shadowtext(main.font, vector(x, y + bk * 11 + 5 + ba.y_add), color(255, 255, 255, ba.alpha * 255), ba.name)
                funcs_k.shadowtext(main.font, vector(x + w - 25, y + bk * 11 + 5 + ba.y_add), color(255, 255, 255, (ba.alpha * 255) * main.k_alpha), "["..funcs_k.valtotype(ba.value, ba.type).."]") 
        end
        keybinds_pos_x:set(self.x)
        keybinds_pos_y:set(self.y)
    end
end




boof_multipoints_head = 0
boof_multipoints_body = 0

hitchance_fix = 0
hitchance_fix_dt = 0

min_d_mult_fix = 0


timer_sec = 0
three_step = true
score_tp = 0
score_tp_2 = 0
four_step = false
score_error = 0
score_error_2 = 0


in_air = function (indx)
    return bit.band(indx.m_fFlags,1) == 0
end
function hitchance_modification()
    local me = entity.get_local_player()

    if not me:is_alive() then
        return
    end

    local inair_hitchance = air_hit_slider:get()
    local noscope_hitchance = noscope_hit_slider:get()

    local is_scoped = me.m_bIsScoped
    local weapon = me:get_player_weapon()


    if air_hit_combo:get("Air") then
        if (get_player_state() == "Jump") or (get_player_state() == "Jump+Crouch") then
            refs.hitchance_menu:override(inair_hitchance)
            refs.hitchance_dt_menu:override(inair_hitchance)
            refs.hitboxes_menu:override(air_hit_slider_hitboxes:get())
        else
            refs.hitchance_menu:override()
            refs.hitchance_dt_menu:override()
            refs.hitboxes_menu:override()
        end
    end

    if air_hit_combo:get("Noscope") then
        if weapon ~= nil then
            if weapon:get_weapon_index() == 38 or  weapon:get_weapon_index() == 11 or  weapon:get_weapon_index() == 9 or  weapon:get_weapon_index() == 40 then
                if not is_scoped then
                    for i = 1, 64 do
                        refs.hitchance_menu:override(noscope_hitchance)
                        refs.hitchance_dt_menu:override(noscope_hitchance)
                    end
                end
            end
        else
            refs.hitchance_menu:override()
            refs.hitchance_dt_menu:override()
        end
    end

end

local block_say = false
function reset_score()
    local me = entity.get_local_player()
    local kills = me:get_resource().m_iKills
    local death = me:get_resource().m_iDeaths


    if auto_rs:get() then
        if me:is_alive() and ((kills/death) < auto_rs_slider:get()/100) or me:is_alive() and kills == 0 and death > 0 then
            utils.console_exec("say !rs")
            -- print_dev("\nreset score!\n!\n!")
            block_say = true
        end
        if not me:is_alive() then
            block_say = false
        end
    end
end


AntiBruteForce = function(cmd)
    if not AntiBrute["Enable"]:get() then return end
    local local_player = entity.get_local_player()
    local player_inverter = local_player.m_flPoseParameter[11] * 120 - 60 <= 0 and true or false
	if abtime + AntiBrute["Reset time"]:get() > globals.realtime then 
        if not common.is_button_down(0x45) then
			if player_inverter == true then
				refs.offset:override(AntiBrute[""..currentphase.."Phase Yaw R"]:get())
			else
				refs.offset:override(AntiBrute[""..currentphase.."Phase Yaw L"]:get())
			end
			refs.modifier_offset:override(AntiBrute[""..currentphase.."Phase Jitter"]:get())
			refs.yawmodifier:set(AntiBrute[""..currentphase.."Phase Jitter type"]:get())
			refs.options:set(AntiBrute[""..currentphase.."Phase Options"]:get())
			refs.leftlimit:set(AntiBrute[""..currentphase.."Phase Left"]:get())
			refs.rightlimit:set(AntiBrute[""..currentphase.."Phase Right"]:get())
			refs.desync_freestanding:set("Off")
		end
	end
end


assist.normalize_yaw = function(yaw)
    while yaw > 180 do yaw = yaw - 360 end
    while yaw < -180 do yaw = yaw + 360 end
    return yaw
end

assist.get_nearest_enemy = function(localpl, enemies)
    local local_player = entity.get_local_player()
    if not local_player or not local_player:is_alive() then return end

    local camera_position = render.camera_position()

    local camera_angles = render.camera_angles()

    local direction = vector():angles(camera_angles)

    local closest_distance, closest_enemy = math.huge
    for i = 1, #enemies do
        local enemy = entity.get(enemies[i])
        local head_position = enemy:get_hitbox_position(1)

        local ray_distance = head_position:dist_to_ray(
            camera_position, direction
        )
      
        if ray_distance < closest_distance then
            closest_distance = ray_distance
            closest_enemy = enemy
        end
    end

    if not closest_enemy then
        return
    end
    return closest_enemy
end

assist.angle_calculation = function(local_x, local_y, enemy_x, enemy_y)
    local ydelta = local_y - enemy_y
    local xdelta = local_x - enemy_x
    local relativeyaw = math.atan( ydelta / xdelta )
    relativeyaw = assist.normalize_yaw( relativeyaw * 180 / math.pi )
    if xdelta >= 0 then
        relativeyaw = assist.normalize_yaw(relativeyaw + 180)
    end
    return relativeyaw
end

assist.angle_vector = function(angle_x, angle_y)
    local sy = math.sin(math.rad(angle_y))
    local cy = math.cos(math.rad(angle_y))
    local sp = math.sin(math.rad(angle_x))
    local cp = math.cos(math.rad(angle_x))
    return cp * cy, cp * sy, -sp
end

assist.get_damage = function(localpl, enemy, x, y, z)
    local ent_x = { }
    local ent_y = { }
    local ent_z = { }
    ent_x[0], ent_y[0], ent_z[0] = enemy:get_hitbox_position(1).x, enemy:get_hitbox_position(1).y, enemy:get_hitbox_position(1).z
    ent_x[1], ent_y[1], ent_z[1] = ent_x[0] + 30, ent_y[0], ent_z[0]
    ent_x[2], ent_y[2], ent_z[2] = ent_x[0], ent_y[0] + 30, ent_z[0]
    ent_x[3], ent_y[3], ent_z[3] = ent_x[0] - 30, ent_y[0], ent_z[0]
    ent_x[4], ent_y[4], ent_z[4] = ent_x[0], ent_y[0] - 30, ent_z[0]
    ent_x[5], ent_y[5], ent_z[5] = ent_x[0], ent_y[0], ent_z[0] + 30
    ent_x[6], ent_y[6], ent_z[6] = ent_x[0], ent_y[0], ent_z[0] - 30
    local trace = {damage = 0, trace = nil}
    for i=0, 6 do
        if trace.damage == 0 or trace.damage == nil then
            trace.damage, trace.trace = utils.trace_bullet(enemy, vector(ent_x[i], ent_y[i], ent_z[i]), vector(x, y, z))
        end
    end
    return trace.damage
end

local state_aim_ack = false
local timer_aim_ack = 0
Desyncside = 0
local function get_best_side(cmd)
    local localplayer = entity.get_local_player()
    if not localplayer then return end

    local eye_pos = localplayer:get_eye_position()

    local enemies = entity.get_players(true) -- ??????

    handling.vars.bestenemy = assist.get_nearest_enemy(localplayer, enemies)

    local enemy = handling.vars.bestenemy ~= nil and entity.get(handling.vars.bestenemy) or nil

    if handling.vars.bestenemy ~= nil and handling.vars.bestenemy ~= 0 and enemy:is_alive() then
        local e_x, e_y = enemy:get_hitbox_position(0).x, enemy:get_hitbox_position(0).y

        local yaw = assist.angle_calculation(eye_pos.x, eye_pos.y, e_x, e_y)
        local rdir_x, rdir_y = assist.angle_vector(0, (yaw + 90))
        local rend_x = eye_pos.x + rdir_x * 10
        local rend_y = eye_pos.y + rdir_y * 10
  
        local ldir_x, ldir_y = assist.angle_vector(0, (yaw - 90))
        local lend_x = eye_pos.x + ldir_x * 10
        local lend_y = eye_pos.y + ldir_y * 10
  
        local r2dir_x, r2dir_y = assist.angle_vector(0, (yaw + 90))
        local r2end_x = eye_pos.x + r2dir_x * 100
        local r2end_y = eye_pos.y + r2dir_y * 100

        local l2dir_x, l2dir_y = assist.angle_vector(0, (yaw - 90))
        local l2end_x = eye_pos.x + l2dir_x * 100
        local l2end_y = eye_pos.y + l2dir_y * 100
   
        local ldamage = assist.get_damage(localplayer, enemy, rend_x, rend_y, eye_pos.z)
        local rdamage = assist.get_damage(localplayer, enemy, lend_x, lend_y, eye_pos.z)


        local l2damage = assist.get_damage(localplayer, enemy, r2end_x, r2end_y, eye_pos.z)
        local r2damage = assist.get_damage(localplayer, enemy, l2end_x, l2end_y, eye_pos.z)

        if true then
            if l2damage > r2damage or ldamage > rdamage or l2damage > ldamage then
                Desyncside = 1
            elseif r2damage > l2damage or rdamage > ldamage or r2damage > rdamage then
                Desyncside = 2
            else
                Desyncside = 0
            end
        end
    end

    if peek_fake_always:get() then
        if Desyncside == 1 then
            refs.invert:override(true)
        elseif Desyncside == 2 then
            refs.invert:override(false)
        end
    end

    if me:get_player_weapon(false):get_weapon_index() == 31 and zeus_aa:get() then
        check_zeus = false
        if smart_fk:get() then
            refs.fl:override(smart_fk_s1:get())
        end
    else
        check_zeus = false

        if get_player_state() == "Standing" then
            -- refs.fl:override(0)
        else
            if smart_fk:get() then
                if state_aim_ack == false then
                    if Desyncside == 1 and common.is_button_down(0x41) then -- A
                        refs.fl:override(smart_fk_s1:get())
                        -- refs.dt_lag_limit:override(8)
                        -- cvar.sv_maxusrcmdprocessticks:int(50)
                    end
                    if Desyncside == 1 and common.is_button_down(0x44) then -- D
                        refs.fl:override(smart_fk_s2:get())
                        -- refs.dt_lag_limit:override(1)
                        -- refs.FakeLag:override(fasle)
                        -- cvar.sv_maxusrcmdprocessticks:int(0)
                        -- cmd.send_packet = false
                    end
                    if Desyncside == 2 and common.is_button_down(0x44) then -- D
                        refs.fl:override(smart_fk_s1:get())
                        -- refs.dt_lag_limit:override(8)
                        -- cvar.sv_maxusrcmdprocessticks:int(50)
                    end
                    if Desyncside == 2 and common.is_button_down(0x41) then -- A
                        refs.fl:override(smart_fk_s2:get())
                        -- refs.dt_lag_limit:override(1)
                        -- refs.FakeLag:override(fasle)
                        -- cvar.sv_maxusrcmdprocessticks:int(0)
                        -- cmd.send_packet = false
                    end
                else
                    -- cvar.sv_maxusrcmdprocessticks:int(0)
                    refs.fl:override(smart_fk_s2:get())
                    -- refs.FakeLag:override(fasle)
                    if timer_aim_ack < globals.realtime then
                        state_aim_ack = false
                        peek_fake_always:override()
                    end
                end
            end
        end
    end
end


local localuser = entity.get_local_player()

player_spawned = function(e)
    if not hit_marker_select:get("Text") then return end
    if entity.get(e.userid, true) == localuser then
        for i in ipairs(faina) do
            faina[i] = { 0, 0, 0, 0 }
        end
  
        for i in ipairs(faina2) do
           faina2[i] = { 0, 0, 0, 0, 0, 0 }
        end
    end
end
bullet_impact = function(e)
    if not hit_marker_select:get("Text") and not hit_marker_select:get("Icon") then return end
    if entity.get(e.userid, true) == localuser then
        local markerx = e.x
        local markery = e.y
        local markerz = e.z
        table.insert(faina, { markerx, markery, markerz, globals.realtime})
    end
end
function distance(xx,yy,zz,xxx,yyy,zzz)
    return math.sqrt(math.pow(xx - xxx, 1) + math.pow( yy - yyy,1) + math.pow( zz - zzz , 1) )
end
player_hurt = function(e)
    if not hit_marker_select:get("Text") and not hit_marker_select:get("Icon") then return end
    local markerx, markery, markerz = 0, 0, 0
    if entity.get(e.attacker, true) == localuser then
        local victim = entity.get(e.userid, true)
        if victim ~= nil then
            local victimOrigin = victim.m_vecOrigin
            local victimDamage = e.dmg_health
            local victimhelf =   victim.m_iHealth - victimDamage

            for i in ipairs(faina) do
                local faina = faina[i]
                if faina[4] + (4) >= globals.realtime then
                    local markerx = faina[1]
                    local markery = faina[2]
                    local markerz = faina[3]

                    -- local distance_p = distance(victimOrigin.x, victimOrigin.y, victimOrigin.z, markerx, markery, markerz)
                end
            end

            if markerx == 0 and markery == 0 and markerz == 0 then
                victimOrigin.z = victimOrigin.z + 50
                markerx = victimOrigin.x
                markery = victimOrigin.y
                markerz = victimOrigin.z
            end

            for k in ipairs(faina) do
                faina[k] = { 0, 0, 0, 0 }
            end
            table.insert(faina2, { markerx, markery, markerz, globals.realtime, victimDamage, victimhelf} )
        end
    end
end

function Kibit()
local duration = 1.5
local time_max = duration / 2
local time_maxx = globals.realtime - time_max / 2
for i in ipairs(faina2) do
    local marker = faina2[i]
    if marker[4] + duration > time_maxx then
        if marker[1] ~= nil then

            local asd2 = render.world_to_screen(vector((marker[1]), (marker[2]), (marker[3]) - (marker[4] - globals.realtime) * 100))
            if not asd2 then return end
            if asd2.x ~= nil and asd2.y ~= nil then
                local alpha = 255   
                if (marker[4] - (globals.realtime - duration)) < (duration / 2) then                       
                    alpha = math.floor((marker[4] - (globals.realtime - duration)) / (duration / 2) * 255)
                    if alpha < 5 then
                        marker = { 0 , 0 , 0 , 0, 0, 0 }
                    end           
                end
                local col2 = color(hit_marker_color_text_M:get().r, hit_marker_color_text_M:get().g, hit_marker_color_text_M:get().b, alpha)
                local col3 = color(hit_marker_color_text_M:get().r, hit_marker_color_text_M:get().g, hit_marker_color_text_M:get().b, alpha)


                local colorspiese = marker [6] <= 0 and col3 or col2
if hit_marker_select:get("Text") then 
    render.text(1, vector(asd2.x + 1, asd2.y + 1), color(0, 0, 0, alpha), '', "" .. tostring(marker[5]))
    render.text(1, vector(asd2.x + 1, asd2.y + 1), colorspiese, '', "" .. tostring(marker[5]))
    
end
if hit_marker_select:get("Icon") then 
    render.text(hearts,vector(asd2.x + 20, asd2.y),colorspiese,'','z')
end

end
end
end
end
end



desync_boof = 60
desync_boof_b = 0
state_side = false
state_invert = false
score_invert = false

function lerp_desync_f()        
    if lerp_desync:get() then

        if state_side == false and desync_boof >= 1 then
            desync_boof = math.lerp(desync_boof, 0, 0.11)
            refs.BodyYawSlideL:set(desync_boof)
            refs.BodyYawSlideR:set(desync_boof)
        end

        if state_side == true and desync_boof <= 59 then
            desync_boof = math.lerp(desync_boof, 60, 0.12)
            refs.BodyYawSlideL:set(desync_boof)
            refs.BodyYawSlideR:set(desync_boof)
        end

        if desync_boof <= 1 then
            state_side = true

            if score_invert then
                refs.invert:override(true)
                -- print("Invert TRUE")
                refs.YawOffset:set(3)
                state_invert = false
            end

            if score_invert == false then
                refs.invert:override(false)
                refs.YawOffset:set(14)
                -- print("Invert FALSE")
                state_invert = true
            end

            -- print("LOW")
        end

        if desync_boof >= 59 then
            state_side = false

            if score_invert then
                score_invert = false
            else
                score_invert = true
            end
        end

    end
end


local function jmp_scout_fix(entity)
    if entity.get_local_player():is_alive() then
        local lp = entity.get_local_player()
        if lp == nil then return end
        local velocity = lp.m_vecVelocity
        local speed = velocity:length()
        if jump_scout_fix:get() and entity.get_local_player():get_player_weapon(false) ~= nil then
            if entity.get_local_player():get_player_weapon(false):get_weapon_index() == 40 then
                if velocity.x <= 2 or velocity.x >= -2 then
                    if velocity.y <= 2 or velocity.y >= -2 then
                        if speed <= 1.1 then
                            AirStrefe:override(false)
                        end
                    end
                end
            end
            if velocity.x >= 2 or velocity.x <= -2 then
                if velocity.y >= 2 or velocity.y <= -2 then
                    if speed >= 1.1 then
                        AirStrefe:override(true)
                    end
                end
            end
        end
    end
end




molotov_wireframe.materials = {
    "particle/particle_flares/particle_flare_gray",
    "particle/smoke1/smoke1_nearcull2",
    "particle/vistasmokev1/vistasmokev1_nearcull",
    "particle/smoke1/smoke1_nearcull",
    "particle/vistasmokev1/vistasmokev1_nearcull_nodepth",
    "particle/vistasmokev1/vistasmokev1_nearcull_fog",
    "particle/vistasmokev1/vistasmokev4_nearcull",
    "particle/smoke1/smoke1_nearcull3",
    "particle/fire_burning_character/fire_env_fire_depthblend_oriented",
    "particle/fire_burning_character/fire_burning_character",
    "particle/fire_explosion_1/fire_explosion_1_oriented",
    "particle/fire_explosion_1/fire_explosion_1_bright",
    "particle/fire_burning_character/fire_burning_character_depthblend",
    "particle/fire_burning_character/fire_env_fire_depthblend"
}


molotov_wireframe.handle = function()
    for _, v in pairs(molotov_wireframe.materials) do
        local material = materials.get(v)

        if material ~= nil then
            material:var_flag(28, molotov_wireframe_s:get())
            material:var_flag(15, molotov_wireframe_s:get())
        end
    end
end



grenade_radius.get = function()
    local player = entity.get_local_player()
    
    if player == nil then
        return
    end

    local CSmokeGrenadeProjectile = entity.get_entities("CSmokeGrenadeProjectile")
    local CInferno = entity.get_entities("CInferno")
    local is_not_friendly_fire = cvar.mp_friendlyfire:int() == 0

    local smoke = {}
    local molotov = {}

    local tickcount = globals.tickcount
    local tickinterval = globals.tickinterval

    if CSmokeGrenadeProjectile ~= nil then
        for k, v in pairs(CSmokeGrenadeProjectile) do
            if smoke[k] == nil then
                smoke[k] = {}
                smoke[k].position = vector(0, 0, 0)
                smoke[k].alpha = 0
                smoke[k].draw = false
            end

            smoke[k].position = v:get_origin()
            smoke[k].alpha = v:get_bbox().alpha*255

            if v.m_bDidSmokeEffect and v:get_bbox().alpha > 0 then
                smoke[k].draw = true
            end
        end
    end

    if CInferno ~= nil then
        for k, v in pairs(CInferno) do
            if molotov[k] == nil then
                molotov[k] = {}
                molotov[k].position = vector(0, 0, 0)
                molotov[k].alpha = 0
                molotov[k].draw = false
                molotov[k].teammate = false
            end

            local percentage = (7.125 -  tickinterval * (tickcount - v.m_nFireEffectTickBegin))/7.125
            molotov[k].position = v:get_origin()
            molotov[k].alpha = percentage*255

            local m_hOwnerEntity = v.m_hOwnerEntity

            if m_hOwnerEntity ~= nil and is_not_friendly_fire and m_hOwnerEntity ~= player and not m_hOwnerEntity:is_enemy() then
                molotov[k].teammate = true
            end

            local cells = {}
            local highest_distance = 100
            for i = 1, 64 do
                if v.m_bFireIsBurning[i] then
                    table.insert(cells, {v.m_fireXDelta[i], v.m_fireYDelta[i], v.m_fireZDelta[i]})
                end
            end

            for i = 1, #cells do
                local cell = cells[i]
                local x_delta, y_delta, z_delta = unpack(cell)

                for i2 = 1, #cells do
                    local cell2 = cells[i2]
                    local distance = vector(x_delta, y_delta):dist(vector(cell2[1], cell2[2]))
                    if distance > highest_distance then
                        highest_distance = distance
                    end
                end
            end

            if percentage > 0 then
                molotov[k].draw = true
                molotov[k].radius = highest_distance/2 + 40
            end
        end
    end

    return {smoke = smoke, molotov = molotov}
end

for i = 1, 15 do
    grenade_radius[i] = {
        molotov_radius = smoothy.new(0),
        smoke_radius = smoothy.new(0)
    }
end
grenade_radius.handle = function()
    if not nade_radius_s:get() or nade_radius_select:get()._len == 0 then
        return
    end

    -- local grenade_radius_style = ui_handler.elements["features"]["grenade_radius_style"]

    local molotov_enabled = nade_radius_select:get("Molotov")
    local smoke_enabled   = nade_radius_select:get("Smoke")

    if not molotov_enabled and not smoke_enabled then
        return
    end

    local grenade = grenade_radius.get()
    
    if grenade == nil then
        return
    end

    local enemy_molotov_color = nade_radius_molotov_enemy_c:get()
    local team_molotov_color = nade_radius_molotov_team_c:get()
    local smoke_color = nade_radius_smoke_c:get()

    local anim = {}

    for i = 1, #grenade.molotov do
        local v = grenade.molotov[i]
        anim.molotov_radius = grenade_radius[i].molotov_radius(.05, v.draw)

        if v.draw and molotov_enabled then
            local clr = v.teammate and team_molotov_color or enemy_molotov_color
            render.text(1, render.world_to_screen(v.position), (v.teammate and color(149, 184, 6, 255) or color(230, 21, 21, 255)):override("a", anim.molotov_radius*255), nil, v.teammate and "✔" or "❌")
            render.circle_3d_outline(v.position, clr:override("a", clr.a*v.alpha), anim.molotov_radius*125, 0, 1, 1.5)
            
        end
    end

    local magic_alpha_smoke = smoke_color.a / 255
    local smoke_zero_alpha = smoke_color:override("a", 0)

    for i = 1, #grenade.smoke do
        local v = grenade.smoke[i]

        anim.smoke_radius = grenade_radius[i].smoke_radius(.05, v.draw)

        if v.draw and smoke_enabled then

            render.text(1, render.world_to_screen(v.position), (v.teammate and color(149, 184, 6, 255) or color(230, 21, 21, 255)):override("a", 255), nil, v.teammate and "✔" or "❌")
            render.circle_3d_outline(v.position, smoke_color:override("a",  magic_alpha_smoke * v.alpha), anim.smoke_radius*125, 0, 1, 1.5)
        end
    end
end


local timer_dt = 0

state_emeny_be = false
function enemy_have_weapon(dist, index)
    if entity.get_threat() == nil then
        state_emeny_be = true
    else
        state_emeny_be = false
    end

    if state_emeny_be == false then
        if entity.get_local_player():is_alive() then
            local enemy = entity.get_threat()
            
            local player_origin = entity.get_local_player().m_vecOrigin
            local enemy_origin = enemy.m_vecOrigin
            
            local units = calculate_distance(player_origin.x, player_origin.y, player_origin.z, enemy_origin.x, enemy_origin.y, enemy_origin.z)


            if entity.get_threat() == nil or entity.get_threat():get_player_weapon() == nil then
                return false
            end

            local state_zeus = false

            if entity.get_threat():get_player_weapon():get_weapon_index() == index then
                state_zeus = true
            else
                state_zeus = false
            end

            if units < dist and state_zeus then
                return true
            end
        else
            return false
        end
    end
end


local function enemy_zeus_func()
    if enemy_have_weapon(when_enemy_zeus_dist:get(), 31) and when_enemy_zeus:get() then
        if when_enemy_zeus_combo:get("SafePoints set Default") then
            refs.safe_points_ui:override("Default")
        else
            refs.safe_points_ui:override()
        end

        if when_enemy_zeus_combo:get("Set Multipoints") then
            refs.head_scale_ui:override(when_enemy_zeus_mult_head:get())
            refs.body_scale_ui:override(when_enemy_zeus_mult_body:get())
        else
            refs.head_scale_ui:override()
            refs.body_scale_ui:override()
        end

        if when_enemy_zeus_combo:get("Set Damage") then
            refs.min_damage_ui:override(when_enemy_zeus_mind:get())
        else
            refs.min_damage_ui:override()
        end

        if when_enemy_zeus_switch:get() then
            utils.console_exec("slot2")
        end

        refs.YawModifer:override("Disabled")
        refs.YawOffset:override(15)
    else
        refs.safe_points_ui:override()
        refs.YawModifer:override()
        refs.YawOffset:override()
    end
end





function get_vel(player)
    if(player == nil) then return end
    local vec = player.m_vecVelocity
    local velocity = vec:length()
    return velocity
end

function Angle_Vector(angle_x, angle_y)
    local sp, sy, cp, cy = nil
    sp = math.sin(math.rad(angle_x));
    sy = math.sin(math.rad(angle_y));
    cp = math.cos(math.rad(angle_x));
    cy = math.cos(math.rad(angle_y));
    return vector(cp * cy, cp * sy, -sp);
end

local avoid_collisions = function(cmd)
    if not avoid_collisions_s:get() then
        return
    end

    if not globals.is_in_game then
        return
    end

    local lp = entity.get_local_player()
    if not lp then
        return
    end

    local dm = 28
    local camera_angles = render.camera_angles()
    local yaw = camera_angles.y
    local l = lp.m_vecOrigin
    local min = math.huge
    local val = math.huge
    for i = 1, 180 do
        local dir_x, dir_y, dir_z = Angle_Vector(0, (yaw + i - 90)).x, Angle_Vector(0, (yaw + i - 90)).y, Angle_Vector(0, (yaw)).z
        local end_x, end_y, end_z = l.x + dir_x * 70, l.y + dir_y * 70, l.z + 60
        local tracer = utils.trace_line(l, vector(end_x, end_y, end_z), nil, nil, 1)
        if(l:dist(tracer.end_pos) < min) then
            min = l:dist(tracer.end_pos)
            val = i
        end
    end
    if(min < 25 + dm and cmd.in_jump and not (cmd.in_moveright or cmd.in_moveleft or cmd.in_back)) then
        forward_velo = math.abs(get_vel(lp) * math.cos(math.rad(val)))
        if(math.abs(val-90) < 40) then
            side_velo = get_vel(lp) * math.sin(math.rad(val)) * (25 + dm - min) / 15
        else
            side_velo = get_vel(lp) * math.sin(math.rad(val))
        end
        cmd.forwardmove = forward_velo
        if(val >= 90) then
            cmd.sidemove = side_velo
        else
            cmd.sidemove = side_velo * -1
        end
    end
end


function fps_boost_func()
    if not fps_boost:get() then
        for _, group in ipairs(cvarSettings) do
            for _, c in ipairs(group.cvar) do
                c:int(1)
            end
        end
        return
    end

    local fps_boost_list = fps_boost_list:get()
    if fps_boost_list == 1 then
        cvar.r_shadows:int(0)
        cvar.cl_csm_static_prop_shadows:int(0)
        cvar.cl_csm_shadows:int(0)
        cvar.cl_csm_world_shadows:int(0)
        cvar.cl_foot_contact_shadows:int(0)
        cvar.cl_csm_viewmodel_shadows:int(0)
        cvar.cl_csm_rope_shadows:int(0)
        cvar.cl_csm_sprite_shadows:int(0)
        cvar.cl_foot_contact_shadows:int(0)
    else
        cvar.r_shadows:int(1)
        cvar.cl_csm_static_prop_shadows:int(1)
        cvar.cl_csm_shadows:int(1)
        cvar.cl_csm_world_shadows:int(1)
        cvar.cl_foot_contact_shadows:int(1)
        cvar.cl_csm_viewmodel_shadows:int(1)
        cvar.cl_csm_rope_shadows:int(1)
        cvar.cl_csm_sprite_shadows:int(1)
        cvar.cl_foot_contact_shadows:int(1)
    end

    if fps_boost_list == 2 then
        cvar.r_drawparticles:int(0)
        cvar.cl_detail_multiplier:int(0)

        cvar.r_eyesize:int(0)
        cvar.r_eyeshift_z:int(0)
        cvar.r_eyeshift_y:int(0)
        cvar.r_eyeshift_x:int(0)
        cvar.r_eyemove:int(0)
        cvar.r_eyegloss:int(0)

        cvar.r_drawtracers_firstperson:int(0)
        cvar.r_drawtracers:int(0)

    elseif fps_boost_list == 3 then
        for _, group in ipairs(cvarSettings) do
            for _, c in ipairs(group.cvar) do
                c:int(0)
            end
        end
    else
        for _, group in ipairs(cvarSettings) do
            for _, c in ipairs(group.cvar) do
                c:int(1)
            end
        end
    end
end

function disableFpsBoost()
    for _, group in ipairs(cvarSettings) do
        for _, c in ipairs(group.cvar) do
            c:int(1)
        end
    end
end  


local Localplayer = entity.get_local_player()
local score_at_stand = 0
local score_at_stand_error = 0
local timer_peek = 0
local state_fire = false

local Can_hit = false
local Can_hit_del = false
local timer_hit = 0

local function tp_exploit()
    -- refs.asoptions:override("Move Between Shots")
    -- refs.asdtoptions:override("Move Between Shots")

    if Localplayer == nil then return end
    check_safe_head = false
    -- if not Localplayer:is_dormant() then
    if refs.isDT:get() or refs.isHS:get() and state_fire == false then 

        local Need_safe_head = true
        local Need_Teleport = false
        local two_step = true

    
        local Localplayer = entity.get_local_player()
        if Localplayer == nil then return end
        local Weapon = Localplayer:get_player_weapon()
        if Weapon == nil then return end
        local WeaponID = Weapon:get_classname()


        if refs.auto_peek:get() or get_player_state() == "Standing" then
            Can_hit = false
        else
            if entity.get_threat(true) == nil then
                Can_hit = false
            else
                Can_hit = true
            end
        end


        if Can_hit  then
            Need_Teleport = true

            score_tp_2 = score_tp_2 + 1
        else
            score_error_2 = score_error_2 + 1
        end



        if Need_Teleport and three_step and score_tp_2 <= 1 then
            if three_step and score_tp <= 2 then
                -- refs.YawModifer:override("Disabled")
                refs.FakeLag:override(false)

                if (refs.auto_peek:get() == false) then
                    if teleportinair_type:get() == "DoubleTap" then
                        refs.isDT:override(false)
                    else
                        refs.isHS:override(false)
                    end
                else
                    refs.isHS:override()
                    refs.isDT:override()
                end

                three_step = false
                score_tp = score_tp + 1
            end

            -- refs.astop:override(true)
            -- refs.asoptions:override("")

            three_step = false
            score_tp = score_tp + 1
        end


        if (three_step == false) and Need_Teleport  then
            score_error_2 = 0
        end


        if score_error_2 > 18 then
            -- if not refs.auto_peek:get() then
            --     refs.asoptions:override("")
            --     -- refs.aimbot_ui:override(false)
            -- else
            --     -- refs.astop:override(true)
            --     refs.asoptions:override("Move Between Shots")
            --     -- refs.aimbot_ui:override(true)
            -- end

            refs.YawModifer:override("Disabled")
            if teleportinair_type:get() == "DoubleTap" then
                refs.isHS:override()
                refs.isDT:override()
            else
                refs.isDT:override()
                refs.isHS:override()
            end

            refs.FakeLag:override()

            dopusk_hiden = true
            three_step = true
            score_tp = 0
            score_tp_2 = 0
            aim_ack_state = false
        end
    end
    -- end
end
------------------------------------------------------ФУНКЦИИ------------------------------------------------------




------------------------------------------------------КОНФИГИ------------------------------------------------------
local cfg_data = {
    bools = {
        AAon,
        enable_builder,
        zeus_aa,
        HUD,
        fps_boost,
        clan_tag,
        rainbow,
        indicators,
        scope,
        killeffect_s,
        aimbot_log,
        console_color_s,
        back_chams,
        teleportinair,
        adaptive_back,
        hiden_exp,
        min_d,
        trashtalk,
        on_death,
        on_kill,
        velwarning,
        fast_movement_stairs,
        breal_lc,
        arrows,
        air_mode,
        enable_w,
        keybinds_switch,
        revolver,
        -- safe_head_fire,
        auto_rs,
        AntiBrute["Enable"],
        peek_fake_always,
        anti_defensive_ui,
        -- dis_fl_on_shot,
        jump_scout_fix,
        nade_radius_s,
        molotov_wireframe_s,
		avoid_collisions_s,
		when_enemy_zeus,
		-- fk_60_ticks,
		smart_fk,
		shared_icon,


       ------AA
       menu_condition[1].enable,
       menu_condition[1].random_desync,
       menu_condition[1].random_yaw,

       menu_condition[2].enable,
       menu_condition[2].random_desync,
       menu_condition[2].random_yaw,

       menu_condition[3].enable,
       menu_condition[3].random_desync,
       menu_condition[3].random_yaw,

       menu_condition[4].enable,
       menu_condition[4].random_desync,
       menu_condition[4].random_yaw,

       menu_condition[5].enable,
       menu_condition[5].random_desync,
       menu_condition[5].random_yaw,

       menu_condition[6].enable,
       menu_condition[6].random_desync,
       menu_condition[6].random_yaw,

       menu_condition[7].enable,
       menu_condition[7].random_desync,
       menu_condition[7].random_yaw,
    },

    ints = {
        -- combo/selecttable
        presets,
        manual_yaw_base,
        condition,
        -- Yaw, 
        indicators_type,
        log_select,
        presets_builder,
        air_hit_combo,
        hiden_exp_type,
        hiden_exp_pitch_type,
        hiden_exp_yaw_type,
        air_hit_slider_hitboxes,
        nade_radius_select,
		when_enemy_zeus_combo,
        when_enemy_zeus_switch,
        fps_boost_list,

        AntiBrute["".."1".."Phase Jitter type"],
        AntiBrute["".."2".."Phase Jitter type"],
        AntiBrute["".."3".."Phase Jitter type"],
        AntiBrute["".."4".."Phase Jitter type"],
        AntiBrute["".."5".."Phase Jitter type"],
        AntiBrute["".."6".."Phase Jitter type"],
        AntiBrute["".."7".."Phase Jitter type"],
        AntiBrute["".."8".."Phase Jitter type"],
        AntiBrute["".."9".."Phase Jitter type"],
        AntiBrute["".."10".."Phase Jitter type"],

        AntiBrute["".."1".."Phase Options"],
        AntiBrute["".."2".."Phase Options"],
        AntiBrute["".."3".."Phase Options"],
        AntiBrute["".."4".."Phase Options"],
        AntiBrute["".."5".."Phase Options"],
        AntiBrute["".."6".."Phase Options"],
        AntiBrute["".."7".."Phase Options"],
        AntiBrute["".."8".."Phase Options"],
        AntiBrute["".."9".."Phase Options"],
        AntiBrute["".."10".."Phase Options"],


        ------AA
        menu_condition[1].yaw_modifier,
        menu_condition[1].desync_freestanding,
        menu_condition[1].options,


        menu_condition[2].yaw_modifier,
        menu_condition[2].desync_freestanding,
        menu_condition[2].options,


        menu_condition[3].yaw_modifier,
        menu_condition[3].desync_freestanding,
        menu_condition[3].options,


        menu_condition[4].yaw_modifier,
        menu_condition[4].desync_freestanding,
        menu_condition[4].options,


        menu_condition[5].yaw_modifier,
        menu_condition[5].desync_freestanding,
        menu_condition[5].options,


        menu_condition[6].yaw_modifier,
        menu_condition[6].desync_freestanding,
        menu_condition[6].options,


        menu_condition[7].yaw_modifier,
        menu_condition[7].desync_freestanding,
        menu_condition[7].options,
    },
    floats = {
        --ui.my_sliderfloat
        HUD_speed,
        scope_length,
        scope_gap,
        aspect_ratio,
        killeffect_time, 
        distance_arrow,
        pos_x,
        pos_y,
        keybinds_pos_x,
        keybinds_pos_y,
        air_hit_slider,
        noscope_hit_slider,
        auto_rs_slider,
		when_enemy_zeus_mult_head,
		when_enemy_zeus_mult_body,
		when_enemy_zeus_mind,
        when_enemy_zeus_dist,
		-- fk_60_ticks_slider,
		smart_fk_s1,
		smart_fk_s2,

        AntiBrute["Reset time"],
        AntiBrute["Phases"],

        AntiBrute["".."1".."Phase Yaw L"],
        AntiBrute["".."2".."Phase Yaw L"],
        AntiBrute["".."3".."Phase Yaw L"],
        AntiBrute["".."4".."Phase Yaw L"],
        AntiBrute["".."5".."Phase Yaw L"],
        AntiBrute["".."6".."Phase Yaw L"],
        AntiBrute["".."7".."Phase Yaw L"],
        AntiBrute["".."8".."Phase Yaw L"],
        AntiBrute["".."9".."Phase Yaw L"],
        AntiBrute["".."10".."Phase Yaw L"],

        AntiBrute["".."1".."Phase Yaw R"],
        AntiBrute["".."2".."Phase Yaw R"],
        AntiBrute["".."3".."Phase Yaw R"],
        AntiBrute["".."4".."Phase Yaw R"],
        AntiBrute["".."5".."Phase Yaw R"],
        AntiBrute["".."6".."Phase Yaw R"],
        AntiBrute["".."7".."Phase Yaw R"],
        AntiBrute["".."8".."Phase Yaw R"],
        AntiBrute["".."9".."Phase Yaw R"],
        AntiBrute["".."10".."Phase Yaw R"],

        AntiBrute["".."1".."Phase Jitter"],
        AntiBrute["".."2".."Phase Jitter"],
        AntiBrute["".."3".."Phase Jitter"],
        AntiBrute["".."4".."Phase Jitter"],
        AntiBrute["".."5".."Phase Jitter"],
        AntiBrute["".."6".."Phase Jitter"],
        AntiBrute["".."7".."Phase Jitter"],
        AntiBrute["".."8".."Phase Jitter"],
        AntiBrute["".."9".."Phase Jitter"],
        AntiBrute["".."10".."Phase Jitter"],

        AntiBrute["".."1".."Phase Left"],
        AntiBrute["".."2".."Phase Left"],
        AntiBrute["".."3".."Phase Left"],
        AntiBrute["".."4".."Phase Left"],
        AntiBrute["".."5".."Phase Left"],
        AntiBrute["".."6".."Phase Left"],
        AntiBrute["".."7".."Phase Left"],
        AntiBrute["".."8".."Phase Left"],
        AntiBrute["".."9".."Phase Left"],
        AntiBrute["".."10".."Phase Left"],

        AntiBrute["".."1".."Phase Right"],
        AntiBrute["".."2".."Phase Right"],
        AntiBrute["".."3".."Phase Right"],
        AntiBrute["".."4".."Phase Right"],
        AntiBrute["".."5".."Phase Right"],
        AntiBrute["".."6".."Phase Right"],
        AntiBrute["".."7".."Phase Right"],
        AntiBrute["".."8".."Phase Right"],
        AntiBrute["".."9".."Phase Right"],
        AntiBrute["".."10".."Phase Right"],


        hiden_exp_pitch1_slider,
        hiden_exp_pitch2_slider,
        hiden_exp_pitch3_slider,
        hiden_exp_yaw1_slider,
        hiden_exp_yaw2_slider,
        hiden_exp_yaw3_slider,


        ----AA
        menu_condition[1].left_yaw_add,
        menu_condition[1].right_yaw_add,
        menu_condition[1].modifier_offset,
        menu_condition[1].left_limit,
        menu_condition[1].right_limit,
        menu_condition[1].random_desync_start_l,
        menu_condition[1].random_desync_end_l,
        menu_condition[1].random_desync_start_r,
        menu_condition[1].random_desync_end_r,
        menu_condition[1].random_yaw_start,
        menu_condition[1].random_yaw_end,



        menu_condition[2].left_yaw_add,
        menu_condition[2].right_yaw_add,
        menu_condition[2].modifier_offset,
        menu_condition[2].left_limit,
        menu_condition[2].right_limit,
        menu_condition[2].random_desync_start_l,
        menu_condition[2].random_desync_end_l,
        menu_condition[2].random_desync_start_r,
        menu_condition[2].random_desync_end_r,
        menu_condition[2].random_yaw_start,
        menu_condition[2].random_yaw_end,


        menu_condition[3].left_yaw_add,
        menu_condition[3].right_yaw_add,
        menu_condition[3].modifier_offset,
        menu_condition[3].left_limit,
        menu_condition[3].right_limit,
        menu_condition[3].random_desync_start_l,
        menu_condition[3].random_desync_end_l,
        menu_condition[3].random_desync_start_r,
        menu_condition[3].random_desync_end_r,
        menu_condition[3].random_yaw_start,
        menu_condition[3].random_yaw_end,


        menu_condition[4].left_yaw_add,
        menu_condition[4].right_yaw_add,
        menu_condition[4].modifier_offset,
        menu_condition[4].left_limit,
        menu_condition[4].right_limit,
        menu_condition[4].random_desync_start_l,
        menu_condition[4].random_desync_end_l,
        menu_condition[4].random_desync_start_r,
        menu_condition[4].random_desync_end_r,
        menu_condition[4].random_yaw_start,
        menu_condition[4].random_yaw_end,


        menu_condition[5].left_yaw_add,
        menu_condition[5].right_yaw_add,
        menu_condition[5].modifier_offset,
        menu_condition[5].left_limit,
        menu_condition[5].right_limit,
        menu_condition[5].random_desync_start_l,
        menu_condition[5].random_desync_end_l,
        menu_condition[5].random_desync_start_r,
        menu_condition[5].random_desync_end_r,
        menu_condition[5].random_yaw_start,
        menu_condition[5].random_yaw_end,


        menu_condition[6].left_yaw_add,
        menu_condition[6].right_yaw_add,
        menu_condition[6].modifier_offset,
        menu_condition[6].left_limit,
        menu_condition[6].right_limit,
        menu_condition[6].random_desync_start_l,
        menu_condition[6].random_desync_end_l,
        menu_condition[6].random_desync_start_r,
        menu_condition[6].random_desync_end_r,
        menu_condition[6].random_yaw_start,
        menu_condition[6].random_yaw_end,


        menu_condition[7].left_yaw_add,
        menu_condition[7].right_yaw_add,
        menu_condition[7].modifier_offset,
        menu_condition[7].left_limit,
        menu_condition[7].right_limit,
        menu_condition[7].random_desync_start_l,
        menu_condition[7].random_desync_end_l,
        menu_condition[7].random_desync_start_r,
        menu_condition[7].random_desync_end_r,
        menu_condition[7].random_yaw_start,
        menu_condition[7].random_yaw_end,

    },

    strings = {
        --ui.my_textbox
    },

    colors = {
        --ui.color,

        HUD_color1,
        HUD_color2,
        indicators_color,
        scope_color,
        log_color_hit,
        log_color_miss,
        console_color_picker,   
        back_chams_color1,
        back_chams_color2,
    }
}




local cfg_data_builder = {
    bools = {
        enable_builder,
        AAon,
       ------AA
        menu_condition[1].enable,
        menu_condition[1].random_desync,
        menu_condition[1].random_yaw,

        menu_condition[2].enable,
        menu_condition[2].random_desync,
        menu_condition[2].random_yaw,

        menu_condition[3].enable,
        menu_condition[3].random_desync,
        menu_condition[3].random_yaw,

        menu_condition[4].enable,
        menu_condition[4].random_desync,
        menu_condition[4].random_yaw,

        menu_condition[5].enable,
        menu_condition[5].random_desync,
        menu_condition[5].random_yaw,

        menu_condition[6].enable,
        menu_condition[6].random_desync,
        menu_condition[6].random_yaw,

        menu_condition[7].enable,
        menu_condition[7].random_desync,
        menu_condition[7].random_yaw,
    },

    ints = {
        -- accuracy_select,
        ------AA
        menu_condition[1].yaw_modifier,
        menu_condition[1].desync_freestanding,
        menu_condition[1].options,


        menu_condition[2].yaw_modifier,
        menu_condition[2].desync_freestanding,
        menu_condition[2].options,


        menu_condition[3].yaw_modifier,
        menu_condition[3].desync_freestanding,
        menu_condition[3].options,


        menu_condition[4].yaw_modifier,
        menu_condition[4].desync_freestanding,
        menu_condition[4].options,


        menu_condition[5].yaw_modifier,
        menu_condition[5].desync_freestanding,
        menu_condition[5].options,


        menu_condition[6].yaw_modifier,
        menu_condition[6].desync_freestanding,
        menu_condition[6].options,


        menu_condition[7].yaw_modifier,
        menu_condition[7].desync_freestanding,
        menu_condition[7].options,
    },
    floats = {
        --ui.my_sliderfloat
        menu_condition[1].left_yaw_add,
        menu_condition[1].right_yaw_add,
        menu_condition[1].modifier_offset,
        menu_condition[1].left_limit,
        menu_condition[1].right_limit,
        menu_condition[1].random_desync_start_l,
        menu_condition[1].random_desync_end_l,
        menu_condition[1].random_desync_start_r,
        menu_condition[1].random_desync_end_r,
        menu_condition[1].random_yaw_start,
        menu_condition[1].random_yaw_end,



        menu_condition[2].left_yaw_add,
        menu_condition[2].right_yaw_add,
        menu_condition[2].modifier_offset,
        menu_condition[2].left_limit,
        menu_condition[2].right_limit,
        menu_condition[2].random_desync_start_l,
        menu_condition[2].random_desync_end_l,
        menu_condition[2].random_desync_start_r,
        menu_condition[2].random_desync_end_r,
        menu_condition[2].random_yaw_start,
        menu_condition[2].random_yaw_end,


        menu_condition[3].left_yaw_add,
        menu_condition[3].right_yaw_add,
        menu_condition[3].modifier_offset,
        menu_condition[3].left_limit,
        menu_condition[3].right_limit,
        menu_condition[3].random_desync_start_l,
        menu_condition[3].random_desync_end_l,
        menu_condition[3].random_desync_start_r,
        menu_condition[3].random_desync_end_r,
        menu_condition[3].random_yaw_start,
        menu_condition[3].random_yaw_end,


        menu_condition[4].left_yaw_add,
        menu_condition[4].right_yaw_add,
        menu_condition[4].modifier_offset,
        menu_condition[4].left_limit,
        menu_condition[4].right_limit,
        menu_condition[4].random_desync_start_l,
        menu_condition[4].random_desync_end_l,
        menu_condition[4].random_desync_start_r,
        menu_condition[4].random_desync_end_r,
        menu_condition[4].random_yaw_start,
        menu_condition[4].random_yaw_end,


        menu_condition[5].left_yaw_add,
        menu_condition[5].right_yaw_add,
        menu_condition[5].modifier_offset,
        menu_condition[5].left_limit,
        menu_condition[5].right_limit,
        menu_condition[5].random_desync_start_l,
        menu_condition[5].random_desync_end_l,
        menu_condition[5].random_desync_start_r,
        menu_condition[5].random_desync_end_r,
        menu_condition[5].random_yaw_start,
        menu_condition[5].random_yaw_end,


        menu_condition[6].left_yaw_add,
        menu_condition[6].right_yaw_add,
        menu_condition[6].modifier_offset,
        menu_condition[6].left_limit,
        menu_condition[6].right_limit,
        menu_condition[6].random_desync_start_l,
        menu_condition[6].random_desync_end_l,
        menu_condition[6].random_desync_start_r,
        menu_condition[6].random_desync_end_r,
        menu_condition[6].random_yaw_start,
        menu_condition[6].random_yaw_end,


        menu_condition[7].left_yaw_add,
        menu_condition[7].right_yaw_add,
        menu_condition[7].modifier_offset,
        menu_condition[7].left_limit,
        menu_condition[7].right_limit,
        menu_condition[7].random_desync_start_l,
        menu_condition[7].random_desync_end_l,
        menu_condition[7].random_desync_start_r,
        menu_condition[7].random_desync_end_r,
        menu_condition[7].random_yaw_start,
        menu_condition[7].random_yaw_end,

    },

    strings = {
        --ui.my_textbox
    },

    colors = {
        --ui.color,

    }
}


local cfg_data_anti_brute = {
    bools = {
        AntiBrute["Enable"],
    },

    ints = {
        -- accuracy_select,
        ------AA
        AntiBrute["".."1".."Phase Jitter type"],
        AntiBrute["".."2".."Phase Jitter type"],
        AntiBrute["".."3".."Phase Jitter type"],
        AntiBrute["".."4".."Phase Jitter type"],
        AntiBrute["".."5".."Phase Jitter type"],
        AntiBrute["".."6".."Phase Jitter type"],
        AntiBrute["".."7".."Phase Jitter type"],
        AntiBrute["".."8".."Phase Jitter type"],
        AntiBrute["".."9".."Phase Jitter type"],
        AntiBrute["".."10".."Phase Jitter type"],

        AntiBrute["".."1".."Phase Options"],
        AntiBrute["".."2".."Phase Options"],
        AntiBrute["".."3".."Phase Options"],
        AntiBrute["".."4".."Phase Options"],
        AntiBrute["".."5".."Phase Options"],
        AntiBrute["".."6".."Phase Options"],
        AntiBrute["".."7".."Phase Options"],
        AntiBrute["".."8".."Phase Options"],
        AntiBrute["".."9".."Phase Options"],
        AntiBrute["".."10".."Phase Options"],
    },
    floats = {
        --ui.my_sliderfloat
        AntiBrute["Reset time"],
        AntiBrute["Phases"],

        AntiBrute["".."1".."Phase Yaw L"],
        AntiBrute["".."2".."Phase Yaw L"],
        AntiBrute["".."3".."Phase Yaw L"],
        AntiBrute["".."4".."Phase Yaw L"],
        AntiBrute["".."5".."Phase Yaw L"],
        AntiBrute["".."6".."Phase Yaw L"],
        AntiBrute["".."7".."Phase Yaw L"],
        AntiBrute["".."8".."Phase Yaw L"],
        AntiBrute["".."9".."Phase Yaw L"],
        AntiBrute["".."10".."Phase Yaw L"],

        AntiBrute["".."1".."Phase Yaw R"],
        AntiBrute["".."2".."Phase Yaw R"],
        AntiBrute["".."3".."Phase Yaw R"],
        AntiBrute["".."4".."Phase Yaw R"],
        AntiBrute["".."5".."Phase Yaw R"],
        AntiBrute["".."6".."Phase Yaw R"],
        AntiBrute["".."7".."Phase Yaw R"],
        AntiBrute["".."8".."Phase Yaw R"],
        AntiBrute["".."9".."Phase Yaw R"],
        AntiBrute["".."10".."Phase Yaw R"],

        AntiBrute["".."1".."Phase Jitter"],
        AntiBrute["".."2".."Phase Jitter"],
        AntiBrute["".."3".."Phase Jitter"],
        AntiBrute["".."4".."Phase Jitter"],
        AntiBrute["".."5".."Phase Jitter"],
        AntiBrute["".."6".."Phase Jitter"],
        AntiBrute["".."7".."Phase Jitter"],
        AntiBrute["".."8".."Phase Jitter"],
        AntiBrute["".."9".."Phase Jitter"],
        AntiBrute["".."10".."Phase Jitter"],

        AntiBrute["".."1".."Phase Left"],
        AntiBrute["".."2".."Phase Left"],
        AntiBrute["".."3".."Phase Left"],
        AntiBrute["".."4".."Phase Left"],
        AntiBrute["".."5".."Phase Left"],
        AntiBrute["".."6".."Phase Left"],
        AntiBrute["".."7".."Phase Left"],
        AntiBrute["".."8".."Phase Left"],
        AntiBrute["".."9".."Phase Left"],
        AntiBrute["".."10".."Phase Left"],

        AntiBrute["".."1".."Phase Right"],
        AntiBrute["".."2".."Phase Right"],
        AntiBrute["".."3".."Phase Right"],
        AntiBrute["".."4".."Phase Right"],
        AntiBrute["".."5".."Phase Right"],
        AntiBrute["".."6".."Phase Right"],
        AntiBrute["".."7".."Phase Right"],
        AntiBrute["".."8".."Phase Right"],
        AntiBrute["".."9".."Phase Right"],
        AntiBrute["".."10".."Phase Right"],

    },
}


AntiAimCfg:button(iconexport..  "  Export builder settings", function()

    
    print_raw("\a1266D3FF(✔) Export Done!")


    local Code = {{}, {}, {}, {}, {}}

    for _, bools in pairs(cfg_data_builder.bools) do
        table.insert(Code[1], bools:get())
    end

    for _, ints in pairs(cfg_data_builder.ints) do
        table.insert(Code[2], ints:get())
    end

    for _, floats in pairs(cfg_data_builder.floats) do
        table.insert(Code[3], floats:get())
    end

    for _, strings in pairs(cfg_data_builder.strings) do
        table.insert(Code[4], strings:get())
    end

    for _, colors in pairs(cfg_data_builder.colors) do
        -- local clr = colors:get()

        -- table.insert(Code[5], colors:get())
    end

    clipboard.set(base64.encode(JSON.stringify(Code)))
end)

AntiAimCfg:button(iconimport..  "  Import builder settings", function()

    print_raw("\aA8328BFF(✔) Import Done!")

    for k, v in pairs(JSON.parse(base64.decode(clipboard.get()))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data_builder[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "strings") then
                --cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "colors") then
                -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
                -- cfg_data[k][k2]:set(v2)
            end
        end
    end
end)


function setter_builder_settings(settings)
    -- print_raw("\aE87A0D(✔) Default Import Done!")

    for k, v in pairs(JSON.parse(base64.decode(settings))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data_builder[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "strings") then
                --cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "colors") then
                -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
                -- cfg_data[k][k2]:set(v2)
            end
        end
    end

end





Anti_Brute_Cfg:button(iconexport..  "  Export Anti-Brute settings", function()

    
    print_raw("\a1266D3FF(✔) Export Anti-Brute Done!")


    local Code = {{}, {}, {}, {}, {}}

    for _, bools in pairs(cfg_data_anti_brute.bools) do
        table.insert(Code[1], bools:get())
    end

    for _, ints in pairs(cfg_data_anti_brute.ints) do
        table.insert(Code[2], ints:get())
    end

    for _, floats in pairs(cfg_data_anti_brute.floats) do
        table.insert(Code[3], floats:get())
    end

    -- for _, strings in pairs(cfg_data_anti_brute.strings) do
    --     table.insert(Code[4], strings:get())
    -- end

    -- for _, colors in pairs(cfg_data_anti_brute.colors) do
    --     -- local clr = colors:get()

    --     -- table.insert(Code[5], colors:get())
    -- end

    clipboard.set(base64.encode(JSON.stringify(Code)))
end)

Anti_Brute_Cfg:button(iconimport..  "  Import Anti-Brute settings", function()

    print_raw("\aA8328BFF(✔) Import Anti-Brute Done!")

    for k, v in pairs(JSON.parse(base64.decode(clipboard.get()))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end

            -- if (k == "strings") then
            --     --cfg_data_builder[k][k2]:set(v2)
            -- end

            -- if (k == "colors") then
            --     -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
            --     -- cfg_data[k][k2]:set(v2)
            -- end
        end
    end
end)


function setter_anti_brute_settings(settings)
    -- print_raw("\aE87A0D(✔) Default Import Done!")

    for k, v in pairs(JSON.parse(base64.decode(settings))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data_anti_brute[k][k2]:set(v2)
            end

            if (k == "strings") then
                --cfg_data_builder[k][k2]:set(v2)
            end

            if (k == "colors") then
                -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
                -- cfg_data[k][k2]:set(v2)
            end
        end
    end

end







General_info_cfg:button(iconexport..  "  Export", function()

    
    print_raw("\a1266D3FF(✔) Export Done. Молодец, ты высунул свои мега-приватные настройки ))")


    local Code = {{}, {}, {}, {}, {}}

    for _, bools in pairs(cfg_data.bools) do
        table.insert(Code[1], bools:get())
    end

    for _, ints in pairs(cfg_data.ints) do
        table.insert(Code[2], ints:get())
    end

    for _, floats in pairs(cfg_data.floats) do
        table.insert(Code[3], floats:get())
    end

    for _, strings in pairs(cfg_data.strings) do
        table.insert(Code[4], strings:get())
    end

    for _, colors in pairs(cfg_data.colors) do
        -- local clr = colors:get()

        -- table.insert(Code[5], colors:get())
    end

    clipboard.set(base64.encode(JSON.stringify(Code)))
end)

General_info_cfg:button(iconimport..  "  Import", function()

    print_raw("\aA8328BFF(✔) Import Done. Молодец, ты всунул чьи-то мега-приватные настройки ))")

    for k, v in pairs(JSON.parse(base64.decode(clipboard.get()))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data[k][k2]:set(v2)
            end

            if (k == "strings") then
                --cfg_data[k][k2]:set(v2)
            end

            if (k == "colors") then
                -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
                -- cfg_data[k][k2]:set(v2)
            end
        end
    end
end)

General_info_cfg:button(icondefault..  "  Default config", function()

    print_raw("\aE87A0DFF(✔) Default Import Done. Молодец, ты всунул стандартные мега-приватные настройки ))")

    cfg = network.get("https://pastebin.com/raw/nk4P5Hr5")
    for k, v in pairs(JSON.parse(base64.decode(cfg))) do

        k = ({[1] = "bools", [2] = "ints", [3] = "floats", [4] = "strings", [5] = "colors"})[k]

        for k2, v2 in pairs(v) do
            if (k == "bools") then
                cfg_data[k][k2]:set(v2)
            end

            if (k == "ints") then
                cfg_data[k][k2]:set(v2)
            end
            if (k == "floats") then
                cfg_data[k][k2]:set(v2)
            end

            if (k == "strings") then
                --cfg_data[k][k2]:set(v2)
            end

            if (k == "colors") then
                -- cfg_data[k][k2]:set(color.new(tonumber("0x"..v2:sub(1, 2))/255, tonumber("0x"..v2:sub(3, 4))/255, tonumber("0x"..v2:sub(5, 6))/255, tonumber("0x"..v2:sub(7, 8))/255))
                -- cfg_data[k][k2]:set(v2)
            end
        end
    end
end)

----------------------------------------------------КОНФИГИ------------------------------------------------------



----------------------------------------------------- Shared ----------------------------------------
local md5_code = '7bf94222f6dbcd25d6fa21d5985f5555'
local shared_image = 'https://i.imgur.com/zixR9tw.png'

local relayData = function()
    events.voice_message:call(function(buffer)
        buffer:write_bits(0x5174, 128)
        buffer:crypt(md5_code)
    end)
end

local ShutdownRelay = function()
    local me = entity.get_local_player()
    if me == nil then return end

    me:set_icon()
    
    events.voice_message:call(function(buffer)
        buffer:write_bits(0x6481, 128)
        buffer:crypt(md5_code)
    end)

    entity.get_players(false, true, function(ptr)
        ptr:set_icon()
    end)
end

local requestActive = function()
    local me = entity.get_local_player()
    if me == nil then return end

    utils.execute_after(0.5, function()
        me:set_icon(shared_image)
    end)

    events.voice_message:call(function(buffer)
        buffer:write_bits(0x9781, 128)
        buffer:crypt(md5_code)
    end)
end

events.voice_message(function(cvb)
    if shared_icon:get() then
        local buffer = cvb.buffer
        local me = entity.get_local_player()
        if me == nil then return end

        if cvb.entity == me then
            return
        end

        buffer:crypt(md5_code)

        local netmsg = buffer:read_bits(128)

        if cvb.entity == nil then return end
        if cvb.entity:is_bot() then return end
        
        if netmsg == 0x5174 then
            cvb.entity:set_icon(shared_image)
        elseif netmsg == 0x6481 then
            cvb.entity:set_icon()
        elseif netmsg == 0x9781 then
            utils.execute_after(.3, relayData)
            cvb.entity:set_icon(shared_image)
        end
    end
end)

shared_icon:set_callback(function(self)
    if self:get() then
        utils.execute_after(.1, relayData)
        utils.execute_after(.5, requestActive)
    end
    
    if not self:get() then
        ShutdownRelay()
    end
end, true)

events.round_start:set(function()
    if not shared_icon:get() then
        local me = entity.get_local_player()
        if me == nil then return end

        me:set_icon()
    end
    is_in_air = false
end)

events.round_prestart:set(function()
    is_in_air = false
end)
----------------------------------------------------- Shared ----------------------------------------





----------------------------------------------------ВЫЗОВЫ И КАЛЛБЭКИ------------------------------------------------------

function hs_auto_peek()
    if timer_peek < globals.realtime and state_fire then
        refs.isHS:override()
        state_fire = false
    end
end

-- table_as = {"Early", "In Air", "Full Stop", "Move Between Shots"}

allow_def = true
frame = 0
side = 0
local ac_boof_deff = 0
local state_def = false
events.createmove:set(function(cmd) ------- Createmove


    -- if entity.get_local_player().m_iHealth < 250 then
    --     print("wr6789") -- Оффать делей шот
    -- else
    --     -- Включать делей шот 
    -- end



    if state_def == false then
        ac_boof_deff = lerp(ac_boof_deff, -89, 0.023)

        if ac_boof_deff <= -85 then
            state_def = true
        end
    end

    if state_def then
        ac_boof_deff = 0
        state_def = false
    end

 

    -- if cmd.choked_commands == 0 then
    --     print("0")
    -- end

    -- if get_player_state() ~= "Jump" and get_player_state() ~= "Jump+Crouch"  then
    --     if cmd.tickcount % 2 == 0 then
    --         rage.antiaim:override_hidden_yaw_offset(-120)
    --     end
    --     if cmd.tickcount % 2 == 1 then
    --         rage.antiaim:override_hidden_yaw_offset(60)
    --     end
    -- end


    refs.FakeLag:override(false)
    rage.antiaim:override_hidden_pitch(ac_boof_deff)   
    if entity.get_threat(true) then
        -- refs.FakeLag:override(false)
        refs.yawmodifier:set("Disabled")
        refs.modifier_offset:set(0)

        if cmd.tickcount % 3 == 0 and cmd.choked_commands == 0 then
            rage.antiaim:override_hidden_yaw_offset(-80)
        end
        if cmd.tickcount % 3 == 1 and cmd.choked_commands == 0 then
            rage.antiaim:override_hidden_yaw_offset(70)
        end
        if cmd.tickcount % 3 == 2 and cmd.choked_commands == 0 then
            rage.antiaim:override_hidden_yaw_offset(-80)
        end
    else
        if get_player_state() ~= "Standing" and get_player_state() ~= "Jump" and get_player_state() ~= "Jump+Crouch" and get_player_state() ~= "Slowwalk" then
            refs.yawmodifier:set("5-Way")
            -- refs.BodyYawSwitch:set(false)
            if cmd.tickcount % 3 == 0 then
                refs.modifier_offset:set(1)
            else
                refs.modifier_offset:set(80)
            end

            -- if globals.tickcount % 5 == 0 then --- Плохо работает
            --     refs.BodyYawSwitch:set(false)
            --     refs.offset:set(55)
            -- elseif globals.tickcount % 5 == 1 then
            --     refs.BodyYawSwitch:set(false)
            --     refs.offset:set(-55)
            -- elseif globals.tickcount % 5 == 2 then
            --     refs.BodyYawSwitch:set(true)
            --     refs.offset:set(45)
            -- elseif globals.tickcount % 5 == 3 then
            --     refs.BodyYawSwitch:set(true)
            --     refs.offset:set(-45)
            -- elseif globals.tickcount % 5 == 4 then
            --     refs.BodyYawSwitch:set(true)
            --     refs.offset:set(25)
            -- end
        else
            refs.offset:set(16)
            refs.yawmodifier:set("Disabled")
            refs.modifier_offset:set(0)
        end

        if get_player_state() ~= "Jump" and get_player_state() ~= "Jump+Crouch" then
            if cmd.tickcount % 3 == 0 and cmd.choked_commands == 0 then
                rage.antiaim:override_hidden_yaw_offset(-80)
            end
            if cmd.tickcount % 3 == 1 and cmd.choked_commands == 0 then
                rage.antiaim:override_hidden_yaw_offset(60)
            end
            if cmd.tickcount % 3 == 2 and cmd.choked_commands == 0 then
                rage.antiaim:override_hidden_yaw_offset(-80)
            end
        else
            if cmd.tickcount % 2 == 0 then
                rage.antiaim:override_hidden_yaw_offset(-80)
            end
            if cmd.tickcount % 2 == 1 then
                rage.antiaim:override_hidden_yaw_offset(60)
            end
        end
    end



    ---============== Магия, до которой никто не додумался))) Кушайте ==================
    if entity.get_threat() ~= nil then
        if entity.get_threat():get_resource().m_iPing < 10 then
            allow_def = false
            refs.HidenHead:override(false)

            -- rage.antiaim:override_hidden_pitch(-89)   
            -- rage.antiaim:override_hidden_yaw_offset(0)
            -- if globals.tickcount % 3 == 0 then
            --     refs.HidenHead:override(true)
            -- else
            --     refs.HidenHead:override(false)
            -- end
        else
            if globals.framecount - frame > 1 then
                allow_def = true
                refs.HidenHead:override(true)
                -- print(globals.framecount - frame)
            else
                allow_def = false
                refs.HidenHead:override(false)
            end
        end
    end
    frame = globals.framecount









    -- if side == 0 then
    --     refs.YawModiferOffset:override(-40)
    --     side = side + 1
    -- elseif side == 1 then
    --     refs.YawModiferOffset:override(-38)
    --     side = side + 1
    -- elseif side == 2 then
    --     refs.YawModiferOffset:override(-35)
    --     side = side + 1
    -- elseif side == 3 then
    --     refs.YawModiferOffset:override(-30)
    --     side = side + 1
    -- elseif side == 4 then
    --     refs.YawModiferOffset:override(-25)
    --     side = side + 1
    -- elseif side == 5 then
    --     refs.YawModiferOffset:override(-20)
    --     side = side + 1
    -- elseif side == 6 then
    --     refs.YawModiferOffset:override(-15)
    --     side = side + 1
    -- elseif side == 7 then
    --     refs.YawModiferOffset:override(-10)
    --     side = side + 1
    -- elseif side == 8 then
    --     refs.YawModiferOffset:override(-5)
    --     side = side + 1
    -- elseif side == 9 then
    --     refs.YawModiferOffset:override(0)
    --     side = 0
    -- end

    -- if rage.exploit:get() < 1 then
    --     refs.YawModifer:override("Disabled")
    -- else
    --     refs.YawModifer:override()
    -- end


    -- if get_player_state() == "Jump" or (get_player_state() == "Jump+Crouch") or refs.auto_peek:get() then
    --     refs.dt_lag_limit:override(1)
    -- else
    --     if cmd.tickcount % 2 == 0 then
    --         refs.dt_lag_limit:override(6)
    --     else
    --         refs.dt_lag_limit:override(1)
    --     end
    -- end

    -- ui.find("Aimbot", "Ragebot", "Selection", "SSG-08", "Hit Chance"):set(air_hit_slider:get())

    -- ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop", "Options"):set(astop_ui:get())

    -- ui.find("Aimbot", "Ragebot", "Accuracy", "SSG-08", "Auto Stop", "Double Tap")

    -- for key, val in ipairs(astop_ui:get()) do  -- Table iteration.
    --     print(key, val)
    --     asoptions_2:set(val)
    -- end

    -- cvar.sv_maxunlag:float(0.2)
    -- refs.fake_latency:set(115)


    -- cmd.send_packet = true
    -- choked_commands = true
    -- print("Choked: "..cmd.choked_commands)

    -- cvar.sv_maxusrcmdprocessticks:int(0) 


    -----------------------------------------
    -- if entity.get_threat() == nil then
    --     state_emeny_be = true
    -- else
    --     state_emeny_be = false
    -- end

    -- if state_emeny_be == false then
    --     if me:is_alive() then 
    --         local eye_local = me:get_anim_state().eye_yaw
    --         local eye_target = entity.get_threat():get_anim_state().eye_yaw
    --         local at_yaw = eye_local - eye_target + refs.YawOffset:get()

    --         if cmd.tickcount % 4 == 0 then
    --             if at_yaw > 70 and at_yaw < 120 or at_yaw < -55 and at_yaw > -120 then
    --                 score_at_stand = score_at_stand + 1
    --                 score_at_stand_error = 0
    --             else
    --                 score_at_stand_error = score_at_stand_error + 1
    --             end 


    --             if score_at_stand >= 6 then

    --                 if hiden_exp_enemy_fs:get() or hiden_exp_enemy_fs:get_override() then
    --                     hiden_exploit_fs(cmd)
    --                     print("FS")  
    --                 end

    --                 min_d_color:set("#FF0000FF")
    --             end
    --             if score_at_stand_error >= 5 then
    --                 min_d_color:set("#FFFFFFFF") 

    --                 hiden_exp_yaw_type:override()
    --                 hiden_exp_pitch_type:override()
    --                 hiden_exp_pitch1_slider:override()
    --                 -- refs.extend_bactrack:override()

    --                 score_at_stand = 0
    --             end
    --         end
    --     end
    -- end
    -----------------------------------------

    -- if score_at_stand_2 >= 4 then
    --     min_d_color:set("#FFFFFFFF") 
    --     -- print("NOooooooo")
    --     -- score_at_stand = 0
    -- end


    -- if entity.get_threat():get_anim_state().eye_yaw > 80 and entity.get_threat():get_anim_state().eye_yaw < 100 then
    --     print("+  ".. entity.get_threat():get_anim_state().eye_yaw)
    -- end

    -- if entity.get_threat():get_anim_state().eye_yaw < -80 and entity.get_threat():get_anim_state().eye_yaw > -100 then
    --     print("-  ".. entity.get_threat():get_anim_state().eye_yaw)
    -- end
    -- print(entity.get_threat():get_anim_state().eye_yaw)

    -- print(me)
    -- print(entity.get_threat():get_player_weapon():get_weapon_index())

    -- lerp_desync_f()
    -- safe_head_expl()

    if teleportinair:get() and check_zeus == false then
        tp_exploit()
    end




    if air_mode:get() then
        hitchance_modification()
    end

    viewmodel_func()
    adaptive_backtrack(cmd)

    if presets:get() == "Unhittable old" then
        AA4(cmd)
    end
    if presets:get() == "Unhittable new" then
        AA6(cmd)
    end
    if presets:get() == "God AA" then
        AA7(cmd)
    end
    if presets:get() == "Test Jitter" then
        AA9(cmd)
    end
    if presets:get() == "Low Desync" then
        AA8(cmd)
    end


    if indicators_type:get() == "Skeet" and indicators:get() then
        process_indicators()
    end

    if fast_movement_stairs:get() then
        fast_ladder(cmd)
    end

    if zeus_aa:get() and entity.get_local_player():is_alive()  then
        zeus_dt_off()
    end

    if breal_lc:get() then
        breack_lc_air()
    end

    if peek_fake_always:get() or smart_fk:get() and Can_hit == false then
        get_best_side(cmd)
    end
    -- reset_score()
    AntiBruteForce(cmd)

    if jump_scout_fix:get() then
        jmp_scout_fix(entity)
    end


    -- print(cmd.choked_commands) ---===================== Доделать

    -- cmd.send_packet = false
    -- if cmd.tickcount % 5 == 0 then
    --     cmd.send_packet = true
    -- else
    --     cmd.send_packet = false
    -- end
    -- -- cmd.send_packet = false

    if hiden_exp:get() then
        hiden_exploit(cmd)
    end

    avoid_collisions(cmd)
    enemy_zeus_func()

    if refs.auto_peek:get() and refs.isHS:get() then
        hs_auto_peek()
    else
        state_fire = false
    end
end)


local aspect_state = false
local aspect = cvar.r_aspectratio
local ac_boof = 0 
events.render:set(function() ------------------- Render

    -- if entity.get_local_player:is_alive() then
    --     check_live = true
    -- else
    --     check_live = false
    -- end

    if rainbow_c_s:get() then
        rainbow_c_color1:visibility(false)
        rainbow_c_color2:visibility(false)
    else
        rainbow_c_color1:visibility(true)
        rainbow_c_color2:visibility(true)
    end 


    if hit_marker:get() then
        Kibit()
        hit_marker_color_text_M:visibility(hit_marker_select:get("Text"))
    end




    if (presets_builder:get() == "Unhittable Head") then
        local sett_builder = "eyIxIjp7IjEiOnRydWUsIjIiOmZhbHNlLCIzIjpmYWxzZSwiNCI6dHJ1ZSwiNSI6ZmFsc2UsIjYiOnRydWUsIjciOnRydWUsIjgiOnRydWUsIjkiOnRydWUsIjEwIjp0cnVlLCIxMSI6dHJ1ZSwiMTIiOnRydWUsIjEzIjp0cnVlLCIxNCI6dHJ1ZSwiMTUiOnRydWUsIjE2Ijp0cnVlLCIxNyI6dHJ1ZSwiMTgiOmZhbHNlLCIxOSI6ZmFsc2UsIjIwIjpmYWxzZSwiMjEiOnRydWUsIjIyIjp0cnVlLCIyMyI6dHJ1ZSwiMjQiOmZhbHNlLCIyNSI6ZmFsc2UsIjI2Ijp0cnVlLCIyNyI6dHJ1ZSwiMjgiOnRydWUsIjI5Ijp0cnVlLCIzMCI6ZmFsc2UsIjMxIjp0cnVlLCIzMiI6dHJ1ZSwiMzMiOmZhbHNlLCIzNCI6dHJ1ZSwiMzUiOnRydWUsIjM2IjpmYWxzZSwiMzciOmZhbHNlLCIzOCI6ZmFsc2UsIjM5IjpmYWxzZSwiNDAiOmZhbHNlLCI0MSI6ZmFsc2UsIjQyIjpmYWxzZSwiNDMiOmZhbHNlLCI0NCI6ZmFsc2UsIjQ1IjpmYWxzZSwiNDYiOmZhbHNlLCI0NyI6ZmFsc2UsIjQ4IjpmYWxzZSwiNDkiOmZhbHNlLCI1MCI6ZmFsc2UsIjUxIjpmYWxzZSwiNTIiOmZhbHNlLCI1MyI6ZmFsc2UsIjU0IjpmYWxzZSwiNTUiOmZhbHNlfSwiMiI6eyIxIjoiQ2VudGVyIiwiMiI6IkNlbnRlciIsIjMiOiJEaXNhYmxlZCIsIjQiOiJDZW50ZXIiLCI1IjoiRGlzYWJsZWQiLCI2IjoiRGlzYWJsZWQiLCI3IjoiRGlzYWJsZWQiLCI4IjoiRGlzYWJsZWQiLCI5IjoiRGlzYWJsZWQiLCIxMCI6IkRpc2FibGVkIiwiMTEiOnsiMSI6IkppdHRlciJ9LCIxMiI6eyIxIjoiSml0dGVyIn0sIjEzIjp7IjEiOiJKaXR0ZXIifSwiMTQiOnsiMSI6IkppdHRlciIsIjIiOiJSYW5kb21pemUgSml0dGVyIn0sIjE1Ijp7fSwiMTYiOnt9LCIxNyI6e30sIjE4Ijp7fSwiMTkiOnt9LCIyMCI6e30sIjIxIjoiRGlzYWJsZWQiLCIyMiI6IlBlZWsgRmFrZSIsIjIzIjp7IjEiOiJKaXR0ZXIiLCIyIjoiQW50aSBCcnV0ZWZvcmNlIn0sIjI0IjoiRGlzYWJsZWQiLCIyNSI6Ik9mZiIsIjI2Ijp7fSwiMjciOiJEaXNhYmxlZCIsIjI4IjoiT2ZmIiwiMjkiOnt9LCIzMCI6IkRpc2FibGVkIiwiMzEiOiJPZmYiLCIzMiI6e30sIjMzIjoiRGlzYWJsZWQiLCIzNCI6Ik9mZiIsIjM1Ijp7fSwiMzYiOiJEaXNhYmxlZCIsIjM3IjoiT2ZmIiwiMzgiOnt9LCIzOSI6IkRpc2FibGVkIiwiNDAiOiJPZmYiLCI0MSI6e319LCIzIjp7IjEiOjEwLCIyIjoxMDksIjMiOjksIjQiOjE3LCI1IjoyMywiNiI6NzQsIjciOjE3ODgsIjgiOjE1LCI5IjozOSwiMTAiOjQ5NSwiMTEiOjU1LCIxMiI6NTUsIjEzIjo0LCIxNCI6MywiMTUiOjQsIjE2Ijo3LCIxNyI6NCwiMTgiOi0zLCIxOSI6MywiMjAiOjAsIjIxIjowLCIyMiI6MCwiMjMiOjAsIjI0IjowLCIyNSI6MCwiMjYiOi03LCIyNyI6LTQsIjI4IjoyOSwiMjkiOjE3LCIzMCI6MCwiMzEiOjAsIjMyIjowLCIzMyI6MCwiMzQiOjAsIjM1IjowLCIzNiI6LTQ1LCIzNyI6LTE3LCIzOCI6MTAsIjM5IjozNywiNDAiOjAsIjQxIjowLCI0MiI6MCwiNDMiOjAsIjQ0IjowLCI0NSI6MCwiNDYiOjQ1LCI0NyI6NTksIjQ4Ijo0OSwiNDkiOjYwLCI1MCI6MCwiNTEiOjAsIjUyIjowLCI1MyI6MCwiNTQiOjAsIjU1IjowLCI1NiI6NDIsIjU3Ijo2MCwiNTgiOjQ4LCI1OSI6NjAsIjYwIjowLCI2MSI6MCwiNjIiOjAsIjYzIjowLCI2NCI6MCwiNjUiOjAsIjY2IjotNzMsIjY3IjotNjUsIjY4IjowLCI2OSI6MCwiNzAiOjAsIjcxIjoyOCwiNzIiOjM3LCI3MyI6MjEsIjc0IjoyOCwiNzUiOi0xNSwiNzYiOjE1LCI3NyI6NjAsIjc4Ijo2MCwiNzkiOjAsIjgwIjowLCI4MSI6MCwiODIiOjYwLCI4MyI6NjAsIjg0IjowLCI4NSI6MCwiODYiOjAsIjg3IjowLCI4OCI6MCwiODkiOjYwLCI5MCI6NjAsIjkxIjowLCI5MiI6MCwiOTMiOjAsIjk0Ijo2MCwiOTUiOjYwLCI5NiI6MCwiOTciOjAsIjk4IjowLCI5OSI6MCwiMTAwIjowLCIxMDEiOjYwLCIxMDIiOjYwLCIxMDMiOjAsIjEwNCI6MCwiMTA1Ijo2MCwiMTA2Ijo2MCwiMTA3IjowLCIxMDgiOjAsIjEwOSI6MCwiMTEwIjowLCIxMTEiOjAsIjExMiI6MCwiMTEzIjowLCIxMTQiOjAsIjExNSI6MCwiMTE2IjowLCIxMTciOjAsIjExOCI6MCwiMTE5IjowLCIxMjAiOjAsIjEyMSI6MCwiMTIyIjowLCIxMjMiOjAsIjEyNCI6MCwiMTI1IjowLCIxMjYiOjAsIjEyNyI6MCwiMTI4IjowLCIxMjkiOjAsIjEzMCI6MCwiMTMxIjowLCIxMzIiOjAsIjEzMyI6MCwiMTM0IjowLCIxMzUiOjAsIjEzNiI6MCwiMTM3IjowLCIxMzgiOjAsIjEzOSI6MCwiMTQwIjowLCIxNDEiOjAsIjE0MiI6MH0sIjQiOnt9LCI1Ijp7fX0="
        setter_builder_settings(sett_builder)
    end
    

    if globals.is_in_game then
        indicator()
    end
  
    if enable_builder:get() then
        antiaim()
    else
        menu_condition[2].enable:set(false)
        menu_condition[3].enable:set(false)
        menu_condition[4].enable:set(false)
        menu_condition[5].enable:set(false)
        menu_condition[6].enable:set(false)
        menu_condition[7].enable:set(false)
    end


    menu_ui()
    acatel_indicators()


    get_bodyaw()
    menuxd()
    helper_setup()
    handle_arrows()

    new_drag_object:update()
    uiclr:visibility(enable_w:get())
    animcolor:visibility(enable_w:get())
    pos_x:visibility(false)
    pos_y:visibility(false)
    paint()



    if indicators_type:get() == "Skeet" and indicators:get() then
        draw_indicators()
    end

    if rainbow:get() then
        bar()
    end

    if back_chams:get() then
        handle_esp()
    end

    if HUD:get() then
        grad_sidebar(HUD_color1:get(), HUD_color2:get(), (HUD_speed:get()/10)) 
    else
        grad_sidebar(color(255, 255, 255), color(255, 255, 255), (HUD_speed:get()/10)) 
    end


    if aspect_state then
        ac_boof = math.lerp(ac_boof, aspect_ratio:get()/10, 0.1)
        aspect:float(ac_boof)

        if ac_boof <= aspect_ratio:get()/10 + 0.01 and ac_boof >= aspect_ratio:get()/10 - 0.01 then
            aspect_state = false
        end
    end

    --------------Clan Tag--------------
    if clan_tag:get() then 
        if globals.is_in_game then
            C_tag()
        end
    else
        if globals.is_in_game and globals.tickcount % 55 == 0 and globals.choked_commands == 0 then
            common.set_clan_tag("")
        end
    end



    if when_enemy_zeus_combo:get("Set Multipoints") then
        when_enemy_zeus_mult_head:visibility(true)
        when_enemy_zeus_mult_body:visibility(true)
    else
        when_enemy_zeus_mult_head:visibility(false)
        when_enemy_zeus_mult_body:visibility(false)
    end

    if when_enemy_zeus_combo:get("Set Damage")then
        when_enemy_zeus_mind:visibility(true)
    else
        when_enemy_zeus_mind:visibility(false)
    end

    ------------AA on--------------
    if AAon:get() then  
        presets:visibility(true)
        smart_fk:visibility(true)
        -- fk_60_ticks:visibility(true)
        zeus_aa:visibility(true)
        hiden_exp:visibility(true)
        breal_lc:visibility(true)
        peek_fake_always:visibility(true)

        Anti_Brute_Cfg:visibility(true)
        AntiBrute["Enable"]:visibility(true)
        AntiBrute["Reset time"]:visibility(true  and AntiBrute["Enable"]:get())
        AntiBrute["Phases"]:visibility(true  and AntiBrute["Enable"]:get())
        for i = 1, maxphases do
            if i <= AntiBrute["Phases"]:get() then
                AntiBrute[""..i.."Phase"]:visibility(true  and AntiBrute["Enable"]:get())
            else
                AntiBrute[""..i.."Phase"]:visibility(false  and AntiBrute["Enable"]:get())
            end
        end

        AntiAimCfg:visibility(true)
    else
        presets:visibility(false)
        -- fk_60_ticks:visibility(false)
        smart_fk:visibility(false)
        breal_lc:visibility(false)
        peek_fake_always:visibility(false)
        zeus_aa:visibility(false)
        hiden_exp:visibility(false)

        presets:set("Disable")
        zeus_aa:set(false)
        hiden_exp:set(false)

        Anti_Brute_Cfg:visibility(false)
        AntiBrute["Enable"]:visibility(false)
        AntiBrute["Reset time"]:visibility(false  and AntiBrute["Enable"]:get())
        AntiBrute["Phases"]:visibility(false  and AntiBrute["Enable"]:get())
        for i = 1, maxphases do
            if i <= AntiBrute["Phases"]:get() then
                AntiBrute[""..i.."Phase"]:visibility(false  and AntiBrute["Enable"]:get())
            else
                AntiBrute[""..i.."Phase"]:visibility(false  and AntiBrute["Enable"]:get())
            end
        end

        AntiAimCfg:visibility(false)
    end

    if presets:get() == "Unhittable old" then
        refs.YawModifer:override("Disable")
        refs.dt_lag_limit:override(1)
        refs.dt_tp:override(true)
        refs.dt_qk_switch:override(true)
        -- refs.fs_bodyyaw:set("Peek Fake")
    end


    if presets:get() == "Unhittable new" then
        refs.YawModifer:override("Disable")
        refs.dt_lag_limit:override(1)
        refs.dt_tp:override(true)
        refs.dt_qk_switch:override(true)
    end


    if presets:get() == "God AA" then
        refs.YawModifer:override("Disable")
        refs.fs_bodyyaw:set("Off")
    end


    if min_d:get() then
        damage_indicator.draw()
    end

    if custom_trash_switch:get() then
        custom_trash_text:visibility(true)
    else
        custom_trash_text:visibility(false)
    end

    damage_indicator.draw()
    velocitywarningel()
    keybinds_p:paint(); keybinds_p:drag()
end)    



events.player_death:set(function(e)

    local me = entity.get_local_player()
    local victim = entity.get(e.userid, true)
    local attacker = entity.get(e.attacker, true)

    if on_kill:get() and trashtalk:get() and attacker == me then
        utils.execute_after(utils.random_int(3, 6), function()
            if me:is_alive() then
                if not me then return end
                if custom_trash_switch:get() then
                    utils.console_exec('say '.. custom_trash_text:get())
                else
                    utils.console_exec('say '.. funcs.killsays[utils.random_int(1, #funcs.killsays)])
                end
            end
        end)
    end

    if on_death:get() and trashtalk:get() and victim == me then
        utils.execute_after(utils.random_int(3, 6), function()
            if not me then return end

            if custom_trash_switch:get() then
                utils.console_exec('say '.. custom_trash_text:get())
            else
                utils.console_exec('say '.. funcs.deathsays[utils.random_int(1, #funcs.deathsays)])
            end
        end)
    end

    killeffect(e)
end)

events.round_start:set(function()
	currentphase = 1
end)



events.bullet_impact:set(function(e)
    local check = false
    if entity.get(e.userid, true) == nil then
        check = true
    else
        check = false
    end

    if not AntiBrute["Enable"]:get() then return end
    local_player = entity.get_local_player()
    if not local_player then return end

    if check == false then
        local user = entity.get(e.userid, true)
        
        if user:get_name() == local_player:get_name() then
            currentphase = currentphase + 1
            if currentphase > AntiBrute["Phases"]:get() then
                currentphase = 1 
            end
            abtime = globals.realtime
        end
    end
end)

events.bullet_impact:set(function(e)

    local check = false
    if entity.get(e.userid, true) == nil then
        check = true
    else
        check = false
    end
    if not AntiBrute["Enable"]:get() then return end
    local_player = entity.get_local_player()
    if not local_player then return end

    if check == false then
        local user = entity.get(e.userid, true)
        if user:get_name() ~= local_player:get_name() then
            distance = math.floor(local_player:get_origin():dist(vector(e.x,e.y,e.z)))
            if distance < 125 and local_player:is_alive() and user:is_enemy() then
                if currentphase > AntiBrute["Phases"]:get() then
                    currentphase = 1 
                end
                abtime = globals.realtime
            end
        end
    end
end) 

events.net_update_end:set(function()
    local lp = entity.get_local_player()
    if lp==nil then return end
    if globals.is_in_game and lp:is_alive() then
        if en:get() then
            cm(lp:get_index(), custom:get())
        end
    end
end)

events.player_hurt:set(function(e)
    if hit_marker:get() then
        player_hurt(e)
    end
end)
events.bullet_impact:set(function(e)
    if hit_marker:get() then
        bullet_impact(e)
    end
end)
events.player_spawned:set(function(e)
    if hit_marker:get() then
        player_spawned(e)
    end
end)


-- events.weapon_fire:set(function(e)
--     if me:is_alive() then
--         local local_player = me
--         if (entity.get(e.userid, true)):get_name() == nil then
--             return
--         else
--             local user = entity.get(e.userid, true)

--             if user:get_name() == local_player:get_name() and local_player:is_alive() and refs.auto_peek:get() then
--                 refs.isHS:override(false)
--                 state_fire = true
--                 timer_peek = globals.realtime + 0.8
--             end
--         end
--     end
-- end)

events.aim_ack:set( function( shot )
    if aimbot_log:get() then

        aimbot_logger.shots = aimbot_logger.shots + 1

        local aimbot_logger_settings = log_select
        local hit_color =      "\a" .. log_color_hit:get():to_hex(): sub(0, 8)
        local miss_color =     "\a" .. log_color_miss:get():to_hex(): sub(0, 8)
        
        local dickpickovaya_dama = ("%i%s"):format(aimbot_logger.shots, aimbot_logger.count[aimbot_logger.shots] or "th")


        if shot.state == nil then -- Hit
            if aimbot_logger_settings:get("Console") then
                print_raw(
                    (hit_color.."%s\aFFFFFFFF \aFFFFFFFF Hit in %s\'s "..hit_color.."%s\aFFFFFFFF for "..hit_color.."%s\aFFFFFFFF("..hit_color.."%s\aFFFFFFFF) (hitchance: "..hit_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF)"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.hitgroup+1], shot.damage, shot.wanted_damage, shot.hitchance, shot.backtrack)
                )
            end

            if aimbot_logger_settings:get("Screen") then
                print_dev(
                    (hit_color.."%s\aFFFFFFFF \aFFFFFFFF Hit in %s\'s "..hit_color.."%s\aFFFFFFFF for "..hit_color.."%s\aFFFFFFFF("..hit_color.."%s\aFFFFFFFF) (hitchance: "..hit_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF)"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.hitgroup+1], shot.damage, shot.wanted_damage, shot.hitchance, shot.backtrack)
                )
            end

            if aimbot_logger_settings:get("Notify") then
                table.insert(aimbot_logger.data, {
                    {
                        shot.target:is_alive() and "Hit " or "Killed ",
                        tostring(shot.target:get_name()),
                        " in ",
                        tostring(aimbot_logger.hitboxes[shot.hitgroup+1]),
                        " for ",
                        tostring(shot.damage),
                        " damage (",
                        tostring(math.max(0, shot.target.m_iHealth)),
                        " hp remaining)",
                    },
                    alpha = 0, 
                    alpha1 = 0,
                    time = globals.realtime,
                    color = log_color_hit:get()
                })
            end
        else -- miss
            if aimbot_logger_settings:get("Console") then
                print_raw(
                    (miss_color.."%s \aFFFFFFFF Missed shot in %s\'s "..miss_color.."%s\aFFFFFFFF due to "..miss_color.."%s\aFFFFFFFF (hitchance: "..miss_color.."%s%% \aFFFFFFFF| Backtrack: "..hit_color.."%s \aFFFFFFFF)"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.wanted_hitgroup+1], shot.state, shot.hitchance, shot.backtrack, (neverlose_refs.doubletap:get() and 1 or 0), (neverlose_refs.hideshots:get() and 1 or 0))
                )
            end

            if aimbot_logger_settings:get("Screen") then
                print_dev(
                    (miss_color.."%s \aFFFFFFFF Missed shot in %s\'s "..miss_color.."%s\aFFFFFFFF due to "..miss_color.."%s\aFFFFFFFF (hitchance: "..miss_color.."%s%% \aFFFFFFFF| Backtrack: "..miss_color.."%s \aFFFFFFFF)"):format(
                    "[Vega-Sync]", shot.target:get_name(), aimbot_logger.hitboxes[shot.wanted_hitgroup+1], shot.state, shot.hitchance, shot.backtrack, (neverlose_refs.doubletap:get() and 1 or 0), (neverlose_refs.hideshots:get() and 1 or 0))
                )
            end

            if aimbot_logger_settings:get("Notify") then
                table.insert(aimbot_logger.data, {
                    {
                        "Missed ",
                        tostring(shot.target:get_name()),
                        " in the ",
                        tostring(aimbot_logger.hitboxes[shot.wanted_hitgroup+1]),
                        " due to ",
                        tostring(shot.state),
                        "",
                        "",
                        "",
                    },
                    alpha = 0,
                    alpha1 = 0,
                    time = globals.realtime,
                    color = log_color_miss:get()
                })
            end
        end
    end 
end )


if hit_marker:get() then
    refs.hit_marker_ui:override(false)
else
    refs.hit_marker_ui:override()
end

anti_defensive_ui:set_callback(function()
    if anti_defensive_ui:get() then
        cvar.cl_lagcompensation:int(0)
    else
        cvar.cl_lagcompensation:int(1)
    end
end)

hit_marker:set_callback(function()
    if hit_marker:get() then
        refs.hit_marker_ui:override(false)
    else
        refs.hit_marker_ui:override()
    end
end)

hiden_exp_type:set_callback(function()
    if (hiden_exp_type:get() == "Up Jitter") or (hiden_exp_type:get() == "Down 3 Way") or (hiden_exp_type:get() == "Random") then
        hiden_exp_pitch_type:visibility(false)
        hiden_exp_yaw_type:visibility(false)
        hiden_exp_yaw1_slider:visibility(false)
        hiden_exp_yaw2_slider:visibility(false)
        hiden_exp_yaw3_slider:visibility(false)
        hiden_exp_pitch1_slider:visibility(false)
        hiden_exp_pitch2_slider:visibility(false)
        hiden_exp_pitch3_slider:visibility(false)
    end

    if (hiden_exp_type:get() == "Custom") then
        hiden_exp_pitch_type:visibility(true)
        hiden_exp_yaw_type:visibility(true)


        if (hiden_exp_pitch_type:get() == "Static") then
            hiden_exp_pitch1_slider:visibility(true)
            hiden_exp_pitch2_slider:visibility(false)
            hiden_exp_pitch3_slider:visibility(false)

            if hiden_exp_pitch1_slider:get_override() == nil then 
                pitch_def_1 = hiden_exp_pitch1_slider:get() 
            else
                pitch_def_1 = hiden_exp_pitch1_slider:get_override() 
            end
        end

        if (hiden_exp_pitch_type:get() == "Jitter") then
            hiden_exp_pitch1_slider:visibility(true)
            hiden_exp_pitch2_slider:visibility(true)
            hiden_exp_pitch3_slider:visibility(false)

            if hiden_exp_pitch1_slider:get_override() == nil or hiden_exp_pitch2_slider:get_override() == nil then 
                pitch_def_1 = hiden_exp_pitch1_slider:get()
                pitch_def_2 = hiden_exp_pitch2_slider:get()
            else
                pitch_def_1 = hiden_exp_pitch1_slider:get_override()
                pitch_def_2 = hiden_exp_pitch2_slider:get_override()
            end
        end

        if (hiden_exp_pitch_type:get() == "Safety Jitter") then
            hiden_exp_pitch1_slider:visibility(true)
            hiden_exp_pitch2_slider:visibility(true)
            hiden_exp_pitch3_slider:visibility(false)

            if hiden_exp_pitch1_slider:get_override() == nil or hiden_exp_pitch2_slider:get_override() == nil then 
                pitch_def_1 = hiden_exp_pitch1_slider:get()
                pitch_def_2 = hiden_exp_pitch2_slider:get()
            else
                pitch_def_1 = hiden_exp_pitch1_slider:get_override()
                pitch_def_2 = hiden_exp_pitch2_slider:get_override()
            end
        end

        if (hiden_exp_pitch_type:get() == "3-Way") then
            hiden_exp_pitch1_slider:visibility(true)
            hiden_exp_pitch2_slider:visibility(true)
            hiden_exp_pitch3_slider:visibility(true)

            pitch_def_1 = hiden_exp_pitch1_slider:get()
            pitch_def_2 = hiden_exp_pitch2_slider:get()
            pitch_def_3 = hiden_exp_pitch3_slider:get()
        end

        if (hiden_exp_pitch_type:get() == "Random") then
            hiden_exp_pitch1_slider:visibility(true)
            hiden_exp_pitch2_slider:visibility(true)
            hiden_exp_pitch3_slider:visibility(false)

            pitch_def_1 = hiden_exp_pitch1_slider:get()
            pitch_def_2 = hiden_exp_pitch2_slider:get()
           
        end

        --========================== YAW ============================== 
        if (hiden_exp_yaw_type:get() == "Static") then
            hiden_exp_yaw1_slider:visibility(true)
            hiden_exp_yaw2_slider:visibility(false)
            hiden_exp_yaw3_slider:visibility(false)

            if hiden_exp_yaw1_slider:get_override() == nil then 
                yaw_def_1 = hiden_exp_yaw1_slider:get()
            else
                yaw_def_1 = hiden_exp_yaw1_slider:get_override()
            end
        end

        if (hiden_exp_yaw_type:get() == "Jitter") then
            hiden_exp_yaw1_slider:visibility(true)
            hiden_exp_yaw2_slider:visibility(true)
            hiden_exp_yaw3_slider:visibility(false)

            yaw_def_1 = hiden_exp_yaw1_slider:get()
            yaw_def_2 = hiden_exp_yaw2_slider:get()
        end

        if (hiden_exp_yaw_type:get() == "Safety Jitter") then
            hiden_exp_yaw1_slider:visibility(true)
            hiden_exp_yaw2_slider:visibility(true)
            hiden_exp_yaw3_slider:visibility(false)

            if hiden_exp_yaw1_slider:get_override() == nil or hiden_exp_yaw2_slider:get_override() == nil then 
                yaw_def_1 = hiden_exp_yaw1_slider:get()
                yaw_def_2 = hiden_exp_yaw2_slider:get()
            else
                yaw_def_1 = hiden_exp_yaw1_slider:get_override()
                yaw_def_2 = hiden_exp_yaw2_slider:get_override()
            end
        end

        if (hiden_exp_yaw_type:get() == "3-Way") then
            hiden_exp_yaw1_slider:visibility(true)
            hiden_exp_yaw2_slider:visibility(true)
            hiden_exp_yaw3_slider:visibility(true)

            yaw_def_1 = hiden_exp_yaw1_slider:get()
            yaw_def_2 = hiden_exp_yaw2_slider:get()
            yaw_def_3 = hiden_exp_yaw3_slider:get()
        end

        if (hiden_exp_yaw_type:get() == "Spin") then
            hiden_exp_yaw1_slider:visibility(false)
            hiden_exp_yaw2_slider:visibility(false)
            hiden_exp_yaw3_slider:visibility(false)
        end

        if (hiden_exp_yaw_type:get() == "Random") then
            hiden_exp_yaw1_slider:visibility(true)
            hiden_exp_yaw2_slider:visibility(true)
            hiden_exp_yaw3_slider:visibility(false)

            yaw_def_1 = hiden_exp_yaw1_slider:get()
            yaw_def_2 = hiden_exp_yaw2_slider:get()
        end
    end
end)

hiden_exp:set_callback(function()
    if hiden_exp:get() then
        refs.HidenHead:override(true)
    else
        refs.HidenHead:override(false)
    end
end)

aspect_ratio:set_callback(function()
    aspect_state = true
end)

presets_Anti_Brute:set_callback(function()
    if (presets_Anti_Brute:get() == "Preset 1") then
        local sett_anti_brute = "eyIxIjp7IjEiOnRydWV9LCIyIjp7IjEiOiJDZW50ZXIiLCIyIjoiQ2VudGVyIiwiMyI6IkRpc2FibGVkIiwiNCI6IkNlbnRlciIsIjUiOiJEaXNhYmxlZCIsIjYiOiJEaXNhYmxlZCIsIjciOiJEaXNhYmxlZCIsIjgiOiJEaXNhYmxlZCIsIjkiOiJEaXNhYmxlZCIsIjEwIjoiRGlzYWJsZWQiLCIxMSI6eyIxIjoiQXZvaWQgT3ZlcmxhcCJ9LCIxMiI6eyIxIjoiQXZvaWQgT3ZlcmxhcCIsIjIiOiJKaXR0ZXIifSwiMTMiOnsiMSI6IkppdHRlciJ9LCIxNCI6eyIxIjoiSml0dGVyIiwiMiI6IlJhbmRvbWl6ZSBKaXR0ZXIifSwiMTUiOnt9LCIxNiI6e30sIjE3Ijp7fSwiMTgiOnt9LCIxOSI6e30sIjIwIjp7fX0sIjMiOnsiMSI6MSwiMiI6MywiMyI6NywiNCI6NCwiNSI6LTMsIjYiOjMsIjciOjAsIjgiOjAsIjkiOjAsIjEwIjowLCIxMSI6MCwiMTIiOjAsIjEzIjoxMCwiMTQiOi00LCIxNSI6MjksIjE2IjoxNywiMTciOjAsIjE4IjowLCIxOSI6MCwiMjAiOjAsIjIxIjowLCIyMiI6MCwiMjMiOjEwLCIyNCI6LTE3LCIyNSI6MTAsIjI2IjozNywiMjciOjAsIjI4IjowLCIyOSI6MCwiMzAiOjAsIjMxIjowLCIzMiI6MCwiMzMiOjM3LCIzNCI6NTksIjM1Ijo0OSwiMzYiOjYwLCIzNyI6MCwiMzgiOjAsIjM5IjowLCI0MCI6MCwiNDEiOjAsIjQyIjowLCI0MyI6NDIsIjQ0Ijo2MCwiNDUiOjQ4LCI0NiI6NjAsIjQ3IjowLCI0OCI6MCwiNDkiOjAsIjUwIjowLCI1MSI6MCwiNTIiOjB9LCI0Ijp7fSwiNSI6e319"
        setter_anti_brute_settings(sett_anti_brute)
    end
end)

fps_boost:set_callback(fps_boost_func)
fps_boost_list:set_callback(fps_boost_func)

cvar.sv_maxusrcmdprocessticks:int(17) -- ограничение Fk в 13
-- callbacks.register("player_hurt", "aimbot_logger", aimbot_logger.get)
callbacks.register("render", "aimbot_logger", aimbot_logger.handle) 
callbacks.register("render", "console_color", console_color.handle) 
callbacks.register("render", "molotov_wireframe.handle", molotov_wireframe.handle)
callbacks.register("render", "grenade_radius.handle", grenade_radius.handle)
----------------------------------------------------ВЫЗОВЫ И КАЛЛБЭКИ------------------------------------------------------

