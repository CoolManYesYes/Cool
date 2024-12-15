local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AlperPro/shhh/main/oriontestsreal')))()
local Window = OrionLib:MakeWindow({Name = "Made By CoolManYesYes6 on yt!", HidePremium = false, SaveConfig = true, ConfigFolder = "lloydgarmadon43scripts"})
local BaseMovesReal = Window:MakeTab({
	Name = "Base Moves",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local BaseSection = BaseMovesReal:AddSection({
	Name = "base moves by CoolManYesYes6!"
})

local UltimateMovesReal = Window:MakeTab({
	Name = "Ultimate Moves",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local UltAnimTab = Window:MakeTab({
	Name = "Ultimate Animations",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local VillainTab = Window:MakeTab({
	Name = "Dummy's Villain Arc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local VillainSection = VillainTab:AddSection({
	Name = "Made By coolManYesYes6 on yt"
})
local WallComboWOWOWW = Window:MakeTab({
	Name = "Wall Combo",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local WallComboSection = WallComboWOWOWW:AddSection({
	Name = "Made By CoolManYesYes6 on yt!"
})
local M1Tab = Window:MakeTab({
	Name = "M1s",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local M1Section = M1Tab:AddSection({
	Name = "Made By CoolManYesYes6 on yt!"
})
local MiscTab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local FunTab = Window:MakeTab({
	Name = "Fun",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MiscSection = MiscTab:AddSection({
	Name = "Made By CoolManYesYes6 on yt!"
})
local UltimateSection = UltimateMovesReal:AddSection({
	Name = "Made By CoolManYesYes6 on yt!"
})
local AnimSection = FunTab:AddSection({
	Name = "Made By CoolManYesYes6 on yt!"
})
BaseMovesReal:AddButton({
	Name = "Ravage",
	Callback = function()
        local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false -- Activate debounce
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16945573694"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
local Sound = Instance.new("Sound")
Sound.Parent = character
Sound.SoundId = "rbxassetid://16945495411"
Sound.Playing = true
spawn(function()
wait(1)
debounce = true
end)
playAnim:Play()
playAnim:AdjustSpeed(0.3)
wait(0.3)
playAnim:AdjustSpeed(1)

local Players = game:GetService("Players")
local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local animationPlayed = false -- Flag to track if the animation has already been played

game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.Touched:Connect(function(hit)
    if hit.Parent == Character and not debounce and not animationPlayed then
        animationPlayed = true -- Mark the animation as played

        -- Play first animation
        anim.AnimationId = "rbxassetid://16945550029"
        local playAnim = humanoid:LoadAnimation(anim)
        anim.AnimationId = "rbxassetid://0"
        playAnim:Play()
        playAnim:AdjustSpeed(0.3)
 
        wait(0.3)
        playAnim:AdjustSpeed(1)
        local Sound2 = Instance.new("Sound")
        Sound2.Parent = character
        Sound2.SoundId = "rbxassetid://16945517708"
        Sound2.Playing = true
        local Sound3 = Instance.new("Sound")
        Sound3.Parent = character
        Sound3.SoundId = "rbxassetid://16945593216"
        Sound3.Playing = true
        local Sound4 = Instance.new("Sound")
        Sound4.Parent = character
        Sound4.SoundId = "rbxassetid://16945691441"
        Sound4.Playing = true
        character.Humanoid.WalkSpeed = 0
        character.Humanoid.AutoRotate = false 
        character:WaitForChild("HumanoidRootPart").CFrame = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)
        -- Play second animation
        local dummyHumanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        local animator = dummyHumanoid:WaitForChild("Animator")
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://16945557433"
        local AnimationTrack = animator:LoadAnimation(Anim)
        AnimationTrack:Play()
        wait(1)
local pchar= game.Workspace.Live:FindFirstChild("Weakest Dummy")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    
    wait(0.1)
    -- Wait for the player to load
    local pchar= game.Workspace.Live:FindFirstChild("Weakest Dummy")
    local player = game.Players.LocalPlayer or player.CharacterAdded:Wait()
    local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local LeftArm = game.Players.LocalPlayer.Character:WaitForChild("Left Arm")  -- Assuming Torso exists in your character model
    
    -- Check for Resources folder in ReplicatedStorage
    local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
    
    -- Check for KJEffects folder inside Resources
    local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
    
    -- Check for speedlinesandstuff part inside KJEffects
    local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("barrage")
    
    -- Duplicate the speedlinesandstuff part
    local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
    
    -- Calculate the desired CFrame using the player's torso position
    local desiredCFrame = CFrame.new(LeftArm.Position)
    
    -- Set the desired CFrame for the clone
    speedlinesandstuffClone.CFrame = desiredCFrame
    
    -- Put the duplicate in Workspace
    speedlinesandstuffClone.Parent = Workspace
    
    -- Function to enable all ParticleEmitters
    local function enableParticleEmitters(parent)
        for _, descendant in ipairs(parent:GetDescendants()) do
            if descendant:IsA("ParticleEmitter") then
                descendant.Enabled = true
            end
        end
    end
    
    -- Example usage after your dash effect completes
    spawn(function()
        -- Simulating end of dash effect
        wait(1)  -- Adjust the wait time as needed
    
        -- Enable all ParticleEmitters inside speedlinesandstuffClone
        enableParticleEmitters(speedlinesandstuffClone)
    end)
    local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
        end
    wait(2)
    workspace.barrage:Destroy()
    local hit1 = game.ReplicatedStorage.Resources.KJEffects["HitParticles"].Hit:Clone()
    hit1.Parent = game.Players.LocalPlayer.Character["Right Arm"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
        end
    wait(1)
    local hit1 = game.ReplicatedStorage.Resources.KJEffects["RUNAROUNDWIND"].RUNAROUNDWIND:Clone()
    hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(5) -- Emit 20 particles
            end
        end
    
    wait(1)
    
    wait(0.1)
    
    local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
    hit1.Parent = game.Players.LocalPlayer.Character["Torso"]
        for _, child in ipairs(hit1:GetChildren()) do
            if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                child:Emit(1) -- Emit 20 particles
            end
        end
        wait(5) -- Wait before resetting debounce
        debounce = false -- Reset debounce
        character.Humanoid.WalkSpeed = 16
    character.Humanoid.AutoRotate = true 
    end
end)

    end
})
BaseMovesReal:AddButton({
	Name = "Swift Sweep",
	Callback = function()
        local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false -- Activate debounce
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://16944345619"
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0"
spawn(function()
wait(0.1)
debounce = true
end)
playAnim:Play()
playAnim:AdjustSpeed(1)

local Players = game:GetService("Players")
local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local animationPlayed = false -- Flag to track if the animation has already been played

game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.Touched:Connect(function(hit)
    if hit.Parent == Character and not debounce and not animationPlayed then
        animationPlayed = true -- Mark the animation as played
        character.Humanoid.WalkSpeed = 0
        character.Humanoid.AutoRotate = false 
        character:WaitForChild("HumanoidRootPart").CFrame = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)
        -- Play second animation
        local dummyHumanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        local animator = dummyHumanoid:WaitForChild("Animator")
        local Anim = Instance.new("Animation")
        Anim.AnimationId = "rbxassetid://10471478869"
        local AnimationTrack = animator:LoadAnimation(Anim)
        AnimationTrack:Play()
        wait(1)
local pchar= game.Workspace.Live:FindFirstChild("Weakest Dummy")
    local ReplicatedStorage = game:GetService("ReplicatedStorage")
    local Workspace = game:GetService("Workspace")
    
    wait(0.1)
    -- Wait for the player to load
    local pchar= game.Workspace.Live:FindFirstChild("Weakest Dummy")
    local player = game.Players.LocalPlayer or player.CharacterAdded:Wait()
    local rootPart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
    local LeftArm = game.Players.LocalPlayer.Character:WaitForChild("Left Arm")  -- Assuming Torso exists in your character model
    
        wait(2) -- Wait before resetting debounce
        debounce = false -- Reset debounce
        character.Humanoid.WalkSpeed = 16
    character.Humanoid.AutoRotate = true 
    end
end)
    end
})
BaseMovesReal:AddButton({
	Name = "Collateral Ruin",
	Callback = function()
        local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = player.Character or player.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")

local Sound = Instance.new("Sound")
            Sound.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            Sound.SoundId = getcustomasset('Ruin.mp3')
            Sound.Looped = false
            Sound.Volume = 5
            Sound:Play()

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://17325254223"

local playAnim2 = humanoid:LoadAnimation(anim2)
anim2.AnimationId = "rbxassetid://0"
playAnim2:Play()
wait(1.2)
local collateral1 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Attachment:Clone()
collateral1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral5 = game.ReplicatedStorage.Resources.KJEffects["spinbeam"].beam2:Clone()
collateral5.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral5:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral6 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapct"].HitTwo:Clone()
collateral6.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral6:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral7 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest"].HitTwo:Clone()
collateral7.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral7:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral8 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest2"].HitTwo:Clone()
collateral8.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral8:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
wait(0.05)
local collateral1 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Attachment:Clone()
collateral1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral2 = game.ReplicatedStorage.Resources.KJEffects["spinnyweenyspinner"].Emit:Clone()
collateral2.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral3 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningparty:Clone()
collateral3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral4 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
collateral4.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral5 = game.ReplicatedStorage.Resources.KJEffects["spinbeam"].beam2:Clone()
collateral5.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral5:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral6 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapct"].HitTwo:Clone()
collateral6.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral6:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral7 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest"].HitTwo:Clone()
collateral7.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral7:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
local collateral8 = game.ReplicatedStorage.Resources.KJEffects["ColateralImapctTest2"].HitTwo:Clone()
collateral8.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(collateral8:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(2) -- Emit 20 particles
        end
    end
    end
})
UltimateMovesReal:AddButton({
	Name = "Stoic Bomb",
	Callback = function()
        spawn(function()
            local SoundTP = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            SoundTP.SoundId = "rbxassetid://17149593018"
            SoundTP.Playing = true 
            wait(0.5)
            local OtherSFX = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            OtherSFX.SoundId = "rbxassetid://17141392513"
            OtherSFX.Playing = true 
            wait(0.3)
            local IMMACHARGEMYLASER = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            IMMACHARGEMYLASER.SoundId = "rbxassetid://17141392976"
            IMMACHARGEMYLASER.Playing = true
            wait(1)
            local haisenbakudan = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            haisenbakudan.SoundId = "rbxassetid://17141392676"
            haisenbakudan.Playing = true
            wait(1.5)
            local BOOM = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
            BOOM.SoundId = "rbxassetid://17141392854"
            BOOM.Playing = true
            end)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 0
            local player = game.Players.LocalPlayer
            repeat wait() until player.Character.Humanoid
            local humanoid = player.Character.Humanoid
            local character = player.Character or player.CharacterAdded:Wait()
            local UserInputService = game:GetService("UserInputService")
            
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://17141153099"
            
            local playAnim = humanoid:LoadAnimation(anim)
            anim.AnimationId = "rbxassetid://0"
            playAnim:Play()
            playAnim:AdjustSpeed(0.3)
            wait(0.3)
            playAnim:AdjustSpeed(1)
            spawn(function()
            wait(1)
            local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
        local attachments = {}
        
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Attachment") and child.Name == "Attachment" then
                table.insert(attachments, child)
            end
        end
        
        local newParent = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
        
        if newParent then
            for _, attachment in ipairs(attachments) do
                -- Attachment'Ã„Â±n konumunu ayarlayÃ„Â±n (ÃƒÂ¶rneÃ„Å¸in, aÃ…Å¸aÃ„Å¸Ã„Â±da 2 birim)
                attachment.Parent = newParent
                attachment.Position = attachment.Position + Vector3.new(0, -4, 0) -- Y ekseninde -2 birim aÃ…Å¸aÃ„Å¸Ã„Â±
                game.Players.LocalPlayer.Character.Torso.Attachment:Destroy()
            end
        end
            end)
            
            spawn(function()
            local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Players.LocalPlayer.Character.Torso
            game.Players.LocalPlayer.Character.Torso.Attachment["STAR!!!"].Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylines.Enabled = true
            game.Players.LocalPlayer.Character.Torso.Attachment.speedylinesfire.Enabled = true
            end)
            local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
            launch1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(launch1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(3) -- Emit 20 particles
                    end
                end
            wait(0.1)
            local light1 = game.ReplicatedStorage.Resources.StoicBomb["stoicbombspeedlines"].POINTOLIGHTO:Clone()
            light1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(light1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
            wait(1.4)
            local boom1 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].Attachment:Clone()
            boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(3) -- Emit 20 particles
                    end
                end
            wait(1.6)
            local stoic1 = game.ReplicatedStorage.Resources.StoicBomb["pre"].Part.Attachment:Clone()
            stoic1.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(stoic1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                    end
            wait(0.1)
            local stoic2 = game.ReplicatedStorage.Resources.StoicBomb["Main"].Part.Attachment:Clone()
            stoic2.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(stoic2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                    end
        
                    local replicatedStorage = game:GetService("ReplicatedStorage")
        local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            light1:Destroy()
            stoic1:Destroy()
            stoic2:Destroy()
            local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
            boom2.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
            boom3.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom3:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
            boom4.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom4:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
            boom2.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
            boom3.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom3:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
            boom4.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom4:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
            boom2.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
            boom3.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom3:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
            boom4.Parent = game.Players.LocalPlayer.Character["Torso"]
                for _, child in ipairs(boom4:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
                
                wait(0.3)
                local parent = script.Parent
                local attachmentName = "Attachment"  -- Silmek istediÃ„Å¸iniz attachment'Ã„Â±n adÃ„Â±
                
                -- Torso iÃƒÂ§indeki attachment'larÃ„Â± bul
                local torso = game.Players.LocalPlayer.Character:FindFirstChild("Torso")
                
                if torso then
                    for _, child in ipairs(torso:GetChildren()) do
                        if child:IsA("Attachment") and child.Name == attachmentName then
                            child:Destroy()  -- Attachment'Ã„Â± sil
                        end
                    end
                end
                
        attachments:Destroy()
            wait(0.3)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
  	end    
})
UltimateMovesReal:AddButton({
	Name = "20-20-20 Dropkick",
	Callback = function()
local p = game.Players.LocalPlayer
        local TS = game:GetService("TweenService")
        local RunService = game:GetService("RunService")
        
        local FinalDamage = 75
        local sped = 200
        local candash = true
        local hit = 0
        local Character = p.Character
        local Humanoid = Character:WaitForChild("Humanoid")
        local RootPart = Character:WaitForChild("HumanoidRootPart")
        local move = Instance.new("BodyVelocity", RootPart)
        move.MaxForce = Vector3.new(math.huge, 0, math.huge)
        
        local hitbox = Instance.new("Part")
        hitbox.CanCollide = false
        hitbox.Anchored = false
        hitbox.Name = "Hitbox"
        hitbox.Material = Enum.Material.ForceField
        hitbox.Size = Vector3.new(15, 15, 10)
        hitbox.CanQuery = false
        hitbox.Transparency = 1
        hitbox.Color = Color3.fromRGB(255, 0, 0)
        hitbox.Massless = true
        hitbox.Parent = workspace
        
        function getRoot(char)
            local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
            return rootPart
        end
        
        local hitlist = {}
        
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://17354976067"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()
        
        local soundId = 17429233290 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Dropkick_Miss"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local soundId = 17356346310 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Dropkick_SFX"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        Humanoid.WalkSpeed = 0
        local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        local function setWalkSpeedToZero()
            local humanoid = character:WaitForChild("Humanoid")
            humanoid.WalkSpeed = 0
        end
        
        if character then
            setWalkSpeedToZero()
        end
        
        player.CharacterAdded:Connect(function(newCharacter)
            character = newCharacter
            setWalkSpeedToZero()
        end)
        
        spawn(function()
            loadstring(game:HttpGet("https://pastebin.pl/view/raw/73e409e5"))()
        end)
        
        spawn(function()
            loadstring(game:HttpGet("https://pastebin.pl/view/raw/f2bcc3b1"))()
        end)
        
        -- Local Script
        
        Wait(1.79)
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlinesandstuff part inside KJEffects
        local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("speedlinesandstuff")
        
        -- Duplicate the speedlinesandstuff part
        local speedlinesandstuffClone = speedlinesandstuffPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesandstuffClone.Parent = Workspace
        
        -- Offset position behind the player
        local offset = Vector3.new(0, 0, -9) -- Adjust the offset as needed
        
        -- Function to update the position of the speedlinesandstuff clone to follow the player with offset
        local function updateSpeedlinesPosition()
            while true do
                speedlinesandstuffClone.CFrame = rootPart.CFrame * CFrame.new(offset)
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        -- Get references to ReplicatedStorage and Workspace
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Function to recursively find a part by name within a parent
        local function findPartByName(parent, name)
            local part = parent:FindFirstChild(name)
            if part then
                return part
            else
                for _, child in ipairs(parent:GetChildren()) do
                    part = findPartByName(child, name)
                    if part then
                        return part
                    end
                end
            end
            return nil
        end
        
        -- Wait for ReplicatedStorage.Resources.KJEffects.speedlinesandstuff.thespeedthingunderultik to exist
        local function waitForPart()
            local speedlinesandstuff = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects"):WaitForChild("speedlinesandstuff")
            local thespeedthingunderultik = findPartByName(speedlinesandstuff, "thespeedthingunderultik")
            if thespeedthingunderultik then
                -- Clone the part into Workspace and make it follow the player
                local clonedPart = thespeedthingunderultik:Clone()
                clonedPart.Parent = Workspace
                
                -- Function to make the cloned part follow the player
                local function followPlayer()
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
                        local humanoid = character:FindFirstChildOfClass("Humanoid")
                        if humanoidRootPart and humanoid then
                            local torso = humanoidRootPart:FindFirstChild("LowerTorso")
                            if torso then
                                clonedPart.CFrame = torso.CFrame
                                clonedPart.CFrame = clonedPart.CFrame * CFrame.new(0, -humanoid.HipHeight / 2, 0) -- Offset under the legs
                                clonedPart.CFrame = clonedPart.CFrame * CFrame.Angles(0, math.rad(180), 0) -- Make it look where the character looks
                            end
                        end
                    end
                end
                
                -- Run the followPlayer function every frame
                game:GetService("RunService").RenderStepped:Connect(followPlayer)
            else
                warn("Part thespeedthingunderultik not found inside speedlinesandstuff.")
            end
        end
        
        -- Call the waitForPart function
        waitForPart()
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        -- Get references to ReplicatedStorage and Workspace
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Function to recursively find a part by name within a parent
        local function findPartByName(parent, name)
            local part = parent:FindFirstChild(name)
            if part then
                return part
            else
                for _, child in ipairs(parent:GetChildren()) do
                    part = findPartByName(child, name)
                    if part then
                        return part
                    end
                end
            end
            return nil
        end
        
        -- Wait for ReplicatedStorage.Resources.KJEffects.speedlinesandstuff.thespeedthingunderultik to exist
        local function waitForPart()
            local speedlinesandstuff = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects"):WaitForChild("speedlinesandstuff")
            local thespeedthingunderultik = findPartByName(speedlinesandstuff, "thespeedthingunderultik")
            if thespeedthingunderultik then
                -- Clone the part into Workspace and make it follow the player
                local clonedPart = thespeedthingunderultik:Clone()
                clonedPart.Parent = Workspace
                
                -- Function to make the cloned part follow the player
                local function followPlayer()
                    local player = game.Players.LocalPlayer
                    local character = player.Character
                    if character then
                        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
                        if humanoidRootPart then
                            clonedPart.CFrame = humanoidRootPart.CFrame
                            clonedPart.CFrame = clonedPart.CFrame * CFrame.new(0, -0.3, -2) -- Offset from character (adjusted)
                            clonedPart.CFrame = clonedPart.CFrame * CFrame.Angles(0, math.rad(180), 0) -- Make it look where the character looks
                        end
                    end
                end
                
                -- Run the followPlayer function every frame
                game:GetService("RunService").RenderStepped:Connect(followPlayer)
            else
                warn("Part thespeedthingunderultik not found inside speedlinesandstuff.")
            end
        end
        
        -- Call the waitForPart function
        waitForPart()
        
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        -- Enable particle emitters and set emission properties
        local function setupParticles(part)
            for _, descendant in pairs(part:GetDescendants()) do
                if descendant:IsA("ParticleEmitter") then
                    descendant.Rate = 100
                    descendant.Enabled = true
                    descendant:Emit(100)
                end
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        
        -- Setup particles in the duplicated part
        setupParticles(speedlinesClone)
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        
        -- Setup particles in the duplicated part
        setupParticles(speedlinesClone)
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        
        -- Setup particles in the duplicated part
        setupParticles(speedlinesClone)
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        
        -- Setup particles in the duplicated part
        setupParticles(speedlinesClone)
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        
        -- Setup particles in the duplicated part
        setupParticles(speedlinesClone)
        
        -- Run the function in a separate thread
        spawn(updateSpeedlinesPosition)
        
        
        
        -- Function to initiate rush effect
        local function initiateRush()
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            if not humanoid then
                return
            end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
        end
        
        local Players = game:GetService("Players")
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local Workspace = game:GetService("Workspace")
        
        -- Wait for the player to load
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local rootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Check for Resources folder in ReplicatedStorage
        local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")
        
        -- Check for KJEffects folder inside Resources
        local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
        
        -- Check for speedlines part inside KJEffects
        local speedlinesPart = kjEffectsFolder:WaitForChild("speedlines")
        
        -- Duplicate the speedlines part
        local speedlinesClone = speedlinesPart:Clone()
        
        -- Put the duplicate in Workspace
        speedlinesClone.Parent = Workspace
        
        -- Function to update the position of the speedlines clone to follow the player
        local function updateSpeedlinesPosition()
            while true do
                speedlinesClone.CFrame = rootPart.CFrame
                wait(0.1) -- Adjust the wait time as needed
            end
            end
            end
        Anim:GetMarkerReachedSignal("StartHitbox"):Connect(function()
            
            move.Velocity = sped * RootPart.CFrame.LookVector
            move.Parent = RootPart
            hitbox.CFrame = RootPart.CFrame * CFrame.new(0, 0, -9)
        
            local function onHeartbeat()
                if candash then
                    move.Velocity = sped * RootPart.CFrame.LookVector
                    hitbox.CFrame = RootPart.CFrame * CFrame.new(0, 0, -9)
                end
            end
        
            local heartbeatConnection
            heartbeatConnection = RunService.Heartbeat:Connect(onHeartbeat)
        
            hitbox.Touched:Connect(function(hitPart)
                local hitHumanoid = hitPart.Parent:FindFirstChildOfClass("Humanoid")
                if hitHumanoid and hitPart.Parent ~= Character and hit == 0 then
                    if not hitlist[hitHumanoid] then
                        hitlist[hitHumanoid] = true
                        candash = false
                        hit = 1
        
                        local speaker = p
                        speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
                        heartbeatConnection:Disconnect()
                        move:Destroy()
                        hitbox:Destroy()
                        Anim:Stop()
        
                        if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
                            speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
                            task.wait(.1)
                        end
                        getRoot(speaker.Character).CFrame = getRoot(hitPart.Parent).CFrame + Vector3.new(-10,1,0)
        
                        local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
                        delay(0, function()
                            BeenASecond = true
                        end)
                        while not BeenASecond do
                            for _, v in ipairs(speaker.Character:GetDescendants()) do
                                if v:IsA("BasePart") then
                                    v.Velocity, v.RotVelocity = V3, V3
                                end
                            end
                            task.wait()
                        end
                        -- Stops the sound
                        sound:stop()
        
                        Humanoid.WalkSpeed = 0
                        
                        local PlayerAnim = Instance.new("Animation")
                        PlayerAnim.AnimationId = "rbxassetid://17420452843"
                        local Player = Humanoid:LoadAnimation(PlayerAnim)
                        PlayerAnim.AnimationId = "rbxassetid://0"
                        Player:Play()
        
        local Players = game:GetService("Players")
        local player = Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
        -- Get the current orientation of the HumanoidRootPart
        local currentCFrame = humanoidRootPart.CFrame
        
        -- Calculate the new orientation to look behind (180-degree rotation on Y axis)
        local newCFrame = currentCFrame * CFrame.Angles(0, math.rad(180), 0)
        
        -- Update the HumanoidRootPart CFrame to the new orientation
        humanoidRootPart.CFrame = newCFrame
        spawn(function()
            wait(9.5)
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            
            local p = Players.LocalPlayer
            local playerGui = p:WaitForChild("PlayerGui")
            
            -- Clone the ImpactFrames from ReplicatedStorage to PlayerGui
            local replicatedGui = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects"):WaitForChild("ImpactFrames")
            local clonedGui1 = replicatedGui:Clone()
            clonedGui1.Parent = playerGui
            
            local impactframe = clonedGui1
            
            -- Function to handle the visibility of frames
            local function showFrames1()
                local frameSequence = {
                    { "Frame1", 0.02 },
                    { "Frame2", 0.02 },
                    { "Frame3", 0.02 },
                    { "Frame4", 0.02 },
                    { "Frame5", 0.02 },
                    { "Frame6", 0.02 },
                    { "Frame7", 0.02 },
                    { "Frame8", 0.02 },
                    { "Frame9", 0.02 },
                    { "Frame10", 0.02 },
                    { "Frame11", 0.02 },
                    { "Frame12", 0.02 },
                    { "Frame13", 0.02 },
                    { "Frame14", 0.02 },
                    { "Frame15", 0.02 },
                    { "Frame16", 3.7 }
                }
            
                for _, frameData in ipairs(frameSequence) do
                    local frameName, duration = unpack(frameData)
                    local frame = impactframe:FindFirstChild(frameName)
                    if frame then
                        frame.Visible = true
                        wait(duration)
                        frame.Visible = false
                    end
                end
            end
            
            -- Call the function to start the frame sequence
            showFrames1()
            
            local p = game.Players.LocalPlayer
            local visuals = workspace
            local RS = game:GetService("ReplicatedStorage")
            local background = RS.Resources.KJEffects["202020BACKSCREEN"]:Clone()
            
            local Humanoid = p.Character:WaitForChild("Humanoid")
            local RootPart = p.Character:WaitForChild("HumanoidRootPart")
            background.Parent = visuals
            background.CFrame = RootPart.CFrame * CFrame.new(-10, -2.6, -180)
            
            local Players = game:GetService("Players")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            
            local p = Players.LocalPlayer
            local playerGui = p:WaitForChild("PlayerGui")
            
            -- Clone the ImpactFrames from ReplicatedStorage to PlayerGui
            local replicatedGui = ReplicatedStorage:WaitForChild("Resources"):WaitForChild("KJEffects"):WaitForChild("Text")
            local clonedGui2 = replicatedGui:Clone()
            clonedGui2.Parent = playerGui
            
            local TextFrame = clonedGui2
            
            -- Wait for 0.5 seconds
            wait(0.5)
            
            -- Function to handle the visibility of frames
            local function showFrames2()
                local frameSequence = {
                    {"Frame1", 0.03},
                    {"Frame2", 0.03},
                    {"Frame3", 0.03},
                    {"Frame4", 0.5},
                    {"Frame5", 0.03},
                    {"Frame6", 0.03},
                    {"Frame7", 0.03},
                    {"Frame8", 0.5},
                    {"Frame9", 0.03},
                    {"Frame10", 0.03},
                    {"Frame11", 0.03},
                    {"Frame12", 0.5},
                    {"Frame13", 0.03},
                    {"Frame14", 0.03},
                    {"Frame15", 0.03},
                    {"Frame16", 3.7}
                }
            
                for _, frameData in ipairs(frameSequence) do
                    local frameName, duration = unpack(frameData)
                    local frame = TextFrame:FindFirstChild(frameName)
                    if frame then
                        frame.Visible = true
                        wait(duration)
                        frame.Visible = false
                    end
                end
            end
            
            -- Call the function to start the frame sequence
            showFrames2()
            
            clonedGui1:Destroy()
            
            clonedGui2:Destroy()
            
            background:Destroy()
        end)
        local soundId = 17363377920 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj-20-20-20_user"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local soundId = 17363383992 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj-20-20-20_cutscene_music"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local soundId = 17363374089 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj-20-20-20_victim_reedit"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local final2 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Origin:Clone()
        final2.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(final2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local final3 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final3.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(final3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local final4 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final4.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(final4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local final5 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final5.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(final5:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local final6 = game.ReplicatedStorage.Resources.KJEffects["KJWallCombo"].FinalImpact.Attachment:Clone()
        final6.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(final6:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
        
        local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
        launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(launch1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(3) -- Emit 20 particles
                end
            end
            spawn(function()
            wait(15)
            local targetName = "thespeedthingunderultik"
            for i = 1, 15 do
                character:WaitForChild("HumanoidRootPart").Anchored = false
            character:WaitForChild("Humanoid").AutoRotate = true
            wait(1)
            end
            
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
        -- TÃƒÂ¼m 'speedlines' adÃ„Â±ndaki parÃƒÂ§alarÃ„Â± bulup silen script
        local targetName = "speedlines"
        
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
        local targetName = "speedlinesandstuff"
        
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
            end)
            local VictimAnim = Instance.new("Animation")
            VictimAnim.AnimationId = "rbxassetid://17363256069"
            local Victim = hitHumanoid:LoadAnimation(VictimAnim)
            VictimAnim.AnimationId = "rbxassetid://0"
            Victim:Play()
            workspace.Dropkick_SFX:Destroy()
            workspace.Dropkick_Miss:Destroy()
            
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            for _, part in ipairs(character:GetDescendants()) do
                if part:IsA("Part") then
                    part.CanCollide = false
                end
            end
            local weakDummy = game.Workspace.Live["Weakest Dummy"]
            local weakDummyHRP = weakDummy:FindFirstChild("HumanoidRootPart")
            
            -- Karakterin pozisyonunu ve rotasyonunu ayarla
            local offset = CFrame.new(0, 0, 10) -- Karakteri sola (negatif x) ve biraz geriye (negatif z) kaydÃ„Â±r
            local rotation = CFrame.Angles(0, math.pi, 0) -- 180 derece dÃƒÂ¶ndÃƒÂ¼r
            
            -- Karakterin CFrame'ini ayarla
            character:WaitForChild("HumanoidRootPart").CFrame = weakDummyHRP.CFrame * rotation * offset
            character:WaitForChild("HumanoidRootPart").Anchored = true
            character:WaitForChild("Humanoid").AutoRotate = false
        
        wait(1.4)
        
        
        local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
        launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(launch1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(3) -- Emit 20 particles
                end
            end
        
        
        wait(0.6)
        
        
        local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
        launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(launch1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(3) -- Emit 20 particles
                end
            end
        
        
        wait(0.5)
        
        
        local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
        launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(launch1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(3) -- Emit 20 particles
                end
            end
        
        
        wait(0.7)
        
        
        local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
        launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(launch1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(3) -- Emit 20 particles
                end
            end
        wait(1.4)
        
        
        local soundId = 17419337758 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj-20-20-20_camera_ambience"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()

--- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("FlashWaveone")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    -- Create a new Part to hold the Mesh
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    -- Clone the Mesh and parent it to the new Part
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    -- Create a new Decal to apply the texture
    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9572542664"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    -- Position the new Part relative to the player's character
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(0, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end

-- Repeat the above logic for the other instances

-- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("thingnearone")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9622368924"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(5, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end

-- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("FlashWavetwo")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9572542664"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(30, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end

-- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("thingneartwo")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9622368924"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(20, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end

-- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("thingnearthree")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9622368924"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(81, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end

-- Get the player and their character
local player = game.Players.LocalPlayer
local playerCharacter = player.Character or player.CharacterAdded:Wait()

-- Locate the mesh in ReplicatedStorage
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources")
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")
local thingNearOne = kjEffectsFolder:WaitForChild("FlashWavethree")
local mesh = thingNearOne:WaitForChild("Mesh")

if mesh then
    local part = Instance.new("Part")
    part.Size = Vector3.new(1, 1, 1)
    part.Anchored = true
    part.CanCollide = false
    part.Transparency = 1  -- Set the part's transparency
    part.Parent = game.Workspace
    
    local meshClone = mesh:Clone()
    meshClone.Parent = part

    local decal = Instance.new("Decal")
    decal.Texture = "rbxassetid://9572542664"
    decal.Face = Enum.NormalId.Front
    decal.Parent = part
    
    local humanoidRootPart = playerCharacter:WaitForChild("HumanoidRootPart")
    local offset = Vector3.new(81, 5, -180)
    part.CFrame = CFrame.new(humanoidRootPart.Position + offset)
else
    warn("Mesh not found inside thingnearone.")
end
        
                        wait(2)
                        speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
                        Humanoid.WalkSpeed = 0
                        candash = true
                        hitlist[hitHumanoid] = nil
                        hit = 0
                    end
                end
            end)
        end)
        
        Anim:GetMarkerReachedSignal("End"):Connect(function()
            move:Destroy()
            candash = false
            hitbox:Destroy()
            Humanoid.WalkSpeed = 16
            workspace.Dropkick_SFX:Destroy()
            workspace.Dropkick_Miss:Destroy()
            -- TÃƒÂ¼m 'speedlines' adÃ„Â±ndaki parÃƒÂ§alarÃ„Â± bulup silen script
        local targetName = "thespeedthingunderultik"
        
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
        -- TÃƒÂ¼m 'speedlines' adÃ„Â±ndaki parÃƒÂ§alarÃ„Â± bulup silen script
        local targetName = "speedlines"
        
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
        local targetName = "speedlinesandstuff"
        
        -- Workspace'teki tÃƒÂ¼m objeleri dÃƒÂ¶ner
        for _, obj in pairs(workspace:GetDescendants()) do
            -- EÃ„Å¸er objenin adÃ„Â± 'speedlines' ise
            if obj:IsA("BasePart") and obj.Name == targetName then
                -- Objeyi sil
                obj:Destroy()
            end
        end
        end)	
  	end    
})

UltimateMovesReal:AddButton({
	Name = "Five Seasons",
	Callback = function()
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local RunService = game:GetService("RunService")
        local Emit = {}

                function Emit.Emit(Any)
                    task.wait(.001)
                    for _, Particles in pairs(Any:GetDescendants()) do
                        task.delay(Particles:GetAttribute("EmitDelay"), function()
                            if Particles:IsA('ParticleEmitter') then
                                Particles:Emit(Particles:GetAttribute("EmitCount"))
                            end
                            if Particles:GetAttribute("EmitDuration") then
                                if Particles:GetAttribute("EmitDuration") > 0 then
                                    task.defer(function()
                                        Particles.Enabled = true
                                        task.wait(Particles:GetAttribute("EmitDuration"))
                                        Particles.Enabled = false
                                    end)
                                end
                            else
                                if Particles:IsA("ParticleEmitter") then
                                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                                end
                            end
                        end)
                    end
                end
            local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = v2.Character or v2.CharacterAdded:Wait()
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:WaitForChild("Humanoid")
        local MYHANDISBURNINGAHHHHH = FiveEffects.HandFire:Clone()
        local Hand = FiveEffects.CharFX.ArmFX:Clone()
        local NOIMTELEPORTINGHELPPPPP = FiveEffects.CharFX.TP:Clone()
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462892217"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        spawn(function()
            wait(7.5)
            local SoundTP = Instance.new("Sound", character.Torso)
            SoundTP.SoundId = "rbxassetid://18461671633"
            SoundTP.Playing = true 
        NOIMTELEPORTINGHELPPPPP.Parent = character.Torso
        print("IM TELEPORTING MAMA")
        local beamName = "1" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = character.Torso.TP -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = true
                end
            end
        end
        character.Torso.TP["90"].Enabled = true
        character.Torso.TP.FlashStep.Enabled = true
        activateParticles()
        print("IM TELEPORTING MAMA")
        end)
        spawn(function()
			local Heat = RS.Resources.FiveSeasonsFX.CharFX.HeatUp:Clone()
			Heat.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			wait()
			Emit.Emit(Heat)
			wait(4)
			Heat:Destroy()
		end)
		spawn(function()
			wait(1)

			local JumpWind = RS.Resources.FiveSeasonsFX.JumpMeshes.Lines:Clone()
			local Jump = RS.Resources.FiveSeasonsFX.JumpFX:Clone()
			Jump.Parent = game.Workspace.Thrown
			JumpWind.Parent = game.Workspace.Thrown
			Jump:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			JumpWind.CFrame = Jump.Primary.CFrame
			wait()
			Emit.Emit(JumpWind)
			Emit.Emit(Jump)
			wait(5)
			JumpWind:Destroy()
			Jump:Destroy()
		end)
		spawn(function()
            wait(2)
			local HandFire = RS.Resources.FiveSeasonsFX.HandFire:Clone()
			HandFire.Parent = game.Players.LocalPlayer.Character
			HandFire.ArmWeld.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
			wait(3)
			Emit.Emit(HandFire)
			wait(0.65)
			Emit.Disabled(HandFire)
			wait(2)
			HandFire:Destroy()
		end)
		spawn(function()
			wait(1.2)
			local Beam = RS.Resources.FiveSeasonsFX.CharFX.BeamFX:Clone()
			Beam.Parent = game.Players.LocalPlayer.Character.Torso
			wait(1.6)
			for _,Particles in pairs(Beam.Beams:GetDescendants()) do
				if Particles:isA("Beam") then
					local function tweenTransparency(object, fromValue, toValue, tweenInfo)
						local numberValue = Instance.new("NumberValue")
						numberValue.Value = fromValue
						numberValue.Changed:Connect(function(value)
							object.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, value),
								NumberSequenceKeypoint.new(1, value)
							})
						end)

						local tween = tween:Create(numberValue, tweenInfo, { Value = toValue })
						tween.Completed:Once(function()
							numberValue:Destroy()
						end)

						tween:Play()
					end

					tweenTransparency(Particles, 0, 1, TweenInfo.new(0.5))
				end
			end
			wait(0.5)
			Emit.BeamTransparency(Beam)
			wait(2.3)
			Beam:Destroy()
		end)

        spawn(function()
            wait(2)
            wait(5)
 
            wait(3)
            NOIMTELEPORTINGHELPPPPP.Parent = character.Torso
        local beamName = "1" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = character.Torso.TP -- Beamlerin bulunduÃ„Å¸u parent
        
        local function disableParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = false
                end
            end
        end
        character.Torso.TP["90"].Enabled = false
        character.Torso.TP.FlashStep.Enabled = false
        disableParticles()
        end)
        spawn(function()
            local sound = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound.Looped = false
            sound.SoundId = "rbxassetid://18460863844"
            sound.Playing = true
            local sound2 = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound2.Looped = false
            sound2.SoundId = "rbxassetid://18460952794"
            sound2.Playing = true
            wait(3.4)
            local sound3 = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound3.Looped = false
            sound3.SoundId = "rbxassetid://18460893321"
            sound3.Playing = true
            wait(10.95)
            sound2.Playing = false
        end)
        spawn(function()
        wait(1)
        local GOOFYEFFECTFINAL = FiveEffects.CharFX.BeamFX:Clone()
        GOOFYEFFECTFINAL.Parent = character.Torso
        local beamName = "4" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        local beamName = "GlowbeaMS" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        
        character.Torso.BeamFX.Beams["2"].Enabled = true
        character.Torso.BeamFX.Beams["3"].Enabled = true
        character.Torso.BeamFX.Beams.Beam.Enabled = true
        character.Torso.BeamFX.Beams.GlowbeaMS.Enabled = true
        wait(2.5)
        local beamName = "4" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        character.Torso.BeamFX.Beams["2"].Enabled = false
        character.Torso.BeamFX.Beams["3"].Enabled = false
        character.Torso.BeamFX.Beams["4"].Enabled = false
        character.Torso.BeamFX.Beams.Beam.Enabled = false
        local beamName = "GlowbeaMS"
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        
        end)
        spawn(function()
            character.HumanoidRootPart.Anchored = true
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local camera = workspace.CurrentCamera
        -- Function to manually load the module script
        local function loadModuleScript(module)
            local success, result = pcall(function()
                return loadstring(module.Source)()
            end)
            if success then
                print("Module loaded successfully")
                return result
            else
                warn("Failed to load the module script:", result)
                return nil
            end
        end
        local RunService = game:GetService("RunService")
        local player = game.Players.LocalPlayer
        local Character = player.Character or player.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local TweenService = game:GetService("TweenService")
        
        function Cinematic(moduleData)
            local CinematicsModule = moduleData
            local CurrentCameraCFrame = Camera.CFrame
            local FrameTime = 0
            local Connection
        
            Character.Humanoid.AutoRotate = false
            Camera.CameraType = Enum.CameraType.Scriptable
            
            Connection = RunService.RenderStepped:Connect(function(DT)
                FrameTime += DT * 60
                local NeededFrame = CinematicsModule[math.ceil(FrameTime)]
        
                if NeededFrame then
                    TweenService:Create(Camera, TweenInfo.new(0.015, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        CFrame = Character.HumanoidRootPart.CFrame * NeededFrame.cframe
                    }):Play()
                    Camera.FieldOfView = NeededFrame.fov
                else
                    Connection:Disconnect()
                    Camera.FieldOfView = 70
                    Character.Humanoid.AutoRotate = true
                    Camera.CameraType = Enum.CameraType.Custom
                    Camera.CFrame = CurrentCameraCFrame	
                end
            end)
        end
        spawn(function()
        wait(12)
        local bringsound = Instance.new("Sound", game.Players.LocalPlayer.Character)
        bringsound.SoundId = "rbxassetid://18461820786"
        bringsound.Playing = true
        end)
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots
spawn(function()
    local GUI = FiveEffects.FXUi:Clone()
    GUI.Parent = localPlayer.PlayerGui

    wait(14)
    local fiveSeasonsDots = GUI:FindFirstChild("FiveSeasonsDots")
    if fiveSeasonsDots then
        print("FiveSeasonsDots found and animating")
        fiveSeasonsDots.Visible = true
        fiveSeasonsDots.ImageTransparency = 1

        -- Tween setup for animating the ImageTransparency
        local tweenInfo = TweenInfo.new(
            1, -- Animation duration in seconds
            Enum.EasingStyle.Linear, -- Animation style
            Enum.EasingDirection.InOut -- Animation direction
        )

        -- Target properties for the animation
        local goal = {ImageTransparency = 0}

        -- Create and play the tween
        local tween = TweenService:Create(fiveSeasonsDots, tweenInfo, goal)
        tween:Play()
    else
        warn("FiveSeasonsDots not found")
    end
end)

-- Second spawn function for handling the visibility of other UI elements
spawn(function()
    wait(14)
        -- Clone FXUi into PlayerGui
        local GUI = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
        GUI.Parent = game.Players.LocalPlayer.PlayerGui
        
        print("FXUi cloned into PlayerGui")
    
        -- Ensure GUI was cloned correctly
        local fxUi = game.Players.LocalPlayer.PlayerGui:FindFirstChild("FXUi")
        
        if fxUi then
            -- Set visibility of all elements to true
            fxUi.Punches.Visible = true
            fxUi.Vignette.Visible = true
            fxUi.Vignette2.Visible = true
            fxUi.White.Visible = true
            fxUi.FiveSeasons.Visible = true -- Make sure FiveSeasons is also enabled
    
            local TweenService = game:GetService("TweenService")
            
            -- Wait for 2.6 seconds
            wait(2.6)
            
            -- Set visibility of all elements to false
            fxUi.FiveSeasons.Visible = false
            fxUi.FiveSeasonsDots.Visible = false
            fxUi.Punches.Visible = false
            fxUi.Vignette.Visible = false
            fxUi.Vignette2.Visible = false
            fxUi.White.Visible = false
            
            print("All elements hidden")
        else
            warn("FXUi not found in PlayerGui")
        end
    
end)


        spawn(function()
            wait(8)
            local UserInputService = game:GetService("UserInputService")
            local function makeInvisible()
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Transparency = 1
                        if part:FindFirstChild("face") then
                            part.face.Transparency = 1
                        end
                    elseif part:IsA("Decal") or part:IsA("Texture") then
                        part.Transparency = 1
                    end
                end
            end
            
            makeInvisible()
            humanoid.AutoRotate = false
            
            local camera = game.Workspace.CurrentCamera
            local fixedYPosition = 600.716 -- Y konumu sabit
            camera.CameraType = Enum.CameraType.Scriptable
            
            
            local duration = 4
            local startTime = tick()
            
            local isCameraActive = true
            
            game:GetService("RunService").RenderStepped:Connect(function()
                if isCameraActive then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
                    if tick() - startTime < duration then
                        -- KamerayÃ„Â± karakterin X ve Z pozisyonlarÃ„Â±na gÃƒÂ¶re hareket ettir
                        camera.CFrame = CFrame.new(character.HumanoidRootPart.Position.X, fixedYPosition, character.HumanoidRootPart.Position.Z) * CFrame.Angles(math.rad(-90), 0, 0)
                    else
                        local function makeVisible()
                            for _, part in pairs(character:GetDescendants()) do
                                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" and part.Name ~= "Hitbox_LeftArm" and part.Name ~= "Hitbox_RightArm" and part.Name ~= "Hitbox_RightLeg" and part.Name ~= "Hitbox_LeftLeg" then
                                    part.Transparency = 0
                                    if part:FindFirstChild("face") then
                                        part.face.Transparency = 0
                                    end
                                elseif (part:IsA("Decal") or part:IsA("Texture")) and part.Parent.Name ~= "HumanoidRootPart" then
                                    part.Transparency = 0
                                end
                            end
                        end
                        
                        makeVisible()
                        isCameraActive = false
                        humanoid.AutoRotate = true -- Kamera devre dÃ„Â±Ã…Å¸Ã„Â± kaldÃ„Â±Ã„Å¸Ã„Â±nda AutoRotate'u aÃƒÂ§abilirsiniz.
                        camera.CameraType = Enum.CameraType.Scriptable -- Ã„Â°steÃ„Å¸e baÃ„Å¸lÃ„Â± olarak, normal kamera moduna dÃƒÂ¶nebilirsiniz.
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                    end
                end
            end)
            
        
            
        end)
        spawn(function()
            wait(18.2)
            local fxUi = localPlayer:WaitForChild("PlayerGui"):WaitForChild("FXUi")
            local impactFrames = fxUi:WaitForChild("ImpactFrames")
            local impactsound = Instance.new("Sound", character.Torso)
            impactsound.SoundId = "rbxassetid://18462312002"
            impactsound.Looped = false
            impactsound.Volume = 5
            impactsound:Play()
            humanoid.WalkSpeed = 16
            for i = 1, 40 do
                local imageLabel = impactFrames:FindFirstChild(tostring(i))
                if imageLabel then
                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.Visible = true
                    wait(0.02)
                end
            end
        
            local lastImageLabel = impactFrames:FindFirstChild("40")
            if lastImageLabel then
                lastImageLabel.Visible = true
                fxUi:Destroy()
                local sound = Instance.new("Sound")
                sound.Parent = game.Players.LocalPlayer.Character.Torso
                sound.SoundId = "rbxassetid://18462330981"
                sound.Volume = 100
                sound.Playing = true
                local Explosion = FiveEffects.FinalExplosion:Clone()
                Explosion.Parent = workspace.Thrown
                Explosion:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -167, 0))
                Emit.Emit(Explosion)
                wait(10)
                Explosion:Destroy()
                wait(1)
            end
        end)
        
        
        
        
        spawn(function()
            wait(16.2)
            local soundhand = Instance.new("Sound", game.Players.LocalPlayer.Character)
            soundhand.SoundId = "rbxassetid://18462018744"
            soundhand.Playing = true
            soundhand.Volume = 1
            local FistModel = FiveEffects.FistsModelMirrored:Clone()
            FistModel.Parent = workspace
            local GUI = FiveEffects.FXUi:Clone()
        
            -- Modelde parÃƒÂ§a olup olmadÃ„Â±Ã„Å¸Ã„Â±nÃ„Â± ve PrimaryPart'Ã„Â±n ayarlanÃ„Â±p ayarlanmadÃ„Â±Ã„Å¸Ã„Â±nÃ„Â± kontrol et
            if #FistModel:GetChildren() == 0 then
                warn("FistModel iÃƒÂ§erisinde parÃƒÂ§a bulunamadÃ„Â±.")
                return
            end
        
            -- Ã„Â°lk parÃƒÂ§ayÃ„Â± PrimaryPart olarak ayarla (bu modelin bir PrimaryPart'Ã„Â± yoksa)
            if not FistModel.PrimaryPart then
                FistModel.PrimaryPart = FistModel:GetChildren()[1]
                warn("PrimaryPart ayarlandÃ„Â±: " .. FistModel.PrimaryPart.Name)
            end
        
            -- EÃ„Å¸er PrimaryPart hala ayarlanmamÃ„Â±Ã…Å¸sa, hatayÃ„Â± bildir
            if not FistModel.PrimaryPart then
                error("FistModel'in PrimaryPart'Ã„Â± ayarlanmamÃ„Â±Ã…Å¸!")
                return
            end
        
            local frontOffset = character.HumanoidRootPart.CFrame.LookVector * 10
            FistModel:SetPrimaryPartCFrame(character.HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) + frontOffset)
        
            -- YumruklarÃ„Â±n hareketini ayarla
            for i = 1, 5 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -5, 0))
            end
            for i = 1, 75 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -0.5, 0))
            end
            for i = 1, 5 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -40, 0))
            end
        
            FistModel:Destroy()

        end)
        
        
        
        spawn(function()
        wait(5)
        -- Karakteri al
        local character = game.Players.LocalPlayer.Character["Left Arm"].ArmFX  -- Bu script karakterin iÃƒÂ§ine yerleÃ…Å¸tirilmeli
        
        -- PartikÃƒÂ¼l efektlerini devre dÃ„Â±Ã…Å¸Ã„Â± bÃ„Â±rakmak iÃƒÂ§in bir fonksiyon tanÃ„Â±mla
        local function disableParticles(object)
            -- EÃ„Å¸er object bir ParticleEmitter ise, onu devre dÃ„Â±Ã…Å¸Ã„Â± bÃ„Â±rak
            if object:IsA("ParticleEmitter") then
                object.Enabled = false
            end
        end
        
        -- Karakterin iÃƒÂ§indeki tÃƒÂ¼m ÃƒÂ§ocuklarÃ„Â± tarayarak partikÃƒÂ¼l efektlerini devre dÃ„Â±Ã…Å¸Ã„Â± bÃ„Â±rak
        local function disableAllParticlesInCharacter(character)
            for _, child in ipairs(character:GetDescendants()) do
                disableParticles(child)
            end
        end
        
        -- Script ÃƒÂ§alÃ„Â±Ã…Å¸tÃ„Â±Ã„Å¸Ã„Â±nda tÃƒÂ¼m partikÃƒÂ¼l efektlerini devre dÃ„Â±Ã…Å¸Ã„Â± bÃ„Â±rak
        disableAllParticlesInCharacter(character)
        wait(0.5)
        local sparkleomg = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].WindupSpark:Clone()
        sparkleomg.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        game.Players.LocalPlayer.Character["Left Arm"].WindupSpark.WindupSpark.Enabled = true
        wait(2)
        game.Players.LocalPlayer.Character["Left Arm"].WindupSpark.WindupSpark.Enabled = false
        end)
        spawn(function()
            wait(2.55)
            local Gui = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
            Gui.Parent = game.Players.LocalPlayer.PlayerGui
            wait()
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 0
            }):Play();
            wait(3.66)
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 1
            }):Play();
            wait(0.03)
            local CC = game.ReplicatedStorage.Resources.FiveSeasonsFX.FistsCC
            for _,Particles in pairs(CC:GetDescendants()) do
                if Particles:IsA("ColorCorrectionEffect") then
                    spawn(function()
                        local Clone = Particles:Clone()
                        Clone.Parent = game.Lighting
                        Clone.Enabled = true
                        wait()
                        game.TweenService:Create(Clone, TweenInfo.new(0.07, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                            Brightness = 0,
                            Contrast = 0,
                            Saturation = 0
                        }):Play();
                        wait(0.2)
                        Clone:Destroy()
                    end)
                end
            end
            wait(5)
            Gui:Destroy()
        end)
        spawn(function()
            wait(2.55)
            local Gui = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
            Gui.Parent = game.Players.LocalPlayer.PlayerGui
            wait()
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 0
            }):Play();
            wait(3.66)
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 1
            }):Play();
            wait(0.03)
            local CC = game.ReplicatedStorage.Resources.FiveSeasonsFX.FistsCC
            for _,Particles in pairs(CC:GetDescendants()) do
                if Particles:IsA("ColorCorrectionEffect") then
                    spawn(function()
                        local Clone = Particles:Clone()
                        Clone.Parent = game.Lighting
                        Clone.Enabled = true
                        wait()
                        game.TweenService:Create(Clone, TweenInfo.new(0.07, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                            Brightness = 0,
                            Contrast = 0,
                            Saturation = 0
                        }):Play();
                        wait(0.2)
                        Clone:Destroy()
                    end)
                end
            end
            wait(5)
            Gui:Destroy()
        end)
        spawn(function()
            wait(3.5)
            spawn(function()
                wait(0.5)
                local Arm1 = RS.Resources.FiveSeasonsFX.CharFX.ArmBurst:Clone()
                Arm1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
                Emit.Emit(Arm1)
                wait(2.2)
                Emit.Emit(Arm1)
                wait(1.5)
                Arm1:Destroy()
            end)
            spawn(function()
                wait(0.5)
                local Arm2 = RS.Resources.FiveSeasonsFX.CharFX.ArmFX:Clone()
                Arm2.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                spawn(function()
                    wait(1)
                    Emit.Disabled(Arm2)
                    wait(2)
                    Emit.Enabled(Arm2)
                end)
                wait(2)
                Arm2:Destroy()
            end)
            spawn(function()
                wait(0.5)
                local ArmGlow = RS.Resources.FiveSeasonsFX.CharFX.WindupGlow:Clone()
                ArmGlow.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                spawn(function()
                    wait(1)
                    Emit.Enabled(ArmGlow)
                    wait(1.5)
                    Emit.Disabled(ArmGlow)
                end)
                wait(2)
                ArmGlow:Destroy()
            end)
            spawn(function()
                wait(2.5)
                local Arm3 = RS.Resources.FiveSeasonsFX.CharFX.ArmEnabled:Clone()
                Arm3.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                wait(1.75)
                Arm3:Destroy()
    
            end)
            spawn(function()
                wait(2.5)
                local eye = RS.Resources.FiveSeasonsFX.CharFX.EyeEmit:Clone()
                eye.Parent = game.Players.LocalPlayer.Character.Head
                Emit.Emit(eye)
                wait(3)
                eye:Destroy()
            end)
        end)
        -- Fetch the module script and load it
        local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Startup"]
        local cutsceneData = loadModuleScript(moduleScript)
        print("Cutscene data:", cutsceneData)
        wait(0.2)
        Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/cutscene'))())
        end)
        wait(8.5)
        character.HumanoidRootPart.Anchored = false
        spawn(function()
            wait(6)
            local Soundez = Instance.new("Sound", character.Torso)
            Soundez.SoundId = "rbxassetid://18461821277"
            Soundez.Playing = true
            Soundez.Volume = 0.5
            wait(1.5)
            Soundez.Volume = 5
        end)
        spawn(function()
            wait(3)
            character.HumanoidRootPart.Anchored = true
            local RunService = game:GetService("RunService")
            local Players = game:GetService("Players")
            local TweenService = game:GetService("TweenService")
            local localPlayer = Players.LocalPlayer
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            local camera = workspace.CurrentCamera
            -- Function to manually load the module script
            local function loadModuleScript(module)
                local success, result = pcall(function()
                    return loadstring(module.Source)()
                end)
                if success then
                    print("Module loaded successfully")
                    return result
                else
                    warn("Failed to load the module script:", result)
                    return nil
                end
            end
            
            local function Cinematic(cutsceneData)
                if not cutsceneData then
                    warn("Cutscene data is nil")
                    return
                end
            
                local originalCFrame = camera.CFrame
                local elapsedTime = 0
                local connection
            
                character.Humanoid.AutoRotate = false
                camera.CameraType = Enum.CameraType.Scriptable
            
                connection = RunService.RenderStepped:Connect(function(deltaTime)
                    elapsedTime = elapsedTime + deltaTime * 60
                    local keyFrame = cutsceneData[math.ceil(elapsedTime)]
            
                    if keyFrame then
                        TweenService:Create(camera, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            CFrame = character.HumanoidRootPart.CFrame * keyFrame.cframe,
                            FieldOfView = keyFrame.fov
                        }):Play()
                        print("Playing keyFrame", keyFrame)
                    else
                        connection:Disconnect()
                        camera.FieldOfView = 70
                        character.Humanoid.AutoRotate = true
                        camera.CameraType = Enum.CameraType.Custom
                        camera.CFrame = originalCFrame
                        print("Cutscene ended")
                    end
                end)
            end
            
            -- Fetch the module script and load it
            local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Attack"]
            local cutsceneData = loadModuleScript(moduleScript)
            print("Cutscene data:", cutsceneData)
            Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/cutscene2'))())
            local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:WaitForChild("Humanoid")
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462894593"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local Hand2 = FiveEffects.CharFX.ArmFX:Clone()
        Hand2.Parent = character["Left Arm"]
        
        
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, 600.716, humanoidRootPart.Position.Z)
        wait(9.5)
        
        character.HumanoidRootPart.Anchored = false
        character["Left Arm"].ArmFX:Destroy()
            end)
  	end    
})

UltAnimTab:AddButton({
	Name = "KJ Ultimate Variant 1",
	Callback = function()
        local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")
        
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://17140902079"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
        Anim:Play()
        p.Character.HumanoidRootPart.Anchored = true
        
        -- Local Script
        
        local soundId = 17150550302 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_song_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        -- Local Script
        
        local soundId = 17150550559 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_Voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch3 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        EmitBatch3.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch3:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch2 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        EmitBatch2.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch2:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        local sparkles1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        sparkles1.Parent = game.Players.LocalPlayer.Character["Torso"]
            for _, child in ipairs(sparkles1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local fine = game.ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
        fine.Parent = game.Players.LocalPlayer.Character["Torso"]
            for _, child in ipairs(fine:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
        red.Parent = game.Players.LocalPlayer.Character["Right Leg"]
            for _, child in ipairs(red:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red2 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
        red2.Parent = game.Players.LocalPlayer.Character["Left Leg"]
            for _, child in ipairs(red2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red3 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
        red3.Parent = game.Players.LocalPlayer.Character["Left Leg"]
            for _, child in ipairs(red3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
        red4.Parent = game.Players.LocalPlayer.Character["Right Leg"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        wait(8.2)
        fine:Destroy()
        red:Destroy()
        red2:Destroy()
        red3:Destroy()
        red4:Destroy()
        local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
        fine2.Parent = game.Players.LocalPlayer.Character["Right Arm"]
            for _, child in ipairs(fine2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
            p.Character.HumanoidRootPart.Anchored = false
  	end    
})

UltAnimTab:AddButton({
	Name = "KJ Ultimate Variant 2",
	Callback = function()
        local p = game.Players.LocalPlayer
        local Humanoid = p.Character:WaitForChild("Humanoid")
        local candash = false
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18445236460"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()
        game.Players.LocalPlayer.Character.Animate.Enabled = false
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local move = Instance.new("BodyVelocity", game.Players.LocalPlayer.Character.HumanoidRootPart)
        spawn(function()
                
            local sped = 5
        
            move.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
            move.P = 10000
            move.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        
            --candash = true
        
            repeat
                move.Velocity = Vector3.new(1,1,1) * game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector * sped
                wait(0)
                until candash == true
        end)
        
        spawn(function() -- Stun/UnStun
            wait(0.2)
            sped = 8
            wait(0.1)
            sped = 10
            wait(0.1)
            sped = 13
            wait(0.1)
            sped = 15
            wait(0.1)
            sped = 14
            wait(0.1)
            sped = 12
            wait(0.1)
            sped = 11
            wait(1)
            
            move:Destroy()
        end)
        local soundId = 18445285190
        
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_varient_2_sfx_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local soundId = 18445228824
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_awakening_varient_3_voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local soundId = 18445228136
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_music_varient_2_start"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local rushSpeed = 7
        local maxForce = Vector3.new(100000, 0, 100000)
        
        local camera = game.Workspace.CurrentCamera
        
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        
        wait(1.8)
        
        local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        fine2.Parent = game.Players.LocalPlayer.Character["Left Arm"]
            for _, child in ipairs(fine2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
            end
        local fine3 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        fine3.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(fine3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local sparkles1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        sparkles1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(sparkles1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local twisty1 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        twisty1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(twisty1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local leap1 = game.ReplicatedStorage.Resources.KJEffects["LeapParticles"].Leap:Clone()
        leap1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(leap1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local boom1 = game.ReplicatedStorage.Resources.KJEffects["SpinningSmoke"].Smoke:Clone()
        boom1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
            for _, child in ipairs(boom1:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(60) -- Emit 20 particles
                end
            end    
            wait(3)
            game.Players.LocalPlayer.Character.Animate.Enabled = true
    end
})
VillainTab:AddButton({
	Name = "Stoic Bomb On Dummy",
	Callback = function()
        spawn(function()
            local SoundTP = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            SoundTP.SoundId = "rbxassetid://17149593018"
            SoundTP.Playing = true 
            wait(0.5)
            local OtherSFX = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            OtherSFX.SoundId = "rbxassetid://17141392513"
            OtherSFX.Playing = true 
            wait(0.3)
            local IMMACHARGEMYLASER = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            IMMACHARGEMYLASER.SoundId = "rbxassetid://17141392976"
            IMMACHARGEMYLASER.Playing = true
            wait(1)
            local haisenbakudan = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            haisenbakudan.SoundId = "rbxassetid://17141392676"
            haisenbakudan.Playing = true
            wait(1.5)
            local BOOM = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            BOOM.SoundId = "rbxassetid://17141392854"
            BOOM.Playing = true
            end)
            local player = game.Players.LocalPlayer
            repeat wait() until game.Workspace.Live["Weakest Dummy"].Humanoid
            local humanoid = game.Workspace.Live["Weakest Dummy"].Humanoid
            local character = game.Workspace.Live["Weakest Dummy"]
            local UserInputService = game:GetService("UserInputService")
            
            local anim = Instance.new("Animation")
            anim.AnimationId = "rbxassetid://17141153099"
            
            local playAnim = humanoid:LoadAnimation(anim)
            anim.AnimationId = "rbxassetid://0"
            playAnim:Play()
            playAnim:AdjustSpeed(0.3)
            wait(0.3)
            playAnim:AdjustSpeed(1)
            spawn(function()
            wait(1)
            local omgstoicreal = game.ReplicatedStorage.Resources.StoicBomb.OHNO.Normal:Clone()
            local parent = omgstoicreal
        local attachments = {}
        
        for _, child in ipairs(parent:GetChildren()) do
            if child:IsA("Attachment") and child.Name == "Attachment" then
                table.insert(attachments, child)
            end
        end
        
        local newParent = game.Workspace.Live["Weakest Dummy"]:FindFirstChild("Torso")
        
        if newParent then
            for _, attachment in ipairs(attachments) do
                -- Attachment'Ã„Â±n konumunu ayarlayÃ„Â±n (ÃƒÂ¶rneÃ„Å¸in, aÃ…Å¸aÃ„Å¸Ã„Â±da 2 birim)
                attachment.Parent = newParent
                attachment.Position = attachment.Position + Vector3.new(0, -4, 0) -- Y ekseninde -2 birim aÃ…Å¸aÃ„Å¸Ã„Â±
                game.Workspace.Live["Weakest Dummy"].Torso.Attachment:Destroy()
            end
        end
            end)
            spawn(function()
            local speedlinesamazingomg = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylines:Clone()
            local speedlinesamazingomg2 = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.speedylinesfire:Clone()
            speedlinesamazingomg.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            speedlinesamazingomg2.Parent = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment
            local hmattachmentsus = game.ReplicatedStorage.Resources.KJEffects.stoicbombspeedlines.Attachment:Clone()
            hmattachmentsus.Parent = game.Workspace.Live["Weakest Dummy"].Torso
            game.Workspace.Live["Weakest Dummy"].Torso.Attachment["STAR!!!"].Enabled = true
            game.Workspace.Live["Weakest Dummy"].Torso.Attachment.speedylines.Enabled = true
            game.Workspace.Live["Weakest Dummy"].Torso.Attachment.speedylinesfire.Enabled = true
            end)
            local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
            launch1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(launch1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(3) -- Emit 20 particles
                    end
                end
            wait(0.1)
            local light1 = game.ReplicatedStorage.Resources.StoicBomb["stoicbombspeedlines"].POINTOLIGHTO:Clone()
            light1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(light1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
            wait(1.4)
            local boom1 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].Attachment:Clone()
            boom1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(boom1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(3) -- Emit 20 particles
                    end
                end
            wait(1.6)
            local stoic1 = game.ReplicatedStorage.Resources.StoicBomb["pre"].Part.Attachment:Clone()
            stoic1.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(stoic1:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                    end
            wait(0.1)
            local stoic2 = game.ReplicatedStorage.Resources.StoicBomb["Main"].Part.Attachment:Clone()
            stoic2.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(stoic2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                    end
        
                    local replicatedStorage = game:GetService("ReplicatedStorage")
        local character = game.Workspace.Live["Weakest Dummy"]
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            light1:Destroy()
            stoic1:Destroy()
            stoic2:Destroy()
            local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
            boom2.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(boom2:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
            boom3.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(boom3:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(5) -- Emit 20 particles
                    end
                end
            local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
            boom4.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
                for _, child in ipairs(boom4:GetChildren()) do
                    if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                        child:Emit(1) -- Emit 20 particles
                    end
                end
                
                wait(0.3)
                local parent = script.Parent
                local attachmentName = "Attachment"  -- Silmek istediÃ„Å¸iniz attachment'Ã„Â±n adÃ„Â±
                
                -- Torso iÃƒÂ§indeki attachment'larÃ„Â± bul
                local torso = game.Workspace.Live["Weakest Dummy"]:FindFirstChild("Torso")
                
                if torso then
                    for _, child in ipairs(torso:GetChildren()) do
                        if child:IsA("Attachment") and child.Name == attachmentName then
                            child:Destroy()  -- Attachment'Ã„Â± sil
                        end
                    end
                end
                
        attachments:Destroy()
            wait(0.3)
    end
})

VillainTab:AddButton({
	Name = "Five Seasons On Dummy",
	Callback = function()
        local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = game.Workspace.Live["Weakest Dummy"]
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        local humanoid = character:WaitForChild("Humanoid")
        local MYHANDISBURNINGAHHHHH = FiveEffects.HandFire:Clone()
        local Hand = FiveEffects.CharFX.ArmFX:Clone()
        local NOIMTELEPORTINGHELPPPPP = FiveEffects.CharFX.TP:Clone()
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462892217"
        local AnimationTrack = animator:LoadAnimation(Animation)
        AnimationTrack:Play()
        AnimationTrack.Priority = Enum.AnimationPriority.Action4
        AnimationTrack:AdjustSpeed(1)
        Fire.Parent = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart
        Fire2.Parent = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart
        spawn(function()
            wait(0.6)
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.BurnMark["1"].Enabled = true
        end)
        spawn(function()
            wait(7.5)
            local SoundTP = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            SoundTP.SoundId = "rbxassetid://18461671633"
            SoundTP.Playing = true 
        NOIMTELEPORTINGHELPPPPP.Parent = game.Workspace.Live["Weakest Dummy"].Torso
        print("IM TELEPORTING MAMA")
        local beamName = "1" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = game.Workspace.Live["Weakest Dummy"].Torso.TP -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = true
                end
            end
        end
        game.Workspace.Live["Weakest Dummy"].Torso.TP["90"].Enabled = true
        game.Workspace.Live["Weakest Dummy"].Torso.TP.FlashStep.Enabled = true
        activateParticles()
        print("IM TELEPORTING MAMA")
        end)
        spawn(function()
            wait(-500)
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.HeatUp["1"].Enabled = true
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.HeatUp.Wisps.Enabled = true
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.HeatUp.Position = Vector3.new(0, -0, 0)
        end)
        
        game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.BurnMark.Position = Vector3.new(0, -2, 0)
        OMGREAL.Parent = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart
        OMGREAL2.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        OMGREAL3.Parent = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart
        game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = true
        game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = true
        game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = true
        spawn(function()
            wait(2)
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.HeatUp["1"].Enabled = false
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.HeatUp.Wisps.Enabled = false
        end)
        spawn(function()
            wait(2)
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.BurnMark["1"].Enabled = false
            wait(5)
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = false
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = false
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart["5"].Enabled = false
            wait(3)
            NOIMTELEPORTINGHELPPPPP.Parent = game.Workspace.Live["Weakest Dummy"].Torso
        local beamName = "1" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = game.Workspace.Live["Weakest Dummy"].Torso.TP -- Beamlerin bulunduÃ„Å¸u parent
        
        local function disableParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = false
                end
            end
        end
        game.Workspace.Live["Weakest Dummy"].Torso.TP["90"].Enabled = false
        game.Workspace.Live["Weakest Dummy"].Torso.TP.FlashStep.Enabled = false
        disableParticles()
        end)
        spawn(function()
            local sound = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"])
            sound.Looped = false
            sound.SoundId = "rbxassetid://18460863844"
            sound.Playing = true
            local sound2 = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"])
            sound2.Looped = false
            sound2.SoundId = "rbxassetid://18460952794"
            sound2.Playing = true
            wait(3.4)
            local sound3 = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"])
            sound3.Looped = false
            sound3.SoundId = "rbxassetid://18460893321"
            sound3.Playing = true
            wait(10.95)
            sound2.Playing = false
        end)
        spawn(function()
        wait(1)
        local GOOFYEFFECTFINAL = FiveEffects.CharFX.BeamFX:Clone()
        GOOFYEFFECTFINAL.Parent = game.Workspace.Live["Weakest Dummy"].Torso
        local beamName = "4" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        local beamName = "GlowbeaMS" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams["2"].Enabled = true
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams["3"].Enabled = true
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams.Beam.Enabled = true
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams.GlowbeaMS.Enabled = true
        wait(2.5)
        local beamName = "4" -- Aktif hale getirmek istediÃ„Å¸iniz beam'in adÃ„Â±
        local parent = game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams -- Beamlerin bulunduÃ„Å¸u parent
        
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams["2"].Enabled = false
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams["3"].Enabled = false
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams["4"].Enabled = false
        game.Workspace.Live["Weakest Dummy"].Torso.BeamFX.Beams.Beam.Enabled = false
        local beamName = "GlowbeaMS"
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        
        end)
        spawn(function()
            game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.Anchored = true
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        local camera = workspace.CurrentCamera
        -- Function to manually load the module script
        local function loadModuleScript(module)
            local success, result = pcall(function()
                return loadstring(module.Source)()
            end)
            if success then
                print("Module loaded successfully")
                return result
            else
                warn("Failed to load the module script:", result)
                return nil
            end
        end
    end)
        spawn(function()
        wait(13)
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        local camera = workspace.CurrentCamera
        -- Function to manually load the module script
        local player = game.Players.LocalPlayer
    local character = game.Workspace.Live["Weakest Dummy"]
    local humanoid = character:WaitForChild("Humanoid")
    local animator = humanoid:WaitForChild("Animator")
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://18462894593"
    local AnimationTrack = animator:LoadAnimation(Animation)
    AnimationTrack:Play()
    AnimationTrack.Priority = Enum.AnimationPriority.Action4
    AnimationTrack:AdjustSpeed(1)
        local bringsound = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"])
        bringsound.SoundId = "rbxassetid://18461820786"
        bringsound.Playing = true
        end)
        spawn(function()
            local GUI = FiveEffects.FXUi:Clone()
            wait(16)
            GUI.Parent = localPlayer.PlayerGui
            localPlayer.PlayerGui.FXUi.FiveSeasons.Visible = true
            localPlayer.PlayerGui.FXUi.FiveSeasonsDots.Visible = true
            localPlayer.PlayerGui.FXUi.Punches.Visible = true
            localPlayer.PlayerGui.FXUi.Vignette.Visible = true
            localPlayer.PlayerGui.FXUi.Vignette2.Visible = true
            localPlayer.PlayerGui.FXUi.White.Visible = true
            wait(2)
            localPlayer.PlayerGui.FXUi.FiveSeasons.Visible = false
            localPlayer.PlayerGui.FXUi.FiveSeasonsDots.Visible = false
            localPlayer.PlayerGui.FXUi.Punches.Visible = false
            localPlayer.PlayerGui.FXUi.Vignette.Visible = false
            localPlayer.PlayerGui.FXUi.Vignette2.Visible = false
            localPlayer.PlayerGui.FXUi.White.Visible = false
        end)
        spawn(function()
            wait(19.5)
            local fxUi = localPlayer:WaitForChild("PlayerGui"):WaitForChild("FXUi")
            local impactFrames = fxUi:WaitForChild("ImpactFrames")
            local impactsound = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"].Torso)
            impactsound.SoundId = "rbxassetid://18462312002"
            impactsound.Looped = false
            impactsound.Volume = 5
            impactsound:Play()
            humanoid.WalkSpeed = 16
            for i = 1, 40 do
				local frame = impactFrames:FindFirstChild(i)

				if frame then	

					frame.Visible = true
					task.wait(0.04)
					frame.Visible = false
				end
			end
           
        
            local lastImageLabel = impactFrames:FindFirstChild("40")
            if lastImageLabel then
                lastImageLabel.Visible = true
                fxUi:Destroy()
                humanoid.WalkSpeed = 16
            end
        end)
        
        
        
        
        spawn(function()
            wait(17.5)
            local soundhand = Instance.new("Sound", game.Workspace.Live["Weakest Dummy"])
            soundhand.SoundId = "rbxassetid://18462018744"
            soundhand.Playing = true
            soundhand.Volume = 1
            local FistModel = FiveEffects.FistsModelMirrored:Clone()
            FistModel.Parent = workspace
            local GUI = FiveEffects.FXUi:Clone()
        
            -- Modelde parÃƒÂ§a olup olmadÃ„Â±Ã„Å¸Ã„Â±nÃ„Â± ve PrimaryPart'Ã„Â±n ayarlanÃ„Â±p ayarlanmadÃ„Â±Ã„Å¸Ã„Â±nÃ„Â± kontrol et
            if #FistModel:GetChildren() == 0 then
                warn("FistModel iÃƒÂ§erisinde parÃƒÂ§a bulunamadÃ„Â±.")
                return
            end
        
            -- Ã„Â°lk parÃƒÂ§ayÃ„Â± PrimaryPart olarak ayarla (bu modelin bir PrimaryPart'Ã„Â± yoksa)
            if not FistModel.PrimaryPart then
                FistModel.PrimaryPart = FistModel:GetChildren()[1]
                warn("PrimaryPart ayarlandÃ„Â±: " .. FistModel.PrimaryPart.Name)
            end
        
            -- EÃ„Å¸er PrimaryPart hala ayarlanmamÃ„Â±Ã…Å¸sa, hatayÃ„Â± bildir
            if not FistModel.PrimaryPart then
                error("FistModel'in PrimaryPart'Ã„Â± ayarlanmamÃ„Â±Ã…Å¸!")
                return
            end
        
            local frontOffset = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame.LookVector * 10
            FistModel:SetPrimaryPartCFrame(game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, 20, 0) + frontOffset)
        
            -- YumruklarÃ„Â±n hareketini ayarla
            for i = 1, 5 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -5, 0))
            end
            for i = 1, 75 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -0.5, 0))
            end
            for i = 1, 5 do
                wait()
                FistModel:SetPrimaryPartCFrame(FistModel.PrimaryPart.CFrame + Vector3.new(0, -40, 0))
            end
        
            FistModel:Destroy()
        
            local Explosion = FiveEffects.FinalExplosion:Clone()
            Explosion.Parent = workspace
            Explosion:SetPrimaryPartCFrame(game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame * CFrame.new(0, -147, 0))
        end)
        
        
        
        
        spawn(function()
            wait(4)
        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Left Arm"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
                end
                local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Left Arm"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
                end
                wait(1.9)
                red4:Destroy()
                                local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].EyeEmit:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Head"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
                end
                        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Left Arm"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
                end
        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Left Arm"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(20) -- Emit 20 particles
                end
                end
                        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Left Arm"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
                end
                wait(1.8)
                red4:Destroy()
        local player = game.Players.LocalPlayer
        local humanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        
        
        
        -- Set the initial runspeed
        humanoid.WalkSpeed = 100
    
        
        
            wait(1)
            wait(3.5)
            game.Workspace.Live["Weakest Dummy"].Head.EyeEmit.ParticleEmitter.Enabled = false
            end)
        end    
})
VillainTab:AddButton({
	Name = "KJ Ultimate Variant 1 On Dummy",
	Callback = function()
        local p = game.Players.LocalPlayer
        local Humanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://17140902079"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
        Anim:Play()
        
        -- Local Script
        
        local soundId = 17150550302 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_song_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        -- Local Script
        
        local soundId = 17150550559 -- Correct sound ID
        
        -- Create a new Sound instance
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_Voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0 -- Pitch set to 1.0
        sound.PlaybackSpeed = 1.0 -- Adjusted playback speed
        
        -- Parent the sound to Workspace
        sound.Parent = workspace
        
        -- Play the sound
        sound:Play()
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch3 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch3.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch3:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch1.Parent = game.Workspace.Live["Weakest Dummy"]:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch1.Parent = game.Workspace.Live["Weakest Dummy"]:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch1.Parent = game.Workspace.Live["Weakest Dummy"]:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        end
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch2 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch2.Parent = game.Workspace.Live["Weakest Dummy"]:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch2:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1) -- Emit 1 particle
            end
        end
        
        local fine = game.ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
        fine.Parent = game.Workspace.Live["Weakest Dummy"]["Torso"]
            for _, child in ipairs(fine:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
        red.Parent = game.Workspace.Live["Weakest Dummy"]["Right Leg"]
            for _, child in ipairs(red:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red2 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
        red2.Parent = game.Workspace.Live["Weakest Dummy"]["Left Leg"]
            for _, child in ipairs(red2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red3 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
        red3.Parent = game.Workspace.Live["Weakest Dummy"]["Left Leg"]
            for _, child in ipairs(red3:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        local red4 = game.ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
        red4.Parent = game.Workspace.Live["Weakest Dummy"]["Right Leg"]
            for _, child in ipairs(red4:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
        wait(8.2)
        fine:Destroy()
        red:Destroy()
        red2:Destroy()
        red3:Destroy()
        red4:Destroy()
        local fine2 = game.ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
        fine2.Parent = game.Workspace.Live["Weakest Dummy"]["Right Arm"]
            for _, child in ipairs(fine2:GetChildren()) do
                if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
                    child:Emit(1) -- Emit 20 particles
                end
            end
  	end    
})
VillainTab:AddButton({
	Name = "KJ Ultimate Variant 2 On Dummy",
	Callback = function()
        local p = game.Players.LocalPlayer
        local Humanoid = game.Workspace.Live["Weakest Dummy"]:WaitForChild("Humanoid")
        local candash = false
        local AnimAnim = Instance.new("Animation")
        AnimAnim.AnimationId = "rbxassetid://18445236460"
        local Anim = Humanoid:LoadAnimation(AnimAnim)
        AnimAnim.AnimationId = "rbxassetid://0"
        Anim:Play()
        game.Workspace.Live["Weakest Dummy"].Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local move = Instance.new("BodyVelocity", game.Workspace.Live["Weakest Dummy"].HumanoidRootPart)
        spawn(function()
                
            local sped = 5
        
            move.MaxForce = Vector3.new(math.huge,math.huge,math.huge)
            move.Velocity = Vector3.new(1,1,1) * game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame.LookVector * sped
            move.P = 10000
            move.Parent = game.Workspace.Live["Weakest Dummy"].HumanoidRootPart
        
            --candash = true
        
            repeat
                move.Velocity = Vector3.new(1,1,1) * game.Workspace.Live["Weakest Dummy"].HumanoidRootPart.CFrame.LookVector * sped
                wait(0)
                until candash == true
        end)
        
        spawn(function() -- Stun/UnStun
            wait(0.2)
            sped = 8
            wait(0.1)
            sped = 10
            wait(0.1)
            sped = 13
            wait(0.1)
            sped = 15
            wait(0.1)
            sped = 14
            wait(0.1)
            sped = 12
            wait(0.1)
            sped = 11
            wait(1)
            
            move:Destroy()
        end)
        local soundId = 18445285190
        
        local sound = Instance.new("Sound")
        sound.Name = "audio/kj_awakening_varient_2_sfx_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        game.Workspace.Live["Weakest Dummy"].Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, false)
        local soundId = 18445228824
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_awakening_varient_3_voice_only"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local soundId = 18445228136
        
        local sound = Instance.new("Sound")
        sound.Name = "Audio/kj_music_varient_2_start"
        sound.SoundId = "rbxassetid://" .. soundId
        sound.Volume = 1
        sound.Pitch = 1.0
        sound.PlaybackSpeed = 1.0
        sound.Parent = workspace
        sound:Play()
        
        local rushSpeed = 7
        local maxForce = Vector3.new(100000, 0, 100000)
        
        local camera = game.Workspace.CurrentCamera
        
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        wait(1.8)
        
        local ReplicatedStorage = game:GetService("ReplicatedStorage")
        local EmitBatch3 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
        local player = game.Players.LocalPlayer
        local character = game.Workspace.Live["Weakest Dummy"]
        
        EmitBatch3.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch3:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        
        local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
        EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch1:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
            end
        end
        
        local EmitBatch2 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
        EmitBatch2.Parent = character:WaitForChild("HumanoidRootPart")
        
        for _, child in ipairs(EmitBatch2:GetChildren()) do
            if child:IsA("ParticleEmitter") then
                child:Emit(1)
                
                game.Workspace.Live["Weakest Dummy"].Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
            end
        end
  	end    
})
M1Tab:AddButton({
	Name = "KJ",
	Callback = function()
        local Players = game:GetService("Players")

        local player = Players.LocalPlayer
        
        local character = player.Character or player.CharacterAdded:Wait()
        
        local humanoid = character:WaitForChild("Humanoid")
        
        
        local animationIdsToStop = {
        
            [10469493270] = true,
        
            [10469630950] = true,
        
            [10469639222] = true,
        
            [10469643643] = true,
        
        }
        
        
        local replacementAnimations = {
        
            ["10469643643"] = "rbxassetid://17325537719",
        
            ["10469639222"] = "rbxassetid://17325522388",
        
            ["10469630950"] = "rbxassetid://17325513870",
        
            ["10469493270"] = "rbxassetid://17325510002",
        
        }
        
        
        local queue = {}
        
        local isAnimating = false
        
        
        local function playReplacementAnimation(animationId)
        
            if isAnimating then
        
                table.insert(queue, animationId)
        
                return
        
            end
        
           
        
            isAnimating = true
        
            local replacementAnimationId = replacementAnimations[tostring(animationId)]
        
            if replacementAnimationId then
        
                local AnimAnim = Instance.new("Animation")
        
                AnimAnim.AnimationId = replacementAnimationId
        
                local Anim = humanoid:LoadAnimation(AnimAnim)
        
                AnimAnim.AnimationId = "rbxassetid://0"
        
                Anim:Play()
        
               
        
                Anim.Stopped:Connect(function()
        
                    isAnimating = false
        
                    if #queue > 0 then
        
                        local nextAnimationId = table.remove(queue, 1)
        
                        playReplacementAnimation(nextAnimationId)
        
                    end
        
                end)
        
            else
        
                isAnimating = false
        
            end
        
        end
        
        
        local function stopSpecificAnimations()
        
            for _, track in ipairs(humanoid:GetPlayingAnimationTracks()) do
        
                local animationId = tonumber(track.Animation.AnimationId:match("%d+"))
        
                if animationIdsToStop[animationId] then
        
                    track:Stop()
        
                end
        
            end
        
        end
        
        
        local function onAnimationPlayed(animationTrack)
        
            local animationId = tonumber(animationTrack.Animation.AnimationId:match("%d+"))
        
            if animationIdsToStop[animationId] then
        
                stopSpecificAnimations()
        
                animationTrack:Stop()
        
               
        
                local replacementAnimationId = replacementAnimations[tostring(animationId)]
        
                if replacementAnimationId then
        
                    playReplacementAnimation(animationId)
        
                end
        
            end
        
        end
        
        
        humanoid.AnimationPlayed:Connect(onAnimationPlayed)
        
        
        local player = game.Players.LocalPlayer
        
        local character = player.Character or player.CharacterAdded:Wait()
        
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
        
        local function onBodyVelocityAdded(bodyVelocity)
        
            if bodyVelocity:IsA("BodyVelocity") then
        
                bodyVelocity.Velocity = Vector3.new(bodyVelocity.Velocity.X, 0, bodyVelocity.Velocity.Z)
        
            end
        
        end
        
        
        character.DescendantAdded:Connect(onBodyVelocityAdded)
        
        
        for _, descendant in pairs(character:GetDescendants()) do
        
            onBodyVelocityAdded(descendant)
        
        end
        
        
        player.CharacterAdded:Connect(function(newCharacter)
        
            character = newCharacter
        
            humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        
            character.DescendantAdded:Connect(onBodyVelocityAdded)
        
           
        
            for _, descendant in pairs(character:GetDescendants()) do
        
                onBodyVelocityAdded(descendant)
        
            end
        
        end)
    end
})
FunTab:AddButton({
	Name = "Counter The Dummy",
	Callback = function()
        local function Cinematic(cutsceneData)
            if not cutsceneData then
                warn("Cutscene data is nil")
                return
            end
            local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = v2.Character or v2.CharacterAdded:Wait()
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid: Instance = character:WaitForChild("Humanoid")
        spawn(function()
            local weakDummy = game.Workspace.Live["Weakest Dummy"]
    local weakDummyHRP = weakDummy:FindFirstChild("HumanoidRootPart")
    
    if weakDummyHRP then
        for i = 1, 10 do
            character:WaitForChild("HumanoidRootPart").CFrame = weakDummyHRP.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)
            wait(1) -- Her aktarÃ„Â±m arasÃ„Â±nda kÃƒÂ¼ÃƒÂ§ÃƒÂ¼k bir bekleme sÃƒÂ¼resi
        end
    end 
        end)
        spawn(function()
            character.HumanoidRootPart.Anchored = true
            wait(10)
            character.HumanoidRootPart.Anchored = face
        end)
            local originalCFrame = game.workspace.Camera.CFrame
            local elapsedTime = 0
            local connection
        
            character.Humanoid.AutoRotate = false
            game.workspace.Camera.CameraType = Enum.CameraType.Scriptable
        
            connection = RunService.RenderStepped:Connect(function(deltaTime)
                elapsedTime = elapsedTime + deltaTime * 60
                local keyFrame = cutsceneData[math.ceil(elapsedTime)]
        
                if keyFrame then
                    TweenService:Create(game.workspace.Camera, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        CFrame = character.HumanoidRootPart.CFrame * keyFrame.cframe,
                        FieldOfView = keyFrame.fov
                    }):Play()
                    print("Playing keyFrame", keyFrame)
                else
                    connection:Disconnect()
                    game.workspace.Camera.FieldOfView = 70
                    character.Humanoid.AutoRotate = true
                    game.workspace.Camera.CameraType = Enum.CameraType.Custom
                    game.workspace.Camera.CFrame = originalCFrame
                    print("Cutscene ended")
                end
            end)
        end
    
        local v_u_1 = game:GetService("RunService")
    local v2 = game.Players.LocalPlayer
    local v_u_3 = v2.Character
    local v_u_4 = workspace.CurrentCamera
        local RS = game.ReplicatedStorage
    local v_u_1 = game:GetService("RunService")
    local v2 = game.Players.LocalPlayer
    local v_u_3 = v2.Character
    local v_u_4 = workspace.CurrentCamera
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local localPlayer = Players.LocalPlayer
    local character = localPlayer.Character
    local Camera = workspace.CurrentCamera
    local FiveEffects = RS.Resources.FiveSeasonsFX
    local EYE = FiveEffects.CharFX.EyeEmit:Clone()
    local KJEffects = RS.Resources.KJEffects
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")
    wait(-5)
    Cinematic(loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/main/lololol.lua"))())
    local character = game.Workspace.Live["Weakest Dummy"]
    local humanoid = character:WaitForChild("Humanoid")
    local animator = humanoid:WaitForChild("Animator")
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://18440398084"
    local AnimationTrack = animator:LoadAnimation(Animation)
    AnimationTrack:Play()
    AnimationTrack.Priority = Enum.AnimationPriority.Action4
    AnimationTrack:AdjustSpeed(1)
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")
    local animator = humanoid:WaitForChild("Animator")
    local Animation = Instance.new("Animation")
    Animation.AnimationId = "rbxassetid://18440406788"
    local AnimationTrack = animator:LoadAnimation(Animation)
    AnimationTrack:Play()
    AnimationTrack.Priority = Enum.AnimationPriority.Action4
    AnimationTrack:AdjustSpeed(1)
    end
})
MiscTab:AddToggle({
    Name = "No Stun",
    Default = false,
    Callback = function(state)
        toggle = state
        while toggle do
            local character = game.Players.LocalPlayer.Character
            if character then
                for _, accessory in pairs(character:GetChildren()) do
                    if accessory:IsA("Accessory") then
                        accessory:Destroy()
                    end
                end
            end
            wait(0.1) -- Adjust delay as needed
        end
    end    
})
WallComboWOWOWW:AddToggle({
    Name = "Replace Wall Combo(Only Saitama)",
    Default = false,
    Callback = function(state)
        toggle = state
            

local function stopAnimationAndDoSomething(character, animationId, action)
    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if humanoid then
        local animator = humanoid:FindFirstChildOfClass("Animator")
        if animator then
            for _, track in ipairs(animator:GetPlayingAnimationTracks()) do
                if track.Animation.AnimationId == "rbxassetid://" .. animationId then
                    track:Stop()
                    action()
                    return
                end
            end
        end
    end
end

-- Example usage
local character = game.Players.LocalPlayer.Character
local animationId = "15955393872" -- Replace with your animation ID
while toggle do
stopAnimationAndDoSomething(character, animationId, function()

    print("Animation stopped! Performing custom action.")
    function Cinematic(moduleData)
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local camera = game.Workspace.CurrentCamera
        local CinematicsModule = moduleData
        local CurrentCameraCFrame = camera.CFrame
        local FrameTime = 0
        local Connection
    
        character.Humanoid.AutoRotate = false
        camera.CameraType = Enum.CameraType.Scriptable
        
        Connection = RunService.RenderStepped:Connect(function(DT)
            FrameTime += DT * 60
            local NeededFrame = CinematicsModule[math.ceil(FrameTime)]
    
            if NeededFrame then
                TweenService:Create(camera, TweenInfo.new(0.015, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                    CFrame = character.HumanoidRootPart.CFrame * NeededFrame.cframe
                }):Play()
                camera.FieldOfView = NeededFrame.fov
            else
                Connection:Disconnect()
                camera.FieldOfView = 70
                character.Humanoid.AutoRotate = true
                camera.CameraType = Enum.CameraType.Custom
                camera.CFrame = CurrentCameraCFrame    
            end
        end)
    end
    Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/wallcombo.lua'))())
    local player = game.Players.LocalPlayer
    repeat wait() until player.Character.Humanoid
    local humanoid = player.Character.Humanoid
    
    local anim = Instance.new("Animation")
    anim.AnimationId = "rbxassetid://18447913645"
    
    local playAnim = humanoid:LoadAnimation(anim)
    anim.AnimationId = "rbxassetid://0"
    playAnim:Play()
        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://18443049348"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 5
    
        local soundeffect = Instance.new("Sound")
        soundeffect.SoundId = "rbxassetid://18443048724"
        soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
        soundeffect:Play()
        soundeffect.Volume = 5
        wait(0)
        local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local ImpactFrames = Instance.new("Folder")
    ImpactFrames.Name = "ImpactFrames"
    ImpactFrames.Parent = ScreenGui
    
    local imageIds = {
        "rbxassetid://18439449672",
        "rbxassetid://18439449322",
        "rbxassetid://18439448827",
        "rbxassetid://18439449322",
        "rbxassetid://18439448569",
        "rbxassetid://18439448279",
        "rbxassetid://18439448279",
        "rbxassetid://18439447816",
        "rbxassetid://18439447528",
        "rbxassetid://18439447248",
        "rbxassetid://18439446937",
        "rbxassetid://18439446621",
        "rbxassetid://18439446312",
        "rbxassetid://18439445892",
        "rbxassetid://18439445557",
        "rbxassetid://18439445557",
        "rbxassetid://18439444854",
        "rbxassetid://18439444197",
        "rbxassetid://18439443641",
        "rbxassetid://18439443091",
        "rbxassetid://18439442732",
        "rbxassetid://18439442280",
        "rbxassetid://18439441717",
        "rbxassetid://18439441301",
        "rbxassetid://18439439276",
        "rbxassetid://18439438892",
        "rbxassetid://18439438588",
        "rbxassetid://18439438325",
        "rbxassetid://18439437897",
        "rbxassetid://18439437436",
        "rbxassetid://18439436945",
        "rbxassetid://18439436647",
        "rbxassetid://18439418311",
        "rbxassetid://18439436436",
        "rbxassetid://18439436154",
        "rbxassetid://18439435769",
        "rbxassetid://18439435367",
        "rbxassetid://18439435078",
        "rbxassetid://18439434634",
        "rbxassetid://18439434365",
        "rbxassetid://18439433887",
        "rbxassetid://18439433322",
        "rbxassetid://18439432946",
        "rbxassetid://18439432512",
        "rbxassetid://18439432070",
        "rbxassetid://18439431561",
        "rbxassetid://18439431285",
        "rbxassetid://18439430917",
        "rbxassetid://18439430536",
        "rbxassetid://18439430081",
        "rbxassetid://18439429154",
        "rbxassetid://18439428804",
        "rbxassetid://18439428359",
        "rbxassetid://18443661388",
        "rbxassetid://18439426773",
        "rbxassetid://18439426388",
        "rbxassetid://18439425936",
        "rbxassetid://18439425421",
        "rbxassetid://18439424913",
        "rbxassetid://18439424277",
        "rbxassetid://18439423773",
        "rbxassetid://18439423480",
        "rbxassetid://18439423074",
        "rbxassetid://18439422402",
        "rbxassetid://18439422036",
        "rbxassetid://18439421605",
        "rbxassetid://18439421256",
        "rbxassetid://18439420866",
        "rbxassetid://18439420496",
        "rbxassetid://18439420101",
        "rbxassetid://18439419463",
        "rbxassetid://18439418712",
        "rbxassetid://18439418311"
    }
    
    for i = 1, 73 do
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Name = i
        ImageLabel.Size = UDim2.new(0.005, 0, 0, 0)
        ImageLabel.Position = UDim2.new(0, 0, 0, 0)
        ImageLabel.ImageTransparency = 0
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Visible = true
        ImageLabel.Parent = ImpactFrames
        if imageIds[i] then
            ImageLabel.Image = imageIds[i]
        end
        task.wait()
    end
    
    for i = 1, 73 do
        ImpactFrames:GetChildren()[i].Size = UDim2.new(1, 0, 1, 100)
        ImpactFrames:GetChildren()[i].Position = UDim2.new(0, 0, 0, -100)
        task.wait(0.04)
        ImpactFrames:GetChildren()[i].ImageTransparency = 1
    end
    
    ScreenGui:Destroy()
    
end)
wait(0)
end
        end   
})
FunTab:AddButton({
    Name = "Dummy's Failed Counter",
    Callback = function()
local p = game.Players.LocalPlayer
local TS = game:GetService("TweenService")
local RunService = game:GetService("RunService")

local FinalDamage = 75
local sped = 200
local candash = true
local hit = 0
local Character = p.Character
local Humanoid = Character:WaitForChild("Humanoid")
local RootPart = Character:WaitForChild("HumanoidRootPart")
local move = Instance.new("BodyVelocity", RootPart)
move.MaxForce = Vector3.new(math.huge, 0, math.huge)

local hitbox = Instance.new("Part")
hitbox.CanCollide = false
hitbox.Anchored = false
hitbox.Name = "Hitbox"
hitbox.Material = Enum.Material.ForceField
hitbox.Size = Vector3.new(8, 8, 10)
hitbox.CanQuery = false
hitbox.Transparency = 0.5
hitbox.Color = Color3.fromRGB(255, 0, 0)
hitbox.Massless = true
hitbox.Parent = workspace

function getRoot(char)
	local rootPart = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Torso') or char:FindFirstChild('UpperTorso')
	return rootPart
end

local hitlist = {}

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://17354976067"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()

local soundId = 17429233290 -- Correct sound ID

-- Create a new Sound instance
local sound = Instance.new("Sound")
sound.Name = "Dropkick_Miss"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0 -- Pitch set to 1.0
sound.PlaybackSpeed = 1.0 -- Adjusted playback speed

-- Parent the sound to Workspace
sound.Parent = workspace

-- Play the sound
sound:Play()

local soundId = 17356346310 -- Correct sound ID

-- Create a new Sound instance
local sound = Instance.new("Sound")
sound.Name = "Dropkick_SFX"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0 -- Pitch set to 1.0
sound.PlaybackSpeed = 1.0 -- Adjusted playback speed

-- Parent the sound to Workspace
sound.Parent = workspace

-- Play the sound
sound:Play()

Humanoid.WalkSpeed = 0

Anim:GetMarkerReachedSignal("StartHitbox"):Connect(function()
	move.Velocity = sped * RootPart.CFrame.LookVector
	move.Parent = RootPart
	hitbox.CFrame = RootPart.CFrame * CFrame.new(0, 0, -9)

	local function onHeartbeat()
		if candash then
			move.Velocity = sped * RootPart.CFrame.LookVector
			hitbox.CFrame = RootPart.CFrame * CFrame.new(0, 0, -9)
		end
	end

	local heartbeatConnection
	heartbeatConnection = RunService.Heartbeat:Connect(onHeartbeat)

	hitbox.Touched:Connect(function(hitPart)
		local hitHumanoid = hitPart.Parent:FindFirstChildOfClass("Humanoid")
		if hitHumanoid and hitPart.Parent ~= Character and hit == 0 then
			if not hitlist[hitHumanoid] then
				hitlist[hitHumanoid] = true
				candash = false
				hit = 1

				local speaker = p
				speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = false
				heartbeatConnection:Disconnect()
				move:Destroy()
				hitbox:Destroy()
				Anim:Stop()

				if speaker.Character:FindFirstChildOfClass('Humanoid') and speaker.Character:FindFirstChildOfClass('Humanoid').SeatPart then
					speaker.Character:FindFirstChildOfClass('Humanoid').Sit = false
					task.wait(.1)
				end
				getRoot(speaker.Character).CFrame = getRoot(hitPart.Parent).CFrame + Vector3.new(0,0,0)

				local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
				delay(0, function()
					BeenASecond = true
				end)
				while not BeenASecond do
					for _, v in ipairs(speaker.Character:GetDescendants()) do
						if v:IsA("BasePart") then
							v.Velocity, v.RotVelocity = V3, V3
						end
					end
					task.wait()
				end
                -- Stops the sound
                sound:stop()

                Humanoid.WalkSpeed = 0
                
				local PlayerAnim = Instance.new("Animation")
				PlayerAnim.AnimationId = "rbxassetid://18440406788"
				local Player = Humanoid:LoadAnimation(PlayerAnim)
				PlayerAnim.AnimationId = "rbxassetid://0"
				Player:Play()

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

-- Get the current orientation of the HumanoidRootPart
local currentCFrame = humanoidRootPart.CFrame

-- Calculate the new orientation to look behind (180-degree rotation on Y axis)
local newCFrame = currentCFrame * CFrame.Angles(0, math.rad(180), 0)

-- Update the HumanoidRootPart CFrame to the new orientation
humanoidRootPart.CFrame = newCFrame

local function Cinematic(cutsceneData)
            if not cutsceneData then
                warn("Cutscene data is nil")
                return
            end
            local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = v2.Character or v2.CharacterAdded:Wait()
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid: Instance = character:WaitForChild("Humanoid")
        spawn(function()
            local weakDummy = game.Workspace.Live["Weakest Dummy"]
    local weakDummyHRP = weakDummy:FindFirstChild("HumanoidRootPart")
    
    if weakDummyHRP then
        for i = 1, 10 do
            character:WaitForChild("HumanoidRootPart").CFrame = weakDummyHRP.CFrame * CFrame.new(0, 0, -3) * CFrame.Angles(0, math.pi, 0)
            wait(1) -- Her aktarÃ„Â±m arasÃ„Â±nda kÃƒÂ¼ÃƒÂ§ÃƒÂ¼k bir bekleme sÃƒÂ¼resi
        end
    end 
        end)
        spawn(function()
            character.HumanoidRootPart.Anchored = true
            wait(10)
            character.HumanoidRootPart.Anchored = face
        end)
            local originalCFrame = game.workspace.Camera.CFrame
            local elapsedTime = 0
            local connection
        
            character.Humanoid.AutoRotate = false
            game.workspace.Camera.CameraType = Enum.CameraType.Scriptable
        
            connection = RunService.RenderStepped:Connect(function(deltaTime)
                elapsedTime = elapsedTime + deltaTime * 60
                local keyFrame = cutsceneData[math.ceil(elapsedTime)]
        
                if keyFrame then
                    TweenService:Create(game.workspace.Camera, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        CFrame = character.HumanoidRootPart.CFrame * keyFrame.cframe,
                        FieldOfView = keyFrame.fov
                    }):Play()
                    print("Playing keyFrame", keyFrame)
                else
                    connection:Disconnect()
                    game.workspace.Camera.FieldOfView = 70
                    character.Humanoid.AutoRotate = true
                    game.workspace.Camera.CameraType = Enum.CameraType.Custom
                    game.workspace.Camera.CFrame = originalCFrame
                    print("Cutscene ended")
                end
            end)
        end
    
        local v_u_1 = game:GetService("RunService")
    local v2 = game.Players.LocalPlayer
    local v_u_3 = v2.Character
    local v_u_4 = workspace.CurrentCamera
        local RS = game.ReplicatedStorage
    local v_u_1 = game:GetService("RunService")
    local v2 = game.Players.LocalPlayer
    local v_u_3 = v2.Character
    local v_u_4 = workspace.CurrentCamera
    local RunService = game:GetService("RunService")
    local Players = game:GetService("Players")
    local TweenService = game:GetService("TweenService")
    local localPlayer = Players.LocalPlayer
    local character = localPlayer.Character
    local Camera = workspace.CurrentCamera
    local FiveEffects = RS.Resources.FiveSeasonsFX
    local EYE = FiveEffects.CharFX.EyeEmit:Clone()
    local KJEffects = RS.Resources.KJEffects
    local player = game.Players.LocalPlayer
    local character = player.Character
    local humanoid = character:WaitForChild("Humanoid")
    wait(-5)
    Cinematic(loadstring(game:HttpGet("https://raw.githubusercontent.com/AlperPro/shhh/main/lololol.lua"))())

				local VictimAnim = Instance.new("Animation")
				VictimAnim.AnimationId = "rbxassetid://18440398084"
				local Victim = hitHumanoid:LoadAnimation(VictimAnim)
				VictimAnim.AnimationId = "rbxassetid://0"
				Victim:Play()
                workspace.Dropkick_SFX:Destroy()
                workspace.Dropkick_Miss:Destroy()

local soundId = 13498704840 -- Correct sound ID

-- Create a new Sound instance
local sound = Instance.new("Sound")
sound.Name = "Audio/afterimage6"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0 -- Pitch set to 1.0
sound.PlaybackSpeed = 1.0 -- Adjusted playback speed

-- Parent the sound to Workspace
sound.Parent = workspace

-- Play the sound
sound:Play()

				wait(2)
				speaker.Character:FindFirstChildOfClass('Humanoid').AutoRotate  = true
				Humanoid.WalkSpeed = 0
				candash = true
				hitlist[hitHumanoid] = nil
				hit = 0
			end
		end
	end)
end)

Anim:GetMarkerReachedSignal("End"):Connect(function()
	move:Destroy()
	candash = false
	hitbox:Destroy()
	Humanoid.WalkSpeed = 16
    workspace.Dropkick_SFX:Destroy()
    workspace.Dropkick_Miss:Destroy()
end)
end
})
