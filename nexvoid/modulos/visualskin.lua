

return function(p1)
	local Library = p1.Library
	local Page = p1.Page
	local t1 = {
		value1 = p1.Workspace,
		value2 = p1.Players,
		value3 = p1.LocalPlayer,
		value4 = p1.RunService,
		value5 = p1.TweenService,
		value6 = p1.Theme,
		value7 = p1.SendNotification,
		value8 = p1.ModalOverlay,
		value9 = p1.ApplyGradient,
		value10 = game:GetService("AssetService"),
		value11 = game:GetService("MarketplaceService"),
		value12 = Instance.new,
		value13 = CFrame.new,
		value14 = CFrame.Angles,
		value15 = Vector3.new,
		value16 = math.rad,
		value17 = ipairs,
		value18 = table.insert,
		value19 = nil,
		value20 = nil
	}

	if getgenv().SkinChangerLoops then
		for _, skinChangerLoop in pairs(getgenv().SkinChangerLoops) do
			if skinChangerLoop then
				skinChangerLoop:Disconnect()
			end
		end
	end

	getgenv().SkinChangerLoops = {}
	t1.value21 = {
		Headless = false,
		Korblox = false,
		SkeletonLeg = false,
		ZombieLeg = false,
		RoyalScepter = false,
		MysteriousArrow = false,
		SkinUserId = nil,
		BundleId = nil
	}
	t1.value22 = nil
	t1.value23 = {}
	t1.value24 = {}
	t1.value25 = {}
	t1.value26 = {}
	t1.value27 = setmetatable({}, {
		__mode = "k"
	})
	setmetatable({}, {
		__mode = "k"
	})
	setmetatable({}, {
		__mode = "k"
	})
	setmetatable({}, {
		__mode = "k"
	})
	t1.value28 = setmetatable({}, {
		__mode = "k"
	})
	t1.value29 = nil
	t1.value30 = nil
	t1.value31 = nil
	t1.value32 = nil

	local function v6(p2)
		if t1.value25[p2] then
			local v7 = t1.value25[p2]

			return v7.Clone(v7)
		end

		local ok, result = pcall(function()
			local v10 = p2

			return game:GetObjects("rbxassetid://" .. tostring(v10))[1]
		end)

		if ok and result then
			t1.value25[p2] = result

			return result.Clone(result)
		else
			return nil
		end
	end
	local function v11(p3, p4)
		local Handle = p4:FindFirstChild("Handle")

		if not Handle then
			return
		end

		Handle.Anchored = false
		Handle.CanCollide = false
		Handle.Massless = true
		p4.Parent = p3

		local Attachment = Handle:FindFirstChildWhichIsA("Attachment")
		local v14 = nil
		local v15 = nil
		local Head

		if Attachment then
			Head = p3:FindFirstChild("Head")

			local Torso = p3:FindFirstChild("Torso")
			local RightArm = p3:FindFirstChild("Right Arm")
			local AttachmentName

			if Head then
				AttachmentName = Head:FindFirstChild(Attachment.Name)
			else
				AttachmentName = Head
			end

			if AttachmentName then
				v15 = Head[Attachment.Name]
			else
				local AttachmentName2

				if Torso then
					AttachmentName2 = Torso:FindFirstChild(Attachment.Name)
				else
					AttachmentName2 = Torso
				end

				if AttachmentName2 then
					v15 = Torso[Attachment.Name]
					Head = Torso
				else
					local AttachmentName3

					if RightArm then
						AttachmentName3 = RightArm:FindFirstChild(Attachment.Name)
					else
						AttachmentName3 = RightArm
					end

					if AttachmentName3 then
						v15 = RightArm[Attachment.Name]
						Head = RightArm
					else
						Head = v14
					end
				end
			end
		else
			Head = v14
		end

		local Weld = t1.value12("Weld")

		Weld.Part1 = Handle

		if v15 and Head then
			Weld.Part0 = Head
			Weld.C0 = v15.CFrame
			Weld.C1 = Attachment.CFrame
		else
			local RightArm = p3:FindFirstChild("Right Arm")

			if RightArm then
				Weld.Part0 = RightArm
				Weld.C0 = t1.value13(0, -1, 0) * t1.value14(t1.value16(-90), 0, 0)
			end
		end

		if not Weld.Part0 then
			return
		end

		Weld.Parent = Handle
	end

	function t1.value33(p5)
		local Character = t1.value3.Character

		if not Character then
			return
		end

		local v25 = v6(p5)

		if not v25 then
			t1.value7("Failed to load item ID: " .. tostring(p5), 3)

			return
		end

		local v26 = nil

		v26 = function(p6)
			if p6:IsA("Accessory") or p6:IsA("Hat") then
				v11(Character, p6)
				t1.value7("Accessory Equipped!", 3)

				return
			end

			if p6:IsA("Tool") then
				p6.Parent = Character
				t1.value7("Tool Equipped!", 3)

				return
			end

			if p6:IsA("Shirt") or (p6:IsA("Pants") or (p6:IsA("ShirtGraphic") or (p6:IsA("BodyColors") or p6:IsA("CharacterMesh")))) then
			elseif p6:IsA("Model") then
				local children = p6:GetChildren()
				local v28 = false

				for i = 1, #children do
					local v30 = children[i]

					if v30:IsA("Accessory") or (v30:IsA("Hat") or (v30:IsA("Tool") or (v30:IsA("Shirt") or v30:IsA("Pants")))) then
						v26(v30)
						v28 = true
					end
				end

				if v28 then
					return
				end

				p6.Parent = Character

				local PrimaryPart = p6.PrimaryPart or p6:FindFirstChildWhichIsA("BasePart")

				if not PrimaryPart then
					t1.value7("Model Attached!", 3)

					return
				end

				PrimaryPart.Anchored = false
				PrimaryPart.CanCollide = false

				local Weld = t1.value12("Weld")

				Weld.Part0 = Character:FindFirstChild("Head") or Character.PrimaryPart
				Weld.Part1 = PrimaryPart
				Weld.C0 = t1.value13(0, 0, 0)
				Weld.Parent = PrimaryPart
				t1.value7("Model Attached!", 3)

				return
			else
				p6.Parent = Character

				return
			end

			local v33 = Character:FindFirstChildOfClass(p6.ClassName)

			if not v33 then
				p6.Parent = Character
				t1.value7("Clothing Equipped!", 3)

				return
			end

			v33:Destroy()
			p6.Parent = Character
			t1.value7("Clothing Equipped!", 3)
		end
		v26(v25)
	end
	function t1.value34(p7, p8, p9, p10)
		if getgenv().SkinChangerLoops[p7.Name] then
			getgenv().SkinChangerLoops[p7.Name]:Disconnect()
		end

		local function v34(p11)
			local children = p11:GetChildren()

			for i = 1, #children do
				local v37 = children[i]
				local isDecal = v37:IsA("Decal")

				if isDecal then
					isDecal = v37.Name ~= "face"
				end

				if isDecal or v37:IsA("Texture") then
					v37:Destroy()
				end
			end
		end

		local t2 = {}
		local t3 = {}

		for k, v in pairs(p9) do
			local v43 = p8:FindFirstChild(k)
			local isBasePart

			if v43 then
				isBasePart = v43:IsA("BasePart")
			else
				isBasePart = v43
			end

			if isBasePart then
				v34(v43)

				local connection = v43.ChildAdded:Connect(function(child)
					local isDecal = child:IsA("Decal")

					if isDecal then
						isDecal = child.Name ~= "face"
					end

					if not (isDecal or child:IsA("Texture")) then
						return
					end

					task.defer(function()
						if not child.Parent then
							return
						end

						child:Destroy()
					end)
				end)

				t1.value18(t2, connection)
				t3[#t3 + 1] = {
					Instance = v43,
					IsHead = k == "Head",
					Color = v,
					Mesh = v43:FindFirstChildOfClass("SpecialMesh")
				}
			end
		end

		local SkinChangerLoops = getgenv().SkinChangerLoops
		local Name = p7.Name
		local RenderStepped = t1.value4.RenderStepped

		SkinChangerLoops[Name] = RenderStepped.Connect(RenderStepped, function()
			if p8 and (p8.Parent and (p7 and p7.Parent)) then
				for i = 1, #t3 do
					local v51 = t3[i]
					local Instance_ = v51.Instance

					if Instance_.Color ~= v51.Color then
						Instance_.Color = v51.Color
						Instance_.Material = Enum.Material.SmoothPlastic
					end

					local Mesh = v51.Mesh
					local Parent

					if Mesh then
						Parent = Mesh.Parent
					else
						Parent = Mesh
					end

					if Parent then
						if v51.IsHead then
							local v55 = p10

							if v55 then
								v55 = p10 ~= ""
							end

							if v55 then
								if Mesh.TextureId ~= p10 then
									Mesh.TextureId = p10
								end
							elseif Mesh.TextureId ~= "" then
								Mesh.TextureId = ""
							end
						elseif Mesh.TextureId ~= "" then
							Mesh.TextureId = ""
						end

						if Mesh.VertexColor ~= t1.value15(1, 1, 1) then
							Mesh.VertexColor = t1.value15(1, 1, 1)
						end
					end
				end

				return
			end

			if not getgenv().SkinChangerLoops[p7.Name] then
				for i = 1, #t2 do
					t2[i]:Disconnect()
				end

				return
			end

			getgenv().SkinChangerLoops[p7.Name]:Disconnect()
			getgenv().SkinChangerLoops[p7.Name] = nil

			for i = 1, #t2 do
				t2[i]:Disconnect()
			end
		end)
	end

	local function v58(p12)
		if not (not p12 or t1.value28[p12]) then
			local children = p12:GetChildren()
			local t4 = {
				meshes = {},
				clothes = {},
				accessories = {},
				bodyColors = nil,
				faceTexture = nil,
				headMesh = nil
			}

			for i = 1, #children do
				local v62 = children[i]

				if v62:IsA("CharacterMesh") then
					t1.value18(t4.meshes, v62:Clone())
				elseif v62:IsA("Shirt") or (v62:IsA("Pants") or v62:IsA("ShirtGraphic")) then
					t1.value18(t4.clothes, v62:Clone())
				elseif v62:IsA("Accessory") or v62:IsA("Hat") then
					t1.value18(t4.accessories, v62:Clone())
				elseif v62:IsA("BodyColors") then
					t4.bodyColors = v62:Clone()
				end
			end

			local Head = p12:FindFirstChild("Head")

			if not Head then
				t1.value28[p12] = t4

				return
			end

			local face = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

			if face then
				t4.faceTexture = face.Texture
			end

			local SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh")

			if not SpecialMesh then
				t1.value28[p12] = t4

				return
			end

			t4.headMesh = SpecialMesh:Clone()
			t1.value28[p12] = t4
		end
	end

	function t1.value35(p13)
		if p13 then
			local v66 = t1.value28[p13]

			if v66 then
				local children = p13:GetChildren()

				for i = 1, #children do
					local v69 = children[i]

					if v69:IsA("CharacterMesh") or (v69:IsA("Shirt") or (v69:IsA("Pants") or (v69:IsA("ShirtGraphic") or (v69:IsA("Accessory") or (v69:IsA("Hat") or v69:IsA("BodyColors")))))) then
						v69:Destroy()
					end
				end

				for i = 1, #v66.meshes do
					v66.meshes[i]:Clone().Parent = p13
				end

				for i = 1, #v66.clothes do
					v66.clothes[i]:Clone().Parent = p13
				end

				for i = 1, #v66.accessories do
					v66.accessories[i]:Clone().Parent = p13
				end

				if v66.bodyColors then
					v66.bodyColors:Clone().Parent = p13
				end

				local Head = p13:FindFirstChild("Head")

				if not Head then
					return
				end

				local face = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

				if not face then
					face = t1.value12("Decal", Head)
					face.Name = "face"
				end

				face.Texture = v66.faceTexture or "rbxasset://textures/face.png"

				local SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh")

				if SpecialMesh then
					SpecialMesh:Destroy()
				end

				if v66.headMesh then
					v66.headMesh:Clone().Parent = Head

					return
				end

				t1.value12("SpecialMesh", Head).Scale = t1.value15(1.25, 1.25, 1.25)

				return
			else
				return
			end
		end
	end

	t1.value36 = false

	function t1.value37()
		if t1.value36 then
			return
		end

		local _ = pcall(function()
			local Character = t1.value3.Character

			if not Character then
				return
			end

			local n1 = 0

			while true do
				if true then
					local v80

					if Character then
						if Character.Parent == t1.value1 then
							v80 = false
						else
							v80 = n1 < 3
						end
					else
						v80 = Character
					end
				end

				if not v91 then
					if not Character or Character.Parent ~= t1.value1 then
						return
					end

					local Head = Character:FindFirstChild("Head") or Character:WaitForChild("Head", 5)

					if not (Head and (Character:FindFirstChild("Torso") or Character:WaitForChild("Torso", 5))) then
						return
					end

					if not t1.value3:HasAppearanceLoaded() then
						local function v82()
							t1.value3.CharacterAppearanceLoaded:Wait()
						end

						pcall(v82)
					end

					task.wait(0.1)

					if getgenv().SkinChangerLoops[t1.value3.Name] then
						getgenv().SkinChangerLoops[t1.value3.Name]:Disconnect()
						getgenv().SkinChangerLoops[t1.value3.Name] = nil
					end

					v58(Character)

					local value27, s1, SpecialMesh, s2, face, SpecialMesh2, face2, children, v92, isCharacterMesh, RoyalScepterAccessory, v94

					if t1.value21.SkinUserId then
						local ok, result = pcall(function()
							return t1.value2:GetHumanoidDescriptionFromUserId(t1.value21.SkinUserId)
						end)

						if ok and result then
							local t5 = {
								Head = result.HeadColor,
								Torso = result.TorsoColor,
								["Left Arm"] = result.LeftArmColor,
								["Right Arm"] = result.RightArmColor,
								["Left Leg"] = result.LeftLegColor,
								["Right Leg"] = result.RightLegColor
							}
							local v98 = t1.value2:CreateHumanoidModelFromDescription(result, Enum.HumanoidRigType.R6)

							v98.Name = "AssetSource"
							v98.Parent = t1.value1
							v98:PivotTo(t1.value13(0, -500, 0))
							task.wait(0.5)

							local Parent

							if Character then
								Parent = Character.Parent
							else
								Parent = Character
							end

							if Parent then
								local SpecialMesh3 = v98.Head:FindFirstChildOfClass("SpecialMesh")
								local TextureId = not SpecialMesh3 and "" or SpecialMesh3.TextureId
								local children2 = Character:GetChildren()

								for i = 1, #children2 do
									local v104 = children2[i]

									if v104:IsA("Accessory") or (v104:IsA("Hat") or (v104:IsA("Shirt") or (v104:IsA("Pants") or (v104:IsA("ShirtGraphic") or (v104:IsA("CharacterMesh") or v104:IsA("BodyColors")))))) then
										v104:Destroy()
									end
								end

								if Head:FindFirstChild("face") then
									Head.face:Destroy()
								end

								local SpecialMesh4 = Head:FindFirstChildOfClass("SpecialMesh") or t1.value12("SpecialMesh", Head)

								if SpecialMesh3 then
									SpecialMesh4.MeshType = SpecialMesh3.MeshType
									SpecialMesh4.MeshId = SpecialMesh3.MeshId
									SpecialMesh4.Scale = SpecialMesh3.Scale
									SpecialMesh4.TextureId = TextureId
								else
									SpecialMesh4.MeshType = Enum.MeshType.Head
									SpecialMesh4.MeshId = ""
									SpecialMesh4.Scale = t1.value15(1.25, 1.25, 1.25)
									SpecialMesh4.TextureId = ""
								end

								SpecialMesh4.VertexColor = t1.value15(1, 1, 1)

								local children3 = v98:GetChildren()
								local t6 = {}

								for i = 1, #children3 do
									local v109 = children3[i]

									if v109:IsA("CharacterMesh") or (v109:IsA("Shirt") or (v109:IsA("Pants") or v109:IsA("ShirtGraphic"))) then
										v109:Clone().Parent = Character
									elseif v109:IsA("Accessory") then
										t1.value18(t6, v109)
									end
								end

								local Decal = t1.value12("Decal")

								Decal.Name = "face"

								local face3 = v98.Head:FindFirstChild("face")

								if face3 then
									Decal.Texture = face3.Texture
								else
									local Face = result.Face

									if Face then
										Face = result.Face > 0
									end

									if Face then
										Decal.Texture = "rbxassetid://" .. result.Face
									else
										Decal.Texture = "rbxasset://textures/face.png"
									end
								end

								Decal.Parent = Head

								local BodyColors = t1.value12("BodyColors")

								BodyColors.HeadColor3 = result.HeadColor
								BodyColors.TorsoColor3 = result.TorsoColor
								BodyColors.LeftArmColor3 = result.LeftArmColor
								BodyColors.RightArmColor3 = result.RightArmColor
								BodyColors.LeftLegColor3 = result.LeftLegColor
								BodyColors.RightLegColor3 = result.RightLegColor
								BodyColors.Parent = Character
								t1.value34(t1.value3, Character, t5, TextureId)

								for i = 1, #t6 do
									v11(Character, t6[i]:Clone())
								end
							end

							v98:Destroy()
						end
					elseif t1.value21.BundleId then
						local ok, result = pcall(function()
							return t1.value10:GetBundleDetailsAsync(t1.value21.BundleId)
						end)

						if ok then
							if result then
								ok = result.Items
							else
								ok = result
							end
						end

						if not ok then
							if t1.value21.Headless and Head then
								if not t1.value27[Character] then
									value27 = t1.value27
									s1 = "mesh"
									SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh")

									if SpecialMesh then
										SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh"):Clone()
									end

									s2 = "face"
									face = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

									if face then
										face = (Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")):Clone()
									end

									value27[Character] = {
										[s1] = SpecialMesh,
										[s2] = face
									}
								end

								SpecialMesh2 = Head:FindFirstChildOfClass("SpecialMesh")

								if SpecialMesh2 then
									SpecialMesh2:Destroy()
								end

								face2 = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

								if face2 then
									face2:Destroy()
								end

								if t1.value29 then
									t1.value29:Clone().Parent = Head
								end
							end

							v152 = nil

							if t1.value21.Korblox then
								v152 = t1.value30
							elseif t1.value21.SkeletonLeg then
								v152 = t1.value31
							elseif t1.value21.ZombieLeg then
								v152 = t1.value32
							end

							if v152 then
								children = Character:GetChildren()

								for i = 1, #children do
									v92 = children[i]
									isCharacterMesh = v92:IsA("CharacterMesh")

									if isCharacterMesh then
										isCharacterMesh = v92.BodyPart == Enum.BodyPart.RightLeg
									end

									if isCharacterMesh then
										v92:Destroy()
									end
								end

								v152:Clone().Parent = Character
							end

							if t1.value21.RoyalScepter then
								RoyalScepterAccessory = Character:FindFirstChild("RoyalScepterAccessory")

								if RoyalScepterAccessory then
									RoyalScepterAccessory:Destroy()
								end

								v94 = v6(123021068422074)

								if v94 then
									v94.Name = "RoyalScepterAccessory"
									v11(Character, v94)
								end
							end

							if not t1.value21.MysteriousArrow then
								return
							end

							v154 = Character:FindFirstChild("MysteriousArrowAccessory")

							if v154 then
								v154:Destroy()
							end

							v155 = v6(100766397788630)

							if not v155 then
								return
							end

							v155.Name = "MysteriousArrowAccessory"
							v11(Character, v155)

							return
						end

						local Items = result.Items
						local v119 = nil

						for i = 1, #Items do
							local v121 = Items[i]

							if v121.Type == "UserOutfit" then
								local ok2, result2 = pcall(function()
									return t1.value2:GetHumanoidDescriptionFromOutfitId(v121.Id)
								end)

								if ok2 and result2 then
									v119 = result2

									break
								end
							end
						end

						if v119 then
							local t7 = {
								Head = v119.HeadColor,
								Torso = v119.TorsoColor,
								["Left Arm"] = v119.LeftArmColor,
								["Right Arm"] = v119.RightArmColor,
								["Left Leg"] = v119.LeftLegColor,
								["Right Leg"] = v119.RightLegColor
							}
							local v125 = t1.value2:CreateHumanoidModelFromDescription(v119, Enum.HumanoidRigType.R6)

							v125.Name = "AssetSource"
							v125.Parent = t1.value1
							v125:PivotTo(t1.value13(0, -500, 0))
							task.wait(0.5)

							local Parent

							if Character then
								Parent = Character.Parent
							else
								Parent = Character
							end

							if Parent then
								local TextureId = not v125.Head:FindFirstChildOfClass("SpecialMesh") and "" or v125.Head:FindFirstChildOfClass("SpecialMesh").TextureId
								local children2 = Character:GetChildren()

								for i = 1, #children2 do
									local v130 = children2[i]

									if v130:IsA("Accessory") or (v130:IsA("Hat") or (v130:IsA("Shirt") or (v130:IsA("Pants") or (v130:IsA("ShirtGraphic") or (v130:IsA("CharacterMesh") or v130:IsA("BodyColors")))))) then
										v130:Destroy()
									end
								end

								if Head:FindFirstChild("face") then
									Head.face:Destroy()
								end

								local SpecialMesh3 = v125.Head:FindFirstChildOfClass("SpecialMesh")
								local SpecialMesh4 = Head:FindFirstChildOfClass("SpecialMesh")

								if SpecialMesh3 then
									local SpecialMesh5 = SpecialMesh4 or t1.value12("SpecialMesh", Head)

									SpecialMesh5.MeshType = Enum.MeshType.FileMesh
									SpecialMesh5.MeshId = SpecialMesh3.MeshId
									SpecialMesh5.Scale = SpecialMesh3.Scale
									SpecialMesh5.TextureId = TextureId
									SpecialMesh5.VertexColor = t1.value15(1, 1, 1)
								end

								local children3 = v125:GetChildren()
								local t8 = {}

								for i = 1, #children3 do
									local v137 = children3[i]

									if v137:IsA("CharacterMesh") or (v137:IsA("Shirt") or (v137:IsA("Pants") or v137:IsA("ShirtGraphic"))) then
										v137:Clone().Parent = Character
									else
										local face3

										if v137.Name == "Head" then
											face3 = v137:FindFirstChild("face")
										else
											face3 = false
										end

										if face3 then
											v137.face:Clone().Parent = Head
										elseif v137:IsA("Accessory") then
											t1.value18(t8, v137)
										end
									end
								end

								local BodyColors = t1.value12("BodyColors")

								BodyColors.HeadColor3 = v119.HeadColor
								BodyColors.TorsoColor3 = v119.TorsoColor
								BodyColors.LeftArmColor3 = v119.LeftArmColor
								BodyColors.RightArmColor3 = v119.RightArmColor
								BodyColors.LeftLegColor3 = v119.LeftLegColor
								BodyColors.RightLegColor3 = v119.RightLegColor
								BodyColors.Parent = Character
								t1.value34(t1.value3, Character, t7, TextureId)

								for i = 1, #t8 do
									v11(Character, t8[i]:Clone())
								end
							end

							v125:Destroy()
						end
					else
						t1.value35(Character)
					end

					if t1.value21.Headless and Head then
						if not t1.value27[Character] then
							value27 = t1.value27
							s1 = "mesh"
							SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh")

							if SpecialMesh then
								SpecialMesh = Head:FindFirstChildOfClass("SpecialMesh"):Clone()
							end

							s2 = "face"
							face = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

							if face then
								face = (Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")):Clone()
							end

							value27[Character] = {
								[s1] = SpecialMesh,
								[s2] = face
							}
						end

						SpecialMesh2 = Head:FindFirstChildOfClass("SpecialMesh")

						if SpecialMesh2 then
							SpecialMesh2:Destroy()
						end

						face2 = Head:FindFirstChild("face") or Head:FindFirstChildOfClass("Decal")

						if face2 then
							face2:Destroy()
						end

						if t1.value29 then
							t1.value29:Clone().Parent = Head
						end
					end

					local value30 = nil

					if t1.value21.Korblox then
						value30 = t1.value30
					elseif t1.value21.SkeletonLeg then
						value30 = t1.value31
					elseif t1.value21.ZombieLeg then
						value30 = t1.value32
					end

					if value30 then
						children = Character:GetChildren()

						for i = 1, #children do
							v92 = children[i]
							isCharacterMesh = v92:IsA("CharacterMesh")

							if isCharacterMesh then
								isCharacterMesh = v92.BodyPart == Enum.BodyPart.RightLeg
							end

							if isCharacterMesh then
								v92:Destroy()
							end
						end

						value30:Clone().Parent = Character
					end

					if t1.value21.RoyalScepter then
						RoyalScepterAccessory = Character:FindFirstChild("RoyalScepterAccessory")

						if RoyalScepterAccessory then
							RoyalScepterAccessory:Destroy()
						end

						v94 = v6(123021068422074)

						if v94 then
							v94.Name = "RoyalScepterAccessory"
							v11(Character, v94)
						end
					end

					if not t1.value21.MysteriousArrow then
						return
					end

					local MysteriousArrowAccessory = Character:FindFirstChild("MysteriousArrowAccessory")

					if MysteriousArrowAccessory then
						MysteriousArrowAccessory:Destroy()
					end

					local v144 = v6(100766397788630)

					if not v144 then
						return
					end

					v144.Name = "MysteriousArrowAccessory"
					v11(Character, v144)

					return
				end

				task.wait(0.1)
				n1 = n1 + 0.1
			end
		end)
	end

	t1.value38 = nil

	if t1.value38 then
		t1.value38:Disconnect()
	end

	t1.value3.CharacterAdded:Connect(function()
		task.spawn(t1.value37)
	end)
	t1.value39 = t1.value3

	function t1.value40(p14, p15)
		if p14 == t1.value3 then
			t1.value21.SkinUserId = p15
			t1.value21.BundleId = nil

			if t1.value22 then
				local v145 = t1.value23[t1.value22]

				if v145 then
					v145.SetVisual(false)
				end

				t1.value22 = nil
			end

			task.spawn(function()
				t1.value37()
				t1.value7("Skin Applied Successfully!", 3)
			end)
		else
			task.spawn(function()
				local Character = p14.Character

				if not Character then
					return
				end

				local function v147()
					return t1.value2:GetHumanoidDescriptionFromUserId(p15)
				end

				local ok, result = pcall(v147)

				if not (ok and result) then
					t1.value7("Failed to load skin for " .. p14.Name, 3)

					return
				end

				local t9 = {
					Head = result.HeadColor,
					Torso = result.TorsoColor,
					["Left Arm"] = result.LeftArmColor,
					["Right Arm"] = result.RightArmColor,
					["Left Leg"] = result.LeftLegColor,
					["Right Leg"] = result.RightLegColor
				}
				local v151 = t1.value2:CreateHumanoidModelFromDescription(result, Enum.HumanoidRigType.R6)

				v151.Name = "AssetSource"
				v151.Parent = t1.value1
				v151:PivotTo(t1.value13(0, -500, 0))
				task.wait(0.5)

				local Parent

				if Character then
					Parent = Character.Parent
				else
					Parent = Character
				end

				if not Parent then
					v151:Destroy()
					t1.value7("Skin Applied to " .. p14.Name, 3)

					return
				end

				local SpecialMesh = v151.Head:FindFirstChildOfClass("SpecialMesh")
				local TextureId = not SpecialMesh and "" or SpecialMesh.TextureId
				local Head = Character:FindFirstChild("Head")

				if not Head then
					v151:Destroy()
					t1.value7("Skin Applied to " .. p14.Name, 3)

					return
				end

				v58(Character)

				local children = Character:GetChildren()

				for i = 1, #children do
					local v158 = children[i]

					if v158:IsA("Accessory") or (v158:IsA("Hat") or (v158:IsA("Shirt") or (v158:IsA("Pants") or (v158:IsA("ShirtGraphic") or (v158:IsA("CharacterMesh") or v158:IsA("BodyColors")))))) then
						v158:Destroy()
					end
				end

				if Head:FindFirstChild("face") then
					Head.face:Destroy()
				end

				local SpecialMesh2 = Head:FindFirstChildOfClass("SpecialMesh") or t1.value12("SpecialMesh", Head)

				if SpecialMesh then
					SpecialMesh2.MeshType = SpecialMesh.MeshType
					SpecialMesh2.MeshId = SpecialMesh.MeshId
					SpecialMesh2.Scale = SpecialMesh.Scale
					SpecialMesh2.TextureId = TextureId
				else
					SpecialMesh2.MeshType = Enum.MeshType.Head
					SpecialMesh2.MeshId = ""
					SpecialMesh2.Scale = t1.value15(1.25, 1.25, 1.25)
					SpecialMesh2.TextureId = ""
				end

				SpecialMesh2.VertexColor = t1.value15(1, 1, 1)

				local children2 = v151:GetChildren()
				local t10 = {}

				for i = 1, #children2 do
					local v163 = children2[i]

					if v163:IsA("CharacterMesh") or (v163:IsA("Shirt") or (v163:IsA("Pants") or v163:IsA("ShirtGraphic"))) then
						v163:Clone().Parent = Character
					elseif v163:IsA("Accessory") then
						t1.value18(t10, v163)
					end
				end

				local Decal = t1.value12("Decal")

				Decal.Name = "face"

				local face = v151.Head:FindFirstChild("face")

				if face then
					Decal.Texture = face.Texture
				else
					local Face = result.Face

					if Face then
						Face = result.Face > 0
					end

					if Face then
						Decal.Texture = "rbxassetid://" .. result.Face
					else
						Decal.Texture = "rbxasset://textures/face.png"
					end
				end

				Decal.Parent = Head

				local BodyColors = t1.value12("BodyColors")

				BodyColors.HeadColor3 = result.HeadColor
				BodyColors.TorsoColor3 = result.TorsoColor
				BodyColors.LeftArmColor3 = result.LeftArmColor
				BodyColors.RightArmColor3 = result.RightArmColor
				BodyColors.LeftLegColor3 = result.LeftLegColor
				BodyColors.RightLegColor3 = result.RightLegColor
				BodyColors.Parent = Character
				t1.value34(p14, Character, t9, TextureId)

				for i = 1, #t10 do
					v11(Character, t10[i]:Clone())
				end

				v151:Destroy()
				t1.value7("Skin Applied to " .. p14.Name, 3)
			end)
		end
	end

	t1.value41 = t1.value12("Frame")
	t1.value41.Size = UDim2.new(0, 260, 0, 130)
	t1.value41.AnchorPoint = Vector2.new(0.5, 0.5)
	t1.value41.Position = UDim2.new(0.5, 0, 0.5, 0)
	t1.value41.BackgroundColor3 = Color3.new(0, 0, 0)
	t1.value41.BackgroundTransparency = 0.15
	t1.value41.BorderSizePixel = 0
	t1.value41.ZIndex = 11
	t1.value41.Visible = false
	t1.value41.Parent = t1.value8

	local UIStroke = t1.value12("UIStroke")

	UIStroke.Color = Color3.fromRGB(40, 40, 40)
	UIStroke.Parent = t1.value41

	local Frame = t1.value12("Frame")

	Frame.Size = UDim2.new(1, 0, 0, 2)
	Frame.BackgroundColor3 = t1.value6.Accent
	Frame.BorderSizePixel = 0
	Frame.ZIndex = 12
	Frame.Parent = t1.value41
	t1.value9(Frame, t1.value6.Accent, t1.value6.AccentDark, 0)
	t1.value42 = t1.value12("TextLabel")
	t1.value42.Parent = t1.value41
	t1.value42.Text = "FOUND"
	t1.value42.Font = t1.value6.Font
	t1.value42.TextSize = 14
	t1.value42.TextColor3 = t1.value6.Accent
	t1.value42.Size = UDim2.new(1, 0, 0, 35)
	t1.value42.BackgroundTransparency = 1
	t1.value42.ZIndex = 12
	t1.value43 = t1.value12("ImageLabel")
	t1.value43.Size = UDim2.new(0, 46, 0, 46)
	t1.value43.Position = UDim2.new(0, 20, 0, 35)
	t1.value43.BackgroundColor3 = t1.value6.SwitchOff
	t1.value43.ZIndex = 12
	t1.value43.Parent = t1.value41
	t1.value12("UICorner", t1.value43).CornerRadius = UDim.new(0, 6)
	t1.value44 = t1.value12("TextLabel")
	t1.value44.Text = "Name"
	t1.value44.Size = UDim2.new(1, -80, 0, 46)
	t1.value44.Position = UDim2.new(0, 75, 0, 35)
	t1.value44.BackgroundTransparency = 1
	t1.value44.TextColor3 = t1.value6.Text
	t1.value44.Font = Enum.Font.Gotham
	t1.value44.TextSize = 13
	t1.value44.TextXAlignment = Enum.TextXAlignment.Left
	t1.value44.ZIndex = 12
	t1.value44.Parent = t1.value41
	t1.value45 = t1.value12("TextButton")
	t1.value45.Text = "Apply"
	t1.value45.Size = UDim2.new(0, 100, 0, 28)
	t1.value45.Position = UDim2.new(0, 20, 0, 90)
	t1.value45.BackgroundColor3 = t1.value6.Accent
	t1.value45.TextColor3 = Color3.new(0, 0, 0)
	t1.value45.Font = t1.value6.Font
	t1.value45.TextSize = 12
	t1.value45.ZIndex = 12
	t1.value45.Parent = t1.value41
	t1.value12("UICorner", t1.value45).CornerRadius = UDim.new(0, 4)
	t1.value9(t1.value45, t1.value6.Accent, t1.value6.AccentDark, 90)

	local TextButton = t1.value12("TextButton")

	TextButton.Text = "Cancel"
	TextButton.Size = UDim2.new(0, 100, 0, 28)
	TextButton.Position = UDim2.new(1, -120, 0, 90)
	TextButton.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton.BackgroundTransparency = 0.45
	TextButton.TextColor3 = t1.value6.TextDark
	TextButton.Font = t1.value6.Font
	TextButton.TextSize = 12
	TextButton.ZIndex = 12
	TextButton.Parent = t1.value41
	t1.value12("UICorner", TextButton).CornerRadius = UDim.new(0, 4)
	t1.value12("UIStroke", TextButton).Color = Color3.fromRGB(40, 40, 40)
	TextButton.MouseButton1Click:Connect(function()
		t1.value8.Visible = false
		t1.value41.Visible = false
		t1.value19 = nil
		t1.value20 = nil
	end)
	t1.value45.MouseButton1Click:Connect(function()
		if not t1.value19 then
			return
		end

		if t1.value20 == "Skin" then
			t1.value40(t1.value39, t1.value19)
		elseif t1.value20 == "Bundle" then
			local value22 = t1.value22 and t1.value23[t1.value22]

			if value22 then
				value22.SetVisual(false)
			end

			t1.value22 = t1.value19
			t1.value21.BundleId = t1.value19
			t1.value21.SkinUserId = nil
			task.spawn(t1.value37)
		elseif t1.value20 == "Accessory" then
			t1.value33(t1.value19)
		end

		t1.value8.Visible = false
		t1.value41.Visible = false
	end)

	local Frame2 = t1.value12("Frame")

	Frame2.Name = "ColumnsContainer"
	Frame2.Size = UDim2.new(1, 0, 0, 0)
	Frame2.AutomaticSize = Enum.AutomaticSize.Y
	Frame2.BackgroundTransparency = 1
	Frame2.LayoutOrder = 1
	Frame2.Parent = Page

	local UIListLayout = t1.value12("UIListLayout")

	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.Padding = UDim.new(0, 12)
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Parent = Frame2

	local Frame3 = t1.value12("Frame")

	Frame3.Name = "LeftCol"
	Frame3.Size = UDim2.new(0.5, -6, 0, 0)
	Frame3.AutomaticSize = Enum.AutomaticSize.Y
	Frame3.BackgroundTransparency = 1
	Frame3.Parent = Frame2

	local UIListLayout2 = t1.value12("UIListLayout")

	UIListLayout2.Padding = UDim.new(0, 10)
	UIListLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout2.Parent = Frame3

	local Frame4 = t1.value12("Frame")

	Frame4.Name = "RightCol"
	Frame4.Size = UDim2.new(0.5, -6, 0, 0)
	Frame4.AutomaticSize = Enum.AutomaticSize.Y
	Frame4.BackgroundTransparency = 1
	Frame4.Parent = Frame2

	local UIListLayout3 = t1.value12("UIListLayout")

	UIListLayout3.Padding = UDim.new(0, 10)
	UIListLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout3.Parent = Frame4

	local Frame5 = t1.value12("Frame")

	Frame5.Name = "CategoryBox_BundleChanger"
	Frame5.Size = UDim2.new(1, 0, 0, 0)
	Frame5.AutomaticSize = Enum.AutomaticSize.Y
	Frame5.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame5.BackgroundTransparency = 0.45
	Frame5.BorderSizePixel = 0
	Frame5.Parent = Frame3
	t1.value12("UICorner", Frame5).CornerRadius = UDim.new(0, 6)

	local UIStroke2 = t1.value12("UIStroke")

	UIStroke2.Color = Color3.fromRGB(40, 40, 40)
	UIStroke2.Thickness = 1
	UIStroke2.Parent = Frame5

	local UIListLayout4 = t1.value12("UIListLayout")

	UIListLayout4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout4.Padding = UDim.new(0, 8)
	UIListLayout4.Parent = Frame5

	local UIPadding = t1.value12("UIPadding")

	UIPadding.PaddingTop = UDim.new(0, 8)
	UIPadding.PaddingBottom = UDim.new(0, 8)
	UIPadding.PaddingLeft = UDim.new(0, 10)
	UIPadding.PaddingRight = UDim.new(0, 10)
	UIPadding.Parent = Frame5

	local Frame6 = t1.value12("Frame")

	Frame6.Name = "HeaderContainer"
	Frame6.Size = UDim2.new(1, 0, 0, 20)
	Frame6.BackgroundTransparency = 1
	Frame6.Parent = Frame5

	local TextLabel = t1.value12("TextLabel")

	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.BackgroundTransparency = 1
	TextLabel.Text = "Bundle Changer"
	TextLabel:SetAttribute("OriginalText", "Bundle Changer")
	TextLabel.Font = t1.value6.Font
	TextLabel.TextSize = 12
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel.Parent = Frame6

	local Frame7 = t1.value12("Frame")

	Frame7.Size = UDim2.new(1, 0, 0, 35)
	Frame7.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame7.BackgroundTransparency = 0.45
	Frame7.Parent = Frame5
	t1.value12("UICorner", Frame7).CornerRadius = UDim.new(0, 6)

	local UIStroke3 = t1.value12("UIStroke", Frame7)

	UIStroke3.Color = Color3.fromRGB(40, 40, 40)
	UIStroke3.Thickness = 1
	t1.value46 = t1.value12("TextBox")
	t1.value46.Size = UDim2.new(1, -40, 1, 0)
	t1.value46.Position = UDim2.new(0, 10, 0, 0)
	t1.value46.BackgroundTransparency = 1
	t1.value46.Text = ""
	t1.value46.PlaceholderText = "Bundle ID (Ex: 201)..."
	t1.value46.TextColor3 = t1.value6.Text
	t1.value46.PlaceholderColor3 = t1.value6.TextDark
	t1.value46.Font = t1.value6.Font
	t1.value46.TextSize = 13
	t1.value46.TextXAlignment = Enum.TextXAlignment.Left
	t1.value46.Parent = Frame7

	local ImageButton = t1.value12("ImageButton")

	ImageButton.Size = UDim2.new(0, 20, 0, 20)
	ImageButton.Position = UDim2.new(1, -28, 0.5, -10)
	ImageButton.BackgroundTransparency = 1
	ImageButton.Image = "rbxassetid://104986431790017"
	ImageButton.ImageColor3 = t1.value6.Accent
	ImageButton.ScaleType = Enum.ScaleType.Fit
	ImageButton.Parent = Frame7

	local Frame8 = t1.value12("Frame")

	Frame8.Size = UDim2.new(1, 0, 0, 0)
	Frame8.BackgroundTransparency = 1
	Frame8.AutomaticSize = Enum.AutomaticSize.Y
	Frame8.Parent = Frame5

	local UIGridLayout = t1.value12("UIGridLayout")

	UIGridLayout.CellSize = UDim2.new(0.5, -4, 0, 42)
	UIGridLayout.CellPadding = UDim2.new(0, 8, 0, 8)
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.Parent = Frame8

	local function v190(p16, p17)
		local u191 = false
		local Id = p17.Id
		local Frame9 = t1.value12("Frame")

		Frame9.Name = "Indicator"
		Frame9.Size = UDim2.new(0, 6, 0, 6)
		Frame9.Position = UDim2.new(1, -12, 0, 6)
		Frame9.BackgroundColor3 = t1.value6.Accent
		Frame9.Visible = false
		Frame9.Parent = p16
		t1.value12("UICorner", Frame9).CornerRadius = UDim.new(1, 0)
		t1.value9(Frame9, t1.value6.Accent, t1.value6.AccentDark, 90)

		local function v194(p18)
			u191 = p18

			local UIStroke4 = p16:FindFirstChildOfClass("UIStroke")
			local TextLabel2 = p16:FindFirstChildWhichIsA("TextLabel")

			if not (UIStroke4 and TextLabel2) then
				return
			end

			if p18 then
				t1.value5:Create(UIStroke4, TweenInfo.new(0.2), {
					Color = t1.value6.Accent
				}):Play()

				local value5 = t1.value5
				local tweenInfo = TweenInfo.new(0.2)
				local value6 = t1.value6

				value5.Create(value5, TextLabel2, tweenInfo, {
					TextColor3 = value6.Text
				}):Play()
				Frame9.Visible = true

				return
			end

			t1.value5:Create(UIStroke4, TweenInfo.new(0.2), {
				Color = Color3.fromRGB(40, 40, 40)
			}):Play()
			t1.value5:Create(TextLabel2, TweenInfo.new(0.2), {
				TextColor3 = t1.value6.TextDark
			}):Play()
			Frame9.Visible = false
		end
		local function v200(p19)
			if p19 then
				local value22 = t1.value22

				if value22 then
					value22 = t1.value22 ~= Id
				end

				local v202 = value22 and t1.value23[t1.value22]

				if v202 then
					v202.SetVisual(false)
				end

				t1.value22 = Id
				t1.value21.BundleId = Id
				t1.value21.SkinUserId = nil
			else
				if t1.value22 ~= Id then
					task.spawn(t1.value37)

					return
				end

				t1.value21.BundleId = nil
			end

			task.spawn(t1.value37)
		end

		p16.MouseButton1Click:Connect(function()
			u191 = not u191
			v194(u191)
			v200(u191)
		end)
		p16.MouseEnter:Connect(function()
			local UIStroke4 = not u191 and p16:FindFirstChildOfClass("UIStroke")

			if not UIStroke4 then
				return
			end

			local value5 = t1.value5
			local tweenInfo = TweenInfo.new(0.2)

			value5.Create(value5, UIStroke4, tweenInfo, {
				Color = Color3.fromRGB(80, 80, 80)
			}):Play()
		end)
		p16.MouseLeave:Connect(function()
			local UIStroke4 = not u191 and p16:FindFirstChildOfClass("UIStroke")

			if not UIStroke4 then
				return
			end

			local value5 = t1.value5
			local tweenInfo = TweenInfo.new(0.2)
			local Color3_ = Color3

			value5.Create(value5, UIStroke4, tweenInfo, {
				Color = Color3_.fromRGB(40, 40, 40)
			}):Play()
		end)

		local t11 = {
			SetVisual = function(p20)
				u191 = p20
				v194(p20)
			end,
			Action = v200
		}

		t1.value23[Id] = t11
	end
	local function v211(p21, p22, p23, p24, p25)
		local u212 = p24 or false
		local TextButton2 = t1.value12("TextButton")

		TextButton2.BackgroundColor3 = Color3.new(0, 0, 0)
		TextButton2.BackgroundTransparency = 0.45
		TextButton2.Text = ""
		TextButton2.Parent = p21
		t1.value12("UICorner", TextButton2).CornerRadius = UDim.new(0, 6)

		local UIStroke4 = t1.value12("UIStroke")

		UIStroke4.Color = Color3.fromRGB(40, 40, 40)
		UIStroke4.Thickness = 1
		UIStroke4.Parent = TextButton2

		local ImageLabel = t1.value12("ImageLabel")

		ImageLabel.Size = UDim2.new(0, 28, 0, 28)
		ImageLabel.Position = UDim2.new(0, 7, 0.5, -14)
		ImageLabel.BackgroundColor3 = t1.value6.SwitchOff
		ImageLabel.BackgroundTransparency = 0.5
		ImageLabel.Image = p23
		ImageLabel.Parent = TextButton2
		t1.value12("UICorner", ImageLabel).CornerRadius = UDim.new(0, 6)

		local TextLabel2 = t1.value12("TextLabel")

		TextLabel2.Size = UDim2.new(1, -40, 1, 0)
		TextLabel2.Position = UDim2.new(0, 36, 0, 0)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Text = p22
		TextLabel2.Font = t1.value6.Font
		TextLabel2.TextScaled = true

		local UITextSizeConstraint = t1.value12("UITextSizeConstraint", TextLabel2)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel2.TextColor3 = t1.value6.TextDark
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.Parent = TextButton2

		local Frame9 = t1.value12("Frame")

		Frame9.Size = UDim2.new(0, 6, 0, 6)
		Frame9.Position = UDim2.new(1, -12, 0, 6)
		Frame9.BackgroundColor3 = t1.value6.Accent
		Frame9.Visible = false
		Frame9.Parent = TextButton2
		t1.value12("UICorner", Frame9).CornerRadius = UDim.new(1, 0)
		t1.value9(Frame9, t1.value6.Accent, t1.value6.AccentDark, 90)

		local function v219(p26)
			if u212 then
				local value5 = t1.value5
				local v221 = UIStroke4
				local tweenInfo = TweenInfo.new(0.2)

				value5.Create(value5, v221, tweenInfo, {
					Color = t1.value6.Accent
				}):Play()

				local value52 = t1.value5
				local v224 = TextLabel2
				local tweenInfo2 = TweenInfo.new(0.2)
				local value6 = t1.value6

				value52.Create(value52, v224, tweenInfo2, {
					TextColor3 = value6.Text
				}):Play()
				Frame9.Visible = true
			else
				local value5 = t1.value5
				local v228 = UIStroke4
				local tweenInfo = TweenInfo.new(0.2)
				local Color3_ = Color3

				value5.Create(value5, v228, tweenInfo, {
					Color = Color3_.fromRGB(40, 40, 40)
				}):Play()

				local value52 = t1.value5
				local v232 = TextLabel2
				local tweenInfo2 = TweenInfo.new(0.2)
				local value6 = t1.value6

				value52.Create(value52, v232, tweenInfo2, {
					TextColor3 = value6.TextDark
				}):Play()
				Frame9.Visible = false
			end

			if not p26 then
				return
			end

			pcall(p25, u212)
		end
		local function v235()
			if u212 then
				return
			end

			local value5 = t1.value5
			local v237 = UIStroke4
			local tweenInfo = TweenInfo.new(0.2)
			local Color3_ = Color3

			value5.Create(value5, v237, tweenInfo, {
				Color = Color3_.fromRGB(80, 80, 80)
			}):Play()
		end

		TextButton2.MouseEnter:Connect(v235)
		TextButton2.MouseLeave:Connect(function()
			if u212 then
				return
			end

			t1.value5:Create(UIStroke4, TweenInfo.new(0.2), {
				Color = Color3.fromRGB(40, 40, 40)
			}):Play()
		end)

		local function v240()
			u212 = not u212
			v219(true)
		end

		TextButton2.MouseButton1Click:Connect(v240)
		v219(false)

		if u212 then
			task.spawn(function()
				pcall(p25, u212)
			end)
		end

		return {
			Set = function(p27)
				u212 = p27
				v219(true)
			end
		}
	end

	for _, v in t1.value17({
		{
			Name = "Headless",
			Id = 201
		},
		{
			Name = "Korblox",
			Id = 192
		},
		{
			Name = "Skeleton",
			Id = 295
		},
		{
			Name = "Ice General",
			Id = 194
		},
		{
			Name = "Gnomo",
			Id = 652
		},
		{
			Name = "Dr. Fia Tyfoid",
			Id = 512
		}
	}) do
		local TextButton2 = t1.value12("TextButton")

		TextButton2.BackgroundColor3 = Color3.new(0, 0, 0)
		TextButton2.BackgroundTransparency = 0.45
		TextButton2.Text = ""
		TextButton2.Parent = Frame8
		t1.value12("UICorner", TextButton2).CornerRadius = UDim.new(0, 6)

		local UIStroke4 = t1.value12("UIStroke")

		UIStroke4.Color = Color3.fromRGB(40, 40, 40)
		UIStroke4.Thickness = 1
		UIStroke4.Parent = TextButton2

		local ImageLabel = t1.value12("ImageLabel")

		ImageLabel.Size = UDim2.new(0, 28, 0, 28)
		ImageLabel.Position = UDim2.new(0, 7, 0.5, -14)
		ImageLabel.BackgroundColor3 = t1.value6.SwitchOff
		ImageLabel.BackgroundTransparency = 0.5
		ImageLabel.Image = "rbxthumb://type=BundleThumbnail&id=" .. v.Id .. "&w=150&h=150"
		ImageLabel.Parent = TextButton2
		t1.value12("UICorner", ImageLabel).CornerRadius = UDim.new(0, 6)

		local TextLabel2 = t1.value12("TextLabel")

		TextLabel2.Size = UDim2.new(1, -40, 1, 0)
		TextLabel2.Position = UDim2.new(0, 36, 0, 0)
		TextLabel2.BackgroundTransparency = 1
		TextLabel2.Text = v.Name
		TextLabel2.Font = t1.value6.Font
		TextLabel2.TextScaled = true

		local UITextSizeConstraint = t1.value12("UITextSizeConstraint", TextLabel2)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel2.TextColor3 = t1.value6.TextDark
		TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel2.Parent = TextButton2
		v190(TextButton2, v)
	end

	t1.value46.FocusLost:Connect(function(enterPressed)
		if not enterPressed then
			return
		end

		local Text = t1.value46.Text
		local v249 = tonumber(Text)

		if v249 then
			task.spawn(function()
				local ok, result = pcall(function()
					return t1.value11:GetProductInfo(v249)
				end)
				local Name = not (ok and result) and "Catalog Bundle" or result.Name

				t1.value42.Text = "BUNDLE FOUND"
				t1.value44.Text = Name
				t1.value45.Text = "Apply Bundle"
				t1.value43.Image = "rbxthumb://type=BundleThumbnail&id=" .. v249 .. "&w=150&h=150"
				t1.value8.Visible = true
				t1.value41.Visible = true
			end)

			return
		end

		t1.value7("Insira um ID de Bundle válido.", 3)
	end)
	ImageButton.MouseButton1Click:Connect(function()
		local Text = t1.value46.Text
		local v254 = tonumber(Text)

		if not v254 then
			t1.value7("Insira um ID de Bundle válido.", 3)

			return
		end

		task.spawn(function()
			local ok, result = pcall(function()
				return t1.value11:GetProductInfo(v254)
			end)
			local Name = not (ok and result) and "Catalog Bundle" or result.Name

			t1.value42.Text = "BUNDLE FOUND"
			t1.value44.Text = Name
			t1.value45.Text = "Apply Bundle"
			t1.value43.Image = "rbxthumb://type=BundleThumbnail&id=" .. v254 .. "&w=150&h=150"
			t1.value8.Visible = true
			t1.value41.Visible = true
		end)
	end)

	local Frame9 = t1.value12("Frame")

	Frame9.Name = "CategoryBox_AccessoriesChanger"
	Frame9.Size = UDim2.new(1, 0, 0, 0)
	Frame9.AutomaticSize = Enum.AutomaticSize.Y
	Frame9.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame9.BackgroundTransparency = 0.45
	Frame9.BorderSizePixel = 0
	Frame9.Parent = Frame4
	t1.value12("UICorner", Frame9).CornerRadius = UDim.new(0, 6)

	local UIStroke4 = t1.value12("UIStroke")

	UIStroke4.Color = Color3.fromRGB(40, 40, 40)
	UIStroke4.Thickness = 1
	UIStroke4.Parent = Frame9

	local UIListLayout5 = t1.value12("UIListLayout")

	UIListLayout5.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout5.Padding = UDim.new(0, 8)
	UIListLayout5.Parent = Frame9

	local UIPadding2 = t1.value12("UIPadding")

	UIPadding2.PaddingTop = UDim.new(0, 8)
	UIPadding2.PaddingBottom = UDim.new(0, 8)
	UIPadding2.PaddingLeft = UDim.new(0, 10)
	UIPadding2.PaddingRight = UDim.new(0, 10)
	UIPadding2.Parent = Frame9

	local Frame10 = t1.value12("Frame")

	Frame10.Name = "HeaderContainer"
	Frame10.Size = UDim2.new(1, 0, 0, 20)
	Frame10.BackgroundTransparency = 1
	Frame10.Parent = Frame9

	local TextLabel2 = t1.value12("TextLabel")

	TextLabel2.Size = UDim2.new(1, 0, 1, 0)
	TextLabel2.BackgroundTransparency = 1
	TextLabel2.Text = "Accessories Changer"
	TextLabel2:SetAttribute("OriginalText", "Accessories Changer")
	TextLabel2.Font = t1.value6.Font
	TextLabel2.TextSize = 12
	TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel2.Parent = Frame10

	local Frame11 = t1.value12("Frame")

	Frame11.Name = "CustomAssetInputContainer"
	Frame11.Size = UDim2.new(1, 0, 0, 35)
	Frame11.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame11.BackgroundTransparency = 0.45
	Frame11.Parent = Frame9
	t1.value12("UICorner", Frame11).CornerRadius = UDim.new(0, 6)

	local UIStroke5 = t1.value12("UIStroke", Frame11)

	UIStroke5.Color = Color3.fromRGB(40, 40, 40)
	UIStroke5.Thickness = 1
	t1.value47 = t1.value12("TextBox")
	t1.value47.Size = UDim2.new(1, -40, 1, 0)
	t1.value47.Position = UDim2.new(0, 10, 0, 0)
	t1.value47.BackgroundTransparency = 1
	t1.value47.Text = ""
	t1.value47.PlaceholderText = "Asset/Accessory ID..."
	t1.value47.TextColor3 = t1.value6.Text
	t1.value47.PlaceholderColor3 = t1.value6.TextDark
	t1.value47.Font = t1.value6.Font
	t1.value47.TextSize = 13
	t1.value47.TextXAlignment = Enum.TextXAlignment.Left
	t1.value47.Parent = Frame11

	local ImageButton2 = t1.value12("ImageButton")

	ImageButton2.Size = UDim2.new(0, 20, 0, 20)
	ImageButton2.Position = UDim2.new(1, -28, 0.5, -10)
	ImageButton2.BackgroundTransparency = 1
	ImageButton2.Image = "rbxassetid://104986431790017"
	ImageButton2.ImageColor3 = t1.value6.Accent
	ImageButton2.ScaleType = Enum.ScaleType.Fit
	ImageButton2.Parent = Frame11

	function t1.value48()
		local Text = t1.value47.Text
		local v268 = tonumber(Text)

		if not v268 then
			t1.value7("Insira um ID de Ativo válido.", 3)

			return
		end

		task.spawn(function()
			local function v269()
				return t1.value11:GetProductInfo(v268)
			end

			local ok, result = pcall(v269)
			local Name = not (ok and result) and "Catalog Item" or result.Name

			t1.value42.Text = "EQUIP ITEM"
			t1.value44.Text = Name
			t1.value45.Text = "Equip"
			t1.value43.Image = "rbxthumb://type=Asset&id=" .. v268 .. "&w=150&h=150"
			t1.value8.Visible = true
			t1.value41.Visible = true
		end)
	end

	t1.value47.FocusLost:Connect(function(enterPressed)
		if not enterPressed then
			return
		end

		t1.value48()
	end)
	ImageButton2.MouseButton1Click:Connect(t1.value48)

	local Frame12 = t1.value12("Frame")

	Frame12.Name = "TogglesGridContainer"
	Frame12.Size = UDim2.new(1, 0, 0, 0)
	Frame12.BackgroundTransparency = 1
	Frame12.AutomaticSize = Enum.AutomaticSize.Y
	Frame12.Parent = Frame9

	local UIGridLayout2 = t1.value12("UIGridLayout")

	UIGridLayout2.CellSize = UDim2.new(0.5, -4, 0, 42)
	UIGridLayout2.CellPadding = UDim2.new(0, 8, 0, 8)
	UIGridLayout2.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout2.Parent = Frame12
	t1.value24.Headless = v211(Frame12, "Headless", "rbxthumb://type=BundleThumbnail&id=201&w=150&h=150", false, function(p28)
		t1.value21.Headless = p28
		task.spawn(function()
			local v275 = p28

			if v275 then
				v275 = not t1.value29
			end

			if not v275 then
				t1.value37()

				return
			end

			local ok, result = pcall(function()
				return t1.value10:GetBundleDetailsAsync(201)
			end)

			if ok then
				if result then
					ok = result.Items
				else
					ok = result
				end
			end

			if not ok then
				t1.value37()

				return
			end

			local Items = result.Items
			local v279 = nil

			for i = 1, #Items do
				local v281 = Items[i]

				if v281.Type == "UserOutfit" then
					local function v282()
						return t1.value2:GetHumanoidDescriptionFromOutfitId(v281.Id)
					end

					local ok2, result2 = pcall(v282)

					if ok2 and result2 then
						v279 = result2

						break
					end
				end
			end

			if not v279 then
				t1.value37()

				return
			end

			local v285 = t1.value2:CreateHumanoidModelFromDescription(v279, Enum.HumanoidRigType.R6)

			if v285 then
				local Head = v285:FindFirstChild("Head")
				local SpecialMesh = Head and Head:FindFirstChildOfClass("SpecialMesh")

				if SpecialMesh then
					SpecialMesh:Clone()
				end
			end

			v285:Destroy()
			t1.value37()
		end)
	end)
	t1.value24.Korblox = v211(Frame12, "Korblox", "rbxassetid://93791173513996", false, function(p29)
		t1.value21.Korblox = p29

		if p29 then
			t1.value21.SkeletonLeg = false
			t1.value21.ZombieLeg = false

			if t1.value24.SkeletonLeg then
				t1.value24.SkeletonLeg.Set(false)
			end

			if t1.value24.ZombieLeg then
				t1.value24.ZombieLeg.Set(false)
			end
		end

		task.spawn(function()
			local v288 = p29

			if v288 then
				v288 = not t1.value30
			end

			if not v288 then
				t1.value37()

				return
			end

			local function v289()
				return t1.value10:GetBundleDetailsAsync(192)
			end

			local ok, result = pcall(v289)

			if ok then
				if result then
					ok = result.Items
				else
					ok = result
				end
			end

			if not ok then
				t1.value37()

				return
			end

			local Items = result.Items
			local v293 = nil

			for i = 1, #Items do
				local v295 = Items[i]

				if v295.Type == "UserOutfit" then
					local function v296()
						return t1.value2:GetHumanoidDescriptionFromOutfitId(v295.Id)
					end

					local ok2, result2 = pcall(v296)

					if ok2 and result2 then
						v293 = result2

						break
					end
				end
			end

			if not v293 then
				t1.value37()

				return
			end

			local v299 = t1.value2:CreateHumanoidModelFromDescription(v293, Enum.HumanoidRigType.R6)
			local children = v299:GetChildren()

			for i = 1, #children do
				local v302 = children[i]
				local isCharacterMesh = v302:IsA("CharacterMesh")

				if isCharacterMesh then
					isCharacterMesh = v302.BodyPart == Enum.BodyPart.RightLeg
				end

				if isCharacterMesh then
					v302:Clone()

					break
				end
			end

			v299:Destroy()
			t1.value37()
		end)
	end)
	t1.value24.SkeletonLeg = v211(Frame12, "Skeleton Leg", "rbxassetid://118599491782541", false, function(p30)
		t1.value21.SkeletonLeg = p30

		if p30 then
			t1.value21.Korblox = false
			t1.value21.ZombieLeg = false

			if t1.value24.Korblox then
				t1.value24.Korblox.Set(false)
			end

			if t1.value24.ZombieLeg then
				t1.value24.ZombieLeg.Set(false)
			end
		end

		task.spawn(function()
			local v304 = p30

			if v304 then
				v304 = not t1.value31
			end

			if not v304 then
				t1.value37()

				return
			end

			local ok, result = pcall(function()
				return t1.value10:GetBundleDetailsAsync(295)
			end)

			if ok then
				if result then
					ok = result.Items
				else
					ok = result
				end
			end

			if not ok then
				t1.value37()

				return
			end

			local Items = result.Items
			local v308 = nil

			for i = 1, #Items do
				local v310 = Items[i]

				if v310.Type == "UserOutfit" then
					local function v311()
						return t1.value2:GetHumanoidDescriptionFromOutfitId(v310.Id)
					end

					local ok2, result2 = pcall(v311)

					if ok2 and result2 then
						v308 = result2

						break
					end
				end
			end

			if not v308 then
				t1.value37()

				return
			end

			local v314 = t1.value2:CreateHumanoidModelFromDescription(v308, Enum.HumanoidRigType.R6)
			local children = v314:GetChildren()

			for i = 1, #children do
				local v317 = children[i]
				local isCharacterMesh = v317:IsA("CharacterMesh")

				if isCharacterMesh then
					isCharacterMesh = v317.BodyPart == Enum.BodyPart.RightLeg
				end

				if isCharacterMesh then
					v317:Clone()

					break
				end
			end

			v314:Destroy()
			t1.value37()
		end)
	end)
	t1.value24.ZombieLeg = v211(Frame12, "Zombie Leg", "rbxassetid://137720329950856", false, function(p31)
		t1.value21.ZombieLeg = p31

		if p31 then
			t1.value21.Korblox = false
			t1.value21.SkeletonLeg = false

			if t1.value24.Korblox then
				t1.value24.Korblox.Set(false)
			end

			if t1.value24.SkeletonLeg then
				t1.value24.SkeletonLeg.Set(false)
			end
		end

		task.spawn(function()
			local v319 = p31

			if v319 then
				v319 = not t1.value32
			end

			if not v319 then
				t1.value37()

				return
			end

			local ok, result = pcall(function()
				return t1.value10:GetBundleDetailsAsync(291)
			end)

			if ok then
				if result then
					ok = result.Items
				else
					ok = result
				end
			end

			if not ok then
				t1.value37()

				return
			end

			local Items = result.Items
			local v323 = nil

			for i = 1, #Items do
				local v325 = Items[i]

				if v325.Type == "UserOutfit" then
					local ok2, result2 = pcall(function()
						return t1.value2:GetHumanoidDescriptionFromOutfitId(v325.Id)
					end)

					if ok2 and result2 then
						v323 = result2

						break
					end
				end
			end

			if not v323 then
				t1.value37()

				return
			end

			local v328 = t1.value2:CreateHumanoidModelFromDescription(v323, Enum.HumanoidRigType.R6)
			local children = v328:GetChildren()

			for i = 1, #children do
				local v331 = children[i]
				local isCharacterMesh = v331:IsA("CharacterMesh")

				if isCharacterMesh then
					isCharacterMesh = v331.BodyPart == Enum.BodyPart.RightLeg
				end

				if isCharacterMesh then
					v331:Clone()

					break
				end
			end

			v328:Destroy()
			t1.value37()
		end)
	end)
	t1.value24.RoyalScepter = v211(Frame12, "Royal Scepter", "rbxthumb://type=Asset&id=123021068422074&w=150&h=150", false, function(p32)
		t1.value21.RoyalScepter = p32
		task.spawn(t1.value37)
	end)
	t1.value24.MysteriousArrow = v211(Frame12, "Mysterious Arrow", "rbxthumb://type=Asset&id=100766397788633&w=150&h=150", false, function(p33)
		t1.value21.MysteriousArrow = p33
		task.spawn(t1.value37)
	end)

	local Frame13 = t1.value12("Frame")

	Frame13.Name = "LayoutSpacer"
	Frame13.Size = UDim2.new(1, 0, 0, 10)
	Frame13.BackgroundTransparency = 1
	Frame13.LayoutOrder = 2
	Frame13.Parent = Page

	local _ = #Page:GetChildren()

	Library:CreateSection(Page, "Skin Changer")

	local children = Page:GetChildren()
	local v336 = children[#children]
	local isFrame

	if v336 then
		isFrame = v336:IsA("Frame")
	else
		isFrame = v336
	end

	if isFrame then
		v336.LayoutOrder = 3
	end

	local TextButton2 = t1.value12("TextButton")

	TextButton2.Name = "PlayerSelectorContainer"
	TextButton2.Size = UDim2.new(1, -2, 0, 35)
	TextButton2.Position = UDim2.new(0, 1, 0, 0)
	TextButton2.BackgroundColor3 = Color3.new(0, 0, 0)
	TextButton2.BackgroundTransparency = 0.45
	TextButton2.Text = ""
	TextButton2.LayoutOrder = 4
	TextButton2.ZIndex = 5
	TextButton2.Parent = Page
	t1.value12("UICorner", TextButton2).CornerRadius = UDim.new(0, 6)
	t1.value12("UIStroke", TextButton2).Color = Color3.fromRGB(40, 40, 40)

	local TextLabel3 = t1.value12("TextLabel")

	TextLabel3.Size = UDim2.new(0, 100, 1, 0)
	TextLabel3.Position = UDim2.new(0, 12, 0, 0)
	TextLabel3.BackgroundTransparency = 1
	TextLabel3.Text = "Target Player:"
	TextLabel3.TextColor3 = t1.value6.TextDark
	TextLabel3.Font = t1.value6.Font
	TextLabel3.TextSize = 13
	TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
	TextLabel3.ZIndex = 5
	TextLabel3.Parent = TextButton2
	t1.value49 = t1.value12("TextLabel")
	t1.value49.Size = UDim2.new(1, -140, 1, 0)
	t1.value49.Position = UDim2.new(0, 110, 0, 0)
	t1.value49.BackgroundTransparency = 1
	t1.value49.Text = "My Avatar"
	t1.value49.TextColor3 = t1.value6.Accent
	t1.value49.Font = t1.value6.Font
	t1.value49.TextSize = 13
	t1.value49.TextXAlignment = Enum.TextXAlignment.Left
	t1.value49.ZIndex = 5
	t1.value49.Parent = TextButton2

	local TextLabel4 = t1.value12("TextLabel")

	TextLabel4.Size = UDim2.new(0, 20, 1, 0)
	TextLabel4.Position = UDim2.new(1, -25, 0, 0)
	TextLabel4.BackgroundTransparency = 1
	TextLabel4.Text = "▼"
	TextLabel4.TextColor3 = t1.value6.TextDark
	TextLabel4.Font = Enum.Font.GothamBold
	TextLabel4.TextSize = 10
	TextLabel4.ZIndex = 5
	TextLabel4.Parent = TextButton2
	t1.value50 = t1.value12("ScrollingFrame")
	t1.value50.Size = UDim2.new(1, 0, 0, 140)
	t1.value50.Position = UDim2.new(0, 0, 1, 4)
	t1.value50.BackgroundColor3 = Color3.new(0, 0, 0)
	t1.value50.BackgroundTransparency = 0.1
	t1.value50.BorderSizePixel = 0
	t1.value50.Visible = false
	t1.value50.ZIndex = 10
	t1.value50.ScrollBarThickness = 4
	t1.value50.Parent = TextButton2
	t1.value12("UICorner", t1.value50).CornerRadius = UDim.new(0, 6)
	t1.value12("UIStroke", t1.value50).Color = Color3.fromRGB(50, 50, 50)
	t1.value51 = t1.value12("UIListLayout")
	t1.value51.SortOrder = Enum.SortOrder.LayoutOrder
	t1.value51.Parent = t1.value50

	function t1.value52()
		t1.value50.Visible = false
	end
	function t1.value53(p34, p35, p36)
		local TextButton3 = t1.value12("TextButton")

		TextButton3.Size = UDim2.new(1, -6, 0, 28)
		TextButton3.Position = UDim2.new(0, 3, 0, 0)

		local color3

		if p35 then
			color3 = Color3.new(0, 0, 0)
		else
			color3 = p35
		end

		TextButton3.BackgroundColor3 = color3 or Color3.new(0, 0, 0)
		TextButton3.BackgroundTransparency = p35 and 0.5 or 0.8
		TextButton3.Text = "   " .. p34

		local Accent

		if p35 then
			Accent = t1.value6.Accent
		else
			Accent = p35
		end

		TextButton3.TextColor3 = Accent or t1.value6.Text
		TextButton3.Font = t1.value6.Font
		TextButton3.TextSize = 11
		TextButton3.TextXAlignment = Enum.TextXAlignment.Left
		TextButton3.ZIndex = 10
		TextButton3.Parent = t1.value50
		t1.value12("UICorner", TextButton3).CornerRadius = UDim.new(0, 4)

		local UIStroke6 = t1.value12("UIStroke", TextButton3)
		local Accent2

		if p35 then
			Accent2 = t1.value6.Accent
		else
			Accent2 = p35
		end

		UIStroke6.Color = Accent2 or Color3.fromRGB(35, 35, 35)
		UIStroke6.Thickness = 1
		UIStroke6.Transparency = p35 and 0.5 or 0.8
		TextButton3.MouseEnter:Connect(function()
			if p35 then
				return
			end

			TextButton3.BackgroundTransparency = 0.5
			t1.value5:Create(UIStroke6, TweenInfo.new(0.15), {
				Transparency = 0.3
			}):Play()
		end)
		TextButton3.MouseLeave:Connect(function()
			if p35 then
				return
			end

			TextButton3.BackgroundTransparency = 0.8
			t1.value5:Create(UIStroke6, TweenInfo.new(0.15), {
				Transparency = 0.8
			}):Play()
		end)
		TextButton3.MouseButton1Click:Connect(p36)
	end

	local function v346()
		local value17 = t1.value17
		local value50 = t1.value50

		for _, child in value17(value50.GetChildren(value50)) do
			if child:IsA("TextButton") then
				child:Destroy()
			end
		end

		local function v351()
			t1.value39 = t1.value3
			t1.value49.Text = "My Avatar"
			t1.value52()
		end

		t1.value53("My Avatar", t1.value39 == t1.value3, v351)

		local players = t1.value2:GetPlayers()

		for i = 1, #players do
			local v354 = players[i]

			if v354 ~= t1.value3 then
				t1.value53(v354.DisplayName .. " (@" .. v354.Name .. ")", t1.value39 == v354, function()
					t1.value39 = v354
					t1.value49.Text = v354.DisplayName
					t1.value52()
				end)
			end
		end

		t1.value50.CanvasSize = UDim2.new(0, 0, 0, t1.value51.AbsoluteContentSize.Y)
	end

	TextButton2.MouseButton1Click:Connect(function()
		t1.value50.Visible = not t1.value50.Visible

		if not t1.value50.Visible then
			return
		end

		v346()
	end)
	t1.value2.PlayerAdded:Connect(function()
		if not t1.value50.Visible then
			return
		end

		v346()
	end)
	t1.value2.PlayerRemoving:Connect(function(player)
		if t1.value39 == player then
			t1.value39 = t1.value3
			t1.value49.Text = "My Avatar"
		end

		if t1.value50.Visible then
			v346()
		end

		if not getgenv().SkinChangerLoops[player.Name] then
			return
		end

		getgenv().SkinChangerLoops[player.Name]:Disconnect()
		getgenv().SkinChangerLoops[player.Name] = nil
	end)

	local Frame14 = t1.value12("Frame")

	Frame14.Size = UDim2.new(1, -2, 0, 35)
	Frame14.Position = UDim2.new(0, 1, 0, 0)
	Frame14.BackgroundColor3 = Color3.new(0, 0, 0)
	Frame14.BackgroundTransparency = 0.45
	Frame14.LayoutOrder = 5
	Frame14.Parent = Page
	t1.value12("UICorner", Frame14).CornerRadius = UDim.new(0, 6)
	t1.value12("UIStroke", Frame14).Color = Color3.fromRGB(40, 40, 40)
	t1.value54 = t1.value12("TextBox")
	t1.value54.Size = UDim2.new(1, -40, 1, 0)
	t1.value54.Position = UDim2.new(0, 10, 0, 0)
	t1.value54.BackgroundTransparency = 1
	t1.value54.Text = ""
	t1.value54.PlaceholderText = "Username..."
	t1.value54.TextColor3 = t1.value6.Text
	t1.value54.PlaceholderColor3 = t1.value6.TextDark
	t1.value54.Font = t1.value6.Font
	t1.value54.TextSize = 13
	t1.value54.TextXAlignment = Enum.TextXAlignment.Left
	t1.value54.Parent = Frame14

	local ImageButton3 = t1.value12("ImageButton")

	ImageButton3.Size = UDim2.new(0, 20, 0, 20)
	ImageButton3.Position = UDim2.new(1, -28, 0.5, -10)
	ImageButton3.BackgroundTransparency = 1
	ImageButton3.Image = "rbxassetid://104986431790017"
	ImageButton3.ImageColor3 = t1.value6.Accent
	ImageButton3.ScaleType = Enum.ScaleType.Fit
	ImageButton3.Parent = Frame14

	local Frame15 = t1.value12("Frame")

	Frame15.Name = "ResetBtnContainer"
	Frame15.Size = UDim2.new(1, -2, 0, 32)
	Frame15.BackgroundTransparency = 1
	Frame15.LayoutOrder = 6
	Frame15.Parent = Page
	t1.value55 = t1.value12("TextButton")
	t1.value55.Size = UDim2.new(1, 0, 1, 0)
	t1.value55.BackgroundColor3 = Color3.new(0, 0, 0)
	t1.value55.BackgroundTransparency = 0.6
	t1.value55.Text = "Reset Target Player Skin"
	t1.value55.TextColor3 = t1.value6.TextDark
	t1.value55.Font = t1.value6.Font
	t1.value55.TextSize = 11
	t1.value55.Parent = Frame15
	t1.value12("UICorner", t1.value55).CornerRadius = UDim.new(0, 6)
	t1.value56 = t1.value12("UIStroke", t1.value55)
	t1.value56.Color = Color3.fromRGB(40, 40, 40)
	t1.value55.MouseEnter:Connect(function()
		local value5 = t1.value5
		local value56 = t1.value56
		local tweenInfo = TweenInfo.new(0.2)
		local color3 = Color3.fromRGB

		value5.Create(value5, value56, tweenInfo, {
			Color = color3(80, 80, 80)
		}):Play()
		t1.value5:Create(t1.value55, TweenInfo.new(0.2), {
			TextColor3 = t1.value6.Text
		}):Play()
	end)
	t1.value55.MouseLeave:Connect(function()
		local value5 = t1.value5
		local value56 = t1.value56
		local tweenInfo = TweenInfo.new(0.2)
		local color3 = Color3.fromRGB

		value5.Create(value5, value56, tweenInfo, {
			Color = color3(40, 40, 40)
		}):Play()
		t1.value5:Create(t1.value55, TweenInfo.new(0.2), {
			TextColor3 = t1.value6.TextDark
		}):Play()
	end)
	t1.value55.MouseButton1Click:Connect(function()
		local Character = t1.value39.Character

		if Character then
			if t1.value39 == t1.value3 then
				t1.value21.SkinUserId = nil
				task.spawn(t1.value37)
			else
				t1.value35(Character)

				if not getgenv().SkinChangerLoops[t1.value39.Name] then
					t1.value7("Skin Reset for " .. t1.value39.Name, 3)

					return
				end

				getgenv().SkinChangerLoops[t1.value39.Name]:Disconnect()
				getgenv().SkinChangerLoops[t1.value39.Name] = nil
			end

			t1.value7("Skin Reset for " .. t1.value39.Name, 3)
		else
			t1.value7("Character not found!", 3)
		end
	end)

	local Frame16 = t1.value12("Frame")

	Frame16.Size = UDim2.new(1, 0, 0, 0)
	Frame16.BackgroundTransparency = 1
	Frame16.AutomaticSize = Enum.AutomaticSize.Y
	Frame16.LayoutOrder = 7
	Frame16.Parent = Page

	local UIGridLayout3 = t1.value12("UIGridLayout")

	UIGridLayout3.CellSize = UDim2.new(0.25, -6, 0, 42)
	UIGridLayout3.CellPadding = UDim2.new(0, 8, 0, 8)
	UIGridLayout3.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout3.Parent = Frame16

	local function v369(p37)
		local Text = p37 or t1.value54.Text
		local v371

		if Text then
			v371 = Text ~= ""
		else
			v371 = Text
		end

		if not v371 then
			return
		end

		local function v372()
			return t1.value2:GetUserIdFromNameAsync(Text)
		end

		t1.value54.Text = Text

		local ok, result = pcall(v372)

		if ok and result then
			t1.value42.Text = "SKIN FOUND"
			t1.value44.Text = Text
			t1.value45.Text = "Apply Skin"
			t1.value43.Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(result) .. "&w=150&h=150"
			t1.value8.Visible = true
			t1.value41.Visible = true

			return
		end

		t1.value7("User not found!", 2)
	end

	t1.value54.FocusLost:Connect(function(enterPressed)
		if not enterPressed then
			return
		end

		v369()
	end)
	ImageButton3.MouseButton1Click:Connect(function()
		v369()
	end)

	for k, v in t1.value17({
		"y4am1n380",
		"eduttk7",
		"Victoria234h",
		"1Pexssz",
		"Vaultzinx",
		"fleepkkj",
		"znerx3ys",
		"TryNotToRageew",
		"DenzelDxvices",
		"DraxynSoulx",
		"Gaie_VR",
		"totallyvelez",
		"steik00s",
		"Guime_blox",
		"sennapy",
		"Mwaiconn",
		"Dexterzxxp",
		"Jpzinux",
		"Udies11br",
		"akatexs",
		"phzin_it1",
		"hq_slyin",
		"Dv_223",
		"Dimeyuri",
		"JaoEverCry",
		"Baydiina",
		"Meshew",
		"SniperFq",
		"sukyaik",
		"nathanserafas12",
		"guhtorrez",
		"sthefany12091",
		"011coded",
		"Marionete533",
		"akatexs",
		"j_oqoo",
		"lauriinhakplayer",
		"tio_morcego",
		"l_qke",
		"pqsteljxde",
		"brokensfr",
		"TotallyFerr",
		"ZxvqZayan",
		"cw_223"
	}) do
		local TextButton3 = t1.value12("TextButton")

		TextButton3.BackgroundColor3 = Color3.new(0, 0, 0)
		TextButton3.BackgroundTransparency = 0.45
		TextButton3.Text = ""
		TextButton3.Parent = Frame16
		t1.value12("UICorner", TextButton3).CornerRadius = UDim.new(0, 6)

		local UIStroke6 = t1.value12("UIStroke")

		UIStroke6.Color = Color3.fromRGB(40, 40, 40)
		UIStroke6.Thickness = 1
		UIStroke6.Parent = TextButton3

		local ImageLabel = t1.value12("ImageLabel")

		ImageLabel.Size = UDim2.new(0, 28, 0, 28)
		ImageLabel.Position = UDim2.new(0, 7, 0.5, -14)
		ImageLabel.BackgroundColor3 = t1.value6.SwitchOff
		ImageLabel.BackgroundTransparency = 0.5
		ImageLabel.Parent = TextButton3
		t1.value12("UICorner", ImageLabel).CornerRadius = UDim.new(0, 6)

		local TextLabel5 = t1.value12("TextLabel")

		TextLabel5.Size = UDim2.new(1, -40, 1, 0)
		TextLabel5.Position = UDim2.new(0, 36, 0, 0)
		TextLabel5.BackgroundTransparency = 1
		TextLabel5.Text = v
		TextLabel5.Font = t1.value6.Font
		TextLabel5.TextScaled = true

		local UITextSizeConstraint = t1.value12("UITextSizeConstraint", TextLabel5)

		UITextSizeConstraint.MinTextSize = 7
		UITextSizeConstraint.MaxTextSize = 11
		TextLabel5.TextColor3 = t1.value6.Text
		TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel5.Parent = TextButton3
		TextButton3.MouseEnter:Connect(function()
			local value5 = t1.value5
			local v383 = UIStroke6
			local tweenInfo = TweenInfo.new(0.2)
			local value6 = t1.value6

			value5.Create(value5, v383, tweenInfo, {
				Color = value6.Accent
			}):Play()
		end)
		TextButton3.MouseLeave:Connect(function()
			local value5 = t1.value5
			local v387 = UIStroke6
			local tweenInfoNew = TweenInfo.new

			value5.Create(value5, v387, tweenInfoNew(0.2), {
				Color = Color3.fromRGB(40, 40, 40)
			}):Play()
		end)
		task.spawn(function()
			task.wait(k * 0.03)

			local v389 = t1.value26[v]
			local result

			if v389 then
				result = v389
			else
				local function v391()
					return t1.value2:GetUserIdFromNameAsync(v)
				end

				local ok

				ok, result = pcall(v391)

				if ok and result then
					t1.value26[v] = result
				else
					result = v389
				end
			end

			if not result then
				return
			end

			ImageLabel.Image = "rbxthumb://type=AvatarHeadShot&id=" .. tostring(result) .. "&w=150&h=150"
		end)
		TextButton3.MouseButton1Click:Connect(function()
			v369(v)
		end)
	end
end
