
    local Gloves = loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/file/main/Glove.lua"))()

	local function getGlove()	    

	    return game.Players.LocalPlayer.leaderstats.Glove.Value

	    

	end

	

	

    local Hittables = {"Right Leg", "Left Leg", "Torso", "Head"}

    

    local Hit = math.random(#Hittables)

    

    local toHit = Hittables[Hit]

	local pathfindingService = game:GetService("PathfindingService")



local Namecall

Namecall = hookmetamethod(game, '__namecall', function(self, ...)

   if getnamecallmethod() == 'FireServer' and tostring(self) == 'Ban' then

       return

   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'WalkSpeedChanged' then

       return

   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'AdminGUI' then

       return

   end

   return Namecall(self, ...)

end)



local kavoUi = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local window = kavoUi.CreateLib("Main Slap Battles","Ocean")

---Tabs

local Tab1 = window:NewTab("Player")

local Tab1Section = Tab1:NewSection("Setting")

local Tab2 = window:NewTab("Combat")

local Tab2Section = Tab2:NewSection("Admin Command")

local Tab3 = window:NewTab("AutoFram")

local Tab3Section = Tab3:NewSection("Slap Fram")

local Tab4 = window:NewTab("Badges")

local Tab4Section = Tab4:NewSection("Free Glove")

local Tab5 = window:NewTab("Equip All Glove")

local Tab5Section = Tab5:NewSection("Normal Glove")

local Tab6 = window:NewTab("Credits")

local Tab6Section = Tab6:NewSection("Player Made By ThAGqoBSGE#2962")

local Tab6Section = Tab6:NewSection("Slap Aura Made By Anakin#3568")

local Tab6Section = Tab6:NewSection("Auto Get Tycoon Made By Anakin#3568")

local Tab6Section = Tab6:NewSection("Auto Get Elude Made By BluB#9867")

local Tab6Section = Tab6:NewSection("Auto Get REDACTED Made By Anakin#3568")

local Tab6Section = Tab6:NewSection("Auto Enter Arena Made By hackedman#9917")

local Tab6Section = Tab6:NewSection("Baller AutoFram Made By Anakin#3568")

local Tab6Section = Tab6:NewSection("Auto Get Voodoo Made By Anakin#3568")

local Tab6Section = Tab6:NewSection("Auto Get Fish Made By Anakin#3568/Other")

local Tab6Section = Tab6:NewSection("Anti Ragdoll By Anakin#3568 (They Finally Add This)")

local Tab6Section = Tab6:NewSection("Teleport All Place Made By ThAGqoBSGE#2962")

local Tab6Section = Tab6:NewSection("Equip All Glove By ThAGqoBSGE#2962")

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

Tab1Section:NewButton("Full Bright", "FE FULLBRIGHT", function()
local Light = game:GetService("Lighting")



function dofullbright()

Light.Ambient = Color3.new(1, 1, 1)

Light.ColorShift_Bottom = Color3.new(1, 1, 1)

Light.ColorShift_Top = Color3.new(1, 1, 1)

end



dofullbright()



Light.LightingChanged:Connect(dofullbright)
end)

local Tab1Section = Tab1:NewSection("Teleport All Place")

Tab1Section:NewButton("Teleport To Main Island","Teleport On Main Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -6 ,0)
end)

Tab1Section:NewButton("Teleport To Default Island","Teleport On Default Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(121, 360 , -2)
end)

Tab1Section:NewButton("Teleport To #1 Island","Teleport On Other Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0, -6 , 210) 
end)

Tab1Section:NewButton("Teleport To #2 Island","Teleport On Other Island Again",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-5, -6 , -210) 
end)

Tab1Section:NewButton("Teleport To #3 Island","Teleport On Other Island Also",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-215, -6 , 1) 
end)

Tab1Section:NewButton("Teleport To Moai Island","Teleport On Moai Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(216, -16 , 1)
end)

Tab1Section:NewButton("Teleport To Slapple Island","Teleport On Slapple Island",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-395, 50 , -15)
end)

Tab1Section:NewButton("Teleport To Plate","My First Script",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0, 2 ,0)
end)

Tab1Section:NewButton("Teleport To Lobby","Teleport On Lobby",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-550, 328 , -2)
end)

Tab1Section:NewButton("Teleport To Tournament","Teleport On Tournament",function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(3031, 145 , 3)
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

local Tab2Section = Tab2:NewSection("KeyBoard Script")

Tab2Section:NewButton("KeyBoard (Normal)","Use KeyBoard Like PC",function(bool)
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)
		
local Tab2Section = Tab2:NewSection("Main")

Tab2Section:NewToggle("Auto Invisible (OP)","Someone Can't See You When Invisible",function(bool)

        autoInvis = bool

        

        if bool == true then

            

            game.Players.LocalPlayer.CharacterAdded:Connect(function()

                

                if autoInvis == true and 666 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

                    

                    task.wait()

                    

                    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

                    

                    task.wait(.1)

                    

                    

                    local gloveClick = game.Players.LocalPlayer.leaderstats.Glove.Value

                    

                    task.wait(.2)

                    

                    fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)

                    

                    task.wait(.2)

                    

                    game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

                    

                    task.wait(.2)

                    

                    fireclickdetector(game.Workspace.Lobby[gloveClick].ClickDetector)

                    

                end

                

            end)

            

        end

    

    end)

Tab2Section:NewToggle("Auto Remove Name","Automatically Remove Name When Die",function(bool)

        Auto_Remove = bool

        

        if bool == true then

        

        game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()

            

            task.wait()

            

            game.Players.LocalPlayer.CharacterAdded:Connect(function()

                

                if Auto_Remove == true then

                    

                repeat task.wait()

                    

                until game.Players.LocalPlayer.Character:FindFirstChild("Head")

                

                game.Players.LocalPlayer.Character:FindFirstChild("Head").Nametag.TextLabel:Destroy()

                    

                end

                

            end)

    

        end

        

        

    end)

Tab2Section:NewToggle("Invisible Reverse [FE]","IDK to Type",function(bool)

        Invis_Reverse = bool

        

        if bool == true then

            

        

        

        while Invis_Reverse do

        

            repeat wait(.005) until game.Players.LocalPlayer.Character:FindFirstChild("SelectionBox", 1) and game.Players.LocalPlayer.Character:FindFirstChild("Head"):FindFirstChild("UnoReverseCard")

            game.Players.LocalPlayer.Character.Head["UnoReverseCard"]:Destroy()

            for i,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do

    

                if v.Name == "SelectionBox" then

                

                v:Destroy()

        

                end

            

            end

        

        end

        

        end

        

    end)

Tab2Section:NewToggle("Golden Effect [FE]","Automatically Golden Abilites Enable When Die",function(bool)

        autoGod = bool

        

        if bool == true then

            

            game.Players.LocalPlayer.CharacterAdded:Connect(function()

                

                if autoGod == true and 2500 <= game.Players.LocalPlayer.leaderstats.Slaps.Value then

                    

                    task.wait()

                    

                    game.ReplicatedStorage.Ungoldify:FireServer(true)

                    

                    task.wait(.1)

                    

                    

                    local gloveClick = game.Players.LocalPlayer.leaderstats.Glove.Value

                    

                    task.wait(.2)

                    fireclickdetector(game.Workspace.Lobby.Golden.ClickDetector)

                    

                    task.wait(.2)

                    

                    game.ReplicatedStorage.Goldify:FireServer(true)

                    

                    task.wait(.2)

                    

                    fireclickdetector(game.Workspace.Lobby[gloveClick].ClickDetector)

                    

                end

                

            end)

            

        end

    

    end)

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

Tab2Section:NewToggle("Disable Gube Of Death","No Longer Ded On Gube Of Death",function(bool)

        if bool == true then

        

        if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then

            

        workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = false

        

        end

        

        else

            

            if game.Workspace:FindFirstChild("the cube of death(i heard it kills)", 1) then

                

                workspace.Arena.CubeOfDeathArea["the cube of death(i heard it kills)"].CanTouch = true

                

            end

        end

    end)

Tab2Section:NewToggle("Disable Death Barriers","IDK What I Do Type This",function(bool)

        if bool == true then

        

        if workspace:FindFirstChild("dedBarrier") and workspace:FindFirstChild("DEATHBARRIER") and workspace:FindFirstChild("DEATHBARRIER2") then

    

            workspace.DEATHBARRIER.CanTouch = false

            workspace.DEATHBARRIER2.CanTouch = false

            workspace.dedBarrier.CanTouch = false

        

        else

            

            print("No Death Barriers")

        

        end

        

        else

            

            workspace.DEATHBARRIER.CanTouch = true

            workspace.DEATHBARRIER2.CanTouch = true

            workspace.dedBarrier.CanTouch = true

        

        

        end

        

    end)

local Tab2Section = Tab2:NewSection("Spam Stuff Sound")

Tab2Section:NewButton("Spam Ghost Ability","This Sound Is Anonying",function()
 for x = 1,5 do

for x = 1,math.huge do

    

    wait(.00000005)

    

        game.ReplicatedStorage.Ghostinvisibilityactivated:FireServer()

    game.ReplicatedStorage.Ghostinvisibilitydeactivated:FireServer()

    

    

    

    

    

    end

    end

end)    

Tab2Section:NewToggle("Spam Error Ability","Ghost + Error = More Anonying",function(bool)

        errorSpam = bool

        

        if bool == true then

            

            while errorSpam do

                

                task.wait()

                

                game.ReplicatedStorage.ErrorDeath:FireServer()

                

            end

        end

        

    end)

Tab2Section:NewToggle("Spam Thanos Ability","Another Script Spam Yea",function(bool)

        autoThanos = bool

        

        if bool == true then

            

            while autoThanos do

                

                task.wait()

                if getGlove() == "Thanos" then

    

                    task.wait()

                    

                    game.ReplicatedStorage.Illbeback:FireServer()

                

                end

            end

    

        end

        

    end)

Tab2Section:NewToggle("Spam Sleep Ability","Another Spam Sound Also",function(bool)

        spamSleep = bool

        

        if bool == true then

            

            while spamSleep do

                

                task.wait()

                

                if getGlove() == "ZZZZZZZ" then

                    

                    task.wait(.1)

                    

                    game:GetService("ReplicatedStorage").ZZZZZZZSleep:FireServer()

                    

                end

                

                

            end

            

        end

        

    end)

Tab2Section:NewButton("Spam Poing Ability","Poing Is anonying",function()
while true and task.wait() do

    

    game.ReplicatedStorage.GeneralAbility:FireServer()

    

end
end)

Tab2Section:NewButton("Spam Berserk Ability","Spam Berserk + Poing",function()
local ohInstance1 = game.Players.LocalPlayer.Character:WaitForChild("Berserk")

for x = 1,10 do

    

    task.wait()

    game:GetService("ReplicatedStorage").BerserkCharge:FireServer(ohInstance1)

end
end)

local Tab2Section = Tab2:NewSection("Anti Stuff")

Tab2Section:NewToggle("Anti Ragdoll","No Longer Getting Ragdoll By Slap",function(bool)

        antiRagdoll = bool

        

        if bool == true then

        

    

        while antiRagdoll do

    

        task.wait()

        

        if not spamSleep  and not allFarming and not Farming  then

            

            

        task.wait()

        

        local Character = game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)

    

        Character:WaitForChild("Ragdolled").Changed:Connect(function()

        

            if antiRagdoll == true  and Character:WaitForChild("Ragdolled").Value == true then

            

            repeat task.wait()

                

            Character:FindFirstChild("Torso").Anchored = true

                

            until Character:FindFirstChild("Torso") == nil or Character:WaitForChild("Ragdolled").Value == false

            

            Character:FindFirstChild("Torso").Anchored = false

            end

        

        end)

     

    

end

            

        end

        end

    

    end)

Tab2Section:NewToggle("Anti Mail","No Longer Seen Mali Screen",function(bool)

        antiMail = bool

        

        if bool == true then

            

            game.Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(UI)

                

                if antiMail == true then

                    

                    if UI.Name == "MailPopup" then

                    

                        UI.Frame.Visible = false

                        

                        task.wait()

                        

                        game.Players.LocalPlayer.Character.Head.MailIcon:Destroy()

                    

                    end

                

                end

                

            end)

        else

        if game.Players.LocalPlayer.PlayerGui:FindFirstChild("MailPopup") then

            

            game.Players.LocalPlayer.PlayerGui.MailPopup.Frame.Visible = true

        

            task.wait()

            

            

        end

        

        end

        

    end)

Tab2Section:NewToggle("Anti Squid","No Longer Getting Black Screen",function(bool)

        AntiSquid = bool

        

        

        if bool == true then

            

            while AntiSquid do

                

            task.wait()

            

            for i,v in pairs(game.Players.LocalPlayer.PlayerGui.SquidInk:GetChildren()) do

                

                if v.Parent then

                    

                    v:Destroy()

                    

                end

                

            end

            

            end

        

        end

        

        

    end)

function disable(username, cantouch)

    warn(username)

    if workspace:FindFirstChild("ObbyItem"..username.."LavaBlock") then

       warn("ObbyItem"..username.."LavaBlock")

       workspace:FindFirstChild("ObbyItem"..username.."LavaBlock").CanTouch = cantouch

    elseif workspace:FindFirstChild("ObbyItem"..username.."LavaSpinner") then

    warn("ObbyItem"..username.."LavaSpinner")

    workspace:FindFirstChild("ObbyItem"..username.."LavaSpinner").CanTouch = cantouch

 end

end

Tab2Section:NewToggle("Anti KillBrick","No Longer Dying Form KillBrick Obby user",function(a)

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

Tab2Section:NewToggle("Anti Stun","No Longer Getting Stun",function(bool)

        antiStun = bool

        

        if bool == true then

            

            while antiStun do

                

            task.wait()

            

            if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character.Humanoid.PlatformStand == true and  not getgenv().Farming and not getgenv().allFarming and not game.Players.LocalPlayer.Character.Ragdolled.Value == true and game.Workspace:FindFirstChild("Shockwave") then

                

                game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false

                

            end

            

            end

            

        end

        

    end)


Tab2Section:NewToggle("Anti Booster","No Longer Getting Banned Form Booster Bug",function(bool)

        antiBooster = bool

        

        

        if bool == true then

            

            if game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1) then

            

                game.Workspace[game.Players.LocalPlayer.Name]:FindFirstChild("BoosterObject", 1):Destroy()

            

            end

        

            task.wait()

            

            game.Workspace[game.Players.LocalPlayer.Name].DescendantAdded:Connect(function(v)

                

                if antiBooster == true then

                    

                    if v.Name == "BoosterObject" then

                        

                        task.wait(.1)

                        v:Destroy()

                        

                    end

                    

                end

                

            end)

            

        end

        

    end)

Tab2Section:NewToggle("Anti Hallow-Jack","No Longer Getting Attack Form Hallow Jack User",function(bool)

        antiHallow = bool

        

        if bool == true then

            

            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Disabled = true

        

        else

        

            game.Players.LocalPlayer.PlayerScripts.HallowJackAbilities.Enabled = true

        

        

        end

        

    end)

Tab2Section:NewToggle("Anti Za Hando","No Longer Dying Form Za Hando User",function(bool)

        getgenv().AntiZaHando = bool

        

        if bool == true then

            

            while getgenv().AntiZaHando do

                

                wait(.001)

                

                for i,v in pairs(game.Workspace:GetChildren()) do

                    

                    if v.ClassName == "Part" and v.Name == "Part" then

                        

                        v:Destroy()

                    

                    end

                    

                end

                

            end

        end

        

    end)

Tab2Section:NewToggle("Anti Pusher","No Longer Fall Form Pusher User",function(bool)

        getgenv().AntiPusher = bool

        

        if bool == true then

            

            while getgenv().AntiPusher do

            

                wait(.001)

            

                for i,v in pairs(game.Workspace:GetChildren()) do

        

                    if v.Name == "wall" then

            

                    v.CanCollide = false

            

        

                    end

        

        

                end

            

            end

            

        end

        

    end)

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

Tab2Section:NewButton("Anti Bubble?","No Longer Getting Bubble IDK what i  do type",function()
while true do

wait()

for i,v in pairs(workspace:GetChildren()) do

   if v.Name == "BubbleObject" then

     if v:FindFirstChild("Weld") then

      v:FindFirstChild("Weld"):Destroy()

   end

  end

 end

end

end)

Tab2Section:NewToggle("Anti MegaRock / Custom","No Longer Dying On Megarock or custom",function(bool)

        AntiRock = bool

        

        if bool == true then

            

            while AntiRock do

                

                task.wait(.1)

                

        for _, Instance in pairs(game.Workspace:GetDescendants()) do

                    

            if Instance.Name == "rock" and Instance.CanTouch == true then

                Instance.CanTouch = false

                        

                Instance.CanQuery = false

                        

            end

                    

                    

        end

                

            end

            

        else

        task.wait(.1)  

        

        for _, Instance in pairs(game.Workspace:GetDescendants()) do

                    

            if Instance.Name == "rock" and Instance.CanTouch == false then

                

                task.wait()

                

                Instance.CanTouch = true

                        

                Instance.CanQuery = true

                        

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

Tab3Section:NewButton("Baller AutoFram","Get 1k Of Slap In Less Minutes",function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/thanhdat4461/Slap-Fram-Baller.lua/main/Slap%20Fram%20Baller.lua"))()
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

local Tab4Section = Tab4:NewSection("Free Any Badge")

Tab4Section:NewButton("Duck Badges","Free Duck Badge",function()
fireclickdetector(game:GetService("Workspace")["Arena"]["default island"]["Rubber Ducky"].ClickDetector);
end)

Tab4Section:NewButton("The Lone Orange Badges", "Free Orange Badges", function()
fireclickdetector(game:GetService("Workspace")["Arena"]["island5"]["Orange"].ClickDetector);
end)

Tab4Section:NewButton("Court Evidence Badges","Free Court Evidence Badge",function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["Scene"]["knofe"].ClickDetector);
end)

Tab4Section:NewButton("Brazil Badges","Free Brazil Badge",function()
firetouchinterest(game:GetService("Workspace")["Lobby"]["brazil"]["portal"].TouchInterest);
end)

Tab5Section:NewButton("Equip Default (Free Glove Only 0 Slap)", "Automatically Equip Default When Click", function()
fireclickdetector(game.Workspace.Lobby.Default.ClickDetector)
end)

Tab5Section:NewButton("Equip Diamond (Need 45 Slap)", "Automatically Equip Diamond When Click", function()
fireclickdetector(game.Workspace.Lobby.Diamond.ClickDetector)
end)

Tab5Section:NewButton("Equip ZZZZZZZ (Neex 70 Slap)", "Automatically Equip ZZZZZZZ When Click", function()
fireclickdetector(game.Workspace.Lobby.ZZZZZZZ.ClickDetector)
end)

Tab5Section:NewButton("Equip Extended (Need 105 Slap)", "Automatically Equip Extended When Click", function()
fireclickdetector(game.Workspace.Lobby.Extended.ClickDetector)
end)

Tab5Section:NewButton("Equip Brick (Need 150 Slap)", "Automatically Equip Brick When Click", function()
fireclickdetector(game.Workspace.Lobby.Brick.ClickDetector)
end)

Tab5Section:NewButton("Equip Snow (Need 195 Slap)", "Automatically Equip Snow When Click", function()
fireclickdetector(game.Workspace.Lobby.Snow.ClickDetector)
end)

Tab5Section:NewButton("Equip Pull (Need 250 Slap)", "Automatically Equip Pull When Click", function()
fireclickdetector(game.Workspace.Lobby.Pull.ClickDetector)
end)

Tab5Section:NewButton("Equip Flash (Need 315 Slap)", "Automatically Equip Flash When Click", function()
fireclickdetector(game.Workspace.Lobby.Flash.ClickDetector)
end)

Tab5Section:NewButton("Equip Spring (Need 380 Slap)", "Automatically Equip Spring When Click", function()
fireclickdetector(game.Workspace.Lobby.Spring.ClickDetector)
end)

Tab5Section:NewButton("Equip Swapper (Need 420 Slap", "Automatically Equip Swapper When", function()
fireclickdetector(game.Workspace.Lobby.Swapper.ClickDetector)
end)

Tab5Section:NewButton("Equip Bull (Need 520 Slap)", "Automatically Equip Bull When Click", function()
fireclickdetector(game.Workspace.Lobby.Bull.ClickDetector)
end)

Tab5Section:NewButton("Equip Dice (Need 585 Slap)", "Automatically Equip Dice When Click", function()
fireclickdetector(game.Workspace.Lobby.Dice.ClickDetector)
end)

Tab5Section:NewButton("Equip Ghost (Need 666 Slap)", "Automatically Equip Ghost When Click", function()
fireclickdetector(game.Workspace.Lobby.Ghost.ClickDetector)
end)

Tab5Section:NewButton("Equip Thanos (Need 795 Slap)", "Automatically Equip Thanos When Click", function()
fireclickdetector(game.Workspace.Lobby.Thanos.ClickDetector)
end)

Tab5Section:NewButton("Equip Stun (Need 870 Slap)", "Automatically Equip Stun When Click", function()
fireclickdetector(game.Workspace.Lobby.Stun.ClickDetector)
end)

Tab5Section:NewButton("Equip Za Hando (Need 1000 Slap)", "Automatically Equip Za Hando When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["Za Hando"].ClickDetector);
end)

Tab5Section:NewButton("Equip Fort (Need 1075 Slap)", "Automatically Equip Fort When Click", function()
fireclickdetector(game.Workspace.Lobby.Fort.ClickDetector)
end)

Tab5Section:NewButton("Equip Magnet (Need 1125 Slap)", "Automatically Equip Magnet When Click", function()
fireclickdetector(game.Workspace.Lobby.Magnet.ClickDetector)
end)

Tab5Section:NewButton("Equip Pusher (Need 1250 Slap)", "Automatically Equip Pusher When Click", function()
fireclickdetector(game.Workspace.Lobby.Pusher.ClickDetector)
end)

Tab5Section:NewButton("Equip Anchor (Need 1350 Slap)", "Automatically Equip Anchor When Click", function()
fireclickdetector(game.Workspace.Lobby.Anchor.ClickDetector)
end)

Tab5Section:NewButton("Equip Space (Need 1500 Slap)", "Automatically Equip Space When Click", function()
fireclickdetector(game.Workspace.Lobby.Space.ClickDetector)
end)

Tab5Section:NewButton("Equip Boomerang (Need 1625 Slap)", "Automatically Equip Boomerang When Click", function()
fireclickdetector(game.Workspace.Lobby.Boomerang.ClickDetector)
end)

Tab5Section:NewButton("Equip Dream (Need 1750 Slap)", "Automatically Equip Dream When Click", function()
fireclickdetector(game.Workspace.Lobby.Dream.ClickDetector)
end)

Tab5Section:NewButton("Equip Mail (Need 2000 Slap)", "Automatically Equip Mail When Click", function()
fireclickdetector(game.Workspace.Lobby.Mail.ClickDetector)
end)

Tab5Section:NewButton("Equip T H I C K (Need 2250 Slap)", "Automatically Equip T H I C K When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["T H I C K"].ClickDetector);
end)

Tab5Section:NewButton("Equip Golden (Need 2500 Slap)", "Automatically Equip Golden When Click", function()
fireclickdetector(game.Workspace.Lobby.Golden.ClickDetector)
end)

Tab5Section:NewButton("Equip Squid (Need 2750 Slap)", "Automatically Equip Squid When Click", function()
fireclickdetector(game.Workspace.Lobby.Squid.ClickDetector)
end)

Tab5Section:NewButton("Equip Cheeky (Need 3000 Slap)", "Automatically Equip Cheeky When Click", function()
fireclickdetector(game.Workspace.Lobby.Cheeky.ClickDetector)
end)

Tab5Section:NewButton("Equip Reaper (Need 3500 Slap)", "Automatically Equip Reaper When Click", function()
fireclickdetector(game.Workspace.Lobby.Reaper.ClickDetector)
end)

Tab5Section:NewButton("Equip Replica (Need 4000 Slap)", "Automatically Equip Replica When Click", function()
fireclickdetector(game.Workspace.Lobby.Replica.ClickDetector)
end)

Tab5Section:NewButton("Equip Defense (Need 4500 Slap)", "Automatically Equip Defense When Click", function()
fireclickdetector(game.Workspace.Lobby.Defense.ClickDetector)
end)

Tab5Section:NewButton("Equip KS/Killstreak (Need 5000 Slap)", "Automatically Equip KS When Click", function()
fireclickdetector(game.Workspace.Lobby.Killstreak.ClickDetector)
end)

Tab5Section:NewButton("Equip Reverse (Need 5500 Slap)", "Automatically Equip Reverse When Click", function()
fireclickdetector(game.Workspace.Lobby.Reverse.ClickDetector)
end)

Tab5Section:NewButton("Equip Shukuchi (Need 6000 Slap)", "Automatically Equip Shukuchi When Click", function()
fireclickdetector(game.Workspace.Lobby.Shukuchi.ClickDetector)
end)

Tab5Section:NewButton("Equip Duelist (Need 6500 Slap)", "Automatically Equip Duelist When Click", function()
fireclickdetector(game.Workspace.Lobby.Duelist.ClickDetector)
end)

Tab5Section:NewButton("Equip woah (Need 7000 Slap)", "Automatically Equip woah When Click", function()
fireclickdetector(game.Workspace.Lobby.woah.ClickDetector)
end)

Tab5Section:NewButton("Equip Ice (Need 7500 Slap)", "Automatically Equip Ice When Click", function()
fireclickdetector(game.Workspace.Lobby.Ice.ClickDetector)
end)

Tab5Section:NewButton("Equip Gummy (Need 7750 Slap)", "Automatically Equip Gummy When Click", function()
fireclickdetector(game.Workspace.Lobby.Gummy.ClickDetector)
end)

Tab5Section:NewButton("Equip Adios (Need 8000 Slap)", "Automatically Equip Adios When Click", function()
fireclickdetector(game.Workspace.Lobby.Adios.ClickDetector)
end)

Tab5Section:NewButton("Equip Blocked (Need 8500 Slap)", "Automatically Equip Blocked When Click", function()
fireclickdetector(game.Workspace.Lobby.Blocked.ClickDetector)
end)

Tab5Section:NewButton("Equip Engineer (Need 9000 Slap)", "Automatically Equip Engineer When Click", function()
fireclickdetector(game.Workspace.Lobby.Engineer.ClickDetector)
end)

Tab5Section:NewButton("Equip Rocky (Need 9500 Slap)", "Automatically Equip Rocky When Click", function()
fireclickdetector(game.Workspace.Lobby.Rocky.ClickDetector)
end)

Tab5Section:NewButton("Equip Conveyor (Need 10000 Slap)", "Automatically Equip Conveyor When Click", function()
fireclickdetector(game.Workspace.Lobby.Conveyor.ClickDetector)
end)

Tab5Section:NewButton("Equip Phantom (Need 11000 Slap)", "Automatically Equip Phantom When Click", function()
fireclickdetector(game.Workspace.Lobby.Phantom.ClickDetector)
end)

Tab5Section:NewButton("Equip Wormhole (Need 12000 Slap)", "Automatically Equip Wormhole When Click", function()
fireclickdetector(game.Workspace.Lobby.Wormhole.ClickDetector)
end)

Tab5Section:NewButton("Equip STOP (Need 13000 Slap)", "Automatically Equip STOP When Click", function()
fireclickdetector(game.Workspace.Lobby.STOP.ClickDetector)
end)

Tab5Section:NewButton("Equip Track (Need 14000 Slap)", "Automatically Equip Track When Click", function()
fireclickdetector(game.Workspace.Lobby.Track.ClickDetector)
end)

Tab5Section:NewButton("Equip Tableflip (Need 15000 Slap)", "Automatically Equip Tableflip When Click", function()
fireclickdetector(game.Workspace.Lobby.Tableflip.ClickDetector)
end)

Tab5Section:NewButton("Equip Shield (Need 16000 Slap)", "Automatically Equip Shield When Click", function()
fireclickdetector(game.Workspace.Lobby.Shield.ClickDetector)
end)

Tab5Section:NewButton("Equip Booster (Need 17000 Slap)", "Automatically Equip Booster When Click", function()
fireclickdetector(game.Workspace.Lobby.Booster.ClickDetector)
end)

Tab5Section:NewButton("Equip Ping Pong (Need 18500 Slap)", "Automatically Equip Ping Pong When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["Ping Pong"].ClickDetector);
end)

Tab5Section:NewButton("Equip Baller (Need 20000 Slap)", "Automatically Equip Baller When Click", function()
fireclickdetector(game.Workspace.Lobby.Baller.ClickDetector)
end)

Tab5Section:NewButton("Equip Error (Need 20000 Slap)", "Automatically Equip Error When Click", function()
fireclickdetector(game.Workspace.Lobby.Error.ClickDetector)
end)

Tab5Section:NewButton("Equip God's Hand (Need 25000 Slap)", "Automatically Equip God's Hand When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["God's Hand"].ClickDetector);
end)

Tab5Section:NewButton("Equip The Flex (Need 100000 Slap)", "Automatically Equip The Flex When Click", function()
fireclickdetector(game.Workspace.Lobby.Flex.ClickDetector)
end)

local Tab5Section = Tab5:NewSection("Other Equip Glove")

Tab5Section:NewButton("Equip OVERKILL (Need Buy Gamepass)", "Automatically Equip OVERKILL When Click", function()
fireclickdetector(game.Workspace.Lobby.OVERKILL.ClickDetector)
end)

Tab5Section:NewButton("Equip Spectator (Need Buy Gamepass)", "Automatically Equip Spectator When Click", function()
fireclickdetector(game.Workspace.Lobby.Spectator.ClickDetector)
end)

Tab5Section:NewButton("Equip CUSTOM (Need Buy Gamepass)", "Automatically Equip CUSTOM When Click", function()
fireclickdetector(game.Workspace.Lobby.CUSTOM.ClickDetector)
end)

Tab5Section:NewButton("Equip Ultra Instinct (Need Buy Gamepass)", "Automatically Equip Ultra Instinct When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["Ultra Instinct"].ClickDetector);
end)

Tab5Section:NewButton("Equip Acrobat (Join Group/Follow Owner For Get Glove)", "Automatically Equip Acrobat When Click", function()
fireclickdetector(game.Workspace.Lobby.Acrobat.ClickDetector)
end)

Tab5Section:NewButton("Equip MEGAROCK (Need Own Badges)", "Automatically Equip MEGAROCK When Click", function()
fireclickdetector(game.Workspace.Lobby.MEGAROCK.ClickDetector)
end)

Tab5Section:NewButton("Equip Plague (Need Own Badges)", "Automatically Equip Plague When Click", function()
fireclickdetector(game.Workspace.Lobby.Plague.ClickDetector)
end)

Tab5Section:NewButton("Equip Hallow Jack (Need Own Badges)", "Automatically Equip Hallow Jack When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["Hallow Jack"].ClickDetector);
end)

Tab5Section:NewButton("Equip [REDACTED] (Need Own Badges)", "Automatically Equip [REDACTED] When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["[REDACTED]"].ClickDetector);
end)

Tab5Section:NewButton("Equip bus (Need Own Badges)", "Automatically Equip bus When Click", function()
fireclickdetector(game.Workspace.Lobby.bus.ClickDetector)
end)

Tab5Section:NewButton("Equip Mitten (Need Own Badges)", "Automatically Equip Mitten When Click", function()
fireclickdetector(game.Workspace.Lobby.Mitten.ClickDetector)
end)

Tab5Section:NewButton("Equip Warp (Need Own Badges)", "Automatically Equip Warp When Click", function()
fireclickdetector(game.Workspace.Lobby.Warp.ClickDetector)
end)

Tab5Section:NewButton("Equip Bubble (Need Own Badges)", "Automatically Equip Bubble When Click", function()
fireclickdetector(game.Workspace.Lobby.Bubble.ClickDetector)
end)

Tab5Section:NewButton("Equip Phase (Need Own Badges)", "Automatically Equip Phase When Click", function()
fireclickdetector(game.Workspace.Lobby.Phase.ClickDetector)
end)

Tab5Section:NewButton("Equip Jet (Need Own Badges)", "Automatically Equip Jet When Click", function()
fireclickdetector(game.Workspace.Lobby.Jet.ClickDetector)
end)

Tab5Section:NewButton("Equip Shard (Need Own Badges)", "Automatically Equip Shard When Click", function()
fireclickdetector(game.Workspace.Lobby.Shard.ClickDetector)
end)

Tab5Section:NewButton("Equip potato (Need Own Badges)", "Automatically Equip potato When Click", function()
fireclickdetector(game.Workspace.Lobby.potato.ClickDetector)
end)

Tab5Section:NewButton("Equip bob (Need Own Badges)", "Automatically Equip bob When Click", function()
fireclickdetector(game.Workspace.Lobby.bob.ClickDetector)
end)

Tab5Section:NewButton("Equip buddies (Need Own Badges)", "Automatically Equip buddies When Click", function()
fireclickdetector(game.Workspace.Lobby.buddies.ClickDetector)
end)

Tab5Section:NewButton("Equip Moon (Need Own Badges)", "Automatically Equip Moon When Click", function()
fireclickdetector(game.Workspace.Lobby.Moon.ClickDetector)
end)

Tab5Section:NewButton("Equip Jupiter (Need Own Badges)", "Automatically Equip Jupiter When Click", function()
fireclickdetector(game.Workspace.Lobby.Jupiter.ClickDetector)
end)

Tab5Section:NewButton("Equip Spy (Need Own Badges)", "Automatically Equip Spy When Click", function()
fireclickdetector(game.Workspace.Lobby.Spy.ClickDetector)
end)

Tab5Section:NewButton("Equip Detonator (Need Own Badges)", "Automatically Equip Detonator When Click", function()
fireclickdetector(game.Workspace.Lobby.Detonator.ClickDetector)
end)

Tab5Section:NewButton("Equip Rage (Need Own Badges)", "Automatically Equip Rage When Click", function()
fireclickdetector(game.Workspace.Lobby.Rage.ClickDetector)
end)

Tab5Section:NewButton("Equip Trap (Need Own Badges)", "Automatically Equip Trap When Click", function()
fireclickdetector(game.Workspace.Lobby.Trap.ClickDetector)
end)

Tab5Section:NewButton("Equip Orbit (Need Own Badges)", "Automatically Equip Orbit When Click", function()
fireclickdetector(game.Workspace.Lobby.Orbit.ClickDetector)
end)

Tab5Section:NewButton("Equip Hybrid (Need Own Badges)", "Automatically Equip Hybrid When Click", function()
fireclickdetector(game.Workspace.Lobby.Hybrid.ClickDetector)
end)

Tab5Section:NewButton("Equip Slapple (Need Own Badges)", "Automatically Equip Slapple When Click", function()
fireclickdetector(game.Workspace.Lobby.Slapple.ClickDetector)
end)

Tab5Section:NewButton("Equip Disarm (Need Own Badges)", "Automatically Equip Disarm When Click", function()
fireclickdetector(game.Workspace.Lobby.Disarm.ClickDetector)
end)

Tab5Section:NewButton("Equip Dominance (Need Own Badges)", "Automatically Equip Dominance When Click", function()
fireclickdetector(game.Workspace.Lobby.Dominance.ClickDetector)
end)

Tab5Section:NewButton("Equip Link (Need Own Badges)", "Automatically Equip Link When Click", function()
fireclickdetector(game.Workspace.Lobby.Link.ClickDetector)
end)

Tab5Section:NewButton("Equip Chain (Need Own Badges)", "Automatically Equip Chain When Click", function()
fireclickdetector(game.Workspace.Lobby.Chain.ClickDetector)
end)

Tab5Section:NewButton("Equip Rattlebones (Need Own Badges)", "Automatically Equip Rattlebones When Click", function()
fireclickdetector(game.Workspace.Lobby.Rattlebones.ClickDetector)
end)

Tab5Section:NewButton("Equip Charge (Need Own Badges)", "Automatically Equip Charge When Click", function()
fireclickdetector(game.Workspace.Lobby.Charge.ClickDetector)
end)

Tab5Section:NewButton("Equip Tycoon (Need Own Badges)", "Automatically Equip Tycoon When Click", function()
fireclickdetector(game.Workspace.Lobby.Tycoon.ClickDetector)
end)

Tab5Section:NewButton("Equip Confusion (Need Own Badges", "Automatically Equip Confusion When Click", function()
fireclickdetector(game.Workspace.Lobby.Confusion.ClickDetector)
end)

Tab5Section:NewButton("Equip Glitch (Need Own Badges)", "Automatically Equip Glitch When Click", function()
fireclickdetector(game.Workspace.Lobby.Glitch.ClickDetector)
end)

Tab5Section:NewButton("Equip Snowball (Need Own Badges)", "Automatically Equip Snowball When Click", function()
fireclickdetector(game.Workspace.Lobby.Snowball.ClickDetector)
end)

Tab5Section:NewButton("Equip Elude (Need Own Badges)", "Automatically Equip Elude When Click", function()
fireclickdetector(game.Workspace.Lobby.Elude.ClickDetector)
end)

Tab5Section:NewButton("Equip RNG (Need Own Badges)", "Automatically Equip RNG When Click", function()
fireclickdetector(game.Workspace.Lobby.RNG.ClickDetector)
end)

Tab5Section:NewButton("Equip fish (Need Own Badges)", "Automatically Equip fish When Click", function()
fireclickdetector(game.Workspace.Lobby.fish.ClickDetector)
end)

Tab5Section:NewButton("Equip Moai (Need Own Badges)", "Automatically Equip Moai When Click", function()
fireclickdetector(game:GetService("Workspace")["Lobby"]["🗿"].ClickDetector);
end)

Tab5Section:NewButton("Equip Obby (Need Own Badges)", "Automatically Equip Obby When Click", function()
fireclickdetector(game.Workspace.Lobby.Obby.ClickDetector)
print("Cant Add emoji moai :sad:")
end)

Tab5Section:NewButton("Equip Voodoo (Need Own Badges)", "Automatically Equip Voodoo When Click", function()
fireclickdetector(game.Workspace.Lobby.Voodoo.ClickDetector)
end)

Tab5Section:NewButton("Equip Goofy (Need Own Badges)", "Automatically Equip Goofy When Click", function()
fireclickdetector(game.Workspace.Lobby.Goofy.ClickDetector)
end)

Tab5Section:NewButton("Equip Leash (Need Own Badges)", "Automatically Equip Leash When Click", function()
fireclickdetector(game.Workspace.Lobby.Leash.ClickDetector)
end)

Tab5Section:NewButton("Equip Flamarang (Need Own Badges)", "Automatically Equip Flamarang When Click", function()
fireclickdetector(game.Workspace.Lobby.Flamarang.ClickDetector)
end)

Tab5Section:NewButton("Equip Kinetic (Need Own Badges)", "Automatically Equip Kinetic When Click", function()
fireclickdetector(game.Workspace.Lobby.Kinetic.ClickDetector)
end)

Tab5Section:NewButton("Equip Berserk (Need Own Badges)", "Automatically Equip Berserk When Click", function()
fireclickdetector(game.Workspace.Lobby.Berserk.ClickDetector)
end)
