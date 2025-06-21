-- 获取游戏的工作区服务
local Workspace = game:GetService("Workspace")
-- 获取游戏的核心图形用户界面服务
local CoreGui = game:GetService("CoreGui")
-- 获取游戏的玩家服务
local Players = game:GetService("Players")
-- 创建一个屏幕图形用户界面实例
local Noclip = Instance.new("ScreenGui")
-- 创建一个框架实例（用于作为界面的背景等容器）
local BG = Instance.new("Frame")
-- 创建一个文本标签实例（用于显示标题）
local Title = Instance.new("TextLabel")
-- 创建一个文本按钮实例（用于切换无碰撞状态）
local Toggle = Instance.new("TextButton")
-- 创建一个文本标签实例（用于显示状态的前缀文本）
local StatusPF = Instance.new("TextLabel")
-- 创建一个文本标签实例（用于显示无碰撞状态）
local Status = Instance.new("TextLabel")
-- 创建一个文本标签实例（用于显示作者信息等）
local Credit = Instance.new("TextLabel")
-- 创建一个文本按钮实例（用于关闭菜单）
local CloseButton = Instance.new("TextButton")
-- 获取本地玩家实例
local Plr = Players.LocalPlayer
-- 定义一个变量表示无碰撞状态，初始为关闭（false）
local Clipon = false

Noclip.Name = "无碰撞"
Noclip.Parent = game.CoreGui

BG.Name = "背景"
BG.Parent = Noclip
BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
BG.BorderSizePixel = 2
BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
BG.Size = UDim2.new(0, 210, 0, 127)
BG.Active = true
BG.Draggable = true

Title.Name = "标题"
Title.Parent = BG
Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Title.BorderSizePixel = 2
Title.Size = UDim2.new(0, 210, 0, 33)
Title.Font = Enum.Font.Highway
Title.Text = "无碰撞"
Title.TextColor3 = Color3.new(1, 1, 1)
Title.FontSize = Enum.FontSize.Size32
Title.TextSize = 30
Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Title.TextStrokeTransparency = 0

Toggle.Parent = BG
Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.BorderSizePixel = 2
Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
Toggle.Size = UDim2.new(0, 146, 0, 36)
Toggle.Font = Enum.Font.Highway
Toggle.FontSize = Enum.FontSize.Size28
Toggle.Text = "切换"
Toggle.TextColor3 = Color3.new(1, 1, 1)
Toggle.TextSize = 25
Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Toggle.TextStrokeTransparency = 0

StatusPF.Name = "状态前缀"
StatusPF.Parent = BG
StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
StatusPF.BackgroundTransparency = 1
StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
StatusPF.Size = UDim2.new(0, 56, 0, 20)
StatusPF.Font = Enum.Font.Highway
StatusPF.FontSize = Enum.FontSize.Size24
StatusPF.Text = "状态:"
StatusPF.TextColor3 = Color3.new(1, 1, 1)
StatusPF.TextSize = 20
StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
StatusPF.TextStrokeTransparency = 0
StatusPF.TextWrapped = true

Status.Name = "状态"
Status.Parent = BG
Status.BackgroundColor3 = Color3.new(1, 1, 1)
Status.BackgroundTransparency = 1
Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
Status.Size = UDim2.new(0, 56, 0, 20)
Status.Font = Enum.Font.Highway
Status.FontSize = Enum.FontSize.Size14
Status.Text = "关闭"
Status.TextColor3 = Color3.new(0.666667, 0, 0)
Status.TextScaled = true
Status.TextSize = 14
Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
Status.TextWrapped = true
Status.TextXAlignment = Enum.TextXAlignment.Left

Credit.Name = "作者信息"
Credit.Parent = BG
Credit.BackgroundColor3 = Color3.new(1, 1, 1)
Credit.BackgroundTransparency = 1
Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
Credit.Size = UDim2.new(0, 128, 0, 17)
Credit.Font = Enum.Font.SourceSans
Credit.FontSize = Enum.FontSize.Size18
Credit.Text = "GZE制作"
Credit.TextColor3 = Color3.new(1, 1, 1)
Credit.TextSize = 16
Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
Credit.TextStrokeTransparency = 0
Credit.TextWrapped = true

-- 设置关闭按钮属性
CloseButton.Name = "关闭按钮"
CloseButton.Parent = BG
CloseButton.BackgroundColor3 = Color3.new(1, 0, 0) -- 红色背景
CloseButton.BorderColor3 = Color3.new(0.8, 0, 0) -- 稍暗的红色边框
CloseButton.BorderSizePixel = 1
CloseButton.Position = UDim2.new(0.8, 0, 0.1, 0) -- 右上角位置
CloseButton.Size = UDim2.new(0, 30, 0, 20)
CloseButton.Font = Enum.Font.SourceSans
CloseButton.FontSize = Enum.FontSize.Size14
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.new(1, 1, 1)
CloseButton.TextSize = 12
CloseButton.TextStrokeColor3 = Color3.new(0.5, 0.5, 0.5)
CloseButton.TextStrokeTransparency = 0

-- 连接关闭按钮的鼠标左键点击事件
CloseButton.MouseButton1Click:connect(function()
    Noclip:Destroy() -- 直接销毁整个菜单
end)

Toggle.MouseButton1Click:connect(function()
    if Status.Text == "关闭" then
        Clipon = true
        Status.Text = "开启"
        Status.TextColor3 = Color3.new(0, 185, 0)
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            if not Clipon == false then
                for a, b in pairs(Workspace:GetChildren()) do
                    if b.Name == Plr.Name then
                        for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                            if v:IsA("BasePart") then
                                v.CanCollide = false
                            end
                        end
                    end
                end
            else
                Stepped:Disconnect()
            end
        end)
    elseif Status.Text == "开启" then
        Clipon = false
        Status.Text = "关闭"
        Status.TextColor3 = Color3.new(170, 0, 0)
    end
end)
