

return function(p1)
	local t1 = {
		value1 = p1.Workspace or game:GetService("Workspace"),
		value2 = p1.Players or game:GetService("Players"),
		value3 = p1.LocalPlayer
	}
	local Library = p1.Library
	local Page = p1.Page
	local ScreenGui = p1.ScreenGui

	t1.value4 = p1.SendNotification
	t1.value5 = p1.UserInputService or game:GetService("UserInputService")
	t1.value6 = game:GetService("TweenService")

	local _ = ipairs

	t1.value7 = pairs
	t1.value8 = string.lower
	t1.value9 = string.find
	t1.value10 = table.insert
	t1.value11 = Vector3.new
	t1.value12 = CFrame.new
	t1.value13 = CFrame.Angles
	t1.value14 = task.spawn
	t1.value15 = task.delay
	t1.value16 = pcall

	local Theme = p1.Theme or {
		Accent = Color3.fromRGB(240, 240, 240),
		ItemStroke = Color3.fromRGB(60, 60, 60),
		Font = Enum.Font.GothamBold
	}

	t1.value17 = {
		Hammer = true,
		["Gemstone Hammer"] = true,
		["Iron Hammer"] = true,
		Mallet = true
	}
	t1.value18 = {}
	t1.value19 = {}
	t1.value20 = {}

	local function v7(p2)
		local children = t1.value1:GetChildren()

		for i = 1, #children do
			local v10 = children[i]
			local v11 = v10 ~= t1.value1.CurrentCamera

			if v11 then
				if v10 == t1.value1.Terrain then
					v11 = false
				else
					v11 = not t1.value2:GetPlayerFromCharacter(v10)
				end
			end

			if v11 then
				if v10:IsA("Model") or v10:IsA("Folder") then
					local descendants = v10:GetDescendants()

					for i2 = 1, #descendants do
						p2(descendants[i2])
					end
				else
					p2(v10)
				end
			end
		end
	end
	local function v14()
		local v15 = #t1.value18 > 0

		if v15 then
			for i = 1, #t1.value18 do
				local v17 = t1.value18[i]

				if not (v17 and v17.Parent) then
					v15 = false

					break
				end
			end
		end

		if v15 then
			return t1.value18
		end

		local function v18(p3)
			if p3.Name ~= "ComputerTable" then
				return
			end

			local value18 = t1.value18

			t1.value10(value18, p3)
		end

		t1.value18 = {}
		v7(v18)

		return t1.value18
	end
	local function v20()
		local v21 = #t1.value19 > 0

		if v21 then
			for i = 1, #t1.value19 do
				local v23 = t1.value19[i]

				if not (v23 and v23.Parent) then
					v21 = false

					break
				end
			end
		end

		if v21 then
			return t1.value19
		end

		local function v24(p4)
			if not p4:IsA("Model") then
				return
			end

			local v25 = t1.value8(p4.Name)
			local v26 = t1.value9(v25, "exit", 1, true)

			if v26 then
				v26 = t1.value9(v25, "door", 1, true)
			end

			if not v26 then
				return
			end

			t1.value10(t1.value19, p4)
		end

		t1.value19 = {}
		v7(v24)

		return t1.value19
	end
	local function v27()
		local v28 = #t1.value20 > 0

		if v28 then
			for i = 1, #t1.value20 do
				local v30 = t1.value20[i]

				if not (v30 and v30.Parent) then
					v28 = false

					break
				end
			end
		end

		if v28 then
			return t1.value20
		end

		local function v31(p5)
			if p5.Name ~= "FreezePod" then
				return
			end

			local value20 = t1.value20

			t1.value10(value20, p5)
		end

		t1.value20 = {}
		v7(v31)

		return t1.value20
	end
	local function v33()
		local players = t1.value2:GetPlayers()

		for i = 1, #players do
			local v36 = players[i]

			if v36 ~= t1.value3 then
				local Character = v36.Character

				if Character then
					local v38 = false
					local Team = v36.Team

					if Team then
						Team = Team.Name == "Beast"
					end

					if Team then
						v38 = true
					else
						local v40, v41, v42 = t1.value7(t1.value17)

						while true do
							v42 = v40(v41, v42)

							if not v42 then
								break
							end

							if Character:FindFirstChild(v42) then
								v38 = true

								break
							end
						end

						if not v38 then
							local Backpack = v36:FindFirstChild("Backpack")

							if Backpack then
								for k in t1.value7(t1.value17) do
									if Backpack:FindFirstChild(k) then
										v38 = true

										break
									end
								end
							end
						end
					end

					if v38 then
						local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")

						if HumanoidRootPart then
							return HumanoidRootPart
						end
					end
				end
			end
		end

		return nil
	end

	Library:CreateSection(Page, "Map Objects", "Left")
	t1.value21 = 0
	Library:CreateButton(Page, "TP Computer", function()
		local Character = t1.value3.Character

		if not (Character and Character:FindFirstChild("HumanoidRootPart")) then
			return
		end

		local v47 = v14()

		if #v47 == 0 then
			t1.value4("Map not loaded!", 2)

			return
		end

		t1.value21 = t1.value21 + 1

		if t1.value21 > #v47 then
			t1.value21 = 1
		end

		local v48 = v47[t1.value21]
		local pivot = nil

		if v48:IsA("Model") then
			pivot = v48:GetPivot()
		else
			local BasePart = v48:FindFirstChildWhichIsA("BasePart")

			if BasePart then
				pivot = BasePart.CFrame
			end
		end

		if not pivot then
			return
		end

		Character.HumanoidRootPart.CFrame = pivot * t1.value12(0, 3, -3)
	end)
	t1.value22 = 0
	Library:CreateButton(Page, "TP Exitdoor", function()
		local Character = t1.value3.Character

		if not (Character and Character:FindFirstChild("HumanoidRootPart")) then
			return
		end

		local v52 = v20()

		if #v52 == 0 then
			t1.value4("ExitDoors not found!", 2)

			return
		end

		t1.value22 = t1.value22 + 1

		if t1.value22 > #v52 then
			t1.value22 = 1
		end

		local v53 = v52[t1.value22]
		local PrimaryPart = v53.PrimaryPart or v53:FindFirstChildWhichIsA("BasePart")

		if not PrimaryPart then
			return
		end

		Character.HumanoidRootPart.CFrame = PrimaryPart.CFrame + t1.value11(0, 3, 0)
	end)
	t1.value23 = 0
	Library:CreateButton(Page, "TP Freezepods", function()
		local Character = t1.value3.Character

		if not (Character and Character:FindFirstChild("HumanoidRootPart")) then
			return
		end

		local v56 = v27()

		if #v56 == 0 then
			t1.value4("Map not loaded!", 2)

			return
		end

		t1.value23 = t1.value23 + 1

		if t1.value23 > #v56 then
			t1.value23 = 1
		end

		local v57 = v56[t1.value23]
		local BasePart = v57:FindFirstChild("BasePart") or v57:FindFirstChildWhichIsA("Part")

		if not BasePart then
			return
		end

		Character.HumanoidRootPart.CFrame = BasePart.CFrame * t1.value12(0, 1, -3)
	end)
	Library:CreateButton(Page, "TP Crystal Cove", function()
		local Character = t1.value3.Character
		local HumanoidRootPart

		if Character then
			HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		else
			HumanoidRootPart = Character
		end

		if not HumanoidRootPart then
			return
		end

		Character.HumanoidRootPart.CFrame = t1.value12(347.5, 51, -455.5)
	end)
	Library:CreateButton(Page, "TP Beast Cave", function()
		local Character = t1.value3.Character
		local HumanoidRootPart

		if Character then
			HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		else
			HumanoidRootPart = Character
		end

		if not HumanoidRootPart then
			return
		end

		Character.HumanoidRootPart.CFrame = t1.value12(-216.5, 1.5, -223.5)
	end)
	Library:CreateSection(Page, "Extras", "Right")
	t1.value24 = nil
	t1.value25 = nil
	t1.value26 = nil
	t1.value27 = ScreenGui.FindFirstChild(ScreenGui, "CheckpointFrame")

	if t1.value27 then
		t1.value27:Destroy()
	end

	t1.value27 = Instance.new("Frame")
	t1.value27.Name = "CheckpointFrame"
	t1.value27.Size = UDim2.new(0, 40, 0, 90)
	t1.value27.Position = UDim2.new(0, 2, 0.5, -45)
	t1.value27.BackgroundTransparency = 1
	t1.value27.Visible = false
	t1.value27.ZIndex = 50
	t1.value27.Parent = ScreenGui

	local UIListLayout = Instance.new("UIListLayout")

	UIListLayout.Parent = t1.value27
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 8)
	t1.value28 = Instance.new("ImageButton")
	t1.value28.Size = UDim2.new(1, 0, 0, 40)
	t1.value28.BackgroundTransparency = 1
	t1.value28.Image = "rbxassetid://6723742952"
	t1.value28.Parent = t1.value27
	t1.value29 = Instance.new("ImageButton")
	t1.value29.Size = UDim2.new(1, 0, 0, 40)
	t1.value29.BackgroundTransparency = 1
	t1.value29.Image = "rbxassetid://6723921202"
	t1.value29.Parent = t1.value27
	t1.value28.MouseButton1Click:Connect(function()
		local Character = t1.value3.Character
		local HumanoidRootPart

		if Character then
			HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
		else
			HumanoidRootPart = Character
		end

		if not HumanoidRootPart then
			return
		end

		t1.value24 = Character.HumanoidRootPart.CFrame

		if t1.value25 then
			t1.value25:Destroy()
		end

		t1.value25 = Instance.new("Part")
		t1.value25.Name = "FleeCheckpointMarker"
		t1.value25.Shape = Enum.PartType.Cylinder
		t1.value25.Size = t1.value11(0.2, 4, 4)
		t1.value25.CFrame = t1.value24 * t1.value12(0, -2.5, 0) * t1.value13(0, 0, 1.5707963267948966)
		t1.value25.Anchored = true
		t1.value25.CanCollide = false
		t1.value25.Material = Enum.Material.Neon
		t1.value25.Color = Color3.fromRGB(0, 255, 128)
		t1.value25.Transparency = 0.4
		t1.value25.Parent = t1.value1

		local PointLight = Instance.new("PointLight")

		PointLight.Color = t1.value25.Color
		PointLight.Range = 8
		PointLight.Brightness = 2
		PointLight.Parent = t1.value25
		t1.value28.ImageColor3 = Color3.fromRGB(150, 150, 150)

		local function v67()
			t1.value28.ImageColor3 = Color3.fromRGB(255, 255, 255)
		end

		t1.value15(0.15, v67)
		t1.value4("Checkpoint Set!", 2)
	end)
	t1.value29.MouseButton1Click:Connect(function()
		if t1.value24 then
			local Character = t1.value3.Character
			local HumanoidRootPart

			if Character then
				HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			else
				HumanoidRootPart = Character
			end

			if not HumanoidRootPart then
				return
			end

			Character.HumanoidRootPart.CFrame = t1.value24
			t1.value29.ImageColor3 = Color3.fromRGB(150, 150, 150)

			local function v70()
				t1.value29.ImageColor3 = Color3.fromRGB(255, 255, 255)
			end

			t1.value15(0.15, v70)

			return
		end

		t1.value4("No checkpoint set!", 2)
	end)
	Library:CreateToggle(Page, "Checkpoint (UI+R)", false, function(p6)
		t1.value27.Visible = p6

		if p6 then
			if t1.value26 then
				return
			end

			t1.value26 = t1.value5.InputBegan:Connect(function(input, gameProcessed)
				if gameProcessed then
					return
				end

				local value24

				if input.KeyCode == Enum.KeyCode.R then
					value24 = t1.value24
				else
					value24 = false
				end

				if not value24 then
					return
				end

				local Character = t1.value3.Character
				local HumanoidRootPart

				if Character then
					HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
				else
					HumanoidRootPart = Character
				end

				if not HumanoidRootPart then
					return
				end

				Character.HumanoidRootPart.CFrame = t1.value24
			end)

			return
		end

		if t1.value26 then
			t1.value26:Disconnect()
		end

		if not t1.value25 then
			return
		end

		t1.value25:Destroy()
	end)
	Library:CreateButton(Page, "Reset Character", function()
		local Character = t1.value3.Character
		local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid")

		if not Humanoid then
			return
		end

		Humanoid.Health = 0
	end)
	Library:CreateButton(Page, "Server Rejoin", function()
		local TeleportService = game:GetService("TeleportService")

		if #t1.value2:GetPlayers() <= 1 then
			t1.value3:Kick("\nRejoining...")
			task.wait()
			TeleportService:Teleport(game.PlaceId, t1.value3)
		else
			TeleportService:TeleportToPlaceInstance(game.PlaceId, game.JobId, t1.value3)
		end
	end)
	Library:CreateButton(Page, "Random Servers", function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, t1.value3)
	end)
	Library:CreateButton(Page, "Teleport to Beast", function()
		local v77 = v33()

		if v77 then
			local Character = t1.value3.Character
			local HumanoidRootPart

			if Character then
				HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			else
				HumanoidRootPart = Character
			end

			if HumanoidRootPart then
				Character.HumanoidRootPart.CFrame = v77.CFrame + t1.value11(0, 3, 0)
				t1.value4("Teleported to Beast!", 2)

				return
			else
				return
			end
		end

		t1.value4("Beast not found or not spawned!", 2)
	end)

	local LeftCol = Page:FindFirstChild("LeftCol")
	local RightCol = Page:FindFirstChild("RightCol")

	if LeftCol and RightCol then
		local UIListLayout2 = Page:FindFirstChildOfClass("UIListLayout")

		if UIListLayout2 then
			UIListLayout2:Destroy()
		end

		local UIListLayout3 = Instance.new("UIListLayout")

		UIListLayout3.FillDirection = Enum.FillDirection.Vertical
		UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout3.Padding = UDim.new(0, 10)
		UIListLayout3.Parent = Page

		local Frame = Instance.new("Frame")

		Frame.Name = "TopColumnsContainer"
		Frame.Size = UDim2.new(1, 0, 0, 0)
		Frame.AutomaticSize = Enum.AutomaticSize.Y
		Frame.BackgroundTransparency = 1
		Frame.LayoutOrder = 1
		Frame.Parent = Page

		local UIListLayout4 = Instance.new("UIListLayout")

		UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
		UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout4.Padding = UDim.new(0, 12)
		UIListLayout4.Parent = Frame
		LeftCol.Size = UDim2.new(0.5, -6, 0, 0)
		LeftCol.AutomaticSize = Enum.AutomaticSize.Y
		LeftCol.Parent = Frame
		LeftCol.LayoutOrder = 1
		RightCol.Size = UDim2.new(0.5, -6, 0, 0)
		RightCol.AutomaticSize = Enum.AutomaticSize.Y
		RightCol.Parent = Frame
		RightCol.LayoutOrder = 2
	end

	t1.value30 = Instance.new("Frame")
	t1.value30.Name = "PlayersTeleportSection"
	t1.value30.Size = UDim2.new(1, -2, 0, 0)
	t1.value30.AutomaticSize = Enum.AutomaticSize.Y
	t1.value30.BackgroundColor3 = Color3.new(0, 0, 0)
	t1.value30.BackgroundTransparency = 0.45
	t1.value30.BorderSizePixel = 0
	t1.value30.LayoutOrder = 2
	t1.value30.Parent = Page
	Instance.new("UICorner", t1.value30).CornerRadius = UDim.new(0, 6)

	local UIStroke = Instance.new("UIStroke", t1.value30)

	UIStroke.Color = Color3.fromRGB(40, 40, 40)
	UIStroke.Thickness = 1

	local UIListLayout2 = Instance.new("UIListLayout", t1.value30)

	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2.Padding = UDim.new(0, 4)

	local UIPadding = Instance.new("UIPadding", t1.value30)

	UIPadding.PaddingTop = UDim.new(0, 8)
	UIPadding.PaddingBottom = UDim.new(0, 8)
	UIPadding.PaddingLeft = UDim.new(0, 10)
	UIPadding.PaddingRight = UDim.new(0, 10)

	local Frame = Instance.new("Frame")

	Frame.Name = "HeaderContainer"
	Frame.Size = UDim2.new(1, 0, 0, 20)
	Frame.BackgroundTransparency = 1
	Frame.LayoutOrder = 1
	Frame.Parent = t1.value30

	local TextLabel = Instance.new("TextLabel")

	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = "Players Teleport"
	TextLabel.Font = Theme.Font
	TextLabel.TextSize = 12
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.Parent = Frame

	local TextButton = Instance.new("TextButton")

	TextButton.Name = "RefreshBtnStatic"
	TextButton.Size = UDim2.new(1, 0, 0, 26)
	TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	TextButton.BackgroundTransparency = 0.55
	TextButton.Text = "Refresh"
	TextButton.TextColor3 = Theme.Accent
	TextButton.Font = Theme.Font
	TextButton.TextSize = 11
	TextButton.LayoutOrder = 2
	TextButton.Parent = t1.value30
	Instance.new("UICorner", TextButton).CornerRadius = UDim.new(0, 5)

	local UIStroke2 = Instance.new("UIStroke", TextButton)

	UIStroke2.Color = Color3.fromRGB(60, 60, 60)
	UIStroke2.Thickness = 1

	function t1.value31(p7, p8, p9)
		local Frame2 = Instance.new("Frame")

		Frame2.Name = "PlayerRow"
		Frame2.Size = UDim2.new(1, 0, 0, 44)
		Frame2.BackgroundTransparency = 1
		Frame2.BorderSizePixel = 0
		Frame2.LayoutOrder = p9
		Frame2.Parent = p7

		local ImageLabel = Instance.new("ImageLabel")

		ImageLabel.Size = UDim2.new(0, 32, 0, 32)
		ImageLabel.Position = UDim2.new(0, 4, 0.5, -16)
		ImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		ImageLabel.BackgroundTransparency = 0.3
		ImageLabel.Parent = Frame2
		Instance.new("UICorner", ImageLabel).CornerRadius = UDim.new(0, 6)

		local function v95()
			local v96, v97, Parent = t1.value16(function()
				return t1.value2:GetUserThumbnailAsync(p8.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)
			end)

			if v96 then
				if Parent then
					Parent = ImageLabel

					if Parent then
						Parent = ImageLabel.Parent
					end
				end
			else
				Parent = v96
			end

			if not Parent then
				return
			end

			ImageLabel.Image = v97
		end

		t1.value14(v95)

		local TextLabel2 = Instance.new("TextLabel")

		TextLabel2.Text = p8.DisplayName
		TextLabel2.Size = UDim2.new(1, -140, 0, 16)
		TextLabel2.Position = UDim2.new(0, 44, 0, 4)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Font = Enum.Font.GothamBold
		TextLabel2.TextSize = 12
		TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.Parent = Frame2

		local TextLabel3 = Instance.new("TextLabel")

		TextLabel3.Text = "@" .. p8.Name
		TextLabel3.Size = UDim2.new(1, -140, 0, 14)
		TextLabel3.Position = UDim2.new(0, 44, 0, 20)
		TextLabel3.BackgroundTransparency = 1
		TextLabel3.Font = Enum.Font.Gotham
		TextLabel3.TextSize = 10
		TextLabel3.TextColor3 = Color3.fromRGB(150, 150, 150)
		TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel3.Parent = Frame2

		local TextButton2 = Instance.new("TextButton")

		TextButton2.Size = UDim2.new(0, 80, 0, 26)
		TextButton2.Position = UDim2.new(1, -84, 0.5, -13)
		TextButton2.BackgroundColor3 = Color3.fromRGB(245, 245, 245)
		TextButton2.Text = "Teleport"
		TextButton2.Font = Enum.Font.GothamBold
		TextButton2.TextSize = 11
		TextButton2.TextColor3 = Color3.fromRGB(15, 15, 15)
		TextButton2.Parent = Frame2
		Instance.new("UICorner", TextButton2).CornerRadius = UDim.new(0, 5)

		local UIStroke3 = Instance.new("UIStroke")

		UIStroke3.Color = Color3.fromRGB(180, 180, 180)
		UIStroke3.Thickness = 1
		UIStroke3.Parent = TextButton2

		local UIGradient = Instance.new("UIGradient")

		UIGradient.Color = ColorSequence.new({ ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1, Color3.fromRGB(215, 215, 215)) })
		UIGradient.Rotation = 90
		UIGradient.Parent = TextButton2
		TextButton2.MouseEnter:Connect(function()
			local value6 = t1.value6
			local v105 = TextButton2
			local TweenInfo_ = TweenInfo

			value6.Create(value6, v105, TweenInfo_.new(0.12), {
				BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			}):Play()
		end)
		TextButton2.MouseLeave:Connect(function()
			local value6 = t1.value6
			local v108 = TextButton2
			local TweenInfo_ = TweenInfo

			value6.Create(value6, v108, TweenInfo_.new(0.12), {
				BackgroundColor3 = Color3.fromRGB(245, 245, 245)
			}):Play()
		end)
		TextButton2.MouseButton1Click:Connect(function()
			local Character = p8.Character
			local Character2 = t1.value3.Character

			if not (Character and Character2) then
				return
			end

			local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart")
			local HumanoidRootPart2 = Character2:FindFirstChild("HumanoidRootPart")

			if not (HumanoidRootPart and HumanoidRootPart2) then
				return
			end

			HumanoidRootPart2.CFrame = HumanoidRootPart.CFrame + t1.value11(0, 2, 0)
		end)
	end

	local function v114()
		local children = t1.value30:GetChildren()

		for i = 1, #children do
			local v117 = children[i]

			if v117.Name == "PlayerRow" then
				v117:Destroy()
			end
		end

		local players = t1.value2:GetPlayers()
		local n1 = 3

		for i = 1, #players do
			local v121 = players[i]

			if v121 ~= t1.value3 then
				local value30 = t1.value30

				t1.value31(value30, v121, n1)
				n1 = n1 + 1
			end
		end
	end

	TextButton.MouseButton1Click:Connect(v114)
	v114()
end
