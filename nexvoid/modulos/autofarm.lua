

local v1269 = function(arg13_1)
    local capturedValues1 = {}
    local v247 = arg13_1.Library
    local v248 = arg13_1.Page
    capturedValues1.value1 = arg13_1.Players
    capturedValues1.value2 = arg13_1.LocalPlayer
    local v251 = arg13_1.Workspace
    capturedValues1.value3 = v251
    v251 = arg13_1.ReplicatedStorage
    capturedValues1.value4 = v251
    v251 = game
    local v250 = v251:GetService("GuiService")
    capturedValues1.value5 = v250
    v250 = game:GetService("TeleportService")
    capturedValues1.value6 = v250
    game:GetService("TweenService")
    v250 = game:GetService("RunService")
    capturedValues1.value7 = v250
    v250 = game:GetService("StarterGui")
    capturedValues1.value8 = v250
    v251 = capturedValues1.value4
    v250 = v251.WaitForChild
    v250 = v250(v251, "RemoteEvent", 1)
    capturedValues1.value9 = v250
    v251 = Vector3.new
    capturedValues1.value10 = v251
    v251 = CFrame.new
    capturedValues1.value11 = v251
    v251 = task.wait
    capturedValues1.value12 = v251
    v251 = task.spawn
    capturedValues1.value13 = v251
    v251 = ipairs
    capturedValues1.value14 = v251
    v251 = pairs
    capturedValues1.value15 = v251
    v251 = math.floor
    capturedValues1.value16 = v251
    capturedValues1.value17 = tick
    v251 = function(arg47_1, arg47_2, arg47_3)
        local v788
        local up80 = arg47_1
        local up79 = arg47_2
        local up81 = arg47_3
        if (not up79) then
            up79 = up80
            up80 = "NexVoid"
            up81 = 3
        else
            v788 = type(up79)
            if (v788 == "number") then
                up81 = up79
                up79 = up80
                up80 = "NexVoid"
            end
        end
        up81 = (up81 or 3)
        capturedValues1.value13(function()
            local v416 = function()
                capturedValues1.value8:SetCore("SendNotification", {["Title"] = up80, ["Text"] = up79, ["Duration"] = up81})
                return
            end
            pcall(v416)

            return
        end)

        return
    end
    capturedValues1.value18 = v251
    capturedValues1.value19 = false
    capturedValues1.value20 = nil
    capturedValues1.value21 = nil
    capturedValues1.value22 = nil
    capturedValues1.value23 = nil
    capturedValues1.value24 = nil
    capturedValues1.value25 = false
    capturedValues1.value26 = false
    capturedValues1.value27 = false
    capturedValues1.value28 = nil
    capturedValues1.value29 = nil
    capturedValues1.value30 = {["FarmTweenSpeed"] = 22, ["WaitTweenFast"] = 8, ["TriggerPrioritization"] = 1, ["CampHackOut"] = 15, ["CampEscapeOut"] = 20, ["CampTweenAnimOut"] = 30, ["HideBeastNearDist"] = 35, ["TriggerUnCampOut"] = 5, ["ExitCancel"] = false, ["AntiPCError"] = true, ["HideBeastNear"] = true}
    capturedValues1.value31 = false
    capturedValues1.value32 = false
    capturedValues1.value33 = false
    capturedValues1.value34 = false
    capturedValues1.value35 = 0
    capturedValues1.value36 = 0
    capturedValues1.value37 = nil
    capturedValues1.value38 = nil
    capturedValues1.value39 = nil
    capturedValues1.value40 = nil
    capturedValues1.value41 = {}
    capturedValues1.value42 = nil
    capturedValues1.value43 = 0
    capturedValues1.value44 = false
    capturedValues1.value45 = nil
    capturedValues1.value46 = false
    local up36 = function()
        local v795
        if capturedValues1.value40 then
            v795 = function()
                capturedValues1.value40:Destroy()
                return
            end
            pcall(v795)
            capturedValues1.value40 = nil
        end
        return
    end
    local up54 = function(arg49_1)
        local v801, v807
        local v798 = arg49_1
        if not (arg49_1) then
            v798 = capturedValues1.value2
        end
        local v800 = v798.Character
        v798 = v800
        if v800 then
            v807 = v800:FindFirstChild("Humanoid")
            v801 = v807
            if v807 then
                v801 = (v800:FindFirstChild("HumanoidRootPart"))
            end
            v798 = v801
        end
        return v798
    end
    v251 = function()
        local v814
        local v810 = up54()
        if v810 then
            v814 = (workspace:FindFirstChild("LobbySpawnPad"))
            if v814 then
                capturedValues1.value2.Character:PivotTo((v814.CFrame * (capturedValues1.value11(0, 3, 0))))
            end
        end
        return
    end
    capturedValues1.value47 = v251
    local up60 = function()
        local v819
        local v823 = (workspace:FindFirstChild("LobbySpawnPad"))
        local v818 = v823 and (up54())
        if v818 then
            v819 = ((capturedValues1.value2.Character.HumanoidRootPart .Position - v823.Position).Magnitude < 150)

            return v819
        else
            v819 = false
            return v819
        end
    end
    local up52 = function()
        capturedValues1.value39 = nil
        capturedValues1.value38 = nil
        capturedValues1.value33 = false
        capturedValues1.value35 = 0
        up36()
        local v834 = up54()
        local v831 = v834
        if v834 then
            v831 = capturedValues1.value2.Character.HumanoidRootPart.Anchored
        end
        if v831 then
            v831 = capturedValues1.value2.Character.HumanoidRootPart
            v831.Anchored = false
        end
        return
    end
    local up44 = function()
        local v841, v842, v843, v844, v847, v849
        local v846 = (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule"))
        if v846 then
            v843 = (v846:FindFirstChild("IsBeast"))
            v842 = v843 and v843.Value
            if v842 then
                v841 = true
                return v841
            end
        end
        v843 = capturedValues1.value2.Character
        v842 = v843
        if v843 then
            v847 = v843:FindFirstChild("BeastHammer")
            v844 = v847
            if not (v847) then
                v849 = v843:FindFirstChild("Hammer")
                v847 = v849
                if not (v849) then
                    v847 = (v843:FindFirstChild("Weapon"))
                end
                v844 = v847
            end
            v842 = v844
        end
        if v842 then
            v841 = true
            return v841
        else
            v841 = false
            return v841
        end
    end
    v251 = function(arg54_1)
        local v861, v862, v863
        local v854 = arg54_1.Position
        local v859 = capturedValues1.value14
        local v856 = capturedValues1.value1
        local v860 = v856.GetPlayers
        for v857, v860 in v859(v860(v856)) do
            v861 = capturedValues1.value2
            v863 = (v860 ~= v861) and (up54(v860))
            if v863 then
                v862 = (v860.Character.HumanoidRootPart.Position - v854)
                if (v862["Magnitude"] < 3.5) then
                    v859 = true
                    return v859
                end
            end
        end
        return false
    end
    capturedValues1.value48 = v251
    local up50 = function()
        local v870, v872, v873, v874, v876, v878
        local v875 = (capturedValues1.value4:FindFirstChild("IsGameActive"))
        local v871 = v875 and (not v875.Value)
        if v871 then
            v870 = false
            return v870
        else
            v872 = (capturedValues1.value4:FindFirstChild("GameStatus"))
            if v872 then
                v871 = string.lower(v872.Value)
                v876 = string
                v873 = v871
                v876 = v876.find(v873, "intermission")
                v871 = v876
                if not (v876) then
                    v878 = string.find(v873, "game over")
                    v874 = v878
                    if not (v878) then
                        v874 = (string.find(v873, "lobby"))
                    end
                    v871 = v874
                end
                if v871 then
                    v870 = false
                    return v870
                end
            end
            v870 = true
            return v870
        end
    end
    local up18 = function(arg56_1)
        local v884, v886, v887, v888, v889, v890, v891, v893
        local v883 = arg56_1
        local v885 = up54(v883)
        if (not v885) then
            v886 = false
            return v886
        else
            v885 = (v883:FindFirstChild("TempPlayerStatsModule"))
            if v885 then
                v887 = (v885:FindFirstChild("IsBeast"))
                v884 = v887 and v887.Value
                if v884 then
                    v886 = true
                    return v886
                end
            end
            v887 = v883.Character
            v884 = v887
            if v887 then
                v890 = v887:FindFirstChild("BeastHammer")
                v888 = v890
                if not (v890) then
                    v888 = (v887:FindFirstChild("Hammer")) or (v887:FindFirstChild("Weapon"))
                end
                v884 = v888
            end
            if v884 then
                v886 = true
                return v886
            else
                v888 = (v883:FindFirstChild("Backpack"))
                v884 = v888
                if v888 then
                    v891 = v888:FindFirstChild("BeastHammer")
                    v889 = v891
                    if not (v891) then
                        v893 = v888:FindFirstChild("Hammer")
                        v891 = v893
                        if not (v893) then
                            v891 = (v888:FindFirstChild("Weapon"))
                        end
                        v889 = v891
                    end
                    v884 = v889
                end
                if v884 then
                    v886 = true
                    return v886
                else
                    v886 = false
                    return v886
                end
            end
        end
    end
    local up22 = function()
        local v900, v904, v906, v907, v908
        local v898 = capturedValues1.value39
        local v899 = v898
        if v898 then
            v899 = (capturedValues1.value39.Parent == capturedValues1.value1) and (up18(capturedValues1.value39))
        end
        if v899 then
            v907 = capturedValues1.value39
            return v907
        else
            v907 = capturedValues1.value14
            v906 = capturedValues1.value1
            v900 = v906.GetPlayers
            for v908, v900 in v907(v900(v906)) do
                v904 = up18(v900)
                if v904 then
                    v907 = v900
                    return v900
                end
            end
            return nil
        end
    end
    local up35 = function(arg58_1)
        local v910, v915, v916
        local v909 = arg58_1
        if (not v909) then
            v910 = nil
            return v910
        else
            v915 = v909:FindFirstChild("HumanoidRootPart")
            v916 = v915
            if not (v915) then
                v916 = (v909:FindFirstChild("Torso")) or (v909:FindFirstChild("UpperTorso"))
            end
            return v916
        end
    end
    local up2 = function()
        local v928, v930
        local v919 = capturedValues1.value15
        local v920 = capturedValues1.value3
        local v921 = v920.GetChildren
        for v924, v921 in v919(v921(v920)) do
            v928 = v921:FindFirstChild("FreezePod")
            v930 = v928
            if not (v928) then
                v930 = (v921:FindFirstChild("ComputerTable"))
            end
            if v930 then
                return v921
            end
        end
        return nil
    end
    local up14 = function(arg60_1)
        local v932, v936, v938, v939, v940, v942, v943
        local v931 = arg60_1
        if (not v931) then
            v932 = nil
            return v932
        else
            for v936, v938 in capturedValues1.value15(v931:GetChildren()) do
                v943 = v938.Name
                if (v943 == "FreezePod") then
                    v943 = (v938:FindFirstChild("PodTrigger", true))
                    if v943 then
                        v942 = (v943:FindFirstChild("CapturedTorso"))
                        v939 = (v943:FindFirstChild("Event"))
                        v940 = v942
                        if v942 then
                            v940 = v939 and (v942.Value == nil)
                        end
                        if v940 then
                            return v939
                        end
                    end
                end
            end
            v932 = nil
            return v932
        end
    end
    v251 = function()
        local capturedValues2 = {}
        local v962
        capturedValues2.value1 = false
        local v951 = function()
            local v168, v169, v171, v172
            if capturedValues1.value42 then
                v172 = (capturedValues1.value42:FindFirstChild("Ragdoll"))
                v168 = v172 and v172.Value
                if v168 then
                    capturedValues2.value1 = true
                    return false
                else
                    v169 = capturedValues1.value42:FindFirstChild("Health")
                    v171 = v169 and (v169.Value <= 0)
                    v168 = v171
                    if not (v171) then
                        v168 = capturedValues1.value42.IsBeast.Value
                    end
                    if v168 then
                        return false
                    end
                end
            end
            return up54()
        end
        capturedValues2.value2 = v951
        v951 = function()
            local v184
            local v180 = capturedValues1.value31
            local v181 = v180
            if v180 then
                v184 = (not (up44()))
                v180 = v184
                if v184 then
                    v180 = (up50()) and (capturedValues2.value2())
                end
                v181 = v180
            end
            return v181
        end
        capturedValues2.value3 = v951
        local v952 = function()
            local v189, v190, v191, v193, v194, v199
            local v186 = {}
            v186 = {["Computers"] = v186, ["ExitDoors"] = {}}
            local v187 = capturedValues1.value4:FindFirstChild("CurrentMap")
            local v188 = v187 and v187.Value
            if v188 then
                v190 = (v188:GetChildren())
                v193 = (#v190)
                v194 = 1
                for v191 = 1, v193, v194 do
                    v199 = v190[v191]
                    v189 = v199.Name
                    if (v189 == "ComputerTable") then
                        table.insert(v186.Computers, v199)
                    else
                        v189 = v199.Name
                        if (v189 == "ExitDoor") then
                            table.insert(v186.ExitDoors, v199)
                        end
                    end
                end
            end
            return v186
        end
        capturedValues2.value4 = (v952())
        local v953 = 0
        while true do
            v962 = ((#capturedValues2.value4.Computers) == 0) and (v953 < 10)
            if v962 then
                capturedValues1.value12(0.5)
                capturedValues2.value4 = (v952())
                v953 = (v953 + 1)
            else
                break
            end
        end
        local v961 = function(arg38_1)
            local v622, v625, v626, v627, v628, v629, v631, v636, v638
            local v621 = arg38_1
            local v623 = up54()
            if (not v623) then
                return
            else
                v623 = capturedValues1.value2.Character.HumanoidRootPart
                v623.Anchored = true
                while true do
                    v622 = (up54()) and (capturedValues2.value3())
                    if v622 then
                        v625 = v623.Position
                        v626 = (v621.Position - v625)
                        v627 = v626.Magnitude
                        if not ((v627 < 1.5))then
                            v628 = (capturedValues1.value7.Heartbeat:Wait())
                            v631 = (capturedValues1.value30.FarmTweenSpeed * v628)
                            if (v631 > v627) then
                                v631 = v627
                            end
                            v638 = (v625 + (v626.Unit * v631))
                            v636 = ((capturedValues1.value11(v638)) * v623.CFrame.Rotation)
                            v623.CFrame = v636
                            continue
                        end
                    end
                    break
                end
                v629 = up54()
                if v629 then
                    v623.Anchored = false
                    v629 = ((capturedValues1.value11(v621.Position)) * v623.CFrame.Rotation)
                    v623.CFrame = v629
                end
                capturedValues1.value34 = false
                return
            end
        end
        capturedValues2.value5 = v961
        capturedValues2.value6 = nil
        capturedValues2.value7 = false
        capturedValues2.value8 = nil
        capturedValues2.value9 = {}
        local v957 = function(arg39_1)
            local v643, v647, v648, v649, v650, v651, v652, v653, v654, v656, v657, v658, v659, v660, v661, v662
            local v663, v664, v665, v666, v667
            local v668, v669, v670, v672, v673, v674, v676
            local v644 = capturedValues2.value3()
            local v645 = arg39_1
            local v646 = v644
            if v644 then
                v646 = (v645.Screen.BrickColor ~= (BrickColor.new("Dark green"))) and (not capturedValues2.value7)
            end
            if v646 then
                capturedValues2.value7 = true
                v643 = capturedValues1.value30.TriggerPrioritization
                if (v643 == 1) then
                    v654 = v645:FindFirstChild("ComputerTrigger1")
                    v652 = v645:FindFirstChild("ComputerTrigger2")
                    v647 = v645.FindFirstChild
                    v644 = {v654, v652, v647(v645, "ComputerTrigger3")}
                else
                    if (v643 == 2) then
                        v652 = v645:FindFirstChild("ComputerTrigger2")
                        v651 = v645:FindFirstChild("ComputerTrigger3")
                        v648 = v645.FindFirstChild
                        v644 = {v652, v651, v648(v645, "ComputerTrigger1")}
                    else
                        v651 = v645:FindFirstChild("ComputerTrigger3")
                        v650 = v645:FindFirstChild("ComputerTrigger1")
                        v649 = v645.FindFirstChild
                        v644 = {v651, v650, v649(v645, "ComputerTrigger2")}
                    end
                end
                v647 = (#v644)
                v648 = 1
                for v650 = 1, v647, v648 do
                    v653 = v644[v650]
                    v656 = v653
                    if v653 then
                        v658 = capturedValues2.value3()
                        v659 = v658
                        if v658 then
                            v666 = (v653.ActionSign.Value == 20)
                            v657 = v666
                            if v666 then
                                v664 = (not (capturedValues1.value48(v653)))
                                v666 = v664
                                if v664 then
                                    v666 = (v645.Screen.BrickColor ~= (BrickColor.new("Dark green"))) and (capturedValues2.value8 == v645)
                                end
                                v657 = v666
                            end
                            v659 = v657
                        end
                        v656 = v659
                    end
                    if v656 then
                        v656 = (capturedValues1.value2.Character.HumanoidRootPart.Position - v653.Position).Magnitude
                        v659 = (v656 / capturedValues1.value30.FarmTweenSpeed)
                        v657 = capturedValues1.value30
                        if (v659 < v657["WaitTweenFast"]) then
                            v673 = (v656 / capturedValues1.value30.FarmTweenSpeed)
                            capturedValues1.value12((capturedValues1.value30.WaitTweenFast - v673))
                        end
                        v672 = (not (capturedValues2.value3()))
                        if not (v672) then
                            v666 = capturedValues1.value33
                            if not ((v666 == false))then
                                v658 = (capturedValues1.value35 >= capturedValues1.value30.CampHackOut)
                            end
                        end
                        while true do
                            capturedValues1.value12()
                            v672 = (not (capturedValues2.value3()))
                            v673 = v672
                            if not (v672) then
                                v658 = (capturedValues1.value33 == false)
                                v672 = v658
                                if not (v658) then
                                    v672 = (capturedValues1.value35 >= capturedValues1.value30.CampHackOut)
                                end
                                v673 = v672
                            end
                            if v673 then
                                break
                            end
                        end
                        capturedValues1.value18("Objective", "Moving to computer table", 2.5)
                        capturedValues2.value5(v653)
                        v659 = v645.Screen.BrickColor
                        v657 = BrickColor.new("Dark green")
                        if (v659 == v657) then
                            capturedValues2.value6 = nil
                            capturedValues2.value7 = false
                            return
                        else
                            v658 = capturedValues2.value3()
                            if (not v658) then
                                capturedValues2.value6 = nil
                                capturedValues2.value7 = false
                                return
                            else
                                v665 = (v653.ActionSign.Value ~= 20)
                                v658 = v665
                                if not (v665) then
                                    v658 = (capturedValues2.value8 ~= v645) and (capturedValues2.value8 ~= nil)
                                end
                                if v658 then
                                    continue
                                else
                                    v664 = (not (capturedValues2.value3()))
                                    v658 = 0
                                    if not (v664) then
                                        v661 = v645.Screen.BrickColor
                                        v670 = BrickColor.new("Dark green")
                                        if not ((v661 == v670))then
                                            if (capturedValues2.value8 ~= v645) then
                                                v662 = (capturedValues2.value8 ~= nil)
                                            end
                                        end
                                    end
                                    while true do
                                        capturedValues1.value12()
                                        v665 = capturedValues1.value48(v653)
                                        if v665 then
                                            capturedValues1.value18("Keyboard Occupied", "Another player took this spot.", 3)

                                            break
                                        else
                                            v663 = capturedValues2.value3()
                                            v666 = v663
                                            if v663 then
                                                v660 = (not capturedValues1.value33)
                                                v664 = v660
                                                if v660 then
                                                    v664 = (capturedValues1.value42.CurrentAnimation.Value ~= "Typing")
                                                end
                                                v666 = v664
                                            end
                                            if v666 then
                                                v658 = (v658 + 1)
                                                v664 = up54()
                                                if v664 then
                                                    v664 = capturedValues1.value2.Character.HumanoidRootPart:FindFirstChild("KSAttachmentZVel")
                                                    if v664 then
                                                        v665 = capturedValues1.value2.Character.HumanoidRootPart.KSAttachmentZVel.LinearVelocity
                                                        v665.Enabled = false
                                                    end
                                                    v665 = capturedValues1.value2.Character
                                                    v663 = v653.CFrame
                                                    v665:PivotTo(v663)
                                                end
                                                capturedValues1.value4.RemoteEvent:FireServer("Input", "Trigger", true, v653.Event)
                                                capturedValues1.value12(.1)
                                                capturedValues1.value4.RemoteEvent:FireServer("Input", "Action", true)
                                                capturedValues1.value12(.4)
                                                v660 = up54()
                                                v665 = v660
                                                if v660 then
                                                    v665 = (capturedValues1.value2.Character.HumanoidRootPart:FindFirstChild("KSAttachmentZVel"))
                                                end
                                                if v665 then
                                                    v665 = capturedValues1.value2.Character.HumanoidRootPart.KSAttachmentZVel.LinearVelocity
                                                    v665.Enabled = true
                                                end
                                            else
                                                v665 = (capturedValues2.value3()) and (not capturedValues1.value33)
                                                if v665 then
                                                    if (capturedValues2.value6 ~= v645) then
                                                        capturedValues1.value18("Hacking", "Successfully started hacking", 3)
                                                    end
                                                    capturedValues2.value6 = v645
                                                    v663 = capturedValues1.value25
                                                    v658 = 0
                                                    if v663 then
                                                        v660 = up54()
                                                        if v660 then
                                                            v663 = capturedValues1.value2.Character
                                                            v662 = v653.CFrame
                                                            v663:PivotTo((v662 * (capturedValues1.value11(0, 50, 0))))
                                                        end
                                                        v663 = capturedValues1.value4.RemoteEvent
                                                        v667 = v653.Event
                                                        v663:FireServer("Input", "Trigger", true, v667)
                                                        capturedValues1.value4.RemoteEvent:FireServer("Input", "Action", true)
                                                    end
                                                    v660 = capturedValues1.value30
                                                    if v660["AntiPCError"] then
                                                        capturedValues1.value4.RemoteEvent:FireServer("SetPlayerMinigameResult", true)
                                                    end
                                                end
                                            end
                                            v660 = capturedValues1.value35
                                            v662 = capturedValues1.value30
                                            if (v660 >= v662["CampHackOut"]) then
                                                v663 = capturedValues2.value9
                                                v661 = capturedValues1.value16(((capturedValues1.value17()) * 1000))
                                                v663[v661] = v645
                                                up36()
                                                capturedValues1.value33 = false
                                                capturedValues2.value7 = false
                                                capturedValues2.value6 = nil
                                                capturedValues1.value35 = 0
                                                capturedValues1.value37 = nil
                                                v668 = up54()
                                                if v668 then
                                                    v667 = capturedValues1.value2.Character.HumanoidRootPart
                                                    v667.Anchored = false
                                                end
                                                capturedValues1.value18("Fleeing", "The Beast is camping. Changing computers.", 3.5)

                                                return
                                            else
                                                v669 = (v658 >= 15)
                                                v667 = v669
                                                if v669 then
                                                    v667 = (capturedValues2.value3()) and (not capturedValues1.value33)
                                                end
                                                if v667 then
                                                    capturedValues2.value6 = nil
                                                    capturedValues2.value7 = false
                                                    capturedValues1.value18("Error", "Failed to start hacking. Re-trying.", 3)

                                                    return
                                                else
                                                    v674 = (not (capturedValues2.value3()))
                                                    v669 = v674
                                                    if not (v674) then
                                                        v676 = (v645.Screen.BrickColor == (BrickColor.new("Dark green")))
                                                        v674 = v676
                                                        if not (v676) then
                                                            v674 = (capturedValues2.value8 ~= v645) and (capturedValues2.value8 ~= nil)
                                                        end
                                                        v669 = v674
                                                    end
                                                    if v669 then
                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
                capturedValues2.value6 = nil
                capturedValues2.value7 = false
            end
            return
        end
        capturedValues2.value6 = nil
        capturedValues2.value10 = v957
        local v963 = function()
            local v691, v694, v696, v697, v699, v701
            local v685 = false
            local up76 = 4
            local v684 = math.huge
            local up77 = v684
            local up78 = 0
            v684 = coroutine.wrap
            local v688 = function()
                local v735, v736, v737, v738, v739, v743, v744, v745, v746, v747, v748, v749, v750, v751, v752, v753
                local v754, v755, v756, v757, v758
                local v760, v770, v771, v772
                while true do
                    v735 = capturedValues2.value3()
                    if not v735 then
                        break
                    end
                    capturedValues1.value12(.2)
                    if capturedValues2.value6 then
                        capturedValues2.value8 = capturedValues2.value6
                    else
                        up78 = 0
                        up76 = 4
                        up77 = math.huge
                        v737 = capturedValues2.value8
                        v736 = v737
                        if v737 then
                            v736 = (capturedValues2.value8.Screen.BrickColor == (BrickColor.new("Dark green")))
                        end
                        if v736 then
                            capturedValues1.value18("Completed", "Computer fully hacked!", 3)
                            capturedValues2.value8 = nil
                        end
                        v747 = (up22())
                        v748 = ((capturedValues1.value17()) * 1000)
                        v738 = (#capturedValues2.value4.Computers )
                        v739 = 1
                        for v737 = 1, v738, v739 do
                            v746 = capturedValues2.value4.Computers[v737]
                            v743 = v746:FindFirstChild("ComputerTrigger3")
                            v744 = nil
                            v745 = capturedValues1.value15
                            v752 = capturedValues2.value9
                            for v751, v752 in v745(v752) do
                                v753 = v743
                                v745 = v751
                                if v743 then
                                    v754 = v747
                                    if v747 then
                                        v756 = up54(v747)
                                        v757 = v756
                                        if v756 then
                                            v758 = (v752 == v746)
                                            v755 = v758
                                            if v758 then
                                                v760 = ((v748 - v745) > 5000)
                                                v758 = v760
                                                if v760 then
                                                    v758 = ((v743.Position - v747.Character.HumanoidRootPart .Position).Magnitude > (capturedValues1.value30.HideBeastNearDist + 10))
                                                end
                                                v755 = v758
                                            end
                                            v757 = v755
                                        end
                                        v754 = v757
                                    end
                                    v753 = v754
                                end
                                if v753 then
                                    v753 = capturedValues2.value9
                                    v753[v745] = nil
                                else
                                    if (v752 == v746) then
                                        v744 = v752
                                    end
                                end
                            end
                            v749 = v746.Screen.BrickColor
                            v751 = BrickColor.new("Dark green")
                            if (v749 ~= v751) then
                                up78 = (up78 + 1)
                            end
                            v752 = v746.Screen.BrickColor
                            v770 = BrickColor.new
                            v751 = (v752 ~= (v770("Dark green")))
                            v749 = v751
                            if v751 then
                                v751 = (not v744) and (up54())
                                v749 = v751
                            end
                            if v749 then
                                v750 = v746:FindFirstChild("ComputerTrigger3")
                                v751 = v746:FindFirstChild("ComputerTrigger2")
                                v754 = v746.FindFirstChild
                                v749 = {v750, v751, v754(v746, "ComputerTrigger1")}
                                v750 = (v749[1].Position - capturedValues1.value2.Character.HumanoidRootPart.Position ).Magnitude
                                v754 = (#v749)
                                v751 = 3
                                v771 = 1
                                for v770 = 1, v754, v771 do
                                    v772 = v749[v770]
                                    v755 = v772
                                    if v772 then
                                        v755 = (v772.ActionSign.Value ~= 20)
                                    end
                                    if v755 then
                                        v751 = (v751 - 1)
                                    end
                                end
                                v752 = (v746 == capturedValues2.value6) and (v751 >= 1)
                                if v752 then
                                    v751 = (v751 + 1)
                                else
                                    if (v751 < 1) then
                                        v751 = -1
                                    end
                                end
                                v754 = (v751 >= 1) or (v751 == -1) and (v751 <= up76)
                                if v754 then
                                    v754 = (v751 == up76) and (v750 > up77)
                                    if v754 then
                                        continue
                                    else
                                        capturedValues2.value8 = v746
                                        up76 = v751
                                        up77 = v750
                                    end
                                end
                            end
                        end
                    end
                end
                return
            end
            v684(v688)()
            local v686 = ((not (capturedValues2.value3())) or v685)
            while true do
                capturedValues1.value12(0.5)
                v688 = capturedValues2.value8
                v686 = v688 and (not capturedValues2.value7)
                if v686 then
                    capturedValues2.value10(capturedValues2.value8)
                else
                    if (up78 < 1) then
                        v685 = true
                    end
                end
                v686 = ((not (capturedValues2.value3())) or v685)
                if v686 then
                    break
                end
            end
            local v689 = (not (capturedValues2.value3()))
            v686 = v689
            if not (v689) then
                v686 = capturedValues1.value30.ExitCancel
            end
            if v686 then
                return
            else
                capturedValues1.value18("Escape", "Heading to exit doors.", 4)
                v686 = (not (capturedValues2.value3()))
                while true do
                    capturedValues1.value12(0.5)
                    v689 = (#capturedValues2.value4.ExitDoors )
                    v691 = 1
                    for v688 = 1, v689, v691 do
                        v694 = capturedValues2.value4.ExitDoors[v688]
                        v699 = capturedValues2.value3()
                        if not ((not v699))then
                            v699 = (not (capturedValues2.value3()))
                            if not (v699) then
                                v697 = (capturedValues1.value33 == false)
                                if not (v697) then
                                    v699 = (capturedValues1.value35 >= capturedValues1.value30.CampEscapeOut)
                                end
                            end
                            while true do
                                capturedValues1.value12(0.5)
                                v699 = (not (capturedValues2.value3()))
                                v686 = v699
                                if not (v699) then
                                    v697 = (capturedValues1.value33 == false)
                                    v699 = v697
                                    if not (v697) then
                                        v699 = (capturedValues1.value35 >= capturedValues1.value30.CampEscapeOut)
                                    end
                                    v686 = v699
                                end
                                if v686 then
                                    break
                                end
                            end
                            v686 = v694:FindFirstChild("ExitDoorTrigger")
                            if v686 then
                                capturedValues2.value5(v694.ExitDoorTrigger)
                                v699 = (not (capturedValues2.value3()))
                                if not (v699) then
                                    v697 = (not (v694:FindFirstChild("ExitDoorTrigger")))
                                    if not (v697) then
                                        v699 = (capturedValues1.value35 >= capturedValues1.value30.CampEscapeOut)
                                    end
                                end
                                while true do
                                    capturedValues1.value12()
                                    v699 = v694:FindFirstChild("ExitDoorTrigger")
                                    v686 = v699
                                    if v699 then
                                        v697 = (v694.ExitDoorTrigger.ActionSign.Value ~= 0)
                                        v699 = v697
                                        if v697 then
                                            v699 = (not capturedValues1.value33) and (up54())
                                        end
                                        v686 = v699
                                    end
                                    if v686 then
                                        v686 = capturedValues1.value2.Character
                                        v696 = v694.ExitDoorTrigger.CFrame
                                        v697 = capturedValues1.value11
                                        v701 = v694.ExitDoorTrigger.Size
                                        v686:PivotTo((v696 * (v697(0, (v701.Y / 2), 0))))
                                        capturedValues1.value4.RemoteEvent:FireServer("Input", "Trigger", true, v694.ExitDoorTrigger.Event )
                                        capturedValues1.value4.RemoteEvent:FireServer("Input", "Action", true)
                                        capturedValues1.value12(0.5)
                                    end
                                    v699 = (not (capturedValues2.value3()))
                                    v686 = v699
                                    if not (v699) then
                                        v697 = (not (v694:FindFirstChild("ExitDoorTrigger")))
                                        v699 = v697
                                        if not (v697) then
                                            v699 = (capturedValues1.value35 >= capturedValues1.value30.CampEscapeOut)
                                        end
                                        v686 = v699
                                    end
                                    if v686 then
                                        break
                                    end
                                end
                                v686 = (capturedValues1.value35 >= capturedValues1.value30.CampEscapeOut) and (up54())
                                if v686 then
                                    up36()
                                    v686 = capturedValues1.value2.Character.HumanoidRootPart
                                    v686.Anchored = false
                                    capturedValues1.value33 = false
                                    capturedValues1.value35 = 0
                                    capturedValues1.value37 = nil
                                    continue
                                end
                            end
                            v697 = capturedValues2.value3()
                            if v697 then
                                capturedValues1.value12(0.5)
                                v696 = v694:FindFirstChild("ExitArea")
                                if v696 then
                                    capturedValues1.value18("Escape", "Escaping...", 3)
                                    capturedValues2.value5(v694.ExitArea)
                                end
                            end
                        end
                    end
                    v691 = capturedValues2.value3()
                    if (not v691) then
                        break
                    end
                end
                return
            end
        end
        capturedValues2.value11 = v963
        local v964 = coroutine.create(function()
            local v711 = (capturedValues2.value2()) and (not capturedValues1.value32)
            if v711 then
                capturedValues1.value18("Auto Farm", "NexVoid Farm initiated successfully.", 3)
                capturedValues2.value11()
                if (not capturedValues2.value1) then
                    capturedValues1.value12(1)
                    capturedValues1.value47()
                end
                capturedValues1.value32 = false
            end
            return
        end)
        coroutine.resume(v964)
        table.insert(capturedValues1.value41, v964)

        return
    end
    capturedValues1.value49 = v251
    v251 = function()
        local v972
        if capturedValues1.value46 then
            return
        else
            v972 = function()
                local v368, v369, v370, v371, v372, v374, v375, v376, v377, v378, v379, v380, v381, v383, v384, v385
                local v386, v387, v388, v389, v390, v391
                local v392, v393, v394, v395, v397
                while true do
                    v368 = capturedValues1.value31
                    v369 = v368
                    if not (v368) then
                        v369 = getgenv().NexVoidLigado
                    end
                    if v369 then
                        v368 = (capturedValues1.value12(.1))
                        v370 = up54()
                        if (not v370) then
                            up36()
                        end
                        v372 = capturedValues1.value31
                        v370 = v372
                        if not (v372) then
                            v370 = getgenv().NexVoidLigado
                        end
                        v369 = v370 and (up44())
                        if v369 then
                            v369, v370, v371 = capturedValues1.value15(capturedValues1.value41)
                            v372 = v369
                            while true do
                                v371, v374 = v372(v370, v371)
                                if not v371 then
                                    break
                                end
                                local up73 = v374
                                v377 = function()
                                    coroutine.close(up73)
                                    return
                                end
                                pcall(v377)
                                v375 = capturedValues1.value41
                                v375[v371] = nil
                            end
                            capturedValues1.value32 = false
                            up36()
                            v371 = up54()
                            if v371 then
                                v370 = capturedValues1.value2.Character.HumanoidRootPart
                                v370.Anchored = false
                            end
                            v372 = function()
                                local v211
                                local v208 = capturedValues1.value2:FindFirstChild("PlayerGui")
                                local v209 = v208
                                if v208 then
                                    v209 = (capturedValues1.value2.PlayerGui:FindFirstChild("SimpleAutoFarmGUI"))
                                end
                                if v209 then
                                    v211 = capturedValues1.value2.PlayerGui.SimpleAutoFarmGUI.MainFrame.StatusLabel
                                    v211.Text = "Status: Paused (Beast Round)"
                                end
                                return
                            end
                            pcall(v372)
                        else
                            v378 = capturedValues1.value31
                            v376 = v378
                            if not (v378) then
                                v376 = getgenv().NexVoidLigado
                            end
                            v372 = (not v376) or (not (up50()))
                            if v372 then
                                up52()
                                v374 = capturedValues1.value31
                                v372 = v374
                                if not (v374) then
                                    v372 = getgenv().NexVoidLigado
                                end
                                if v372 then
                                    if (not capturedValues1.value44) then
                                        capturedValues1.value18("Lobby State", "Waiting for the game match to start...", 5)
                                        capturedValues1.value44 = true
                                    end
                                end
                            else
                                if capturedValues1.value44 then
                                    capturedValues1.value44 = false
                                end
                                capturedValues1.value42 = (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule"))
                                capturedValues1.value38 = (up22())
                                v379 = capturedValues1.value27
                                v374 = v379
                                if v379 then
                                    v381 = capturedValues1.value30.HideBeastNear
                                    v379 = v381
                                    if v381 then
                                        v384 = up54()
                                        v381 = v384
                                        if v384 then
                                            v385 = capturedValues1.value42
                                            v383 = v385
                                            if v385 then
                                                v383 = (not capturedValues1.value42.IsBeast.Value)
                                            end
                                            v381 = v383
                                        end
                                        v379 = v381
                                    end
                                    v374 = v379
                                end
                                if v374 then
                                    v374 = (capturedValues1.value38 == nil) or (not (up54(capturedValues1.value38)))
                                    if v374 then
                                        if capturedValues1.value33 then
                                            capturedValues1.value33 = false
                                            capturedValues1.value35 = 0
                                            up36()
                                            v380 = up54()
                                            if v380 then
                                                v379 = capturedValues1.value2.Character.HumanoidRootPart
                                                v379.Anchored = false
                                                if capturedValues1.value37 then
                                                    v379 = capturedValues1.value2.Character
                                                    v381 = capturedValues1.value37
                                                    v379:PivotTo(v381)
                                                end
                                            end
                                            capturedValues1.value37 = nil
                                            capturedValues1.value18("Beast Gone", "Resuming.", 3)
                                        end
                                    else
                                        v380 = capturedValues1.value2.Character.HumanoidRootPart.Position
                                        v381 = capturedValues1.value38.Character.HumanoidRootPart.Position
                                        v386 = capturedValues1.value37
                                        v384 = v386
                                        if v386 then
                                            v384 = capturedValues1.value37.Position
                                        end
                                        v383 = (v381 - (v384 or v380)).Magnitude
                                        v384 = capturedValues1.value31 and capturedValues1.value34
                                        if (not v384) then
                                            v392 = (not capturedValues1.value33)
                                            v385 = v392
                                            if v392 then
                                                v385 = (v383 < capturedValues1.value30.HideBeastNearDist)
                                            end
                                            if v385 then
                                                v385 = capturedValues1.value2.Character
                                                v386 = v385.GetPivot
                                                v388 = function()
                                                    local v329, v330, v333
                                                    if (not capturedValues1.value40) then
                                                        capturedValues1.value40 = (Instance.new("Part"))
                                                        v333 = capturedValues1.value40
                                                        v330 = capturedValues1.value10(15, 1, 15)
                                                        v333.Size = v330
                                                        v333 = capturedValues1.value40
                                                        v333.Anchored = true
                                                        v333 = capturedValues1.value40
                                                        v333.CanCollide = true
                                                        v333 = capturedValues1.value40
                                                        v333.Transparency = 1
                                                        v333 = capturedValues1.value40
                                                        v333.Name = "NexVoidSafePlate"
                                                        v333 = capturedValues1.value40
                                                        v329 = workspace
                                                        v333.Parent = v329
                                                    end
                                                    v333 = capturedValues1.value40
                                                    v330 = capturedValues1.value37
                                                    local v334 = capturedValues1.value11(0, 75, 0)
                                                    v333.CFrame = (v330 * v334)
                                                    v333 = capturedValues1.value2.Character
                                                    v330 = capturedValues1.value40.CFrame
                                                    v334 = capturedValues1.value11(0, 3, 0)
                                                    v333:PivotTo((v330 * v334))
                                                    v329 = function()
                                                        local v341, v347
                                                        capturedValues1.value12()
                                                        local v342 = up54()
                                                        if v342 then
                                                            v341 = capturedValues1.value2.Character.HumanoidRootPart
                                                            v347 = capturedValues1.value10(0, 0, 0)
                                                            v341.AssemblyLinearVelocity = v347
                                                            v341 = capturedValues1.value2.Character.HumanoidRootPart
                                                            v347 = capturedValues1.value10(0, 0, 0)
                                                            v341.AssemblyAngularVelocity = v347
                                                        end
                                                        return
                                                    end
                                                    capturedValues1.value13(v329)

                                                    return
                                                end
                                                v386 = v386(v385)
                                                capturedValues1.value37 = v386
                                                capturedValues1.value33 = true
                                                capturedValues1.value35 = 0
                                                pcall(v388)
                                                capturedValues1.value18("Beast Warning", "Standing on safe platform.", 3.5)
                                            end
                                        end
                                        v388 = capturedValues1.value33
                                        v387 = v388
                                        if v388 then
                                            v387 = capturedValues1.value37 and (not v384)
                                        end
                                        if v387 then
                                            v387 = (capturedValues1.value37 * (capturedValues1.value11(0, 75, 0))).Position
                                            v389 = (capturedValues1.value2.Character.HumanoidRootPart.Position - v387)
                                            if (v389["Magnitude"] > 8) then
                                                v391 = capturedValues1.value2.Character
                                                v390 = (capturedValues1.value37 * (capturedValues1.value11(0, 75, 0)))
                                                v393 = capturedValues1.value11
                                                v391:PivotTo((v390 * (v393(0, 3, 0))))
                                            end
                                            v390 = ((v381 - capturedValues1.value37.Position).Magnitude > (capturedValues1.value30.HideBeastNearDist + 15))
                                            v388 = v390
                                            if v390 then
                                                v388 = (capturedValues1.value42.Ragdoll.Value == false)
                                            end
                                            if v388 then
                                                up36()
                                                v389 = up54()
                                                if v389 then
                                                    v388 = capturedValues1.value2.Character.HumanoidRootPart
                                                    v388.Anchored = false
                                                    v388 = capturedValues1.value2.Character
                                                    v390 = capturedValues1.value37
                                                    v388:PivotTo(v390)
                                                end
                                                capturedValues1.value33 = false
                                                capturedValues1.value35 = 0
                                                capturedValues1.value37 = nil
                                                capturedValues1.value18("Beast Away", "Returning to ground.", 3)
                                            end
                                        end
                                    end
                                end
                                if capturedValues1.value33 then
                                    capturedValues1.value35 = (capturedValues1.value35 + v368)
                                    capturedValues1.value36 = 0
                                else
                                    capturedValues1.value36 = (capturedValues1.value36 + v368)
                                    v384 = capturedValues1.value36
                                    v391 = capturedValues1.value30
                                    if (v384 > v391["TriggerUnCampOut"]) then
                                        capturedValues1.value35 = 0
                                    end
                                end
                                v393 = up54()
                                v384 = v393
                                if v393 then
                                    v384 = (capturedValues1.value2.Character.HumanoidRootPart.Position.Y < -2000)
                                end
                                if v384 then
                                    capturedValues1.value47()
                                end
                                v391 = capturedValues1.value31
                                v384 = v391
                                if v391 then
                                    v394 = (not capturedValues1.value32)
                                    v391 = v394
                                    if v394 then
                                        v391 = (not (up44())) and (up50())
                                    end
                                    v384 = v391
                                end
                                if v384 then
                                    v391 = function()
                                        local v580, v581
                                        while true do
                                            v580 = up60()
                                            v581 = v580
                                            if v580 then
                                                v581 = (up50()) and capturedValues1.value31
                                            end
                                            if v581 then
                                                capturedValues1.value12(.2)
                                            else
                                                break
                                            end
                                        end
                                        local v579 = capturedValues1.value31
                                        v581 = v579
                                        if v579 then
                                            v581 = (not capturedValues1.value32) and (not (up60()))
                                        end
                                        if v581 then
                                            capturedValues1.value13(capturedValues1.value49)
                                        end
                                        return
                                    end
                                    capturedValues1.value13(v391)
                                end
                                v370 = (capturedValues1.value4:FindFirstChild("CurrentMap"))
                                v371 = v370 and v370.Value
                                if v371 then
                                    v384 = 0
                                    v387 = v371:GetChildren()
                                    v394 = (#v387)
                                    v395 = 1
                                    for v393 = 1, v394, v395 do
                                        v397 = v387[v393].Name
                                        if (v397 == "ComputerTable") then
                                            v384 = (v384 + 1)
                                        end
                                    end
                                    if (v384 ~= capturedValues1.value43) then
                                        if (v384 > 0) then
                                            capturedValues1.value12(3)
                                            v391 = capturedValues1.value31 and (not capturedValues1.value32)
                                            if v391 then
                                                v394 = function()
                                                    local v351, v352
                                                    while true do
                                                        v351 = up60()
                                                        v352 = v351
                                                        if v351 then
                                                            v352 = (up50()) and capturedValues1.value31
                                                        end
                                                        if v352 then
                                                            capturedValues1.value12(.2)
                                                        else
                                                            break
                                                        end
                                                    end
                                                    local v350 = capturedValues1.value31
                                                    v352 = v350
                                                    if v350 then
                                                        v352 = (not capturedValues1.value32) and (not (up60()))
                                                    end
                                                    if v352 then
                                                        capturedValues1.value13(capturedValues1.value49)
                                                    end
                                                    return
                                                end
                                                capturedValues1.value13(v394)
                                            end
                                        else
                                            capturedValues1.value32 = false
                                            capturedValues1.value38 = nil
                                        end
                                        capturedValues1.value43 = v384
                                    end
                                end
                            end
                        end
                    else
                        break
                    end
                end
                return
            end
            capturedValues1.value13(v972)
            return
        end
    end
    capturedValues1.value50 = v251
    v247:CreateSection(v248, "Main Farming (BETA)")
    v247:CreateToggle(v248, "Enable Auto Farm", false, function(arg63_1)
        capturedValues1.value19 = arg63_1
        if arg63_1 then
            if capturedValues1.value20 then
                capturedValues1.value20.Set(true)
            end
        else
            if capturedValues1.value21 then
                capturedValues1.value21.Set(false)
            end
            if capturedValues1.value22 then
                capturedValues1.value22.Set(false)
            end
            if capturedValues1.value23 then
                capturedValues1.value23.Set(false)
            end
            if capturedValues1.value24 then
                capturedValues1.value24.Set(false)
            end
        end
        return
    end)
    capturedValues1.value21 = (v247:CreateToggle(v248, "Auto Win Survivor (Teleport)", false, function(arg64_1)
        local v982
        local v981 = arg64_1
        if v981 then
            if (not capturedValues1.value19) then
                task.spawn(function()
                    task.wait()
                    capturedValues1.value21.Set(false)
                    capturedValues1.value18("Enable 'Enable Auto Farm' first!", 3)
                    return
                end)
                return
            else
                if capturedValues1.value22 then
                    capturedValues1.value22.Set(false)
                end
                capturedValues1.value50()
            end
        else
            v982 = getgenv()
            v982.FarmRodando = false
        end
        v982 = getgenv()
        v982.NexVoidLigado = v981
        if (not v981) then
            v982 = getgenv()
            v982.FarmRodando = false
        end
        return
    end))
    v250 = v247:CreateToggle(v248, "Auto win survivor (fly)", false, function(arg65_1)
        local v989, v991, v992, v993, v995, v996, v997, v999
        local v988 = arg65_1
        if v988 then
            if (not capturedValues1.value19) then
                task.spawn(function()
                    task.wait()
                    capturedValues1.value22.Set(false)
                    capturedValues1.value18("Enable 'Enable Auto Farm' first!", 3)
                    return
                end)

                return
            else
                if capturedValues1.value21 then
                    capturedValues1.value21.Set(false)
                end
            end
        end
        capturedValues1.value31 = v988
        if v988 then
            capturedValues1.value50()
            v993 = capturedValues1.value4:FindFirstChild("CurrentMap")
            v989 = v993 and (not capturedValues1.value45)
            if v989 then
                v989 = v993.Changed
                v991 = function(arg1_1)
                    local v145, v147
                    up52()
                    local v143 = arg1_1
                    if arg1_1 then
                        v143 = capturedValues1.value31 and (not capturedValues1.value32)
                    end
                    if v143 then
                        v143 = up44()
                        if v143 then
                            return
                        else
                            while true do
                                v147 = up60()
                                v143 = v147
                                if v147 then
                                    v143 = (up50()) and capturedValues1.value31
                                end
                                if v143 then
                                    capturedValues1.value12(.2)
                                else
                                    break
                                end
                            end
                            v145 = capturedValues1.value31
                            v143 = v145
                            if v145 then
                                v143 = (not capturedValues1.value32) and (not (up60()))
                            end
                            if v143 then
                                capturedValues1.value18("Match", "Teleported! Starting farm instantly.", 3)
                                capturedValues1.value13(capturedValues1.value49)
                            end
                        end
                    end
                    return
                end
                capturedValues1.value45 = (v989:Connect(v991))
            end
            v989 = (up50()) and (not (up44()))
            if v989 then
                capturedValues1.value13(capturedValues1.value49)
            else
                capturedValues1.value18("NexVoid", "Waiting for the match to start...", 4)
            end
        else
            if capturedValues1.value45 then
                capturedValues1.value45:Disconnect()
            end
            v991, v992, v995 = capturedValues1.value15(capturedValues1.value41)
            while true do
                v995, v996 = v991(v992, v995)
                if not v995 then
                    break
                end
                local up93 = v996
                v999 = function()
                    coroutine.close(up93)
                    return
                end
                pcall(v999)
                v997 = capturedValues1.value41
                v997[v995] = nil
            end
            up36()
            v992 = up54()
            if v992 then
                v991 = capturedValues1.value2.Character.HumanoidRootPart
                v991.Anchored = false
            end
        end
        return
    end)
    capturedValues1.value22 = v250
    local v299 = function(arg66_1)
        local v1000 = arg66_1
        local v1001 = v1000 and (not capturedValues1.value19)
        if v1001 then
            task.spawn(function()
                task.wait()
                capturedValues1.value23.Set(false)
                capturedValues1.value18("Enable 'Enable Auto Farm' first!", 3)
                return
            end)
            return
        else
            v1001 = getgenv()
            v1001.AutoWinBeast = v1000
            return
        end
    end
    capturedValues1.value23 = (v247:CreateToggle(v248, "Auto Win Beast", false, v299))
    local v300 = function(arg67_1)
        local v1007 = getgenv()
        v1007.AutoHelpSilent = arg67_1
        if arg67_1 then
            capturedValues1.value18("Auto Save (Silent) | Players in pod will be saved magically.", 5)
        end
        return
    end
    v247:CreateToggle(v248, "Auto Save (Silent)", false, v300)
    v300 = function(arg68_1)
        local v1014, v1015
        local v1013 = getgenv()
        v1013.AutoHelpTeleport = arg68_1
        if arg68_1 then
            capturedValues1.value18("Auto Help (Teleport) | Enabled", 3)
            v1014 = task.spawn
            v1015 = function()
                local v449, v451, v452, v453, v454, v455, v456, v457, v459, v462, v463, v464, v465, v466, v468, v470
                local v471, v472, v476, v477
                local v448 = false
                local v450 = function(arg34_1)
                    local v570, v573, v576
                    local v569 = arg34_1
                    if (not v569) then
                        v570 = nil
                        return v570
                    else
                        v573 = v569:FindFirstChild("HumanoidRootPart")
                        v576 = v573
                        if not (v573) then
                            v576 = (v569:FindFirstChild("Torso")) or (v569:FindFirstChild("UpperTorso"))
                        end
                        return v576
                    end
                end
                while true do
                    v452 = getgenv()
                    if not v452["AutoHelpTeleport"] then
                        break
                    end
                    task.wait(.05)
                    v452 = capturedValues1.value2.Character
                    v453 = (v450(v452))
                    v454 = (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule"))
                    v455 = (not v452)
                    v451 = v455
                    if not (v455) then
                        v451 = (not v453) or (not v454)
                    end
                    if not (v451) then
                        v455 = (v454:FindFirstChild("Health"))
                        v456 = (v454:FindFirstChild("Ragdoll"))
                        v457 = (v454:FindFirstChild("Captured"))
                        v451 = v455 and (v455.Value <= 0)
                        if not (v451) then
                            v451 = v456 and v456.Value
                            if not (v451) then
                                v451 = v457 and v457.Value
                                if not (v451) then
                                    for v459, v462 in capturedValues1.value15(capturedValues1.value1:GetPlayers()) do
                                        v463 = ((v462 == capturedValues1.value2) or v448)
                                        if v463 then
                                            continue
                                        else
                                            v463 = (v462:FindFirstChild("TempPlayerStatsModule"))
                                            v464 = v463 and (v463:FindFirstChild("Captured"))
                                            v465 = v464
                                            if v465 then
                                                v464 = (v465:IsA("BoolValue")) and v465.Value
                                            end
                                            if v464 then
                                                v466 = (v450(v462.Character))
                                                if v466 then
                                                    v449 = v453.CFrame
                                                    v477 = v465.Value
                                                    v471 = v477
                                                    if v477 then
                                                        v471 = getgenv().AutoHelpTeleport
                                                    end
                                                    if not ((not v471))then
                                                        if not (v456["Value"])then
                                                            if not (v457["Value"])then
                                                                v476 = (v455.Value <= 0)
                                                            end
                                                        end
                                                    end
                                                    while true do
                                                        task.wait(.05)
                                                        v468 = v450(capturedValues1.value2.Character)
                                                        if v468 then
                                                            v470 = ((v466.CFrame * (CFrame.new(0, -4.5, 0))) * (CFrame.Angles((math.rad(90)), 0, 0)))
                                                            v468.CFrame = v470
                                                        end
                                                        capturedValues1.value9:FireServer("Input", "Action", true)
                                                        v477 = v465.Value
                                                        v471 = v477
                                                        if v477 then
                                                            v471 = getgenv().AutoHelpTeleport
                                                        end
                                                        v470 = (not v471)
                                                        v468 = v470
                                                        if not (v470) then
                                                            v472 = v456.Value
                                                            v470 = v472
                                                            if not (v472) then
                                                                v470 = v457.Value or (v455.Value <= 0)
                                                            end
                                                            v468 = v470
                                                        end
                                                        if v468 then
                                                            break
                                                        end
                                                    end
                                                    v468 = v449
                                                    if v449 then
                                                        v468 = capturedValues1.value2.Character
                                                    end
                                                    if v468 then
                                                        capturedValues1.value2.Character:PivotTo(v449)
                                                    end
                                                    v448 = false
                                                    break
                                                end
                                            end
                                            continue
                                        end
                                        break
                                    end
                                end
                            end
                        end
                    end
                end
                return
            end
            v1014(v1015)
        end
        return
    end
    capturedValues1.value24 = (v247:CreateToggle(v248, "Auto Save (Teleport)", false, v300))
    v247:CreateSection(v248, "Farm Settings")
    capturedValues1.value20 = (v247:CreateToggle(v248, "Anti AFK", false, function(arg69_1)
        local v1025
        local v1019 = capturedValues1.value19
        local v1020 = v1019
        local v1021 = arg69_1
        if v1019 then
            v1020 = (not v1021)
        end
        if v1020 then
            task.spawn(function()
                task.wait()
                capturedValues1.value20.Set(true)
                capturedValues1.value18("Anti AFK cannot be disabled while Auto Farm is active!", 3)
                return
            end)
            return
        else
            v1025 = _G
            v1025.AntiAfkEnabled = v1021
            return
        end
    end))
    v247:CreateToggle(v248, "Beast Protection (Safe Platform)", false, function(arg70_1)
        local v1028, v1029, v1031
        capturedValues1.value27 = arg70_1
        if arg70_1 then
            capturedValues1.value18("Beast Protection", "Safe platform protection is now active.", 3)
        else
            capturedValues1.value18("Beast Protection", "Safe platform protection disabled.", 3)
            capturedValues1.value33 = false
            up36()
            v1028 = up54()
            if v1028 then
                v1031 = capturedValues1.value2.Character.HumanoidRootPart
                v1031.Anchored = false
                if capturedValues1.value37 then
                    v1031 = capturedValues1.value2.Character
                    v1029 = capturedValues1.value37
                    v1031:PivotTo(v1029)
                end
            end
        end
        return
    end)
    local v305 = function(arg71_1)
        capturedValues1.value25 = arg71_1
        if arg71_1 then
            capturedValues1.value18("Auto-Hide Hack Enabled", "You will be hidden above the PC while hacking.", 3)
        end
        return
    end
    v247:CreateToggle(v248, "Auto-Hide Hack", false, v305)
    v247:CreateToggle(v248, "Wait For Exit Beast Farm", false, function(arg72_1)
        capturedValues1.value26 = arg72_1
        if arg72_1 then
            capturedValues1.value18("Wait For Exit Beast Farm Enabled", "The Beast will wait for all computers to be hacked.", 3)
        end
        return
    end)
    v247:CreateToggle(v248, "Auto Rejoin (Disconnection)", false, function(arg73_1)
        local v1053, v1054
        local v1052 = getgenv()
        v1052.AutoRejoinEnabled = arg73_1
        if arg73_1 then
            capturedValues1.value18("Auto Rejoin Enabled", 3)
            if (not capturedValues1.value28) then
                v1053 = capturedValues1.value5.ErrorMessageChanged
                v1054 = function(arg26_1)
                    local v425 = arg26_1
                    local v431 = getgenv().AutoRejoinEnabled
                    local v432 = v431
                    if v431 then
                        v432 = v425 and (v425 ~= "")
                    end
                    if v432 then
                        capturedValues1.value12(3)
                        v431 = function()
                            local v503 = capturedValues1.value6
                            local v510 = game.PlaceId
                            v503:Teleport(v510, capturedValues1.value2)

                            return
                        end
                        pcall(v431)
                    end
                    return
                end
                capturedValues1.value28 = (v1053:Connect(v1054))
            end
        else
            if capturedValues1.value28 then
                capturedValues1.value28:Disconnect()
            end
        end
        return
    end)
    v247:CreateToggle(v248, "Moderator Alert/Kick", false, function(arg74_1)
        local v1064, v1068
        local v1058 = getgenv()
        v1058.ModAlertKickEnabled = arg74_1
        local up94 = 3195655
        local up95 = 200
        local up97 = "KICK"
        local up96 = function(arg37_1)
            local v609, v610, v611, v615
            local up74 = arg37_1
            if (up74 == capturedValues1.value2) then
                return
            else
                local up75 = false
                if (up94 > 0) then
                    v610 = function()
                        local v166 = up74:GetRankInGroup(up94)
                        if (v166 >= up95) then
                            up75 = true
                        end
                        return
                    end
                    pcall(v610)
                end
                v610 = up75
                v611 = v610
                if v610 then
                    v611 = getgenv().ModAlertKickEnabled
                end
                if v611 then
                    v611 = up97
                    if (v611 == "KICK") then
                        v609 = capturedValues1.value2
                        v615 = up74
                        v609:Kick(("[Security] A moderator (" .. (v615.Name .. ") joined. You have been disconnected to prevent bans.")))
                    else
                        v611 = up97
                        if (v611 == "ALERT") then
                            capturedValues1.value18(("[DANGER] Moderator detected: " .. up74.Name), 10)
                        end
                    end
                end
                return
            end
        end
        if arg74_1 then
            capturedValues1.value18("Moderator Alert/Kick Enabled", 3)
            for v1064, v1068 in capturedValues1.value14(capturedValues1.value1:GetPlayers()) do
                task.spawn(up96, v1068)
            end
            if (not capturedValues1.value29) then
                capturedValues1.value29 = (capturedValues1.value1.PlayerAdded:Connect(function(arg18_1)
                    up96(arg18_1)
                    return
                end))
            end
        else
            if capturedValues1.value29 then
                capturedValues1.value29:Disconnect()
            end
        end
        return
    end)
    local v312 = function(arg75_1)
        capturedValues1.value30.FarmTweenSpeed = arg75_1
        return
    end
    v247:CreateSlider(v248, "Fly Farm Speed", 16, 30, 22, v312)
    v305 = capturedValues1.value4:WaitForChild("IsGameActive", 1)
    capturedValues1.value51 = v305
    task.spawn(function()
        local v1079 = game:GetService("VirtualUser")
        local up98 = v1079
        v1079 = _G
        if v1079.AntiAfkConnection then
            _G.AntiAfkConnection:Disconnect()
        end
        local v1080 = _G
        v1080.AntiAfkConnection = capturedValues1.value2.Idled:Connect(function()
            local v157, v160
            local v156 = _G
            if v156.AntiAfkEnabled then
                up98:CaptureController()
                v160 = up98
                v157 = Vector2
                v160:ClickButton2(v157.new(0, 0))
            end
            return
        end)

        return
    end)
    task.spawn(function()
        local v1089, v1091, v1093
        while true do
            task.wait(0.5)
            v1093 = getgenv().AutoWinBeast
            v1089 = v1093
            if v1093 then
                v1091 = capturedValues1.value51
                v1093 = v1091
                if v1091 then
                    v1093 = capturedValues1.value51.Value
                end
                v1089 = v1093
            end
            if v1089 then
                v1093 = function()
                    local v125, v130, v131, v132, v133, v136, v137
                    local v126 = capturedValues1.value2.Character
                    local v123 = capturedValues1.value2:FindFirstChild("Backpack")
                    local v122 = (v126 and v123)
                    if v122 then
                        for v125, v130 in capturedValues1.value14(v123:GetChildren()) do
                            v133 = v130:IsA("Tool")
                            v136 = v133
                            if v133 then
                                v132 = v130.Name:match("Hammer")
                                v133 = v132
                                if not (v132) then
                                    v137 = v130.Name:match("Mallet")
                                    v131 = v137
                                    if not (v137) then
                                        v131 = (v130:FindFirstChild("HammerEvent"))
                                    end
                                    v133 = v131
                                end
                                v136 = v133
                            end
                            if v136 then
                                v136 = (v126:FindFirstChildOfClass("Humanoid"))
                                if v136 then
                                    v136:EquipTool(v130)
                                end
                            else
                                continue
                            end
                            break
                        end
                    end
                    return
                end
                pcall(v1093)
            end
        end
    end)
    v305 = task.spawn
    local v310 = function()
        local v1103
        while true do
            task.wait(.1)
            v1103 = getgenv()
            if v1103["AutoWinBeast"] then
                v1103 = function()
                    local v586, v589, v590, v591, v592, v593, v594, v595, v597, v598, v599, v600, v602
                    local v587 = (not capturedValues1.value51)
                    local v588 = v587
                    if not (v587) then
                        v595 = (not capturedValues1.value51.Value)
                        v587 = v595
                        if not (v595) then
                            v587 = (not (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule")))
                        end
                        v588 = v587
                    end
                    if v588 then
                        return
                    else
                        if capturedValues1.value26 then
                            v587 = (up2())
                            if v587 then
                                v586 = true
                                v593 = v587.GetChildren
                                for v594, v590 in capturedValues1.value15(v593(v587)) do
                                    v591 = v590.Name
                                    if (v591 == "ComputerTable") then
                                        v591 = (v590:FindFirstChild("Screen"))
                                        v592 = v591
                                        if v591 then
                                            v592 = (v591.BrickColor ~= (BrickColor.new("Dark green")))
                                        end
                                        if v592 then
                                            v586 = false
                                            break
                                        end
                                    end
                                end
                                if (not v586) then
                                    return
                                end
                            end
                        end
                        v587 = capturedValues1.value2.Character
                        v595 = up35(v587)
                        v586 = (not (v587:FindFirstChild("HammerEvent", true))) or (not v595)
                        if v586 then
                            return
                        else
                            v594 = nil
                            v593, v590, v591 = capturedValues1.value15(capturedValues1.value1:GetPlayers())
                            while true do
                                v591, v592 = v593(v590, v591)
                                if not v591 then
                                    break
                                end
                                v597 = (v592 ~= capturedValues1.value2) and v592.Character
                                if v597 then
                                    v597 = v592:FindFirstChild("TempPlayerStatsModule")
                                    v598 = v597
                                    if v597 then
                                        v602 = v597:FindFirstChild("Captured")
                                        v600 = v602
                                        if v602 then
                                            v600 = (not v597.Captured.Value)
                                        end
                                        v598 = v600
                                    end
                                    if v598 then
                                        v599 = up35(v592.Character)
                                        if v599 then
                                            v594 = v599
                                            break
                                        end
                                    end
                                end
                            end
                            v589 = v594
                            if v594 then
                                v589 = capturedValues1.value2.Character
                            end
                            if v589 then
                                v589 = capturedValues1.value2.Character
                                v591 = v594.CFrame
                                v597 = CFrame
                                v593 = v589.PivotTo
                                v597 = v597.new(0, 0, 1.5)
                                v593(v589, (v591 * v597))
                                v593 = Vector3.zero
                                v595.Velocity = v593
                            end
                            return
                        end
                    end
                end
                pcall(v1103)
            end
        end
    end
    v305(v310)
    v305 = task.spawn
    v310 = function()
        local v1109
        while true do
            task.wait(.1)
            v1109 = getgenv()
            if v1109["AutoWinBeast"] then
                v1109 = function()
                    local v511, v514, v516, v517, v518, v519, v520, v521, v522, v523, v524, v525, v526
                    local v512 = (not capturedValues1.value51)
                    local v513 = v512
                    if not (v512) then
                        v520 = (not capturedValues1.value51.Value)
                        v512 = v520
                        if not (v520) then
                            v512 = (not (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule")))
                        end
                        v513 = v512
                    end
                    if v513 then
                        return
                    else
                        v512 = capturedValues1.value2.Character
                        v513 = v512
                        if v512 then
                            v513 = (v512:FindFirstChild("HammerEvent", true))
                        end
                        v511 = v513
                        v521 = up35
                        v519 = (not v511)
                        v520 = (v521(v512))
                        v513 = v519 or (not v520)
                        if v513 then
                            return
                        else
                            v521 = capturedValues1.value15
                            v518 = capturedValues1.value1
                            v516 = v518.GetPlayers
                            for v514, v516 in v521(v516(v518)) do
                                v522 = capturedValues1.value2
                                v517 = (v516 ~= v522) and v516.Character
                                if v517 then
                                    v517 = (v516:FindFirstChild("TempPlayerStatsModule"))
                                    if (not v517) then
                                        continue
                                    else
                                        v523 = (v517:FindFirstChild("Ragdoll"))
                                        v522 = (v517:FindFirstChild("Captured"))
                                        v524 = (up35(v516.Character))
                                        v525 = v524
                                        if v524 then
                                            v525 = v522 and (not v522.Value)
                                        end
                                        if v525 then
                                            v525 = (v524.Position - v520.Position)
                                            if (v525["Magnitude"] <= 12) then
                                                v526 = v523 and (not v523.Value)
                                                if v526 then
                                                    v511:FireServer("HammerHit", v524)
                                                end
                                                v526 = v523 and (v523.Value == true)
                                                if v526 then
                                                    v511:FireServer("HammerTieUp", v524, v524.Position)
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            return
                        end
                    end
                end
                pcall(v1109)
            end
        end
    end
    v305(v310)
    task.spawn(function()
        local v1115
        while true do
            task.wait(.1)
            v1115 = getgenv()
            if v1115.AutoWinBeast then
                v1115 = function()
                    local v480, v483, v484, v485, v486, v488, v489, v490, v491, v492, v493, v495
                    local v481 = (not capturedValues1.value51)
                    local v482 = v481
                    if not (v481) then
                        v489 = (not capturedValues1.value51.Value)
                        v481 = v489
                        if not (v489) then
                            v481 = (not (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule")))
                        end
                        v482 = v481
                    end
                    if v482 then
                        return
                    else
                        v482 = capturedValues1.value2.Character:FindFirstChild("HammerEvent", true)
                        if (not v482) then
                            return
                        else
                            v480 = (up2())
                            v490 = capturedValues1.value15
                            v483 = capturedValues1.value1
                            v484 = v483.GetPlayers
                            for v488, v484 in v490(v484(v483)) do
                                v491 = capturedValues1.value2
                                v485 = (v484 ~= v491) and v484.Character
                                if v485 then
                                    v485 = (v484:FindFirstChild("TempPlayerStatsModule"))
                                    if (not v485) then
                                        continue
                                    else
                                        v486 = (v485:FindFirstChild("Ragdoll"))
                                        v491 = (v485:FindFirstChild("Captured"))
                                        v492 = v486
                                        if v486 then
                                            v495 = (v486.Value == true)
                                            v493 = v495
                                            if v495 then
                                                v493 = v491 and (v491.Value == false)
                                            end
                                            v492 = v493
                                        end
                                        if v492 then
                                            v492 = up14(v480)
                                            if v492 then
                                                capturedValues1.value9:FireServer("Input", "Trigger", true, v492)
                                                task.wait(.05)
                                                capturedValues1.value9:FireServer("Input", "Action", true)
                                            end
                                        end
                                    end
                                end
                            end
                            return
                        end
                    end
                end
                pcall(v1115)
            end
        end
    end)
    capturedValues1.value52 = 25
    v310 = getgenv()
    v310.FarmRodando = false
    v310 = getgenv()
    v310.EscapouDaPartida = false
    v310 = getgenv()
    local v313 = function()
        local v1116, v1118, v1119, v1120, v1121, v1122
        local v1117 = getgenv()
        if v1117["EscapouDaPartida"] then
            v1121 = false
            return v1121
        else
            v1117 = getgenv()
            if v1117["SouBeastNessaRodada"] then
                v1121 = false
                return v1121
            else
                if capturedValues1.value33 then
                    v1121 = false
                    return v1121
                else
                    v1116 = capturedValues1.value2
                    if (not v1116["Character"]) then
                        v1121 = false
                        return v1121
                    else
                        v1118 = (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule"))
                        if (not v1118) then
                            v1119 = capturedValues1.value51
                            v1116 = v1119
                            if v1119 then
                                v1116 = (capturedValues1.value51.Value == true)
                            end
                            if v1116 then
                                v1121 = true
                                return v1121
                            else
                                v1116 = getgenv()
                                v1116.EscapouDaPartida = true
                                v1116 = getgenv()
                                v1116.FarmRodando = false
                                v1121 = false
                                return v1121
                            end
                        else
                            v1119 = (v1118:FindFirstChild("Ragdoll"))
                            v1122 = v1119
                            v1120 = (v1118:FindFirstChild("Captured"))
                            if v1119 then
                                v1122 = v1119.Value
                            end
                            v1116 = v1122
                            if not (v1122) then
                                v1116 = v1120 and v1120.Value
                            end
                            if v1116 then
                                v1121 = false
                                return v1121
                            else
                                v1121 = true
                                return v1121
                            end
                        end
                    end
                end
            end
        end
    end
    v310.SouBeastNessaRodada = false
    capturedValues1.value53 = function(arg82_1, arg82_2, arg82_3)
        capturedValues1.value18(arg82_1, arg82_2, (arg82_3 or 3))
        return
    end
    local up65 = function(arg83_1)
        local v1134, v1136, v1138, v1139, v1140, v1141
        local v1132 = capturedValues1.value2
        local v1133 = arg83_1
        local v1137 = v1132.Character
        if (not v1137) then
            v1138 = false
            return v1138
        else
            v1134 = (v1137:FindFirstChild("HumanoidRootPart"))
            if (not v1134) then
                v1138 = false
                return v1138
            else
                v1136 = ((v1134.Position - v1133.Position ).Magnitude / capturedValues1.value52)
                if (v1136 > 0.5) then
                    capturedValues1.value53("Anti-Cheat Bypass", ("Calculating jump... Waiting " .. ((string.format("%.1f", v1136)) .. "s")), v1136)
                    v1139 = Vector3.new(0, 0, 0)
                    v1134.Velocity = v1139
                    v1139 = 0
                    while true do
                        if not (v1139 < v1136) then
                            break
                        end
                        capturedValues1.value12(.1)
                        v1139 = (v1139 + .1)
                        v1141 = PossoAgir()
                        if (not v1141) then
                            return false
                        end
                    end
                end
                v1140 = PossoAgir()
                if (not v1140) then
                    return false
                else
                    v1134.CFrame = v1133
                    v1140 = Vector3.new (0, 0, 0)
                    v1134.Velocity = v1140
                    v1139 = 0
                    while true do
                        if not (v1139 < 1.2) then
                            break
                        end
                        capturedValues1.value12(.1)
                        v1132 = (v1139 + .1)
                        v1140 = (not (PossoAgir()))
                        v1139 = v1132
                        if v1140 then
                            return false
                        end
                    end
                    return true
                end
            end
        end
    end
    local up66 = function()
        local v1149, v1150, v1154
        local v1153 = capturedValues1.value2.Character
        if (not v1153) then
            v1154 = false
            return v1154
        else
            v1150 = v1153:FindFirstChild("Hammer")
            v1149 = v1150
            if not (v1150) then
                v1149 = (v1153:FindFirstChild("BeastPowers"))
            end
            if v1149 then
                v1154 = true
                return v1154
            else
                v1154 = false
                return v1154
            end
        end
    end
    local v314 = function(arg85_1)
        local v1164, v1165, v1166
        local v1157 = capturedValues1.value15
        local v1158 = capturedValues1.value1
        local v1159 = v1158.GetPlayers
        local v1160 = arg85_1
        for v1163, v1159 in v1157(v1159(v1158)) do
            v1164 = capturedValues1.value2
            v1166 = (v1159 ~= v1164) and v1159.Character
            if v1166 then
                v1166 = v1159.Character:FindFirstChild("HumanoidRootPart")
                v1165 = v1166
                if v1166 then
                    v1165 = ((v1166.Position - v1160).Magnitude <= 6)
                end
                if v1165 then
                    v1157 = true
                    return v1157
                end
            end
        end
        return false
    end
    capturedValues1.value54 = v313
    capturedValues1.value55 = v314
    local v315 = function()
        local v1174, v1180, v1181, v1183, v1184, v1185, v1186, v1187, v1188, v1189
        local v1178 = capturedValues1.value2.Character
        local v1175 = v1178 and (v1178:FindFirstChild("HumanoidRootPart"))
        local v1176
        local v1177 = math.huge
        v1174, v1180, v1181 = capturedValues1.value15(capturedValues1.value3:GetDescendants())
        local v1182 = v1174
        while true do
            v1181, v1183 = v1182(v1180, v1181)
            if not v1181 then
                break
            end
            v1188 = v1183.Name
            if (v1188 == "ComputerTable") then
                v1188 = (v1183:FindFirstChild("Screen"))
                v1184 = v1183:FindFirstChild("Keyboard")
                v1187 = v1184
                if not (v1184) then
                    v1187 = (v1183:FindFirstChildWhichIsA("BasePart"))
                end
                v1185 = v1183:FindFirstChild("Event", true)
                v1184 = v1185
                if not (v1185) then
                    v1184 = (v1183:FindFirstChildWhichIsA("RemoteEvent", true))
                end
                v1185 = v1188 and (v1184 and v1187)
                if v1185 then
                    v1185 = string.lower(tostring(v1188.BrickColor))
                    v1189 = (not (string.find(v1185, "green")))
                    v1186 = v1189
                    if v1189 then
                        v1186 = (not (capturedValues1.value55(v1187.Position)))
                    end
                    if v1186 then
                        if v1175 then
                            v1186 = (v1175.Position - v1187.Position).Magnitude
                            if (v1186 < v1177) then
                                v1177 = v1186
                                v1176 = {["mesa"] = v1183, ["tela"] = v1188, ["evento"] = v1184}
                            end
                        else
                            return v1183, v1188, v1184
                        end
                    end
                end
            end
        end
        if v1176 then
            v1180 = v1176.mesa
            v1181 = v1176.tela
            v1182 = v1176.evento
            return v1180, v1181, v1182
        else
            return nil, nil, nil
        end
    end
    capturedValues1.value56 = v315
    local v316 = function()
        local v1203 = task.spawn
        local v1202 = function()
            local v537, v538, v539, v540, v541, v543, v544, v545, v546, v547, v548, v549, v550, v551, v552, v553
            local v554, v556, v557, v558, v559, v560
            local v561
            local v542 = capturedValues1.value2.Character
            if v542 then
                v543 = (capturedValues1.value2.Character:FindFirstChild("HumanoidRootPart"))
            end
            while true do
                task.wait(.1)
                v542 = capturedValues1.value2.Character
                v543 = v542
                if v542 then
                    v543 = (capturedValues1.value2.Character:FindFirstChild("HumanoidRootPart"))
                end
                if v543 then
                    break
                end
            end
            task.wait(1)
            v543 = up66()
            if v543 then
                v543 = getgenv()
                v543.SouBeastNessaRodada = true
                v543 = getgenv()
                v543.FarmRodando = false
                capturedValues1.value53("System Status", "Beast Mode Detected. Farm Disabled.", 6)

                return
            else
                capturedValues1.value53("NexVoid System", "Targets detected. Farm started.", 3)
                while true do
                    v542 = getgenv().FarmRodando
                    v543 = v542
                    if v542 then
                        v543 = getgenv().NexVoidLigado
                    end
                    if v543 then
                        task.wait(.2)
                        v542 = getgenv()
                        if not (v542["EscapouDaPartida"])then
                            v538 = capturedValues1.value54()
                            if (not v538) then
                                continue
                            else
                                v544 = capturedValues1.value56
                                v543, v538, v539 = v544()
                                v542 = v543
                                v543 = v542
                                v537 = v538
                                v541 = v539
                                if v542 then
                                    v543 = (v537 and v541)
                                end
                                if v543 then
                                    v538 = nil
                                    v544 = v542:IsA("Model")
                                    if v544 then
                                        v538 = (v542:GetPivot())
                                    else
                                        v539 = (v542:FindFirstChildWhichIsA("BasePart"))
                                        if v539 then
                                            v538 = v539.CFrame
                                        end
                                    end
                                    if v538 then
                                        v540 = up65((v538 * (CFrame.new(0, 3, -3))))
                                        if v540 then
                                            while true do
                                                v546 = getgenv().FarmRodando
                                                v539 = v546
                                                if v546 then
                                                    v539 = (not getgenv().EscapouDaPartida)
                                                end
                                                if v539 then
                                                    v546 = capturedValues1.value54()
                                                    if not ((not v546))then
                                                        v539 = (string.lower(tostring(v537.BrickColor)))
                                                        v546 = string.find
                                                        v547 = v546(v539, "green")
                                                        if not (v547) then
                                                            capturedValues1.value9:FireServer("Input", "Trigger", true, v541)
                                                            capturedValues1.value9:FireServer("Input", "Action", true)
                                                            capturedValues1.value9:FireServer("SetPlayerMinigameResult", true)
                                                            v545 = capturedValues1.value2.Character
                                                            v546 = v545
                                                            if v545 then
                                                                v546 = (v545:FindFirstChild("HumanoidRootPart"))
                                                            end
                                                            if v546 then
                                                                v546 = v545.HumanoidRootPart
                                                                v548 = Vector3.new(0, 0, 0)
                                                                v546.Velocity = v548
                                                            end
                                                            task.wait(.1)

                                                            continue
                                                        end
                                                    end
                                                end
                                                break
                                            end
                                        end
                                    end
                                else
                                    for v545, v546 in capturedValues1.value15(capturedValues1.value3:GetDescendants()) do
                                        v551 = v546.Name
                                        if (v551 == "ExitDoor") then
                                            v548 = v546:FindFirstChild("Light", true)
                                            v547 = v548
                                            if not (v548) then
                                                v550 = v546:FindFirstChild("Lock", true)
                                                v548 = v550
                                                if not (v550) then
                                                    v548 = (v546:FindFirstChildWhichIsA("BasePart"))
                                                end
                                                v547 = v548
                                            end
                                            v549 = v546:FindFirstChild("Event", true)
                                            v551 = v549
                                            if not (v549) then
                                                v551 = (v546:FindFirstChildWhichIsA("RemoteEvent", true))
                                            end
                                            v548 = v547
                                            if v547 then
                                                v550 = v551
                                                if v551 then
                                                    v550 = (not (capturedValues1.value55(v547.Position)))
                                                end
                                                v548 = v550
                                            end
                                            if v548 then
                                                capturedValues1.value53("Target Locked", "Moving to Exit Door.", 4)
                                                v548 = (v547.CFrame * (CFrame.new (0, 0, -3)))
                                                v550 = up65(v548)
                                                if v550 then
                                                    while true do
                                                        v553 = getgenv().FarmRodando
                                                        v549 = v553
                                                        if v553 then
                                                            v549 = (not getgenv().EscapouDaPartida)
                                                        end
                                                        if v549 then
                                                            v553 = capturedValues1.value54()
                                                            if not ((not v553))then
                                                                v549 = (string.lower(tostring(v547.BrickColor)))
                                                                v554 = string.find(v549, "green")
                                                                if not (v554) then
                                                                    v552 = (capturedValues1.value2:FindFirstChild("ActionProgress", true))
                                                                    v553 = v552 and (v552:IsA("NumberValue"))
                                                                    if v553 then
                                                                        if (v552["Value"] >= .99) then
                                                                            break
                                                                        end
                                                                    end
                                                                    capturedValues1.value9:FireServer("Input", "Trigger", true, v551)
                                                                    capturedValues1.value9:FireServer("Input", "Action", true)
                                                                    task.wait(.1)

                                                                    continue
                                                                end
                                                            end
                                                        end
                                                        break
                                                    end
                                                    v553 = getgenv()
                                                    if v553["EscapouDaPartida"] then
                                                        break
                                                    else
                                                        capturedValues1.value53("Target Unlocked", "Door opened. Escaping...", 4)
                                                        task.wait(3)
                                                        v549 = capturedValues1.value2.Character
                                                        v552 = v549 and (v549:FindFirstChild("HumanoidRootPart"))
                                                        if v552 then
                                                            v552 = v549.HumanoidRootPart
                                                            v553 = v546:GetBoundingBox()
                                                            v560 = CFrame.new(v553.Position )
                                                            v552.CFrame = v560
                                                            task.wait(0.5)
                                                            for v559, v556 in capturedValues1.value15(v546:GetDescendants()) do
                                                                v561 = v556:IsA("BasePart")
                                                                v557 = v561
                                                                if v561 then
                                                                    v557 = (v556.Transparency >= .8) and (not v556.CanCollide)
                                                                end
                                                                if v557 then
                                                                    v558 = v556.CFrame
                                                                    v552.CFrame = v558
                                                                    task.wait(.2)
                                                                    v561 = capturedValues1.value2:FindFirstChild("TempPlayerStatsModule")
                                                                    if (not v561) then
                                                                        break
                                                                    end
                                                                end
                                                            end
                                                        end
                                                        v553 = getgenv()
                                                        v553.EscapouDaPartida = true
                                                        v553 = getgenv()
                                                        v553.FarmRodando = false
                                                        capturedValues1.value53("System Status", "Successfully escaped. Paused.", 6)

                                                        break
                                                    end
                                                end
                                            end
                                        end
                                    end
                                    v540 = getgenv()
                                    if v540["EscapouDaPartida"] then
                                        break
                                    end
                                end
                                continue
                            end
                        end
                    end
                    break
                end
                return
            end
        end
        v1203(v1202)

        return
    end
    capturedValues1.value57 = v316
    local v317 = task
    local v308 = function()
        local v1206, v1207
        local v1205
        local v1210 = (capturedValues1.value4:FindFirstChild("CurrentMap"))
        local v1209 = v1210
        if v1210 then
            v1209 = (v1210:IsA("ObjectValue")) and v1210.Value
        end
        if v1209 then
            v1205 = v1210.Value
        end
        if (not v1205) then
            v1206 = workspace:FindFirstChild("ComputerTable", true)
            v1209 = v1206 and v1206.Parent
            if v1209 then
                v1205 = v1206.Parent
            end
        end
        if (not v1205) then
            v1207 = workspace:FindFirstChild("FreezePod", true)
            v1206 = v1207 and v1207.Parent
            if v1206 then
                v1205 = v1207.Parent
            end
        end
        return v1205
    end
    v310 = function(arg89_1)
        local v1219, v1222, v1223, v1224, v1225, v1226, v1227, v1228
        local v1216 = arg89_1
        local v1218 = type(v1216)
        if (v1218 ~= "table") then
            v1222 = nil
            return v1222
        else
            v1222 = capturedValues1.value15
            for v1219, v1223 in v1222(v1216) do
                v1228 = v1223.Name
                if (v1228 == "FreezePod") then
                    v1228 = (v1223:FindFirstChild("PodTrigger", true))
                    if v1228 then
                        v1227 = (v1228:FindFirstChild("CapturedTorso"))
                        v1222 = v1228.FindFirstChild
                        v1225 = v1227
                        v1222 = v1222(v1228, "Event")
                        v1224 = v1222
                        if v1227 then
                            v1226 = v1224
                            if v1224 then
                                v1226 = (v1227:IsA("ObjectValue")) and v1227.Value
                            end
                            v1225 = v1226
                        end
                        if v1225 then
                            return v1224
                        end
                    end
                end
            end
            v1222 = nil
            return v1222
        end
    end
    v316 = v317.spawn
    local v321 = function()
        local v1238
        while true do
            v1238 = getgenv()
            if v1238["NexVoidLigado"] then
                pcall(function()
                    local v725, v733
                    local v723 = capturedValues1.value51
                    local v724 = v723
                    if v723 then
                        v724 = (capturedValues1.value51.Value == true)
                    end
                    if v724 then
                        v723 = (not getgenv().FarmRodando)
                        v724 = v723
                        if v723 then
                            v725 = (not getgenv().EscapouDaPartida)
                            v723 = v725
                            if v725 then
                                v723 = (not getgenv().SouBeastNessaRodada)
                            end
                            v724 = v723
                        end
                        if v724 then
                            v724 = getgenv()
                            v724.FarmRodando = true
                            capturedValues1.value53("NexVoid System", "Auto Farm initialized. Waiting for round.", 5)
                            capturedValues1.value57()
                        end
                    else
                        v723 = getgenv().FarmRodando
                        v724 = v723
                        if not (v723) then
                            v725 = getgenv().EscapouDaPartida
                            v723 = v725
                            if not (v725) then
                                v723 = getgenv().SouBeastNessaRodada
                            end
                            v724 = v723
                        end
                        if v724 then
                            v724 = getgenv()
                            v724.FarmRodando = false
                            v724 = getgenv()
                            v724.EscapouDaPartida = false
                            v724 = getgenv()
                            v724.SouBeastNessaRodada = false
                            capturedValues1.value53("System Status", "Round ended. Resetting to Standby mode.", 5)
                            v723 = capturedValues1.value2.Character
                            v724 = v723
                            if v723 then
                                v724 = (v723:FindFirstChild("HumanoidRootPart"))
                            end
                            if v724 then
                                v733 = v723.HumanoidRootPart
                                v725 = Vector3.new(0, 0, 0)
                                v733.Velocity = v725
                            end
                        end
                    end
                    return
                end)
            end
            task.wait(1)
        end
    end
    v316(v321)
    capturedValues1.value58 = v308
    capturedValues1.value59 = v310
    v310 = task.spawn
    v312 = function()
        local v1243, v1245, v1246, v1247, v1248, v1251, v1253, v1254, v1255, v1256, v1257, v1258, v1259, v1260, v1261, v1262
        local v1244 = (capturedValues1.value58())
        while true do
            task.wait(.05)
            v1245 = getgenv()
            if not ((not v1245["AutoHelpSilent"]))then
                v1248 = (capturedValues1.value2:FindFirstChild("TempPlayerStatsModule"))
                if not ((not v1248))then
                    v1245 = (v1248:FindFirstChild("Health"))
                    v1246 = (v1248:FindFirstChild("Ragdoll"))
                    v1247 = (v1248:FindFirstChild("Captured"))
                    v1243 = v1245 and (v1245.Value <= 0)
                    if not (v1243) then
                        v1243 = v1246 and v1246.Value
                        if not (v1243) then
                            v1243 = v1247 and v1247.Value
                            if not (v1243) then
                                if (not v1244) then
                                    v1244 = (capturedValues1.value58())
                                else
                                    for v1251, v1253 in capturedValues1.value15(capturedValues1.value1:GetPlayers()) do
                                        if not ((v1253 == capturedValues1.value2))then
                                            v1254 = (v1253:FindFirstChild("TempPlayerStatsModule"))
                                            v1258 = v1254
                                            if v1254 then
                                                v1258 = (v1254:FindFirstChild("Captured"))
                                            end
                                            v1261 = v1258
                                            if v1261 then
                                                v1258 = (v1261:IsA("BoolValue")) and v1261.Value
                                            end
                                            if v1258 then
                                                v1258 = capturedValues1.value59(v1244:GetChildren())
                                                if not ((not v1258))then
                                                    v1260 = v1261.Value
                                                    v1257 = v1260
                                                    if v1260 then
                                                        v1257 = getgenv().AutoHelpSilent
                                                    end
                                                    if not ((not v1257))then
                                                        if not (v1246["Value"])then
                                                            if not (v1247["Value"])then
                                                                v1262 = (v1245.Value <= 0)
                                                            end
                                                        end
                                                    end
                                                    while true do
                                                        task.wait(.05)
                                                        capturedValues1.value9:FireServer("Input", "Trigger", true, v1258)
                                                        capturedValues1.value9:FireServer("Input", "Action", true)
                                                        v1260 = v1261.Value
                                                        v1257 = v1260
                                                        if v1260 then
                                                            v1257 = getgenv().AutoHelpSilent
                                                        end
                                                        v1256 = (not v1257)
                                                        v1255 = v1256
                                                        if not (v1256) then
                                                            v1259 = v1246.Value
                                                            v1256 = v1259
                                                            if not (v1259) then
                                                                v1256 = v1247.Value or (v1245.Value <= 0)
                                                            end
                                                            v1255 = v1256
                                                        end
                                                        if v1255 then
                                                            break
                                                        end
                                                    end
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
    v310(v312)

    return
end
return v1269
