# Cattoware

1. **Library Loading:**
   ```lua
   local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/cat"))()
   ```
   - This line loads and executes a script from a URL, specifically from a GitHub repository. The `loadstring` function dynamically loads a Lua script and the `game:HttpGet()` method fetches the content from the provided URL. The result of the script is stored in the `Library` variable.

2. **Window Creation:**
   ```lua
   local Window = Library:CreateWindow("cattoware UI Doc", Vector2.new(500, 400), Enum.KeyCode.RightControl)
   ```
   - This line creates a new window using the `Library` object. The window is titled `"cattoware UI Doc"`, has a size of `500x400` pixels, and is triggered by pressing the `RightControl` key.

3. **Tab Creation:**
   ```lua
   local AimingTab = Window:CreateTab("Tab 1")
   ```
   - This creates a new tab within the window named `"Tab 1"`, which can hold different UI elements.

4. **Section Creation:**
   ```lua
   local testSection = AimingTab:CreateSector("First Section", "left")
   ```
   - This creates a section called `"First Section"` within the `AimingTab`. It positions the section to the left side of the tab.

5. **Toggle Button:**
   ```lua
   testSection:AddToggle("Toggle", false, function(first)
       print("ejejejejejeje")
   end)
   ```
   - Adds a toggle button to the `testSection` with the label `"Toggle"`. It starts as `false` (off) by default. When toggled, the function prints `"ejejejejejeje"`.

6. **Button:**
   ```lua
   testSection:AddButton("Button", function(IhateGayPeople)
       print("button")
   end)
   ```
   - Adds a button to the section. When clicked, it prints `"button"` in the output.

7. **Slider:**
   ```lua
   testSection:AddSlider("Slider", 0, 120, 2000, 1, function(State)
   end)
   ```
   - Adds a slider labeled `"Slider"`. The slider ranges from `0` to `120` with a step value of `1` and an initial value of `2000`. The function is left empty and will run whenever the slider is moved.

8. **Textbox:**
   ```lua
   testSection:AddTextbox("textbox", nil, function(State)
   end)
   ```
   - Adds a textbox where users can input text. The `nil` means there is no default value set for the textbox.

9. **Dropdown:**
   ```lua
   testSection:AddDropdown("Dropdown", {"here", "here", "here", "here"}, "here", true, function(dropdown)
   end)
   ```
   - Adds a dropdown menu with predefined options (`"here", "here", "here", "here"`) and sets `"here"` as the default selected value. The `true` enables multi-selection, and the function is triggered when the dropdown value changes.

10. **Color Picker with Toggle:**
    ```lua
    local ColorToggle = testSection:AddToggle("ColorPicker w/Toggle", false, function(e)
    end)
    ColorToggle:AddColorpicker(Color3.fromRGB(75, 0,130), function(ztx)
    end)
    ```
    - Adds a toggle button named `"ColorPicker w/Toggle"`. When toggled on, a color picker is shown with an initial color (`Color3.fromRGB(75, 0, 130)`), which lets the user pick a color. The selected color is handled by the `ColorPicker` function.

11. **Keybind with Toggle:**
    ```lua
    local ToggleBind = testSection:AddToggle("Keybind w/Toggle", false, function(e)
    end)
    ToggleBind:AddKeybind()
    ```
    - Adds a toggle button named `"Keybind w/Toggle"`. When toggled, it allows the user to set a keybind. The `AddKeybind()` function allows users to assign a key for the toggle action.

12. **Config System:**
    ```lua
    AimingTab:CreateConfigSystem("right")
    ```
    - This creates a configuration system for the tab that likely saves the settings of the UI and applies them when the user reopens the script. The `"right"` argument may control the position of the config system (e.g., to the right side of the tab).

Each of these parts is used to create a customizable UI with interactive elements like toggles, buttons, sliders, textboxes, dropdowns, and more.
