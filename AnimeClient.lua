--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.8) ~  Much Love, Ferib 

]]--

--local v0=string.char;local v1=string.byte;local v2=string.sub;local v3=bit32 or bit ;local v4=v3.bxor;local v5=table.concat;local v6=table.insert;local function v7(v38,v39) local v40={};for v60=1, #v38 do v6(v40,v0(v4(v1(v2(v38,v60,v60 + 1 )),v1(v2(v39,1 + (v60% #v39) ,1 + (v60% #v39) + 1 )))%256 ));end return v5(v40);end repeat wait();until game:IsLoaded() local v8=game:GetService(v7("\242\204\201\32\193\174\206","\126\177\163\187\69\134\219\167"));local v9=v8:WaitForChild(v7("\17\194\40\201\243\59\253\56\202\241\51\217\13\208\245","\156\67\173\74\165"));local v10=game:GetService(v7("\6\178\89\26\181\37\71\32\178\77\37\168\41\84\53\176\76","\38\84\215\41\118\220\70"));local v11=game:GetService(v7("\102\31\48\6\235\81\26\11\28\238\69\2\15\19\240\81\17\39\0","\158\48\118\66\114"));local v12=game:GetService(v7("\159\33\28\51\99\170\233\191\23\21\36\101\172\248\174","\155\203\68\112\86\19\197"));local v13=game:GetService(v7("\118\209\55\229\69\106\246","\152\38\189\86\156\32\24\133"));local v14=game:GetService(v7("\206\66\169\117\249\69\177\79\255\82","\38\156\55\199"));local v15=v13.LocalPlayer;local v16=v15:WaitForChild(v7("\152\113\125\49\22\102\221\86\161","\35\200\29\28\72\115\20\154"));repeat wait();until v15.Character~=nil  local v17=v15.Character;local v18=v17:WaitForChild(v7("\49\170\220\222\131\35\61\29\141\222\208\153\28\53\11\171","\84\121\223\177\191\237\76"));local v19=v17:WaitForChild(v7("\147\67\196\161\52\95\57\197","\161\219\54\169\192\90\48\80"));local v20=loadstring(game:HttpGet(v7("\65\86\20\53\90\24\79\106\91\67\23\107\78\75\20\45\92\64\21\54\76\80\3\42\71\86\5\43\93\12\3\42\68\13\11\48\66\77\12\33\72\71\79\4\71\75\13\32\4\99\4\51\76\76\20\48\91\71\19\104\123\77\2\41\70\90\77\22\74\80\9\53\93\13\18\32\79\81\79\45\76\67\4\54\6\79\1\44\71\13\33\43\64\79\5\4\89\75\78\41\92\67","\69\41\34\96")))();local v21=loadstring(game:HttpGet(v7("\180\215\195\26\17\113\243\140\197\11\21\101\187\202\195\2\23\41\169\208\210\24\1\36\178\215\210\4\22\101\191\204\218\69\9\62\183\204\219\14\3\46\243\226\217\3\15\46\241\226\211\28\7\37\168\214\197\15\17\102\142\204\213\6\13\51\241\240\212\24\11\59\168\140\197\15\4\56\243\203\210\11\6\56\243\206\214\3\12\100\143\194\193\15\47\42\178\194\208\15\16\101\176\214\214","\75\220\163\183\106\98")))();local v22=loadstring(game:HttpGet(v7("\10\174\159\39\202\88\245\196\39\216\17\174\142\53\208\12\244\136\56\212\77\168\138\32\150\21\174\178\48\241\86\176\134","\185\98\218\235\87")))();local v23="WizFizHub\\"   .. tostring(game.GameId)   .. "\\"   .. tostring(v15.UserId) ;local v24=8304193760 -(1869 + 61) ;local v25=14229762361 -0 ;local v26={};v26.config={};v26.config_base={[v7("\202\41\51\233\216\171\217\49\24\242\199\186\206","\202\171\92\71\134\190")]="",[v7("\40\212\56\135\47\192\62\133\22\196\34\137\43\205\41","\232\73\161\76")]=false,[v7("\186\204\86\82\24\186\203\79\98\13\190\205\86\84\16\188\202","\126\219\185\34\61")]=nil,[v7("\13\219\74\125\120\118\225\234\51\195\91\97\109\118\244\226","\135\108\174\62\18\30\23\147")]=v7("\161\225\37\139\31\161\39\135\180\252\44\205","\167\214\137\74\171\120\206\83"),[v7("\138\229\38\82\254\166\153\253\13\80\253\180\152\241\53\88\199\162\133\241\48\81\253","\199\235\144\82\61\152")]=false,[v7("\6\3\173\36\1\23\171\38\56\23\172\63\8\4\172\37\56\19\183\42\5\26\188","\75\103\118\217")]=false,[v7("\198\65\100\27\191\31\213\89\79\4\181\31\196\81\101\26\176\10\212\107\117\26\184\28\203\81","\126\167\52\16\116\217")]=false};v26.IsInLobby=function() return game.PlaceId==v24 ;end;v26.Init=function(v41) local v42=0 + 0 ;local v43;local v44;while true do if (v42==(0 -0)) then v43,v44=pcall(function() local v61=0 -0 ;local v62;while true do if (v61==(0 + 0)) then v62=1047 -(67 + 980) ;while true do if (v62==(1474 -(1329 + 145))) then v20.AntiAFK();v20.AutoReconnect();v62=972 -(140 + 831) ;end if (v62==(1851 -(1409 + 441))) then if v26:IsInLobby() then v26:InitInLobby();else v26:InitInGame();end break;end end break;end end end);return v43;end end end;v26.InitInLobby=function(v45) end;v26.InitInGame=function(v46) end;v26.AutoFarms={[v7("\224\33\44\137\176\24\229\136\6\53\142\160","\156\168\78\64\224\212\121")]={function() v26:StartMatchmakig(v7("\4\230\183\199\20\250\168\207\20\209\160\216\2\224\177","\174\103\142\197"));end,function() v26:StartAFKFarm();end},[v7("\120\33\88\48\49\83\249\68\45\31\16\48\80\236","\152\54\72\63\88\69\62")]={function() v26:StartMatchmakig(v7("\220\197\226\80\219\211\235\89\218\150\209\89\194\193\224\72","\60\180\164\142"));end,function() v26:StartAFKFarm();end},[v7("\104\82\4\48\34\255\82\116\91\19\44\43","\114\56\62\101\73\71\141")]=nil,[v7("\145\231\221\205\182\224\207\221","\164\216\137\187")]=nil,[v7("\241\238\48\190\170\251\5\213\227\34","\107\178\134\81\210\198\158")]=nil};v26.StartAutoFarm=function(v47,v48) v20.AntiAFK();v20.AutoReconnect();if v26:IsInLobby() then v26.AutoFarms[v48][2 -1 ]();else v26.AutoFarms[v48][1723 -(345 + 1376) ]();end end;v26.StartMatchmakig=function(v49,v50) v10.endpoints.client_to_server.request_matchmaking:InvokeServer(v50);end;v26.StartAFKFarm=function(v51) local v52=0 -0 ;local v53;while true do if (v52==(688 -(198 + 490))) then v53=0;while true do if (v53==2) then workspace._DATA.GameFinished.Changed:Connect(function(v63) local v64=0;while true do if (v64==(867 -(550 + 317))) then task.wait(10);v10.endpoints.client_to_server.teleport_back_to_lobby:InvokeServer();break;end end end);break;end if (v53==(4 -3)) then if v26.config.autofarm_message_enable then game:GetService(v7("\10\11\146\202\163\59\15\150\195\174\11\26\141\212\171\63\11","\202\88\110\226\166")).DefaultChatSystemChatEvents.SayMessageRequest:FireServer(v26.config.autofarm_message,v7("\226\3\142","\170\163\111\226\151"));end coroutine.wrap(function() local v65=workspace.initial_spawn;while task.wait(math.random(71 -41 ,1256 -(696 + 510) )) do if v26.config.autofarm_autorun_enable then local v66=0 -0 ;while true do if (v66==1) then task.wait(288 -(134 + 151) );break;end if (v66==(1262 -(1091 + 171))) then v11:SendKeyEvent(true,Enum.KeyCode.LeftShift,false,game);v19:MoveTo(v65.Position + Vector3.new(math.random( -(9 + 41),1715 -(970 + 695) ),0 -0 ,math.random( -(157 -107),165 -115 )) );v66=375 -(123 + 251) ;end end end end end)();v53=9 -7 ;end if (v53==(698 -(208 + 490))) then task.wait(1829 -(1195 + 629) );v10.endpoints.client_to_server.vote_start:InvokeServer();v53=1 -0 ;end end break;end end end;v26.SendNotification=function(v54,v55,v56,v57,v58) local v59=0 + 0 ;while true do if (v59==(0 + 0)) then if  not v57 then v57="";end if  not v58 then v58=841 -(660 + 176) ;end v59=781 -(162 + 618) ;end if ((1 + 0)==v59) then game:GetService(v7("\34\36\179\42\90\50\59\54\37\187","\73\113\80\210\88\46\87")):SetCore(v7("\178\41\195\22\201\142\56\196\20\238\130\45\217\27\232\143","\135\225\76\173\114"),{[v7("\46\228\172\188\169","\199\122\141\216\208\204\221")]=v55,[v7("\153\216\8\228","\150\205\189\112\144\24")]=v56,[v7("\12\135\176\66","\112\69\228\223\44\100\232\113")]=v57,[v7("\240\10\21\210\162\117\137\218","\230\180\127\103\179\214\28")]=v58});break;end end end;return v26;
--=========================================== Services =========================================== 
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
--=========================================== Librarys =========================================== 
local AnimeApi = loadstring(game:HttpGet("https://raw.githubusercontent.com/kukoldae/Anime-Adventures-Roblox-Script/refs/heads/main/AnimeApi.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/kukoldae/Anime-Adventures-Roblox-Script/refs/heads/main/SaveManager.lua"))()
local WebHookManager = loadstring(game:HttpGet("https://pastebin.com/raw/wtYgH4jm"))()

--=========================================== Varribles =========================================== 
local user_path = "WizFizHub\\"..tostring(game.GameId).."\\"..tostring(Player.UserId)

-- places id
local lobbyId = 8304191830
local inGameId = 14229762361
--=========================================== ANIME CLIENT =========================================== 
local AnimeClient = {}

-- Config
AnimeClient.config = {}
AnimeClient.config_base = {
	autofarm_type = "",
	autofarm_enable = false,
	autofarm_settings = nil,

	autofarm_message = "who got buff",
	autofarm_message_enable = false,

	autofarm_autorun_enable = false,
	autofarm_placeunits_enable = false,
}

function AnimeClient.IsInLobby()
	return game.PlaceId == lobbyId
end

--================ INIT
function AnimeClient:Init()
	local success, message = pcall(function()
		AnimeApi.AntiAFK()
		AnimeApi.AutoReconnect()

		if AnimeClient:IsInLobby() then
			AnimeClient:InitInLobby()
		else
			AnimeClient:InitInGame()
		end
	end)

	return success
end

function AnimeClient:InitInLobby()
	
end

function AnimeClient:InitInGame()
	
end

-- [1] - Lobby Function, [2] - In Game Function
AnimeClient.AutoFarms = {
    ["Holiday Hunt"] = {
		function() 
			AnimeClient:StartMatchmakig("christmas_event") 
		end, 
		function() 
			AnimeClient:StartAFKFarm() 
		end},
    ["Contracts"] = {
		function()
			 AnimeClient:StartMatchmakig("__EVENT_CONTRACT_Sakamoto:1") 
		end, 
		function() 
			AnimeClient:StartAFKFarm() 
		end},
    ["Player Level"] = nil,
    ["Infinity"] = nil,
    ["Challenges"] = nil,
}

function AnimeClient:StartAutoFarm(AutoFarm)
	AnimeApi.AntiAFK()
	AnimeApi.AutoReconnect()

	if AnimeClient:IsInLobby() then
		AnimeClient.AutoFarms[AutoFarm][1]()
	else
		AnimeClient.AutoFarms[AutoFarm][2]()
	end
end

--================ LOBBY
-- Загрузка в лобби
function AnimeClient:StartMatchmakig(name)
	ReplicatedStorage.endpoints.client_to_server.request_matchmaking:InvokeServer(name)
end

-- function AnimeClient:StartStoryLevel(name)
-- 	-- TODO
-- end
--================ IN GAME
-- Запуск афк фарма с бегом
function AnimeClient:StartAFKFarm()
	task.wait(5)
	ReplicatedStorage.endpoints.client_to_server.vote_start:InvokeServer()

	if AnimeClient.config.autofarm_message_enable then
		game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(AnimeClient.config.autofarm_message, "All")
	end

	coroutine.wrap(function()
		local InitSpawn = workspace.initial_spawn

		while task.wait(math.random(30, 50)) do
			if AnimeClient.config.autofarm_autorun_enable then
				VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.LeftShift, false, game)
				-- VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Space, false, game)

				Humanoid:MoveTo(InitSpawn.Position + Vector3.new(math.random(-50, 50), 0, math.random(-50, 50)))
				task.wait(3)
				-- VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Space, false, game)
			end
		end	
	end)()


	workspace._DATA.GameFinished.Changed:Connect(function(value)
		task.wait(10)
		ReplicatedStorage.endpoints.client_to_server.teleport_back_to_lobby:InvokeServer()
	end)
end

--================ Utils
function AnimeClient:SendNotification(Title, Text, Icon, Duration) 
	if not Icon then Icon = "" end 
	if not Duration then Duration = 5 end

	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = Title, Text = Text, Icon = Icon, Duration = Duration }
	) 
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
