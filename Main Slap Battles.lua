
        local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/file/main/Glove.lua"))()

	local function getGlove()	    

	    return game.Players.LocalPlayer.leaderstats.Glove.Value

	    

	end

	

	

    local Hittables = {"Right Leg", "Left Leg", "Torso", "Head"}

    

    local Hit = math.random(#Hittables)

    

    local toHit = Hittables[Hit]


	local pathfindingService = game:GetService("PathfindingService")



local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local window = kavoUi.CreateLib("Slap Battles Main/BkuIl Hub","Ocean")

---Tabs

local Tab1 = window:NewTab("LocalPlayer")

local Tab1Section = Tab1:NewSection("LocalPlayer")

local Tab2 = window:NewTab("Combat")

local Tab2Section = Tab2:NewSection("Admin Command")

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

Tab2Section:NewButton("Infinite Yield","FE Infinite Yield",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

local Tab2Section = Tab2:NewSection("Fly Script")

Tab2Section:NewButton("Fly Gui V3","FE FLY GUI V3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/Fly-Gui-V3.lua/main/Fly%20Gui%20V3.lua"))()
end)

local Tab2Section = Tab2:NewSection("Main")

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

                                        

                                        

                                        shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))

                                        

                                        

                                end

                                    

                                    end

                            end

                                

                                end

                        end

                        

                            

                            

                        end

                    

                        

                

                end

                

                

            end

    

    end)

Tab2Section:NewToggle("Auto Enter Arena", "This Keep Tp on arena while die", function(bool)
		
        getgenv().autoJoin = bool

            if bool == true then

                while getgenv().autoJoin do

                    wait()

                        

                        repeat task.wait() until game.Players.LocalPlayer.Character

                    

                    

                        if not game.Players.LocalPlayer.Character:FindFirstChild("entered") and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then

                            

                            repeat task.wait(.005)

                                

                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 0)

                            

                            firetouchinterest(game.Players.LocalPlayer.Character:WaitForChild("Head"), workspace.Lobby.Teleport1.TouchInterest.Parent, 1)

                            

                            until game.Players.LocalPlayer.Character:FindFirstChild("entered")

                            

                        end

                        

                        

                end

            end

    

    end)
		
local Tab2Section = Tab2:NewSection("Spam Stuff Sound Anonying")

Tab2Section:NewButton("Spam Ghost Sound","This Sound Is Anonying",function()
 for x = 1,5 do

for x = 1,math.huge do

    

    wait(.00000005)

    

        game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

    

    

    

    

    

    end

    end

end)    

 

 local Tab2Section = Tab2:NewSection("Anti Stuff")

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
