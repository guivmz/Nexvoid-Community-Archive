
return function(p1)
	local Library = p1.Library
	local t1 = {
		value1 = p1.Page,
		value2 = p1.Lighting
	}
	local _ = p1.RunService

	t1.value3 = p1.SendNotification

	local UserInputService = game:GetService("UserInputService")

	t1.value4 = Color3.new(1, 1, 1)
	t1.value5 = Color3.new(0, 0, 0)

	local color3 = Color3.fromRGB(128, 128, 128)
	local TouchEnabled = UserInputService.TouchEnabled

	if TouchEnabled then
		TouchEnabled = not UserInputService.MouseEnabled
	end

	t1.value6 = TouchEnabled
	t1.value7 = false
	t1.value8 = "morning"
	t1.value9 = {
		yfbghj = t1.value2.Ambient,
		tgvbyd = t1.value2.ClockTime,
		ghuybhuyhj = t1.value2.GeographicLatitude,
		khnbfth = t1.value2.Brightness,
		hgyghkg = t1.value2.ColorShift_Bottom,
		yfbhjku = t1.value2.ColorShift_Top,
		ygyyfgvhbjytrt = t1.value2.EnvironmentDiffuseScale,
		sdfcddc = t1.value2.EnvironmentSpecularScale,
		hgnujuu7thgr = t1.value2.GlobalShadows,
		hyhnngtf = t1.value2.OutdoorAmbient,
		hdfr7thgr = t1.value2.ExposureCompensation,
		fhnchvhfjsd = 0,
		ugtbbjhygt = 0,
		tfbghuugbnjhg = 0,
		fvrtccvghghj = Color3.fromRGB(255, 255, 255),
		jnfdhbnfcvh = 0.4,
		fvtyghj = 24,
		ygbhnj = 0.95,
		njnfg = 0,
		jdfkd = 0.1,
		fvgsdfg = 50,
		sdkvkflv = 10,
		hbjhd = 0.75,
		gyhgtg = 0,
		ygbhggv = 0,
		jghbjhgyfd = Color3.fromRGB(255, 255, 255),
		shdbsnjfc = 0,
		skdjfkdm = 0,
		sjdjncdjf = Color3.fromRGB(199, 199, 199),
		efjdjfk = Color3.fromRGB(106, 112, 125),
		sejfd = 0,
		jddfjsd = 0
	}
	t1.value10 = {
		ClockTime = t1.value2.ClockTime,
		Ambient = t1.value2.Ambient,
		Brightness = t1.value2.Brightness,
		ColorShift_Bottom = t1.value2.ColorShift_Bottom,
		ColorShift_Top = t1.value2.ColorShift_Top,
		EnvDiffuse = t1.value2.EnvironmentDiffuseScale,
		EnvSpecular = t1.value2.EnvironmentSpecularScale,
		Shadows = t1.value2.GlobalShadows,
		Outdoor = t1.value2.OutdoorAmbient,
		Exposure = t1.value2.ExposureCompensation,
		Lat = t1.value2.GeographicLatitude
	}
	t1.value11 = {
		dof = false,
		cor = true,
		sray = false,
		bl = true,
		blr = false
	}

	local value12 = {
		morning = {
			yfbghj = Color3.fromRGB(138, 138, 138),
			tgvbyd = 6.5,
			ghuybhuyhj = 41.7,
			khnbfth = 2,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(0, 0, 0),
			ygyyfgvhbjytrt = 0.25,
			sdfcddc = 0.25,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(138, 138, 138),
			hdfr7thgr = 0.2,
			fhnchvhfjsd = 0.02,
			ugtbbjhygt = 0.1,
			tfbghuugbnjhg = -0.2,
			fvrtccvghghj = Color3.fromRGB(255, 255, 255),
			jnfdhbnfcvh = 0.8,
			fvtyghj = 24,
			ygbhnj = 0.8,
			njnfg = 0,
			jdfkd = 0.1,
			fvgsdfg = 50,
			sdkvkflv = 15,
			hbjhd = 0.75,
			gyhgtg = 0.4,
			ygbhggv = 0.3,
			jghbjhgyfd = Color3.fromRGB(255, 248, 231),
			shdbsnjfc = 0.31,
			skdjfkdm = 0.25,
			sjdjncdjf = Color3.fromRGB(199, 199, 199),
			efjdjfk = Color3.fromRGB(106, 112, 125),
			sejfd = 0.1,
			jddfjsd = 0
		},
		midday = {
			yfbghj = Color3.fromRGB(138, 138, 138),
			tgvbyd = 14,
			ghuybhuyhj = 41.7,
			khnbfth = 2,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(0, 0, 0),
			ygyyfgvhbjytrt = 0.25,
			sdfcddc = 0.25,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(138, 138, 138),
			hdfr7thgr = 0,
			fhnchvhfjsd = 0,
			ugtbbjhygt = 0.1,
			tfbghuugbnjhg = 0,
			fvrtccvghghj = Color3.fromRGB(255, 255, 255),
			jnfdhbnfcvh = 1,
			fvtyghj = 24,
			ygbhnj = 0.95,
			njnfg = 0,
			jdfkd = 0.1,
			fvgsdfg = 50,
			sdkvkflv = 10,
			hbjhd = 0.75,
			gyhgtg = 0.5,
			ygbhggv = 0.4,
			jghbjhgyfd = Color3.fromRGB(255, 255, 255),
			shdbsnjfc = 0.364,
			skdjfkdm = 0.25,
			sjdjncdjf = Color3.fromRGB(199, 199, 199),
			efjdjfk = Color3.fromRGB(106, 112, 125),
			sejfd = 0,
			jddfjsd = 0
		},
		afternoon = {
			yfbghj = Color3.fromRGB(138, 138, 138),
			tgvbyd = 15.5,
			ghuybhuyhj = 41.7,
			khnbfth = 2,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(0, 0, 0),
			ygyyfgvhbjytrt = 0.25,
			sdfcddc = 0.25,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(138, 138, 138),
			hdfr7thgr = 0.1,
			fhnchvhfjsd = 0.01,
			ugtbbjhygt = 0.15,
			tfbghuugbnjhg = -0.1,
			fvrtccvghghj = Color3.fromRGB(255, 252, 245),
			jnfdhbnfcvh = 0.9,
			fvtyghj = 24,
			ygbhnj = 0.85,
			njnfg = 0,
			jdfkd = 0.15,
			fvgsdfg = 50,
			sdkvkflv = 12,
			hbjhd = 0.75,
			gyhgtg = 0.45,
			ygbhggv = 0.35,
			jghbjhgyfd = Color3.fromRGB(255, 248, 231),
			shdbsnjfc = 0.32,
			skdjfkdm = 0.25,
			sjdjncdjf = Color3.fromRGB(199, 199, 199),
			efjdjfk = Color3.fromRGB(106, 112, 125),
			sejfd = 0.05,
			jddfjsd = 0
		},
		evening = {
			yfbghj = Color3.fromRGB(150, 112, 90),
			tgvbyd = 17.5,
			ghuybhuyhj = 41.7,
			khnbfth = 2,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(255, 176, 131),
			ygyyfgvhbjytrt = 0.25,
			sdfcddc = 0.25,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(150, 112, 90),
			hdfr7thgr = 0.25,
			fhnchvhfjsd = 0.05,
			ugtbbjhygt = 0.2,
			tfbghuugbnjhg = -0.3,
			fvrtccvghghj = Color3.fromRGB(255, 231, 207),
			jnfdhbnfcvh = 1.2,
			fvtyghj = 32,
			ygbhnj = 0.7,
			njnfg = 0,
			jdfkd = 0.2,
			fvgsdfg = 50,
			sdkvkflv = 15,
			hbjhd = 0.8,
			gyhgtg = 0.6,
			ygbhggv = 0.4,
			jghbjhgyfd = Color3.fromRGB(255, 207, 165),
			shdbsnjfc = 0.42,
			skdjfkdm = 0.3,
			sjdjncdjf = Color3.fromRGB(225, 180, 150),
			efjdjfk = Color3.fromRGB(255, 176, 131),
			sejfd = 0.3,
			jddfjsd = 0.1
		},
		night = {
			yfbghj = Color3.fromRGB(85, 85, 127),
			tgvbyd = 0,
			ghuybhuyhj = 41.7,
			khnbfth = 1,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(0, 0, 0),
			ygyyfgvhbjytrt = 0.15,
			sdfcddc = 0.15,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(85, 85, 127),
			hdfr7thgr = -0.2,
			fhnchvhfjsd = -0.1,
			ugtbbjhygt = 0.05,
			tfbghuugbnjhg = -0.5,
			fvrtccvghghj = Color3.fromRGB(200, 210, 255),
			jnfdhbnfcvh = 0.4,
			fvtyghj = 24,
			ygbhnj = 1,
			njnfg = 0,
			jdfkd = 0.1,
			fvgsdfg = 50,
			sdkvkflv = 10,
			hbjhd = 0.75,
			gyhgtg = 0.3,
			ygbhggv = 0.2,
			jghbjhgyfd = Color3.fromRGB(170, 180, 210),
			shdbsnjfc = 0.25,
			skdjfkdm = 0.2,
			sjdjncdjf = Color3.fromRGB(140, 150, 180),
			efjdjfk = Color3.fromRGB(85, 85, 127),
			sejfd = 0,
			jddfjsd = 0.2
		},
		midnight = {
			yfbghj = Color3.fromRGB(60, 60, 90),
			tgvbyd = 0,
			ghuybhuyhj = 41.7,
			khnbfth = 0.5,
			hgyghkg = Color3.fromRGB(0, 0, 0),
			yfbhjku = Color3.fromRGB(0, 0, 0),
			ygyyfgvhbjytrt = 0.1,
			sdfcddc = 0.1,
			hgnujuu7thgr = true,
			hyhnngtf = Color3.fromRGB(60, 60, 90),
			hdfr7thgr = -0.3,
			fhnchvhfjsd = -0.15,
			ugtbbjhygt = 0,
			tfbghuugbnjhg = -0.6,
			fvrtccvghghj = Color3.fromRGB(180, 190, 230),
			jnfdhbnfcvh = 0.3,
			fvtyghj = 24,
			ygbhnj = 1,
			njnfg = 0,
			jdfkd = 0.05,
			fvgsdfg = 50,
			sdkvkflv = 8,
			hbjhd = 0.7,
			gyhgtg = 0.2,
			ygbhggv = 0.15,
			jghbjhgyfd = Color3.fromRGB(150, 160, 190),
			shdbsnjfc = 0.2,
			skdjfkdm = 0.15,
			sjdjncdjf = Color3.fromRGB(120, 130, 160),
			efjdjfk = Color3.fromRGB(60, 60, 90),
			sejfd = 0,
			jddfjsd = 0.3
		}
	}

	t1.value12 = value12
	t1.value13 = nil
	t1.value14 = nil
	t1.value15 = nil
	t1.value16 = nil
	t1.value17 = nil
	t1.value18 = nil

	function t1.value19()
		if not (t1.value13 and t1.value13.Parent) then
			t1.value13 = t1.value2:FindFirstChildOfClass("ColorCorrectionEffect") or Instance.new("ColorCorrectionEffect", t1.value2)
		end

		if not (t1.value14 and t1.value14.Parent) then
			t1.value14 = t1.value2:FindFirstChildOfClass("BloomEffect") or Instance.new("BloomEffect", t1.value2)
		end

		if not (t1.value15 and t1.value15.Parent) then
			t1.value15 = t1.value2:FindFirstChildOfClass("BlurEffect") or Instance.new("BlurEffect", t1.value2)
		end

		if not (t1.value16 and t1.value16.Parent) then
			t1.value16 = t1.value2:FindFirstChildOfClass("DepthOfFieldEffect") or Instance.new("DepthOfFieldEffect", t1.value2)
		end

		if not (t1.value17 and t1.value17.Parent) then
			t1.value17 = t1.value2:FindFirstChildOfClass("Clouds") or Instance.new("Clouds", t1.value2)
		end

		if t1.value18 and t1.value18.Parent then
			return
		end

		t1.value18 = t1.value2:FindFirstChildOfClass("Atmosphere") or Instance.new("Atmosphere", t1.value2)
	end
	function t1.value20()
		if not t1.value7 then
			return
		end

		t1.value19()

		local yfbghj = t1.value9.yfbghj

		if t1.value2.Ambient ~= yfbghj then
			t1.value2.Ambient = yfbghj
		end

		local tgvbyd = t1.value9.tgvbyd

		if t1.value2.ClockTime ~= tgvbyd then
			t1.value2.ClockTime = tgvbyd
		end

		local ghuybhuyhj = t1.value9.ghuybhuyhj

		if t1.value2.GeographicLatitude ~= ghuybhuyhj then
			t1.value2.GeographicLatitude = ghuybhuyhj
		end

		local khnbfth = t1.value9.khnbfth

		if t1.value2.Brightness ~= khnbfth then
			t1.value2.Brightness = khnbfth
		end

		local hgyghkg = t1.value9.hgyghkg

		if t1.value2.ColorShift_Bottom ~= hgyghkg then
			t1.value2.ColorShift_Bottom = hgyghkg
		end

		local yfbhjku = t1.value9.yfbhjku

		if t1.value2.ColorShift_Top ~= yfbhjku then
			t1.value2.ColorShift_Top = yfbhjku
		end

		local ygyyfgvhbjytrt = t1.value9.ygyyfgvhbjytrt

		if t1.value2.EnvironmentDiffuseScale ~= ygyyfgvhbjytrt then
			t1.value2.EnvironmentDiffuseScale = ygyyfgvhbjytrt
		end

		local sdfcddc = t1.value9.sdfcddc

		if t1.value2.EnvironmentSpecularScale ~= sdfcddc then
			t1.value2.EnvironmentSpecularScale = sdfcddc
		end

		local hgnujuu7thgr = t1.value9.hgnujuu7thgr

		if t1.value2.GlobalShadows ~= hgnujuu7thgr then
			t1.value2.GlobalShadows = hgnujuu7thgr
		end

		local hyhnngtf = t1.value9.hyhnngtf

		if t1.value2.OutdoorAmbient ~= hyhnngtf then
			t1.value2.OutdoorAmbient = hyhnngtf
		end

		local hdfr7thgr = t1.value9.hdfr7thgr

		if t1.value2.ExposureCompensation ~= hdfr7thgr then
			t1.value2.ExposureCompensation = hdfr7thgr
		end

		if t1.value2.FogEnd ~= 999999 then
			t1.value2.FogEnd = 999999
		end

		local fhnchvhfjsd = t1.value9.fhnchvhfjsd

		if t1.value13.Brightness ~= fhnchvhfjsd then
			t1.value13.Brightness = fhnchvhfjsd
		end

		local ugtbbjhygt = t1.value9.ugtbbjhygt

		if t1.value13.Contrast ~= ugtbbjhygt then
			t1.value13.Contrast = ugtbbjhygt
		end

		local tfbghuugbnjhg = t1.value9.tfbghuugbnjhg

		if t1.value13.Saturation ~= tfbghuugbnjhg then
			t1.value13.Saturation = tfbghuugbnjhg
		end

		local fvrtccvghghj = t1.value9.fvrtccvghghj

		if t1.value13.TintColor ~= fvrtccvghghj then
			t1.value13.TintColor = fvrtccvghghj
		end

		local cor = t1.value11.cor

		if t1.value13.Enabled ~= cor then
			t1.value13.Enabled = cor
		end

		local jnfdhbnfcvh = t1.value9.jnfdhbnfcvh

		if t1.value14.Intensity ~= jnfdhbnfcvh then
			t1.value14.Intensity = jnfdhbnfcvh
		end

		local fvtyghj = t1.value9.fvtyghj

		if t1.value14.Size ~= fvtyghj then
			t1.value14.Size = fvtyghj
		end

		local ygbhnj = t1.value9.ygbhnj

		if t1.value14.Threshold ~= ygbhnj then
			t1.value14.Threshold = ygbhnj
		end

		local bl = t1.value11.bl

		if t1.value14.Enabled ~= bl then
			t1.value14.Enabled = bl
		end

		local njnfg = t1.value9.njnfg

		if t1.value15.Size ~= njnfg then
			t1.value15.Size = njnfg
		end

		local blr = t1.value11.blr

		if t1.value15.Enabled ~= blr then
			t1.value15.Enabled = blr
		end

		local jdfkd = t1.value9.jdfkd

		if t1.value16.FarIntensity ~= jdfkd then
			t1.value16.FarIntensity = jdfkd
		end

		local fvgsdfg = t1.value9.fvgsdfg

		if t1.value16.FocusDistance ~= fvgsdfg then
			t1.value16.FocusDistance = fvgsdfg
		end

		local sdkvkflv = t1.value9.sdkvkflv

		if t1.value16.InFocusRadius ~= sdkvkflv then
			t1.value16.InFocusRadius = sdkvkflv
		end

		local hbjhd = t1.value9.hbjhd

		if t1.value16.NearIntensity ~= hbjhd then
			t1.value16.NearIntensity = hbjhd
		end

		local dof = t1.value11.dof

		if t1.value16.Enabled ~= dof then
			t1.value16.Enabled = dof
		end

		local gyhgtg = t1.value9.gyhgtg

		if t1.value17.Cover ~= gyhgtg then
			t1.value17.Cover = gyhgtg
		end

		local ygbhggv = t1.value9.ygbhggv

		if t1.value17.Density ~= ygbhggv then
			t1.value17.Density = ygbhggv
		end

		local jghbjhgyfd = t1.value9.jghbjhgyfd

		if t1.value17.Color ~= jghbjhgyfd then
			t1.value17.Color = jghbjhgyfd
		end

		local shdbsnjfc = t1.value9.shdbsnjfc

		if t1.value18.Density ~= shdbsnjfc then
			t1.value18.Density = shdbsnjfc
		end

		local skdjfkdm = t1.value9.skdjfkdm

		if t1.value18.Offset ~= skdjfkdm then
			t1.value18.Offset = skdjfkdm
		end

		local sjdjncdjf = t1.value9.sjdjncdjf

		if t1.value18.Color ~= sjdjncdjf then
			t1.value18.Color = sjdjncdjf
		end

		local efjdjfk = t1.value9.efjdjfk

		if t1.value18.Decay ~= efjdjfk then
			t1.value18.Decay = efjdjfk
		end

		local sejfd = t1.value9.sejfd

		if t1.value18.Glare ~= sejfd then
			t1.value18.Glare = sejfd
		end

		local jddfjsd = t1.value9.jddfjsd

		if t1.value18.Haze == jddfjsd then
			return
		end

		t1.value18.Haze = jddfjsd
	end

	Library:CreateSection(t1.value1, "Shaders", "Right")

	local value1 = t1.value1

	Library.CreateToggle(Library, value1, "Enable Shaders", false, function(p2)
		t1.value7 = p2

		if p2 then
			local value8 = t1.value8
			local v46 = t1.value12[value8]

			if v46 then
				for k, v in pairs(v46) do
					t1.value9[k] = v
				end
			end

			task.spawn(function()
				while t1.value7 do
					t1.value20()
					task.wait(0.1)
				end
			end)

			return
		end

		if t1.value2.ClockTime ~= t1.value10.ClockTime then
			t1.value2.ClockTime = t1.value10.ClockTime
		end

		if t1.value2.Ambient ~= t1.value10.Ambient then
			t1.value2.Ambient = t1.value10.Ambient
		end

		if t1.value2.Brightness ~= t1.value10.Brightness then
			t1.value2.Brightness = t1.value10.Brightness
		end

		if t1.value2.ColorShift_Bottom ~= t1.value10.ColorShift_Bottom then
			t1.value2.ColorShift_Bottom = t1.value10.ColorShift_Bottom
		end

		if t1.value2.ColorShift_Top ~= t1.value10.ColorShift_Top then
			t1.value2.ColorShift_Top = t1.value10.ColorShift_Top
		end

		if t1.value2.EnvironmentDiffuseScale ~= t1.value10.EnvDiffuse then
			t1.value2.EnvironmentDiffuseScale = t1.value10.EnvDiffuse
		end

		if t1.value2.EnvironmentSpecularScale ~= t1.value10.EnvSpecular then
			t1.value2.EnvironmentSpecularScale = t1.value10.EnvSpecular
		end

		if t1.value2.GlobalShadows ~= t1.value10.Shadows then
			t1.value2.GlobalShadows = t1.value10.Shadows
		end

		if t1.value2.OutdoorAmbient ~= t1.value10.Outdoor then
			t1.value2.OutdoorAmbient = t1.value10.Outdoor
		end

		if t1.value2.ExposureCompensation ~= t1.value10.Exposure then
			t1.value2.ExposureCompensation = t1.value10.Exposure
		end

		if t1.value2.GeographicLatitude ~= t1.value10.Lat then
			t1.value2.GeographicLatitude = t1.value10.Lat
		end

		t1.value19()

		if t1.value13.Enabled ~= false then
			t1.value13.Enabled = false
		end

		if t1.value14.Enabled ~= false then
			t1.value14.Enabled = false
		end

		if t1.value15.Enabled ~= false then
			t1.value15.Enabled = false
		end

		if t1.value16.Enabled == false then
			return
		end

		t1.value16.Enabled = false
	end)
	Library:CreateDropdown(t1.value1, "Select Shader", {
		"morning",
		"midday",
		"afternoon",
		"evening",
		"night",
		"midnight"
	}, "morning", function(p3)
		local value7 = t1.value7 and t1.value12[p3]

		if not value7 then
			return
		end

		for k, v in pairs(value7) do
			t1.value9[k] = v
		end
	end)
	Library:CreateButton(t1.value1, "Reset Shaders to Default", function()
		t1.value9.yfbghj = t1.value10.Ambient
		t1.value9.tgvbyd = t1.value10.ClockTime
		t1.value9.ghuybhuyhj = t1.value10.Lat
		t1.value9.khnbfth = t1.value10.Brightness
		t1.value9.hgyghkg = t1.value10.ColorShift_Bottom
		t1.value9.yfbhjku = t1.value10.ColorShift_Top
		t1.value9.ygyyfgvhbjytrt = t1.value10.EnvDiffuse
		t1.value9.sdfcddc = t1.value10.EnvSpecular
		t1.value9.hgnujuu7thgr = t1.value10.Shadows
		t1.value9.hyhnngtf = t1.value10.Outdoor
		t1.value9.hdfr7thgr = t1.value10.Exposure
		t1.value3("Shaders reset to original values", 2)
	end)
	Library:CreateSection(t1.value1, "Color Calibrator", "Right")
	t1.value21 = {
		enabled = false,
		fullbright = false,
		contrast = 0,
		brightness = 0,
		saturation = 0,
		hue = 0,
		opacity = 1
	}
	t1.value22 = t1.value2.Ambient
	t1.value23 = t1.value2.OutdoorAmbient
	t1.value24 = t1.value2.ColorShift_Bottom
	t1.value25 = t1.value2.ColorShift_Top
	t1.value26 = t1.value2.GlobalShadows
	t1.value27 = t1.value2.FogEnd
	t1.value28 = t1.value2.Brightness

	local function v52(p4, p5)
		t1.value2:GetPropertyChangedSignal(p4):Connect(function()
			if t1.value21.fullbright then
				return
			end

			local v53 = p4

			p5(t1.value2[v53])
		end)
	end

	v52("Ambient", function(p6)
		t1.value22 = p6
	end)
	v52("OutdoorAmbient", function(p7)
		t1.value23 = p7
	end)
	v52("ColorShift_Bottom", function(p8)
		t1.value24 = p8
	end)
	v52("ColorShift_Top", function(p9)
		t1.value25 = p9
	end)
	v52("GlobalShadows", function(p10)
		t1.value26 = p10
	end)
	v52("FogEnd", function(p11)
		t1.value27 = p11
	end)
	v52("Brightness", function(p12)
		t1.value28 = p12
	end)
	t1.value29 = "NexVoid_ColorCalibrator"
	t1.value30 = nil

	local function v54()
		local value30 = t1.value30

		if value30 then
			value30 = t1.value30.Parent == t1.value2
		end

		if value30 then
			return t1.value30
		end

		local ColorCorrectionEffect = t1.value2:FindFirstChild(t1.value29)

		if ColorCorrectionEffect then
			return ColorCorrectionEffect
		end

		local function v57()
			ColorCorrectionEffect = Instance.new("ColorCorrectionEffect")
			ColorCorrectionEffect.Name = t1.value29
			ColorCorrectionEffect.Parent = t1.value2
		end

		pcall(v57)

		return ColorCorrectionEffect
	end

	function t1.value31()
		local v58 = v54()

		if not v58 then
			return
		end

		local enabled = t1.value21.enabled

		if v58.Enabled ~= enabled then
			v58.Enabled = enabled
		end

		if not enabled then
			return
		end

		local opacity = t1.value21.opacity
		local v61 = math.clamp(opacity, 0, 1)
		local brightness = t1.value21.brightness
		local value21 = t1.value21
		local brightness2 = brightness * v61
		local contrast = value21.contrast
		local value212 = t1.value21
		local contrast2 = contrast * v61
		local saturation = value212.saturation * v61

		if v58.Brightness ~= brightness2 then
			v58.Brightness = brightness2
		end

		if v58.Contrast ~= contrast2 then
			v58.Contrast = contrast2
		end

		if v58.Saturation ~= saturation then
			v58.Saturation = saturation
		end

		local v69 = (t1.value21.hue % 360 + 360) % 360 / 360
		local hue = t1.value21.hue
		local v71 = math.abs(hue) * 0.0027777777777778
		local v72 = math.clamp(v71, 0, 1)
		local color32 = Color3.fromHSV(v69, v72, 1)
		local color33 = Color3.new(1 + (color32.R - 1) * v61, 1 + (color32.G - 1) * v61, 1 + (color32.B - 1) * v61)

		if v58.TintColor == color33 then
			return
		end

		v58.TintColor = color33
	end

	Library:CreateToggle(t1.value1, "Enable Calibrator", false, function(p13)
		t1.value21.enabled = p13
		t1.value31()
	end)
	t1.value32 = Library:CreateSlider(t1.value1, "Contrast", -100, 100, 0, function(p14)
		t1.value21.contrast = p14 / 100
		t1.value31()
	end)
	t1.value33 = Library:CreateSlider(t1.value1, "Brightness", -100, 100, 0, function(p15)
		t1.value21.brightness = p15 / 100
		t1.value31()
	end)
	t1.value34 = Library:CreateSlider(t1.value1, "Saturation", -100, 300, 0, function(p16)
		t1.value21.saturation = p16 / 100
		t1.value31()
	end)
	t1.value35 = Library:CreateSlider(t1.value1, "Hue Filter", -180, 180, 0, function(p17)
		t1.value21.hue = p17
		t1.value31()
	end)
	t1.value36 = Library:CreateSlider(t1.value1, "Filter Opacity", 0, 100, 100, function(p18)
		t1.value21.opacity = p18 / 100
		t1.value31()
	end)
	Library:CreateButton(t1.value1, "Reset Calibrator", function()
		local value32 = t1.value32

		if value32 then
			value32 = t1.value32.Set
		end

		if value32 then
			t1.value32.Set(0)
		end

		local value33 = t1.value33

		if value33 then
			value33 = t1.value33.Set
		end

		if value33 then
			t1.value33.Set(0)
		end

		local value34 = t1.value34

		if value34 then
			value34 = t1.value34.Set
		end

		if value34 then
			t1.value34.Set(0)
		end

		local value35 = t1.value35

		if value35 then
			value35 = t1.value35.Set
		end

		if value35 then
			t1.value35.Set(0)
		end

		local value36 = t1.value36

		if value36 then
			value36 = t1.value36.Set
		end

		if not value36 then
			t1.value3("Color Calibrator Reset!", 2)

			return
		end

		t1.value36.Set(100)
		t1.value3("Color Calibrator Reset!", 2)
	end)
	Library:CreateSection(t1.value1, "Fog Settings", "Left")
	t1.value37 = false
	t1.value38 = setmetatable({}, {
		__mode = "k"
	})
	t1.value39 = setmetatable({}, {
		__mode = "k"
	})
	t1.value40 = nil

	function t1.value41(p19)
		if not t1.value37 then
			return
		end

		if not t1.value38[p19] then
			t1.value38[p19] = {
				Color = p19.Color,
				Glare = p19.Glare,
				Haze = p19.Haze,
				Decay = p19.Decay,
				Density = p19.Density,
				Offset = p19.Offset
			}
		end

		if p19.Color ~= t1.value5 then
			p19.Color = t1.value5
		end

		if p19.Glare ~= 0 then
			p19.Glare = 0
		end

		if p19.Haze ~= 10 then
			p19.Haze = 10
		end

		if p19.Decay ~= t1.value5 then
			p19.Decay = t1.value5
		end

		if p19.Density ~= 0 then
			p19.Density = 0
		end

		if p19.Offset ~= 0 then
			p19.Offset = 0
		end

		if p19:FindFirstChild("NoFogLock") then
			return
		end

		local Folder = Instance.new("Folder")

		Folder.Name = "NoFogLock"
		Folder.Parent = p19
		p19:GetPropertyChangedSignal("Density"):Connect(function()
			local value37 = t1.value37

			if value37 then
				value37 = p19.Density ~= 0
			end

			if not value37 then
				return
			end

			p19.Density = 0
		end)
	end

	local function v82(p20)
		if not t1.value37 then
			return
		end

		if not t1.value39[p20] then
			t1.value39[p20] = {
				MoonAngularSize = p20.MoonAngularSize,
				StarCount = p20.StarCount
			}
		end

		if p20.MoonAngularSize ~= 10 then
			p20.MoonAngularSize = 10
		end

		if p20.StarCount == 0 then
			return
		end

		p20.StarCount = 0
	end

	Library:CreateToggle(t1.value1, "No fog", false, function(p21)
		t1.value37 = p21

		if p21 then
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")

			if Atmosphere then
				t1.value41(Atmosphere)
			end

			local Sky = t1.value2:FindFirstChildOfClass("Sky")

			if Sky then
				v82(Sky)
			end

			t1.value40 = t1.value2.ChildAdded:Connect(function(child)
				task.defer(function()
					if child:IsA("Atmosphere") then
						t1.value41(child)

						return
					end

					if not child:IsA("Sky") then
						return
					end

					v82(child)
				end)
			end)

			return
		end

		local v85, Parent, Parent2

		if not t1.value40 then
			v111, v112, v113 = pairs(t1.value38)

			while true do
				v113, v85 = v111(v112, v113)

				if not v113 then
					break
				end

				if v113 then
					Parent = v113.Parent
				else
					Parent = v113
				end

				if Parent then
					v113.Color = v85.Color
					v113.Glare = v85.Glare
					v113.Haze = v85.Haze
					v113.Decay = v85.Decay
					v113.Density = v85.Density
					v113.Offset = v85.Offset
				end
			end

			for k, v in pairs(t1.value39) do
				if k then
					Parent2 = k.Parent
				else
					Parent2 = k
				end

				if Parent2 then
					k.MoonAngularSize = v.MoonAngularSize
					k.StarCount = v.StarCount
				end
			end

			table.clear(t1.value38)
			table.clear(t1.value39)

			return
		end

		t1.value40:Disconnect()

		local v90, v91, v92 = pairs(t1.value38)

		while true do
			v92, v85 = v90(v91, v92)

			if not v92 then
				break
			end

			if v92 then
				Parent = v92.Parent
			else
				Parent = v92
			end

			if Parent then
				v92.Color = v85.Color
				v92.Glare = v85.Glare
				v92.Haze = v85.Haze
				v92.Decay = v85.Decay
				v92.Density = v85.Density
				v92.Offset = v85.Offset
			end
		end

		for k, v in pairs(t1.value39) do
			if k then
				Parent2 = k.Parent
			else
				Parent2 = k
			end

			if Parent2 then
				k.MoonAngularSize = v.MoonAngularSize
				k.StarCount = v.StarCount
			end
		end

		table.clear(t1.value38)
		table.clear(t1.value39)
	end)
	t1.value42 = false
	t1.value43 = nil
	t1.value44 = {
		enabled = false,
		color = color3,
		power = 50
	}

	local value13 = t1.value1

	Library.CreateToggle(Library, value13, "Black Fog", false, function(p22)
		t1.value42 = p22

		if p22 then
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")

			if Atmosphere then
				t1.value43 = {
					Color = Atmosphere.Color,
					Glare = Atmosphere.Glare,
					Haze = Atmosphere.Haze,
					Decay = Atmosphere.Decay,
					Density = Atmosphere.Density,
					Offset = Atmosphere.Offset
				}
			else
				t1.value43 = "None"
			end

			task.spawn(function()
				while t1.value42 do
					if not t1.value44.enabled then
						local Atmosphere2 = t1.value2:FindFirstChildOfClass("Atmosphere")

						if not Atmosphere2 then
							Atmosphere2 = Instance.new("Atmosphere")
							Atmosphere2.Parent = t1.value2
						end

						if Atmosphere2.Color ~= t1.value5 then
							Atmosphere2.Color = t1.value5
						end

						if Atmosphere2.Glare ~= 0 then
							Atmosphere2.Glare = 0
						end

						if Atmosphere2.Haze ~= 2.46 then
							Atmosphere2.Haze = 2.46
						end

						if Atmosphere2.Decay ~= t1.value5 then
							Atmosphere2.Decay = t1.value5
						end

						if Atmosphere2.Density ~= 0.75 then
							Atmosphere2.Density = 0.75
						end

						if Atmosphere2.Offset ~= 0 then
							Atmosphere2.Offset = 0
						end
					end

					task.wait(2)
				end
			end)

			return
		end

		local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")

		if t1.value43 == "None" then
			if Atmosphere then
				Atmosphere:Destroy()

				return
			else
				return
			end
		end

		local value43 = t1.value43

		if value43 then
			local value432 = t1.value43

			value43 = type(value432) == "table"
		end

		if not (value43 and Atmosphere) then
			return
		end

		Atmosphere.Color = t1.value43.Color
		Atmosphere.Glare = t1.value43.Glare
		Atmosphere.Haze = t1.value43.Haze
		Atmosphere.Decay = t1.value43.Decay
		Atmosphere.Density = t1.value43.Density
		Atmosphere.Offset = t1.value43.Offset
	end)
	t1.value45 = t1.value2.ExposureCompensation
	t1.value46 = nil
	t1.value47 = 0
	Library:CreateSlider(t1.value1, "Flashlight Intensity", 0, 500, 0, function(p23)
		t1.value47 = p23 / 100

		if t1.value46 then
			t1.value46:Disconnect()
		end

		if p23 > 0 then
			if t1.value2.ExposureCompensation ~= t1.value47 then
				local function v101()
					t1.value2.ExposureCompensation = t1.value47
				end

				pcall(v101)
			end

			t1.value2:GetPropertyChangedSignal("ExposureCompensation"):Connect(function()
				if t1.value2.ExposureCompensation == t1.value47 then
					return
				end

				local function v102()
					t1.value2.ExposureCompensation = t1.value47
				end

				pcall(v102)
			end)
		else
			pcall(function()
				t1.value2.ExposureCompensation = t1.value45
			end)
		end
	end)
	t1.value48 = {}
	t1.value49 = {
		"Ambient",
		"OutdoorAmbient",
		"ColorShift_Bottom",
		"ColorShift_Top",
		"GlobalShadows",
		"FogEnd",
		"Brightness"
	}

	function t1.value50()
		for _, v in ipairs(t1.value48) do
			v:Disconnect()
		end

		table.clear(t1.value48)
	end

	local function v105()
		if t1.value2.Ambient ~= t1.value4 then
			t1.value2.Ambient = t1.value4
		end

		if t1.value2.OutdoorAmbient ~= t1.value4 then
			t1.value2.OutdoorAmbient = t1.value4
		end

		if t1.value2.ColorShift_Bottom ~= t1.value4 then
			t1.value2.ColorShift_Bottom = t1.value4
		end

		if t1.value2.ColorShift_Top ~= t1.value4 then
			t1.value2.ColorShift_Top = t1.value4
		end

		if t1.value2.GlobalShadows ~= false then
			t1.value2.GlobalShadows = false
		end

		if t1.value2.FogEnd ~= 100000 then
			t1.value2.FogEnd = 100000
		end

		if t1.value2.Brightness == 3 then
			return
		end

		t1.value2.Brightness = 3
	end

	Library:CreateToggle(t1.value1, "Enable FullBright", false, function(p24)
		t1.value21.fullbright = p24

		if p24 then
			v105()
			t1.value50()

			for _, v in ipairs(t1.value49) do
				table.insert(t1.value48, t1.value2:GetPropertyChangedSignal(v):Connect(v105))
			end
		else
			t1.value50()
			t1.value2.Ambient = t1.value22
			t1.value2.OutdoorAmbient = t1.value23
			t1.value2.ColorShift_Bottom = t1.value24
			t1.value2.ColorShift_Top = t1.value25
			t1.value2.GlobalShadows = t1.value26
			t1.value2.FogEnd = t1.value27
			t1.value2.Brightness = t1.value28
		end
	end)
	Library:CreateSection(t1.value1, "Another Fog", "Left")
	t1.value51 = nil
	t1.value52 = false
	Library:CreateToggle(t1.value1, "Enable Custom Fog", false, function(p25)
		t1.value44.enabled = p25
		t1.value52 = p25

		if p25 then
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")

			if Atmosphere then
				local Color = Atmosphere.Color
				local Glare = Atmosphere.Glare
				local Haze = Atmosphere.Haze
				local Decay = Atmosphere.Decay
				local Density = Atmosphere.Density
				local Offset = Atmosphere.Offset

				t1.value51 = {
					Color = Color,
					Glare = Glare,
					Haze = Haze,
					Decay = Decay,
					Density = Density,
					Offset = Offset,
					FogColor = t1.value2.FogColor,
					FogEnd = t1.value2.FogEnd
				}
			else
				t1.value51 = {
					FogColor = t1.value2.FogColor,
					FogEnd = t1.value2.FogEnd,
					None = true
				}
			end

			task.spawn(function()
				while t1.value52 do
					local function v115()
						local Atmosphere2 = t1.value2:FindFirstChildOfClass("Atmosphere")

						if not Atmosphere2 then
							Atmosphere2 = Instance.new("Atmosphere")
							Atmosphere2.Parent = t1.value2
						end

						local power = t1.value44.power
						local value44 = t1.value44
						local density = power / 100
						local color = value44.color

						if Atmosphere2.Color ~= color then
							Atmosphere2.Color = color
						end

						if Atmosphere2.Decay ~= color then
							Atmosphere2.Decay = color
						end

						if Atmosphere2.Glare ~= 0 then
							Atmosphere2.Glare = 0
						end

						if Atmosphere2.Haze ~= 2.46 then
							Atmosphere2.Haze = 2.46
						end

						if Atmosphere2.Density ~= density then
							Atmosphere2.Density = density
						end

						if Atmosphere2.Offset ~= 0 then
							Atmosphere2.Offset = 0
						end

						if t1.value2.FogColor ~= color then
							t1.value2.FogColor = color
						end

						local v121 = 100000 - t1.value44.power * 999
						local fogEnd = math.max(100, v121)

						if t1.value2.FogEnd == fogEnd then
							return
						end

						t1.value2.FogEnd = fogEnd
					end

					pcall(v115)
					task.wait(2)
				end
			end)

			return
		end

		if not t1.value51 then
			return
		end

		local function v123()
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")

			if t1.value51.None then
				if not Atmosphere then
					t1.value2.FogColor = t1.value51.FogColor
					t1.value2.FogEnd = t1.value51.FogEnd

					return
				end

				Atmosphere:Destroy()
			else
				if not Atmosphere then
					t1.value2.FogColor = t1.value51.FogColor
					t1.value2.FogEnd = t1.value51.FogEnd

					return
				end

				Atmosphere.Color = t1.value51.Color
				Atmosphere.Glare = t1.value51.Glare
				Atmosphere.Haze = t1.value51.Haze
				Atmosphere.Decay = t1.value51.Decay
				Atmosphere.Density = t1.value51.Density
				Atmosphere.Offset = t1.value51.Offset
			end

			t1.value2.FogColor = t1.value51.FogColor
			t1.value2.FogEnd = t1.value51.FogEnd
		end

		pcall(v123)
	end)
	Library:CreateColorPicker(t1.value1, "Fog Color", color3, function(p26)
		t1.value44.color = p26

		if not t1.value44.enabled then
			return
		end

		pcall(function()
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")
			local density = t1.value44.power / 100
			local color = t1.value44.color

			if Atmosphere then
				if Atmosphere.Color ~= color then
					Atmosphere.Color = color
				end

				if Atmosphere.Decay ~= color then
					Atmosphere.Decay = color
				end

				if Atmosphere.Glare ~= 0 then
					Atmosphere.Glare = 0
				end

				if Atmosphere.Haze ~= 2.46 then
					Atmosphere.Haze = 2.46
				end

				if Atmosphere.Density ~= density then
					Atmosphere.Density = density
				end

				if Atmosphere.Offset ~= 0 then
					Atmosphere.Offset = 0
				end
			end

			if t1.value2.FogColor ~= color then
				t1.value2.FogColor = color
			end

			local v128 = 100000 - t1.value44.power * 999
			local fogEnd = math.max(100, v128)

			if t1.value2.FogEnd == fogEnd then
				return
			end

			t1.value2.FogEnd = fogEnd
		end)
	end)
	Library:CreateSlider(t1.value1, "Fog Power", 0, 100, 50, function(p27)
		t1.value44.power = p27

		if not t1.value44.enabled then
			return
		end

		pcall(function()
			local Atmosphere = t1.value2:FindFirstChildOfClass("Atmosphere")
			local density = t1.value44.power / 100
			local color = t1.value44.color

			if Atmosphere then
				if Atmosphere.Color ~= color then
					Atmosphere.Color = color
				end

				if Atmosphere.Decay ~= color then
					Atmosphere.Decay = color
				end

				if Atmosphere.Glare ~= 0 then
					Atmosphere.Glare = 0
				end

				if Atmosphere.Haze ~= 2.46 then
					Atmosphere.Haze = 2.46
				end

				if Atmosphere.Density ~= density then
					Atmosphere.Density = density
				end

				if Atmosphere.Offset ~= 0 then
					Atmosphere.Offset = 0
				end
			end

			if t1.value2.FogColor ~= color then
				t1.value2.FogColor = color
			end

			local v133 = 100000 - t1.value44.power * 999
			local fogEnd = math.max(100, v133)

			if t1.value2.FogEnd == fogEnd then
				return
			end

			t1.value2.FogEnd = fogEnd
		end)
	end)
	task.defer(function()
		for _ = 1, 20 do
			local v136, v137, v138 = ipairs(t1.value1:GetDescendants())
			local v139 = false

			while true do
				local v140

				v138, v140 = v136(v137, v138)

				if not v138 then
					break
				end

				local isTextLabel = v140:IsA("TextLabel")

				if isTextLabel then
					isTextLabel = v140.Text == "Fog Color"
				end

				if isTextLabel then
					local Parent = v140.Parent
					local isTextButton

					if Parent then
						isTextButton = Parent:IsA("TextButton")
					else
						isTextButton = Parent
					end

					if isTextButton then
						local Parent2 = Parent.Parent
						local isFrame

						if Parent2 then
							isFrame = Parent2:IsA("Frame")
						else
							isFrame = Parent2
						end

						if isFrame then
							Parent2.Size = UDim2.new(1, 0, 0, 140)

							if t1.value6 then
								local GetChildren = Parent2.GetChildren

								for _, v in ipairs(GetChildren(Parent2)) do
									local isFrame2 = v:IsA("Frame")

									if isFrame2 then
										isFrame2 = v ~= Parent
									end

									if isFrame2 then
										local v150, v151, v152 = ipairs(v:GetChildren())
										local t2 = {}

										while true do
											local v154

											v152, v154 = v150(v151, v152)

											if not v152 then
												break
											end

											if v154:IsA("ImageButton") then
												table.insert(t2, v154)
											end
										end

										if #t2 >= 2 then
											local v155 = t2[1]
											local v156 = t2[2]

											if v155.Position.X.Offset <= v156.Position.X.Offset then
												local v157 = v155

												v155 = v156
												v156 = v157
											end

											v156.Size = UDim2.new(0, 110, 0, 90)
											v156.Position = UDim2.new(0, 5, 0, 10)
											v155.Size = UDim2.new(0, 15, 0, 90)
											v155.Position = UDim2.new(0, 122, 0, 10)
										end
									end
								end
							end

							if firesignal then
								pcall(firesignal, Parent.MouseButton1Click)
								v139 = true
							else
								v139 = true
							end

							break
						end
					end
				end
			end

			if v139 then
				return
			end

			task.wait(0.1)
		end
	end)
end
