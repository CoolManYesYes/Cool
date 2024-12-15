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
