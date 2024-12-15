local ToolName = "swift sweep"
local function Script()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://16944636115"
sound.Volume = 10
sound.Looped = false
local player = game.Players.LocalPlayer
sound.Parent = player.Character or player.CharacterAdded:Wait()
sound:Play()

local ClientAnimation = 16944265635
local StartTime = 0 
local Speed = 1 
local Duration = 8

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://" .. ClientAnimation
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()
Anim.TimePosition = StartTime
Anim:AdjustSpeed(Speed)
delay(Duration, function() 
Anim:Stop()
end)

wait(0.5)

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://16944654440"
sound.Volume = 10
sound.Looped = false
local player = game.Players.LocalPlayer
sound.Parent = player.Character or player.CharacterAdded:Wait()
sound:Play()

local ClientAnimation = 16944345619
local StartTime = 0 
local Speed = 1 
local Duration = 8

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://" .. ClientAnimation
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()
Anim.TimePosition = StartTime
Anim:AdjustSpeed(Speed)
delay(Duration, function() 
Anim:Stop()
end)
end


local fg = false
local t = Instance.new("Tool")
t.Name = ToolName
t.RequiresHandle = false -- like holding an object only if you put a part named "Handle" but it's going to be client
t.CanBeDropped = false
t.Parent = game.Players.LocalPlayer.Backpack
t.Activated:Connect(function() -- instead of Activated you can do Equipped or Unequipped
if not fg then
fg = true
Script()
fg = false
end
end)

local ToolName = "Coritacal ruin"
local function Script()
local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://17325303798"
sound.Volume = 10
sound.Looped = false
local player = game.Players.LocalPlayer
sound.Parent = player.Character or player.CharacterAdded:Wait()
sound:Play()

local ClientAnimation = 17325254223
local StartTime = 0 
local Speed = 1 
local Duration = 8

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://" .. ClientAnimation
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()
Anim.TimePosition = StartTime
Anim:AdjustSpeed(Speed)
delay(Duration, function() 
Anim:Stop()
end)
end


local fg = false
local t = Instance.new("Tool")
t.Name = ToolName
t.RequiresHandle = false -- like holding an object only if you put a part named "Handle" but it's going to be client
t.CanBeDropped = false
t.Parent = game.Players.LocalPlayer.Backpack
t.Activated:Connect(function() -- instead of Activated you can do Equipped or Unequipped
if not fg then
fg = true
Script()
fg = false
end
end)
