local plr = game.Players.LocalPlayer

local args = {
    [1] = 1
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = 2
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = 3
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = 4
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = 5
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = 6
}

game:GetService("ReplicatedStorage").Events.ClaimHive:FireServer(unpack(args))

local args = {
    [1] = "WordFactory "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))

local args = {
    [1] = "Millie "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
local args = {
    [1] = "Troggles "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
local args = {
    [1] = "Luther "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
local args = {
    [1] = "CarmensAnDiego "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
local args = {
    [1] = "Dysentery "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
local args = {
    [1] = "Jumpstart "
}
wait(0.5)
game:GetService("ReplicatedStorage").Events.PromoCodeEvent:FireServer(unpack(args))
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-378.00885, 18.0686474, 332.561951)
wait(1)
local args = {
    [1] = 5,
    [2] = 1,
    [3] = "Basic",
    [4] = 1
}

game:GetService("ReplicatedStorage").Events.ConstructHiveCellFromEgg:InvokeServer(unpack(args))
plr.Character.HumanoidRootPart.CFrame = CFrame.new(-93.2893448, 4.44719124, 217.949524)
for i=1, 20 do wait(1)
    for i,v in pairs(plr.Character:GetChildren()) do
        if v:IsA("Tool") then
            local toolname = v
toolname.ClickEvent:FireServer()
end
end
end
for i,v in pairs(game:GetService("Workspace").HivePlatforms:GetDescendants()) do
    if v:IsA("TextLabel") and v.Text == plr.Name then
plr.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Position)
end
end
wait(1)
local args = {
    [1] = "ToggleHoneyMaking"
}

game:GetService("ReplicatedStorage").Events.PlayerHiveCommand:FireServer(unpack(args))
wait(25)
plr.Character.HumanoidRootPart.CFrame = CFrame.new(98.8241501, 4.96148682, 290.861908)
wait(1)
local args = {
    [1] = "Purchase",
    [2] = {
        ["Mute"] = true,
        ["Type"] = "Strange Goggles",
        ["Category"] = "Accessory"
    }
}

game:GetService("ReplicatedStorage").Events.ItemPackageEvent:InvokeServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 1
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 2
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 3
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 4
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 5
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 6
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 7
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))

local args = {
    [1] = "InitStep",
    [2] = {
        ["Step"] = 8
    }
}

game:GetService("ReplicatedStorage").Events.DigitalBeeEvent:FireServer(unpack(args))
