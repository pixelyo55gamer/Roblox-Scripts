local plr = game:GetService("Players").LocalPlayer
if game.PlaceId == 5967514178 then --Ready Player 2
    repeat wait() until game:IsLoaded()
    wait(5)
    game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = 64
    plr.Character.Humanoid.WalkSpeed = 64
elseif game.PlaceId == 5661005779 then --Piggy Book 2
    --https://www.roblox.com/games/4623386862?privateServerLinkCode=43881783873356048913116130569902
    repeat wait() until game:IsLoaded()
    wait(30)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/PiggyRP2.lua", true))()
elseif game.PlaceId == 734159876 then --Sharkbite
    --https://www.roblox.com/games/734159876?privateServerLinkCode=14794222261867326163537089403627
    for i,v in pairs(game:GetService("Workspace").SonarBuoys.Buoys:GetDescendants()) do
        if v:IsA("MeshPart") then
        local esp = Instance.new("BoxHandleAdornment")
        esp.Parent = v
        esp.Name = "Buoy"
        esp.Adornee = v
        esp.AlwaysOnTop = true
        esp.ZIndex = 0
        esp.Size = v.Size
        esp.Transparency = 0.3
        esp.Color = BrickColor.new("Persimmon")
        end
    end
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
elseif game.PlaceId == 3233893879 then --Bad Business
    --https://www.roblox.com/games/3233893879?privateServerLinkCode=89961620027418803451997891122909
        repeat wait() until game:IsLoaded()
        wait(15)
        for i,v in pairs(game:GetService("Workspace").NonGeometry:GetDescendants()) do
            if v:IsA("SurfaceGui") then
            local esp = Instance.new("BoxHandleAdornment")
            esp.Parent = v
            esp.Name = "Sticker"
            esp.Adornee = v.Parent
            esp.AlwaysOnTop = true
            esp.ZIndex = 0
            esp.Size = v.Parent.Size
            esp.Transparency = 0.3
            esp.Color = BrickColor.new("Lime green")
            end
        end
elseif game.PlaceId == 1537690962 then --Bee Swarm Simulator
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/beeswarmrp2.lua", true))()
elseif game.PlaceId == 447452406 then --Robloxian Highschool
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/RHS.lua", true))()
    wait(0.5)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
elseif game.PlaceId == 5913871729 then --Bad Business Fight
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/Bad_Business_Script.lua", true))()
elseif game.PlaceId == 2414851778 then --Dungeon Quest
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/DungeonQuestRp2.lua", true))()
elseif game.PlaceId == 171391948 then --Vehicle Simulator 2
    repeat wait() until game:IsLoaded()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/pixelyo55gamer/Roblox-Scripts/main/VehicleSimRp2.lua", true))()
    wait(1)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
elseif game.PlaceId == 6028508797 then --Sharkbite Fight
    loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source", true))()
end
