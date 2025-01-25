repeat
	wait();
until game:IsLoaded() 
local CoreGui = game:GetService("CoreGui");
local RobloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local VirtualInputManager = game:GetService("VirtualInputManager");
local TeleportService = game:GetService("TeleportService");
local Players = game:GetService("Players");
local RunService = game:GetService("RunService");
local Player = Players.LocalPlayer;
local PlayerGui = Player:WaitForChild("PlayerGui");
repeat
	wait();
until Player.Character ~= nil 
local Character = Player.Character;
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart");
local Humanoid = Character:WaitForChild("Humanoid");
local AnimeClient = {};
AnimeClient.LobbyId = 8304191830;
AnimeClient.GameId = 14229762361;
AnimeClient.AnimeApi = nil;
AnimeClient.AutoFarms = {["Holiday Hunt"]="HolidayHunt",["Nightmare Hunt"]="NightmareHunt",["Player Level"]=nil,Infinity=nil,Challenges=nil};
AnimeClient.Init = function()
	AnimeApi.AntiAFK();
	AnimeApi.AutoReconnect();
end;
AnimeClient.StartAutoFarm = function(AutoFarm)
	local placeId = game.PlaceId;
	if (placeId == AnimeClient.LobbyId) then
		AnimeClient.LoadInLobby(AutoFarm);
	elseif (placeId == AnimeClient.GameId) then
		AnimeClient.LoadInGame(AutoFarm);
	end
end;
AnimeClient.LoadInLobby = function(AutoFarm)
	if (AutoFarm == "HolidayHunt") then
		AnimeClient.StartMatchmakig("christmas_event");
	elseif (AutoFarm == "NightmareHunt") then
		AnimeClient.StartMatchmakig("halloween2_event");
	end
end;
AnimeClient.StartMatchmakig = function(name)
	ReplicatedStorage.endpoints.client_to_server.request_matchmaking:InvokeServer(name);
end;
AnimeClient.StartStoryLevel = function(name)
end;
AnimeClient.LoadInGame = function(AutoFarm)
	if (AutoFarm == "HolidayHunt") then
		AnimeClient.StartAFKFarm();
	elseif (AutoFarm == "NightmareHunt") then
		AnimeClient.StartAFKFarm();
	elseif (AutoFarm == "Lvl") then
	end
end;
AnimeClient.StartAFKFarm = function()
	workspace._map:Destroy();
	task.wait(5);
	ReplicatedStorage.endpoints.client_to_server.vote_start:InvokeServer();
	coroutine.wrap(function()
		local InitSpawn = workspace.initial_spawn;
		while task.wait(math.random(10, 40)) do
			VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game);
			Humanoid:MoveTo(InitSpawn.Position + Vector3.new(math.random(-50, 50), 0, math.random(-50, 50)));
		end
	end)();
	workspace._DATA.GameFinished.Changed:Connect(function(value)
		task.wait(10);
		ReplicatedStorage.endpoints.client_to_server.teleport_back_to_lobby:InvokeServer();
	end);
end;
return AnimeClient;
