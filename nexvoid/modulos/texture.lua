
return function(p1)
	local t1 = {
		value1 = Instance.new,
		value2 = Color3.new,
		value3 = Color3.fromRGB,
		value4 = UDim2.new,
		value5 = UDim.new,
		value6 = task.wait,
		value7 = task.spawn,
		value8 = task.defer,
		value9 = os.clock,
		value10 = table.insert,
		value11 = table.clear,
		value12 = pairs,
		value13 = ipairs,
		value14 = pcall,
		value15 = string.find,
		value16 = string.lower,
		value17 = setmetatable
	}
	local game_ = game

	t1.value18 = Enum.Material.Snow
	t1.value19 = Enum.Material.Brick
	t1.value20 = Enum.Material.SmoothPlastic
	t1.value21 = Enum.Material.Plastic
	t1.value22 = Enum.AutomaticSize.Y

	local _ = Enum.CollisionFidelity.Box
	local NormalId = Enum.NormalId
	local Library = p1.Library
	local Page = p1.Page

	t1.value23 = p1.Workspace
	t1.value24 = p1.Players
	t1.value25 = p1.LocalPlayer

	local RunService = p1.RunService

	t1.value26 = p1.TweenService
	t1.value27 = p1.UserInputService
	t1.value28 = p1.Theme
	t1.value29 = p1.UserConfigs

	local GetParentTarget = p1.GetParentTarget

	t1.value30 = p1.isMobile
	t1.value31 = p1.ContentConfig

	local UpdateCursorSizes = p1.UpdateCursorSizes

	t1.value32 = p1.SetPCCursorActive
	t1.value33 = p1.MobileCrosshair
	t1.value34 = p1.PCSoftwareCursor
	t1.value35 = game_:GetService("Lighting")
	t1.value36 = game_:GetService("MaterialService")
	t1.value37 = game_:GetService("StarterGui")

	local value25 = t1.value25

	t1.value38 = value25.GetMouse(value25)
	t1.value39 = t1.value24.GetPlayerFromCharacter

	local function v11(p2)
		local v12

		if type(p2) == "number" then
			v12 = p2 > 0
		else
			v12 = false
		end

		if v12 then
			return "rbxassetid://" .. p2
		else
			local v13

			if type(p2) == "string" and p2 ~= "" then
				v13 = p2 ~= "0"
			else
				v13 = false
			end

			if v13 then
				if t1.value15(p2, "rbxassetid://") then
					return p2
				else
					return "rbxassetid://" .. p2
				end
			else
				return nil
			end
		end
	end

	function t1.value40(p3, p4)
		local value9 = t1.value9
		local v15 = value9()
		local n1 = 1
		local n2 = 1
		local t2 = { p3 }

		while n1 <= n2 do
			local v19 = t2[n1]

			t2[n1] = nil
			n1 = n1 + 1

			if v19 then
				local children = v19:GetChildren()

				for i = 1, #children do
					local v22 = children[i]

					n2 = n2 + 1
					t2[n2] = v22
					p4(v22)
				end
			end

			if value9() - v15 > 0.003 then
				t1.value6()
				v15 = value9()
			end
		end
	end

	local function v23(p5, p6, p7)
		local v24 = #p5

		if v24 ~= 0 then
			t1.value7(function()
				local value9 = t1.value9
				local v26 = value9()

				for i = 1, v24 do
					local v28 = p5[i]

					if v28 then
						p6(v28)
					end

					if value9() - v26 > 0.004 then
						t1.value6()
						v26 = value9()
					end
				end

				if not p7 then
					return
				end

				p7()
			end)

			return
		end

		if not p7 then
			return
		end

		p7()
	end
	local function v29(p8)
		local Frame = t1.value1("Frame")

		Frame.Size = t1.value4(1, -2, 0, 1)
		Frame.Position = t1.value4(0, 1, 0, 0)
		Frame.BackgroundColor3 = t1.value2(0, 0, 0)
		Frame.BackgroundTransparency = 0.45
		Frame.Visible = true
		Frame.Parent = p8
		t1.value1("UICorner", Frame).CornerRadius = t1.value5(0, 6)

		local UIStroke = t1.value1("UIStroke", Frame)

		UIStroke.Color = t1.value3(40, 40, 40)
		UIStroke.Thickness = 1

		local Frame2 = t1.value1("Frame")

		Frame2.Size = t1.value4(1, 0, 0, 1)
		Frame2.BackgroundTransparency = 1
		Frame2.Parent = Frame

		local UIGridLayout = t1.value1("UIGridLayout")

		UIGridLayout.CellSize = t1.value4(0, 36, 0, 36)
		UIGridLayout.CellPadding = t1.value4(0, 8, 0, 8)
		UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIGridLayout.Parent = Frame2

		local UIPadding = t1.value1("UIPadding")

		UIPadding.PaddingTop = t1.value5(0, 8)
		UIPadding.PaddingBottom = t1.value5(0, 8)
		UIPadding.Parent = Frame2

		local function v35()
			Frame.AutomaticSize = t1.value22
			Frame2.AutomaticSize = t1.value22
			Frame.Visible = false
			Frame.Visible = true
		end

		t1.value8(v35)

		return Frame2
	end

	t1.value41 = false
	RunService.RenderStepped:Connect(function()
		if t1.value41 then
			if t1.value27.MouseIconEnabled then
			elseif t1.value38.Icon == "rbxassetid://0" then
				return
			else
				t1.value38.Icon = "rbxassetid://0"

				return
			end

			t1.value27.MouseIconEnabled = false

			if t1.value38.Icon == "rbxassetid://0" then
				return
			else
				t1.value38.Icon = "rbxassetid://0"

				return
			end
		else
			if t1.value38.Icon ~= "rbxassetid://0" then
				return
			end

			t1.value38.Icon = ""
			t1.value27.MouseIconEnabled = true
		end
	end)
	t1.value42 = {}
	t1.value43 = {}
	t1.value44 = false
	t1.value45 = t1.value17({}, {
		__mode = "k"
	})
	t1.value46 = t1.value17({}, {
		__mode = "k"
	})
	t1.value47 = t1.value17({}, {
		__mode = "k"
	})
	t1.value48 = false
	t1.value49 = false
	t1.value50 = false
	t1.value51 = false
	t1.value52 = {
		ComputerTable = true,
		ExitDoor = true
	}
	t1.value53 = {
		"Front",
		"Back",
		"Bottom",
		"Top",
		"Right",
		"Left"
	}
	t1.value54 = {
		NormalId.Front,
		NormalId.Back,
		NormalId.Bottom,
		NormalId.Top,
		NormalId.Right,
		NormalId.Left
	}
	t1.value55 = {
		[Enum.Material.Wood] = "3258599312",
		[Enum.Material.WoodPlanks] = "8676581022",
		[Enum.Material.Brick] = "8558400252",
		[Enum.Material.Cobblestone] = "5003953441",
		[Enum.Material.Concrete] = "7341687607",
		[Enum.Material.DiamondPlate] = "6849247561",
		[Enum.Material.Fabric] = "118776397",
		[Enum.Material.Granite] = "4722586771",
		[Enum.Material.Grass] = "4722588177",
		[Enum.Material.Ice] = "3823766459",
		[Enum.Material.Marble] = "62967586",
		[Enum.Material.Metal] = "62967586",
		[Enum.Material.Sand] = "152572215"
	}

	local value17 = t1.value17

	t1.value56 = nil
	t1.value57 = value17({}, {
		__mode = "k"
	})

	function t1.value58(p9)
		local Parent = p9.Parent

		if Parent then
			local v38 = t1.value57[Parent]

			if v38 == nil then
				if t1.value39(t1.value24, Parent) then
					t1.value57[Parent] = true

					return true
				else
					local Parent2 = Parent.Parent

					if Parent2 then
						local v40 = t1.value57[Parent2]

						if v40 == nil then
							if t1.value39(t1.value24, Parent2) then
								t1.value57[Parent2] = true

								return true
							else
								t1.value57[Parent] = false

								return false
							end
						else
							return v40
						end
					else
						t1.value57[Parent] = false

						return false
					end
				end
			else
				return v38
			end
		else
			return false
		end
	end

	t1.value59 = nil

	function t1.value60(p10)
		if not (p10 and p10.Parent) then
			return
		end

		local v41 = t1.value45[p10]

		if not v41 then
			v41 = {
				Material = p10.Material,
				Color = p10.Color,
				CastShadow = p10.CastShadow
			}
			t1.value45[p10] = v41
		end

		local Material = v41.Material
		local Color = v41.Color
		local CastShadow = v41.CastShadow

		if t1.value51 then
			CastShadow = false
		end

		local v45 = false

		if t1.value49 then
			local Anchored = p10.Anchored

			if Anchored then
				Anchored = not t1.value52[p10.Name]
			end

			if Anchored then
				Material = t1.value18
				Color = t1.value3(255, 255, 255)
			end
		elseif t1.value48 then
			Material = t1.value19
			Color = t1.value3(255, 255, 255)
		elseif t1.value50 then
			local v47 = t1.value55[v41.Material]

			if v47 then
				Material = t1.value20

				local v48 = t1.value47[p10]

				v45 = true

				if not v48 then
					v48 = {}

					for i = 1, 6 do
						local Texture = t1.value1("Texture")

						Texture.Name = "McTexture_" .. t1.value53[i]
						Texture.ZIndex = 2147483647
						Texture.Face = t1.value54[i]
						Texture.StudsPerTileU = 4
						Texture.StudsPerTileV = 4
						Texture.Parent = p10
						v48[i] = Texture
					end

					t1.value47[p10] = v48
				end

				local texture = "rbxassetid://" .. v47
				local Color2 = v41.Color
				local Transparency = p10.Transparency

				for i = 1, 6 do
					local v55 = v48[i]
					local Parent

					if v55 then
						Parent = v55.Parent
					else
						Parent = v55
					end

					if Parent then
						if v55.Texture ~= texture then
							v55.Texture = texture
						end

						if v55.Color3 ~= Color2 then
							v55.Color3 = Color2
						end

						if v55.Transparency ~= Transparency then
							v55.Transparency = Transparency
						end
					end
				end
			end
		end

		if not v45 then
			local v57 = t1.value47[p10]

			if v57 then
				for i = 1, 6 do
					local v59 = v57[i]

					if v59 then
						v59:Destroy()
					end
				end

				t1.value47[p10] = nil
			end
		end

		if p10.Material ~= Material then
			p10.Material = Material
		end

		if p10.Color ~= Color then
			p10.Color = Color
		end

		if p10.CastShadow == CastShadow then
			return
		end

		p10.CastShadow = CastShadow
	end
	function t1.value61(p11)
		if not (p11 and p11.Parent) then
			return
		end

		local v60 = t1.value46[p11]

		if not v60 then
			v60 = {
				Shadows = p11.Shadows
			}
			t1.value46[p11] = v60
		end

		local Shadows = v60.Shadows

		if t1.value51 then
			Shadows = false
		end

		if p11.Shadows == Shadows then
			return
		end

		p11.Shadows = Shadows
	end

	t1.value62 = {}
	t1.value63 = 1
	t1.value64 = 0
	t1.value56 = false

	function t1.value59(_) end

	local function v62(descendant)
		t1.value64 = t1.value64 + 1
		t1.value62[t1.value64] = descendant
	end

	t1.value7(function()
		local value9 = t1.value9

		while true do
			if t1.value63 <= t1.value64 then
				local v64 = value9()

				while t1.value63 <= t1.value64 do
					local v65 = t1.value62[t1.value63]

					t1.value62[t1.value63] = nil
					t1.value63 = t1.value63 + 1

					local Parent

					if v65 then
						Parent = v65.Parent
					else
						Parent = v65
					end

					if Parent then
						local ClassName = v65.ClassName

						if (ClassName == "Part" or (ClassName == "MeshPart" or ClassName == "WedgePart")) and true or ClassName == "CornerWedgePart" then
							if not t1.value58(v65) then
								local value42 = t1.value42

								t1.value10(value42, v65)
								t1.value60(v65)
							end
						elseif (ClassName == "PointLight" or ClassName == "SpotLight") and true or ClassName == "SurfaceLight" then
							local value43 = t1.value43

							t1.value10(value43, v65)
							t1.value61(v65)
						end

						if t1.value56 then
							t1.value59(v65)
						end
					end

					if value9() - v64 > 0.002 then
						break
					else
						continue
					end
				end
			end

			t1.value6()

			continue
		end
	end)
	t1.value65 = nil
	t1.value66 = nil

	local function v70()
		if t1.value56 or (t1.value48 or (t1.value49 or t1.value50 or (t1.value51 or removeParticlesEnabled))) then
			if t1.value65 then
				if t1.value66 then
					return
				else
					t1.value66 = t1.value35.DescendantAdded:Connect(v62)

					return
				end
			end

			t1.value65 = t1.value23.DescendantAdded:Connect(v62)

			if t1.value66 then
				return
			else
				t1.value66 = t1.value35.DescendantAdded:Connect(v62)

				return
			end
		else
			if t1.value65 then
				t1.value65:Disconnect()
			end

			if t1.value66 then
				t1.value66:Disconnect()
			end

			t1.value11(t1.value62)
		end
	end

	Library:CreateSection(Page, "Map Textures", "Left")
	Library:CreateToggle(Page, "White Bricks", false, function(p12)
		t1.value48 = p12
		v70()

		if p12 then
			local s1 = "Applying White Bricks texture..."

			local function v72()
				local t3 = {
					Title = "System",
					Text = s1,
					Duration = 3
				}

				t1.value37:SetCore("SendNotification", t3)
			end

			t1.value14(v72)

			local function v74()
				local value42 = t1.value42
				local value60 = t1.value60
				local v77 = #value42

				if v77 == 0 then
					return
				end

				local v78 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v80 = value9()

					for i = 1, v77 do
						local v82 = value42[i]

						if v82 then
							value60(v82)
						end

						if value9() - v80 > 0.004 then
							t1.value6()
							v80 = value9()
						end
					end

					if not v78 then
						return
					end

					v78()
				end)
			end

			if t1.value44 then
				if not v74 then
					return
				end

				local value42 = t1.value42
				local value60 = t1.value60
				local v85 = #value42

				if v85 == 0 then
					return
				end

				local v86 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v88 = value9()

					for i = 1, v85 do
						local v90 = value42[i]

						if v90 then
							value60(v90)
						end

						if value9() - v88 > 0.004 then
							t1.value6()
							v88 = value9()
						end
					end

					if not v86 then
						return
					end

					v86()
				end)
			else
				local function v91()
					local function v92(p13)
						local ClassName = p13.ClassName

						if (ClassName == "Part" or (ClassName == "MeshPart" or ClassName == "WedgePart")) and true or ClassName == "CornerWedgePart" then
							if t1.value58(p13) then
								return
							else
								t1.value10(t1.value42, p13)

								return
							end
						end

						if not ((ClassName == "PointLight" or ClassName == "SpotLight") and true or ClassName == "SurfaceLight") then
							return
						end

						t1.value10(t1.value43, p13)
					end

					t1.value40(t1.value23, v92)
					t1.value40(t1.value35, v92)
					v70()

					if not v74 then
						return
					end

					v74()
				end

				t1.value7(v91)
			end
		end

		local value42 = t1.value42
		local value60 = t1.value60
		local v96 = #value42

		if v96 == 0 then
			return
		end

		local v97 = nil

		t1.value7(function()
			local value9 = t1.value9
			local v99 = value9()

			for i = 1, v96 do
				local v101 = value42[i]

				if v101 then
					value60(v101)
				end

				if value9() - v99 > 0.004 then
					t1.value6()
					v99 = value9()
				end
			end

			if not v97 then
				return
			end

			v97()
		end)
	end)
	Library:CreateToggle(Page, "Snow Textures", false, function(p14)
		t1.value49 = p14
		v70()

		if p14 then
			local s2 = "Applying Snow texture..."

			local function v103()
				local t4 = {
					Title = "System",
					Text = s2,
					Duration = 3
				}

				t1.value37:SetCore("SendNotification", t4)
			end

			t1.value14(v103)

			local function v105()
				local value42 = t1.value42
				local value60 = t1.value60
				local v108 = #value42

				if v108 == 0 then
					return
				end

				local v109 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v111 = value9()

					for i = 1, v108 do
						local v113 = value42[i]

						if v113 then
							value60(v113)
						end

						if value9() - v111 > 0.004 then
							t1.value6()
							v111 = value9()
						end
					end

					if not v109 then
						return
					end

					v109()
				end)
			end

			if t1.value44 then
				if v105 then
					v105()

					return
				else
					return
				end
			end

			local function v114()
				local function v115(p15)
					local ClassName = p15.ClassName

					if (ClassName == "Part" or (ClassName == "MeshPart" or ClassName == "WedgePart")) and true or ClassName == "CornerWedgePart" then
						if t1.value58(p15) then
							return
						else
							t1.value10(t1.value42, p15)

							return
						end
					end

					if not ((ClassName == "PointLight" or ClassName == "SpotLight") and true or ClassName == "SurfaceLight") then
						return
					end

					t1.value10(t1.value43, p15)
				end

				t1.value40(t1.value23, v115)
				t1.value40(t1.value35, v115)
				v70()

				if not v105 then
					return
				end

				v105()
			end

			t1.value7(v114)

			return
		end

		local value42 = t1.value42
		local value60 = t1.value60
		local v119 = #value42

		if v119 == 0 then
			return
		end

		local v120 = nil

		t1.value7(function()
			local value9 = t1.value9
			local v122 = value9()

			for i = 1, v119 do
				local v124 = value42[i]

				if v124 then
					value60(v124)
				end

				if value9() - v122 > 0.004 then
					t1.value6()
					v122 = value9()
				end
			end

			if not v120 then
				return
			end

			v120()
		end)
	end)
	t1.value67 = false
	t1.value68 = nil
	t1.value69 = t1.value17({}, {
		__mode = "k"
	})

	function t1.value70(p16)
		local Model = p16:FindFirstAncestorOfClass("Model")
		local ClassName

		if Model then
		elseif Model then
			return false
		else
			ClassName = p16.ClassName

			return ClassName ~= "Camera" and not p16:IsA("GuiObject") and ClassName ~= "Highlight" and true or false
		end

		Model = p16:FindFirstAncestorOfClass("Model"):FindFirstChildOfClass("Humanoid")

		if Model then
			return false
		else
			ClassName = p16.ClassName

			return ClassName ~= "Camera" and not p16:IsA("GuiObject") and ClassName ~= "Highlight" and true or false
		end
	end
	function t1.value71(p17)
		if not (p17 and p17.Parent) then
			return
		end

		if not t1.value70(p17) then
			return
		end

		local ClassName = p17.ClassName

		if ClassName == "Decal" and true or ClassName == "Texture" then
			if t1.value69[p17] then
				p17.Texture = ""

				return
			end

			t1.value69[p17] = {
				Texture = p17.Texture
			}
			p17.Texture = ""
		elseif ClassName == "MeshPart" then
			if t1.value69[p17] then
				p17.TextureID = ""
				p17.Material = t1.value20

				return
			end

			t1.value69[p17] = {
				TextureID = p17.TextureID,
				Material = p17.Material
			}
			p17.TextureID = ""
			p17.Material = t1.value20

			return
		elseif ClassName == "SpecialMesh" then
			if t1.value69[p17] then
				p17.TextureId = ""

				return
			end

			t1.value69[p17] = {
				TextureId = p17.TextureId
			}
			p17.TextureId = ""

			return
		else
			if not p17:IsA("BasePart") then
				return
			end

			if not t1.value69[p17] then
				t1.value69[p17] = {
					Material = p17.Material
				}
			end

			p17.Material = t1.value20

			return
		end
	end

	local function v128()
		for k, v in t1.value12(t1.value69) do
			local Parent

			if k then
				Parent = k.Parent
			else
				Parent = k
			end

			if Parent then
				local ClassName = k.ClassName

				if ClassName == "Decal" and true or ClassName == "Texture" then
					k.Texture = v.Texture
				elseif ClassName == "MeshPart" then
					k.TextureID = v.TextureID
					k.Material = v.Material
				elseif ClassName == "SpecialMesh" then
					k.TextureId = v.TextureId
				elseif k:IsA("BasePart") then
					k.Material = v.Material
				end
			end
		end

		t1.value11(t1.value69)
	end

	Library:CreateToggle(Page, "Remove Textures", false, function(p18)
		t1.value67 = p18
		v70()

		if p18 then
			local s3 = "Removing map textures, please wait..."

			local function v134()
				local t5 = {
					Title = "System",
					Text = s3,
					Duration = 3
				}

				t1.value37:SetCore("SendNotification", t5)
			end

			t1.value14(v134)

			local t6 = {}

			local function v137(p19)
				t1.value10(t6, p19)
			end

			t1.value40(t1.value23, v137)

			local value71 = t1.value71
			local v139 = #t6

			if v139 ~= 0 then
				local v140 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v142 = value9()

					for i = 1, v139 do
						local v144 = t6[i]

						if v144 then
							value71(v144)
						end

						if value9() - v142 > 0.004 then
							t1.value6()
							v142 = value9()
						end
					end

					if not v140 then
						return
					end

					v140()
				end)
			end

			t1.value68 = t1.value23.DescendantAdded:Connect(function(descendant)
				local function v145()
					if not t1.value67 then
						return
					end

					t1.value71(descendant)
				end

				t1.value8(v145)
			end)

			return
		end

		if not t1.value68 then
			v128()

			return
		end

		t1.value68:Disconnect()
		v128()
	end)
	Library:CreateToggle(Page, "Minecraft Texture", false, function(p20)
		t1.value50 = p20
		v70()

		if p20 then
			local s4 = "Applying Minecraft texture..."

			local function v147()
				local t7 = {
					Title = "System",
					Text = s4,
					Duration = 3
				}

				t1.value37:SetCore("SendNotification", t7)
			end

			t1.value14(v147)

			local function v149()
				local value42 = t1.value42
				local value60 = t1.value60
				local v152 = #value42

				if v152 == 0 then
					return
				end

				local v153 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v155 = value9()

					for i = 1, v152 do
						local v157 = value42[i]

						if v157 then
							value60(v157)
						end

						if value9() - v155 > 0.004 then
							t1.value6()
							v155 = value9()
						end
					end

					if not v153 then
						return
					end

					v153()
				end)
			end

			if t1.value44 then
				if not v149 then
					return
				end

				local value42 = t1.value42
				local value60 = t1.value60
				local v160 = #value42

				if v160 == 0 then
					return
				end

				local v161 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v163 = value9()

					for i = 1, v160 do
						local v165 = value42[i]

						if v165 then
							value60(v165)
						end

						if value9() - v163 > 0.004 then
							t1.value6()
							v163 = value9()
						end
					end

					if not v161 then
						return
					end

					v161()
				end)
			else
				local function v166()
					local function v167(p21)
						local ClassName = p21.ClassName

						if (ClassName == "Part" or (ClassName == "MeshPart" or ClassName == "WedgePart")) and true or ClassName == "CornerWedgePart" then
							if t1.value58(p21) then
								return
							else
								t1.value10(t1.value42, p21)

								return
							end
						end

						if not ((ClassName == "PointLight" or ClassName == "SpotLight") and true or ClassName == "SurfaceLight") then
							return
						end

						t1.value10(t1.value43, p21)
					end

					t1.value40(t1.value23, v167)
					t1.value40(t1.value35, v167)
					v70()

					if not v149 then
						return
					end

					v149()
				end

				t1.value7(v166)
			end
		end

		local value42 = t1.value42
		local value60 = t1.value60
		local v171 = #value42

		if v171 == 0 then
			return
		end

		local v172 = nil

		t1.value7(function()
			local value9 = t1.value9
			local v174 = value9()

			for i = 1, v171 do
				local v176 = value42[i]

				if v176 then
					value60(v176)
				end

				if value9() - v174 > 0.004 then
					t1.value6()
					v174 = value9()
				end
			end

			if not v172 then
				return
			end

			v172()
		end)
	end)
	Library:CreateSection(Page, "FPS Settings", "Right")
	t1.value72 = nil
	t1.value73 = t1.value17({}, {
		__mode = "k"
	})
	t1.value74 = {}

	if not _G.Settings then
		_G.Settings = {
			Players = {
				["Ignore Me"] = true,
				["Ignore Others"] = true,
				["Ignore Tools"] = true
			},
			Meshes = {
				NoMesh = false,
				NoTexture = false,
				Destroy = false
			},
			Images = {
				Invisible = true,
				Destroy = false
			},
			Explosions = {
				Smaller = true,
				Invisible = false,
				Destroy = false
			},
			Particles = {
				Invisible = true,
				Destroy = false
			},
			TextLabels = {
				LowerQuality = false,
				Invisible = false,
				Destroy = false
			},
			MeshParts = {
				LowerQuality = true,
				Invisible = false,
				NoTexture = false,
				NoMesh = false,
				Destroy = false
			},
			Other = {
				["FPS Cap"] = true,
				["No Camera Effects"] = true,
				["No Clothes"] = true,
				["Low Water Graphics"] = true,
				["No Shadows"] = true,
				["Low Rendering"] = true,
				["Low Quality Parts"] = true,
				["Low Quality Models"] = true,
				["Reset Materials"] = true,
				["Lower Quality MeshParts"] = true,
				ClearNilInstances = false
			}
		}
	end

	if not _G.Ignore then
		_G.Ignore = {}
	end

	t1.value75 = {
		ParticleEmitter = true,
		Trail = true,
		Smoke = true,
		Fire = true,
		Sparkles = true
	}

	local function v177(p22)
		local players = t1.value24:GetPlayers()

		for i = 1, #players do
			local v180 = players[i]
			local Character = v180 ~= t1.value25 and v180.Character

			if Character then
				Character = p22:IsDescendantOf(v180.Character)
			end

			if Character then
				return true
			end
		end

		return false
	end
	local function v182(p23)
		for i = 1, #_G.Ignore do
			if p23:IsDescendantOf(_G.Ignore[i]) then
				return true
			end
		end

		return false
	end

	function t1.value76()
		local Atmosphere = t1.value35:FindFirstChildOfClass("Atmosphere")

		if not Atmosphere then
			Atmosphere = t1.value1("Atmosphere")

			local v185 = t1.value73[Atmosphere]

			if not v185 then
				v185 = {}
				t1.value73[Atmosphere] = v185
			end

			if v185.Created == nil then
				v185.Created = Atmosphere.Created
			end

			Atmosphere.Created = true
			Atmosphere.Parent = t1.value35
		end

		local v186 = t1.value3(0, 0, 0)
		local v187 = t1.value73[Atmosphere]

		if not v187 then
			v187 = {}
			t1.value73[Atmosphere] = v187
		end

		if v187.Color == nil then
			v187.Color = Atmosphere.Color
		end

		Atmosphere.Color = v186

		local v188 = t1.value73[Atmosphere]

		if not v188 then
			v188 = {}
			t1.value73[Atmosphere] = v188
		end

		if v188.Glare == nil then
			v188.Glare = Atmosphere.Glare
		end

		Atmosphere.Glare = 0

		local v189 = t1.value73[Atmosphere]

		if not v189 then
			v189 = {}
			t1.value73[Atmosphere] = v189
		end

		if v189.Haze == nil then
			v189.Haze = Atmosphere.Haze
		end

		Atmosphere.Haze = 2.46

		local v190 = t1.value3(0, 0, 0)
		local v191 = t1.value73[Atmosphere]

		if not v191 then
			v191 = {}
			t1.value73[Atmosphere] = v191
		end

		if v191.Decay == nil then
			v191.Decay = Atmosphere.Decay
		end

		Atmosphere.Decay = v190

		local v192 = t1.value73[Atmosphere]

		if not v192 then
			v192 = {}
			t1.value73[Atmosphere] = v192
		end

		if v192.Density == nil then
			v192.Density = Atmosphere.Density
		end

		Atmosphere.Density = 0.75

		local v193 = t1.value73[Atmosphere]

		if not v193 then
			v193 = {}
			t1.value73[Atmosphere] = v193
		end

		if v193.Offset ~= nil then
			Atmosphere.Offset = 0

			return
		end

		v193.Offset = Atmosphere.Offset
		Atmosphere.Offset = 0
	end
	function t1.value59(p24)
		if not t1.value56 then
			return
		end

		if p24:IsDescendantOf(t1.value24) then
			return
		end

		local ignoreOthers = _G.Settings.Players["Ignore Others"]

		if ignoreOthers then
			ignoreOthers = v177(p24)
		end

		if ignoreOthers then
			return
		end

		local ignoreMe = _G.Settings.Players["Ignore Me"]

		if ignoreMe then
			ignoreMe = t1.value25.Character

			if ignoreMe then
				ignoreMe = p24:IsDescendantOf(t1.value25.Character)
			end
		end

		if ignoreMe then
			return
		end

		if _G.Settings.Players["Ignore Tools"] and p24:IsA("BackpackItem") or p24:FindFirstAncestorWhichIsA("BackpackItem") then
			return
		end

		if table.find(_G.Ignore, p24) or v182(p24) then
			return
		end

		local ClassName = p24.ClassName

		if (ClassName == "Part" or (ClassName == "WedgePart" or ClassName == "CornerWedgePart")) and true or ClassName == "TrussPart" then
			local Other = not _G.Settings["Low Quality Parts"] and _G.Settings.Other

			if Other then
				Other = _G.Settings.Other["Low Quality Parts"]
			end

			if not Other then
				return
			end

			local value21 = t1.value21
			local v199 = t1.value73[p24]

			if not v199 then
				v199 = {}
				t1.value73[p24] = v199
			end

			if v199.Material == nil then
				v199.Material = p24.Material
			end

			p24.Material = value21

			local v200 = t1.value73[p24]

			if not v200 then
				v200 = {}
				t1.value73[p24] = v200
			end

			if v200.Reflectance ~= nil then
				p24.Reflectance = 0

				return
			end

			v200.Reflectance = p24.Reflectance
			p24.Reflectance = 0

			return
		end

		if ClassName == "MeshPart" then
			local lowQualityMeshParts = _G.Settings["Low Quality MeshParts"]

			if not lowQualityMeshParts then
				lowQualityMeshParts = not (_G.Settings.Other and _G.Settings.Other["Low Quality MeshParts"]) and _G.Settings.MeshParts

				if lowQualityMeshParts then
					lowQualityMeshParts = _G.Settings.MeshParts.LowerQuality
				end
			end

			if lowQualityMeshParts then
				local v202 = t1.value73[p24]

				if not v202 then
					v202 = {}
					t1.value73[p24] = v202
				end

				if v202.Reflectance == nil then
					v202.Reflectance = p24.Reflectance
				end

				p24.Reflectance = 0

				local value21 = t1.value21
				local v204 = t1.value73[p24]

				if not v204 then
					v204 = {}
					t1.value73[p24] = v204
				end

				if v204.Material == nil then
					v204.Material = p24.Material
				end

				p24.Material = value21
			end

			local invisibleMeshParts = _G.Settings["Invisible MeshParts"]

			if not invisibleMeshParts then
				invisibleMeshParts = not (_G.Settings.Other and _G.Settings.Other["Invisible MeshParts"]) and _G.Settings.MeshParts

				if invisibleMeshParts then
					invisibleMeshParts = _G.Settings.MeshParts.Invisible
				end
			end

			if invisibleMeshParts then
				local v206 = t1.value73[p24]

				if not v206 then
					v206 = {}
					t1.value73[p24] = v206
				end

				if v206.Transparency == nil then
					v206.Transparency = p24.Transparency
				end

				p24.Transparency = 1

				local v207 = t1.value73[p24]

				if not v207 then
					v207 = {}
					t1.value73[p24] = v207
				end

				if v207.Reflectance == nil then
					v207.Reflectance = p24.Reflectance
				end

				p24.Reflectance = 0

				local value21 = t1.value21
				local v209 = t1.value73[p24]

				if not v209 then
					v209 = {}
					t1.value73[p24] = v209
				end

				if v209.Material == nil then
					v209.Material = p24.Material
				end

				p24.Material = value21
			end

			local MeshParts = _G.Settings.MeshParts

			if MeshParts then
				MeshParts = _G.Settings.MeshParts.NoTexture
			end

			if MeshParts then
				local v211 = t1.value73[p24]

				if not v211 then
					v211 = {}
					t1.value73[p24] = v211
				end

				if v211.TextureID == nil then
					v211.TextureID = p24.TextureID
				end

				p24.TextureID = ""
			end

			local MeshParts2 = _G.Settings.MeshParts

			if MeshParts2 then
				MeshParts2 = _G.Settings.MeshParts.NoMesh
			end

			if MeshParts2 then
				local v213 = t1.value73[p24]

				if not v213 then
					v213 = {}
					t1.value73[p24] = v213
				end

				if v213.MeshId == nil then
					v213.MeshId = p24.MeshId
				end

				p24.MeshId = ""
			end

			local noMeshParts = _G.Settings["No MeshParts"]

			if noMeshParts then
				if noMeshParts then
					p24:Destroy()
				end

				return
			end

			noMeshParts = not (_G.Settings.Other and _G.Settings.Other["No MeshParts"]) and _G.Settings.MeshParts

			if not noMeshParts then
				if noMeshParts then
					p24:Destroy()
				end

				return
			end

			noMeshParts = _G.Settings.MeshParts.Destroy

			if noMeshParts then
				p24:Destroy()
			end
		else
			if ClassName == "SpecialMesh" then
				if _G.Settings.Meshes.NoMesh then
					local v215 = t1.value73[p24]

					if not v215 then
						v215 = {}
						t1.value73[p24] = v215
					end

					if v215.MeshId == nil then
						v215.MeshId = p24.MeshId
					end

					p24.MeshId = ""
				end

				if _G.Settings.Meshes.NoTexture then
				elseif _G.Settings.Meshes.Destroy or _G.Settings["No Meshes"] then
					p24:Destroy()

					return
				else
					return
				end

				local v216 = t1.value73[p24]

				if not v216 then
					v216 = {}
					t1.value73[p24] = v216
				end

				if v216.TextureId == nil then
					v216.TextureId = p24.TextureId
				end

				p24.TextureId = ""

				if _G.Settings.Meshes.Destroy or _G.Settings["No Meshes"] then
					p24:Destroy()

					return
				else
					return
				end
			end

			if ClassName == "Decal" and true or ClassName == "Texture" then
				if _G.Settings.Images.Invisible then
				elseif _G.Settings.Images.Destroy then
					p24:Destroy()

					return
				else
					return
				end

				local v217 = t1.value73[p24]

				if not v217 then
					v217 = {}
					t1.value73[p24] = v217
				end

				if v217.Transparency == nil then
					v217.Transparency = p24.Transparency
				end

				p24.Transparency = 1

				if _G.Settings.Images.Destroy then
					p24:Destroy()

					return
				else
					return
				end
			end

			if ClassName == "ShirtGraphic" then
				if _G.Settings.Images.Invisible then
				elseif _G.Settings.Images.Destroy then
					p24:Destroy()

					return
				else
					return
				end

				local v218 = t1.value73[p24]

				if not v218 then
					v218 = {}
					t1.value73[p24] = v218
				end

				if v218.Graphic == nil then
					v218.Graphic = p24.Graphic
				end

				p24.Graphic = ""

				if _G.Settings.Images.Destroy then
					p24:Destroy()

					return
				else
					return
				end
			end

			if t1.value75[ClassName] then
				local invisibleParticles = _G.Settings["Invisible Particles"]

				if not invisibleParticles then
					invisibleParticles = _G.Settings["No Particles"]

					if not invisibleParticles then
						invisibleParticles = not (_G.Settings.Other and _G.Settings.Other["Invisible Particles"]) and _G.Settings.Particles

						if invisibleParticles then
							invisibleParticles = _G.Settings.Particles.Invisible
						end
					end
				end

				if invisibleParticles then
					local v220 = t1.value73[p24]

					if not v220 then
						v220 = {}
						t1.value73[p24] = v220
					end

					if v220.Enabled == nil then
						v220.Enabled = p24.Enabled
					end

					p24.Enabled = false
				end

				local Particles = not (_G.Settings.Other and _G.Settings.Other["No Particles"]) and _G.Settings.Particles

				if Particles then
				elseif Particles then
					p24:Destroy()

					return
				else
					return
				end

				Particles = _G.Settings.Particles.Destroy

				if Particles then
					p24:Destroy()

					return
				else
					return
				end
			end

			local isPostEffect = p24:IsA("PostEffect")

			if isPostEffect then
				isPostEffect = not _G.Settings["No Camera Effects"] and _G.Settings.Other

				if isPostEffect then
					isPostEffect = _G.Settings.Other["No Camera Effects"]
				end
			end

			if isPostEffect then
				local v223 = t1.value73[p24]

				if not v223 then
					v223 = {}
					t1.value73[p24] = v223
				end

				if v223.Enabled ~= nil then
					p24.Enabled = false

					return
				end

				v223.Enabled = p24.Enabled
				p24.Enabled = false

				return
			end

			if ClassName == "Explosion" then
				local smallerExplosions = _G.Settings["Smaller Explosions"]

				if not smallerExplosions then
					smallerExplosions = not (_G.Settings.Other and _G.Settings.Other["Smaller Explosions"]) and _G.Settings.Explosions

					if smallerExplosions then
						smallerExplosions = _G.Settings.Explosions.Smaller
					end
				end

				if smallerExplosions then
					local v225 = t1.value73[p24]

					if not v225 then
						v225 = {}
						t1.value73[p24] = v225
					end

					if v225.BlastPressure == nil then
						v225.BlastPressure = p24.BlastPressure
					end

					p24.BlastPressure = 1

					local v226 = t1.value73[p24]

					if not v226 then
						v226 = {}
						t1.value73[p24] = v226
					end

					if v226.BlastRadius == nil then
						v226.BlastRadius = p24.BlastRadius
					end

					p24.BlastRadius = 1
				end

				local invisibleExplosions = _G.Settings["Invisible Explosions"]

				if not invisibleExplosions then
					invisibleExplosions = not (_G.Settings.Other and _G.Settings.Other["Invisible Explosions"]) and _G.Settings.Explosions

					if invisibleExplosions then
						invisibleExplosions = _G.Settings.Explosions.Invisible
					end
				end

				if invisibleExplosions then
					local v228 = t1.value73[p24]

					if not v228 then
						v228 = {}
						t1.value73[p24] = v228
					end

					if v228.BlastPressure == nil then
						v228.BlastPressure = p24.BlastPressure
					end

					p24.BlastPressure = 1

					local v229 = t1.value73[p24]

					if not v229 then
						v229 = {}
						t1.value73[p24] = v229
					end

					if v229.BlastRadius == nil then
						v229.BlastRadius = p24.BlastRadius
					end

					p24.BlastRadius = 1

					local v230 = t1.value73[p24]

					if not v230 then
						v230 = {}
						t1.value73[p24] = v230
					end

					if v230.Visible == nil then
						v230.Visible = p24.Visible
					end

					p24.Visible = false
				end

				local noExplosions = _G.Settings["No Explosions"]

				if noExplosions then
					if noExplosions then
						p24:Destroy()
					end

					return
				end

				noExplosions = not (_G.Settings.Other and _G.Settings.Other["No Explosions"]) and _G.Settings.Explosions

				if not noExplosions then
					if noExplosions then
						p24:Destroy()
					end

					return
				end

				noExplosions = _G.Settings.Explosions.Destroy

				if noExplosions then
					p24:Destroy()
				end
			else
				if (ClassName == "Clothing" or ClassName == "SurfaceAppearance") and true or ClassName == "BaseWrap" then
					local Other = not _G.Settings["No Clothes"] and _G.Settings.Other

					if Other then
					elseif Other then
						p24:Destroy()

						return
					else
						return
					end

					Other = _G.Settings.Other["No Clothes"]

					if Other then
						p24:Destroy()

						return
					else
						return
					end
				end

				local v233

				if ClassName == "TextLabel" then
					v233 = p24:IsDescendantOf(t1.value23)
				else
					v233 = false
				end

				if not v233 then
					if ClassName ~= "Model" then
						return
					end

					local Other = not _G.Settings["Low Quality Models"] and _G.Settings.Other

					if Other then
						Other = _G.Settings.Other["Low Quality Models"]
					end

					if not Other then
						return
					end

					local StreamingMesh = Enum.ModelLevelOfDetail.StreamingMesh
					local v236 = t1.value73[p24]

					if not v236 then
						v236 = {}
						t1.value73[p24] = v236
					end

					if v236.LevelOfDetail == nil then
						v236.LevelOfDetail = p24.LevelOfDetail
					end

					p24.LevelOfDetail = StreamingMesh

					return
				end

				local lowerQualityTextLabels = _G.Settings["Lower Quality TextLabels"]

				if not lowerQualityTextLabels then
					lowerQualityTextLabels = not (_G.Settings.Other and _G.Settings.Other["Lower Quality TextLabels"]) and _G.Settings.TextLabels

					if lowerQualityTextLabels then
						lowerQualityTextLabels = _G.Settings.TextLabels.LowerQuality
					end
				end

				if lowerQualityTextLabels then
					local SourceSans = Enum.Font.SourceSans
					local v239 = t1.value73[p24]

					if not v239 then
						v239 = {}
						t1.value73[p24] = v239
					end

					if v239.Font == nil then
						v239.Font = p24.Font
					end

					p24.Font = SourceSans

					local v240 = t1.value73[p24]

					if not v240 then
						v240 = {}
						t1.value73[p24] = v240
					end

					if v240.TextScaled == nil then
						v240.TextScaled = p24.TextScaled
					end

					p24.TextScaled = false

					local v241 = t1.value73[p24]

					if not v241 then
						v241 = {}
						t1.value73[p24] = v241
					end

					if v241.RichText == nil then
						v241.RichText = p24.RichText
					end

					p24.RichText = false

					local v242 = t1.value73[p24]

					if not v242 then
						v242 = {}
						t1.value73[p24] = v242
					end

					if v242.TextSize == nil then
						v242.TextSize = p24.TextSize
					end

					p24.TextSize = 14
				end

				local invisibleTextLabels = _G.Settings["Invisible TextLabels"]

				if not invisibleTextLabels then
					invisibleTextLabels = not (_G.Settings.Other and _G.Settings.Other["Invisible TextLabels"]) and _G.Settings.TextLabels

					if invisibleTextLabels then
						invisibleTextLabels = _G.Settings.TextLabels.Invisible
					end
				end

				if invisibleTextLabels then
					local v244 = t1.value73[p24]

					if not v244 then
						v244 = {}
						t1.value73[p24] = v244
					end

					if v244.Visible == nil then
						v244.Visible = p24.Visible
					end

					p24.Visible = false
				end

				local noTextLabels = _G.Settings["No TextLabels"]

				if noTextLabels then
					if noTextLabels then
						p24:Destroy()
					end

					return
				end

				noTextLabels = not (_G.Settings.Other and _G.Settings.Other["No TextLabels"]) and _G.Settings.TextLabels

				if not noTextLabels then
					if noTextLabels then
						p24:Destroy()
					end

					return
				end

				noTextLabels = _G.Settings.TextLabels.Destroy

				if noTextLabels then
					p24:Destroy()
				end
			end
		end
	end

	Library.CreateToggle(Library, Page, "FpsBooster", false, function(p25)
		t1.value56 = p25
		v70()

		if p25 then
			local s5 = "Boosting game performance, please wait..."

			local function v247()
				local t8 = {
					Title = "System",
					Text = s5,
					Duration = 3
				}

				t1.value37:SetCore("SendNotification", t8)
			end

			t1.value14(v247)
			t1.value76()

			local ChildAdded = t1.value35.ChildAdded

			local function v250(p26)
				if p26.ClassName ~= "Atmosphere" then
					return
				end

				t1.value6(0.1)
				t1.value76()
			end
			local function v251()
				local Other = not _G.Settings["Low Water Graphics"] and _G.Settings.Other

				if Other then
					Other = _G.Settings.Other["Low Water Graphics"]
				end

				local Terrain = Other and t1.value23:WaitForChild("Terrain", 10)

				if not Terrain then
					return
				end

				t1.value74.Terrain = {
					WaterWaveSize = Terrain.WaterWaveSize,
					WaterWaveSpeed = Terrain.WaterWaveSpeed,
					WaterReflectance = Terrain.WaterReflectance,
					WaterTransparency = Terrain.WaterTransparency
				}
				Terrain.WaterWaveSize = 0
				Terrain.WaterWaveSpeed = 0
				Terrain.WaterReflectance = 0
				Terrain.WaterTransparency = 0

				if not sethiddenproperty then
					return
				end

				t1.value14(function()
					t1.value74.TerrainDec = sethiddenproperty(Terrain, "Decoration")
					sethiddenproperty(Terrain, "Decoration", false)
				end)
			end

			t1.value72 = ChildAdded.Connect(ChildAdded, v250)
			t1.value7(t1.value14, v251)

			local function v254()
				local Other = not _G.Settings["No Shadows"] and _G.Settings.Other

				if Other then
					Other = _G.Settings.Other["No Shadows"]
				end

				if not Other then
					return
				end

				t1.value74.Lighting = {
					GlobalShadows = t1.value35.GlobalShadows,
					FogEnd = t1.value35.FogEnd,
					ShadowSoftness = t1.value35.ShadowSoftness
				}
				t1.value35.GlobalShadows = false
				t1.value35.FogEnd = 9000000000
				t1.value35.ShadowSoftness = 0

				if not sethiddenproperty then
					return
				end

				local function v256()
					sethiddenproperty(t1.value35, "Technology", 2)
				end

				t1.value14(v256)
			end

			t1.value7(t1.value14, v254)

			local function v257()
				local Other = not _G.Settings["Low Rendering"] and _G.Settings.Other

				if Other then
					Other = _G.Settings.Other["Low Rendering"]
				end

				if not Other then
					return
				end

				local Rendering = settings().Rendering

				t1.value74.Rendering = {
					QualityLevel = Rendering.QualityLevel,
					MeshPartDetailLevel = Rendering.MeshPartDetailLevel
				}
				Rendering.QualityLevel = 1
				Rendering.MeshPartDetailLevel = Enum.MeshPartDetailLevel.Level04
			end

			t1.value7(t1.value14, v257)

			local function v260()
				local Other = not _G.Settings["Reset Materials"] and _G.Settings.Other

				if Other then
					Other = _G.Settings.Other["Reset Materials"]
				end

				if not Other then
					return
				end

				t1.value74.MaterialService = {
					Use2022Materials = t1.value36.Use2022Materials,
					Children = {}
				}

				local children = t1.value36:GetChildren()

				for i = 1, #children do
					local v264 = children[i]

					t1.value74.MaterialService.Children[v264] = v264.Parent
					v264.Parent = nil
				end

				t1.value36.Use2022Materials = false
			end

			t1.value7(t1.value14, v260)
			t1.value7(t1.value14, function()
				local Other = not _G.Settings["FPS Cap"] and _G.Settings.Other

				if Other then
					Other = _G.Settings.Other["FPS Cap"]
				end

				local setfpscap_

				if Other then
					setfpscap_ = setfpscap
				else
					setfpscap_ = Other
				end

				if not setfpscap_ then
					return
				end

				if type(Other) == "string" and true or type(Other) == "number" then
					setfpscap((tonumber(Other)))

					return
				end

				if Other ~= true then
					return
				end

				setfpscap(999)
			end)

			local function v267()
				local ClearNilInstances = _G.Settings.Other and _G.Settings.Other.ClearNilInstances

				if ClearNilInstances then
					ClearNilInstances = getnilinstances
				end

				if not ClearNilInstances then
					return
				end

				local v269 = getnilinstances()

				for i = 1, #v269 do
					t1.value14(v269[i].Destroy, v269[i])
				end
			end

			t1.value7(t1.value14, v267)

			local t9 = {}

			local function v272(p27)
				t1.value10(t9, p27)
			end

			t1.value40(t1.value23, v272)

			local function v273(p28)
				t1.value10(t9, p28)
			end

			t1.value40(t1.value35, v273)

			local value59 = t1.value59
			local v275 = #t9

			if v275 == 0 then
				return
			end

			local v276 = nil

			t1.value7(function()
				local value9 = t1.value9
				local v278 = value9()

				for i = 1, v275 do
					local v280 = t9[i]

					if v280 then
						value59(v280)
					end

					if value9() - v278 > 0.004 then
						t1.value6()
						v278 = value9()
					end
				end

				if not v276 then
					return
				end

				v276()
			end)
		else
			if t1.value72 then
				t1.value72:Disconnect()
			end

			if fpsBoosterConnW then
				fpsBoosterConnW:Disconnect()
				fpsBoosterConnW = nil
			end

			if fpsBoosterConnL then
				fpsBoosterConnL:Disconnect()
				fpsBoosterConnL = nil
			end

			local t10 = {}

			for k, v in t1.value12(t1.value73) do
				t1.value10(t10, {
					inst = k,
					backup = v
				})
			end

			local function v284(p29)
				local inst = p29.inst
				local backup = p29.backup

				if not inst then
					return
				end

				if backup.Created then
					inst:Destroy()

					return
				end

				if not inst.Parent then
					return
				end

				for k, v in t1.value12(backup) do
					t1.value14(function()
						inst[k] = v
					end)
				end
			end

			local v289 = #t10

			if v289 ~= 0 then
				local v290 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v292 = value9()

					for i = 1, v289 do
						local v294 = t10[i]

						if v294 then
							v284(v294)
						end

						if value9() - v292 > 0.004 then
							t1.value6()
							v292 = value9()
						end
					end

					if not v290 then
						return
					end

					v290()
				end)
			end

			t1.value11(t1.value73)

			local function v295()
				local Terrain = t1.value74.Terrain and t1.value23:FindFirstChildOfClass("Terrain")

				if Terrain then
					Terrain.WaterWaveSize = t1.value74.Terrain.WaterWaveSize
					Terrain.WaterWaveSpeed = t1.value74.Terrain.WaterWaveSpeed
					Terrain.WaterReflectance = t1.value74.Terrain.WaterReflectance
					Terrain.WaterTransparency = t1.value74.Terrain.WaterTransparency
				end

				if t1.value74.Lighting then
					t1.value35.GlobalShadows = t1.value74.Lighting.GlobalShadows
					t1.value35.FogEnd = t1.value74.Lighting.FogEnd
					t1.value35.ShadowSoftness = t1.value74.Lighting.ShadowSoftness
				end

				if t1.value74.Rendering then
					settings().Rendering.QualityLevel = t1.value74.Rendering.QualityLevel
					settings().Rendering.MeshPartDetailLevel = t1.value74.Rendering.MeshPartDetailLevel
				end

				if not t1.value74.MaterialService then
					return
				end

				t1.value36.Use2022Materials = t1.value74.MaterialService.Use2022Materials

				for k, child in t1.value12(t1.value74.MaterialService.Children) do
					if k then
						k.Parent = child
					end
				end
			end

			t1.value14(v295)
			t1.value11(t1.value74)
		end
	end)
	t1.value77 = false
	t1.value78 = {}

	local v299 = t1.value17({}, {
		__mode = "k"
	})

	t1.value79 = nil
	t1.value79 = v299

	function t1.value80(p30)
		if not (p30 and p30.Parent) then
			return
		end

		if t1.value79[p30] then
			return
		end

		local t11 = {
			Parts = {},
			Accessories = {},
			Clothes = {},
			Connections = {}
		}

		local function v301(p31)
			if not (p31 and p31.Parent) then
				return
			end

			local ClassName = p31.ClassName
			local isBasePart = p31:IsA("BasePart")

			if not isBasePart then
				if ClassName == "MeshPart" then
					isBasePart = p31.Name ~= "HumanoidRootPart"
				else
					isBasePart = false
				end
			end

			if isBasePart then
				if p31:FindFirstAncestorOfClass("Accessory") then
					local v304

					if p31.Name == "Handle" then
						v304 = not t11.Accessories[p31]
					else
						v304 = false
					end

					if v304 then
						local t12 = {
							Color = p31.Color,
							Material = p31.Material,
							TextureID = nil,
							MeshInstance = nil
						}

						p31.Color = t1.value3(150, 150, 150)
						p31.Material = t1.value20

						if ClassName == "MeshPart" then
							t12.TextureID = p31.TextureID
							p31.TextureID = ""
						else
							local SpecialMesh = p31:FindFirstChildWhichIsA("SpecialMesh") or p31:FindFirstChildWhichIsA("Mesh")

							if not SpecialMesh then
								t11.Accessories[p31] = t12

								return
							end

							t12.TextureID = SpecialMesh.TextureId
							t12.MeshInstance = SpecialMesh
							SpecialMesh.TextureId = ""
						end

						t11.Accessories[p31] = t12

						return
					else
						return
					end
				elseif t11.Parts[p31] then
					return
				else
					t11.Parts[p31] = {
						Color = p31.Color,
						Material = p31.Material
					}
					p31.Color = t1.value3(150, 150, 150)
					p31.Material = t1.value20

					return
				end
			end

			if p31:IsA("Clothing") or (ClassName == "ShirtGraphic" and true or p31.Name == "Shirt Graphic") then
				if t11.Clothes[p31] then
					return
				end

				t11.Clothes[p31] = p31.Parent
				t1.value8(function()
					p31.Parent = nil
				end)

				return
			end

			if not (ClassName == "SpecialMesh" and true or p31:IsA("FileMesh")) then
				return
			end

			local Parent = p31.Parent
			local v308

			if Parent then
				if Parent.Name == "Handle" then
					v308 = t11.Accessories[Parent]
				else
					v308 = false
				end
			else
				v308 = Parent
			end

			if not v308 then
				return
			end

			local v309 = t11.Accessories[Parent]

			if v309.MeshInstance then
				return
			end

			v309.TextureID = p31.TextureId
			v309.MeshInstance = p31
			p31.TextureId = ""
		end

		local descendants = p30:GetDescendants()

		for i = 1, #descendants do
			v301(descendants[i])
		end

		local function v312(descendant)
			t1.value6()

			if not t1.value77 then
				return
			end

			v301(descendant)
		end

		local connection = p30.DescendantAdded:Connect(v312)

		t1.value10(t11.Connections, connection)
		t1.value79[p30] = t11
	end
	function t1.value81(p32)
		local v314 = t1.value79[p32]

		if v314 then
			for i = 1, #v314.Connections do
				v314.Connections[i]:Disconnect()
			end

			for k, part in t1.value12(v314.Parts) do
				local Parent

				if k then
					Parent = k.Parent
				else
					Parent = k
				end

				if Parent then
					k.Color = part.Color
					k.Material = part.Material
				end
			end

			local v319, v320, v321 = t1.value12(v314.Accessories)

			while true do
				local v322

				v321, v322 = v319(v320, v321)

				if not v321 then
					break
				end

				local Parent

				if v321 then
					Parent = v321.Parent
				else
					Parent = v321
				end

				if Parent then
					v321.Color = v322.Color
					v321.Material = v322.Material

					if v321:IsA("MeshPart") then
						v321.TextureID = v322.TextureID
					elseif v322.MeshInstance then
						v322.MeshInstance.TextureId = v322.TextureID
					end
				end
			end

			for k, _ in t1.value12(v314.Clothes) do
				if k then
					k.Parent = p32
				end
			end

			t1.value79[p32] = nil
		end
	end

	local function v326(p33)
		if not p33 then
			return
		end

		local v327 = t1.value39(t1.value24, p33)

		if not (v327 and not v327:HasAppearanceLoaded()) then
			t1.value6(0.1)

			if not t1.value77 then
				return
			end

			t1.value80(p33)

			return
		end

		local u328 = false
		local connection = nil

		connection = v327.CharacterAppearanceLoaded:Connect(function()
			u328 = true

			if not connection then
				return
			end

			connection:Disconnect()
		end)

		local now = os.clock()
		local v331 = connection

		while true do
			local v332 = not u328

			if v332 then
				v332 = os.clock() - now < 5
			end

			if not v332 then
				break
			end

			t1.value6(0.1)
		end

		if v331 then
			v331:Disconnect()
		end

		t1.value6(0.1)

		if not t1.value77 then
			return
		end

		t1.value80(p33)
	end

	Library:CreateToggle(Page, "Gray Characters", false, function(p34)
		t1.value77 = p34

		if not p34 then
			for i = 1, #t1.value78 do
				t1.value78[i]:Disconnect()
			end

			t1.value11(t1.value78)

			for k, _ in t1.value12(t1.value79) do
				t1.value81(k)
			end

			t1.value11(t1.value79)

			return
		end

		local players = t1.value24:GetPlayers()

		for i = 1, #players do
			local v338 = players[i]

			if v338.Character then
				t1.value7(v326, v338.Character)
			end

			local function v339(character)
				t1.value7(v326, character)
			end

			local connection = v338.CharacterAdded:Connect(v339)

			t1.value10(t1.value78, connection)
		end

		local connection = t1.value24.PlayerAdded:Connect(function(player)
			local connection = player.CharacterAdded:Connect(function(character)
				t1.value7(v326, character)
			end)

			t1.value10(t1.value78, connection)
		end)

		t1.value10(t1.value78, connection)
	end)
	t1.value82 = nil
	Library:CreateToggle(Page, "Remove Shadows", false, function(p35)
		t1.value51 = p35
		v70()

		if p35 then
			t1.value35.GlobalShadows = false
			t1.value82 = t1.value35:GetPropertyChangedSignal("GlobalShadows"):Connect(function()
				local GlobalShadows = t1.value35.GlobalShadows

				if GlobalShadows then
					GlobalShadows = t1.value51
				end

				if not GlobalShadows then
					return
				end

				t1.value35.GlobalShadows = false
			end)
		else
			if t1.value82 then
				t1.value82:Disconnect()
			end

			t1.value35.GlobalShadows = true
		end

		local function v344()
			local value43 = t1.value43
			local value61 = t1.value61
			local v347 = #value43

			if v347 == 0 then
				return
			end

			local v348 = nil

			t1.value7(function()
				local value9 = t1.value9
				local v350 = value9()

				for i = 1, v347 do
					local v352 = value43[i]

					if v352 then
						value61(v352)
					end

					if value9() - v350 > 0.004 then
						t1.value6()
						v350 = value9()
					end
				end

				if not v348 then
					return
				end

				v348()
			end)
		end

		local value42 = t1.value42
		local value60 = t1.value60
		local v355 = #value42

		if v355 == 0 then
			if v344 then
				v23(t1.value43, t1.value61)

				return
			else
				return
			end
		end

		t1.value7(function()
			local value9 = t1.value9
			local v357 = value9()

			for i = 1, v355 do
				local v359 = value42[i]

				if v359 then
					value60(v359)
				end

				if value9() - v357 > 0.004 then
					t1.value6()
					v357 = value9()
				end
			end

			if not v344 then
				return
			end

			v344()
		end)
	end)
	t1.value83 = false
	t1.value84 = nil
	t1.value85 = nil
	t1.value86 = t1.value17({}, {
		__mode = "k"
	})

	function t1.value87(p36)
		if not t1.value83 then
			return
		end

		local ClassName = p36.ClassName

		if not (ClassName == "ParticleEmitter" or (ClassName == "Sparkles" or (ClassName == "Fire" or (ClassName == "Smoke" or ((ClassName == "Trail" or ClassName == "Beam") and true or p36:IsA("PostEffect")))))) then
			if ClassName ~= "Explosion" then
				return
			end

			p36:Destroy()

			return
		end

		if t1.value86[p36] then
			p36.Enabled = false

			return
		end

		local connection = p36:GetPropertyChangedSignal("Enabled"):Connect(function()
			local value83 = t1.value83

			if value83 then
				value83 = p36.Enabled == true
			end

			if not value83 then
				return
			end

			p36.Enabled = false
		end)

		t1.value86[p36] = {
			Enabled = p36.Enabled,
			Conn = connection
		}
		p36.Enabled = false
	end

	Library:CreateToggle(Page, "Remove Particles", false, function(p37)
		t1.value83 = p37
		v70()

		if p37 then
			local t13 = {}

			local function v364(p38)
				t1.value10(t13, p38)
			end

			t1.value40(t1.value23, v364)

			local function v365(p39)
				t1.value10(t13, p39)
			end

			t1.value40(t1.value35, v365)

			local value87 = t1.value87
			local v367 = #t13

			if v367 ~= 0 then
				local v368 = nil

				t1.value7(function()
					local value9 = t1.value9
					local v370 = value9()

					for i = 1, v367 do
						local v372 = t13[i]

						if v372 then
							value87(v372)
						end

						if value9() - v370 > 0.004 then
							t1.value6()
							v370 = value9()
						end
					end

					if not v368 then
						return
					end

					v368()
				end)
			end

			t1.value84 = t1.value23.DescendantAdded:Connect(function(descendant)
				if not t1.value83 then
					return
				end

				t1.value8(t1.value87, descendant)
			end)
			t1.value85 = t1.value35.DescendantAdded:Connect(function(descendant)
				if not t1.value83 then
					return
				end

				t1.value8(t1.value87, descendant)
			end)
		else
			if t1.value84 then
				t1.value84:Disconnect()
			end

			if t1.value85 then
				t1.value85:Disconnect()
			end

			local value86 = t1.value86

			t1.value17({}, {
				__mode = "k"
			})

			local t14 = {}

			for k, v in t1.value12(value86) do
				t1.value10(t14, {
					obj = k,
					data = v
				})
			end

			local function v377(p40)
				local obj = p40.obj
				local data = p40.data

				if data.Conn then
					data.Conn:Disconnect()
				end

				local Parent

				if obj then
					Parent = obj.Parent
				else
					Parent = obj
				end

				if not (Parent and data.Enabled ~= nil) then
					return
				end

				obj.Enabled = data.Enabled
			end

			local v381 = #t14

			if v381 == 0 then
				return
			end

			local v382 = nil

			t1.value7(function()
				local value9 = t1.value9
				local v384 = value9()

				for i = 1, v381 do
					local v386 = t14[i]

					if v386 then
						v377(v386)
					end

					if value9() - v384 > 0.004 then
						t1.value6()
						v384 = value9()
					end
				end

				if not v382 then
					return
				end

				v382()
			end)
		end
	end)
	Library:CreateSection(Page, "Double Jump Effects (P1)", "Left")

	local v387 = GetParentTarget(Page)

	Library:CreateSection(Page, "Double Jump (P2)", "Left")

	local v388 = GetParentTarget(Page)

	Library:CreateSection(Page, "Crosshairs (P1)", "Right")
	Library:CreateSlider(Page, "Cursor Size", 10, 100, 24, UpdateCursorSizes)
	t1.value88 = GetParentTarget(Page)
	Library:CreateSection(Page, "Crosshairs (P2)", "Right")
	t1.value89 = GetParentTarget(Page)
	t1.value90 = {}
	t1.value91 = t1.value17({}, {
		__mode = "k"
	})

	local v389 = t1.value17({}, {
		__mode = "k"
	})

	t1.value92 = nil
	t1.value92 = v389

	function t1.value93(p41)
		t1.value29.TexturesPage_DoubleJump = p41

		for i = 1, #t1.value90 do
			t1.value90[i]:Disconnect()
		end

		t1.value11(t1.value90)

		local function v391(p42)
			local ClassName = p42.ClassName

			if p41 == "Default" then
				p42:SetAttribute("CurrentTexture", nil)

				if ClassName == "ParticleEmitter" then
					if t1.value91[p42] then
						p42.Texture = t1.value91[p42]

						return
					else
						return
					end
				end

				if ClassName ~= "Sparkles" then
					return
				end

				local v393 = p42.Parent:FindFirstChild("CustomSparkleClone_" .. p42.Name)

				if v393 then
					v393:Destroy()
				end

				if t1.value92[p42] then
					p42.SparkleColor = t1.value92[p42]

					return
				end

				p42.SparkleColor = t1.value2(1, 1, 1)

				return
			end

			if p42:GetAttribute("CurrentTexture") == p41 then
				return
			end

			p42:SetAttribute("CurrentTexture", p41)

			if ClassName == "ParticleEmitter" then
				local v394, v395 = t1.value14(function()
					return p42.Texture
				end)

				if v394 then
					if v395 then
						v395 = t1.value15(t1.value16(v395), "sparkles_main")
					end
				else
					v395 = v394
				end

				if not v395 then
					return
				end

				if t1.value91[p42] then
					p42.Texture = p41

					return
				end

				t1.value91[p42] = p42.Texture
				p42.Texture = p41
			else
				if ClassName ~= "Sparkles" then
					return
				end

				if not t1.value92[p42] then
					t1.value92[p42] = p42.SparkleColor
				end

				p42.SparkleColor = t1.value2(0, 0, 0)

				local v396 = p42.Parent:FindFirstChild("CustomSparkleClone_" .. p42.Name)

				if v396 then
					v396:Destroy()
				end

				local ParticleEmitter = t1.value1("ParticleEmitter")

				ParticleEmitter.Name = "CustomSparkleClone_" .. p42.Name
				ParticleEmitter.Texture = p41
				ParticleEmitter.Rate = 20
				ParticleEmitter.Speed = NumberRange.new(2, 4)
				ParticleEmitter.Lifetime = NumberRange.new(1.5, 2)
				ParticleEmitter.Rotation = NumberRange.new(0, 360)
				ParticleEmitter.RotSpeed = NumberRange.new(-50, 50)
				ParticleEmitter.LightEmission = 0.8
				ParticleEmitter.ZOffset = 1
				ParticleEmitter.Brightness = 2
				ParticleEmitter.Size = NumberSequence.new({ NumberSequenceKeypoint.new(0, 0), NumberSequenceKeypoint.new(0.5, 1), NumberSequenceKeypoint.new(1, 0) })
				ParticleEmitter.Parent = p42.Parent
				ParticleEmitter.Enabled = p42.Enabled

				local connection = p42:GetPropertyChangedSignal("Enabled"):Connect(function()
					if not ParticleEmitter then
						return
					end

					ParticleEmitter.Enabled = p42.Enabled
				end)
				local connection2 = p42.Destroying:Connect(function()
					if connection then
						connection:Disconnect()
					end

					if not ParticleEmitter then
						return
					end

					ParticleEmitter:Destroy()
				end)

				t1.value10(t1.value90, connection)
				t1.value10(t1.value90, connection2)
			end
		end

		local players = t1.value24:GetPlayers()

		for i = 1, #players do
			local Character = players[i].Character

			if Character then
				local descendants = Character:GetDescendants()

				for i2 = 1, #descendants do
					local v405 = descendants[i2]
					local ClassName = v405.ClassName

					if ClassName == "ParticleEmitter" and true or ClassName == "Sparkles" then
						v391(v405)
					end
				end
			end
		end

		local function v407()
			local t15 = {}

			local function v409(p43)
				local ClassName = p43.ClassName

				if not (ClassName == "ParticleEmitter" and true or ClassName == "Sparkles") then
					return
				end

				t1.value10(t15, p43)
			end

			t1.value40(t1.value23, v409)

			local v411 = v391
			local v412 = #t15

			if v412 == 0 then
				return
			end

			local v413 = nil

			t1.value7(function()
				local value9 = t1.value9
				local v415 = value9()

				for i = 1, v412 do
					local v417 = t15[i]

					if v417 then
						v411(v417)
					end

					if value9() - v415 > 0.004 then
						t1.value6()
						v415 = value9()
					end
				end

				if not v413 then
					return
				end

				v413()
			end)
		end

		t1.value7(v407)

		if p41 == "Default" then
			return
		end

		t1.value10(t1.value90, t1.value23.DescendantAdded:Connect(function(descendant)
			local ClassName = descendant.ClassName

			if not (ClassName == "ParticleEmitter" and true or ClassName == "Sparkles") then
				return
			end

			t1.value8(function()
				v391(descendant)
			end)
		end))

		local players2 = t1.value24:GetPlayers()

		for i = 1, #players2 do
			local v421 = players2[i]

			t1.value10(t1.value90, v421.CharacterAdded:Connect(function(character)
				local function v422(descendant)
					local ClassName = descendant.ClassName

					if not (ClassName == "ParticleEmitter" and true or ClassName == "Sparkles") then
						return
					end

					local function v424()
						v391(descendant)
					end

					t1.value8(v424)
				end

				t1.value10(t1.value90, character.DescendantAdded:Connect(v422))
			end))
		end

		t1.value10(t1.value90, t1.value24.PlayerAdded:Connect(function(player)
			t1.value10(t1.value90, player.CharacterAdded:Connect(function(character)
				t1.value10(t1.value90, character.DescendantAdded:Connect(function(descendant)
					local ClassName = descendant.ClassName

					if not (ClassName == "ParticleEmitter" and true or ClassName == "Sparkles") then
						return
					end

					local function v426()
						v391(descendant)
					end

					t1.value8(v426)
				end))
			end))
		end))
	end

	local Frame = t1.value1("Frame")

	Frame.Size = t1.value4(1, -2, 0, t1.value31.ItemHeightNew)
	Frame.Position = t1.value4(0, 1, 0, 0)
	Frame.BackgroundTransparency = 1
	Frame.Parent = v387
	t1.value94 = t1.value1("TextBox")
	t1.value94.Size = t1.value4(1, -65, 1, 0)
	t1.value94.Position = t1.value4(0, 5, 0, 0)
	t1.value94.BackgroundTransparency = 1
	t1.value94.Text = ""

	local TexturesPage_DoubleJump = t1.value29.TexturesPage_DoubleJump
	local v429

	if TexturesPage_DoubleJump then
		v429 = TexturesPage_DoubleJump ~= "Default"
	else
		v429 = TexturesPage_DoubleJump
	end

	if v429 then
		t1.value94.Text = TexturesPage_DoubleJump:gsub("rbxassetid://", "")
	end

	t1.value94.PlaceholderText = "Texture ID..."
	t1.value94.TextColor3 = t1.value28.TextDark
	t1.value94.PlaceholderColor3 = t1.value28.TextDark
	t1.value94.Font = t1.value28.Font
	t1.value94.TextSize = 10
	t1.value94.TextXAlignment = Enum.TextXAlignment.Left
	t1.value94.ClearTextOnFocus = false
	t1.value94.Parent = Frame

	local TextButton = t1.value1("TextButton")

	TextButton.Size = t1.value4(0, 55, 0, 20)
	TextButton.Position = t1.value4(1, -60, 0.5, -10)
	TextButton.BackgroundColor3 = t1.value2(0, 0, 0)
	TextButton.BackgroundTransparency = 0.45
	TextButton.Text = "Apply"
	TextButton.Font = Enum.Font.GothamBold
	TextButton.TextSize = 10
	TextButton.TextColor3 = t1.value28.TextDark
	TextButton.Parent = Frame
	t1.value1("UICorner", TextButton).CornerRadius = t1.value5(0, 4)
	t1.value1("UIStroke", TextButton).Color = t1.value3(40, 40, 40)
	TextButton.MouseButton1Click:Connect(function()
		local Text = t1.value94.Text
		local v432

		if Text then
			v432 = Text ~= ""
		else
			v432 = Text
		end

		local v433 = v432 and v11(Text)

		if not v433 then
			return
		end

		t1.value29.TexturesPage_DoubleJump = v433
		t1.value93(v433)
	end)

	local v434 = v29(v387)
	local v435 = v29(v388)

	t1.value95 = t1.value1("TextButton")
	t1.value95.Text = "Default"
	t1.value95.Font = Enum.Font.GothamBold
	t1.value95.TextSize = 9
	t1.value95.TextColor3 = t1.value28.TextDark
	t1.value95.BackgroundColor3 = t1.value2(0, 0, 0)
	t1.value95.BackgroundTransparency = 0.45
	t1.value95.Parent = v434
	t1.value1("UICorner", t1.value95).CornerRadius = t1.value5(0, 4)
	t1.value96 = t1.value1("UIStroke", t1.value95)
	t1.value96.Color = t1.value3(40, 40, 40)
	t1.value95.MouseEnter:Connect(function()
		local value26 = t1.value26
		local value96 = t1.value96
		local TweenInfo_ = TweenInfo

		value26.Create(value26, value96, TweenInfo_.new(0.2), {
			Color = t1.value28.Accent
		}):Play()

		local value262 = t1.value26
		local value95 = t1.value95
		local tweenInfo = TweenInfo.new(0.2)

		value262.Create(value262, value95, tweenInfo, {
			TextColor3 = t1.value28.Accent
		}):Play()
	end)
	t1.value95.MouseLeave:Connect(function()
		local value26 = t1.value26
		local value96 = t1.value96
		local tweenInfoNew = TweenInfo.new

		value26.Create(value26, value96, tweenInfoNew(0.2), {
			Color = t1.value3(40, 40, 40)
		}):Play()
		t1.value26:Create(t1.value95, TweenInfo.new(0.2), {
			TextColor3 = t1.value28.TextDark
		}):Play()
	end)
	t1.value95.MouseButton1Click:Connect(function()
		t1.value29.TexturesPage_DoubleJump = "Default"
		t1.value93("Default")
	end)

	local v445, v446, v447 = t1.value13({
		"81110491136307",
		"117864251880006",
		"120181545812734",
		"74056211768119",
		"116419901031627",
		"92247449256845",
		"113423466689563",
		"90279999098357",
		"94123299347751",
		"105065705443269",
		"122902019815288",
		"138617722401997",
		"75192344666220",
		"139646605021296",
		"133105930199997",
		"96482830256985",
		"107964624563909",
		"122185636007520",
		"130200330618832",
		"87265760472097",
		"125925535971201",
		"99196076742919",
		"80555494674270",
		"77364460442867",
		"84014330993791",
		"80081088131892",
		"70463296258416",
		"84683340454265",
		"110707827597886",
		"94615398600162",
		"136555497393349",
		"115660311620643",
		"87528090276578",
		"91090339346537",
		"104273334466284",
		"125877054664162",
		"99696281853254",
		"115091366896134",
		"118044368508403",
		"87279985695409",
		"88659120529974",
		"131354665961922",
		"126765746104314",
		"98327034347444",
		"110482556550211",
		"94239072077284"
	})

	while true do
		local v448

		v447, v448 = v445(v446, v447)

		if not v447 then
			break
		end

		local parent = v447 <= 19 and v434 and v434 or v435
		local ImageButton = t1.value1("ImageButton")

		ImageButton.BackgroundColor3 = t1.value2(0, 0, 0)
		ImageButton.BackgroundTransparency = 0.45
		ImageButton.Image = "rbxassetid://" .. v448
		ImageButton.ScaleType = Enum.ScaleType.Crop
		ImageButton.Parent = parent
		t1.value1("UICorner", ImageButton).CornerRadius = t1.value5(0, 4)

		local UIStroke = t1.value1("UIStroke", ImageButton)

		UIStroke.Color = t1.value3(40, 40, 40)
		ImageButton.MouseEnter:Connect(function()
			local value26 = t1.value26
			local v453 = UIStroke
			local tweenInfo = TweenInfo.new(0.2)

			value26.Create(value26, v453, tweenInfo, {
				Color = t1.value28.Accent
			}):Play()
		end)
		ImageButton.MouseLeave:Connect(function()
			local value26 = t1.value26
			local v456 = UIStroke
			local TweenInfo_ = TweenInfo

			value26.Create(value26, v456, TweenInfo_.new(0.2), {
				Color = t1.value3(40, 40, 40)
			}):Play()
		end)
		ImageButton.MouseButton1Click:Connect(function()
			t1.value29.TexturesPage_DoubleJump = "rbxassetid://" .. v448
			t1.value93("rbxassetid://" .. v448)
		end)
	end

	if t1.value30 then
		Library:CreateSection(Page, "Mobile Button Jump (P1)", "Left")

		local v458 = GetParentTarget(Page)

		Library:CreateSection(Page, "Mobile Button Jump (P2)", "Right")

		local v459 = GetParentTarget(Page)
		local t16 = {}

		local function v461(p44)
			t1.value29.TexturesPage_MobileJump = p44

			if not t1.value30 then
				return
			end

			for _, v in t1.value13(t16) do
				v:Disconnect()
			end

			t1.value11(t16)

			local PlayerGui = t1.value25:WaitForChild("PlayerGui")

			local function v465(p45)
				local TouchControlFrame = p45:FindFirstChild("TouchControlFrame") or p45:WaitForChild("TouchControlFrame", 2)

				if not TouchControlFrame then
					return
				end

				local JumpButton = TouchControlFrame:FindFirstChild("JumpButton") or TouchControlFrame:WaitForChild("JumpButton", 2)

				if not JumpButton then
					return
				end

				if p44 ~= "Default" then
					JumpButton.ImageTransparency = 1

					local CustomJumpIcon = JumpButton:FindFirstChild("CustomJumpIcon")

					if CustomJumpIcon then
						CustomJumpIcon:Destroy()
					end

					local ImageLabel = t1.value1("ImageLabel")

					ImageLabel.Name = "CustomJumpIcon"
					ImageLabel.Size = t1.value4(1, 0, 1, 0)
					ImageLabel.Position = t1.value4(0, 0, 0, 0)
					ImageLabel.BackgroundTransparency = 1
					ImageLabel.Image = p44
					ImageLabel.ZIndex = JumpButton.ZIndex + 50
					ImageLabel.Parent = JumpButton

					local function v470(input)
						local UserInputType = input.UserInputType

						if not (UserInputType == Enum.UserInputType.Touch and true or UserInputType == Enum.UserInputType.MouseButton1) then
							return
						end

						ImageLabel.ImageColor3 = t1.value3(150, 150, 150)
					end

					local connection = JumpButton.InputBegan:Connect(v470)

					local function v473(input)
						local UserInputType = input.UserInputType

						if not (UserInputType == Enum.UserInputType.Touch and true or UserInputType == Enum.UserInputType.MouseButton1) then
							return
						end

						ImageLabel.ImageColor3 = t1.value3(255, 255, 255)
					end

					local connection2 = JumpButton.InputEnded:Connect(v473)

					t1.value10(t16, connection)
					t1.value10(t16, connection2)

					return
				end

				JumpButton.ImageTransparency = 0

				local CustomJumpIcon = JumpButton:FindFirstChild("CustomJumpIcon")

				if not CustomJumpIcon then
					return
				end

				CustomJumpIcon:Destroy()
			end

			if PlayerGui:FindFirstChild("TouchGui") then
				t1.value7(v465, PlayerGui.TouchGui)
			end

			if p44 == "Default" then
				return
			end

			t1.value10(t16, PlayerGui.ChildAdded:Connect(function(child)
				if child.Name ~= "TouchGui" then
					return
				end

				local v477 = v465

				t1.value7(v477, child)
			end))
		end

		local Frame2 = t1.value1("Frame")

		Frame2.Size = t1.value4(1, -2, 0, t1.value31.ItemHeightNew)
		Frame2.Position = t1.value4(0, 1, 0, 0)
		Frame2.BackgroundTransparency = 1
		Frame2.Parent = v458

		local TextBox = t1.value1("TextBox")

		TextBox.Size = t1.value4(1, -65, 1, 0)
		TextBox.Position = t1.value4(0, 5, 0, 0)
		TextBox.BackgroundTransparency = 1
		TextBox.Text = ""

		local TexturesPage_MobileJump = t1.value29.TexturesPage_MobileJump
		local v481

		if TexturesPage_MobileJump then
			v481 = TexturesPage_MobileJump ~= "Default"
		else
			v481 = TexturesPage_MobileJump
		end

		if v481 then
			TextBox.Text = TexturesPage_MobileJump:gsub("rbxassetid://", "")
		end

		TextBox.PlaceholderText = "Texture ID..."
		TextBox.TextColor3 = t1.value28.TextDark
		TextBox.PlaceholderColor3 = t1.value28.TextDark
		TextBox.Font = t1.value28.Font
		TextBox.TextSize = 10
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.ClearTextOnFocus = false
		TextBox.Parent = Frame2

		local TextButton2 = t1.value1("TextButton")

		TextButton2.Size = t1.value4(0, 55, 0, 20)
		TextButton2.Position = t1.value4(1, -60, 0.5, -10)
		TextButton2.BackgroundColor3 = t1.value2(0, 0, 0)
		TextButton2.BackgroundTransparency = 0.45
		TextButton2.Text = "Apply"
		TextButton2.Font = Enum.Font.GothamBold
		TextButton2.TextSize = 10
		TextButton2.TextColor3 = t1.value28.TextDark
		TextButton2.Parent = Frame2
		t1.value1("UICorner", TextButton2).CornerRadius = t1.value5(0, 4)
		t1.value1("UIStroke", TextButton2).Color = t1.value3(40, 40, 40)
		TextButton2.MouseButton1Click:Connect(function()
			local Text = TextBox.Text
			local v484

			if Text then
				v484 = Text ~= ""
			else
				v484 = Text
			end

			local v485 = v484 and v11(Text)

			if not v485 then
				return
			end

			t1.value29.TexturesPage_MobileJump = v485
			v461(v485)
		end)

		local v486 = v29(v458)
		local v487 = v29(v459)
		local TextButton3 = t1.value1("TextButton")

		TextButton3.Text = "Default"
		TextButton3.Font = Enum.Font.GothamBold
		TextButton3.TextSize = 9
		TextButton3.TextColor3 = t1.value28.TextDark
		TextButton3.BackgroundColor3 = t1.value2(0, 0, 0)
		TextButton3.BackgroundTransparency = 0.45
		TextButton3.Parent = v486
		t1.value1("UICorner", TextButton3).CornerRadius = t1.value5(0, 4)

		local UIStroke = t1.value1("UIStroke", TextButton3)

		UIStroke.Color = t1.value3(40, 40, 40)
		TextButton3.MouseEnter:Connect(function()
			local value26 = t1.value26
			local v491 = UIStroke
			local tweenInfo = TweenInfo.new(0.2)
			local value28 = t1.value28

			value26.Create(value26, v491, tweenInfo, {
				Color = value28.Accent
			}):Play()
			t1.value26:Create(TextButton3, TweenInfo.new(0.2), {
				TextColor3 = t1.value28.Accent
			}):Play()
		end)
		TextButton3.MouseLeave:Connect(function()
			local value26 = t1.value26
			local v495 = UIStroke
			local tweenInfo = TweenInfo.new(0.2)

			value26.Create(value26, v495, tweenInfo, {
				Color = t1.value3(40, 40, 40)
			}):Play()

			local value262 = t1.value26
			local value95 = t1.value95
			local tweenInfo2 = TweenInfo.new(0.2)

			value262.Create(value262, value95, tweenInfo2, {
				TextColor3 = t1.value28.TextDark
			}):Play()
		end)
		TextButton3.MouseButton1Click:Connect(function()
			t1.value29.TexturesPage_MobileJump = "Default"
			v461("Default")
		end)

		local t17 = {
			"126321670529682",
			"77430663366893",
			"115979689020396",
			"101678026501268",
			"100604012502918",
			"107988778180975",
			"106355869384286",
			"119823685069603",
			"127937285343472"
		}

		for i = 1, #t17 do
			local v502 = t17[i]
			local ImageButton = t1.value1("ImageButton")

			ImageButton.BackgroundColor3 = t1.value2(0, 0, 0)
			ImageButton.BackgroundTransparency = 0.45
			ImageButton.Image = "rbxassetid://" .. v502
			ImageButton.ScaleType = Enum.ScaleType.Crop
			ImageButton.Parent = v486
			t1.value1("UICorner", ImageButton).CornerRadius = t1.value5(0, 4)

			local UIStroke2 = t1.value1("UIStroke", ImageButton)

			UIStroke2.Color = t1.value3(40, 40, 40)
			ImageButton.MouseEnter:Connect(function()
				local value26 = t1.value26
				local v506 = UIStroke2
				local tweenInfo = TweenInfo.new(0.2)

				value26.Create(value26, v506, tweenInfo, {
					Color = t1.value28.Accent
				}):Play()
			end)
			ImageButton.MouseLeave:Connect(function()
				local value26 = t1.value26
				local v509 = UIStroke2
				local tweenInfo = TweenInfo.new(0.2)
				local value3 = t1.value3

				value26.Create(value26, v509, tweenInfo, {
					Color = value3(40, 40, 40)
				}):Play()
			end)
			ImageButton.MouseButton1Click:Connect(function()
				t1.value29.TexturesPage_MobileJump = "rbxassetid://" .. v502
				v461("rbxassetid://" .. v502)
			end)
		end

		local t18 = {
			"70463296258416",
			"80555494674270",
			"74056211768119",
			"115091366896134",
			"117864251880006",
			"130200330618832",
			"77364460442867",
			"115739146011724"
		}

		for i = 1, #t18 do
			local v514 = t18[i]
			local ImageButton = t1.value1("ImageButton")

			ImageButton.BackgroundColor3 = t1.value2(0, 0, 0)
			ImageButton.BackgroundTransparency = 0.45
			ImageButton.Image = "rbxassetid://" .. v514
			ImageButton.ScaleType = Enum.ScaleType.Crop
			ImageButton.Parent = v487
			t1.value1("UICorner", ImageButton).CornerRadius = t1.value5(0, 4)

			local UIStroke2 = t1.value1("UIStroke", ImageButton)

			UIStroke2.Color = t1.value3(40, 40, 40)
			ImageButton.MouseEnter:Connect(function()
				t1.value26:Create(UIStroke2, TweenInfo.new(0.2), {
					Color = t1.value28.Accent
				}):Play()
			end)
			ImageButton.MouseLeave:Connect(function()
				local value26 = t1.value26
				local v518 = UIStroke2
				local tweenInfoNew = TweenInfo.new

				value26.Create(value26, v518, tweenInfoNew(0.2), {
					Color = t1.value3(40, 40, 40)
				}):Play()
			end)
			ImageButton.MouseButton1Click:Connect(function()
				t1.value29.TexturesPage_MobileJump = "rbxassetid://" .. v514
				v461("rbxassetid://" .. v514)
			end)
		end
	end

	t1.value97 = {
		{
			Name = "Default",
			ID = "RESET"
		},
		{
			Name = "Use Cursor",
			ID = "15368174199"
		},
		{
			Name = "Use Cursor",
			ID = "12701650945"
		},
		{
			Name = "Use Cursor",
			ID = "119350232226515"
		},
		{
			Name = "Use Cursor",
			ID = "5060823578"
		},
		{
			Name = "Use Cursor",
			ID = "9896571799"
		},
		{
			Name = "Use Cursor",
			ID = "139654963330788"
		},
		{
			Name = "Use Cursor",
			ID = "13441649168"
		},
		{
			Name = "Use Cursor",
			ID = "88005681147215"
		},
		{
			Name = "Use Cursor",
			ID = "72902755839437"
		},
		{
			Name = "Use Cursor",
			ID = "128926155948846"
		},
		{
			Name = "Use Cursor",
			ID = "95348763251820"
		},
		{
			Name = "Use Cursor",
			ID = "138513473967293"
		},
		{
			Name = "Use Cursor",
			ID = "82043397777881"
		},
		{
			Name = "Use Cursor",
			ID = "84583215296063"
		},
		{
			Name = "Use Cursor",
			ID = "120058675182639"
		},
		{
			Name = "Use Cursor",
			ID = "130210380679877"
		},
		{
			Name = "Use Cursor",
			ID = "74264514489577"
		},
		{
			Name = "Use Cursor",
			ID = "115877213393063"
		},
		{
			Name = "Use Cursor",
			ID = "133579119074302"
		},
		{
			Name = "Use Cursor",
			ID = "137970082797101"
		},
		{
			Name = "Use Cursor",
			ID = "116865736993300"
		},
		{
			Name = "Use Cursor",
			ID = "70613337612134"
		},
		{
			Name = "Use Cursor",
			ID = "75670552980458"
		},
		{
			Name = "Use Cursor",
			ID = "100822311002882"
		},
		{
			Name = "Use Cursor",
			ID = "135331308026486"
		},
		{
			Name = "Use Cursor",
			ID = "91090339346537"
		},
		{
			Name = "Use Cursor",
			ID = "99626703938913"
		},
		{
			Name = "Use Cursor",
			ID = "112195317343485"
		},
		{
			Name = "Use Cursor",
			ID = "89746976355403"
		},
		{
			Name = "Use Cursor",
			ID = "132191954497107"
		},
		{
			Name = "Use Cursor",
			ID = "93050147531878"
		},
		{
			Name = "Use Cursor",
			ID = "88343941218179"
		},
		{
			Name = "Use Cursor",
			ID = "81277812126144"
		},
		{
			Name = "Use Cursor",
			ID = "131422226977434"
		},
		{
			Name = "Use Cursor",
			ID = "116499481211766"
		},
		{
			Name = "Use Cursor",
			ID = "139192004969086"
		},
		{
			Name = "Use Cursor",
			ID = "115820239502902"
		},
		{
			Name = "Use Cursor",
			ID = "120310742918528"
		},
		{
			Name = "Use Cursor",
			ID = "136950673657024"
		},
		{
			Name = "Use Cursor",
			ID = "70605770897445"
		},
		{
			Name = "Use Cursor",
			ID = "139757643584831"
		},
		{
			Name = "Use Cursor",
			ID = "110628249969845"
		},
		{
			Name = "Use Cursor",
			ID = "93399485814906"
		},
		{
			Name = "Use Cursor",
			ID = "113798148406809"
		},
		{
			Name = "Use Cursor",
			ID = "106639141298923"
		},
		{
			Name = "Use Cursor",
			ID = "72220923266288"
		}
	}

	local function v520(p46)
		local Frame2 = t1.value1("Frame")

		Frame2.Size = t1.value4(1, -2, 0, t1.value31.ItemHeightNew)
		Frame2.Position = t1.value4(0, 1, 0, 0)
		Frame2.BackgroundTransparency = 1
		Frame2.Parent = t1.value88

		local TextBox = t1.value1("TextBox")

		TextBox.Size = t1.value4(1, -65, 1, 0)
		TextBox.Position = t1.value4(0, 5, 0, 0)
		TextBox.BackgroundTransparency = 1
		TextBox.Text = ""

		local v523 = "TexturesPage_Crosshair_" .. p46 and "Mobile" or "PC"
		local v524 = t1.value29[v523]
		local v525

		if v524 then
			v525 = v524 ~= "RESET"
		else
			v525 = v524
		end

		if v525 then
			TextBox.Text = v524:gsub("rbxassetid://", "")
		end

		TextBox.PlaceholderText = "Texture ID..."
		TextBox.TextColor3 = t1.value28.TextDark
		TextBox.PlaceholderColor3 = t1.value28.TextDark
		TextBox.Font = t1.value28.Font
		TextBox.TextSize = 10
		TextBox.TextXAlignment = Enum.TextXAlignment.Left
		TextBox.ClearTextOnFocus = false
		TextBox.Parent = Frame2

		local TextButton2 = t1.value1("TextButton")

		TextButton2.Size = t1.value4(0, 55, 0, 20)
		TextButton2.Position = t1.value4(1, -60, 0.5, -10)
		TextButton2.BackgroundColor3 = t1.value2(0, 0, 0)
		TextButton2.BackgroundTransparency = 0.45
		TextButton2.Text = "Apply"
		TextButton2.Font = Enum.Font.GothamBold
		TextButton2.TextSize = 10
		TextButton2.TextColor3 = t1.value28.TextDark
		TextButton2.Parent = Frame2
		t1.value1("UICorner", TextButton2).CornerRadius = t1.value5(0, 4)
		t1.value1("UIStroke", TextButton2).Color = t1.value3(40, 40, 40)

		local function v527()
			local Text = TextBox.Text

			if Text == "" then
				return
			end

			local v529 = v11(Text)
			local v530 = "TexturesPage_Crosshair_" .. p46 and "Mobile" or "PC"

			t1.value29[v530] = v529

			if p46 then
				t1.value33.Image = v529
				t1.value33.Visible = true

				return
			end

			t1.value34.Image = v529
			t1.value32(true)
			t1.value34.Visible = true

			local TexturesPage_Crosshair_PC = t1.value29.TexturesPage_Crosshair_PC
			local v532 = t1

			if TexturesPage_Crosshair_PC then
				if TexturesPage_Crosshair_PC == "RESET" then
					TexturesPage_Crosshair_PC = false
				else
					TexturesPage_Crosshair_PC = not t1.value30
				end
			end

			v532.value41 = TexturesPage_Crosshair_PC
		end

		TextButton2.MouseButton1Click:Connect(v527)

		local v533 = v29(t1.value88)
		local v534 = v29(t1.value89)

		for i = 1, #t1.value97 do
			local v536 = t1.value97[i]
			local parent = i <= 18 and v533 and v533 or v534

			if v536.ID == "RESET" then
				local TextButton3 = t1.value1("TextButton")

				TextButton3.Text = "Default"
				TextButton3.Font = Enum.Font.GothamBold
				TextButton3.TextSize = 9
				TextButton3.TextColor3 = t1.value28.TextDark
				TextButton3.BackgroundColor3 = t1.value2(0, 0, 0)
				TextButton3.BackgroundTransparency = 0.45
				TextButton3.Parent = parent
				t1.value1("UICorner", TextButton3).CornerRadius = t1.value5(0, 4)

				local UIStroke = t1.value1("UIStroke", TextButton3)

				UIStroke.Color = t1.value3(40, 40, 40)
				TextButton3.MouseEnter:Connect(function()
					t1.value26:Create(UIStroke, TweenInfo.new(0.2), {
						Color = t1.value28.Accent
					}):Play()

					local value26 = t1.value26
					local v541 = TextButton3
					local tweenInfo = TweenInfo.new(0.2)
					local value28 = t1.value28

					value26.Create(value26, v541, tweenInfo, {
						TextColor3 = value28.Accent
					}):Play()
				end)
				TextButton3.MouseLeave:Connect(function()
					t1.value26:Create(UIStroke, TweenInfo.new(0.2), {
						Color = t1.value3(40, 40, 40)
					}):Play()

					local value26 = t1.value26
					local v545 = TextButton3
					local tweenInfo = TweenInfo.new(0.2)
					local value28 = t1.value28

					value26.Create(value26, v545, tweenInfo, {
						TextColor3 = value28.TextDark
					}):Play()
				end)
				TextButton3.MouseButton1Click:Connect(function()
					local v548 = "TexturesPage_Crosshair_" .. p46 and "Mobile" or "PC"

					t1.value29[v548] = "RESET"

					if p46 then
						t1.value33.Visible = false

						return
					end

					t1.value32(false)
					t1.value34.Visible = false
					t1.value27.MouseIconEnabled = true
					t1.value38.Icon = ""

					local TexturesPage_Crosshair_PC = t1.value29.TexturesPage_Crosshair_PC
					local v550 = t1

					if not TexturesPage_Crosshair_PC then
						v550.value41 = TexturesPage_Crosshair_PC

						return
					end

					if TexturesPage_Crosshair_PC == "RESET" then
						TexturesPage_Crosshair_PC = false
					else
						TexturesPage_Crosshair_PC = not t1.value30
					end

					v550.value41 = TexturesPage_Crosshair_PC
				end)
			else
				local ImageButton = t1.value1("ImageButton")

				ImageButton.BackgroundColor3 = t1.value2(0, 0, 0)
				ImageButton.BackgroundTransparency = 0.45
				ImageButton.Image = "rbxassetid://" .. v536.ID
				ImageButton.ScaleType = Enum.ScaleType.Crop
				ImageButton.Parent = parent
				t1.value1("UICorner", ImageButton).CornerRadius = t1.value5(0, 4)

				local UIStroke = t1.value1("UIStroke", ImageButton)

				UIStroke.Color = t1.value3(40, 40, 40)
				ImageButton.MouseEnter:Connect(function()
					UIStroke.Color = t1.value28.Accent
				end)

				local function v553()
					UIStroke.Color = t1.value3(40, 40, 40)
				end

				ImageButton.MouseLeave:Connect(v553)

				local function v554()
					local image = "rbxassetid://" .. v536.ID
					local v556 = "TexturesPage_Crosshair_" .. p46 and "Mobile" or "PC"

					t1.value29[v556] = image

					if p46 then
						t1.value33.Image = image
						t1.value33.Visible = true

						return
					end

					t1.value34.Image = image
					t1.value32(true)
					t1.value34.Visible = true

					local TexturesPage_Crosshair_PC = t1.value29.TexturesPage_Crosshair_PC
					local v558 = t1

					if not TexturesPage_Crosshair_PC then
						v558.value41 = TexturesPage_Crosshair_PC

						return
					end

					if TexturesPage_Crosshair_PC == "RESET" then
						TexturesPage_Crosshair_PC = false
					else
						TexturesPage_Crosshair_PC = not t1.value30
					end

					v558.value41 = TexturesPage_Crosshair_PC
				end

				ImageButton.MouseButton1Click:Connect(v554)
			end
		end
	end

	t1.value98 = t1.value27.MouseEnabled

	if t1.value98 then
		v520(false)
	else
		v520(true)
	end

	if t1.value29.TexturesPage_DoubleJump then
		t1.value7(function()
			t1.value93(t1.value29.TexturesPage_DoubleJump)
		end)
	end

	local value30 = t1.value30

	if value30 then
		value30 = t1.value29.TexturesPage_MobileJump
	end

	if value30 then
		t1.value7(function()
			EnableMobileButtonJump(t1.value29.TexturesPage_MobileJump)
		end)
	end

	t1.value7(function()
		if t1.value98 then
			local TexturesPage_Crosshair_PC = t1.value29.TexturesPage_Crosshair_PC
			local v561

			if TexturesPage_Crosshair_PC then
				v561 = TexturesPage_Crosshair_PC ~= "RESET"
			else
				v561 = TexturesPage_Crosshair_PC
			end

			if not v561 then
				return
			end

			t1.value34.Image = TexturesPage_Crosshair_PC
			t1.value32(true)
			t1.value34.Visible = true

			local TexturesPage_Crosshair_PC2 = t1.value29.TexturesPage_Crosshair_PC
			local v563 = t1

			if not TexturesPage_Crosshair_PC2 then
				v563.value41 = TexturesPage_Crosshair_PC2

				return
			end

			if TexturesPage_Crosshair_PC2 == "RESET" then
				TexturesPage_Crosshair_PC2 = false
			else
				TexturesPage_Crosshair_PC2 = not t1.value30
			end

			v563.value41 = TexturesPage_Crosshair_PC2
		else
			local TexturesPage_Crosshair_Mobile = t1.value29.TexturesPage_Crosshair_Mobile
			local v565

			if TexturesPage_Crosshair_Mobile then
				v565 = TexturesPage_Crosshair_Mobile ~= "RESET"
			else
				v565 = TexturesPage_Crosshair_Mobile
			end

			if not v565 then
				return
			end

			t1.value33.Image = TexturesPage_Crosshair_Mobile
			t1.value33.Visible = true
		end
	end)
end
