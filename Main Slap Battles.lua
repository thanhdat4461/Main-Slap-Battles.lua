	local function getGlove()	    

	    return game.Players.LocalPlayer.leaderstats.Glove.Value

	    

	end

	local pathfindingService = game:GetService("PathfindingService")

local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local window = kavoUi.CreateLib("Slap Battles Main/BkuIl Hub","Ocean")

---Tabs

local Tab1 = window:NewTab("LocalPlayer")

local Tab1Section = Tab1:NewSection("LocalPlayer")

local Tab2 = window:NewTab("Combat")

local Tab2Section = Tab2:NewSection("Main")

local Tab3 = window:NewTab("AutoFram")

local Tab3Section = Tab3:NewSection("AutoFram")

local Tab4 = window:NewTab("Badges")

local Tab4Section = Tab4:NewSection("Free Badges Glove")

local Tab5 = window:NewTab("Discord Server Link")

local Tab5Section = Tab5:NewSection("Original BkvIl Hub Server")

local Tab6 = window:NewTab("Credits")

local Tab6Section = Tab6:NewSection("LocalPlayer Made By BkuIl Hub")

local Tab6Section = Tab6:NewSection("Slap Aura Made By Anakin")

---Buttons

---Toggles

---Sliders

Tab1Section:NewSlider("WalkSpeed", "16-70 WalkSpeed", 70, 16, function(s) -- 70 (MaxValue) | 0 (MinValue)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s

end)

Tab1Section:NewSlider("JumpPower", "50-200 JumpPower", 200, 50, function(s) -- 200 (MaxValue) | 0 (MinValue)

    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s

end)

Tab1Section:NewSlider("Fov", "20-120", 120, 20, function(v) -- 120 (MaxValue) | 0 (MinValue)

    workspace.CurrentCamera.FieldOfView = v

end)

Tab2Section:NewToggle("Slap Aura", "Slap All People", function(bool)

    

        getgenv().SlapAura = bool

            if bool == true then

                while getgenv().SlapAura do

                    task.wait(.005)

                        

                        for Index, Player in next, game.Players:GetPlayers() do

                            

                            if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then

                                

                                if Player.Character:FindFirstChild("Head") then

                                    

                                if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then

                                    

                                    if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                                    local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude

                                    

                                    if 25 >= Magnitude then

                                        

                                        

                                        if getGlove() == "Default" or getGlove() == "Extended" then 

                                            

                                            game:GetService("ReplicatedStorage").b:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "Snow" then

                                            

                                            game:GetService("ReplicatedStorage").SnowHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Bull" then 

                                            

                                            game:GetService("ReplicatedStorage").BullHit:FireServer(Player.Character.Head) 

                                            

                                        elseif getGlove() == "Boomerang" then  

                                            

                                            game:GetService("ReplicatedStorage").BoomerangH:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "T H I C K" then

                                            game:GetService("ReplicatedStorage").GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "God's Hand" then

                                            game:GetService("ReplicatedStorage").Godshand:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "Error" then 

                                            

                                            game:GetService("ReplicatedStorage").Errorhit:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "The Flex" then 

                                            

                                             game:GetService("ReplicatedStorage").FlexHit:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "Detonator" then 

                                            

                                            game:GetService("ReplicatedStorage").DetonatorHit:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "Reaper" then

                                            

                                            game.ReplicatedStorage.ReaperHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Killstreak" then

                                            

                                            game.ReplicatedStorage.KSHit:FireServer(Player.Character.Head)

                                        

                                        elseif getGlove() == "Dice" then

                                            

                                            game.ReplicatedStorage.DiceHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Ghost" then

                                            

                                            game.ReplicatedStorage.GhostHit:FireServer(Player.Character.Head)

                                       

                                        elseif getGlove() == "Ice" then

                                            

                                            game.ReplicatedStorage.IceHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Diamond" then

                                            

                                            game.ReplicatedStorage.DiamondHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "ZZZZZZZ" then

                                            

                                            game.ReplicatedStorage.ZZZZZZZHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Brick" then

                                            

                                            game.ReplicatedStorage.BrickHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Pull" then

                                            

                                            game.ReplicatedStorage.PullHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Flash" then

                                            

                                            game.ReplicatedStorage.FlashHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Blocked" then

                                            

                                            game.ReplicatedStorage.BlockedHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Spy" then

                                            

                                            game.ReplicatedStorage.SpyHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Plague" then

                                            

                                            game.ReplicatedStorage.PlagueHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Bubble" then

                                            

                                            game.ReplicatedStorage.BubbleHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Charge" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Gummy" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Squid" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "RNG" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Tycoon" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Baller" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Tableflip" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Booster" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Shield" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Track" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Goofy" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Confusion" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Elude" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Glitch" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Snowball" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "🗿" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Obby" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Voodoo" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Leash" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Flamarang" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Kinetic" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Berserk" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Rattlebones" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Chain" then

                                            

                                            game.ReplicatedStorage.GeneralHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Spring" then

                                            

                                            game.ReplicatedStorage.springhit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Swapper" then

                                            

                                            game.ReplicatedStorage.HitSwapper:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Thanos" then

                                            

                                            game.ReplicatedStorage.ThanosHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Stun" then

                                            

                                            game.ReplicatedStorage.HtStun:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Za Hando" then

                                            

                                            game.ReplicatedStorage.zhramt:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Fort" then

                                            

                                            game.ReplicatedStorage.Fort:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Magnet" then

                                            

                                            game.ReplicatedStorage.MagnetHIT:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Pusher" then

                                            

                                            game.ReplicatedStorage.PusherHit:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Anchor" then

                                            

                                            game.ReplicatedStorage.hitAnchor:FireServer(Player.Character.Head)

                                            

                                        elseif getGlove() == "Space" then

                                            

                                            game.ReplicatedStorage.HtSpace:FireServer(Player.Character.Head)

                                        

                                        end

                                        

                                        

                                end

                                    

                                    end

                            end

                                

                                end

                        end

                        

                            

                            

                        end

                    

                        

                

                end

                

                

            end

    

    end)

      

local Tab2Section = Tab2:NewSection("Spam Glove Sound Anonying")

Tab2Section:NewButton("Spam Ghost Sound","This Sound Is Anonying",function()

 

 for x = 1,5 do

for x = 1,math.huge do

    

    wait(.00000005)

    

        game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

    

    

    

    

    

    end

    end

end)    

 

 local Tab2Section = Tab2:NewSection("Anti Glove Ability")

 

 Tab2Section:NewToggle("Anti Obby KillBrick", "You No Longer Take Damage", function(a)

    getgenv().disable = a

     if getgenv().disable == true then

      for i,v in pairs(game.Players:GetChildren()) do

        if v.leaderstats.Glove.Value == "Obby" then

          disable(v.Name, false)

        end

     end

   else

       for i,v in pairs(game.Players:GetChildren()) do

        if v.leaderstats.Glove.Value == "Obby" then

          disable(v.Name, true)

        end

     end

  end

end)

end)

Tab3Section:NewToggle("Slapple AutoFram", "Collect All Slapple", function(bool)

            getgenv().Slapple = bool

                if bool == true then

                    while getgenv().Slapple do

                        wait(.001)

                        for Index, Slapple in next, workspace.Arena.island5.Slapples:GetDescendants() do

                            if Slapple.ClassName == "TouchTransmitter" then

                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Slapple.Parent, 0)

                                firetouchinterest(game.Players.LocalPlayer.Character.Head, Slapple.Parent, 1)

                                

                            end

                        end

                    end

                end

    end)

    

Tab4Section:NewButton("Auto Get Tycoon","Free Tycoon",function()

    repeat task.wait(.005)

    

        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0,-2,0)

        

    until game.Players.LocalPlayer.PlayerGui.PlateIndicator.TextLabel.Text == "Plate Counter: 600"

end)

Tab4Section:NewButton("Auto Get Elude", "Free Elude", function()

    local teleportFunc = queueonteleport or queue_on_teleport or syn and syn.queue_on_teleport

if teleportFunc then

    teleportFunc([[

        if not game:IsLoaded() then

            game.Loaded:Wait()

        end

        

        local localPlr = game:GetService("Players").LocalPlayer

        repeat wait() until localPlr

        

        game:GetService("RunService").RenderStepped:Connect(function()

            localPlr.Character.HumanoidRootPart.CFrame = CFrame.new(-502.336, 14.228, -179.597)

        end)

    ]])

end

game:GetService("TeleportService"):Teleport(11828384869)

end)

Tab4Section:NewButton("Auto Get Redacted","Free Redacted",function()

    local Door = 1

if not game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850) and 5000 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

repeat

    

task.wait(.25)

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.PocketDimension.Doors[Door].CFrame

Door = Door + 1

print(Door)

wait(5)

    

until game:GetService("BadgeService"):UserHasBadgeAsync(game.Players.LocalPlayer.UserId, 2124847850)

else 

print("YOU ALREADY HAVE [ R E D A C T E D ] !!")

print("OR YOU DONT HAVE 5K SLAPS")

end

end)
