repeat wait() until game:IsLoaded()
local CoreGui = game:GetService("CoreGui")
local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui")
 
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualInputManager = game:GetService("VirtualInputManager")
local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
 
local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")
repeat wait() until Player.Character ~= nil
local Character = Player.Character
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
local Humanoid = Character:WaitForChild("Humanoid")

--=========================================== ANIME CLIENT =========================================== 
local AnimeClient = {}
AnimeClient.LobbyId = 8304191830
AnimeClient.GameId = 14229762361
AnimeClient.AnimeApi = nil

AnimeClient.AutoFarms = {
    ["Holiday Hunt"] = "HolidayHunt",
    ["Nightmare Hunt"] = "NightmareHunt",
    ["Player Level"] = nil,
    ["Infinity"] = nil,
    ["Challenges"] = nil,
}

--================ INIT
AnimeClient.Init = function()
	AnimeApi.AntiAFK()
	AnimeApi.AutoReconnect()
end

AnimeClient.StartAutoFarm = function(AutoFarm)
	local placeId = game.PlaceId
	if placeId == AnimeClient.LobbyId then
		AnimeClient.LoadInLobby(AutoFarm)
	elseif placeId == AnimeClient.GameId then
		AnimeClient.LoadInGame(AutoFarm)
	end
end

--================ LOBBY
-- Загрузка в лобби
AnimeClient.LoadInLobby = function(AutoFarm)
	if AutoFarm == "HolidayHunt" then
		AnimeClient.StartMatchmakig("christmas_event")
	elseif AutoFarm == "NightmareHunt" then
		AnimeClient.StartMatchmakig("halloween2_event")
	end
end

AnimeClient.StartMatchmakig = function(name)
	ReplicatedStorage.endpoints.client_to_server.request_matchmaking:InvokeServer(name)
end

AnimeClient.StartStoryLevel = function(name)
	-- TODO
end
--================ IN GAME
-- Загрузка в игре
AnimeClient.LoadInGame = function(AutoFarm)
	if AutoFarm == "HolidayHunt" then
		AnimeClient.StartAFKFarm()
	elseif AutoFarm == "NightmareHunt" then
		AnimeClient.StartAFKFarm()
	elseif AutoFarm == "Lvl" then
		-- TODO
	end
end

-- Запуск афк фарма с бегом
AnimeClient.StartAFKFarm = function()
	workspace._map:Destroy()

	task.wait(5)
	ReplicatedStorage.endpoints.client_to_server.vote_start:InvokeServer()

	coroutine.wrap(function()
		local InitSpawn = workspace.initial_spawn

		while task.wait(math.random(10, 40)) do
			VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game)
			Humanoid:MoveTo(InitSpawn.Position + Vector3.new(math.random(-50, 50), 0, math.random(-50, 50)))
		end	
	end)()

	workspace._DATA.GameFinished.Changed:Connect(function(value)
		AnimeClient.SendLog(AnimeClient.GenerateEndLog())
		task.wait(10)
		ReplicatedStorage.endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
	end)
end

--================ LOGS
-- AnimeClient.GenerateEndLog = function()
-- 	return Player.Name.." | Game end on "..Player.PlayerGui.Waves.HealthBar.WaveNumber.Text.." wave, Rewards: "..Player.PlayerGui.Waves.HealthBar.IngameRewards.ResourceRewardTotal.Holder.Main.Amount.Text.." Holiday Stars | Total: "..tostring(Player._stats._resourceHolidayStars.Value).." Holiday Stars"
-- end

-- AnimeClient.SendLog = function(log)
-- 	if getgenv().TelegramLogs ~= nil then
-- 		game:HttpGet("https://api.telegram.org/"..getgenv().TelegramLogs["token"].."/sendMessage?chat_id="..getgenv().TelegramLogs["chat_id"].."&text="..log, true)
-- 	end

-- 	if getgenv().DiscordLogs ~= nil then
-- 		-- TODO
-- 	end
-- end

return AnimeClient
