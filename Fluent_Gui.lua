local screenSize = game:GetService("GuiService"):GetScreenResolution()
local noteSize = UDim2.new(0.8, 0, 0.8, 0) -- 80% of the screen size

-- Create the ScreenGui
local gui = Instance.new("ScreenGui")
gui.Name = "NoteScreenGui"
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame for the note
local frame = Instance.new("Frame")
frame.Size = noteSize
frame.Position = UDim2.new(0.5, -noteSize.X.Offset/2, 0.5, -noteSize.Y.Offset/2)
frame.AnchorPoint = Vector2.new(0.5, 0.5) -- center anchor point
frame.BackgroundColor3 = Color3.new(1, 1, 1) -- white
frame.BorderSizePixel = 5
frame.Parent = gui

-- Create the TextLabel for the note
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.9, 0, 0.9, 0)
textLabel.Position = UDim2.new(0.05, 0, 0.05, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "Guesttester_1's Note:\nWe will update it today or tomorrow. Please be patient; we have been busy creating the script.\n\nThe New Update Logs:\n\n- Lag Reduced\n- Special April Fools Update (available for only 5 days)\n- Event Farm is Open (except for the capybara lol)\n- Arceus X UNC Crash Problem (if you're unfamiliar with UNC, then ignore it)\n- Improved Fast Loader (Delta X Problem)\n- Fixed Key System (only 1 checkpoint) (Note: Delta X users may experience slower loading in the script -_-)"
textLabel.TextWrapped = true
textLabel.TextScaled = true
textLabel.Parent = frame

-- Create the Button
local button = Instance.new("TextButton")
button.Size = UDim2.new(0.3, 0, 0.1, 0)
button.Position = UDim2.new(0.5, -button.Size.X.Offset/2, 0.9, 0)
button.Text = "OK"
button.MouseButton1Click:Connect(function()
    gui:Destroy()
end)
button.Parent = frame
