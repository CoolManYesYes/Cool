local player = game.Players.LocalPlayer
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminGui"
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local commandFrame = Instance.new("Frame")
commandFrame.Name = "CommandFrame"
commandFrame.Size = UDim2.new(0, 250, 0, 30)  -- Reduced size
commandFrame.Position = UDim2.new(1, -260, 1, -60)  -- Adjusted position
commandFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
commandFrame.BackgroundTransparency = 0.5
commandFrame.Parent = screenGui

local commandBox = Instance.new("TextBox")
commandBox.Name = "CommandBox"
commandBox.Size = UDim2.new(1, -10, 1, -10)
commandBox.Position = UDim2.new(0, 5, 0, 5)
commandBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
commandBox.TextColor3 = Color3.fromRGB(0, 0, 0)
commandBox.Text = ""
commandBox.PlaceholderText = "Enter command here..."
commandBox.Parent = commandFrame

local InfiniteYield = {}
InfiniteYield.commands = {}

function InfiniteYield:AddCommand(name, func)
    self.commands[name] = func
end

function InfiniteYield:ExecuteCommand(name, ...)
    if self.commands[name] then
        self.commands[name](...)
    else
        warn("Command not found: " .. name)
    end
end

InfiniteYield:AddCommand("fly", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    local humanoid = character:FindFirstChildOfClass("Humanoid")
    if not humanoid then return end

    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = Vector3.new(0, 50, 0)
    bodyVelocity.Parent = character.HumanoidRootPart

    humanoid.PlatformStand = true

    local function onInput(input)
        if input.UserInputType == Enum.UserInputType.Keyboard or input.UserInputType == Enum.UserInputType.Touch then
            if input.KeyCode == Enum.KeyCode.W or input.UserInputState == Enum.UserInputState.Begin then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.LookVector * 50
            elseif input.KeyCode == Enum.KeyCode.S then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.LookVector * 50
            elseif input.KeyCode == Enum.KeyCode.A then
                bodyVelocity.Velocity = -character.HumanoidRootPart.CFrame.RightVector * 50
            elseif input.KeyCode == Enum.KeyCode.D then
                bodyVelocity.Velocity = character.HumanoidRootPart.CFrame.RightVector * 50
            end
        end
    end

    game:GetService("UserInputService").InputBegan:Connect(onInput)

    humanoid.Died:Connect(function()
        bodyVelocity:Destroy()
    end)
end)

InfiniteYield:AddCommand("teleport", function(x, y, z)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        character:SetPrimaryPartCFrame(CFrame.new(x, y, z))
    end
end)

InfiniteYield:AddCommand("kill", function(targetPlayerName)
    local player = game.Players:FindFirstChild(targetPlayerName)
    if player and player.Character then
        local humanoid = player.Character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.Health = 0
        end
    end
end)

InfiniteYield:AddCommand("bring", function(targetPlayerName)
    local player = game.Players.LocalPlayer
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if player and targetPlayer and targetPlayer.Character and player.Character then
        local targetRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        local playerRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if targetRootPart and playerRootPart then
            targetRootPart.CFrame = playerRootPart.CFrame
        end
    end
end)

InfiniteYield:AddCommand("invisible", function()
    local player = game.Players.LocalPlayer
    if player and player.Character then
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") or part:IsA("Decal") then
                part.Transparency = 1
            elseif part:IsA("ParticleEmitter") or part:IsA("Beam") or part:IsA("Trail") then
                part.Enabled = false
            elseif part:IsA("BillboardGui") or part:IsA("SurfaceGui") then
                part.Enabled = false
            end
        end
    end
end)

InfiniteYield:AddCommand("god", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.MaxHealth = math.huge
            humanoid.Health = math.huge
        end
    end
end)

InfiniteYield:AddCommand("noclip", function()
    local player = game.Players.LocalPlayer
    local character = player.Character
    if not character then return end

    local function noclip()
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") and part.CanCollide then
                part.CanCollide = false
            end
        end
    end

    game:GetService("RunService").Stepped:Connect(noclip)
end)

InfiniteYield:AddCommand("speed", function(speed)
    local player = game.Players.LocalPlayer
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid.WalkSpeed = tonumber(speed) or humanoid.WalkSpeed
        end
    end
end)

InfiniteYield:AddCommand("tp", function(targetPlayerName)
    local player = game.Players.LocalPlayer
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if player and targetPlayer and targetPlayer.Character and player.Character then
        local targetRootPart = targetPlayer.Character:FindFirstChild("HumanoidRootPart")
        if targetRootPart then
            player.Character:SetPrimaryPartCFrame(targetRootPart.CFrame)
        end
    end
end)

commandBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local commandText = commandBox.Text
        local args = string.split(commandText, " ")
        local commandName = table.remove(args, 1)

        InfiniteYield:ExecuteCommand(commandName, unpack(args))
        commandBox.Text = ""
    end
end)


InfiniteYield:AddCommand("rj", function()
    local player = game.Players.LocalPlayer

local function rejoinServer()
    local placeId = game.PlaceId
    local jobId = game.JobId
    game:GetService("TeleportService"):Teleport(placeId, player)
end

rejoinServer()
end)

InfiniteYield:AddCommand("spin", function(speed)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    
    speed = tonumber(speed) or 10
    
    while true do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.Angles(0, math.rad(speed), 0)
        wait(0.1)
    end
end)

InfiniteYield:AddCommand("jump", function(power)
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid:ChangeState(Enum.HumanoidStateType.Physics)
        character.Humanoid:Move(Vector3.new(0, power, 0))
    end
end)

InfiniteYield:AddCommand("dance", function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid:PlayAnimation(character.Humanoid:LoadAnimation(game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("DanceAnimation")))
    end
end)

InfiniteYield:AddCommand("stand", function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid:Sit(false)
    end
end)

InfiniteYield:AddCommand("teleport", function(location)
    local character = game.Players.LocalPlayer.Character
    if character then
        character:SetPrimaryPartCFrame(CFrame.new(location))
    end
end)

InfiniteYield:AddCommand("kick", function(target)
    local targetPlayer = game.Players:FindFirstChild(target)
    if targetPlayer and targetPlayer.Character then
        targetPlayer.Character:BreakJoints()
    end
end)

InfiniteYield:AddCommand("ban", function(target)
    local targetPlayer = game.Players:FindFirstChild(target)
    if targetPlayer then
        targetPlayer:Kick("You have been banned!")
    end
end)

InfiniteYield:AddCommand("unban", function(target)
    -- Unban logic is typically handled outside of the game, via moderation
    print("Unban logic for player " .. target)
end)

InfiniteYield:AddCommand("size", function(scale)
    local character = game.Players.LocalPlayer.Character
    if character then
        character:SetPrimaryPartCFrame(character.PrimaryPart.CFrame * CFrame.new(scale, scale, scale))
    end
end)

InfiniteYield:AddCommand("color", function(color)
    local character = game.Players.LocalPlayer.Character
    if character then
        character.HumanoidRootPart.BrickColor = BrickColor.new(color)
    end
end)

InfiniteYield:AddCommand("speed", function()
    local character = game.Players.LocalPlayer.Character
    if character and character:FindFirstChild("Humanoid") then
        character.Humanoid.WalkSpeed = 100
    end
end)

InfiniteYield:AddCommand("noclip", function()
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        humanoid.PlatformStand = true
    end
end)

InfiniteYield:AddCommand("godmode", function()
    local character = game.Players.LocalPlayer.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        humanoid.Health = humanoid.MaxHealth
    end
end)


InfiniteYield:AddCommand("unfreeze", function(target)
    local targetPlayer = game.Players:FindFirstChild(target)
    if targetPlayer and targetPlayer.Character then
        local targetCharacter = targetPlayer.Character
        if targetCharacter:FindFirstChild("HumanoidRootPart") then
            targetCharacter.HumanoidRootPart.Anchored = false
        end
    end
end)

InfiniteYield:AddCommand("invisible", function()
    local character = game.Players.LocalPlayer.Character
    if character then
        character.HumanoidRootPart.Transparency = 1
    end
end)

InfiniteYield:AddCommand("visible", function()
    local character = game.Players.LocalPlayer.Character
    if character then
        character.HumanoidRootPart.Transparency = 0
    end
end)

InfiniteYield:AddCommand("reset", function()
    local character = game.Players.LocalPlayer.Character
    if character then
        character:BreakJoints()
    end
end)

InfiniteYield:AddCommand("help", function()

local Message = "Check your console by doing /console in chat"

game:GetService("Chat"):Chat(game.Players.LocalPlayer.Character, Message)
        
    print("commands are:")
print("fly: Makes the player fly.")
print("teleport <x, y, z>: Teleports the player to the given coordinates.")
print("kill <targetPlayerName>: Kills the target player.")
print("bring <targetPlayerName>: Brings the target player to your position.")
print("invisible: Makes the player invisible.")
print("god: Makes the player invincible with unlimited health.")
print("noclip: Enables noclip mode, allowing the player to pass through walls.")
print("speed <speed>: Sets the player's walk speed.")
print("tp <targetPlayerName>: Teleports the player to the target player.")
print("hello: Prints 'Hello, world!' to the output.")
print("rj: Rejoins the current server.")
print("spin <speed>: Spins the player character with the specified speed.")
print("jump <power>: Makes the player jump with a given power.")
print("dance: Makes the player perform a dance animation.")
print("sit: Makes the player sit down.")
print("stand: Makes the player stand up from sitting.")
print("teleport <location>: Teleports the player to the specified location.")
print("kick <target>: Kicks the target player from the server.")
print("ban <target>: Bans the target player from the game.")
print("unban <target>: Unbans the target player from the game (logic handled externally).")
print("size <scale>: Scales the player's character by the specified factor.")
print("color <color>: Changes the player's character color to the specified color.")
print("noclip: Disables collision for the player, allowing them to walk through walls.")
print("godmode: Enables godmode, making the player invincible.")
print("invisible: Makes the player invisible by setting their HumanoidRootPart's transparency to 1.")
print("visible: Makes the player visible again by resetting their HumanoidRootPart's transparency.")
print("reset: Resets the player's character by breaking their joints.")
print("fling <user> flings the user given")
print("FreezeAnims -- freezes the anims")
print("unfreezeAnims -- unfreezes anims")
print("console -- shows Roblox console")
print("hitbox -- expands everyones hitbox")
print("god -- enables godmode")
end)

InfiniteYield:AddCommand("sit", function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

humanoid.Sit = true
end)

InfiniteYield:AddCommand("fling", function(user)
    local targetPlayer = game.Players:FindFirstChild(user)
    
    if targetPlayer and targetPlayer.Character then
        local character = targetPlayer.Character
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        
        if humanoidRootPart then
            local bodyVelocity = Instance.new("BodyVelocity")
            bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)
            bodyVelocity.Velocity = Vector3.new(0, 1000, 0)
            bodyVelocity.Parent = humanoidRootPart
            
            game.Debris:AddItem(bodyVelocity, 0.1)
        end
    else
        warn("Player not found or player has no character.")
    end
end)

InfiniteYield:AddCommand("hello", function()
    print("Hello, world!")
end)

InfiniteYield:AddCommand("FreezeAnims", function()
    local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function freezeAnimations()
    for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
        track:AdjustSpeed(0)
    end
end

freezeAnimations()

humanoid.AnimationPlayed:Connect(function(track)
    track:AdjustSpeed(0)
end)

player.CharacterAdded:Connect(function(char)
    humanoid = char:WaitForChild("Humanoid")
    humanoid.AnimationPlayed:Connect(function(track)
        track:AdjustSpeed(0)
    end)
    freezeAnimations()
end)
end)

InfiniteYield:AddCommand("unfreezeAnims", function()
    local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local function unfreezeAnimations()
    for _, track in pairs(humanoid:GetPlayingAnimationTracks()) do
        track:AdjustSpeed(1)
    end
end

unfreezeAnimations()

humanoid.AnimationPlayed:Connect(function(track)
    track:AdjustSpeed(1)
end)

player.CharacterAdded:Connect(function(char)
    humanoid = char:WaitForChild("Humanoid")
    humanoid.AnimationPlayed:Connect(function(track)
        track:AdjustSpeed(1)
    end)
    unfreezeAnimations()
end)
end)

InfiniteYield:AddCommand("Console", function()
    local text = "/console"

local chatService=game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents")local function sendMessage(text)chatService:WaitForChild("SayMessageRequest"):FireServer(text,"All")end sendMessage(text)
end)

InfiniteYield:AddCommand("hitbox", function()
_G.config = {
HeadSize = 20,
TeamCheck = false,
TargetPart = 'Head', -- 'HumanoidRootPart',
Disabled = true,
Transparency = 0.7,
Color = BrickColor.new("Really blue"),
Material = "Neon"
}

loadstring(game:HttpGet("https://raw.githubusercontent.com/D0LLYNHO/Hitbox/main/Universal", true))()
end)

InfiniteYield:AddCommand("god", function()
    local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function stopAllScripts(parent)
    for _, obj in ipairs(parent:GetDescendants()) do
        if obj:IsA("Script") or obj:IsA("LocalScript") or obj:IsA("ModuleScript") then
            obj.Disabled = true
        end
    end
end

local function disableKillBricks()
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") and obj.Touched then
            local connections = getconnections(obj.Touched)
            for _, connection in ipairs(connections) do
                connection:Disable()
            end
        end
    end
end

stopAllScripts(character)
stopAllScripts(game)
disableKillBricks()
end)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

local function isMobile()
    return game:GetService("UserInputService").TouchEnabled
end

if isMobile() then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "unstable device",
        Text = "Some commands won't work such as fly",
        Duration = 3
    })
end
