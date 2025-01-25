local SendNotification = function(Title, Text, Icon, Duration) if not Icon then Icon = "" end if not Duration then Duration = 5 end game:GetService("StarterGui"):SetCore("SendNotification", {	Title = Title, Text = Text, Icon = Icon, Duration = Duration }) end

local Country = game:GetService("LocalizationService"):GetCountryRegionForPlayerAsync(game.Players.LocalPlayer)
local LaugIndex = 2
if Country == "RU" then LaugIndex = 1 end

local Localization = {
    -- Authorization Menu
    ["Authorization"] = {"Авторизация", "Authorization"},
    ["Key_System"] = {"Key System", "Key System"},
    ["KeySystemDescription"] = {"Это бесплатный чит.\nКлюч для активации можно скопировать в нашем дискорде.", "This is a free cheat.\nYou can copy the key in our discord."},
    ["Key"] = {"Ключ", "Key"},
    ["KeyTextBoxDesc"] = {"Вставьте ключ сюда", "Write the key here"},
    ["Enter"] = {"Активировать", "Enter"},
    ["CopyLinkDiscord"] = {"Скопировать ссылку на дискорд", "Copy Discord Link"},
    ["LinkCopiedSuccessfully"] = {"Ссылка успешно скопирована", "Link copied successfully"},
    ["WrongKey"] = {"Неправильный ключ", "Wrong Key"},
    ["SuccessfulAuthorization"] = {"Успешная Авторизация", "Successful Authorization"},
    ["ExecutorNotSupported"] = {"Используемый инжектор не поддерживается", "Executor Not Supported"},

    -- Main Menu
    ["Main"] = {"Главная", "Main"},
    ["Misc"] = {"Разное", "Misc"},
    ["AutoFarm"] = {"Авто Фарм", "AutoFarm"},
    ["Options"] = {"Параметры", "Options"},
    ["Preset"] = {"Пресет", "Preset"},
    ["AutoFarmOptions"] = {"Параметры АвтоФарма", "AutoFarm Options"},
    ["SelectAutoFarmType"] = {"Выберите тип фарма", "Select AutoFarm Type"},
}

function GetLangString(name)
    return Localization[name][LaugIndex]
end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Varribles
local user_path = "WizFizHub\\"..tostring(game.GameId).."\\"..tostring(Player.UserId)
local discord_url = "https://discord.gg/Zd9bu2szyZ"
local notif_title = "WizFiz Hub"

-- Config
local config = {}
local config_base = {
	autofarm_type = "",
	autofarm_enable = false,
	autofarm_settings = nil,

	--FPS
	fps_3drender = true,
	fps_cap = 60
}

-- Librarys
local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Consistt/Ui/main/UnLeaked"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/kukoldae/Anime-Adventures-Roblox-Script/refs/heads/main/SaveManager.lua"))()

local AnimeAPI = loadstring(game:HttpGet("https://raw.githubusercontent.com/kukoldae/Anime-Adventures-Roblox-Script/refs/heads/main/AnimeApi.lua"))()
local AnimeClient = loadstring(game:HttpGet("https://raw.githubusercontent.com/kukoldae/Anime-Adventures-Roblox-Script/refs/heads/main/AnimeClient.lua"))()
AnimeClient.AnimeApi = AnimeAPI

UI.rank = "developer"
UI.title = "WizFiz Hub"
UI:Introduction()

local Window = UI:Init()

function CreateMainUI()
	-- Main Tab
    local MainTab = Window:NewTab(GetLangString("Main"))

    MainTab:NewSection(GetLangString("Main"))
    local CopyDiscordButton = MainTab:NewButton(GetLangString("CopyLinkDiscord"), function()
		setclipboard(discord_url)
		SendNotification(notif_title, GetLangString("LinkCopiedSuccessfully"))
    end)

	-- AutoFarm Tab
	local AutoFarmTab = Window:NewTab(GetLangString("AutoFarm"))

	local AutoFarmData = {}
	for i, v in pairs(AnimeClient.AutoFarms) do
		table.insert(AutoFarmData, i)
	end

	if not AnimeClient.AutoFarms[config.autofarm_type] then
		config.autofarm_type = ""
	end

	local AutoFarmTypeSelector = AutoFarmTab:NewSelector(GetLangString("SelectAutoFarmType"), config.autofarm_type, AutoFarmData, function(value)
		config.autofarm_type = value
		SaveManager.SaveConfig(user_path.."\\config.json", config)

	end)
	local FarmEnableToggle = AutoFarmTab:NewToggle("Farm Enable", config.autofarm_enable, function(value)
		config.autofarm_enable = value
		SaveManager.SaveConfig(user_path.."\\config.json", config)

		if value then
			if config.autofarm_type ~= "" then
				print(AnimeClient.AutoFarms[config.autofarm_type])
				AnimeClient.StartAutoFarm(AnimeClient.AutoFarms[config.autofarm_type])
			else
				if FarmEnableToggle then
					FarmEnableToggle:Set(false)
					SendNotification(notif_title, GetLangString("SelectAutoFarmType"))
				end
			end
		end
		
	end)

	-- local AutoFarmOptionsSection = AutoFarmTab:NewSection(GetLangString("Options"))
	-- local AutoFarmOptionsLabel = AutoFarmTab:NewLabel("Not supported", "left")

	-- FPS Tab
    local FPSTab = Window:NewTab("FPS Boost")

    FPSTab:NewSection("FPS Settings")
    local RenderingToggle = FPSTab:NewToggle("3D Rendering", config.fps_3drender, function(value)
		config.fps_3drender = value
		SaveManager.SaveConfig(user_path.."\\config.json", config)

		game:GetService("RunService"):Set3dRenderingEnabled(value)
	end)

    local FPSCountSlider = FPSTab:NewSlider("FPS Max", "", true, "/", {min = 0, max = 120, default = 60}, function(value)
		if value <= 10 then
			setfpscap(-1)
		else
			setfpscap(value)		
		end
		

		config.fps_cap = value
		SaveManager.SaveConfig(user_path.."\\config.json", config)
	end):Value(config.fps_cap)

end

function CreateAuthorizationUI()
    local AuthorizationTab = Window:NewTab(GetLangString("Authorization"))
    AuthorizationTab:NewSection(GetLangString("Key_System"))

    AuthorizationTab:NewLabel("", "left")
    AuthorizationTab:NewLabel(GetLangString("KeySystemDescription"), "left")--"left", "center", "right"
    AuthorizationTab:NewLabel("", "left")

    local key = ""
    local KeyTextbox = AuthorizationTab:NewTextbox(GetLangString("Key"), "", GetLangString("KeyTextBoxDesc"), "all", "medium", true, false, function(val)
        key = val
    end)

    local EnterButton = AuthorizationTab:NewButton(GetLangString("Enter"), function()
        if game:HttpGet("https://pastebin.com/raw/MX0xx7LW") == key then
			SendNotification(notif_title, GetLangString("SuccessfulAuthorization"))
            SaveManager.SaveConfig(user_path.."\\key.json", {key})
            AuthorizationTab:Remove()
            CreateMainUI()
        else
            SendNotification(notif_title, GetLangString("WrongKey"))
        end
    end)

    AuthorizationTab:NewLabel("", "center")
    AuthorizationTab:NewLabel("", "center")
    AuthorizationTab:NewLabel("", "center")
    AuthorizationTab:NewLabel("", "center")

    AuthorizationTab:NewLabel("", "center")--"left", "center", "right"
    local CopyDiscordButton = AuthorizationTab:NewButton(GetLangString("CopyLinkDiscord"), function()
        setclipboard(discord_url)
		SendNotification(notif_title, GetLangString("LinkCopiedSuccessfully"))
    end)
end

function main()
	local queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)
	if queueteleport then
		queueteleport("loadstring(game:HttpGet('https://pub.microbin.eu/raw/bat-panda-swan',true))();")
	else
		SendNotification(notif_title, GetLangString("ExecutorNotSupported"))
		SendNotification(notif_title, GetLangString("ExecutorNotSupported"))
		SendNotification(notif_title, GetLangString("ExecutorNotSupported"))
		return 
	end

	AnimeAPI.AntiAFK()
	AnimeAPI.AutoReconnect()

	SaveManager.CreateDirectory(user_path)
	local key = SaveManager.LoadConfig(user_path.."\\key.json")

	config = SaveManager.LoadConfig(user_path.."\\config.json")
	if not config then config = config_base end

	if key and key[1] then
		if game:HttpGet("https://pastebin.com/raw/MX0xx7LW") == key[1] then SendNotification(notif_title, GetLangString("SuccessfulAuthorization")) CreateMainUI() else SendNotification(notif_title, GetLangString("WrongKey")) CreateAuthorizationUI() end
	else
		CreateAuthorizationUI()
	end
end

main()
