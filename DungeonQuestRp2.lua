local Players = game:GetService'Players'
local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local RootPart = Character:WaitForChild'HumanoidRootPart'

local ReplicatedStorage = game:GetService'ReplicatedStorage'
local Remotes = ReplicatedStorage:WaitForChild'remotes'
local ShowText = Remotes:WaitForChild'showText'
local EnterText = Remotes:WaitForChild'enterText'

local Code

ShowText.OnClientEvent:Connect(function(...)
    Code = ...
end)

local Gems = game:GetService("Workspace").Map.Interactables:WaitForChild'fences'
local Order = {"Red", "Yellow", "Blue", "Cyan", "White", "Purple", "Green"}

for i, Color in pairs(Order) do
    local Gem = Gems:FindFirstChild(Color)
    if Gem then
        local TouchInterest = Gem:FindFirstChildOfClass'TouchTransmitter'
        if TouchInterest then
            for i = 1, 3 do
                RootPart.CFrame = Gem.CFrame
                wait()
            end
            wait(1)
        end
    end
end

repeat wait(1) until Code
EnterText:FireServer(Code)
