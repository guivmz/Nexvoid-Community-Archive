
return function(p1)
	local Library = p1.Library
	local Page = p1.Page
	local t1 = {
		value1 = workspace,
		value2 = p1.Players or game:GetService("Players")
	}

	t1.value3 = p1.LocalPlayer or t1.value2.LocalPlayer
	t1.value4 = p1.RunService or game:GetService("RunService")
	t1.value5 = p1.CoreGui or game:GetService("CoreGui")

	local _ = p1.Theme
	local _ = p1.UserConfigs

	t1.value6 = p1.SendNotification
	t1.value7 = p1.isMobile
	t1.value8 = game:GetService("UserInputService")
	t1.value9 = game:GetService("ReplicatedStorage")
	t1.value10 = Library.CreateInput

	function Library.CreateInput(p2, p3, p4, p5, p6)
		local children = p3:GetChildren()

		t1.value10(p2, p3, p4, p5, p6)

		local children2 = p3:GetChildren()
		local v8 = nil

		for _, v in ipairs(children2) do
			if not table.find(children, v) then
				v8 = v

				break
			end
		end

		if not v8 then
			return
		end

		task.defer(function()
			local v11 = v8

			for _, descendant in ipairs(v11.GetDescendants(v11)) do
				if descendant:IsA("TextBox") then
					descendant.BackgroundColor3 = Color3.new(0, 0, 0)
					descendant.BackgroundTransparency = 0.55
					descendant.Size = UDim2.new(0, 110, 0, 24)
					descendant.Position = UDim2.new(1, -115, 0.5, -12)
					descendant.TextXAlignment = Enum.TextXAlignment.Center

					local Parent = descendant.Parent

					if Parent then
						local TextLabel = Parent:FindFirstChildWhichIsA("TextLabel")
						local v16

						if TextLabel then
							v16 = TextLabel ~= descendant
						else
							v16 = TextLabel
						end

						if v16 then
							TextLabel.Size = UDim2.new(1, -125, 1, 0)
						end
					end
				end
			end
		end)
	end

	t1.value11 = Library.CreateDropdown

	function Library.CreateDropdown(p7, p8, p9, p10, p11, p12)
		local children = p8:GetChildren()

		t1.value11(p7, p8, p9, p10, p11, p12)

		local children2 = p8:GetChildren()
		local v19 = nil

		for _, v in ipairs(children2) do
			if not table.find(children, v) then
				v19 = v

				break
			end
		end

		if not v19 then
			return
		end

		task.defer(function()
			local v22 = v19

			for _, descendant in ipairs(v22.GetDescendants(v22)) do
				if descendant:IsA("TextLabel") and descendant.Text == "▼" and true or descendant.Text == "▲" then
					descendant.Position = UDim2.new(1, -20, 0.5, -10)
				end
			end
		end)
	end

	t1.value12 = Library.CreatePlayerDropdown

	function Library.CreatePlayerDropdown(p13, p14, p15, p16, p17)
		local children = p14:GetChildren()

		t1.value12(p13, p14, p15, p16, p17)

		local children2 = p14:GetChildren()
		local v27 = nil

		for _, v in ipairs(children2) do
			if not table.find(children, v) then
				v27 = v

				break
			end
		end

		if not v27 then
			return
		end

		task.defer(function()
			local v30 = v27

			for _, descendant in ipairs(v30.GetDescendants(v30)) do
				if descendant:IsA("TextLabel") and descendant.Text == "▼" and true or descendant.Text == "▲" then
					descendant.Position = UDim2.new(1, -20, 0.5, -10)
				end
			end
		end)
	end

	t1.value13 = nil
	t1.value14 = setmetatable({}, {
		__mode = "k"
	})
	t1.value15 = "Default"
	t1.value16 = setmetatable({}, {
		__mode = "k"
	})
	t1.value17 = t1.value3.Name
	t1.value18 = t1.value3.DisplayName
	t1.value19 = "1"
	t1.value20 = t1.value3.Name
	t1.value21 = 100
	t1.value22 = "rbxassetid://1188562340"
	t1.value23 = false
	t1.value24 = nil
	t1.value25 = {
		VIP = "rbxassetid://1188562340",
		QA = "rbxassetid://105177418407648",
		CON = "rbxassetid://76898592264692",
		Mod = "rbxassetid://105155010224102",
		Dev = "rbxassetid://18940006678",
		Manager = "rbxassetid://131476591459702",
		MrWindy = "rbxassetid://18937953345",
		Nenhum = ""
	}
	t1.value26 = setmetatable({}, {
		__mode = "k"
	})
	t1.value27 = false
	t1.value28 = "Select Player"
	t1.value29 = "Fake Name"
	t1.value30 = 100
	t1.value31 = ""
	t1.value32 = {}
	t1.value33 = {}
	t1.value34 = setmetatable({}, {
		__mode = "k"
	})

	local ipairs_ = ipairs
	local value2 = t1.value2

	local function v35(character)
		if not character then
			return
		end

		t1.value34[character] = true
	end
	local function v36(character)
		if not character then
			return
		end

		t1.value34[character] = nil
	end

	for _, player in ipairs_(value2.GetPlayers(value2)) do
		local Character = player.Character and player.Character

		if Character then
			t1.value34[Character] = true
		end

		player.CharacterAdded:Connect(v35)
		player.CharacterRemoving:Connect(v36)
	end

	local PlayerAdded = t1.value2.PlayerAdded

	PlayerAdded.Connect(PlayerAdded, function(p18)
		p18.CharacterAdded:Connect(v35)
		p18.CharacterRemoving:Connect(v36)
	end)
	t1.value35 = false
	t1.value36 = 1
	(function()
		local function v41()
			local v42 = nil

			v42 = hookmetamethod(game, "__index", function(p19, p20)
				if p19 == t1.value8 and p20 == "MouseDelta" and true or p20 == "mouseDelta" then
					local v43 = v42(p19, p20)

					if t1.value35 then
						return v43 * t1.value36
					else
						return v43
					end
				else
					return v42(p19, p20)
				end
			end)
		end

		pcall(v41)
		pcall(function()
			local v44 = nil

			v44 = hookmetamethod(game, "__namecall", function(p21, ...)
				local v45 = getnamecallmethod()

				if p21 == t1.value8 and v45 == "GetMouseDelta" and true or v45 == "getMouseDelta" then
					local v46 = v44(p21, ...)

					if t1.value35 then
						return v46 * t1.value36
					else
						return v46
					end
				else
					return v44(p21, ...)
				end
			end)
		end)
	end)()
	t1.value37 = false
	t1.value38 = nil
	t1.value39 = nil

	local function v47(child)
		local value37

		if child.Name == "BlackOutScreenGui" then
			value37 = t1.value37
		else
			value37 = false
		end

		if not value37 then
			return
		end

		task.defer(function()
			child.Enabled = false

			local CurrentCamera = t1.value1.CurrentCamera

			if not CurrentCamera then
				return
			end

			CurrentCamera.CameraType = Enum.CameraType.Custom
		end)
	end
	local function v50(p22)
		t1.value37 = p22

		local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

		if p22 then
			if PlayerGui then
				local GetChildren = PlayerGui.GetChildren

				for _, v in ipairs(GetChildren(PlayerGui)) do
					local value37

					if v.Name == "BlackOutScreenGui" then
						value37 = t1.value37
					else
						value37 = false
					end

					if value37 then
						task.defer(function()
							v.Enabled = false

							local CurrentCamera = t1.value1.CurrentCamera

							if not CurrentCamera then
								return
							end

							CurrentCamera.CameraType = Enum.CameraType.Custom
						end)
					end
				end

				if t1.value38 then
					t1.value38:Disconnect()
				end

				t1.value38 = PlayerGui.ChildAdded:Connect(v47)
			end

			if t1.value39 then
				t1.value39:Disconnect()
			end

			t1.value39 = t1.value3.CharacterAdded:Connect(function()
				local PlayerGui2 = t1.value3:WaitForChild("PlayerGui", 5)

				if not PlayerGui2 then
					return
				end

				for _, child in ipairs(PlayerGui2:GetChildren()) do
					local value37

					if child.Name == "BlackOutScreenGui" then
						value37 = t1.value37
					else
						value37 = false
					end

					if value37 then
						task.defer(function()
							child.Enabled = false

							local CurrentCamera = t1.value1.CurrentCamera

							if not CurrentCamera then
								return
							end

							CurrentCamera.CameraType = Enum.CameraType.Custom
						end)
					end
				end

				if t1.value38 then
					t1.value38:Disconnect()
				end

				t1.value38 = PlayerGui2.ChildAdded:Connect(v47)
			end)

			return
		end

		if t1.value38 then
			t1.value38:Disconnect()
		end

		if t1.value39 then
			t1.value39:Disconnect()
		end

		if not PlayerGui then
			return
		end

		for _, child in ipairs(PlayerGui:GetChildren()) do
			if child.Name == "BlackOutScreenGui" then
				child.Enabled = true
			end
		end
	end

	t1.value40 = false
	t1.value41 = {}

	local setmetatable_ = setmetatable

	t1.value42 = nil
	t1.value43 = setmetatable_({}, {
		__mode = "k"
	})
	t1.value44 = setmetatable({}, {
		__mode = "k"
	})
	t1.value45 = false
	t1.value46 = {}

	function t1.value47()
		table.clear(t1.value46)

		local ipairs_2 = ipairs
		local value22 = t1.value2

		for _, player in ipairs_2(value22.GetPlayers(value22)) do
			if player.Name ~= "" then
				t1.value46[player.Name] = true
			end

			local DisplayName = player.DisplayName

			if DisplayName then
				DisplayName = player.DisplayName ~= ""
			end

			if DisplayName then
				t1.value46[player.DisplayName] = true
			end
		end
	end

	table.insert(t1.value41, t1.value2.PlayerAdded:Connect(t1.value47))

	local table_ = table

	t1.value48 = nil
	table_.insert(t1.value41, t1.value2.PlayerRemoving:Connect(t1.value47))
	t1.value47()

	function t1.value49(p23)
		local function v71(character)
			local Humanoid = character:WaitForChild("Humanoid", 5)

			if not Humanoid then
				return
			end

			if not t1.value43[Humanoid] then
				t1.value43[Humanoid] = Humanoid.DisplayDistanceType
			end

			if not t1.value40 then
				return
			end

			Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
		end

		if not t1.value40 then
			return
		end

		local connection = p23.CharacterAdded:Connect(v71)
		local value41 = t1.value41

		table.insert(value41, connection)

		local Humanoid = p23.Character and p23.Character:WaitForChild("Humanoid", 5)

		if not Humanoid then
			return
		end

		if not t1.value43[Humanoid] then
			t1.value43[Humanoid] = Humanoid.DisplayDistanceType
		end

		if not t1.value40 then
			return
		end

		Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
	end

	local function v76(descendant)
		if not t1.value40 then
			return
		end

		local v77 = not (descendant:IsA("TextLabel") or descendant:IsA("TextButton"))

		if v77 then
			v77 = not descendant:IsA("TextBox")
		end

		if v77 then
			return
		end

		local function v78()
			if t1.value45 then
				return
			end

			local Text = descendant.Text

			if Text == "" then
				return
			end

			if not t1.value44[descendant] then
				t1.value44[descendant] = Text
			end

			local v80 = false

			for k in pairs(t1.value46) do
				if Text.find(Text, k, 1, true) then
					Text = Text:gsub(k, "")
					v80 = true
				end
			end

			if not v80 then
				return
			end

			local function v82()
				descendant.Text = Text
			end

			pcall(v82)
		end

		v78()

		local connection = descendant:GetPropertyChangedSignal("Text"):Connect(v78)
		local value41 = t1.value41

		table.insert(value41, connection)
	end

	function t1.value50(p24)
		t1.value40 = p24

		if p24 then
			t1.value47()

			for _, player in ipairs(t1.value2:GetPlayers()) do
				t1.value49(player)
			end

			local connection = t1.value2.PlayerAdded:Connect(t1.value49)
			local value41 = t1.value41

			table.insert(value41, connection)

			local PlayerGui = t1.value3:WaitForChild("PlayerGui", 5)

			if PlayerGui then
				local GetDescendants = PlayerGui.GetDescendants

				for _, v in ipairs(GetDescendants(PlayerGui)) do
					v76(v)
				end

				local connection2 = PlayerGui.DescendantAdded:Connect(v76)
				local value412 = t1.value41

				table.insert(value412, connection2)
			end

			pcall(function()
				local ipairs_2 = ipairs
				local value5 = t1.value5

				for _, descendant in ipairs_2(value5.GetDescendants(value5)) do
					v76(descendant)
				end

				local connection2 = t1.value5.DescendantAdded:Connect(v76)
				local value412 = t1.value41

				table.insert(value412, connection2)
			end)
		else
			local v101, v102, v103 = ipairs(t1.value41)

			while true do
				local v104

				v103, v104 = v101(v102, v103)

				if not v103 then
					break
				end

				if v104 then
					v104:Disconnect()
				end
			end

			table.clear(t1.value41)

			for k, v in pairs(t1.value43) do
				local Parent

				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					pcall(function()
						k.DisplayDistanceType = v
					end)
				end
			end

			table.clear(t1.value43)

			for k, v in pairs(t1.value44) do
				local Parent

				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					pcall(function()
						k.Text = v
					end)
				end
			end

			table.clear(t1.value44)
		end
	end

	t1.value51 = false
	t1.value52 = nil
	t1.value53 = nil
	t1.value54 = nil
	t1.value55 = nil

	local function v111(p25)
		t1.value51 = p25

		if p25 then
			local CurrentCamera = t1.value1.CurrentCamera

			if not t1.value52 then
				t1.value52 = CurrentCamera:FindFirstChild("NexMotionBlur") or Instance.new("BlurEffect")
				t1.value52.Name = "NexMotionBlur"
			end

			t1.value52.Parent = CurrentCamera

			local LookVector = CurrentCamera.CFrame.LookVector

			t1.value55 = t1.value1.Changed:Connect(function(p26)
				if p26 ~= "CurrentCamera" then
					return
				end

				local CurrentCamera2 = t1.value1.CurrentCamera

				if not t1.value52 then
					return
				end

				t1.value52.Parent = CurrentCamera2
			end)
			t1.value53 = t1.value4.Heartbeat:Connect(function()
				local CurrentCamera2 = t1.value1.CurrentCamera

				if not CurrentCamera2 then
					return
				end

				if not (not t1.value52 or t1.value52.Parent == nil) then
					v130 = (CurrentCamera2.CFrame.LookVector - LookVector).Magnitude
					v131 = t1.value52
					v132 = v130 * 100
					v131.Size = math.clamp(v132, 0, 56)

					return
				end

				t1.value52 = Instance.new("BlurEffect")
				t1.value52.Name = "NexMotionBlur"
				t1.value52.Parent = CurrentCamera2

				local Magnitude = (CurrentCamera2.CFrame.LookVector - LookVector).Magnitude
				local value52 = t1.value52
				local v118 = Magnitude * 100

				value52.Size = math.clamp(v118, 0, 56)
			end)

			return
		end

		if t1.value53 then
			t1.value53:Disconnect()
		end

		if t1.value55 then
			t1.value55:Disconnect()
		end

		if not t1.value52 then
			return
		end

		t1.value52:Destroy()
	end

	t1.value56 = false
	t1.value57 = nil
	t1.value58 = nil
	t1.value42 = {}

	local setmetatable_2 = setmetatable

	t1.value59 = nil
	t1.value60 = setmetatable_2({}, {
		__mode = "k"
	})
	t1.value61 = false
	t1.value62 = 0

	local setmetatable_3 = setmetatable

	t1.value63 = nil
	t1.value64 = setmetatable_3({}, {
		__mode = "k"
	})
	t1.value65 = nil
	t1.value66 = {}
	t1.value67 = nil
	t1.value68 = CFrame.new(0, -9999, 0)
	t1.value69 = CFrame.new(0, 0.1, -0.15)

	function t1.value70()
		local ipairs_2 = ipairs
		local value22 = t1.value2
		local t2 = {}

		for _, player in ipairs_2(value22.GetPlayers(value22)) do
			if player ~= t1.value3 then
				table.insert(t2, player)
			end
		end

		return t2
	end
	function t1.value71(p27)
		local t3 = {}
		local t4 = {}

		for _, descendant in ipairs(p27.GetDescendants(p27)) do
			table.insert(t3, descendant)
			descendant.SetAttribute(descendant, "TempSyncID", #t3)
		end

		local t5 = {}

		for _, descendant in ipairs(p27.GetDescendants(p27)) do
			if descendant:IsA("LuaSourceContainer") or (descendant:IsA("Sound") or (descendant:IsA("ParticleEmitter") or (descendant:IsA("Trail") or (descendant:IsA("Beam") or (descendant:IsA("Attachment") or descendant:IsA("Light")))))) then
				t5[descendant] = descendant.Archivable
				descendant.Archivable = false
			end
		end

		local Archivable = p27.Archivable

		p27.Archivable = true

		local clone = nil

		local function v135()
			clone = p27:Clone()
		end

		clone = nil
		pcall(v135)
		p27.Archivable = Archivable

		local v136, v137, v138 = ipairs(t3)
		local v139 = clone

		while true do
			local v140

			v138, v140 = v136(v137, v138)

			if not v138 then
				break
			end

			v140:SetAttribute("TempSyncID", nil)
		end

		local v141, v142, v143 = pairs(t5)

		while true do
			local v144

			v143, v144 = v141(v142, v143)

			if not v143 then
				break
			end

			local Parent

			if v143 then
				Parent = v143.Parent
			else
				Parent = v143
			end

			if Parent then
				v143.Archivable = v144
			end
		end

		if v139 then
			for _, descendant in ipairs(v139.GetDescendants(v139)) do
				local attribute = descendant:GetAttribute("TempSyncID")

				if attribute then
					local v149 = t3[attribute]

					if v149 then
						t4[v149] = descendant
					end

					descendant:SetAttribute("TempSyncID", nil)
				end
			end

			return v139, t4
		else
			return nil, {}
		end
	end

	local function v150(p28)
		if not p28:IsA("BasePart") or p28.Transparency >= 1 then
			return false
		end

		local Size = p28.Size

		if (Size.X < 0.1 or Size.Y < 0.1) and true or Size.Z < 0.1 then
			return false
		end

		local Parent = p28.Parent

		while true do
			local v153

			if Parent then
				v153 = Parent ~= t1.value1
			else
				v153 = Parent
			end

			if not v153 then
				return true
			end

			if t1.value64[Parent] then
				return false
			end

			Parent = Parent.Parent
		end
	end
	local function v154(p29, p30)
		if t1.value60[p29] then
			return
		end

		local Archivable = p29.Archivable

		p29.Archivable = true

		local ok, result = pcall(function()
			return p29:Clone()
		end)

		p29.Archivable = Archivable

		if not (ok and result) then
			return
		end

		result.Parent = p30
		result.Anchored = true

		local GetDescendants = result.GetDescendants

		result.CanCollide = false

		for _, v in ipairs(GetDescendants(result)) do
			if v:IsA("LuaSourceContainer") or (v:IsA("Sound") or v:IsA("ParticleEmitter") or (v:IsA("Trail") or v:IsA("Beam"))) then
				v:Destroy()
			elseif v:IsA("BasePart") then
				v.Anchored = true
				v.CanCollide = false
			end
		end

		t1.value60[p29] = result
	end
	local function v161(p31)
		t1.value62 = t1.value62 + 1

		local value62 = t1.value62

		for _, v in pairs(t1.value60) do
			if v then
				v:Destroy()
			end
		end

		table.clear(t1.value60)
		p31:ClearAllChildren()
		task.spawn(function()
			local descendants = t1.value1:GetDescendants()
			local n1 = 0

			for _, descendant in ipairs(descendants) do
				if not t1.value56 or value62 ~= t1.value62 then
					return
				end

				local isBasePart = descendant:IsA("BasePart")

				if isBasePart then
					isBasePart = v150(descendant)
				end

				if isBasePart then
					v154(descendant, p31)
				end

				n1 = n1 + 1

				if n1 >= 150 then
					task.wait()
					n1 = 0
				end
			end
		end)
	end
	local function v170(p32)
		local v171 = t1.value42[p32]

		if not v171 then
			return
		end

		if v171.clone then
			v171.clone:Destroy()
		end

		for _, connection in ipairs(v171.connections) do
			if connection then
				connection:Disconnect()
			end
		end

		t1.value42[p32] = nil
	end
	local function v174(p33, p34, p35)
		local v175, v176, v177 = pairs(t1.value42)

		while true do
			v177 = v175(v176, v177)

			if not v177 then
				break
			end

			v170(v177)
		end

		table.clear(t1.value42)

		if p33 then
			return
		end

		for _, v in pairs(t1.value60) do
			if v then
				v:Destroy()
			end
		end

		table.clear(t1.value60)

		if p35 then
			p35:ClearAllChildren()
		end

		if not p34 then
			return
		end

		p34.CFrame = t1.value68
	end

	t1.value59 = nil

	function t1.value59(p36, p37, p38)
		if not t1.value56 then
			return
		end

		local Character = p36.Character

		if not Character then
			return
		end

		local v181, v182 = t1.value71(Character)

		if not v181 then
			return
		end

		if p37 then
			local Head = v181:FindFirstChild("Head")

			if Head then
				Head.Transparency = 1
			end

			for _, child in ipairs(v181:GetChildren()) do
				if child:IsA("Accessory") then
					local Handle = child:FindFirstChild("Handle")

					if Handle then
						Handle.Transparency = 1
					end
				end
			end
		end

		v181.Parent = p38

		local t6 = {}
		local t7 = {
			clone = v181,
			connections = t6,
			realParts = {},
			cloneParts = {},
			instanceMap = v182
		}

		for k, v in pairs(v182) do
			if k:IsA("BasePart") then
				v.CanCollide = false
				v.Anchored = true

				local realParts = t7.realParts

				table.insert(realParts, k)

				local cloneParts = t7.cloneParts

				table.insert(cloneParts, v)
			end
		end

		local function v193(descendant)
			task.defer(function()
				if not (t1.value56 and (t7.clone and descendant.Parent)) then
					return
				end

				if t7.instanceMap[descendant] then
					return
				end

				local clone = t7.instanceMap[descendant.Parent] or t7.clone
				local Archivable = descendant.Archivable

				descendant.Archivable = true

				local ok, result = pcall(function()
					return descendant:Clone()
				end)

				descendant.Archivable = Archivable

				if not (ok and result) then
					return
				end

				result.Parent = clone
				t7.instanceMap[descendant] = result

				if descendant:IsA("BasePart") then
					result.CanCollide = false
					result.Anchored = true

					local realParts = t7.realParts
					local v199 = descendant

					table.insert(realParts, v199)

					local cloneParts = t7.cloneParts

					table.insert(cloneParts, result)
				end

				for _, descendant2 in ipairs(result:GetDescendants()) do
					if descendant2:IsA("LuaSourceContainer") or (descendant2:IsA("Sound") or (descendant2:IsA("ParticleEmitter") or (descendant2:IsA("Trail") or descendant2:IsA("Beam")))) then
						descendant2:Destroy()
					elseif descendant2:IsA("BasePart") then
						descendant2.Anchored = true
						descendant2.CanCollide = false
					end
				end
			end)
		end

		table.insert(t6, Character.DescendantAdded:Connect(v193))

		local CharacterAdded = p36.CharacterAdded

		local function v204()
			if not t1.value56 then
				return
			end

			v170(p36)
			task.spawn(function()
				task.wait(0.2)

				local value56 = t1.value56

				if value56 then
					value56 = p36.Character
				end

				if not value56 then
					return
				end

				t1.value59(p36, p36 == t1.value58, p38)
			end)
		end

		table.insert(t6, CharacterAdded:Connect(v204))
		t1.value42[p36] = t7
	end
	function t1.value72(p39, p40)
		local v206, v207, v208 = pairs(t1.value42)

		while true do
			v208 = v206(v207, v208)

			if not v208 then
				break
			end

			if v208 and (v208.Parent and (v208.Character and v208.Character:FindFirstChild("Head"))) then
				if (v208.Character.Head.Position - p39).Magnitude >= 40 then
					v170(v208)
				end
			else
				v170(v208)
			end
		end

		local ipairs_2 = ipairs
		local value22 = t1.value2

		for _, player in ipairs_2(value22.GetPlayers(value22)) do
			local Character = player.Character

			if Character then
				Character = Character:FindFirstChild("Head")
			end

			if Character then
				Character = (Character.Position - p39).Magnitude < 30
			end

			if Character and not t1.value42[player] then
				t1.value59(player, player == t1.value58, p40)
			end
		end
	end
	function t1.value73()
		for _, v in pairs(t1.value42) do
			local realParts = v.realParts
			local cloneParts = v.cloneParts

			if realParts then
				for i = #realParts, 1, -1 do
					local v219 = realParts[i]
					local v220 = cloneParts[i]
					local v221 = false
					local Parent

					if v219 then
						Parent = v219.Parent

						if Parent then
							if v220 then
								Parent = v220.Parent
							else
								Parent = v220
							end
						end
					else
						Parent = v219
					end

					if Parent then
						v221 = pcall(function()
							v220.CFrame = v219.CFrame
						end)
					end

					if not v221 then
						if v220 then
							pcall(function()
								v220:Destroy()
							end)
						end

						table.remove(realParts, i)
						table.remove(cloneParts, i)
					end
				end
			end
		end
	end

	t1.value74 = nil

	function t1.value74(p41, p42, p43, p44, p45)
		if t1.value57 then
			t1.value57:Disconnect()
			t1.value57 = nil
		end

		v174(true, p44, p45)

		if not p41 or p41 == t1.value3 then
			t1.value58 = nil
			t1.value61 = false
			p42.Text = "Spectating: None"

			return
		end

		t1.value58 = p41
		p42.Text = "Spectating: " .. t1.value58.DisplayName
		t1.value61 = false

		local Character = t1.value58.Character

		if Character then
			Character = Character:FindFirstChild("Head")
		end

		if Character then
			task.spawn(t1.value72, Character.Position, p43)
		end

		t1.value57 = t1.value4.RenderStepped:Connect(function()
			if not t1.value56 then
				return
			end

			if not (t1.value58 and t1.value58.Parent) then
				t1.value74(nil, p42, p43, p44, p45)

				return
			end

			local Character2 = t1.value58.Character
			local Head

			if Character2 then
				Head = Character2:FindFirstChild("Head")
			else
				Head = Character2
			end

			if Head then
				t1.value61 = true

				local Head2 = Character2.Head

				t1.value73()

				if p44 then
					p44.CFrame = Head2.CFrame * t1.value69

					return
				else
					return
				end
			end

			if not t1.value61 then
				return
			end

			v174(true, p44, p45)
		end)
	end

	t1.value75 = nil

	function t1.value75(p46, p47, p48, p49, p50)
		local v227 = t1.value70()

		if #v227 == 0 then
			t1.value74(nil, p47, p48, p49, p50)

			return
		end

		local n2 = 0

		if not t1.value58 then
			v258 = n2 + p46
			v259 = #v227 < v258 and 1 or (v258 < 1 and #v227 or v258)
			t1.value74(v227[v259], p47, p48, p49, p50)

			return
		end

		for i, v in ipairs(v227) do
			if v == t1.value58 then
				n2 = i

				break
			end
		end

		local v231 = n2 + p46
		local v232 = #v227 < v231 and 1 or (v231 < 1 and #v227 or v231)

		t1.value74(v227[v232], p47, p48, p49, p50)
	end
	function t1.value76(p51)
		t1.value56 = p51

		if p51 then
			local PlayerGui = t1.value3:WaitForChild("PlayerGui")

			if PlayerGui:FindFirstChild("MiniSpectateGUI") then
				PlayerGui.MiniSpectateGUI:Destroy()
			end

			t1.value65 = Instance.new("ScreenGui")
			t1.value65.Name = "MiniSpectateGUI"
			t1.value65.ResetOnSpawn = false
			t1.value65.Parent = PlayerGui

			local Frame = Instance.new("Frame")

			Frame.Name = "MainFrame"
			Frame.Size = UDim2.new(0, 260, 0, 160)
			Frame.Position = UDim2.new(0.5, -130, 0.2, 0)
			Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
			Frame.BorderSizePixel = 1
			Frame.Active = true
			Frame.Parent = t1.value65

			local Frame2 = Instance.new("Frame")

			Frame2.Name = "TopBar"
			Frame2.Size = UDim2.new(1, 0, 0, 22)
			Frame2.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
			Frame2.BorderSizePixel = 0
			Frame2.Parent = Frame

			local Frame3 = Instance.new("Frame")

			Frame3.Name = "Divider"
			Frame3.Size = UDim2.new(1, 0, 0, 1)
			Frame3.Position = UDim2.new(0, 0, 1, 0)
			Frame3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Frame3.BorderSizePixel = 0
			Frame3.Parent = Frame2

			local TextLabel = Instance.new("TextLabel")

			TextLabel.Name = "PlayerNameLabel"
			TextLabel.Size = UDim2.new(1, 0, 1, 0)
			TextLabel.BackgroundTransparency = 1
			TextLabel.Text = "Spectating: None"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.Font = Enum.Font.SourceSansBold
			TextLabel.TextSize = 13
			TextLabel.Parent = Frame2

			local ViewportFrame = Instance.new("ViewportFrame")

			ViewportFrame.Name = "Viewport"
			ViewportFrame.Size = UDim2.new(1, 0, 1, -23)
			ViewportFrame.Position = UDim2.new(0, 0, 0, 23)
			ViewportFrame.BackgroundTransparency = 1
			ViewportFrame.BorderSizePixel = 0
			ViewportFrame.Parent = Frame
			ViewportFrame.Ambient = Color3.fromRGB(255, 255, 255)
			ViewportFrame.LightColor = Color3.fromRGB(255, 255, 255)
			ViewportFrame.LightDirection = Vector3.new(0, -1, 0)

			local Camera = Instance.new("Camera")

			Camera.FieldOfView = 75
			ViewportFrame.CurrentCamera = Camera
			Camera.Parent = ViewportFrame

			local Folder = Instance.new("Folder")

			Folder.Name = "ClonedMap"
			Folder.Parent = ViewportFrame

			local TextButton = Instance.new("TextButton")

			TextButton.Name = "LeftBtn"
			TextButton.Size = UDim2.new(0, 20, 0, 20)
			TextButton.Position = UDim2.new(0, 10, 1, -25)
			TextButton.BackgroundTransparency = 1
			TextButton.BorderSizePixel = 0
			TextButton.Text = "<"
			TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextButton.TextStrokeTransparency = 0.5
			TextButton.Font = Enum.Font.SourceSansBold
			TextButton.TextSize = 20
			TextButton.ZIndex = 10
			TextButton.Parent = Frame

			local TextButton2 = Instance.new("TextButton")

			TextButton2.Name = "ZBtn"
			TextButton2.Size = UDim2.new(0, 20, 0, 20)
			TextButton2.Position = UDim2.new(0.5, -10, 1, -25)
			TextButton2.BackgroundTransparency = 1
			TextButton2.BorderSizePixel = 0
			TextButton2.Text = "z"
			TextButton2.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton2.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextButton2.TextStrokeTransparency = 0.5
			TextButton2.Font = Enum.Font.SourceSansBold
			TextButton2.TextSize = 20
			TextButton2.ZIndex = 10
			TextButton2.Parent = Frame

			local TextButton3 = Instance.new("TextButton")

			TextButton3.Name = "RightBtn"
			TextButton3.Size = UDim2.new(0, 20, 0, 20)
			TextButton3.Position = UDim2.new(1, -30, 1, -25)
			TextButton3.BackgroundTransparency = 1
			TextButton3.BorderSizePixel = 0
			TextButton3.Text = ">"
			TextButton3.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextButton3.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
			TextButton3.TextStrokeTransparency = 0.5
			TextButton3.Font = Enum.Font.SourceSansBold
			TextButton3.TextSize = 20
			TextButton3.ZIndex = 10
			TextButton3.Parent = Frame

			local function v244(p52)
				if not p52 then
					return
				end

				t1.value64[p52] = true
			end
			local function v245(p53)
				if not p53 then
					return
				end

				t1.value64[p53] = nil
			end
			local function v246(p54)
				if not p54.Character then
					v277 = t1.value66
					v278 = p54.CharacterAdded
					v279 = v244
					table.insert(v277, v278:Connect(v279))
					v280 = t1.value66
					v281 = p54.CharacterRemoving
					v282 = v245
					table.insert(v280, v281:Connect(v282))

					return
				end

				v244(p54.Character)

				local value66 = t1.value66
				local CharacterAdded = p54.CharacterAdded
				local v249 = v244

				table.insert(value66, CharacterAdded:Connect(v249))

				local value662 = t1.value66
				local CharacterRemoving = p54.CharacterRemoving
				local v252 = v245

				table.insert(value662, CharacterRemoving:Connect(v252))
			end

			for _, player in ipairs(t1.value2:GetPlayers()) do
				v246(player)
			end

			local value66 = t1.value66
			local PlayerAdded2 = t1.value2.PlayerAdded

			table.insert(value66, PlayerAdded2:Connect(v246))

			local value662 = t1.value66
			local PlayerRemoving = t1.value2.PlayerRemoving

			local function v260(p55)
				local Character = p55.Character and p55.Character

				if not Character then
					v170(p55)

					return
				end

				t1.value64[Character] = nil
				v170(p55)
			end

			table.insert(value662, PlayerRemoving:Connect(v260))
			TextButton.MouseButton1Click:Connect(function()
				t1.value75(-1, TextLabel, ViewportFrame, Camera, Folder)
			end)

			local function v261()
				t1.value75(1, TextLabel, ViewportFrame, Camera, Folder)
			end

			TextButton2.MouseButton1Click:Connect(v261)

			local function v262()
				t1.value75(1, TextLabel, ViewportFrame, Camera, Folder)
			end

			TextButton3.MouseButton1Click:Connect(v262)
			table.insert(t1.value66, t1.value8.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				if input.KeyCode ~= Enum.KeyCode.Z then
					return
				end

				local v263 = TextLabel
				local v264 = ViewportFrame
				local v265 = Camera
				local v266 = Folder

				t1.value75(1, v263, v264, v265, v266)
			end))

			local value663 = t1.value66
			local DescendantAdded = t1.value1.DescendantAdded

			local function v269(p56)
				local isBasePart = p56:IsA("BasePart")

				if isBasePart then
					isBasePart = v150(p56)
				end

				if not isBasePart then
					return
				end

				v154(p56, Folder)
			end

			table.insert(value663, DescendantAdded:Connect(v269))

			local value664 = t1.value66
			local DescendantRemoving = t1.value1.DescendantRemoving

			local function v273(p57)
				local isBasePart = p57:IsA("BasePart") and t1.value60[p57]

				if not isBasePart then
					return
				end

				pcall(function()
					isBasePart:Destroy()
				end)
				t1.value60[p57] = nil
			end

			table.insert(value664, DescendantRemoving:Connect(v273))

			local u275 = nil
			local u276 = nil
			local Position = nil
			local Position2 = nil

			Frame.InputBegan:Connect(function(input)
				if not (input.UserInputType == Enum.UserInputType.MouseButton1 and true or input.UserInputType == Enum.UserInputType.Touch) then
					return
				end

				u275 = true
				Position = input.Position
				Position2 = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState ~= Enum.UserInputState.End then
						return
					end

					u275 = false
				end)
			end)
			Frame.InputChanged:Connect(function(input)
				if not (input.UserInputType == Enum.UserInputType.MouseMovement and true or input.UserInputType == Enum.UserInputType.Touch) then
					return
				end

				u276 = input
			end)
			table.insert(t1.value66, t1.value8.InputChanged:Connect(function(input)
				local v283

				if input == u276 then
					v283 = u275
				else
					v283 = false
				end

				if not v283 then
					return
				end

				local v284 = input.Position - Position

				Frame.Position = UDim2.new(Position2.X.Scale, Position2.X.Offset + v284.X, Position2.Y.Scale, Position2.Y.Offset + v284.Y)
			end))
			task.spawn(function()
				while true do
					local value56 = t1.value56

					if value56 then
						value56 = task.wait(0.5)
					end

					if not value56 then
						return
					end

					local value58 = t1.value58

					if value58 then
						value58 = t1.value58.Parent
					end

					if value58 then
						local Character = t1.value58.Character

						if Character then
							Character = Character:FindFirstChild("Head")
						end

						if Character then
							t1.value72(Character.Position, ViewportFrame)
						end
					else
						task.wait(1)
					end
				end
			end)
			v161(Folder)
			t1.value75(1, TextLabel, ViewportFrame, Camera, Folder)
		else
			if t1.value65 then
				pcall(function()
					t1.value65:Destroy()
				end)
				t1.value65 = nil
			end

			if t1.value57 then
				local function v285()
					t1.value57:Disconnect()
				end

				pcall(v285)
				t1.value57 = nil
			end

			for _, v in ipairs(t1.value66) do
				if v then
					pcall(function()
						v:Disconnect()
					end)
				end
			end

			table.clear(t1.value66)
			v174(false, nil, nil)
			table.clear(t1.value64)
		end
	end
	function t1.value77(p58)
		if not (p58 and p58:IsA("GuiObject")) then
			return
		end

		if not (p58:IsA("TextLabel") or (p58:IsA("TextButton") or p58:IsA("TextBox"))) then
			return
		end

		local ok, result = pcall(function()
			return p58.Text
		end)

		if not ok or (not result or result == "") then
			return
		end

		local v289 = false
		local text

		if t1.value23 then
			if result:find(t1.value17, 1, true) then
				text = result:gsub(t1.value17, t1.value20)
				v289 = true
			end

			local value18 = t1.value18

			if value18 then
				value18 = text:find(t1.value18, 1, true)
			end

			if value18 then
				text = text:gsub(t1.value18, t1.value20)
				v289 = true
			end
		end

		if t1.value27 then
			for k, v in pairs(t1.value32) do
				local spoofName = v.spoofName

				if text:find(k, 1, true) then
					text = text:gsub(k, spoofName)
					v289 = true
				end

				local DisplayName = t1.value33[k]

				if DisplayName then
					DisplayName = DisplayName.DisplayName
				end

				local pos

				if DisplayName then
					pos = text:find(DisplayName, 1, true)
				else
					pos = DisplayName
				end

				if pos then
					text = text:gsub(DisplayName, spoofName)
					v289 = true
				end
			end
		end

		if v289 then
			if not t1.value26[p58] then
				t1.value26[p58] = result
			end

			pcall(function()
				p58.Text = text
			end)
		else
			local v297 = t1.value26[p58]

			if v297 then
				v297 = result ~= t1.value26[p58]
			end

			if not v297 then
				return
			end

			local v298 = t1.value26[p58]
			local v299 = false
			local value23 = t1.value23

			if value23 then
				value23 = v298:find(t1.value17, 1, true)

				if not value23 then
					value23 = t1.value18

					if value23 then
						value23 = v298:find(t1.value18, 1, true)
					end
				end
			end

			local v301 = value23 and true or v299
			local value27 = t1.value27

			if value27 then
				value27 = not v301
			end

			if value27 then
				for k in pairs(t1.value32) do
					local DisplayName = t1.value33[k]

					if DisplayName then
						DisplayName = DisplayName.DisplayName
					end

					local pos = v298:find(k, 1, true)

					if pos then
						DisplayName = pos
					elseif DisplayName then
						DisplayName = v298:find(DisplayName, 1, true)
					end

					if DisplayName then
						v301 = true

						break
					end
				end
			end

			if v301 then
				return
			end

			pcall(function()
				p58.Text = v298
			end)
		end
	end

	t1.value78 = nil

	function t1.value78(p59)
		if not p59 then
			return
		end

		if not (p59:IsA("TextLabel") or (p59:IsA("TextButton") or p59:IsA("TextBox"))) then
			return
		end

		t1.value77(p59)

		local function v306()
			p59:GetPropertyChangedSignal("Text"):Connect(function()
				t1.value77(p59)
			end)
		end

		pcall(v306)
	end

	t1.value63 = false

	function t1.value79()
		if not t1.value63 then
			t1.value63 = true

			local function v307()
				local v308, v309, v310 = ipairs(t1.value5:GetDescendants())

				while true do
					local v311

					v310, v311 = v308(v309, v310)

					if not v310 then
						break
					end

					t1.value78(v311)
				end

				t1.value5.DescendantAdded:Connect(t1.value78)

				local PlayerGui = t1.value3:WaitForChild("PlayerGui", 5)

				if not PlayerGui then
					return
				end

				local GetDescendants = PlayerGui.GetDescendants

				for _, v in ipairs(GetDescendants(PlayerGui)) do
					t1.value78(v)
				end

				PlayerGui.DescendantAdded:Connect(t1.value78)
			end

			pcall(v307)
		end

		for k, v in pairs(t1.value26) do
			local Parent

			if k then
				Parent = k.Parent
			else
				Parent = k
			end

			if Parent then
				pcall(function()
					k.Text = v
				end)
				t1.value77(k)
			end
		end
	end

	t1.value67 = nil

	function t1.value80()
		local v319 = not t1.value23

		if v319 then
			v319 = not t1.value27
		end

		if v319 then
			return
		end

		local function v320()
			local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if not (t1.value67 and t1.value67.Parent) then
				local v322 = t1

				if PlayerGui then
					PlayerGui = PlayerGui:FindFirstChild("PlayerNamesFrame", true)
				end

				v322.value67 = PlayerGui
			end

			local value67 = t1.value67

			if t1.value27 then
				for k, v in pairs(t1.value32) do
					local v326 = t1.value2:FindFirstChild(k)
					local Character

					if v326 then
						Character = v326.Character
					else
						Character = v326
					end

					local Humanoid = Character and v326.Character:FindFirstChildOfClass("Humanoid")

					if Humanoid then
						pcall(function()
							Humanoid.DisplayName = v.spoofName
						end)
					end

					local v329 = value67 and value67:FindFirstChild(k .. "PlayerFrame")

					if v329 then
						local LevelLabel = v329:FindFirstChild("LevelLabel")
						local NameLabel = v329:FindFirstChild("NameLabel")
						local IconLabel = v329:FindFirstChild("IconLabel")

						if LevelLabel then
							local spoofLevel = v.spoofLevel

							LevelLabel.Text = tostring(spoofLevel)
						end

						if NameLabel then
							NameLabel.Text = v.spoofName
						end

						if IconLabel then
							IconLabel.ImageTransparency = 1

							local IconeFakeCorrigido = IconLabel:FindFirstChild("IconeFakeCorrigido")

							if not IconeFakeCorrigido then
								IconeFakeCorrigido = Instance.new("ImageLabel")
								IconeFakeCorrigido.Name = "IconeFakeCorrigido"
								IconeFakeCorrigido.BackgroundTransparency = 1
								IconeFakeCorrigido.AnchorPoint = Vector2.new(0.5, 0.5)
								IconeFakeCorrigido.Position = UDim2.new(0.5, 0, 0.5, 0)
								IconeFakeCorrigido.ZIndex = IconLabel.ZIndex + 1
								IconeFakeCorrigido.Parent = IconLabel
							end

							IconeFakeCorrigido.Image = v.spoofIcon
							IconeFakeCorrigido.Visible = true
							IconeFakeCorrigido.ScaleType = Enum.ScaleType.Fit

							if v.spoofIcon == t1.value25.QA and true or v.spoofIcon == t1.value25.CON then
								IconeFakeCorrigido.Size = UDim2.new(1.35, 0, 1.35, 0)
							else
								IconeFakeCorrigido.Size = UDim2.new(1, 0, 1, 0)
							end
						end
					end
				end
			end

			if not t1.value23 then
				return
			end

			local Character = t1.value3.Character

			if Character then
				local Humanoid = Character:FindFirstChildOfClass("Humanoid")

				if Humanoid then
					pcall(function()
						Humanoid.DisplayName = t1.value20
					end)
				end

				local Head = Character:FindFirstChild("Head")

				if Head then
					for _, child in ipairs(Head.GetChildren(Head)) do
						if child:IsA("BillboardGui") then
							for _, descendant in ipairs(child.GetDescendants(child)) do
								t1.value78(descendant)
							end
						end
					end
				end
			end

			if not value67 then
				return
			end

			local v342 = value67:FindFirstChild(t1.value3.Name .. "PlayerFrame")

			if not v342 then
				return
			end

			local LevelLabel = v342:FindFirstChild("LevelLabel")
			local NameLabel = v342:FindFirstChild("NameLabel")
			local IconLabel = v342:FindFirstChild("IconLabel")
			local v346

			if LevelLabel then
				if t1.value19 == "1" then
					local Text = LevelLabel.Text
					local value21 = t1.value21

					v346 = Text ~= tostring(value21)
				else
					v346 = false
				end
			else
				v346 = LevelLabel
			end

			if v346 then
				t1.value19 = LevelLabel.Text
			end

			if LevelLabel then
				local value21 = t1.value21

				LevelLabel.Text = tostring(value21)
			end

			if NameLabel then
				NameLabel.Text = t1.value20
			end

			if IconLabel then
				IconLabel.ImageTransparency = 1

				local IconeFakeCorrigido = IconLabel:FindFirstChild("IconeFakeCorrigido")

				if not IconeFakeCorrigido then
					IconeFakeCorrigido = Instance.new("ImageLabel")
					IconeFakeCorrigido.Name = "IconeFakeCorrigido"
					IconeFakeCorrigido.BackgroundTransparency = 1
					IconeFakeCorrigido.AnchorPoint = Vector2.new(0.5, 0.5)
					IconeFakeCorrigido.Position = UDim2.new(0.5, 0, 0.5, 0)
					IconeFakeCorrigido.ZIndex = IconLabel.ZIndex + 1
					IconeFakeCorrigido.Parent = IconLabel
				end

				IconeFakeCorrigido.Image = t1.value22
				IconeFakeCorrigido.Visible = true
				IconeFakeCorrigido.ScaleType = Enum.ScaleType.Fit

				if t1.value22 == t1.value25.QA and true or t1.value22 == t1.value25.CON then
					IconeFakeCorrigido.Size = UDim2.new(1.35, 0, 1.35, 0)
				else
					IconeFakeCorrigido.Size = UDim2.new(1, 0, 1, 0)
				end
			end

			v342.LayoutOrder = -t1.value21
		end

		pcall(v320)
	end

	local function v351(p60)
		if not p60 then
			return
		end

		t1.value32[p60] = nil

		local v352 = t1.value33[p60]
		local v353 = t1.value2:FindFirstChild(p60)
		local Character

		if v353 then
			Character = v353.Character

			if Character then
				Character = v352
			end
		else
			Character = v353
		end

		local Humanoid = Character and v353.Character:FindFirstChildOfClass("Humanoid")

		if Humanoid then
			pcall(function()
				Humanoid.DisplayName = v352.DisplayName
			end)
		end

		local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

		if PlayerGui then
			PlayerGui = PlayerGui:FindFirstChild("PlayerNamesFrame", true)
		end

		local v357 = PlayerGui and PlayerGui:FindFirstChild(p60 .. "PlayerFrame")

		if not v357 then
			t1.value79()

			return
		end

		local IconLabel = v357:FindFirstChild("IconLabel")
		local NameLabel = v357:FindFirstChild("NameLabel")
		local LevelLabel = v357:FindFirstChild("LevelLabel")

		if IconLabel then
			IconLabel.ImageTransparency = 0

			local IconeFakeCorrigido = IconLabel:FindFirstChild("IconeFakeCorrigido")

			if IconeFakeCorrigido then
				IconeFakeCorrigido.Visible = false
			end
		end

		if NameLabel and v352 then
			NameLabel.Text = v352.Name
		end

		if not (LevelLabel and v352) then
			t1.value79()

			return
		end

		LevelLabel.Text = v352.Level
		t1.value79()
	end

	function t1.value81()
		if t1.value28 == "Select Player" and true or t1.value28 == "" then
			return
		end

		local v362 = t1.value2:FindFirstChild(t1.value28)

		if not v362 then
			return
		end

		if not t1.value33[v362.Name] then
			local DisplayName = v362.DisplayName
			local s1 = "1"
			local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if PlayerGui then
				PlayerGui = PlayerGui:FindFirstChild("PlayerNamesFrame", true)
			end

			if PlayerGui then
				local v366 = PlayerGui:FindFirstChild(v362.Name .. "PlayerFrame")

				if v366 then
					local NameLabel = v366:FindFirstChild("NameLabel")
					local LevelLabel = v366:FindFirstChild("LevelLabel")

					if NameLabel then
						DisplayName = NameLabel.Text
					end

					if LevelLabel then
						s1 = LevelLabel.Text
					end
				end
			end

			t1.value33[v362.Name] = {
				Name = DisplayName,
				Level = s1,
				DisplayName = v362.DisplayName
			}
		end

		t1.value32[v362.Name] = {
			spoofName = t1.value29,
			spoofLevel = t1.value30,
			spoofIcon = t1.value31
		}

		if not t1.value27 then
			return
		end

		t1.value79()
	end

	t1.value82 = false
	t1.value48 = {}
	t1.value83 = nil
	t1.value54 = nil

	function t1.value84(p61)
		local ipairs_2 = ipairs
		local value22 = t1.value2

		for _, player in ipairs_2(value22.GetPlayers(value22)) do
			local Character = player.Character

			if Character then
				Character = p61:IsDescendantOf(player.Character)
			end

			if Character then
				return true
			end
		end

		return false
	end

	t1.value85 = nil

	function t1.value85()
		local v374, Parent

		if not t1.value54 then
			for i = #t1.value48, 1, -1 do
				v374 = t1.value48[i]

				if v374 then
					Parent = v374.Parent
				else
					Parent = v374
				end

				if Parent then
					v374:Destroy()
				end
			end

			table.clear(t1.value48)

			return
		end

		task.cancel(t1.value54)
		t1.value54 = nil

		for i = #t1.value48, 1, -1 do
			v374 = t1.value48[i]

			if v374 then
				Parent = v374.Parent
			else
				Parent = v374
			end

			if Parent then
				v374:Destroy()
			end
		end

		table.clear(t1.value48)
	end
	function t1.value86()
		t1.value85()
		task.spawn(function()
			local descendants = (t1.value1:FindFirstChild("Map") or t1.value1):GetDescendants()
			local n3 = 0

			for i = 1, #descendants do
				if not t1.value82 then
					return
				end

				local v381 = descendants[i]
				local isPart = v381:IsA("Part")

				if isPart then
					if v381.Shape == Enum.PartType.Block and v381.Transparency < 0.95 then
						isPart = v381.CanCollide
					else
						isPart = false
					end
				end

				if isPart then
					local Size = v381.Size
					local v384

					if Size.X >= 0.5 and Size.Y >= 0.5 then
						v384 = Size.Z >= 0.5
					else
						v384 = false
					end

					if v384 then
						local v385 = not t1.value84(v381)

						if v385 then
							v385 = not v381:FindFirstChildOfClass("SelectionBox")
						end

						if v385 then
							local SelectionBox = Instance.new("SelectionBox")

							SelectionBox.Color3 = Color3.fromRGB(255, 255, 255)
							SelectionBox.LineThickness = 0.025
							SelectionBox.Adornee = v381
							SelectionBox.Parent = v381

							local value48 = t1.value48

							table.insert(value48, SelectionBox)
						end
					end
				end

				n3 = n3 + 1

				if n3 >= 80 then
					task.wait()
					n3 = 0
				end
			end
		end)
	end

	t1.value87 = false
	t1.value88 = setmetatable({}, {
		__mode = "k"
	})
	t1.value89 = nil
	t1.value90 = nil
	t1.value91 = {
		ComputerTable = true,
		ExitDoor = true,
		SingleDoor = true,
		DoubleDoor = true,
		VentBlock = true,
		InvisibleWall = true,
		OBSpawnPad = true,
		WindowBlock = true,
		FacilitySiren = true
	}
	t1.value92 = nil

	function t1.value92()
		local Parent

		if not t1.value90 then
			for k, v in pairs(t1.value88) do
				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					k.Transparency = v
				end
			end

			table.clear(t1.value88)

			return
		end

		task.cancel(t1.value90)

		for k, v in pairs(t1.value88) do
			if k then
				Parent = k.Parent
			else
				Parent = k
			end

			if Parent then
				k.Transparency = v
			end
		end

		table.clear(t1.value88)
	end
	function t1.value93()
		t1.value92()
		task.spawn(function()
			local descendants = t1.value1:GetDescendants()
			local n4 = 0

			for i = 1, #descendants do
				if not t1.value87 then
					return
				end

				local v396 = descendants[i]
				local v397 = v396:IsA("BasePart") and (v396.Transparency == 1 and not t1.value91[v396.Name])

				if v397 then
					v397 = not t1.value84(v396)
				end

				if v397 then
					t1.value88[v396] = 1
					v396.Transparency = 0.5
					v396.Color = Color3.fromRGB(255, 0, 0)
				end

				n4 = n4 + 1

				if n4 >= 100 then
					task.wait()
					n4 = 0
				end
			end
		end)
	end

	t1.value94 = false
	t1.value95 = nil
	t1.value96 = setmetatable({}, {
		__mode = "k"
	})
	t1.value97 = {
		jumpbutton = true,
		crouch = true,
		crawl = true,
		interact = true,
		action = true,
		climb = true,
		shift = true,
		joystick = true,
		thumbstick = true,
		outerimage = true,
		innerimage = true
	}

	local function v398(p62)
		if not t1.value96[p62] then
			local value96 = t1.value96
			local isImageLabel = not p62:IsA("ImageButton") and p62:IsA("ImageLabel")

			if isImageLabel then
				isImageLabel = p62.ImageTransparency
			end

			local v401 = isImageLabel or nil
			local isGuiObject = p62:IsA("GuiObject")

			if isGuiObject then
				isGuiObject = p62.BackgroundTransparency
			end

			local v403 = isGuiObject or nil
			local isTextButton = p62:IsA("TextButton")

			if not isTextButton then
				if p62:IsA("TextLabel") then
					isTextButton = p62.TextTransparency or nil
				else
					isTextButton = nil
				end
			end

			local isTextLabel = not p62:IsA("TextButton") and p62:IsA("TextLabel")

			if isTextLabel then
				isTextLabel = p62.TextStrokeTransparency
			end

			value96[p62] = {
				ImageTransparency = v401,
				BackgroundTransparency = v403,
				TextTransparency = isTextButton,
				TextStrokeTransparency = isTextLabel or nil
			}
		end

		if p62:IsA("ImageButton") or p62:IsA("ImageLabel") then
			p62.ImageTransparency = 1
			p62.BackgroundTransparency = 1

			return
		end

		if p62:IsA("TextButton") or p62:IsA("TextLabel") then
			p62.TextTransparency = 1
			p62.TextStrokeTransparency = 1
			p62.BackgroundTransparency = 1

			return
		end

		if not p62:IsA("GuiObject") then
			return
		end

		p62.BackgroundTransparency = 1
	end
	local function v406(p63)
		if not (p63 and p63.Parent) then
			return
		end

		local v407 = p63.Name:lower()
		local v408 = false

		for k in pairs(t1.value97) do
			if v407:find(k, 1, true) then
				v408 = true

				break
			end
		end

		if not v408 then
			return
		end

		v398(p63)

		for _, descendant in ipairs(p63:GetDescendants()) do
			v398(descendant)
		end
	end

	function t1.value98()
		for k, v in pairs(t1.value96) do
			local Parent

			if k then
				Parent = k.Parent
			else
				Parent = k
			end

			if Parent then
				pcall(function()
					if v.ImageTransparency and k:IsA("ImageButton") or k:IsA("ImageLabel") then
						k.ImageTransparency = v.ImageTransparency
					end

					local BackgroundTransparency = v.BackgroundTransparency

					if BackgroundTransparency then
						BackgroundTransparency = k:IsA("GuiObject")
					end

					if BackgroundTransparency then
						k.BackgroundTransparency = v.BackgroundTransparency
					end

					if v.TextTransparency and k:IsA("TextButton") or k:IsA("TextLabel") then
						k.TextTransparency = v.TextTransparency
					end

					if not (v.TextStrokeTransparency and k:IsA("TextButton") or k:IsA("TextLabel")) then
						return
					end

					k.TextStrokeTransparency = v.TextStrokeTransparency
				end)
			end
		end

		table.clear(t1.value96)
	end

	t1.value99 = {
		ThumbstickEnabled = false,
		ThumbstickX = 0,
		ThumbstickY = 0,
		JumpEnabled = false,
		JumpX = 0,
		JumpY = 0,
		JumpScale = 1,
		EEnabled = false,
		CEnabled = false,
		EState = {
			X = 0,
			Y = 0,
			Size = 45
		},
		CState = {
			X = 0,
			Y = 0,
			Size = 45
		}
	}
	t1.value100 = nil
	t1.value101 = nil
	t1.value102 = nil
	t1.value103 = nil
	t1.value104 = nil
	t1.value105 = nil
	t1.value106 = nil
	t1.value107 = nil
	t1.value108 = nil
	t1.value109 = nil

	function t1.value110()
		local value108 = t1.value108
		local PlayerGui, TouchGui, TouchControlFrame

		if value108 then
		elseif value108 then
			return t1.value108, t1.value109
		else
			PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if PlayerGui then
				TouchGui = PlayerGui:FindFirstChild("TouchGui")

				if TouchGui then
					TouchControlFrame = TouchGui:FindFirstChild("TouchControlFrame")

					if TouchControlFrame then
						t1.value108 = TouchControlFrame:FindFirstChild("JumpButton")
						t1.value109 = TouchControlFrame:FindFirstChild("ThumbstickFrame") or TouchControlFrame:FindFirstChild("DynamicThumbstickFrame")

						return t1.value108, t1.value109
					else
						return nil, nil
					end
				else
					return nil, nil
				end
			else
				return nil, nil
			end
		end

		value108 = t1.value108.Parent and t1.value109

		if value108 then
		elseif value108 then
			return t1.value108, t1.value109
		else
			PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if PlayerGui then
				TouchGui = PlayerGui:FindFirstChild("TouchGui")

				if TouchGui then
					TouchControlFrame = TouchGui:FindFirstChild("TouchControlFrame")

					if TouchControlFrame then
						t1.value108 = TouchControlFrame:FindFirstChild("JumpButton")
						t1.value109 = TouchControlFrame:FindFirstChild("ThumbstickFrame") or TouchControlFrame:FindFirstChild("DynamicThumbstickFrame")

						return t1.value108, t1.value109
					else
						return nil, nil
					end
				else
					return nil, nil
				end
			else
				return nil, nil
			end
		end

		value108 = t1.value109.Parent

		if value108 then
			return t1.value108, t1.value109
		else
			PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if PlayerGui then
				TouchGui = PlayerGui:FindFirstChild("TouchGui")

				if TouchGui then
					TouchControlFrame = TouchGui:FindFirstChild("TouchControlFrame")

					if TouchControlFrame then
						t1.value108 = TouchControlFrame:FindFirstChild("JumpButton")
						t1.value109 = TouchControlFrame:FindFirstChild("ThumbstickFrame") or TouchControlFrame:FindFirstChild("DynamicThumbstickFrame")

						return t1.value108, t1.value109
					else
						return nil, nil
					end
				else
					return nil, nil
				end
			else
				return nil, nil
			end
		end
	end

	t1.value111 = nil

	function t1.value111()
		local v420, v421 = t1.value110()
		local v422

		if v420 then
			v422 = not t1.value100
		else
			v422 = v420
		end

		if v422 then
			t1.value100 = v420.Position
			t1.value101 = v420.Size
		end

		local v423

		if v421 then
			v423 = not t1.value102
		else
			v423 = v421
		end

		if not v423 then
			return
		end

		t1.value102 = v421.Position
	end
	function t1.value112()
		t1.value111()

		local _, v425 = t1.value110()

		if not v425 then
			return
		end

		local ThumbstickEnabled = t1.value99.ThumbstickEnabled

		if ThumbstickEnabled then
			ThumbstickEnabled = t1.value102
		end

		if ThumbstickEnabled then
			v425.Position = UDim2.new(t1.value102.X.Scale, t1.value102.X.Offset + t1.value99.ThumbstickX * 2, t1.value102.Y.Scale, t1.value102.Y.Offset + t1.value99.ThumbstickY * 2)

			return
		end

		if not t1.value102 then
			return
		end

		v425.Position = t1.value102
	end
	function t1.value113()
		t1.value111()

		local v427 = t1.value110()

		if not v427 then
			return
		end

		local value100 = t1.value99.JumpEnabled and t1.value100

		if value100 then
			value100 = t1.value101
		end

		if value100 then
			v427.Position = UDim2.new(t1.value100.X.Scale, t1.value100.X.Offset + t1.value99.JumpX * 2, t1.value100.Y.Scale, t1.value100.Y.Offset + t1.value99.JumpY * 2)
			v427.Size = UDim2.new(0, t1.value101.X.Offset * t1.value99.JumpScale, 0, t1.value101.Y.Offset * t1.value99.JumpScale)

			return
		end

		local value1002 = t1.value100

		if value1002 then
			value1002 = t1.value101
		end

		if not value1002 then
			return
		end

		v427.Position = t1.value100
		v427.Size = t1.value101
	end

	t1.value114 = nil
	t1.value115 = nil
	t1.value116 = nil

	function t1.value117(p64)
		local value115 = p64 == "E" and t1.value115

		if value115 then
			value115 = t1.value115.Parent
		end

		if value115 then
			return t1.value115
		end

		local value116 = p64 ~= "C" and (p64 == "Q" and t1.value116)

		if value116 then
			value116 = t1.value116.Parent
		end

		if value116 then
			return t1.value116
		end

		local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

		if not PlayerGui then
			return nil
		end

		if not (t1.value114 and t1.value114.Parent) then
			local ContextActionGui = PlayerGui:FindFirstChild("ContextActionGui")
			local v434 = t1

			if ContextActionGui then
				ContextActionGui = ContextActionGui:FindFirstChild("ContextButtonFrame")
			end

			v434.value114 = ContextActionGui
		end

		local value114 = t1.value114

		if not value114 then
			return nil
		end

		for _, descendant in ipairs(value114.GetDescendants(value114)) do
			local isTextLabel = descendant:IsA("TextLabel")

			if isTextLabel then
				if descendant.Name == "ActionTitle" then
					isTextLabel = descendant.Text == p64
				else
					isTextLabel = false
				end
			end

			if isTextLabel then
				local Parent = descendant.Parent

				while true do
					if true then
						local v440

						if Parent then
							v440 = Parent ~= value114
						else
							v440 = Parent
						end
					end

					if not v477 then
						break
					end

					if Parent.Name == "ContextActionButton" then
						local _ = p64 == "E"
						local _ = p64 == "C" and true or p64 == "Q"

						return Parent
					end

					Parent = Parent.Parent
				end
			end
		end

		return nil
	end
	function t1.value118()
		return t1.value117("C") or t1.value117("Q")
	end
	function t1.value119(p65, p66)
		if not p65 then
			return
		end

		if p66 then
			if t1.value103 then
				return
			else
				t1.value103 = p65.Position
				t1.value104 = p65.Size

				return
			end
		end

		if t1.value105 then
			return
		end

		t1.value105 = p65.Position
		t1.value107 = p65.Size
	end
	function t1.value120(p67, p68, p69)
		if not (p67 and p68) then
			return
		end

		local function v443()
			t1.value119(p67, p69)

			local value103 = p69 and t1.value103 or t1.value105
			local value104 = p69 and t1.value104 or t1.value107

			if not value103 then
				v485 = p68.Size or value104 and value104.X.Offset or 45
				p67.Size = UDim2.fromOffset(v485, v485)

				return
			end

			p67.Position = UDim2.new(value103.X.Scale + p68.X / 10, value103.X.Offset, value103.Y.Scale + p68.Y / 10, value103.Y.Offset)

			local Size = p68.Size or value104 and value104.X.Offset or 45

			p67.Size = UDim2.fromOffset(Size, Size)
		end

		pcall(v443)
	end
	function t1.value121(p70, p71)
		if not p70 then
			return
		end

		local value103 = p71 and t1.value103

		if value103 then
			value103 = t1.value104
		end

		if value103 then
			p70.Position = t1.value103
			p70.Size = t1.value104

			return
		end

		local value105 = not p71 and t1.value105

		if value105 then
			value105 = t1.value107
		end

		if not value105 then
			return
		end

		p70.Position = t1.value105
		p70.Size = t1.value107
	end
	function t1.value122()
		local v449 = t1.value118()

		if not v449 then
			return
		end

		if t1.value99.CEnabled then
			t1.value120(v449, t1.value99.CState, false)

			return
		end

		t1.value121(v449, false)
	end

	t1.value106 = nil

	function t1.value123(p72)
		if p72 then
			local _, v451 = t1.value110()
			local v452

			if v451 then
				v452 = not t1.value106
			else
				v452 = v451
			end

			if not v452 then
				return
			end

			t1.value106 = v451:GetPropertyChangedSignal("Position"):Connect(function()
				local ThumbstickEnabled = t1.value99.ThumbstickEnabled

				if ThumbstickEnabled then
					ThumbstickEnabled = t1.value102
				end

				if not ThumbstickEnabled then
					return
				end

				local uDim2 = UDim2.new(t1.value102.X.Scale, t1.value102.X.Offset + t1.value99.ThumbstickX * 2, t1.value102.Y.Scale, t1.value102.Y.Offset + t1.value99.ThumbstickY * 2)

				if v451.Position == uDim2 then
					return
				end

				v451.Position = uDim2
			end)

			return
		end

		if not t1.value106 then
			return
		end

		t1.value106:Disconnect()
		t1.value106 = nil
	end

	if t1.value7 or t1.value8.TouchEnabled then
		task.spawn(function()
			while task.wait(2.5) do
				if t1.value99.ThumbstickEnabled or (t1.value99.JumpEnabled or (t1.value99.EEnabled or t1.value99.CEnabled)) then
					local function v455()
						t1.value122()

						local v456 = t1.value117("E")

						if not v456 then
							t1.value112()
							t1.value113()

							return
						end

						if t1.value99.EEnabled then
							t1.value120(v456, t1.value99.EState, true)
						else
							t1.value121(v456, true)
						end

						t1.value112()
						t1.value113()
					end

					pcall(v455)
				end
			end
		end)
		t1.value112()
		t1.value113()
		t1.value122()

		local v457 = t1.value117("E")

		if v457 then
			if t1.value99.EEnabled then
				t1.value120(v457, t1.value99.EState, true)
			else
				t1.value121(v457, true)
			end
		end

		t1.value123(t1.value99.ThumbstickEnabled)
	end

	t1.value124 = nil
	Library:CreateSection(Page, "Camera & UI", "Left")
	Library:CreateToggle(Page, "stretch screen", false, function(p73)
		if p73 then
			getgenv().Resolution = {
				[".gg/scripters"] = 0.65
			}

			local CurrentCamera = t1.value1.CurrentCamera

			t1.value124 = t1.value4.RenderStepped:Connect(function()
				CurrentCamera.CFrame = CurrentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
			end)

			return
		end

		if not t1.value124 then
			getgenv().Resolution = {
				[".gg/scripters"] = 1
			}

			return
		end

		t1.value124:Disconnect()
		getgenv().Resolution = {
			[".gg/scripters"] = 1
		}
	end)
	Library:CreateToggle(Page, "Players Cam", false, function(p74)
		t1.value76(p74)
	end)
	Library:CreateToggle(Page, "Cam Blur", false, function(p75)
		v111(p75)
	end)
	t1.value125 = nil
	t1.value125 = Library:CreateToggle(Page, "Hide Buttons (Mobile)", false, function(p76)
		if p76 then
			local v459 = not t1.value7

			if v459 then
				v459 = not t1.value8.TouchEnabled
			end

			if v459 then
				t1.value6("This feature is only available on Touch/Mobile devices!", 3)
				task.spawn(function()
					if not t1.value125 then
						return
					end

					t1.value125.Set(false)
				end)
				t1.value94 = false
			else
				t1.value94 = true

				local PlayerGui = t1.value3:WaitForChild("PlayerGui")

				for _, descendant in ipairs(PlayerGui:GetDescendants()) do
					v406(descendant)
				end

				if t1.value95 then
					t1.value95:Disconnect()
				end

				local function v463(descendant)
					if not t1.value94 then
						return
					end

					v406(descendant)
				end

				t1.value95 = PlayerGui.DescendantAdded:Connect(v463)
			end
		end

		if not t1.value95 then
			t1.value98()

			return
		end

		t1.value95:Disconnect()
		t1.value98()
	end)
	t1.value126 = nil
	t1.value126 = Library:CreateToggle(Page, "Touch Sensitivity", false, function(p77)
		if not p77 then
			return
		end

		local v464 = not t1.value7

		if v464 then
			v464 = not t1.value8.TouchEnabled
		end

		if not v464 then
			return
		end

		t1.value6("This feature is only available on Touch/Mobile devices!", 3)
		task.spawn(function()
			if not t1.value126 then
				return
			end

			t1.value126.Set(false)
		end)
	end)
	Library:CreateSlider(Page, "Sensitivity Value", 1, 100, 10, function(p78)
		t1.value36 = p78 / 10
	end)
	Library:CreateSection(Page, "Visual Environment", "Left")

	local ipairs_2 = ipairs
	local Font_ = Enum.Font
	local t8 = { "Default" }

	for _, v in ipairs_2(Font_.GetEnumItems(Font_)) do
		local v470

		if v.Name == "Unknown" then
			v470 = false
		else
			v470 = v.Name ~= "Legacy"
		end

		if v470 then
			local Name = v.Name

			table.insert(t8, Name)
		end
	end

	Library:CreateDropdown(Page, "Font Changer", t8, "Default", function(p79)
		local function v472(p80)
			if not t1.value16[p80] then
				t1.value16[p80] = p80.FontFace
			end

			if t1.value15 == "Default" then
				local function v473()
					p80.FontFace = t1.value16[p80]
				end

				pcall(v473)

				return
			end

			local v474 = Enum.Font[t1.value15]

			if not v474 then
				return
			end

			pcall(function()
				p80.FontFace = Font.fromEnum(v474)
			end)
		end

		t1.value15 = p79

		for _, descendant in pairs(t1.value3:WaitForChild("PlayerGui"):GetDescendants()) do
			if descendant:IsA("TextLabel") or (descendant:IsA("TextButton") or descendant:IsA("TextBox")) then
				v472(descendant)
			end
		end

		t1.value3:WaitForChild("PlayerGui").DescendantAdded:Connect(function(descendant)
			if not (descendant:IsA("TextLabel") or (descendant:IsA("TextButton") or descendant:IsA("TextBox"))) then
				return
			end

			task.defer(v472, descendant)
		end)
	end)
	Library.CreateToggle(Library, Page, "Hide Leaves (Only Homestead)", false, function(p81)
		if p81 then
			local function v478(descendant)
				if not descendant:IsA("BasePart") or (descendant.Transparency == 1 and true or descendant.Name == "HumanoidRootPart") then
					return
				end

				if descendant.CanCollide then
					return
				end

				local Material = descendant.Material
				local v479 = descendant.Name:lower()
				local Parent = descendant.Parent
				local v481 = false
				local Color, R, G, B

				while true do
					if true then
						local v486

						if Parent then
							v486 = Parent ~= t1.value1
						else
							v486 = Parent
						end
					end

					if not v536 then
						if v481 then
							return
						end

						v537 = v479:find("leaf")

						if not v537 then
							v537 = v479:find("bush")

							if not v537 then
								v537 = v479:find("grass")

								if not v537 then
									v537 = v479:find("tree")

									if not v537 then
										if Material == Enum.Material.Grass or Material == Enum.Material.LeafyGrass then
											v537 = true
										else
											Color = descendant.Color
											R = Color.R
											G = Color.G
											B = Color.B

											if R * 1.1 < G then
												v537 = B * 1.1 < G
											else
												v537 = false
											end
										end
									end
								end
							end
						end

						if not (v537 and not t1.value14[descendant]) then
							return
						end

						t1.value14[descendant] = descendant.Transparency
						descendant.Transparency = 1

						return
					end

					if t1.value34[Parent] then
						break
					end

					Parent = Parent.Parent
				end

				v481 = true

				if v481 then
					return
				end

				local pos = v479:find("leaf")

				if not pos then
					pos = v479:find("bush")

					if not pos then
						pos = v479:find("grass")

						if not pos then
							pos = v479:find("tree")

							if not pos then
								if Material == Enum.Material.Grass or Material == Enum.Material.LeafyGrass then
									pos = true
								else
									Color = descendant.Color
									R = Color.R
									G = Color.G
									B = Color.B

									if R * 1.1 < G then
										pos = B * 1.1 < G
									else
										pos = false
									end
								end
							end
						end
					end
				end

				if not (pos and not t1.value14[descendant]) then
					return
				end

				t1.value14[descendant] = descendant.Transparency
				descendant.Transparency = 1
			end

			task.spawn(function()
				local descendants = t1.value1:GetDescendants()

				for i, descendant in ipairs(descendants) do
					v478(descendant)

					if i % 400 == 0 then
						task.wait()
					end
				end
			end)
			t1.value13 = t1.value1.DescendantAdded:Connect(v478)

			return
		end

		local Parent

		if not t1.value13 then
			for k, v in pairs(t1.value14) do
				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					k.Transparency = v
				end
			end

			table.clear(t1.value14)

			return
		end

		t1.value13:Disconnect()

		for k, v in pairs(t1.value14) do
			if k then
				Parent = k.Parent
			else
				Parent = k
			end

			if Parent then
				k.Transparency = v
			end
		end

		table.clear(t1.value14)
	end)
	Library:CreateToggle(Page, "Hide Player Names", false, function(p82)
		t1.value50(p82)
	end)
	Library:CreateToggle(Page, "Remove Black Screen", false, function(p83)
		v50(p83)
	end)
	Library:CreateToggle(Page, "Show Wallhops", false, function(p84)
		t1.value82 = p84

		if t1.value82 then
			t1.value86()

			local CurrentMap = t1.value9:FindFirstChild("CurrentMap")

			if not CurrentMap then
				return
			end

			if t1.value83 then
				t1.value83:Disconnect()
			end

			t1.value83 = CurrentMap.Changed:Connect(function()
				task.wait(2)

				if not t1.value82 then
					return
				end

				t1.value86()
			end)

			return
		end

		if t1.value83 then
			t1.value83:Disconnect()
		end

		t1.value85()
	end)
	Library:CreateToggle(Page, "Barrier Visibility", false, function(p85)
		t1.value87 = p85

		if t1.value87 then
			t1.value93()

			local CurrentMap = t1.value9:FindFirstChild("CurrentMap")

			if not CurrentMap then
				return
			end

			if t1.value89 then
				t1.value89:Disconnect()
			end

			local function v498()
				task.wait(2)

				if not t1.value87 then
					return
				end

				t1.value93()
			end

			t1.value89 = CurrentMap.Changed:Connect(v498)

			return
		end

		if t1.value89 then
			t1.value89:Disconnect()
		end

		t1.value92()
	end)
	t1.value127 = 70
	Library:CreateSlider(Page, "Fov Changer", 70, 120, 70, function(p86)
		t1.value127 = p86
	end)
	t1.value4.RenderStepped:Connect(function()
		local CurrentCamera = t1.value1.CurrentCamera
		local v500

		if CurrentCamera then
			v500 = CurrentCamera.FieldOfView ~= t1.value127
		else
			v500 = CurrentCamera
		end

		if not v500 then
			return
		end

		CurrentCamera.FieldOfView = t1.value127
	end)
	Library:CreateSection(Page, "Visual Name/Level", "Right")
	Library:CreateToggle(Page, "Enable Visuals", false, function(p87)
		t1.value23 = p87

		if t1.value23 or t1.value27 then
			if not t1.value24 then
				t1.value24 = t1.value4.Heartbeat:Connect(t1.value80)
			end
		elseif t1.value24 then
			t1.value24:Disconnect()
		end

		if p87 then
			t1.value79()

			return
		end

		pcall(function()
			local Character = t1.value3.Character
			local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

			if Humanoid then
				pcall(function()
					Humanoid.DisplayName = t1.value18
				end)
			end

			local PlayerGui = t1.value3:FindFirstChild("PlayerGui")

			if not PlayerGui then
				return
			end

			local PlayerNamesFrame = PlayerGui:FindFirstChild("PlayerNamesFrame", true)
			local v505 = PlayerNamesFrame and PlayerNamesFrame:FindFirstChild(t1.value3.Name .. "PlayerFrame")

			if not v505 then
				return
			end

			local LevelLabel = v505:FindFirstChild("LevelLabel")
			local NameLabel = v505:FindFirstChild("NameLabel")
			local IconLabel = v505:FindFirstChild("IconLabel")

			if LevelLabel then
				local value19 = t1.value19

				LevelLabel.Text = tostring(value19)
			end

			if NameLabel then
				NameLabel.Text = t1.value18
			end

			if IconLabel then
				IconLabel.ImageTransparency = 0

				local IconeFakeCorrigido = IconLabel:FindFirstChild("IconeFakeCorrigido")

				if IconeFakeCorrigido then
					IconeFakeCorrigido.Visible = false
				end
			end

			local value19 = t1.value19

			v505.LayoutOrder = -tonumber(value19)
		end)
		t1.value79()
	end)
	Library:CreateInput(Page, "Fake Name", t1.value3.Name, function(p88)
		t1.value20 = p88

		if not t1.value23 then
			return
		end

		t1.value79()
	end)
	Library:CreateInput(Page, "Fake Level", "67", function(p89)
		t1.value21 = tonumber(p89) or 100
	end)
	Library:CreateDropdown(Page, "Select Icon", {
		"VIP",
		"QA",
		"CON",
		"Mod",
		"Dev",
		"Manager",
		"MrWindy",
		"Nenhum"
	}, "VIP", function(p90)
		local _ = t1.value25[p90]
	end)
	Library:CreateSection(Page, "Change names other players.", "Right")
	Library:CreateToggle(Page, "Enable Others Spoofing", false, function(p91)
		t1.value27 = p91

		if t1.value23 or t1.value27 then
			if t1.value24 then
				if p91 then
					t1.value81()
				else
					for k in pairs(t1.value32) do
						v351(k)
					end

					table.clear(t1.value32)
				end

				return
			end

			t1.value24 = t1.value4.Heartbeat:Connect(t1.value80)
		else
			if not t1.value24 then
				if p91 then
					t1.value81()
				else
					for k in pairs(t1.value32) do
						v351(k)
					end

					table.clear(t1.value32)
				end

				return
			end

			t1.value24:Disconnect()
		end

		if p91 then
			t1.value81()
		else
			for k in pairs(t1.value32) do
				v351(k)
			end

			table.clear(t1.value32)
		end
	end)
	Library:CreatePlayerDropdown(Page, "Target Player", "Select Player", function(p92)
		t1.value28 = p92

		if not t1.value27 then
			return
		end

		t1.value81()
	end)
	Library:CreateDropdown(Page, "Target Fake Icon", {
		"VIP",
		"QA",
		"CON",
		"Mod",
		"Dev",
		"Manager",
		"MrWindy",
		"Nenhum"
	}, "VIP", function(p93)
		local _ = t1.value25[p93]

		if not t1.value27 then
			return
		end

		t1.value81()
	end)
	Library:CreateInput(Page, "Target Fake Name", "Fake Name", function(p94)
		t1.value29 = p94

		if not t1.value27 then
			return
		end

		t1.value81()
	end)
	Library:CreateInput(Page, "Target Fake Level", "100", function(p95)
		t1.value30 = tonumber(p95) or 100

		if not t1.value27 then
			return
		end

		t1.value81()
	end)
	Library:CreateButton(Page, "Reset Selected Player", function()
		local v517

		if t1.value28 == "Select Player" then
			v517 = false
		else
			v517 = t1.value28 ~= ""
		end

		if v517 then
			v351(t1.value28)
			t1.value6("Restored " .. t1.value28 .. " back to normal.", 3)
		else
			t1.value6("Please select a valid player first!", 3)
		end
	end)

	if not (t1.value7 or t1.value8.TouchEnabled) then
		Library.CreateInput = t1.value10
		Library.CreateDropdown = t1.value11
		Library.CreatePlayerDropdown = t1.value12

		return
	end

	Library:CreateSection(Page, "Button customization (mov)", "Left")
	Library:CreateToggle(Page, "Enable Thumbstick", t1.value99.ThumbstickEnabled, function(p96)
		t1.value99.ThumbstickEnabled = p96
		t1.value112()
		t1.value123(p96)
	end)
	Library:CreateSlider(Page, "Thumbstick X", -100, 100, t1.value99.ThumbstickX or 0, function(p97)
		t1.value99.ThumbstickX = p97
		t1.value112()
	end)
	Library:CreateSlider(Page, "Thumbstick Y", -100, 100, t1.value99.ThumbstickY or 0, function(p98)
		t1.value99.ThumbstickY = p98
		t1.value112()
	end)
	Library:CreateToggle(Page, "Enable Jump Button", t1.value99.JumpEnabled, function(p99)
		t1.value99.JumpEnabled = p99
		t1.value113()
	end)
	Library:CreateSlider(Page, "Jump X", -100, 100, t1.value99.JumpX or 0, function(p100)
		t1.value99.JumpX = p100
		t1.value113()
	end)
	Library:CreateSlider(Page, "Jump Y", -100, 100, t1.value99.JumpY or 0, function(p101)
		t1.value99.JumpY = p101
		t1.value113()
	end)
	Library:CreateSlider(Page, "Jump Scale", 10, 20, math.floor((t1.value99.JumpScale or 1) * 10), function(p102)
		t1.value99.JumpScale = p102 / 10
		t1.value113()
	end)
	Library:CreateButton(Page, "By Baw", function() end)
	Library:CreateSection(Page, "Button customization (C,Q & E)", "Right")
	Library:CreateToggle(Page, "Enable Button E", t1.value99.EEnabled, function(p103)
		t1.value99.EEnabled = p103

		local v518 = t1.value117("E")

		if not v518 then
			return
		end

		if t1.value99.EEnabled then
			t1.value120(v518, t1.value99.EState, true)

			return
		end

		t1.value121(v518, true)
	end)

	local s2 = "E Position X"
	local n5 = -200
	local n6 = 200
	local floor = math.floor
	local EState = t1.value99.EState

	if EState then
		EState = t1.value99.EState.X
	end

	Library:CreateSlider(Page, s2, n5, n6, floor((EState or 0) * 20), function(p104)
		t1.value99.EState.X = p104 / 20

		local EEnabled = t1.value99.EEnabled and t1.value117("E")

		if not EEnabled then
			return
		end

		if t1.value99.EEnabled then
			t1.value120(EEnabled, t1.value99.EState, true)

			return
		end

		t1.value121(EEnabled, true)
	end)

	local s3 = "E Position Y"
	local n7 = 200
	local n8 = -200
	local floor2 = math.floor
	local EState2 = t1.value99.EState

	if EState2 then
		EState2 = t1.value99.EState.Y
	end

	Library:CreateSlider(Page, s3, n8, n7, floor2((EState2 or 0) * 20), function(p105)
		t1.value99.EState.Y = p105 / 20

		local EEnabled = t1.value99.EEnabled and t1.value117("E")

		if not EEnabled then
			return
		end

		if t1.value99.EEnabled then
			t1.value120(EEnabled, t1.value99.EState, true)

			return
		end

		t1.value121(EEnabled, true)
	end)

	local EState3 = t1.value99.EState

	if EState3 then
		EState3 = t1.value99.EState.Size
	end

	Library:CreateSlider(Page, "E Size", 35, 70, EState3 or 45, function(p106)
		t1.value99.EState.Size = p106

		local EEnabled = t1.value99.EEnabled and t1.value117("E")

		if not EEnabled then
			return
		end

		if t1.value99.EEnabled then
			t1.value120(EEnabled, t1.value99.EState, true)

			return
		end

		t1.value121(EEnabled, true)
	end)
	Library:CreateToggle(Page, "Enable Button C / Q", t1.value99.CEnabled, function(p107)
		t1.value99.CEnabled = p107
		t1.value122()
	end)

	local v533 = (t1.value99.CState and (t1.value99.CState.X or 0) or 0) * 20

	Library:CreateSlider(Page, "C/Q Position X", -200, 200, math.floor(v533), function(p108)
		t1.value99.CState.X = p108 / 20

		if not t1.value99.CEnabled then
			return
		end

		t1.value122()
	end)

	local v534 = (t1.value99.CState and (t1.value99.CState.Y or 0) or 0) * 20

	Library:CreateSlider(Page, "C/Q Position Y", -200, 200, math.floor(v534), function(p109)
		t1.value99.CState.Y = p109 / 20

		if not t1.value99.CEnabled then
			return
		end

		t1.value122()
	end)

	local CState = t1.value99.CState

	if CState then
		CState = t1.value99.CState.Size
	end

	Library:CreateSlider(Page, "C/Q Size", 35, 70, CState or 45, function(p110)
		t1.value99.CState.Size = p110

		if not t1.value99.CEnabled then
			return
		end

		t1.value122()
	end)
	Library:CreateButton(Page, "Reset All Customizations", function()
		t1.value99 = {
			ThumbstickEnabled = t1.value99.ThumbstickEnabled,
			ThumbstickX = 0,
			ThumbstickY = 0,
			JumpEnabled = t1.value99.JumpEnabled,
			JumpX = 0,
			JumpY = 0,
			JumpScale = 1,
			EEnabled = t1.value99.EEnabled,
			CEnabled = t1.value99.CEnabled,
			EState = {
				X = 0,
				Y = 0,
				Size = 45
			},
			CState = {
				X = 0,
				Y = 0,
				Size = 45
			}
		}
		t1.value112()
		t1.value113()
		t1.value122()

		local v538 = t1.value117("E")

		if not v538 then
			t1.value6("HUD Controls reset to defaults!", 3)

			return
		end

		if t1.value99.EEnabled then
			t1.value120(v538, t1.value99.EState, true)
		else
			t1.value121(v538, true)
		end

		t1.value6("HUD Controls reset to defaults!", 3)
	end)
	Library:CreateButton(Page, "By Baw", function() end)
	Library.CreateInput = t1.value10
	Library.CreateDropdown = t1.value11
	Library.CreatePlayerDropdown = t1.value12
end
