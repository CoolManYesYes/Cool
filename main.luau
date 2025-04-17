local Repo = "https://raw.githubusercontent.com/deividcomsono/Obsidian/main/"
local Library = loadstring(game:HttpGet(Repo .. "Library.lua"))()
local SaveManager = loadstring(game:HttpGet(Repo .. "addons/SaveManager.lua"))()
local ThemeManager = loadstring(game:HttpGet(Repo .. "addons/ThemeManager.lua"))()
local RepStorage = game:GetService("ReplicatedStorage")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local ClientMain = Players.LocalPlayer.PlayerGui:WaitForChild("NotBrokenUI").CLIENT_MAIN
Players.LocalPlayer.PlayerGui.DescendantAdded:Connect(function(Object)
    if Object.Name == "CLIENT_MAIN" and Object:IsA("LocalScript") then
        ClientMain = Object
    end
end)
local FPLoop = false
local CageDone
local FlySpeed
local IsFlying = false
local espCategories = {
    Entity = false,
    Objectives = false,
    HidingSpots = false,
    Doors = false,
    Coins = false,
}
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()


local FLYING = false
local QEfly = true
local iyflyspeed = 1
local vehicleflyspeed = 1

local flyKeyDown, flyKeyUp

local function getRoot(char)
	return char:FindFirstChild("HumanoidRootPart")
end
local TargetSpeed = 10
local SPEED = 0
function sFLY(vfly)
	repeat task.wait() until LocalPlayer and LocalPlayer.Character and getRoot(LocalPlayer.Character) and LocalPlayer.Character:FindFirstChildOfClass("Humanoid")

	if flyKeyDown then flyKeyDown:Disconnect() end
	if flyKeyUp then flyKeyUp:Disconnect() end

	local character = LocalPlayer.Character
	local root = getRoot(character)
	local CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	local lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
	

	local function FLY()
		FLYING = true

		local BG = Instance.new("BodyGyro")
		BG.P = 9e4
		BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		BG.CFrame = root.CFrame
		BG.Parent = root

		local BV = Instance.new("BodyVelocity")
		BV.Velocity = Vector3.zero
		BV.MaxForce = Vector3.new(9e9, 9e9, 9e9)
		BV.Parent = root

		task.spawn(function()
			while FLYING do
				task.wait()

				local camCF = workspace.CurrentCamera.CFrame
				local moveVec = (camCF.LookVector * (CONTROL.F + CONTROL.B)) +
					((camCF * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.Q + CONTROL.E) * 0.2, 0)).Position - camCF.Position)

				if moveVec.Magnitude > 0 then
					SPEED = TargetSpeed
					BV.Velocity = moveVec.Unit * SPEED
					lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R, Q = CONTROL.Q, E = CONTROL.E}
				else
					SPEED = 0
					BV.Velocity = Vector3.zero
				end

				BG.CFrame = camCF

				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if humanoid and not vfly then
					humanoid.PlatformStand = true
				end
			end

			CONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			lCONTROL = {F = 0, B = 0, L = 0, R = 0, Q = 0, E = 0}
			SPEED = 0
			BG:Destroy()
			BV:Destroy()

			local humanoid = character:FindFirstChildOfClass("Humanoid")
			if humanoid then
				humanoid.PlatformStand = false
			end
		end)
	end

	flyKeyDown = mouse.KeyDown:Connect(function(key)
		key = key:lower()
		local speed = vfly and vehicleflyspeed or iyflyspeed

		if key == "w" then
			CONTROL.F = speed
		elseif key == "s" then
			CONTROL.B = -speed
		elseif key == "a" then
			CONTROL.L = -speed
		elseif key == "d" then
			CONTROL.R = speed
		elseif QEfly and key == "e" then
			CONTROL.Q = speed * 2
		elseif QEfly and key == "q" then
			CONTROL.E = -speed * 2
		end

		pcall(function()
			workspace.CurrentCamera.CameraType = Enum.CameraType.Track
		end)
	end)

	flyKeyUp = mouse.KeyUp:Connect(function(key)
		key = key:lower()

		if key == "w" then
			CONTROL.F = 0
		elseif key == "s" then
			CONTROL.B = 0
		elseif key == "a" then
			CONTROL.L = 0
		elseif key == "d" then
			CONTROL.R = 0
		elseif key == "e" then
			CONTROL.Q = 0
		elseif key == "q" then
			CONTROL.E = 0
		end
	end)

	FLY()
end

function NOFLY()
	FLYING = false
	if flyKeyDown then flyKeyDown:Disconnect() end
	if flyKeyUp then flyKeyUp:Disconnect() end

	local humanoid = Players.LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
	if humanoid then
		humanoid.PlatformStand = false
	end

	pcall(function()
		workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
	end)
end
local allTrackedESPs = {}

local function updateESPVisibility()
    for _, data in pairs(allTrackedESPs) do
        local shouldBeVisible = espCategories[data.Category]
        if shouldBeVisible then
            data.ESP:Show()
        else
            data.ESP:Hide()
        end
    end
end


local IsCaged = false


for _, Item in getgc(false) do
    if typeof(Item) == "function" and getinfo(Item).name == "minigameComplete" then
    warn("Found")
    CageDone = Item
        old = hookfunction(Item, function(...)
            
            IsCaged = false
            old(...)
        end)
    end
end

local Options = Library.Options
Options.MenuKeybind = "P"
local Toggles = Library.Toggles

Library.ForceCheckbox = false 
Library.ShowToggleFrameInKeybinds = true

local Window = Library:CreateWindow({
	

	Title = "Foundation",
	Footer = "made by coolmanyesyes6",
	Icon = 0,
	NotifySide = "Right",
	ShowCustomCursor = false

})

local Tabs = {
	Main = Window:AddTab("Main", "user"),
    Visuals = Window:AddTab("Visuals", "camera"),
	Exploits = Window:AddTab("Exploits", "shield-alert"),
    ["UI Settings"] = Window:AddTab("UI Settings", "settings"),
}

local LeftGroupBox = Tabs.Main:AddLeftGroupbox("<b>LocalPlayer</b>")
local WSLoopEnabled = false
local WSLoopVal = 16
LeftGroupBox:AddToggle("WSEnable", {
	Text = "Enable Walkspeed",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		WSLoopEnabled = Value
	end,
})

LeftGroupBox:AddToggle("Fly", {
    Text = "Fly",
    Default = false,
    Callback = function(Value)
		IsFlying = Value
        if Value then
            NOFLY()
		    wait()
		    sFLY()
        else
            NOFLY()
        end
	end,
}):AddKeyPicker("FlyKey", {
    Mode = "Toggle",
    Default = "F",
    Text = "Fly",
    SyncToggleState = true
})
local JumpTog =LeftGroupBox:AddToggle("Jump", {
	Text = "Allow Jumping",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		if Players.LocalPlayer.Character then
            Players.LocalPlayer.Character:SetAttribute("AllowedToJump", Value)
        end
	end,
})
local Noclipping
local Clip = true
local RunService = game:GetService("RunService")
LeftGroupBox:AddToggle("Noclip", {
	Text = "Noclip",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		if Value == false then
            if Noclipping then
		        Noclipping:Disconnect()
	        end
            for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		    	if child:IsA("BasePart") and child.CanCollide == false and child.Name ~= "Head" then
		    		child.CanCollide = true
		    	end
		    end
	        Clip = true
        else
            Clip = false
	        wait(0.1)
	        local function NoclipLoop()
		        if Clip == false and Players.LocalPlayer.Character ~= nil then
		    	    for _, child in pairs(Players.LocalPlayer.Character:GetDescendants()) do
		    		    if child:IsA("BasePart") and child.CanCollide == true then
		    			    child.CanCollide = false
		    		    end
		    	    end
		        end
	        end
	        Noclipping = RunService.Stepped:Connect(NoclipLoop)
        end

       
	end,
})

LeftGroupBox:AddSlider("WSSlider", {
	Text = "WalkSpeed",
	Default = WSLoopVal,
	Min = 5,
	Max = 100,
	Rounding = 1,
	Compact = true,

	Callback = function(Value)
		WSLoopVal = Value
	end,

	Disabled = false, 
	Visible = true, 
})

LeftGroupBox:AddSlider("FSpeed", {
	Text = "Fly Speed",
	Default = 16,
	Min = 10,
	Max = 300,
	Rounding = 1,
	Compact = true,

	Callback = function(Value)
		TargetSpeed = Value
	end,

	Disabled = false, 
	Visible = true, 
})
task.spawn(function()
    while wait() do
        if WSLoopEnabled and Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
            Players.LocalPlayer.Character.Humanoid.WalkSpeed = WSLoopVal
        end
        if IsFlying and not FPLoop then
            for _, Obj in Players.LocalPlayer.Character:GetDescendants() do
                if Obj.Name == "Handle" then
                    Obj.Transparency = 1
                    pcall(function()
                        Obj.LocalTransparencyModifier = 1
                    end)
                end
            end
        end
    end
end)
local InstaRact = false
LeftGroupBox:AddToggle("InstantInteract", {
	Text = "Instant Interact",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		InstaRact = Value
        if Value == false then
            for _, Prompt in workspace:GetDescendants() do
                if Prompt:IsA("ProximityPrompt") and Prompt:GetAttribute("OrigHold") ~= nil then
                    Prompt.HoldDuration = Prompt:GetAttribute("OrigHold")
                end
            end
        elseif Value == true then
            for _, Prompt in workspace:GetDescendants() do
                if Prompt:IsA("ProximityPrompt") then
                    Prompt:SetAttribute("OrigHold", Prompt.HoldDuration)
                    Prompt.HoldDuration = 0
                end
            end
        end
	end,
})

workspace.DescendantAdded:Connect(function(Prompt)
    if Prompt:IsA("ProximityPrompt") and InstaRact then
        Prompt:SetAttribute("OrigHold", Prompt.HoldDuration)
        Prompt.HoldDuration = 0
    end
end)

local RightGroupBox = Tabs.Main:AddRightGroupbox("<b>Quick Buttons</b>")
RightGroupBox:AddButton({
	Text = "Lobby",
	Func = function()
		RepStorage.Events.PlayerActions.LeaveToLobby:FireServer()
	end,
	DoubleClick = true,

	Disabled = false,
	Visible = true,
})
RightGroupBox:AddButton({
	Text = "Play Again",
	Func = function()
		RepStorage.Events.PlayerActions.PlayAgain:FireServer()
	end,
	DoubleClick = true,

	Disabled = false,
	Visible = true,
})
RightGroupBox:AddButton({
	Text = "Reset",
	Func = function()
		RepStorage.Events.EntityEvents.DamageFromClient:FireServer({
            AttackedBy = "Legit Hub", 
            IsSet = true, 
            IgnoresHide = false, 
            Damage = 0
        })
	end,
	DoubleClick = true,

	Disabled = false,
	Visible = true,
})

local LeftGroupBox = Tabs.Visuals:AddLeftGroupbox("<b>General</b>")
LeftGroupBox:AddToggle("Fullbright", {
	Text = "Fullbright",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		if Value == true then
            Lighting.Brightness = 3
            Lighting.GlobalShadows = false
        elseif Value == false then
            Lighting.Brightness = 0
            Lighting.GlobalShadows = true
        end
	end,
})
LeftGroupBox:AddToggle("NoFog", {
	Text = "No-Fog",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		if Value == true then
            Lighting.Atmosphere.Density = 0
        elseif Value == false then
            Lighting.Atmosphere.Density = 0.6
        end
	end,
})

LeftGroupBox:AddToggle("FP", {
	Text = "Third Person",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
        FPLoop = Value
		if Value == true then
            if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                ClientMain.Scripts.cameraMain.Enabled = false
                workspace.CurrentCamera.CameraType = Enum.CameraType.Custom
                Players.LocalPlayer.Character.Humanoid.AutoRotate = true
                Players.LocalPlayer.CameraMaxZoomDistance = 10
                Players.LocalPlayer.CameraMinZoomDistance = 10
            end
        elseif Value == false then
            if Players.LocalPlayer.Character and Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                ClientMain.Scripts.cameraMain.Enabled = true
            end
        end
	end,
}):AddKeyPicker("KeyPicker", {
	Default = "V", 
	SyncToggleState = true,

	Mode = "Toggle", 

	Text = "Third Person", 
	NoUI = false, 
})

task.spawn(function()
    while wait() do
        if FPLoop and Players.LocalPlayer.Character then
            Players.LocalPlayer.Character.Head.Transparency = 0
            Players.LocalPlayer.Character.Head.LocalTransparencyModifier = 0
            for _, Obj in Players.LocalPlayer.Character:GetDescendants() do
                if Obj.Name == "face" or Obj.Name == "Handle" then
                    Obj.Transparency = 0
                    pcall(function()
                        Obj.LocalTransparencyModifier = 0
                    end)
                end
            end
        end
    end
end)
local NotifyEntities = {"Rush", "Screech", "Ram", "Ambush", "Hoardbats", "Eyes", "Stare", "Onslaught"}
local NotifyEntitiesInternal = {}
local RightGroupBox = Tabs.Visuals:AddRightGroupbox("<b>Notifications</b>")
for _, Entity in NotifyEntities do
    NotifyEntitiesInternal[Entity] = false
    RightGroupBox:AddToggle("Notify" .. Entity, {
	    Text = "Notify " .. Entity,

	    Default = false,
	    Disabled = false, 
	    Visible = true, 

	    Callback = function(Value)
		   NotifyEntitiesInternal[Entity] = Value
	    end,
    })
end
local LeftGroupBox = Tabs.Visuals:AddLeftGroupbox("<b>ESP</b>")
local ESPTracersEnabled: boolean = true
LeftGroupBox:AddToggle("ESPTracers", {
	Text = "Tracers",

	Default = true,
	Disabled = false, 
	Visible = false, 

	Callback = function(Value)
		ESPTracersEnabled = Value
	end,
})
local ESPThings = {"Entity", "Objectives", "Doors", "HidingSpots", "Coins"}
for _, Thing in ESPThings do
    LeftGroupBox:AddToggle("ESP" .. Thing, {
	    Text = "ESP " .. Thing,

	    Default = false,
	    Disabled = false, 
	    Visible = true, 

	    Callback = function(Value)
		   espCategories[Thing] = Value
           updateESPVisibility()
	    end,
    })
end
local LeftGroupBox = Tabs.Exploits:AddLeftGroupbox("<b>Exploits</b>")
LeftGroupBox:AddButton({
	Text = "Skip Watcher 150",
	Func = function()
        if ClientMain and ClientMain.CLIENT.Values.CurrentRoom.Value.Name == "Room150" then
            RepStorage.Events.ThePrision.FinishedTerminal:FireServer()
        else
            Library:Notify("You must be in room 150!")
        end
	end,

	Disabled = false,
	Visible = true,
})

local PartialGod = false
LeftGroupBox:AddToggle("PartialGod", {
	Text = "Infinite Healing",

	Default = false,
	Disabled = false, 
	Visible = true, 

	Callback = function(Value)
		PartialGod = Value
	end,
})
local AutoCage = false
local DoConLoop = false
LeftGroupBox:AddToggle("AutoCage", {
	Text = "Auto Escape Watcher-cage",

	Default = true,
	Disabled = false, 
	Visible = false, 

	Callback = function(Value)
        DoConLoop = Value
        if Value then
            for _, Connection in getconnections(RepStorage.Events.ThePrision.PlayerCaged.OnClientEvent) do
                Connection:Disable()
            end
        else
            for _, Connection in getconnections(RepStorage.Events.ThePrision.PlayerCaged.OnClientEvent) do
                Connection:Enable()
            end
        end
	end,
})

task.spawn(function()
    while wait() do
        if DoConLoop then
            for _, Connection in getconnections(RepStorage.Events.ThePrision.PlayerCaged.OnClientEvent) do
                Connection:Disable()
            end
        else
            for _, Connection in getconnections(RepStorage.Events.ThePrision.PlayerCaged.OnClientEvent) do
                Connection:Enable()
            end
        end
    end
end)

RepStorage.Events.ThePrision.PlayerCaged.OnClientEvent:Connect(function()
    if not AutoCage then return end
    task.wait(4)
    RepStorage.Events.ThePrision.MinigameFinished:FireServer()
end)
task.spawn(function()
    while wait() do
        if PartialGod then
            RepStorage.Events.EntityEvents.DamageFromClient:FireServer({
                AttackedBy = "Blacklight", 
                IsSet = true, 
                IgnoresHide = false, 
                Damage = math.huge
            })
        end
    end
end)
local RightGroupBox = Tabs.Exploits:AddRightGroupbox("<b>Anti-Entity</b>")
local AntiEntity = {"Blacklight", "Screech", "Void", "Seek-Locker", "Figure-Hearing"}
local AntiEntityInternal = {}
for _, Entity in AntiEntity do
    AntiEntityInternal[Entity] = false
    RightGroupBox:AddToggle("Anti" .. Entity, {
	    Text = "Anti-" .. Entity,

	    Default = false,
	    Disabled = false, 
	    Visible = true, 

	    Callback = function(Value)
            if Entity == "Screech" and Value == false and ClientMain then
                ClientMain.CLIENT.Values.ScreechActive.Value = false
            end
            if Entity == "Seek-Locker" and Value == false then
                for _, Obj in workspace:GetDescendants() do
                    if Obj.Name == "AttackRange" then
                        Obj.CanTouch = true
                    end
                end
            end
		   AntiEntityInternal[Entity] = Value
	    end,
    })
end



workspace.DescendantAdded:Connect(function(Obj)
    if Obj.Name == "AttackRange" and AntiEntityInternal["Seek-Locker"] then
        Obj.CanTouch = false
    end
end)

task.spawn(function()
    while wait() do
        if AntiEntityInternal["Screech"] then
            ClientMain.CLIENT.Values.ScreechActive.Value = true
        end
	if AntiEntityInternal["Watcher"] then
	    RepStorage:WaitForChild("Events"):WaitForChild("PlayerCrouching"):FireServer(true)
	end
    end
end)

task.spawn(function()
    while wait() do
        if workspace:FindFirstChild("WanderWatcher") then
            workspace.WanderWatcher:FindFirstChild("PickupArea", true).CanTouch = not AntiEntityInternal["Watcher"]
        end
    end
end)


old = hookfunction(require(ClientMain.CLIENT.CurrentRoomDependency.Modules.Void).VoidPlayer, function(...)
    if AntiEntityInternal["Void"] then
        return
    else
        return old(...)
    end
end)

task.spawn(function()
    while wait() do
        workspace.GameInfo.BlacklightDisabled.Value = AntiEntityInternal["Blacklight"]
    end
end)

  
workspace.ChildAdded:Connect(function(Object)
    if Object.Name == 'Eyes' and NotifyEntitiesInternal["Eyes"] then
        Library:Notify('Eyes has spawned')
    end
    if Object.Name == 'Stare' and NotifyEntitiesInternal["Stare"] then
        Library:Notify('Stare has spawned')
    end
    if Object.Name == 'Ram' and NotifyEntitiesInternal["Ram"] then
        Library:Notify('Ram has spawned')
    end
    if Object.Name == 'Ambush' and NotifyEntitiesInternal["Ambush"] then
        Library:Notify('Ambush has spawned')
    end
    if Object.Name == 'Rush' and NotifyEntitiesInternal["Rush"] then
        Library:Notify('Rush has spawned')
    end
    
end)

workspace.DescendantAdded:Connect(function(Object)
    if Object.Name == 'ScreechAHHHH' and NotifyEntitiesInternal["Screech"] then
        Library:Notify('Screech has spawned')
    end
end)

workspace.GameInfo.HoardbatsActive:GetPropertyChangedSignal("Value"):Connect(function()
    if workspace.GameInfo.HoardbatsActive.Value == true and NotifyEntitiesInternal["Hoardbats"] then
        Library:Notify('Hoardbats Swarm has spawned')
    end
end)

workspace.GameInfo.LureActive:GetPropertyChangedSignal("Value"):Connect(function()
    if workspace.GameInfo.LureActive.Value == true and NotifyEntitiesInternal["Onslaught"]then
        Library:Notify('Onslaught has spawned')
    end
end)

local MenuGroup = Tabs["UI Settings"]:AddLeftGroupbox("Menu")

MenuGroup:AddToggle("KeybindMenuOpen", {
	Default = Library.KeybindFrame.Visible,
	Text = "Open Keybind Menu",
	Callback = function(value)
		Library.KeybindFrame.Visible = value
	end,
})
MenuGroup:AddToggle("ShowCustomCursor", {
	Text = "Custom Cursor",
	Default = true,
	Callback = function(Value)
		Library.ShowCustomCursor = Value
	end,
})
MenuGroup:AddDropdown("NotificationSide", {
	Values = { "Left", "Right" },
	Default = "Right",

	Text = "Notification Side",

	Callback = function(Value)
		Library:SetNotifySide(Value)
	end,
})
MenuGroup:AddDropdown("DPIDropdown", {
	Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
	Default = "100%",

	Text = "DPI Scale",

	Callback = function(Value)
		Value = Value:gsub("%%", "")
		local DPI = tonumber(Value)

		Library:SetDPIScale(DPI)
	end,
})
MenuGroup:AddDivider()
MenuGroup:AddLabel("Menu bind")
	:AddKeyPicker("MenuKeybind", { Default = "RightShift", NoUI = true, Text = "Menu keybind" })


Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)



SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "MenuKeybind" })

ThemeManager:SetFolder("LegitHub")
SaveManager:SetFolder("LegitHub/foundation")
SaveManager:SetSubFolder("game")



ThemeManager:ApplyToTab(Tabs["UI Settings"])
SaveManager:LoadAutoloadConfig()
SaveManager:BuildConfigSection(Tabs["UI Settings"])

local ESPLibrary = loadstring(game:HttpGet(
    'https://raw.githubusercontent.com/mstudio45/MSESP/refs/heads/main/source.luau'
))()



local colors = {
    Entity = Color3.fromRGB(255, 0, 0),
    Objectives = Color3.fromRGB(0, 255, 0),
    HidingSpots = BrickColor.new('Gray').Color,
    Doors = Color3.fromRGB(0, 0, 150),
    Coins = Color3.new(0.898039, 0.913725, 0.000000),
}

local function addESP(part, name, category)
    local esp = ESPLibrary:Add({
        Name = name,
        Model = part,
        Color = colors[category],
        MaxDistance = math.huge,
        TextSize = 17,
        ESPType = 'Highlight',
        FillColor = colors[category],
        OutlineColor = colors[category],
        Tracer = {
            Enabled = true,
            Color = colors[category],
        },
    })
    table.insert(allTrackedESPs, {
        ESP = esp,
        Category = category,
    })

    if not espCategories[category] then
        esp:Hide()
    end

    return esp
end

local roomSpecESPs = {}

local function processRoom(room)
    for _, object in room:GetDescendants() do
        task.spawn(function()
            if espCategories.HidingSpots then
                if object.Name == 'Locker' or object.Name == 'Toolshed_Hiding' then
                    table.insert(roomSpecESPs, addESP(object, 'Hiding-Spot', 'HidingSpots'))
                elseif object.Name == 'decoyLocker' then
                    table.insert(roomSpecESPs, addESP(object, 'Seek-Locker', 'Entity'))
                end
            end

            if espCategories.Objectives then
                if object.Name == 'OilCanister' then
                    table.insert(roomSpecESPs, addESP(object, 'Oil Can', 'Objectives'))
                elseif object.Name == 'GasCanister' then
                    table.insert(roomSpecESPs, addESP(object, 'Gas Canister', 'Objectives'))
                elseif object.Name == 'GeneratorPuzzle' then
                    table.insert(roomSpecESPs, addESP(object, 'Generator', 'Objectives'))
                elseif object.Name == 'Terminal' then
                    table.insert(roomSpecESPs, addESP(object, 'Terminal', 'Objectives'))
                elseif object.Name == 'Switch' and not object:FindFirstAncestor('Switch') then
                    table.insert(roomSpecESPs, addESP(object, 'Fuse', 'Objectives'))
                elseif object.Name == 'GivingCoins' then
                    table.insert(roomSpecESPs, addESP(object.Parent, 'Coins', 'Coins'))
                elseif object.Name == 'Minigame' and object:FindFirstChild('Switches') then
                    table.insert(roomSpecESPs, addESP(object, 'Breaker Minigame', 'Objectives'))
                elseif object.Name == 'ObservatoryKey' then
                    table.insert(roomSpecESPs, addESP(object, 'Key', 'Objectives'))
                elseif object.Name == 'SignModel' then
                    local sign = object:WaitForChild('Sign')
                    table.insert(roomSpecESPs, addESP(sign, 'Directional Sign', 'Objectives'))
                    sign.Material = Enum.Material.Neon
                    sign.Color = Color3.fromRGB(255, 255, 255)
                elseif object.Name == 'Control'
                    and object.Parent.Name == 'Elevator'
                    and object.Parent.Parent:FindFirstChild('ElevatorHandler') then
                    table.insert(roomSpecESPs, addESP(object, 'Exit Elevator', 'Objectives'))
                    object:WaitForChild('Sign').Material = Enum.Material.Neon
                elseif object.Name == 'OxygenTank' then
                    table.insert(roomSpecESPs, addESP(object, 'Oxygen Can', 'Objectives'))
                elseif (object.Name == 'CaveLever' or object.Name == 'Lever')
                    and not object:FindFirstAncestor('GeneratorPuzzle')
                    and not object:FindFirstAncestor('EndPanel')
                    and not object:FindFirstAncestor('GeneratorDeco') then
                    if object:GetAttribute('Order') then
                        table.insert(roomSpecESPs, addESP(object, 'Lever ' .. object:GetAttribute('Order'), 'Objectives'))
                    else
                        table.insert(roomSpecESPs, addESP(object, 'Lever', 'Objectives'))
                    end
                end
            end

            if espCategories.Doors then
                if (object.Name == 'Door' and object.Parent.Parent.Name == 'GeneratedRooms') or object.Name == 'Chunk_Watcher' then
                    table.insert(roomSpecESPs, addESP(object, 'Door', 'Doors'))
                end
            end
        end)
    end
end

local function doProcVal(object)
    local foundRoom = object.Value
    if foundRoom then
        for _, ESP in roomSpecESPs do
            ESP:Hide()
        end
        table.clear(roomSpecESPs)
        processRoom(foundRoom)
    end
end

local function processLocalPlayerDescendant(object)
    if object.Name == 'CurrentRoom' and object:IsA('ObjectValue') then
        print('Found val at ' .. object:GetFullName())
        task.delay(1, function()
             doProcVal(object)
        end)
       
        object:GetPropertyChangedSignal('Value'):Connect(function()
            doProcVal(object)
        end)
    end
end

game.Players.LocalPlayer.DescendantAdded:Connect(processLocalPlayerDescendant)
for _, object: Instance in game.Players.LocalPlayer:GetDescendants() do
    processLocalPlayerDescendant(object)
end

local function processObject(object)
    if object:FindFirstAncestor('Game Configuration') then return end

    if espCategories.Entity then
        if object.Name == 'HoardbatClient' or object.Name == "HoardBat" then
            addESP(object, 'Hoardbat', 'Entity')
        elseif object.Name == 'Eyes' and not object.Parent.Name == 'Bob' then
            addESP(object, 'Eyes', 'Entity')
        elseif object.Name == 'Stare' then
            addESP(object, 'Stare', 'Entity')
        elseif object.Name == 'Ram' then
            addESP(object, 'Ram', 'Entity')
        elseif object.Name == 'Ambush' then
            addESP(object, 'Ambush', 'Entity')
        elseif object.Name == 'Rush' then
            addESP(object, 'Rush', 'Entity')
        elseif object.Name == 'FigureRig' then
            addESP(object, 'Figure', 'Entity')
        elseif object.Name == 'WanderWatcher' then
            addESP(object, 'Watcher', 'Entity')
        elseif object.Name == 'Seek' then
            addESP(object, 'Seek', 'Entity')
        end
    end
end

workspace.DescendantAdded:Connect(processObject)
for _, object in workspace:GetDescendants() do
    processObject(object)
end
