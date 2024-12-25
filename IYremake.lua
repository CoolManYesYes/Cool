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

InfiniteYield:AddCommand("hello", function()
    print("Hello, world!")
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
