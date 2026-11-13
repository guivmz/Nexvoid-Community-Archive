
return function(p1)
	local Page = p1.Page

	if Page then
		Page = p1.Library
	end

	local Page2 = p1.Page
	local Players = p1.Players
	local LocalPlayer = p1.LocalPlayer
	local Workspace = p1.Workspace
	local TweenService = p1.TweenService
	local Theme = p1.Theme
	local UserConfigs = p1.UserConfigs
	local GetParentTarget = p1.GetParentTarget
	local UserInputService = p1.UserInputService or game:GetService("UserInputService")
	local SoundService = game:GetService("SoundService")
	local ReplicatedStorage = game:GetService("ReplicatedStorage")
	local instanceNew = Instance.new
	local color3 = Color3.fromRGB
	local uDim2New = UDim2.new

	GetParentTarget = TweenInfo.new

	local wait = task.wait
	local lower = string.lower
	local clamp = math.clamp
	local floor = math.floor
	local round = math.round
	local pairs_ = pairs

	round = ipairs

	local typeof_ = typeof
	local setmetatable_ = setmetatable
	local pcall_ = pcall
	local insert = table.insert
	local clear = table.clear
	local find = string.find
	local match = string.match
	local v29 = GetParentTarget(0.15)
	local v30 = GetParentTarget(0.2)
	local v31 = GetParentTarget(0.3)
	local t1 = {
		MuteSteps = false,
		MuteJumps = false,
		MuteHack = false
	}
	local t2 = {
		Running = 0,
		Jumping = 0,
		Landing = 0
	}
	local obj = setmetatable_({}, {
		__mode = "k"
	})
	local Vol_Enabled = UserConfigs.Vol_Enabled

	if Vol_Enabled == nil then
		Vol_Enabled = false
	end

	local Vol_FootstepsMultiplier = UserConfigs.Vol_FootstepsMultiplier or 10
	local Vol_JumpMultiplier = UserConfigs.Vol_JumpMultiplier or 10
	local Vol_FallMultiplier = UserConfigs.Vol_FallMultiplier or 10
	local Dist_Enabled = UserConfigs.Dist_Enabled

	if Dist_Enabled == nil then
		Dist_Enabled = false
	end

	local Dist_FootstepsMultiplier = UserConfigs.Dist_FootstepsMultiplier or 10
	local Dist_JumpMultiplier = UserConfigs.Dist_JumpMultiplier or 10
	local Dist_FallMultiplier = UserConfigs.Dist_FallMultiplier or 10
	local t3 = {}
	local Sound = instanceNew("Sound")

	Sound.Name = "NexVoid_CustomMusic"
	Sound.Looped = true
	Sound.Volume = 0.5
	Sound.Parent = SoundService

	local t4 = {
		{
			Name = "six seven",
			ID = "139780631670217"
		},
		{
			Name = "low cortisol",
			ID = "110919391228823"
		},
		{
			Name = "His Love",
			ID = "140684861805080"
		},
		{
			Name = "7 years of trying",
			ID = "90964788762820"
		},
		{
			Name = "7 years",
			ID = "115598617339786"
		},
		{
			Name = "Never Alone",
			ID = "86404842974521"
		},
		{
			Name = "ballerina cappucina",
			ID = "140675348569592"
		},
		{
			Name = "its you",
			ID = "139010646759693"
		},
		{
			Name = "na na na",
			ID = "94884255368589"
		},
		{
			Name = "King Nasir Phonk",
			ID = "76650356472656"
		},
		{
			Name = "Metamorphosis",
			ID = "15689451063"
		},
		{
			Name = "Sin Teen",
			ID = "121242950842428"
		}
	}
	local t5 = {
		"Hammer",
		"Gemstone Hammer",
		"Iron Hammer",
		"Mallet"
	}
	local t6 = {
		action = true,
		warning = true,
		heartbeat = true,
		terror = true
	}
	local u48 = false
	local t7 = {}
	local obj2 = setmetatable_({}, {
		__mode = "k"
	})
	local obj3 = setmetatable_({}, {
		__mode = "k"
	})

	local function v52(p2, p3, p4, p5)
		local UIGradient = p2:FindFirstChildOfClass("UIGradient") or instanceNew("UIGradient")

		UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, p3), ColorSequenceKeypoint.new(1, p4) })
		UIGradient.Rotation = p5 or 45
		UIGradient.Parent = p2

		return UIGradient
	end

	local v54 = nil

	local function v55(p6)
		task.spawn(function()
			local HumanoidRootPart = p6:WaitForChild("HumanoidRootPart", 10)

			if not HumanoidRootPart then
				return
			end

			wait(0.5)

			local v57, v58, v59, v60, Sound2

			if obj[p6] then
				for k, v in pairs_(t2) do
					v57 = HumanoidRootPart:FindFirstChild(k)

					if v == 0 or v == "0" then
						v58 = v57 and obj[p6]

						if v58 then
							v58 = obj[p6][k]
						end

						if v58 then
							v57.SoundId = obj[p6][k]
						end
					else
						v59 = v54(v)

						if v59 then
							if v57 then
								v60 = v57.ClassName == "Sound"
							else
								v60 = v57
							end

							if v60 then
								v57.SoundId = v59
							else
								Sound2 = instanceNew("Sound")
								Sound2.Name = k
								Sound2.Parent = HumanoidRootPart
								Sound2.SoundId = v59
							end
						end
					end
				end

				return
			end

			obj[p6] = {}

			for k, _ in pairs_(t2) do
				local v66 = HumanoidRootPart:FindFirstChild(k)
				local v67

				if v66 then
					v67 = v66.ClassName == "Sound"
				else
					v67 = v66
				end

				if v67 then
					obj[p6][k] = v66.SoundId
				end
			end

			for k, v in pairs_(t2) do
				v57 = HumanoidRootPart:FindFirstChild(k)

				if v == 0 or v == "0" then
					v58 = v57 and obj[p6]

					if v58 then
						v58 = obj[p6][k]
					end

					if v58 then
						v57.SoundId = obj[p6][k]
					end
				else
					v59 = v54(v)

					if v59 then
						if v57 then
							v60 = v57.ClassName == "Sound"
						else
							v60 = v57
						end

						if v60 then
							v57.SoundId = v59
						else
							Sound2 = instanceNew("Sound")
							Sound2.Name = k
							Sound2.Parent = HumanoidRootPart
							Sound2.SoundId = v59
						end
					end
				end
			end
		end)
	end

	v54 = function(p7)
		local v70

		if type(p7) == "number" then
			v70 = p7 > 0
		else
			v70 = false
		end

		if v70 then
			return "rbxassetid://" .. p7
		else
			local v71

			if type(p7) == "string" and p7 ~= "" then
				v71 = p7 ~= "0"
			else
				v71 = false
			end

			if v71 then
				if find(p7, "rbxassetid://", 1, true) then
					return p7
				else
					return "rbxassetid://" .. p7
				end
			else
				return nil
			end
		end
	end
	round = Players:GetPlayers()

	local function parent(player)
		if player.Character then
			v55(player.Character)
		end

		local function v73(character)
			v55(character)
		end

		player.CharacterAdded:Connect(v73)
	end
	local function v74()
		local players = Players:GetPlayers()

		for i = 1, #players do
			local v77 = players[i]

			if v77.Character then
				v55(v77.Character)
			end
		end
	end

	for i = 1, #round do
		parent(round[i])
	end

	Players.PlayerAdded:Connect(parent)

	local function v79(character)
		local HumanoidRootPart = character:WaitForChild("HumanoidRootPart", 10)

		if not HumanoidRootPart then
			return
		end

		local function v81(p8, p9)
			if not p8 then
				return
			end

			local volume = p9 == "Running" and 0.65 or 0.5

			if character == LocalPlayer.Character then
				local MuteSteps

				if p9 == "Running" then
					MuteSteps = t1.MuteSteps
				else
					MuteSteps = false
				end

				local v84 = MuteSteps and 0 or volume
				local v85

				if p9 == "Jumping" then
					v85 = true
				elseif p9 == "Landing" then
					v85 = t1.MuteJumps
				else
					v85 = false
				end

				volume = v85 and 0 or v84
			end

			p8.Volume = volume
			p8:GetPropertyChangedSignal("Volume"):Connect(function()
				if character ~= LocalPlayer.Character then
					return
				end

				local MuteSteps

				if p9 == "Running" then
					MuteSteps = t1.MuteSteps
				else
					MuteSteps = false
				end

				if MuteSteps then
					p8.Volume = 0

					return
				end

				local v87

				if p9 == "Jumping" then
					v87 = true
				elseif p9 == "Landing" then
					v87 = t1.MuteJumps
				else
					v87 = false
				end

				if not v87 then
					return
				end

				p8.Volume = 0
			end)
		end

		task.spawn(function()
			local Running = HumanoidRootPart:WaitForChild("Running", 5)

			if Running then
				v81(Running, "Running")
			end

			local Jumping = HumanoidRootPart:WaitForChild("Jumping", 5)

			if Jumping then
				v81(Jumping, "Jumping")
			end

			local Landing = HumanoidRootPart:WaitForChild("Landing", 5)

			if not Landing then
				return
			end

			v81(Landing, "Landing")
		end)
	end

	Players.PlayerAdded:Connect(function(player)
		player.CharacterAdded:Connect(v79)
	end)
	parent = Players:GetPlayers()

	for i = 1, #parent do
		GetParentTarget = parent[i]

		if GetParentTarget.Character then
			v79(GetParentTarget.Character)
		end

		GetParentTarget.CharacterAdded:Connect(v79)
	end

	local t8 = {}
	local connection = nil
	local t9 = {
		"keyboard",
		"typing",
		"type",
		"hack",
		"key"
	}

	local function v95(p10)
		local v96 = lower(p10.Name)

		for i = 1, #t9 do
			if find(v96, t9[i], 1, true) then
				return true
			end
		end

		return false
	end
	local function v98(p11)
		p11.Volume = 0
		insert(t8, {
			Signal = p11:GetPropertyChangedSignal("Volume"):Connect(function()
				p11.Volume = 0
			end),
			Object = p11
		})
	end
	local function v99(p12)
		local Parent = p12.Parent

		while Parent do
			if Parent.Name == "ComputerTable" then
				return true
			end

			Parent = Parent.Parent
		end

		return false
	end

	local u101 = false
	local t10 = {}
	local t11 = {
		"hit",
		"smack",
		"damage",
		"crack",
		"bone",
		"bash",
		"punch",
		"impact"
	}
	local v104 = nil

	local function v105(p13)
		local v106

		if p13.ClassName == "Sound" then
			v106 = v104(p13.Name)
		else
			v106 = false
		end

		if not v106 then
			return
		end

		p13.Volume = 0
		insert(t10, {
			Signal = p13:GetPropertyChangedSignal("Volume"):Connect(function()
				if not (p13.Volume > 0) then
					return
				end

				p13.Volume = 0
			end),
			Object = p13
		})
	end

	v104 = function(p14)
		local v107 = lower(p14)

		for i = 1, #t11 do
			if match(v107, t11[i]) then
				return true
			end
		end

		return false
	end

	local connection2 = nil
	local obj4 = setmetatable_({}, {
		__mode = "k"
	})
	local obj5 = setmetatable_({}, {
		__mode = "k"
	})
	local obj6 = setmetatable_({}, {
		__mode = "k"
	})
	local obj7 = setmetatable_({}, {
		__mode = "k"
	})
	local t12 = {
		Footsteps = 0.65,
		Jump = 0.5,
		Fall = 0.5
	}
	local t13 = {
		Footsteps = 60,
		Jump = 80,
		Fall = 80
	}
	local u116 = nil

	local function v117(p15)
		local v118 = lower(p15.Name)

		return (find(v118, "running", 1, true) or (find(v118, "walk", 1, true) or find(v118, "step", 1, true))) and "Footsteps" or ((find(v118, "jumping", 1, true) or find(v118, "jump", 1, true)) and "Jump" or ((find(v118, "landing", 1, true) or (find(v118, "fall", 1, true) or find(v118, "land", 1, true))) and "Fall" or nil))
	end
	local function v119(p16)
		if u116 then
			return
		end

		local v120 = obj5[p16]

		if not v120 then
			return
		end

		local v121 = obj6[p16] or (t12[v120] or 0.5)
		local v122 = obj7[p16] or (t13[v120] or 100)
		local n1 = 1

		if Vol_Enabled then
			if v120 == "Footsteps" then
				n1 = Vol_FootstepsMultiplier / 10
			elseif v120 == "Jump" then
				n1 = Vol_JumpMultiplier / 10
			elseif v120 == "Fall" then
				n1 = Vol_FallMultiplier / 10
			end
		end

		local n2 = 1

		if Dist_Enabled then
			if v120 == "Footsteps" then
				n2 = Dist_FootstepsMultiplier / 10
			elseif v120 == "Jump" then
				n2 = Dist_JumpMultiplier / 10
			elseif v120 == "Fall" then
				n2 = Dist_FallMultiplier / 10
			end
		end

		local Character = LocalPlayer.Character

		if Character then
			Character = p16:IsDescendantOf(Character)
		end

		if Character then
			local MuteSteps

			if v120 == "Footsteps" then
				MuteSteps = t1.MuteSteps
			else
				MuteSteps = false
			end

			local v127 = MuteSteps and 0 or n1
			local v128

			if v120 == "Jump" then
				v128 = true
			elseif v120 == "Fall" then
				v128 = t1.MuteJumps
			else
				v128 = false
			end

			n1 = v128 and 0 or v127
		end

		local volume = v121 * n1
		local rollOffMaxDistance = v122 * n2

		pcall_(function()
			if p16.Volume ~= volume then
				p16.Volume = volume
			end

			if p16.RollOffMaxDistance == rollOffMaxDistance then
				return
			end

			p16.RollOffMaxDistance = rollOffMaxDistance
		end)
		u116 = false
	end

	u116 = false
	parent = Workspace:GetDescendants()

	local function v131(p17)
		if p17.ClassName ~= "Sound" then
			return
		end

		obj4[p17] = true

		if not obj6[p17] then
			obj6[p17] = p17.Volume
		end

		if not obj7[p17] then
			obj7[p17] = p17.RollOffMaxDistance
		end

		local v132 = v117(p17)

		if not v132 then
			return
		end

		obj5[p17] = v132
		v119(p17)
		p17:GetPropertyChangedSignal("Volume"):Connect(function()
			v119(p17)
		end)
		p17:GetPropertyChangedSignal("RollOffMaxDistance"):Connect(function()
			v119(p17)
		end)
	end

	for i = 1, #parent do
		GetParentTarget = parent[i]

		if GetParentTarget.ClassName == "Sound" then
			v131(GetParentTarget)
		end
	end

	Workspace.DescendantAdded:Connect(function(descendant)
		if descendant.ClassName ~= "Sound" then
			return
		end

		v131(descendant)
	end)

	local function v134(p18, p19)
		p18.Volume = p19
	end
	local function v135(p20)
		local Team = p20.Team

		if Team then
			Team = p20.Team.Name == "Beast"
		end

		if Team then
			return true
		end

		local Character = p20.Character

		if Character then
			for i = 1, #t5 do
				if Character:FindFirstChild(t5[i]) then
					return true
				end
			end
		end

		local Backpack = p20:FindFirstChild("Backpack")

		if not Backpack then
			return false
		end

		for i = 1, #t5 do
			if Backpack:FindFirstChild(t5[i]) then
				return true
			end
		end

		return false
	end

	local v141 = nil

	local function v142(p21)
		if not u48 then
			return
		end

		if not (p21.ClassName == "Sound" and t6[lower(p21.Name)]) then
			return
		end

		v141(p21)
	end

	v141 = function(p22)
		if not u48 then
			return
		end

		if not (p22.ClassName == "Sound" and not obj2[p22]) then
			return
		end

		obj3[p22] = p22.Volume
		p22.Volume = 0
		obj2[p22] = p22:GetPropertyChangedSignal("Volume"):Connect(function()
			local v143 = u48

			if v143 then
				v143 = p22.Volume > 0
			end

			if not v143 then
				return
			end

			p22.Volume = 0
		end)
	end

	local function v144(descendant)
		if descendant.ClassName ~= "Sound" then
			return
		end

		v141(descendant)
	end

	parent = function(p23)
		if p23.ClassName ~= "Sound" then
			return
		end

		v142(p23)
	end

	local function v145(p24)
		if p24 and u48 then
			local descendants = p24:GetDescendants()

			for i = 1, #descendants do
				local v148 = descendants[i]

				if v148.ClassName == "Sound" then
					v141(v148)
				end
			end

			insert(t7, (p24.DescendantAdded:Connect(v144)))
		end
	end
	local function v149(p25)
		local CurrentMap = ReplicatedStorage:FindFirstChild("CurrentMap")

		if CurrentMap then
			CurrentMap = ReplicatedStorage.CurrentMap.Value
		end

		if not CurrentMap then
			return
		end

		if p25 then
			for _, child in pairs_(CurrentMap.GetChildren(CurrentMap)) do
				local Screen = child.Name == "ComputerTable" and child:FindFirstChild("Screen")

				if Screen then
					Screen = child.Screen:FindFirstChild("ErrorSound")
				end

				if Screen then
					child.Screen.ErrorSound:Play()
				end
			end

			return
		end

		local ComputerTable = CurrentMap:FindFirstChild("ComputerTable")
		local Screen = ComputerTable and ComputerTable:FindFirstChild("Screen")

		if Screen then
			Screen = ComputerTable.Screen:FindFirstChild("ErrorSound")
		end

		if not Screen then
			return
		end

		ComputerTable.Screen.ErrorSound:Play()
	end

	local v156 = nil

	local function v157(p26)
		u48 = p26

		if not p26 then
			for i = 1, #t7 do
				local v159 = t7[i]

				if typeof_(v159) == "RBXScriptConnection" then
					v159:Disconnect()
				elseif typeof_(v159) == "thread" then
					task.cancel(v159)
				end
			end

			clear(t7)

			local v160, v161, v162 = pairs_(obj2)

			while true do
				local v163

				v162, v163 = v160(v161, v162)

				if not v162 then
					break
				end

				if v163 then
					v163:Disconnect()
				end
			end

			clear(obj2)

			for k, v in pairs_(obj3) do
				local Parent

				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					pcall_(v134, k, v)
				end
			end

			clear(obj3)

			return
		end

		local descendants = Workspace:GetDescendants()

		for i = 1, #descendants do
			v156(descendants[i])
		end

		local descendants2 = SoundService:GetDescendants()

		for i = 1, #descendants2 do
			v156(descendants2[i])
		end

		local connection3 = Workspace.DescendantAdded:Connect(v156)
		local connection4 = SoundService.DescendantAdded:Connect(v156)

		insert(t7, connection3)
		insert(t7, connection4)
		insert(t7, (task.spawn(function()
			local obj8 = setmetatable_({}, {
				__mode = "k"
			})

			while u48 do
				local players = Players:GetPlayers()

				for i = 1, #players do
					local v176 = players[i]
					local Character = v176.Character

					if Character then
						Character = v135(v176)
					end

					if Character and not obj8[v176] then
						obj8[v176] = true
						task.spawn(v145, v176.Character)

						local function v178(character)
							task.spawn(v145, character)
						end

						insert(t7, (v176.CharacterAdded:Connect(v178)))
					end
				end

				wait(1)
			end
		end)))
	end

	v156 = parent
	parent = instanceNew("Frame")
	parent.Size = uDim2New(1, -2, 0, 0)
	parent.AutomaticSize = Enum.AutomaticSize.Y
	parent.BackgroundTransparency = 1
	parent.ZIndex = 10
	parent.Parent = Page2

	local UIListLayout = instanceNew("UIListLayout", parent)

	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.Padding = UDim.new(0, 12)
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout = instanceNew("Frame")
	UIListLayout.Size = uDim2New(1, -2, 0, 0)
	UIListLayout.AutomaticSize = Enum.AutomaticSize.Y
	UIListLayout.BackgroundTransparency = 1
	UIListLayout.ZIndex = 10
	UIListLayout.Parent = Page2

	local UIListLayout2 = instanceNew("UIListLayout", UIListLayout)

	UIListLayout2.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout2.Padding = UDim.new(0, 12)
	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2 = instanceNew("Frame")
	UIListLayout2.Size = uDim2New(0.5, -6, 0, 0)
	UIListLayout2.AutomaticSize = Enum.AutomaticSize.Y
	UIListLayout2.BackgroundColor3 = Color3.new(0, 0, 0)
	UIListLayout2.BackgroundTransparency = 0.45
	UIListLayout2.BorderSizePixel = 0
	UIListLayout2.LayoutOrder = 1
	UIListLayout2.ZIndex = 11
	UIListLayout2.Parent = parent
	instanceNew("UICorner", UIListLayout2).CornerRadius = UDim.new(0, 6)
	round = instanceNew("UIStroke", UIListLayout2)
	round.Color = color3(40, 40, 40)
	round.Thickness = 1
	round = instanceNew("UIListLayout", UIListLayout2)
	round.SortOrder = Enum.SortOrder.LayoutOrder
	round.Padding = UDim.new(0, 4)
	round = instanceNew("UIPadding", UIListLayout2)
	round.PaddingTop = UDim.new(0, 8)
	round.PaddingBottom = UDim.new(0, 8)
	round.PaddingLeft = UDim.new(0, 10)
	round.PaddingRight = UDim.new(0, 10)
	round = instanceNew("Frame")
	round.Size = uDim2New(0.5, -6, 0, 0)
	round.AutomaticSize = Enum.AutomaticSize.Y
	round.BackgroundColor3 = Color3.new(0, 0, 0)
	round.BackgroundTransparency = 0.45
	round.BorderSizePixel = 0
	round.LayoutOrder = 2
	round.ZIndex = 11
	round.Parent = parent
	instanceNew("UICorner", round).CornerRadius = UDim.new(0, 6)
	parent = instanceNew("UIStroke", round)
	parent.Color = color3(40, 40, 40)
	parent.Thickness = 1
	parent = instanceNew("UIListLayout", round)
	parent.SortOrder = Enum.SortOrder.LayoutOrder
	parent.Padding = UDim.new(0, 4)
	parent = instanceNew("UIPadding", round)
	parent.PaddingTop = UDim.new(0, 8)
	parent.PaddingBottom = UDim.new(0, 8)
	parent.PaddingLeft = UDim.new(0, 10)
	parent.PaddingRight = UDim.new(0, 10)
	parent = instanceNew("Frame")
	parent.Size = uDim2New(0.5, -6, 0, 0)
	parent.AutomaticSize = Enum.AutomaticSize.Y
	parent.BackgroundColor3 = Color3.new(0, 0, 0)
	parent.BackgroundTransparency = 0.45
	parent.BorderSizePixel = 0
	parent.LayoutOrder = 1
	parent.ZIndex = 11
	parent.Parent = UIListLayout
	instanceNew("UICorner", parent).CornerRadius = UDim.new(0, 6)
	GetParentTarget = instanceNew("UIStroke", parent)
	GetParentTarget.Color = color3(40, 40, 40)
	GetParentTarget.Thickness = 1
	GetParentTarget = instanceNew("UIListLayout", parent)
	GetParentTarget.SortOrder = Enum.SortOrder.LayoutOrder
	GetParentTarget.Padding = UDim.new(0, 4)
	GetParentTarget = instanceNew("UIPadding", parent)
	GetParentTarget.PaddingTop = UDim.new(0, 8)
	GetParentTarget.PaddingBottom = UDim.new(0, 8)
	GetParentTarget.PaddingLeft = UDim.new(0, 10)
	GetParentTarget.PaddingRight = UDim.new(0, 10)
	GetParentTarget = instanceNew("Frame")
	GetParentTarget.Size = uDim2New(0.5, -6, 0, 0)
	GetParentTarget.AutomaticSize = Enum.AutomaticSize.Y
	GetParentTarget.BackgroundColor3 = Color3.new(0, 0, 0)
	GetParentTarget.BackgroundTransparency = 0.45
	GetParentTarget.BorderSizePixel = 0
	GetParentTarget.LayoutOrder = 2
	GetParentTarget.ZIndex = 11
	GetParentTarget.Parent = UIListLayout
	instanceNew("UICorner", GetParentTarget).CornerRadius = UDim.new(0, 6)
	UIListLayout = instanceNew("UIStroke", GetParentTarget)
	UIListLayout.Color = color3(40, 40, 40)
	UIListLayout.Thickness = 1
	UIListLayout = instanceNew("UIListLayout", GetParentTarget)
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)
	UIListLayout = instanceNew("UIPadding", GetParentTarget)
	UIListLayout.PaddingTop = UDim.new(0, 8)
	UIListLayout.PaddingBottom = UDim.new(0, 8)
	UIListLayout.PaddingLeft = UDim.new(0, 10)
	UIListLayout.PaddingRight = UDim.new(0, 10)
	UIListLayout = function(p27, p28, p29, p30)
		local TextButton = instanceNew("TextButton")

		TextButton.Size = uDim2New(1, 0, 0, 30)
		TextButton.BackgroundTransparency = 1
		TextButton.Text = ""
		TextButton.ZIndex = p27.ZIndex + 1
		TextButton.Parent = p27

		local TextLabel = instanceNew("TextLabel")

		TextLabel.Size = uDim2New(1, -40, 1, 0)
		TextLabel.Position = uDim2New(0, 5, 0, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = p28
		TextLabel.Font = Theme.Font
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextScaled = true

		local UITextSizeConstraint = instanceNew("UITextSizeConstraint", TextLabel)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel.TextColor3 = Theme.TextDark
		TextLabel.ZIndex = TextButton.ZIndex + 1
		TextLabel.Parent = TextButton

		local Frame = instanceNew("Frame")

		Frame.Size = uDim2New(0, 30, 0, 14)
		Frame.Position = uDim2New(1, -30, 0.5, -7)
		Frame.BackgroundColor3 = Theme.SwitchOff
		Frame.ZIndex = TextButton.ZIndex + 1
		Frame.Parent = TextButton
		instanceNew("UICorner", Frame).CornerRadius = UDim.new(1, 0)

		local v185 = v52(Frame, Theme.SwitchOff, Theme.SwitchOff, 90)
		local Frame2 = instanceNew("Frame")

		Frame2.Size = uDim2New(0, 12, 0, 12)
		Frame2.Position = uDim2New(0, 1, 0.5, -6)
		Frame2.BackgroundColor3 = color3(150, 150, 150)
		Frame2.ZIndex = TextButton.ZIndex + 2
		Frame2.Parent = Frame
		instanceNew("UICorner", Frame2).CornerRadius = UDim.new(1, 0)

		local u187 = p29

		local function v188()
			local uDim2 = uDim2New(1, -13, 0.5, -6)
			local uDim22 = uDim2New(0, 1, 0.5, -6)

			if u187 then
				local v191 = TweenService
				local v192 = Frame
				local v193 = v30
				local v194 = Theme

				v191.Create(v191, v192, v193, {
					BackgroundColor3 = v194.Accent
				}):Play()
				v185.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Theme.Accent), ColorSequenceKeypoint.new(1, Theme.AccentDark) })

				local v195 = TweenService
				local v196 = Frame2
				local v197 = v30

				v195.Create(v195, v196, v197, {
					Position = uDim2,
					BackgroundColor3 = Color3.new(0, 0, 0)
				}):Play()

				local v198 = TweenService
				local v199 = TextLabel
				local v200 = v30
				local v201 = Theme

				v198.Create(v198, v199, v200, {
					TextColor3 = v201.Text
				}):Play()
			else
				local v202 = TweenService
				local v203 = Frame
				local v204 = v30

				v202.Create(v202, v203, v204, {
					BackgroundColor3 = Theme.SwitchOff
				}):Play()
				v185.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Theme.SwitchOff), ColorSequenceKeypoint.new(1, Theme.SwitchOff) })

				local v205 = TweenService
				local v206 = Frame2
				local v207 = v30

				v205.Create(v205, v206, v207, {
					Position = uDim22,
					BackgroundColor3 = color3(150, 150, 150)
				}):Play()

				local v208 = TweenService
				local v209 = TextLabel
				local v210 = v30
				local v211 = Theme

				v208.Create(v208, v209, v210, {
					TextColor3 = v211.TextDark
				}):Play()
			end
		end
		local function v212()
			u187 = not u187
			v188()
			p30(u187)
		end

		TextButton.MouseButton1Click:Connect(v212)
		v188()

		return {
			Set = function(p31)
				u187 = p31
				v188()
				p30(p31)
			end
		}
	end

	local function v213(p32, p33, p34, p35, p36, p37, p38)
		local Frame = instanceNew("Frame")

		Frame.Size = uDim2New(1, 0, 0, 35)
		Frame.BackgroundTransparency = 1
		Frame.ZIndex = p32.ZIndex + 1
		Frame.Parent = p32

		local TextLabel = instanceNew("TextLabel")

		TextLabel.Size = uDim2New(1, -45, 0, 20)
		TextLabel.Position = uDim2New(0, 5, 0, 2)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = p33
		TextLabel.Font = Theme.Font
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextScaled = true

		local UITextSizeConstraint = instanceNew("UITextSizeConstraint", TextLabel)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel.TextColor3 = Theme.TextDark
		TextLabel.ZIndex = Frame.ZIndex + 1
		TextLabel.Parent = Frame

		local TextLabel2 = instanceNew("TextLabel")

		TextLabel2.Size = uDim2New(0, 40, 0, 20)
		TextLabel2.Position = uDim2New(1, -5, 0, 2)
		TextLabel2.AnchorPoint = Vector2.new(1, 0)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Text = tostring(p36) .. (p37 or "")
		TextLabel2.Font = Theme.Font
		TextLabel2.TextSize = 11
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Right
		TextLabel2.TextColor3 = Theme.Text
		TextLabel2.ZIndex = Frame.ZIndex + 1
		TextLabel2.Parent = Frame

		local Frame2 = instanceNew("Frame")

		Frame2.Size = uDim2New(1, -10, 0, 8)
		Frame2.Position = uDim2New(0, 5, 0, 25)
		Frame2.BackgroundColor3 = Theme.SwitchOff
		Frame2.BorderSizePixel = 0
		Frame2.ZIndex = Frame.ZIndex + 1
		Frame2.Parent = Frame
		instanceNew("UICorner", Frame2).CornerRadius = UDim.new(1, 0)

		local Frame3 = instanceNew("Frame")

		Frame3.Size = uDim2New((p36 - p34) / (p35 - p34), 0, 1, 0)
		Frame3.BackgroundColor3 = Theme.Accent
		Frame3.BorderSizePixel = 0
		Frame3.ZIndex = Frame.ZIndex + 2
		Frame3.Parent = Frame2
		instanceNew("UICorner", Frame3).CornerRadius = UDim.new(1, 0)
		v52(Frame3, Theme.Accent, Theme.AccentDark, 0)

		local TextButton = instanceNew("TextButton")

		TextButton.Size = uDim2New(1, 0, 1, 0)
		TextButton.BackgroundTransparency = 1
		TextButton.Text = ""
		TextButton.Parent = Frame2

		local u221 = p36
		local u222 = false

		local function v223(p39)
			local uDim2 = uDim2New(clamp((p39.Position.X - Frame2.AbsolutePosition.X) / Frame2.AbsoluteSize.X, 0, 1), 0, 1, 0)

			Frame3.Size = uDim2

			local v225 = floor(p34 + (p35 - p34) * uDim2.X.Scale)

			TextLabel2.Text = tostring(v225) .. (p37 or "")
			u221 = v225
			p38(v225)
		end

		TextButton.InputBegan:Connect(function(input)
			if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
				return
			end

			u222 = true
			v223(input)
		end)
		UserInputService.InputEnded:Connect(function(input)
			if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
				return
			end

			u222 = false
		end)
		UserInputService.InputChanged:Connect(function(input)
			if not (u222 and input.UserInputType == Enum.UserInputType.MouseMovement and true or input.UserInputType == Enum.UserInputType.Touch) then
				return
			end

			v223(input)
		end)

		return {
			Set = function(p40)
				u221 = clamp(p40, p34, p35)

				local v226 = (u221 - p34) / (p35 - p34)
				local v227 = TweenService
				local v228 = Frame3
				local v229 = v30

				v227.Create(v227, v228, v229, {
					Size = uDim2New(v226, 0, 1, 0)
				}):Play()

				local v230 = u221

				TextLabel2.Text = tostring(v230) .. (p37 or "")
				p38(u221)
			end
		}
	end
	local function landing(p41, p42, p43)
		local TextButton = instanceNew("TextButton")

		TextButton.Size = uDim2New(1, 0, 0, 30)
		TextButton.BackgroundTransparency = 1
		TextButton.Text = ""
		TextButton.Parent = p41

		local TextLabel = instanceNew("TextLabel")

		TextLabel.Size = uDim2New(1, -10, 1, 0)
		TextLabel.Position = uDim2New(0, 5, 0, 0)
		TextLabel.BackgroundTransparency = 1
		TextLabel.Text = p42
		TextLabel:SetAttribute("OriginalText", p42)
		TextLabel.Font = Theme.Font
		TextLabel.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel.TextScaled = true

		local UITextSizeConstraint = instanceNew("UITextSizeConstraint", TextLabel)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel.TextColor3 = Theme.TextDark
		TextLabel.Parent = TextButton

		local function v235()
			local v236 = TweenService
			local v237 = TextLabel
			local v238 = v29

			v236.Create(v236, v237, v238, {
				TextColor3 = Theme.Accent
			}):Play()
		end

		TextButton.MouseEnter:Connect(v235)
		TextButton.MouseLeave:Connect(function()
			TweenService:Create(TextLabel, v29, {
				TextColor3 = Theme.TextDark
			}):Play()
		end)
		TextButton.MouseButton1Click:Connect(p43)

		return TextButton
	end

	local Frame = instanceNew("Frame")

	Frame.Name = "HeaderContainer"
	Frame.Size = uDim2New(1, 0, 0, 20)
	Frame.BackgroundTransparency = 1
	Frame.ZIndex = UIListLayout2.ZIndex + 1
	Frame.Parent = UIListLayout2

	local TextLabel = instanceNew("TextLabel")

	TextLabel.Size = uDim2New(1, 0, 1, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = "Volume Settings"
	TextLabel.Font = Theme.Font
	TextLabel.TextColor3 = color3(255, 255, 255)
	TextLabel.TextSize = 12
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.Parent = Frame
	UIListLayout(UIListLayout2, "Enable Volume Modifier", Vol_Enabled, function(p44)
		Vol_Enabled = p44
		UserConfigs.Vol_Enabled = p44

		for k in pairs_(obj4) do
			v119(k)
		end
	end)

	local footStepsVolume = v213(UIListLayout2, "FootSteps Volume", 0, 100, Vol_FootstepsMultiplier, "", function(p45)
		Vol_FootstepsMultiplier = p45
		UserConfigs.Vol_FootstepsMultiplier = p45

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	local jumpVolume = v213(UIListLayout2, "Jump Volume", 0, 100, Vol_JumpMultiplier, "", function(p46)
		Vol_JumpMultiplier = p46
		UserConfigs.Vol_JumpMultiplier = p46

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	local fallVolume = v213(UIListLayout2, "Fall Volume", 0, 100, Vol_FallMultiplier, "", function(p47)
		Vol_FallMultiplier = p47
		UserConfigs.Vol_FallMultiplier = p47

		for k in pairs_(obj4) do
			v119(k)
		end
	end)

	landing(UIListLayout2, "Reset Volumes", function()
		footStepsVolume.Set(10)
		jumpVolume.Set(10)
		fallVolume.Set(10)
	end)
	TextLabel = instanceNew("Frame")
	TextLabel.Name = "HeaderContainer"
	TextLabel.Size = uDim2New(1, 0, 0, 20)
	TextLabel.BackgroundTransparency = 1
	TextLabel.ZIndex = round.ZIndex + 1
	TextLabel.Parent = round
	Frame = instanceNew("TextLabel")
	Frame.Size = uDim2New(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	Frame.Text = "Distance of Sounds"
	Frame.Font = Theme.Font
	Frame.TextColor3 = color3(255, 255, 255)
	Frame.TextSize = 12
	Frame.TextXAlignment = Enum.TextXAlignment.Left
	Frame.Parent = TextLabel
	UIListLayout(round, "Enable Distance Modifier", Dist_Enabled, function(p48)
		Dist_Enabled = p48
		UserConfigs.Dist_Enabled = p48

		for k in pairs_(obj4) do
			v119(k)
		end
	end)

	local footStepsDistance = v213(round, "FootSteps Distance", 0, 100, Dist_FootstepsMultiplier, "", function(p49)
		Dist_FootstepsMultiplier = p49
		UserConfigs.Dist_FootstepsMultiplier = p49

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	local jumpDistance = v213(round, "Jump Distance", 0, 100, Dist_JumpMultiplier, "", function(p50)
		Dist_JumpMultiplier = p50
		UserConfigs.Dist_JumpMultiplier = p50

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	local fallDistance = v213(round, "Fall Distance", 0, 100, Dist_FallMultiplier, "", function(p51)
		Dist_FallMultiplier = p51
		UserConfigs.Dist_FallMultiplier = p51

		for k in pairs_(obj4) do
			v119(k)
		end
	end)

	landing(round, "Reset Distances", function()
		footStepsDistance.Set(10)
		jumpDistance.Set(10)
		fallDistance.Set(10)
	end)
	TextLabel = instanceNew("Frame")
	TextLabel.Name = "HeaderContainer"
	TextLabel.Size = uDim2New(1, 0, 0, 20)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Parent = parent
	Frame = instanceNew("TextLabel")
	Frame.Size = uDim2New(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	Frame.Text = "Mute Settings"
	Frame.Font = Theme.Font
	Frame.TextColor3 = color3(255, 255, 255)
	Frame.TextSize = 12
	Frame.TextXAlignment = Enum.TextXAlignment.Left
	Frame.Parent = TextLabel
	UIListLayout(parent, "Remove Your Steps", false, function(p52)
		t1.MuteSteps = p52

		if not LocalPlayer.Character then
			for k in pairs_(obj4) do
				v119(k)
			end

			return
		end

		v79(LocalPlayer.Character)

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	UIListLayout(parent, "Remove Your Jumps", false, function(p53)
		t1.MuteJumps = p53

		if not LocalPlayer.Character then
			for k in pairs_(obj4) do
				v119(k)
			end

			return
		end

		v79(LocalPlayer.Character)

		for k in pairs_(obj4) do
			v119(k)
		end
	end)
	UIListLayout(parent, "Remove Pc Hack Sounds", false, function(p54)
		if p54 then
			local descendants = Workspace:GetDescendants()

			for i = 1, #descendants do
				local v261 = descendants[i]
				local v262 = v261.ClassName == "Sound" and v95(v261)

				if v262 then
					v262 = v99(v261)
				end

				if v262 then
					v98(v261)
				end
			end

			connection = Workspace.DescendantAdded:Connect(function(descendant)
				if descendant.ClassName ~= "Sound" then
					return
				end

				local v263 = v95(descendant)

				if v263 then
					v263 = v99(descendant)
				end

				if not v263 then
					return
				end

				v98(descendant)
			end)

			return
		end

		local v264

		if not connection then
			for i = 1, #t8 do
				v264 = t8[i]

				if v264.Signal then
					v264.Signal:Disconnect()
				end

				if v264.Object then
					v264.Object.Volume = 0.5
				end
			end

			return
		end

		connection:Disconnect()

		for i = 1, #t8 do
			v264 = t8[i]

			if v264.Signal then
				v264.Signal:Disconnect()
			end

			if v264.Object then
				v264.Object.Volume = 0.5
			end
		end
	end)
	UIListLayout(parent, "No hit sound", false, function(p55)
		u101 = p55

		if p55 then
			local function v267(p56)
				local descendants = p56:GetDescendants()

				for i = 1, #descendants do
					v105(descendants[i])
				end

				p56.DescendantAdded:Connect(function(descendant)
					task.defer(function()
						local Parent = descendant and descendant.Parent

						if Parent then
							Parent = u101
						end

						if not Parent then
							return
						end

						v105(descendant)
					end)
				end)
			end

			local players = Players:GetPlayers()

			for i = 1, #players do
				local v273 = players[i]

				if v273.Character then
					v267(v273.Character)
				end

				v273.CharacterAdded:Connect(function(character)
					if not u101 then
						return
					end

					v267(character)
				end)
			end

			local descendants = SoundService:GetDescendants()

			for i = 1, #descendants do
				v105(descendants[i])
			end

			connection2 = SoundService.DescendantAdded:Connect(function(descendant)
				task.defer(function()
					local Parent = descendant and descendant.Parent

					if Parent then
						Parent = u101
					end

					if not Parent then
						return
					end

					v105(descendant)
				end)
			end)

			return
		end

		local v277

		if not connection2 then
			for i = 1, #t10 do
				v277 = t10[i]

				if v277.Signal then
					v277.Signal:Disconnect()
				end

				if v277.Object then
					v277.Object.Volume = 0.5
				end
			end

			return
		end

		connection2:Disconnect()

		for i = 1, #t10 do
			v277 = t10[i]

			if v277.Signal then
				v277.Signal:Disconnect()
			end

			if v277.Object then
				v277.Object.Volume = 0.5
			end
		end
	end)
	UIListLayout(parent, "Mute Sounds Beast", false, function(p57)
		v157(p57)
	end)
	TextLabel = instanceNew("Frame")
	TextLabel.Name = "HeaderContainer"
	TextLabel.Size = uDim2New(1, 0, 0, 20)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Parent = GetParentTarget
	Frame = instanceNew("TextLabel")
	Frame.Size = uDim2New(1, 0, 1, 0)
	Frame.BackgroundTransparency = 1
	Frame.Text = "Spam Sounds"
	Frame.Font = Theme.Font
	Frame.TextColor3 = color3(255, 255, 255)
	Frame.TextSize = 12
	Frame.TextXAlignment = Enum.TextXAlignment.Left
	Frame.Parent = TextLabel

	local t14 = {
		"WarningSound",
		"SeenSound",
		"SafeSound",
		"DetectedSound",
		"CorrectSound"
	}
	local t15 = {}

	local function v282()
		local CurrentMap = ReplicatedStorage:FindFirstChild("CurrentMap")

		if CurrentMap then
			CurrentMap = ReplicatedStorage.CurrentMap.Value
		end

		local FacilitySiren = CurrentMap and CurrentMap:FindFirstChild("FacilitySiren")

		if FacilitySiren then
			FacilitySiren = CurrentMap.FacilitySiren:FindFirstChild("SoundExitsUnlock")
		end

		if not FacilitySiren then
			return
		end

		CurrentMap.FacilitySiren.SoundExitsUnlock:Play()
	end

	for i = 1, #t14 do
		v213 = t14[i]
		t15[v213] = SoundService:FindFirstChild(v213)
	end

	SoundService.ChildAdded:Connect(function(child)
		if child.ClassName ~= "Sound" then
			return
		end

		local Name = child.Name

		for i = 1, #t14 do
			if t14[i] == Name then
				t15[Name] = child

				return
			end
		end
	end)
	TextLabel = { "WarningSound", "SeenSound" }

	for i = 1, #TextLabel do
		local v289 = TextLabel[i]

		UIListLayout(GetParentTarget, "Spam " .. v289, false, function(p58)
			t3[v289] = p58
		end)
	end

	UIListLayout(GetParentTarget, "Spam PC Error (All)", false, function(p59)
		t3.ErrorAll = p59
	end)
	UIListLayout(GetParentTarget, "Spam Exit Siren", false, function(p60)
		t3.Siren = p60
	end)
	TextLabel = instanceNew("TextButton")
	TextLabel.Size = uDim2New(1, 0, 0, 30)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = ""
	TextLabel.ZIndex = GetParentTarget.ZIndex + 1
	TextLabel.Parent = GetParentTarget

	local TextLabel2 = instanceNew("TextLabel")

	TextLabel2.Size = uDim2New(1, -40, 1, 0)
	TextLabel2.Position = uDim2New(0, 5, 0, 0)
	TextLabel2.BackgroundTransparency = 1
	TextLabel2.Text = "Others"
	TextLabel2.Font = Theme.Font
	TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel2.TextScaled = true
	Frame = instanceNew("UITextSizeConstraint", TextLabel2)
	Frame.MinTextSize = 7
	Frame.MaxTextSize = 11
	TextLabel2.TextColor3 = Theme.TextDark
	TextLabel2.ZIndex = TextLabel.ZIndex + 1
	TextLabel2.Parent = TextLabel

	local TextLabel3 = instanceNew("TextLabel")

	TextLabel3.Size = uDim2New(0, 30, 0, 30)
	TextLabel3.Position = uDim2New(1, -30, 0, 0)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.Text = "▼"
	TextLabel3.Font = Enum.Font.Gotham
	TextLabel3.TextColor3 = Theme.TextDark
	TextLabel3.TextSize = 8
	TextLabel3.ZIndex = TextLabel.ZIndex + 1
	TextLabel3.Parent = TextLabel

	local Frame2 = instanceNew("Frame")

	Frame2.Size = uDim2New(1, 0, 0, 0)
	Frame2.AutomaticSize = Enum.AutomaticSize.Y
	Frame2.BackgroundTransparency = 1
	Frame2.Visible = false
	Frame2.ZIndex = GetParentTarget.ZIndex + 1
	Frame2.Parent = GetParentTarget
	Frame = instanceNew("UIListLayout", Frame2)
	Frame.SortOrder = Enum.SortOrder.LayoutOrder
	Frame.Padding = UDim.new(0, 4)

	local visible = false

	TextLabel.MouseButton1Click:Connect(function()
		visible = not visible
		Frame2.Visible = visible
		TextLabel3.Text = visible and "▲" or "▼"
		TextLabel2.TextColor3 = visible and Theme.Text or Theme.TextDark
	end)
	UIListLayout(Frame2, "Spam SafeSound", false, function(p61)
		t3.SafeSound = p61
	end)
	UIListLayout(Frame2, "Spam DetectedSound", false, function(p62)
		t3.DetectedSound = p62
	end)
	UIListLayout(Frame2, "Spam CorrectSound", false, function(p63)
		t3.CorrectSound = p63
	end)
	UIListLayout(Frame2, "Spam PC Error (One)", false, function(p64)
		t3.ErrorOne = p64
	end)
	task.spawn(function()
		while true do
			wait(0.05)

			for i = 1, #t14 do
				local v295 = t14[i]

				if t3[v295] then
					local v296 = t15[v295]

					if v296 and (v296.TimePosition >= v296.TimeLength * 0.5 or not v296.IsPlaying) then
						v296:Play()
					end
				end
			end

			if t3.ErrorAll then
				v149(true)
				wait(0.05)
			end

			if t3.ErrorOne then
				v149(false)
				wait(0.05)
			end

			if t3.Siren then
				v282()
				wait(0.25)
			end
		end
	end)
	TextLabel = instanceNew("Frame")
	TextLabel.Size = uDim2New(1, -2, 0, 95)
	TextLabel.BackgroundColor3 = Color3.new(0, 0, 0)
	TextLabel.BackgroundTransparency = 0.45
	TextLabel.BorderSizePixel = 0
	TextLabel.ClipsDescendants = false
	TextLabel.ZIndex = 100
	TextLabel.Parent = Page2
	Frame = instanceNew("UIStroke", TextLabel)
	Frame.Color = color3(40, 40, 40)
	Frame.Thickness = 1
	Frame = instanceNew("UIPadding", TextLabel)
	Frame.PaddingTop = UDim.new(0, 10)
	Frame.PaddingBottom = UDim.new(0, 10)
	Frame.PaddingLeft = UDim.new(0, 12)
	Frame.PaddingRight = UDim.new(0, 12)
	Frame = instanceNew("TextLabel")
	Frame.Size = uDim2New(0.4, 0, 0, 16)
	Frame.BackgroundTransparency = 1
	Frame.Text = "Music Player"
	Frame.Font = Theme.Font
	Frame.TextColor3 = Theme.Text
	Frame.TextSize = 12
	Frame.TextXAlignment = Enum.TextXAlignment.Left
	Frame.ZIndex = 101
	Frame.Parent = TextLabel

	local TextBox = instanceNew("TextBox")

	TextBox.Size = uDim2New(0.32, -6, 0, 28)
	TextBox.Position = uDim2New(0, 0, 0, 42)
	TextBox.PlaceholderText = "Insert ID..."
	TextBox.Text = ""
	TextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextBox.BackgroundTransparency = 0.45
	TextBox.TextColor3 = Theme.Text
	TextBox.PlaceholderColor3 = Theme.TextDark
	TextBox.Font = Theme.Font
	TextBox.TextSize = 10
	TextBox.ClearTextOnFocus = true
	TextBox.ZIndex = 101
	TextBox.Parent = TextLabel
	instanceNew("UICorner", TextBox).CornerRadius = UDim.new(0, 4)
	instanceNew("UIStroke", TextBox).Color = color3(40, 40, 40)

	local TextButton = instanceNew("TextButton")

	TextButton.Size = uDim2New(0.32, -6, 0, 28)
	TextButton.Position = uDim2New(0.32, 6, 0, 42)
	TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BackgroundTransparency = 0.45
	TextButton.Text = "Select Song"
	TextButton.Font = Theme.Font
	TextButton.TextSize = 10
	TextButton.TextColor3 = Theme.TextDark
	TextButton.ZIndex = 102
	TextButton.Parent = TextLabel
	instanceNew("UICorner", TextButton).CornerRadius = UDim.new(0, 4)
	instanceNew("UIStroke", TextButton).Color = color3(40, 40, 40)

	local TextLabel4 = instanceNew("TextLabel")

	TextLabel4.Size = uDim2New(0, 16, 1, 0)
	TextLabel4.Position = uDim2New(1, -18, 0, 0)
	TextLabel4.BackgroundTransparency = 1
	TextLabel4.Text = "▼"
	TextLabel4.Font = Enum.Font.Gotham
	TextLabel4.TextColor3 = Theme.TextDark
	TextLabel4.TextSize = 8
	TextLabel4.ZIndex = 103
	TextLabel4.Parent = TextButton

	local Frame3 = instanceNew("Frame")

	Frame3.Size = uDim2New(1, 0, 0, 134)
	Frame3.Position = uDim2New(0, 0, 1, 4)
	Frame3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	Frame3.BackgroundTransparency = 0.15
	Frame3.BorderSizePixel = 0
	Frame3.Visible = false
	Frame3.ZIndex = 200
	Frame3.Parent = TextButton
	instanceNew("UICorner", Frame3).CornerRadius = UDim.new(0, 4)
	instanceNew("UIStroke", Frame3).Color = color3(40, 40, 40)
	Frame = instanceNew("ScrollingFrame", Frame3)
	Frame.Size = uDim2New(1, -4, 1, -4)
	Frame.Position = uDim2New(0, 2, 0, 2)
	Frame.BackgroundTransparency = 1
	Frame.BorderSizePixel = 0
	Frame.ScrollBarThickness = 2
	Frame.ScrollBarImageColor3 = Theme.Accent
	Frame.CanvasSize = uDim2New(0, 0, 0, #t4 * 22)
	Frame.ZIndex = 201
	instanceNew("UIListLayout", Frame).SortOrder = Enum.SortOrder.LayoutOrder

	for i = 1, #t4 do
		local v302 = t4[i]
		local TextButton2 = instanceNew("TextButton")

		TextButton2.Size = uDim2New(1, 0, 0, 22)
		TextButton2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		TextButton2.BackgroundTransparency = 1
		TextButton2.Text = v302.Name
		TextButton2.Font = Enum.Font.Gotham
		TextButton2.TextSize = 9
		TextButton2.TextColor3 = Theme.TextDark
		TextButton2.ZIndex = 202
		TextButton2.Parent = Frame
		UIListLayout = instanceNew("Frame")
		UIListLayout.Size = uDim2New(1, -10, 0, 1)
		UIListLayout.Position = uDim2New(0, 5, 1, -1)
		UIListLayout.BackgroundColor3 = color3(40, 40, 40)
		UIListLayout.BorderSizePixel = 0
		UIListLayout.ZIndex = 203
		UIListLayout.Parent = TextButton2
		TextButton2.MouseEnter:Connect(function()
			local v304 = TweenService
			local v305 = TextButton2
			local v306 = v29
			local color32 = Color3.fromRGB(255, 255, 255)

			v304.Create(v304, v305, v306, {
				BackgroundTransparency = 0.6,
				BackgroundColor3 = color32,
				TextColor3 = Theme.Text
			}):Play()
		end)
		TextButton2.MouseLeave:Connect(function()
			local v308 = TweenService
			local v309 = TextButton2
			local v310 = v29

			v308.Create(v308, v309, v310, {
				BackgroundTransparency = 1,
				TextColor3 = Theme.TextDark
			}):Play()
		end)
		TextButton2.MouseButton1Click:Connect(function()
			TextBox.Text = v302.ID
			TextButton.Text = v302.Name
			Frame3.Visible = false
			TextLabel4.Text = "▼"
		end)
	end

	TextButton.MouseButton1Click:Connect(function()
		Frame3.Visible = not Frame3.Visible
		TextLabel4.Text = Frame3.Visible and "▲" or "▼"
	end)
	TextBox:GetPropertyChangedSignal("Text"):Connect(function()
		local Text = TextBox.Text
		local v312 = false

		for i = 1, #t4 do
			local v314 = t4[i]

			if v314.ID == Text then
				TextButton.Text = v314.Name
				v312 = true

				break
			end
		end

		if v312 then
			return
		end

		TextButton.Text = "Select Song"
	end)

	local TextButton2 = instanceNew("TextButton")

	TextButton2.Size = uDim2New(0.34, -12, 0, 28)
	TextButton2.Position = uDim2New(0.66, 12, 0, 42)
	TextButton2.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton2.BackgroundTransparency = 0.45
	TextButton2.Text = "Play"
	TextButton2.Font = Theme.Font
	TextButton2.TextSize = 10
	TextButton2.TextColor3 = Theme.TextDark
	TextButton2.ZIndex = 101
	TextButton2.Parent = TextLabel
	instanceNew("UICorner", TextButton2).CornerRadius = UDim.new(0, 4)
	instanceNew("UIStroke", TextButton2).Color = color3(40, 40, 40)
	TextButton2.MouseButton1Click:Connect(function()
		local v316 = match(TextBox.Text, "%d+")

		if v316 then
			Sound:Stop()
			Sound.SoundId = "rbxassetid://" .. v316
			Sound:Play()
			TextButton2.Text = "Stop"
		else
			TextBox.Text = ""
			TextBox.PlaceholderText = "Invalid ID!"
		end
	end)
	Frame = instanceNew("Frame")
	Frame.Size = uDim2New(0.4, 0, 0, 35)
	Frame.Position = uDim2New(0.6, 0, 0, -4)
	Frame.BackgroundTransparency = 1
	Frame.ZIndex = 101
	Frame.Parent = TextLabel
	TextLabel = instanceNew("TextLabel")
	TextLabel.Size = uDim2New(1, -35, 0, 14)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = "Music Vol"
	TextLabel.Font = Theme.Font
	TextLabel.TextColor3 = Theme.TextDark
	TextLabel.TextSize = 10
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.ZIndex = 102
	TextLabel.Parent = Frame

	local TextLabel5 = instanceNew("TextLabel")

	TextLabel5.Size = uDim2New(0, 30, 0, 14)
	TextLabel5.Position = uDim2New(1, -30, 0, 0)
	TextLabel5.BackgroundTransparency = 1
	TextLabel5.Text = "50%"
	TextLabel5.Font = Theme.Font
	TextLabel5.TextColor3 = Theme.Text
	TextLabel5.TextSize = 10
	TextLabel5.TextXAlignment = Enum.TextXAlignment.Right
	TextLabel5.ZIndex = 102
	TextLabel5.Parent = Frame

	local Frame4 = instanceNew("Frame")

	Frame4.Size = uDim2New(1, 0, 0, 5)
	Frame4.Position = uDim2New(0, 0, 0, 20)
	Frame4.BackgroundColor3 = Theme.SwitchOff
	Frame4.BorderSizePixel = 0
	Frame4.ZIndex = 102
	Frame4.Parent = Frame
	instanceNew("UICorner", Frame4).CornerRadius = UDim.new(1, 0)

	local Frame5 = instanceNew("Frame")

	Frame5.Size = uDim2New(0.5, 0, 1, 0)
	Frame5.BackgroundColor3 = Theme.Accent
	Frame5.BorderSizePixel = 0
	Frame5.ZIndex = 103
	Frame5.Parent = Frame4
	instanceNew("UICorner", Frame5).CornerRadius = UDim.new(1, 0)
	v52(Frame5, Theme.Accent, Theme.AccentDark, 0)
	TextLabel = instanceNew("TextButton")
	TextLabel.Size = uDim2New(1, 0, 1, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = ""
	TextLabel.ZIndex = 104
	TextLabel.Parent = Frame4

	local u320 = false

	local function v321(p65)
		local volume = clamp((p65.Position.X - Frame4.AbsolutePosition.X) / Frame4.AbsoluteSize.X, 0, 1)

		Frame5.Size = uDim2New(volume, 0, 1, 0)
		TextLabel5.Text = floor(volume * 100) .. "%"
		Sound.Volume = volume
	end

	TextLabel.InputBegan:Connect(function(input)
		if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		u320 = true
		v321(input)
	end)
	UserInputService.InputEnded:Connect(function(input)
		if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		u320 = false
	end)
	UserInputService.InputChanged:Connect(function(input)
		if not (u320 and input.UserInputType == Enum.UserInputType.MouseMovement and true or input.UserInputType == Enum.UserInputType.Touch) then
			return
		end

		v321(input)
	end)
	Page:CreateSection(Page2, "Custom Sound Packs")

	local t16 = {}
	local t17 = {}
	local t18 = {}

	TextLabel = UserConfigs.CustomSound_Walk or "0"
	Frame = UserConfigs.CustomSound_Jump or "0"
	landing = UserConfigs.CustomSound_Fall or "0"
	t2.Running = TextLabel
	t2.Jumping = Frame
	t2.Landing = landing

	local function v326(p66, p67)
		for k, v in pairs_(p66) do
			if k == p67 then
				TweenService:Create(v.Btn, v31, {
					BackgroundColor3 = Theme.Accent,
					BackgroundTransparency = 0,
					TextColor3 = Color3.new(0, 0, 0)
				}):Play()

				local v329 = TweenService
				local Stroke = v.Stroke

				v329.Create(v329, Stroke, v31, {
					Color = Theme.Accent,
					Transparency = 0
				}):Play()
			else
				local v331 = TweenService
				local Btn = v.Btn
				local v333 = v31
				local color32 = Color3.new(0, 0, 0)
				local Color3_ = Color3

				v331.Create(v331, Btn, v333, {
					BackgroundColor3 = color32,
					BackgroundTransparency = 0.45,
					TextColor3 = Color3_.fromRGB(150, 150, 150)
				}):Play()
				TweenService:Create(v.Stroke, v31, {
					Color = Color3.fromRGB(40, 40, 40),
					Transparency = 0
				}):Play()
			end
		end
	end

	v213 = function(p68, p69, p70)
		local Frame6 = instanceNew("Frame")

		Frame6.Size = uDim2New(1, -2, 0, 65)
		Frame6.Position = uDim2New(0, 1, 0, 0)
		Frame6.BackgroundColor3 = Color3.new(0, 0, 0)
		Frame6.BackgroundTransparency = 0.45
		Frame6.BorderSizePixel = 0
		Frame6.ZIndex = 1
		Frame6.Parent = p68

		local UIStroke = instanceNew("UIStroke", Frame6)

		UIStroke.Color = color3(40, 40, 40)
		UIStroke.Thickness = 1

		local TextLabel6 = instanceNew("TextLabel")

		TextLabel6.Size = uDim2New(1, -20, 0, 20)
		TextLabel6.Position = uDim2New(0, 10, 0, 5)
		TextLabel6.BackgroundTransparency = 1
		TextLabel6.Text = p69
		TextLabel6:SetAttribute("OriginalText", p69)
		TextLabel6.TextColor3 = Theme.Text
		TextLabel6.Font = Theme.Font
		TextLabel6.TextSize = 12
		TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel6.Parent = Frame6

		local Frame7 = instanceNew("Frame")

		Frame7.Size = uDim2New(1, -20, 0, 26)
		Frame7.Position = uDim2New(0, 10, 0, 30)
		Frame7.BackgroundTransparency = 1
		Frame7.Parent = Frame6

		local UIListLayout3 = instanceNew("UIListLayout", Frame7)

		UIListLayout3.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout3.Padding = UDim.new(0, 8)
		UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder

		local v341 = #p70
		local v342 = 1 / v341

		for i = 1, v341 do
			local v344 = p70[i]
			local TextButton3 = instanceNew("TextButton")

			TextButton3.Size = uDim2New(v342, -((v341 - 1) * 8 / v341), 1, 0)
			TextButton3.BackgroundColor3 = Color3.new(0, 0, 0)
			TextButton3.BackgroundTransparency = 0.45
			TextButton3.Text = v344.Name
			TextButton3:SetAttribute("OriginalText", v344.Name)
			TextButton3.Font = Enum.Font.GothamBold
			TextButton3.TextSize = 11
			TextButton3.TextColor3 = Color3.fromRGB(150, 150, 150)
			TextButton3.Parent = Frame7
			instanceNew("UICorner", TextButton3).CornerRadius = UDim.new(0, 6)

			local UIStroke2 = instanceNew("UIStroke", TextButton3)

			UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			UIStroke2.Color = color3(40, 40, 40)
			UIStroke2.Thickness = 1

			local v347 = lower(v344.Type)

			if v347 == "walk" then
				t16[v344.ID] = {
					Btn = TextButton3,
					Stroke = UIStroke2
				}
			elseif v347 == "jump" then
				t17[v344.ID] = {
					Btn = TextButton3,
					Stroke = UIStroke2
				}
			elseif v347 == "fall" then
				t18[v344.ID] = {
					Btn = TextButton3,
					Stroke = UIStroke2
				}
			end

			TextButton3.MouseEnter:Connect(function()
				if (v347 == "walk" and t2.Running or (v347 == "jump" and t2.Jumping or t2.Landing)) == v344.ID then
					return
				end

				local v348 = TweenService
				local v349 = UIStroke2
				local v350 = v30
				local v351 = Theme

				v348.Create(v348, v349, v350, {
					Color = v351.Accent
				}):Play()
			end)
			TextButton3.MouseLeave:Connect(function()
				if (v347 == "walk" and t2.Running or (v347 == "jump" and t2.Jumping or t2.Landing)) == v344.ID then
					return
				end

				local v352 = TweenService
				local v353 = UIStroke2
				local v354 = v30
				local v355 = color3

				v352.Create(v352, v353, v354, {
					Color = v355(40, 40, 40)
				}):Play()
			end)

			local function v356()
				if v347 == "walk" then
					t2.Running = v344.ID
					UserConfigs.CustomSound_Walk = v344.ID
					v326(t16, v344.ID)
				elseif v347 == "jump" then
					t2.Jumping = v344.ID
					UserConfigs.CustomSound_Jump = v344.ID
					v326(t17, v344.ID)
				else
					if v347 ~= "fall" then
						v74()

						return
					end

					t2.Landing = v344.ID
					UserConfigs.CustomSound_Fall = v344.ID
					v326(t18, v344.ID)
				end

				v74()
			end

			TextButton3.MouseButton1Click:Connect(v356)
		end
	end
	parent = instanceNew("TextButton")
	parent.Size = uDim2New(1, -2, 0, 30)
	parent.Position = uDim2New(0, 1, 0, 0)
	parent.BackgroundColor3 = Color3.new(0, 0, 0)
	parent.BackgroundTransparency = 0.45
	parent.Text = "Default Sounds (Reset All)"
	parent.TextColor3 = color3(150, 150, 150)
	parent.Font = Enum.Font.GothamBold
	parent.TextSize = 11
	parent.ZIndex = 1
	parent.Parent = Page2
	instanceNew("UICorner", parent).CornerRadius = UDim.new(0, 6)
	UIListLayout = instanceNew("UIStroke", parent)
	UIListLayout.Color = color3(40, 40, 40)
	UIListLayout.Thickness = 1
	parent.MouseButton1Click:Connect(function()
		t2.Running = "0"
		t2.Jumping = "0"
		t2.Landing = "0"
		UserConfigs.CustomSound_Walk = "0"
		UserConfigs.CustomSound_Jump = "0"
		UserConfigs.CustomSound_Fall = "0"
		v326(t16, "0")
		v326(t17, "0")
		v326(t18, "0")
		v74()
	end)
	v213(Page2, "NorthDxv1Ces", {
		{
			Name = "Walk",
			ID = "119933956036500",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "87683560682449",
			Type = "Jump"
		},
		{
			Name = "Fall",
			ID = "73586375325988",
			Type = "Fall"
		}
	})
	v213(Page2, "michawell", {
		{
			Name = "Walk",
			ID = "116140177933689",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "70420181848348",
			Type = "Jump"
		}
	})
	v213(Page2, "DraxynSoulx", {
		{
			Name = "Walk",
			ID = "130152479167305",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "122238807601932",
			Type = "Jump"
		},
		{
			Name = "Fall",
			ID = "71782790555091",
			Type = "Fall"
		}
	})
	v213(Page2, "Luana_Mitxu", {
		{
			Name = "Walk",
			ID = "107070338913559",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "133939057526098",
			Type = "Jump"
		}
	})
	v213(Page2, "Facility Gamer", {
		{
			Name = "Walk",
			ID = "131592620665625",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "89459688918065",
			Type = "Jump"
		}
	})
	v213(Page2, "NoobTwoPoint", {
		{
			Name = "Walk",
			ID = "110709356093026",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "124276657634407",
			Type = "Jump"
		}
	})
	v213(Page2, "Tio Morcego", {
		{
			Name = "Walk",
			ID = "97458293386939",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "72503238596964",
			Type = "Jump"
		},
		{
			Name = "Fall",
			ID = "83702883984130",
			Type = "Fall"
		}
	})
	v213(Page2, "FKPS", {
		{
			Name = "Walk",
			ID = "97733831736820",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "86031664547378",
			Type = "Jump"
		},
		{
			Name = "Fall",
			ID = "78180192109919",
			Type = "Fall"
		}
	})
	v213(Page2, "Normal", {
		{
			Name = "Walk",
			ID = "79392671800290",
			Type = "Walk"
		},
		{
			Name = "Jump",
			ID = "80853972291847",
			Type = "Jump"
		},
		{
			Name = "Fall",
			ID = "88947883822456",
			Type = "Fall"
		}
	})
	v213(Page2, "Extra Jumps (Part 1)", {
		{
			Name = "Pew",
			ID = "136299701781122",
			Type = "Jump"
		},
		{
			Name = "Sharingan",
			ID = "118102230060662",
			Type = "Jump"
		},
		{
			Name = "Albino",
			ID = "129415490412106",
			Type = "Jump"
		}
	})
	v213(Page2, "Extra Jumps (Part 2)", {
		{
			Name = "1Rxdrigo",
			ID = "80276851298640",
			Type = "Jump"
		},
		{
			Name = "Three Jumps",
			ID = "126925004664723",
			Type = "Jump"
		},
		{
			Name = "Yusei Jump",
			ID = "119519595212440",
			Type = "Jump"
		}
	})
	v326(t16, TextLabel)
	v326(t17, Frame)
	v326(t18, landing)
end
