if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace)
	GameLoadGui.Text = 'Wait Game Loading'
	game.Loaded:Wait()
	GameLfoadGui:Destroy()
	wait()
end

--[ Setting ]
_G.Settings = {
	Main = {
		["Auto Farm Level"] = false,
		["Fast Auto Farm Level"] = false,

		--[Mob Aura]

		["Distance Mob Aura"] = 1000, -- {Max : 5000} 
		["Mob Aura"] = false,

		--[World 1]
		["Auto New World"] = false,
		["Auto Saber"] = false,
		["Auto Pole"] = false,

		["Auto Buy Ablility"] = false,

		--[World 2]
		["Auto Third Sea"] = false,
		["Auto Factory"] = false,
		["Auto Factory Hop"] = false,
		["Auto Bartilo Quest"] = false,

		["Auto True Triple Katana"] = false,
		["Auto Rengoku"] = false,
		["Auto Swan Glasses"] = false,
		["Auto Dark Coat"] = false,
		["Auto Ectoplasm"] = false,

		["Auto Buy Legendary Sword"] = false,
		["Auto Buy Enchanment Haki"] = false,

		--[World 3]
		["Auto Holy Torch"] = false,
		["Auto Buddy Swords"] = false,
		["Auto Farm Boss Hallow"] = false,
		["Auto Rainbow Haki"] = false,
		["Auto Elite Hunter"] = false,
		["Auto Musketeer Hat"] = false,
		["Auto Buddy Sword"] = false,
		["Auto Farm Bone"] = false,
		["Auto Ken-Haki V2"] = false,
		["Auto Cavander"] = false,
		["Auto Yama Sword"] = false,
		["Auto Tushita Sword"] = false,
		["Auto Serpent Bow"] = false,
		["Auto Dark Dagger"] = false,
		["Auto Cake Prince"] = false,
		["Auto Dough V2"] = false,
		["Auto Random Bone"] = false,

		--[For God Human]

		["Auto Fish Tail Sea 1"] = false,
		["Auto Fish Tail Sea 3"] = false,
		["Auto Magma Ore Sea 2"] = false,
		["Auto Magma Ore Sea 1"] = false,
		["Auto Mystic Droplet"] = false,
		["Auto Dragon Scales"] = false,

	},
	FightingStyle = {
		["Auto God Human"] = false,
		["Auto Superhuman"] = false,
		["Auto Electric Claw"] = false,
		["Auto Death Step"] = false,
		["Auto Fully Death Step"] = false,
		["Auto SharkMan Karate"] = false,
		["Auto Fully SharkMan Karate"] = false,
		["Auto Dragon Talon"] = false,
	},
	Boss = {
		["Auto All Boss"] = false,
		["Auto Boss Select"] = false,
		["Select Boss"] = {},

		["Auto Quest"] = false,
	},
	Mastery = {
		["Select Multi Sword"] = {},
		["Farm Mastery SwordList"] = false,
		["Auto Farm Fruit Mastery"] = false,
		["Auto Farm Gun Mastery"] = false,
		["Mob Health (%)"] = 15,
	},
	Configs = {
		["Double Quest"] = false,
		["Bypass TP"] = false,
		["Select Team"] = {"Pirate"}, --{Pirate,Marine}


		["Fast Attack"] = true,
		["Fast Attack Type"] = {"Fast"}, --{Normal,Fast,Slow}

		["Select Weapon"] = {},


		--[Misc Configs]
		["Auto Haki"] = true,
		["Distance Auto Farm"] = 20, --{Max : 50}
		["Camera Shaker"] = false,

		--[Skill Configs]
		["Skill Z"] = true,
		["Skill X"] = true,
		["Skill C"] = true,
		["Skill V"] = true,

		--[Mob Configs]
		["Show Hitbox"] = false,
		["Bring Mob"] = true,
		["Disabled Damage"] = false,

	},
	Stat = {
		--[Auto Stats]
		["Enabled Auto Stats"] = false,
		["Auto Stats Kaitun"] = false,

		["Select Stats"] = {"Melee"}, --{Max Stats,Melee,Defense,Sword,Devil Fruit,Gun}
		["Point Select"] = 3, --{Recommended , Max : 9}

		--[Auto Redeem Code]

		["Enabled Auto Redeem Code"] = false,
		["Select Level Redeem Code"] = 1, --{Max : 2400}
	},

	Misc = {
		["No Soru Cooldown"] = false,
		["No Dash Cooldown"] = false,

		["Infinities Geppo"] = false,
		["Infinities Energy"] = false,

		["No Fog"] = false,
		["Wall-TP"] = false,

		["Fly"] = false,
		["Fly Speed"] = 1,

		--[Server]
		["Auto Rejoin"] = true,
	},
	Teleport = {
		["Teleport to Sea Beast"] = false,
		["Island TP"] = {},
	},

	Fruits = {
		["Auto Buy Random Fruits"] = false,
		["Auto Store Fruits"] = false,

		["Select Devil Fruits"] = {}, -- {"Bomb-Bomb","Spike-Spike","Chop-Chop","Spring-Spring","Kilo-Kilo","Spin-Spin","Kilo-Kilo","Spin-Spin","Bird: Falcon","Smoke-Smoke","Flame-Flame","Ice-Ice","Sand-Sand","Dark-Dark","Revive-Revive","Diamond-Diamond","Light-Light","Love-Love","Rubber-Rubber","Barrier-Barrier","Magma-Magma","Door-Door","Quake-Quake","Human-Human: Buddha","String-String","Bird-Bird: Phoenix","Rumble-Rumble","Paw-Paw","Gravity-Gravity","Dough-Dough","Shadow-Shadow","Venom-Venom","Control-Control","Soul-Soul","Dragon-Dragon"}
		["Auto Buy Devil Fruits Sniper"] = false,
	},

	Raids = {
		["Auto Raids"] = false,

		["Kill Aura"] = false,
		["Auto Awakened"] = false,
		["Auto Next Place"] = false,

		["Select Raids"] = {}, -- {"Flame","Ice","Quake","Light","Dark","String","Rumble","Magma","Human: Buddha","Sand","Bird: Phoenix","Dough"},
	},

	Combat = {
		["Fov Size"] = 200,
		["Show Fov"] = false,
		["Aimbot Skill"] = false,
	},

	HUD = {
		["FPS"] = 60,
		["LockFPS"] = true,
		["Boost FPS Windows"] = false,
		['White Screen'] = false,
	}
}

--[ Variable Status ]
local Item_Variable = {
	["Saber"] = false,
	["Pole"] = false,
	["Buy Ablility"] = false,
	["Bartilo Quest"] = false,
	["True Triple Katana"] = false,
	["Rengoku"] = false,
	["Swan Glasses"] = false,
	["Dark Coat"] = false,
	["Ectoplasm"] = false,
	["Buy Legendary Sword"] = false,
	["Buy Enchanment Haki"] = false,
	["Holy Torch"] = false,
	["Buddy Swords"] = false,
	["Farm Boss Hallow"] = false,
	["Rainbow Haki"] = false,
	["Elite Hunter"] = false,
	["Musketeer Hat"] = false,
	["Buddy Sword"] = false,
	["Farm Bone"] = false,
	["Ken-Haki V2"] = false,
	["Cavander"] = false,
	["Yama Sword"] = false,
	["Tushita Sword"] = false,
	["Serpent Bow"] = false,
	["Dark Dagger"] = false,
	["Cake Prince"] = false,
	["Dough V2"] = false,
	["Fish Tail Sea 1"] = false,
	["Fish Tail Sea 3"] = false,
	["Magma Ore Sea 2"] = false,
	["Magma Ore Sea 1"] = false,
	["Mystic Droplet"] = false,
	["Dragon Scales"] = false
}

local FightStyle_Variable = {
	["God Human"] = false,
	["Superhuman"] = false,
	["Electric Claw"] = false,
	["Death Step"] = false,
	["Fully Death Step"] = false,
	["SharkMan Karate"] = false,
	["Fully SharkMan Karate"] = false,
	["Dragon Talon"] = false,
}

local Stats_Variable = {
	["Melee"] = 1,
	["Defense"] = 1,
	["Sword"] = 1,
	["Devil Fruit"] = 1,
	["Gun"] = 1
}

local World_Variable = {
	["New World"] = false,
	["Third World"] = false
}

--[ V ]
local Tween = game:GetService("TweenService")
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
local AreaON = game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value

local Tool = _G.Settings.Configs["Select Weapon"] or nil
local backpack = game.Players.LocalPlayer.Backpack

local Afk = false

local FarmStatus = false
local UsePoint = 1



--[ Function ]
local function tweenwarp(pos, vec)
	local infowarp = TweenInfo.new(((vec - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude / 350), Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
	local start = Tween:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, infowarp, {CFrame = pos})
	local twstatus = true
	start:Play()
	spawn(function()
		local Part = Instance.new("Part")
		Part.Parent = game:GetService("Workspace")
		Part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position
		Part.Size = Vector3.new(5, 1, 5)
		Part.Anchored = true
		while twstatus do
			Part.Position = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position - Vector3.new(0, 3, 0)
			wait() -- Add a small delay to prevent an infinite loop without yielding
		end
		Part:Destroy()
	end)
	start.Completed:Wait()
	twstatus = false
end

local function Equip_Tool(name)
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(name)
	if tool then
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end

local function UnEquip_Tool()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end

local Quest_Pos = {
	["First-pirate"] = {
		["Name"] = "BanditQuest1",
		["Island"] = "Default",
		["Monster"] = "Bandit",
		["Level"] = 1,
		["Position"] = CFrame.new(1060, 17, 1547),
		["Vector3"] = Vector3.new(1060, 17, 1547)
	},
	["First-marine"] = {
		["Name"] = "MarineQuest1",
		["Island"] = "Default",
		["Level"] = 1,
		["Position"] = CFrame.new(-2708.57739, 23.2188244, 2105.34814, 0.683746457, 0, 0.729719639, 0, 1, 0, -0.729719639, 0, 0.683746457),
		["Vector3"] = Vector3.new(-2708.57739, 23.2188244, 2105.34814)
	},
	["Second"] = {
		["Name"] = "JungleQuest",
		["Monster"] = "Monkey",
		["Island"] = "Jungle",
		["Level"] = 10,
		["Position"] = CFrame.new(-1496, 39, 35),
		["Vector3"] = Vector3.new(-1496, 39, 35)
	},
	["Third"] = {
		["Name"] = "JungleQuest",
		["Monster"] = "Gorilla",
		["Island"] = "Jungle",
		["Level"] = 15,
		["Position"] = CFrame.new(-1237, 6, -486),
		["Vector3"] = Vector3.new(-1237, 6, -486)
	},
	["Fourth"] = {
		["Name"] = "BuggyQuest1",
		["Monster"] = "Pirate",
		["Island"] = "Pirate Village",
		["Level"] = 30,
		["Position"] = CFrame.new(-1140, 5, 3828),
		["Vector3"] = Vector3.new(-1140, 5, 3828)
	},
	["Fifth"] = {
		["Name"] = "BuggyQuest1",
		["Monster"] = "Brute",
		["Island"] = "Pirate Village",
		["Level"] = 40,
		["Position"] = CFrame.new(-1140, 5, 3828),
		["Vector3"] = Vector3.new(-1140, 5, 3828)
	},
	["Sixth"] = {
		["Name"] = "DesertQuest",
		["Monster"] = "Desert Bandit",
		["Island"] = "Desert",
		["Level"] = 60,
		["Position"] = CFrame.new(897, 7, 4388),
		["Vector3"] = Vector3.new(897, 7, 4388)
	},
	["Seventh"] = {
		["Name"] = "DesertQuest",
		["Monster"] = "Desert Officer",
		["Island"] = "Desert",
		["Level"] = 75,
		["Position"] = CFrame.new(897, 7, 4388),
		["Vector3"] = Vector3.new(897, 7, 4388)
	},
	["Eighth"] = {
		["Name"] = "SnowQuest",
		["Monster"] = "Snow Bandit",
		["Island"] = "Snow",
		["Level"] = 90,
		["Position"] = CFrame.new(1386, 87, -1297),
		["Vector3"] = Vector3.new(1386, 87, -1297)
	},
	["Ninth"] = {
		["Name"] = "SnowQuest",
		["Monster"] = "Snowman",
		["Island"] = "Snow",
		["Level"] = 100,
		["Position"] = CFrame.new(1386, 87, -1297),
		["Vector3"] = Vector3.new(1386, 87, -1297)
	},
	["Tenth"] = {
		["Name"] = "MarineQuest2",
		["Level"] = 120,
		["Position"] = CFrame.new(-5036, 29, 4325),
		["Vector3"] = Vector3.new(-5036, 29, 4325)
	},
	["Eleventh"] = {
		["Name"] = "SkyQuest",
		["Level"] = 150,
		["Position"] = CFrame.new(-4842, 718, -2623),
		["Vector3"] = Vector3.new(-4842, 718, -2623)
	},
	["Twelveth"] = {
		["Name"] = "SkyQuest",
		["Level"] = 175,
		["Position"] = CFrame.new(-4842, 718, -2623),
		["Vector3"] = Vector3.new(-4842, 718, -2623)
	},
	["Thirteenth"] = {
		["Name"] = "PrisonerQuest",
		["Level"] = 190,
		["Position"] = CFrame.new(5308, 2, 474),
		["Vector3"] = Vector3.new(5308, 2, 474)
	},
	["Fourteenth"] = {
		["Name"] = "PrisonerQuest",
		["Level"] = 210,
		["Position"] = CFrame.new(5308, 2, 474),
		["Vector3"] = Vector3.new(5308, 2, 474)
	},
	["Fifteenth"] = {
		["Name"] = "ColosseumQuest",
		["Level"] = 250,
		["Position"] = CFrame.new(-1576, 8, -2985),
		["Vector3"] = Vector3.new(-1576, 8, -2985)
	},
	["Sixteenth"] = {
		["Name"] = "MagmaQuest",
		["Level"] = 300,
		["Position"] = CFrame.new(-5316, 12, 8517),
		["Vector3"] = Vector3.new(-5316, 12, 8517)
	},
	["Seventeenth"] = {
		["Name"] = "MagmaQuest",
		["Level"] = 325,
		["Position"] = CFrame.new(-5316, 12, 8517),
		["Vector3"] = Vector3.new(-5316, 12, 8517)
	},
	["Eighteenth"] = {
		["Name"] = "FishmanQuest",
		["Level"] = 375,
		["Position"] = CFrame.new(61123, 19, 1569),
		["Vector3"] = Vector3.new(61123, 19, 1569)
	},
	["Nineteenth"] = {
		["Name"] = "FishmanQuest",
		["Level"] = 400,
		["Position"] = CFrame.new(61123, 19, 1569),
		["Vector3"] = Vector3.new(61123, 19, 1569)
	}
}

local Mob_Pos = {
	["Bandit"] = {
		["Name"] = "Bandit [Lv. 5]",
		["Position"] = CFrame.new(1060, 17, 1547),
		["Vector3"] = Vector3.new(1060, 17, 1547)
	},
	["Monkey"] = {
		["Name"] = "Monkey [Lv. 14]",
		["Position"] = CFrame.new(-1496, 39, 35),
		["Vector3"] = Vector3.new(-1496, 39, 35)
	},
	["Gorilla"] = {
		["Name"] = "Gorilla [Lv. 20]",
		["Position"] = CFrame.new(-1237, 6, -486),
		["Vector3"] = Vector3.new(-1237, 6, -486)
	},
	["Pirate"] = {
		["Name"] = "Pirate [Lv. 35]",
		["Position"] = CFrame.new(-1115, 14, 3938),
		["Vector3"] = Vector3.new(-1115, 14, 3938)
	},
	["Brute"] = {
		["Name"] = "Brute [Lv. 45]",
		["Position"] = CFrame.new(-1145, 15, 4350),
		["Vector3"] = Vector3.new(-1145, 15, 4350)
	},
	["Desert Bandit"] = {
		["Name"] = "Desert Bandit [Lv. 60]",
		["Position"] = CFrame.new(932, 7, 4484),
		["Vector3"] = Vector3.new(932, 7, 4484)
	},
	["Desert Officer"] = {
		["Name"] = "Desert Officer [Lv. 70]",
		["Position"] = CFrame.new(1572, 10, 4373),
		["Vector3"] = Vector3.new(1572, 10, 4373)
	},
	["Snow Bandit"] = {
		["Name"] = "Snow Bandit [Lv. 90]",
		["Position"] = CFrame.new(1289, 150, -1442),
		["Vector3"] = Vector3.new(1289, 150, -1442)
	},
	["Snowman"] = {
		["Name"] = "Snowman [Lv. 100]",
		["Position"] = CFrame.new(1289, 150, -1442),
		["Vector3"] = Vector3.new(1289, 150, -1442)
	},
	["Chief Petty Officer"] = {
		["Name"] = "Chief Petty Officer [Lv. 120]",
		["Position"] = CFrame.new(-4855, 23, 4308),
		["Vector3"] = Vector3.new(-4855, 23, 4308)
	},
	["Sky Bandit"] = {
		["Name"] = "Sky Bandit [Lv. 150]",
		["Position"] = CFrame.new(-4981, 278, -2830),
		["Vector3"] = Vector3.new(-4981, 278, -2830)
	},
	["Dark Master"] = {
		["Name"] = "Dark Master [Lv. 175]",
		["Position"] = CFrame.new(-5250, 389, -2272),
		["Vector3"] = Vector3.new(-5250, 389, -2272)
	},
	["Prisoner"] = {
		["Name"] = "Prisoner [Lv. 190]",
		["Position"] = CFrame.new(5411, 96, 690),
		["Vector3"] = Vector3.new(5411, 96, 690)
	},
	["Dangerous Prisoner"] = {
		["Name"] = "Dangerous Prisoner [Lv. 210]",
		["Position"] = CFrame.new(5411, 96, 690),
		["Vector3"] = Vector3.new(5411, 96, 690)
	},
	["Toga Warrior"] = {
		["Name"] = "Toga Warrior [Lv. 250]",
		["Position"] = CFrame.new(-1824, 50, -2743),
		["Vector3"] = Vector3.new(-1824, 50, -2743)
	},
	["Military Soldier"] = {
		["Name"] = "Military Soldier [Lv. 300]",
		["Position"] = CFrame.new(-5408, 11, 8447),
		["Vector3"] = Vector3.new(-5408, 11, 8447)
	},
	["Military Spy"] = {
		["Name"] = "Military Spy [Lv. 325]",
		["Position"] = CFrame.new(-5815, 84, 8820),
		["Vector3"] = Vector3.new(-5815, 84, 8820)
	},
	["Fishman Warrior"] = {
		["Name"] = "Fishman Warrior [Lv. 375]",
		["Position"] = CFrame.new(60859, 19, 1501),
		["Vector3"] = Vector3.new(60859, 19, 1501)
	},
	["Fishman Commando"] = {
		["Name"] = "Fishman Commando [Lv. 400]",
		["Position"] = CFrame.new(61891, 19, 1470),
		["Vector3"] = Vector3.new(61891, 19, 1470)
	},
	["God's Guard"] = {
		["Name"] = "God's Guard [Lv. 450]",
		["Position"] = CFrame.new(-4698, 845, -1912),
		["Vector3"] = Vector3.new(-4698, 845, -1912)
	}
}

local Island_Pos = {
	["Jungle"] = {
		["Position"] = CFrame.new(-1446.5421142578125, 61.88697052001953, -32.100074768066406),
		["Vector3"] = Vector3.new(-1446.5421142578125, 61.88697052001953, -32.100074768066406)
	},
	["Pirate Starter"] = {
		["Position"] = CFrame.new(1036.7008056640625, 80.6564712524414, 1594.43603515625),
		["Vector3"] = Vector3.new(1036.7008056640625, 80.6564712524414, 1594.43603515625)
	},
	["Desert"] = {
		["Position"] = CFrame.new(897, 7, 4388),
		["Vector3"] = Vector3.new(897, 7, 4388)
	},
	["Snow"] = {
		["Position"] = CFrame.new(1386, 87, -1297),
		["Vector3"] = Vector3.new(1386, 87, -1297)
	},
	["Sky"] = {
		["Position"] = CFrame.new(-4842, 718, -2623),
		["Vector3"] = Vector3.new(-4842, 718, -2623)
	},
	["Prisoner"] = {
		["Position"] = CFrame.new(5308, 2, 474),
		["Vector3"] = Vector3.new(5308, 2, 474)
	},
	["Colosseum"] = {
		["Position"] = CFrame.new(-1576, 8, -2985),
		["Vector3"] = Vector3.new(-1576, 8, -2985)
	},
	["Magma"] = {
		["Position"] = CFrame.new(-5316, 12, 8517),
		["Vector3"] = Vector3.new(-5316, 12, 8517)
	},
	["Fishman"] = {
		["Position"] = CFrame.new(61123, 19, 1569),
		["Vector3"] = Vector3.new(61123, 19, 1569)
	}
}


local function Auto_Kill_Mob(name)
	local Mob = workspace.Enemies:FindFirstChild(name)
	local plr = game.Players.LocalPlayer
	local char = plr.Character or plr.CharacterAdded:Wait()
	if Mob and (Mob.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 100 then
		tweenwarp(Mob.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0), Mob.HumanoidRootPart.Position)
	else
		while wait() do
			if Mob and Mob:FindFirstChild("Humanoid") and Mob.Humanoid.Health > 0 then
				char.HumanoidRootPart.CFrame = Mob.HumanoidRootPart.CFrame * CFrame.new(0, 0, -5)
				pcall(function()
					game:GetService'VirtualUser':CaptureController()
					game:GetService'VirtualUser':Button1Down(Vector2.new(0,1,0,1))
				end)
			else
				break
			end
		end
	end
end

local function FarmLevel(S)
	print("Farm Level")
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	local Island = game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value
	local Quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
	local PlayerTeam = tostring(game:GetService("Players").LocalPlayer.Team)
	Equip_Tool(Tool)

	while S do
		Wait()
		for i,v in pairs(Quest_Pos) do
			if MyLevel >= v["Level"] and MyLevel < v["Level"] then
				if MyLevel < 10 then
					if PlayerTeam == "Pirates" then
						if Island ~= v["Island"] then
							tweenwarp(v["Position"], v["Vector3"])
						end
					elseif PlayerTeam == "Marines" then
						if Island ~= v["Island"] then
							tweenwarp(v["Position"], v["Vector3"])
						end
					end
				else
					if Island ~= v["Island"] then
						tweenwarp(v["Position"], v["Vector3"])
					else
						if Quest.Visible == false then
							tweenwarp(v["Position"], v["Vector3"])
						else
							Auto_Kill_Mob(v["Monster"])
						end
					end
				end
			end
		end
	end
end

local function Auto_Second_World()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if MyLevel >= 700 then
		return true
	else
		return false
	end
end

local function Auto_Third_World()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if MyLevel >= 15 then
		return true
	else
		return false
	end
end

local function BypassAntiAfk()
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end

local function Auto_Holy_Torch()

end

--[ Lib UI ]
local library = loadstring(game:GetObjects("rbxassetid://7657867786")[1].Source)()
local Wait = library.subs.Wait -- Only returns if the GUI has not been terminated. For 'while Wait() do' loops

local PepsisWorld = library:CreateWindow({
    Name = "Flexia FC Hub!",
    Themeable = {Info = "Discord Server: https://discord.gg/getflexer"}
})

local GeneralTab = PepsisWorld:CreateTab({Name = "General"})
local FarmTab = PepsisWorld:CreateTab({Name = "Farm"})
local TpTab = PepsisWorld:CreateTab({Name = "Teleport"})
local PvpTab = PepsisWorld:CreateTab({Name = "Pvp"})
local MiscTab = PepsisWorld:CreateTab({Name = "Misc"})

--[ GeneralTab ]
local MainSection = GeneralTab:CreateSection({Name = "Main"})
local ItemSection = GeneralTab:CreateSection({Name = "Item", Side = "Left"})
local WorldSection = GeneralTab:CreateSection({Name = "World", Side = "Right"})
local FightStyleSection = GeneralTab:CreateSection({Name = "Fighting Style", Side = "Right"})
local StatsSection = GeneralTab:CreateSection({Name = "Stats", Side = "Right"})

MainSection:AddLabel({Text = "Name: "..game.Players.LocalPlayer.Name})
MainSection:AddLabel({Text = "Level: "..game.Players.LocalPlayer.Data.Level.Value})
MainSection:AddLabel({Text = "Race: "..game:GetService("Players").LocalPlayer.Data.Race.Value})
MainSection:AddLabel({Text = "Fruit: "..game:GetService("Players").LocalPlayer.Data.DevilFruit.Value})
MainSection:AddLabel({Text = "Beli: "..game.Players.LocalPlayer.Data.Beli.Value})
MainSection:AddLabel({Text = "Fragment: "..game.Players.LocalPlayer.Data.Fragments.Value})


for _, v in pairs(Item_Variable) do
	if v == false then
		ItemSection:AddLabel({Text = "❌ ".._})
	else
		ItemSection:AddLabel({Text = "✅ ".._})
	end
end

for _, v in pairs(World_Variable) do
	if v == false then
		WorldSection:AddLabel({Text = "❌ ".._})
	else
		WorldSection:AddLabel({Text = "✅ ".._})
	end	
end

for _, v in pairs(FightStyle_Variable) do
	if v == false then
		FightStyleSection:AddLabel({Text = "❌ ".._})
	else
		FightStyleSection:AddLabel({Text = "✅ ".._})
	end
end

for _, v in pairs(Stats_Variable) do
	StatsSection:AddLabel({Text = _..": "..v})
end
--[ FarmTab ]
local FarmSection = FarmTab:CreateSection({Name = "Farm"})
local SettingFarmSection = FarmTab:CreateSection({Name = "Setting", Side = "Right"})
local FarmItemSection = FarmTab:CreateSection({Name = "Item", Side = "Right"})

--[ FarmSection ]
FarmSection:CreateToggle({Name = "Auto Farm Level", Default  = _G.Settings.Main["Auto Farm Level"], Callback = function(Value)
	FarmLevel(Value)
end})
FarmSection:CreateToggle({Name = "Auto Second World", Default = _G.Settings.Main["Auto Second World"], Callback = function(Value)
	
end})
FarmSection:CreateToggle({Name = "Auto Third World", Default = _G.Settings.Main["Auto Third World"], Callback = function(Value)
	
end})

--[ SettingFarmSection ]
SettingFarmSection:CreateDropdown({Name = "Tool", Default = _G.Settings.Configs["Select Weapon"], List = backpack:GetChildren(), Callback = function(Value)
	Tool = Value
end})
SettingFarmSection:CreateDropdown({Name = "Farm Type", Default = _G.Settings.Main["Farm Type"], List = {"Normal", "Fast", "Super Fast"}, Callback = function(Value)
	_G.Settings.Main["Farm Type"] = Value
end})

--[ ItemSection ]
FarmItemSection:CreateToggle({Name = "Auto Holy Torch", Default = _G.Settings.Main["Auto Holy Torch"], Callback = function(Value)
	if Value == true then
		Auto_Holy_Torch()
	end
end})
FarmItemSection:CreateToggle({Name = "Auto Buddy Swords", Callback = function(Value)
	_G.Settings.Main["Auto Buddy Swords"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Dark Coat", Callback = function(Value)
	_G.Settings.Main["Auto Dark Coat"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Ectoplasm", Callback = function(Value)
	_G.Settings.Main["Auto Ectoplasm"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Buy Legendary Sword", Callback = function(Value)
	_G.Settings.Main["Auto Buy Legendary Sword"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Buy Enchanment Haki", Callback = function(Value)
	_G.Settings.Main["Auto Buy Enchanment Haki"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Rainbow Haki", Callback = function(Value)
	_G.Settings.Main["Auto Rainbow Haki"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Elite Hunter", Callback = function(Value)
	_G.Settings.Main["Auto Elite Hunter"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Musketeer Hat", Callback = function(Value)
	_G.Settings.Main["Auto Musketeer Hat"] = Value
end})
FarmItemSection:CreateToggle({Name = "Auto Buddy Sword", Callback = function(Value)
	_G.Settings.Main["Auto Buddy Sword"] = Value
end})

local FarmMasterySection = FarmTab:CreateSection({Name = "Farm Mastery"})
FarmMasterySection:CreateToggle({Name = "Farm Mastery SwordList", Callback = function(Value)
	_G.Setting["Farm_Mastery_SwordList"] = Value
end})
FarmMasterySection:CreateToggle({Name = "Auto Farm Fruit Mastery", Callback = function(Value)
	_G.Setting["Auto_Farm_Fruit_Mastery"] = Value
end})
FarmMasterySection:CreateToggle({Name = "Auto Farm Gun Mastery", Callback = function(Value)
	_G.Setting["Auto_Farm_Gun_Mastery"] = Value
end})
FarmMasterySection:CreateSlider({Name = "Mob Health (%)", Min = 1, Max = 100, Callback = function(Value)
	_G.Setting["Mob_Health_(%)"] = Value
end})

--[ TpTab ]

--[ Teleport ]
local TpSection = TpTab:CreateSection({Name = "Teleport"})
local IslandList = {}
spawn(function()
	for i,v in pairs(Island_Pos) do
		table.insert(IslandList, i)
	end
end)

TpSection:CreateDropdown({Name = "Select Island", Default = _G.Settings.Teleport["Island TP"], List = IslandList, Callback = function(Value)
	_G.Settings.Teleport["Island TP"] = Value
end})
TpSection:CreateButton({Name = "Teleport", Callback = function()
	if _G.Settings.Teleport["Island TP"] then
		tweenwarp(Island_Pos[_G.Settings.Teleport["Island TP"]]["Position"], Island_Pos[_G.Settings.Teleport["Island TP"]]["Vector3"])
	end
end})

--[ PvpTab ]
local PvpSection = PvpTab:CreateSection({Name = "Pvp"})
PvpSection:CreateToggle({Name = "Aimbot", Callback = function(Value)
	local plr = game.Players.LocalPlayer
	local mouse = plr:GetMouse()
	local camera = game.Workspace.CurrentCamera
	local uis = game:GetService("UserInputService")
	local aim = false

	local function getClosestPlayer()
		local target = nil
		local shortestDistance = math.huge
		for i, v in pairs(game.Players:GetPlayers()) do
			if v ~= plr and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health > 0 then
				local pos, vis = camera:WorldToViewportPoint(v.Character.HumanoidRootPart.Position)
				if vis then
					local magnitude = (Vector2.new(pos.X, pos.Y) - Vector2.new(mouse.X, mouse.Y)).magnitude
					if magnitude < shortestDistance then
						target = v
						shortestDistance = magnitude
					end
				end
			end
		end
		return target
	end

	uis.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			aim = true
		end
	end)

	uis.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton2 then
			aim = false
		end
	end)

	game:GetService("RunService").RenderStepped:Connect(function()
		if aim then
			local target = getClosestPlayer()
			if target then
				local pos = camera:WorldToScreenPoint(target.Character.HumanoidRootPart.Position)
				mousemoveabs(pos.X, pos.Y)
			end
		end
	end)
end})

PvpSection:CreateToggle({Name = "Show Fov", Callback = function(Value)
	local circle = Drawing.new("Circle")
	circle.Thickness = 2
	circle.NumSides = 12
	circle.Radius = 300
	circle.Filled = false
	circle.Color = Color3.fromRGB(255, 0, 0)

	game:GetService("RunService").RenderStepped:Connect(function()
		if Value then
			circle.Visible = true
			circle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
		else
			circle.Visible = false
		end
	end)
end})

PvpSection:CreateSlider({Name = "Fov Size", Min = 0, Max = 1000, Callback = function(Value)
	local circle = Drawing.new("Circle")
	circle.Thickness = 2
	circle.NumSides = 12
	circle.Radius = Value
	circle.Filled = false
	circle.Color = Color3.fromRGB(255, 0, 0)

	game:GetService("RunService").RenderStepped:Connect(function()
		circle.Position = Vector2.new(camera.ViewportSize.X / 2, camera.ViewportSize.Y / 2)
	end)
end})

local Stats = PvpTab:CreateSection({Name = "Stats"})
Stats:CreateButton({Name = "Reset status", Callback = function()
	local args = {
		[1] = "resetstat"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateButton({Name = "Melee", Callback = function()
	local args = {
		[1] = "strenght"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateButton({Name = "Defense", Callback = function()
	local args = {
		[1] = "defense"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateButton({Name = "Sword", Callback = function()
	local args = {
		[1] = "sword"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateButton({Name = "Gun", Callback = function()
	local args = {
		[1] = "gun"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateButton({Name = "Fruit", Callback = function()
	local args = {
		[1] = "fruit"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
Stats:CreateSlider({Name = "Use Point", Min = 1, Max = 100, Default = UsePoint, Callback = function(Value)
	UsePoint = Value
end})

--[ MiscTab ]
local MiscSection = MiscTab:CreateSection({Name = "Misc"})
MiscSection:CreateToggle({Name = "Walk On Water", Callback = function(Value)
	
end})
MiscSection:CreateToggle({Name = "Bypass Anti-Afk", Callback = function(Value)
	while Value do
		game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		Wait()
	end
end})
MiscSection:CreateButton({Name = "Bypass TP", Callback = function()
	local args = {
		[1] = "teleport"
	}

	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end})
