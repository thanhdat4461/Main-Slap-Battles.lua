
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

local Tab1Section = Tab1:NewSection("Setting")

local Tab2 = window:NewTab("Combat")

local Tab2Section = Tab2:NewSection("Admin Command")

local Tab3 = window:NewTab("AutoFram")

local Tab3Section = Tab3:NewSection("Fram Slap")

local Tab4 = window:NewTab("Badges")

local Tab4Section = Tab4:NewSection("Free Glove")

local Tab5 = window:NewTab("Discord Server Link")

local Tab5Section = Tab5:NewSection("Original BkvIl Hub Server")

local Tab6 = window:NewTab("Credits")

local Tab6Section = Tab6:NewSection("LocalPlayer Made By BkuIl Hub")

local Tab6Section = Tab6:NewSection("Slap Aura Made By Anakin")

local Tab6Section = Tab6:NewSection("Auto Get Tycoon Made By Anakin")

local Tab6Section = Tab6:NewSection("Auto Get Elude Made By BluB")

local Tab6Section = Tab6:NewSection("Auto Get REDACTED Made By Anakin")

local Tab6Section = Tab6:NewSection("Auto Enter Arena Made By Hackedman")

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

Tab1Section:NewButton("Click TP Tools","FE Click TP",function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "Equip to Click TP" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
end)

Tab1Section:NewButton("AntiLag","FE AntiLag",function()
local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.

local g = game

local w = g.Workspace

local l = g.Lighting

local t = w.Terrain

t.WaterWaveSize = 0

t.WaterWaveSpeed = 0

t.WaterReflectance = 0

t.WaterTransparency = 0

l.GlobalShadows = false

l.FogEnd = 9e9

l.Brightness = 0

settings().Rendering.QualityLevel = "Level01"

for i, v in pairs(g:GetDescendants()) do

    if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then

        v.Material = "Plastic"

        v.Reflectance = 0

    elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then

        v.Transparency = 1

    elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then

        v.Lifetime = NumberRange.new(0)

    elseif v:IsA("Explosion") then

        v.BlastPressure = 1

        v.BlastRadius = 1

    elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") then

        v.Enabled = false

    elseif v:IsA("MeshPart") then

        v.Material = "Plastic"

        v.Reflectance = 0

        v.TextureID = 10385902758728957

    end

end

for i, e in pairs(l:GetChildren()) do

    if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then

        e.Enabled = false

    end

end
end)

Tab1Section:NewButton("AntiAfk","FE ANTIAFK",function()
wait(0.5)local ba=Instance.new("ScreenGui")

local ca=Instance.new("TextLabel")local da=Instance.new("Frame")

local _b=Instance.new("TextLabel")local ab=Instance.new("TextLabel")ba.Parent=game.CoreGui

ba.ZIndexBehavior=Enum.ZIndexBehavior.Sibling;ca.Parent=ba;ca.Active=true

ca.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ca.Draggable=true

ca.Position=UDim2.new(0.698610067,0,0.098096624,0)ca.Size=UDim2.new(0,304,0,52)

ca.Font=Enum.Font.SourceSansSemibold;ca.Text="Anti Afk Kick Script"ca.TextColor3=Color3.new(0,1,1)

ca.TextSize=22;da.Parent=ca

da.BackgroundColor3=Color3.new(0.196078,0.196078,0.196078)da.Position=UDim2.new(0,0,1.0192306,0)

da.Size=UDim2.new(0,304,0,107)_b.Parent=da

_b.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)_b.Position=UDim2.new(0,0,0.800455689,0)

_b.Size=UDim2.new(0,304,0,21)_b.Font=Enum.Font.Arial;_b.Text="Made by XxSwordmaster_2xX"

_b.TextColor3=Color3.new(1,1,1)_b.TextSize=20;ab.Parent=da

ab.BackgroundColor3=Color3.new(0.176471,0.176471,0.176471)ab.Position=UDim2.new(0,0,0.158377379,0)

ab.Size=UDim2.new(0,304,0,44)ab.Font=Enum.Font.ArialBold;ab.Text="Status: Script Started"

ab.TextColor3=Color3.new(1,1,1)ab.TextSize=20;local bb=game:service'VirtualUser'

game:service'Players'.LocalPlayer.Idled:connect(function()

bb:CaptureController()bb:ClickButton2(Vector2.new())

ab.Text="You went idle and ROBLOX tried to kick you but we reflected it!"wait(2)ab.Text="Script Re-Enabled"end)
end)
		
Tab2Section:NewButton("Infinite Yield","FE Infinite Yield",function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Tab2Section:NewButton("Fates Admin","FE Fates",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/fatesc/fates-admin/main/main.lua"))()
end)
		
local Tab2Section = Tab2:NewSection("Fly Script")

Tab2Section:NewButton("Fly Gui V2","FE FLY GUI V2",function()
--ARCEUS X FLY V2 SCRIPT 

loadstring("\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\40\39\104\116\116\112\115\58\47\47\103\105\115\116\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\109\101\111\122\111\110\101\89\84\47\98\102\48\51\55\100\102\102\57\102\48\97\55\48\48\49\55\51\48\52\100\100\100\54\55\102\100\99\100\51\55\48\47\114\97\119\47\101\49\52\101\55\52\102\52\50\53\98\48\54\48\100\102\53\50\51\51\52\51\99\102\51\48\98\55\56\55\48\55\52\101\98\51\99\53\100\50\47\97\114\99\101\117\115\37\50\53\50\48\120\37\50\53\50\48\102\108\121\37\50\53\50\48\50\37\50\53\50\48\111\98\102\108\117\99\97\116\111\114\39\41\44\116\114\117\101\41\41\40\41\10\10")()
end)
		
Tab2Section:NewButton("Fly Gui V3","FE FLY GUI V3",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/Fly-Gui-V3.lua/main/Fly%20Gui%20V3.lua"))()
end)
		
local Tab2Section = Tab2:NewSection("Main")

Tab2Section:NewToggle("Slap Aura", "Automatically Slap People", function(bool)

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

Tab2Section:NewToggle("Auto Enter Arena", "Automatically Enter Arean When die", function(bool)
		
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
		
local Tab2Section = Tab2:NewSection("Spam Stuff Sound")

Tab2Section:NewButton("Spam Ghost Sound","This Sound Is Anonying",function()
 for x = 1,5 do

for x = 1,math.huge do

    

    wait(.00000005)

    

        game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

    

    

    

    

    

    end

    end

end)    

Tab2Section:NewToggle("Spam Error Sound","Ghost + Error = More Anonying",function(bool)

        errorSpam = bool

        

        if bool == true then

            

            while errorSpam do

                

                task.wait()

                

                game.ReplicatedStorage.ErrorDeath:FireServer()

                

            end

        end

        

    end)

local Tab2Section = Tab2:NewSection("Anti Stuff")

Tab2Section:NewToggle("Anti Reaper","No Longer Dying On Reaper User",function(bool)
		
        getgenv().AntiReaper = bool

        

        if bool == true then

            

            while getgenv().AntiReaper do

            

                wait(.001)

            

                for i,v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do

                    if v.Name == "DeathMark" then

                    game:GetService("ReplicatedStorage").ReaperGone:FireServer(game:GetService("Players").LocalPlayer.Character.DeathMark)

                    game:GetService("Lighting"):WaitForChild("DeathMarkColorCorrection"):Destroy() 

                    end 

        

                end

            

            end

            

        end

        

    end)
		
Tab2Section:NewToggle("Anti Void","No Longer Fall On Void",function(noVoid)

        if noVoid == true then

            

            for i,v in pairs(game.Workspace:GetDescendants()) do

                

                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then

           

                    if v.CanCollide == false then

               

                        v.CanCollide = true

               

               

                    end

           

                end

                

            end

            

            else

                

            for i,v in pairs(game.Workspace:GetDescendants()) do

                

                if v.Name == "dedBarrier"  or v.Name == "ArenaBarrier" or v.Name == "DEATHBARRIER" or v.Name == "DEATHBARRIER2" then

           

                    if v.CanCollide == true then

               

                        v.CanCollide = false

               

               

                    end

           

                end

                

            end

        

        end

    

    end)

Tab3Section:NewToggle("Slapple AutoFram", "Automatically Collect All Slapple", function(bool)

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

Tab4Section:NewButton("Auto Get REDACTED","Free REDACTED",function()

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

Tab4Section:NewButton("Auto Get Fish","Free Fish",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/auto-get-fish.lua/main/auto%20get%20fish.lua"))()
end)

Tab4Section:NewButton("Auto Get Voodoo","Free Voodoo",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/auto-get-voodoo.lua/main/auto%20get%20voodoo.lua"))()
end)

Tab5Section:NewButton("BkvIl Hub Discord Link","This My Server",function()
		
        if setclipboard then

            

            setclipboard("https://discord.gg/KMkc2vSf")

            

        end

        

    end)
		
