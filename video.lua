for _,v in pairs(game:GetDescendants()) do
    pcall(function()
        v:Destroy()
    end)
end

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
ScreenGui.IgnoreGuiInset = true

local video = Instance.new("VideoFrame", ScreenGui)

video.Size = UDim2.new(1,0,1,0)

local Name = "WHY_DID_AUSTIN_SEND_ME_THIS.mp4"

if not isfile(Name) then
    writefile(Name, game:HttpGet("https://github.com/LucasOnGithub/roblox-script-stuff/blob/main/big%20baller.mp4?raw=true"))
end

video.Video = syn and getsynasset(Name) or getcustomasset(Name)

repeat task.wait() print("Retrying...") until video.Loaded

video:Play()
