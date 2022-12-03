task.spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.MobAuraFarmMateryGun and StartMasteryGunMagnet then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = PosMonMasteryGun
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = PosMonMasteryGun.Position
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.AutoSeaBeast and FindSeabeast then
                        args[2] = SeaBeastPos.Position
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.MobAuraFarmMatery and StartMasteryFruitMagnet then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = PosMonMasteryFruit
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = PosMonMasteryFruit.Position
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if USEGUN then
                        if PosMonMasteryGun ~= nil and _G.AutoFarmGunMastery then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosMonMasteryGun
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosMonMasteryGun.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if UseSkill then
                        if PosMonMasteryFruit ~= nil and _G.AutoFarmFruitMastery then
                            if tostring(typeof(args[2])) == "CFrame" then
                                args[2] = PosMonMasteryFruit
                            elseif tostring(typeof(args[2])) == "Vector3" then
                                args[2] = PosMonMasteryFruit.Position
                            end
                            return old(unpack(args))
                        end
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if not _G.IgnoreAllies and not _G.IgnoreSameTeams then
                MaxDistance = math.huge
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        Distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            _G.SelectAim = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.IgnoreAllies and not _G.IgnoreSameTeams then
                MaxDistance = math.huge
                for i,v in pairs(game.Players:GetChildren()) do
                    for i,x in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name and not v.Name:find(x) then
                            Distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if Distance < MaxDistance then
                                MaxDistance = Distance
                                _G.SelectAim = v.Name
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if not _G.IgnoreAllies and _G.IgnoreSameTeams then
                MaxDistance = math.huge
                for i,v in pairs(game.Players:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name and v.Team ~= game.Players.LocalPlayer.Team then
                        Distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                        if Distance < MaxDistance then
                            MaxDistance = Distance
                            _G.SelectAim = v.Name
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.IgnoreAllies and _G.IgnoreSameTeams then
                MaxDistance = math.huge
                for i,v in pairs(game.Players:GetChildren()) do
                    for i,x in pairs(game:GetService("Players").LocalPlayer.PlayerGui.Main.Allies.Container.Allies.ScrollingFrame.Frame:GetChildren()) do
                        if v.Name ~= game.Players.LocalPlayer.Name and not v.Name:find(x) and v.Team ~= game.Players.LocalPlayer.Team then
                            Distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                            if Distance < MaxDistance then
                                MaxDistance = Distance
                                _G.SelectAim = v.Name
                            end
                        end
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            MaxDistance = math.huge
            for i,v in pairs(game.Players:GetChildren()) do
                if v.Name ~= game.Players.LocalPlayer.Name then
                    Distance = (v.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                    if Distance < MaxDistance then
                        MaxDistance = Distance
                        _G.SelectAim = v.Name
                    end
                end
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game.Players:FindFirstChild(_G.SelectPly) and game.Players:FindFirstChild(_G.SelectPly).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(_G.SelectPly).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(_G.SelectPly).Character.Humanoid.Health > 0 then
                AimbotSelectPosition = game.Players:FindFirstChild(_G.SelectPly).Character:FindFirstChild("HumanoidRootPart")
            end
        end)
    end
end)

task.spawn(function()
    while task.wait() do
        pcall(function()
            if game.Players:FindFirstChild(_G.SelectAim) and game.Players:FindFirstChild(_G.SelectAim).Character:FindFirstChild("HumanoidRootPart") and game.Players:FindFirstChild(_G.SelectAim).Character:FindFirstChild("Humanoid") and game.Players:FindFirstChild(_G.SelectAim).Character.Humanoid.Health > 0 then
                AimbotNearestSelectPosition = game.Players:FindFirstChild(_G.SelectAim).Character:FindFirstChild("HumanoidRootPart")
            end
        end)
    end
end)

task.spawn(function()    
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill and AimbotSelectPosition then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = AimbotSelectPosition.CFrame
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = AimbotSelectPosition.Position
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)

task.spawn(function()    
    local gg = getrawmetatable(game)
    local old = gg.__namecall
    setreadonly(gg,false)
    gg.__namecall = newcclosure(function(...)
        local method = getnamecallmethod()
        local args = {...}
        if tostring(method) == "FireServer" then
            if tostring(args[1]) == "RemoteEvent" then
                if tostring(args[2]) ~= "true" and tostring(args[2]) ~= "false" then
                    if _G.Aimbot_Skill_Nearest and AimbotNearestSelectPosition then
                        if tostring(typeof(args[2])) == "CFrame" then
                            args[2] = AimbotNearestSelectPosition.CFrame
                        elseif tostring(typeof(args[2])) == "Vector3" then
                            args[2] = AimbotNearestSelectPosition.Position
                        end
                        return old(unpack(args))
                    end
                end
            end
        end
        return old(...)
    end)
end)
