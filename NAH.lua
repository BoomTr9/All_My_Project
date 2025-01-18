if not game:IsLoaded() then
	local GameLoadGui = Instance.new("Message",workspace)
	GameLoadGui.Text = 'Wait Game Loading'
	game.Loaded:Wait()
	GameLfoadGui:Destroy()
	task.wait()
end

--[ Setting ]
_G.Setting = {
	["Auto_Kaitun"] = false,
	["Auto_Farm"] = false,
	["Auto_Second_World"] = false,
	["Auto_Third_World"] = false,
	["Auto_Tool_Select"] = "",
	["Auto_Equip"] = false,
	["Point_Stats"] = 1,
	["Auto_Status"] = {
		["Melee"] = false,
		["Defense"] = false,
		["Sword"] = false,
		["Gun"] = false,
		["Fruit"] = false
	},
	["Random_Fruit"] = false,
	["Select_Auto_Buy_Fruit"] = (""),
	["Auto_Buy_Fruit"] = false,
	["Auto_Get_Chest"] = false,
	["Saber"] = false,
	["Select_Auto_Farm_Boss"] = (""),
	["Auto_Farm_Boss"] = false
}

local ChooseTeam = ""
local Auto_Kaitun = false
local Auto_Farm = false
local Auto_Second_World = false
local Auto_Third_World = false

local Auto_Tool_Select = ""
local Auto_Equip = false

local Point_Stats = 1
local Auto_Status = {
	Melee = false,
	Defense = false,
	Sword = false,
	Gun = false,
	Fruit = false
}

local Random_Fruit = false

local Select_Auto_Buy_Fruit = ("")
local Auto_Buy_Fruit = false

local Auto_Get_Chest = false

local Saber = false

local Select_Auto_Farm_Boss = ("")
local Auto_Farm_Boss = false

local Walk_On_Water = false

local areaTPSelect = ""

--[ V ]
local Tween = game:GetService("TweenService")
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
local AreaON = game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value

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

local function Auto_Kill_Mob(name)
	local Mob = workspace.Enemies:FindFirstChild(name)
	if Mob and (Mob.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
		tweenwarp(Mob.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0), Mob.HumanoidRootPart.Position)
	end
end

local function Auto_Kaitun()
	
end

local function FarmLevel()
	local MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
	local Island = game:GetService("Players").LocalPlayer.Data.LastSpawnPoint.Value
	local EnemiesFol = workspace.Enemies
	local Quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
	local PlayerTeam = tostring(game:GetService("Players").LocalPlayer.Team)
	for i,v in pairs(Quest_Pos) do
		if MyLevel >= v["Level"] then
			if MyLevel < 10 then
				if PlayerTeam == "Pirates" then
					if Island ~= V["Island"] then
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
						for i,e in pairs(EnemiesFol) do
							if e.Name == Mob_Pos[v["Monster"]]["Name"] then
								if (e.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									tweenwarp(e.HumanoidRootPart.CFrame + Vector3.new(0, 5, 0), e.HumanoidRootPart.Position)
								end
							end
						end
					end
				end
			end
		end
	end
end

local function Auto_Second_World()
	local MyLevel = game.Players.LocalPlayer.Data.Level.Value
	if MyLevel >= 10 then
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

local function Equip_Tool(name)
	local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(name)
	if tool then
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end

local function UnEquip_Tool()
	game.Players.LocalPlayer.Character.Humanoid:UnequipTools()
end

local function Main()
    if Auto_Kaitun then
        Auto_Kaitun()
    end
    if Auto_Farm then
        FarmLevel()
    end
    if Auto_Second_World then
        Auto_Second_World()
    end
    if Auto_Third_World then
        Auto_Third_World()
    end
    if Auto_Equip then
        UnEquip_Tool()
    end
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

--[ GeneralTab ]
local MainSection = GeneralTab:CreateSection({Name = "Main"})
local StatusSection = GeneralTab:CreateSection({Name = "Status"})
local AutoSection = GeneralTab:CreateSection({Name = "Auto"})
local BossSection = GeneralTab:CreateSection({Name = "Boss"})

MainSection:CreateToggle({Name = "Auto Kaitun", Callback = function(Value)
	Auto_Kaitun = true
end})

MainSection:CreateToggle({Name = "Auto Farm", Callback = function(Value)
	Auto_Farm = true
end})

MainSection:CreateToggle({Name = "Auto Second World", Callback = function(Value)
	Auto_Second_World = true
end})

MainSection:CreateToggle({Name = "Auto Third World", Callback = function(Value)
	Auto_Third_World = true
end})

MainSection:CreateDropdown({Name = "Select Auto Tool", List = {"Sword", "Gun", "Fruit"}, Callback = function(Value)
	Auto_Tool_Select = Value
end})

MainSection:CreateToggle({Name = "Auto Equip", Callback = function(Value)
	Auto_Equip = Value
end})

StatusSection:CreateSlider({Name = "Point Stats", Min = 1, Max = 5, Callback = function(Value)
	Point_Stats = Value
end})

AutoSection:CreateToggle({Name = "Auto Pole", Callback = function(Value)
	Auto_Pole = Value
end})

AutoSection:CreateToggle({Name = "Auto Pole Hop", Callback = function(Value)
	Auto_Status["Melee"] = Value
end})

AutoSection:CreateToggle({Name = "Auto Ancientone Quest", Callback = function(Value)
	Auto_Ancientone_Quest = Value
end})

--[ FarmTab ]
local FarmSection = FarmTab:CreateSection({Name = "Farm"})
FarmSection:CreateToggle({Name = "Auto Farm", Callback = function(Value)
	_G.Setting["Auto_Farm"] = Value
end})
FarmSection:CreateToggle({Name = "Auto Second World", Callback = function(Value)
	_G.Setting["Auto_Second_World"] = Value
end})
FarmSection:CreateToggle({Name = "Auto Third World", Callback = function(Value)
	_G.Setting["Auto_Third_World"] = Value
end})
FarmSection:CreateToggle({Name = "Auto Farm Boss", Callback = function(Value)
	_G.Setting["Auto_Farm_Boss"] = Value
end})
FarmSection:CreateDropdown({Name = "Select Auto Farm Boss", List = {"First-pirate", "First-marine", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth", "Eleventh", "Twelveth", "Thirteenth", "Fourteenth", "Fifteenth", "Sixteenth", "Seventeenth", "Eighteenth", "Nineteenth"}, Callback = function(Value)
	_G.Setting["Select_Auto_Farm_Boss"] = Value
end})

--[ TpTab ]
local TpSection = TpTab:CreateSection({Name = "Teleport"})
TpSection:CreateDropdown({Name = "Select Auto Farm Boss", List = {"First-pirate", "First-marine", "Second", "Third", "Fourth", "Fifth", "Sixth", "Seventh", "Eighth", "Ninth", "Tenth", "Eleventh", "Twelveth", "Thirteenth", "Fourteenth", "Fifteenth", "Sixteenth", "Seventeenth", "Eighteenth", "Nineteenth"}, Callback = function(Value)
	areaTPSelect = Value
end})
TpSection:CreateButton({Name = "Teleport", Callback = function()
	if areaTPSelect ~= "" then
		tweenwarp(Quest_Pos[areaTPSelect]["Position"], Quest_Pos[areaTPSelect]["Vector3"])
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

Stats:CreateTextbox({Name = "Point Stats", Value = 1, Callback = function(Value)
	Point_Stats = Value
end})



--[ Load Function ]
while Wait() do
	Main()
end
