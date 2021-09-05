local App = {}

local LocalPlayer = game:GetService("Players").LocalPlayer

function dragify(obj)
	local UIS = game:GetService("UserInputService")
	local function dragify(Frame)
		local dragToggle = nil
		local dragSpeed = 0.25
		local dragInput = nil
		local dragStart = nil
		local dragPos = nil
		local startPos
		local function updateInput(input)
			local Delta = input.Position - dragStart
			local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.1), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end

	dragify(obj)
end

function CreateGui(settings)
    local Gui = Instance.new("ScreenGui", LocalPlayer.PlayerGui)
    Gui.Name = "Gui"

    local MainFrame = Instance.new("Frame", Gui)
    MainFrame.Name = "MainFrame"
	MainFrame.Size = UDim2.new(0, 550, 0, 425)
    MainFrame.BorderSizePixel = 5
    MainFrame.AnchorPoint = Vector2.new(.5, .5)
    MainFrame.Position = UDim2.new(.5, 0, .5, 0)
    MainFrame.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
    
    local Sidebar = Instance.new("Frame", MainFrame)
    Sidebar.Name = "Sidebar"
    Sidebar.Size = UDim2.new(0, 140, 1, 0)
    Sidebar.BackgroundTransparency = 1
    
    local Sidebar_Label = Instance.new("Frame", Sidebar)
    Sidebar_Label.Name = "Sidebar_Label"
    Sidebar_Label.Size = UDim2.new(1, 0, 0, 45)
    Sidebar_Label.BorderSizePixel = 5
    Sidebar_Label.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    
    local Sidebar_Holder = Instance.new("Frame", Sidebar)
    Sidebar_Holder.Name = "Sidebar_Holder"
    Sidebar_Holder.Size = UDim2.new(1, 0, 1, -45)
    Sidebar_Holder.Position = UDim2.new(0, 0, 0, 45)
    Sidebar_Holder.BorderSizePixel = 0
    Sidebar_Holder.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
    
	local Sidebar_Label_Text = Instance.new("TextLabel", Sidebar_Label)
    Sidebar_Label_Text.Name = "Sidebar_Label_Text"
	Sidebar_Label_Text.Text = settings.Title or "Label"
	Sidebar_Label_Text.Font = Enum.Font.GothamBold
    Sidebar_Label_Text.TextSize = 15
    Sidebar_Label_Text.TextColor3 = Color3.fromRGB(255, 255, 255)
    Sidebar_Label_Text.Size = UDim2.new(1, 0, 1, 0)
    Sidebar_Label_Text.BackgroundTransparency = 1
    
    local Sidebar_Holder_UIListLayout = Instance.new("UIListLayout", Sidebar_Holder)
    Sidebar_Holder_UIListLayout.Name = "Sidebar_Holder_UIListLayout"
    
    local Pages = Instance.new("Frame", MainFrame)
    Pages.Name = "Pages"
    Pages.Size = UDim2.new(1, -160, 1, -20)
    Pages.Position = UDim2.new(0, 150, 0, 10)
    Pages.BackgroundTransparency = 1
    
    local Extra = {} -- All items
    
    local function ListExtra(Obj) -- List all items
        Extra[Obj.Name] = Obj
        
        for i,v in pairs(Obj:GetChildren()) do
            ListExtra(v)
		end
	end
    
    ListExtra(Gui) -- Start listing items
    
    return Gui, Extra
end

function App.Load(settings)
    local Functions = {}
    local Pages = {}
    
    local Gui, Items = CreateGui(settings)
    
    function Functions.New(settings)
        local Components = {}
        
		local Frame = Instance.new("Frame", Items.Sidebar_Holder)
        Frame.Name = settings.Title or "Page"
        Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Frame.Size = UDim2.new(1, 0, 0, 45)
        Frame.BorderSizePixel = 0
        Frame.BackgroundTransparency = 1
        
        local TextButton = Instance.new("TextButton", Frame)
        TextButton.Text = settings.Title or "Page"
        TextButton.BackgroundTransparency = 1
        TextButton.TextSize = 14
        TextButton.Font = Enum.Font.GothamSemibold
        TextButton.Size = UDim2.new(1, 0, 1, 0)
        TextButton.TextColor3 = Color3.fromRGB(90, 90, 90)
        
        local Page = Instance.new("ScrollingFrame", Items.Pages)
        Page.Name = settings.Title or "Page"
        Page.Size = UDim2.new(1, 0, 1, 0)
        Page.BackgroundTransparency = 1
        Page.ScrollBarThickness = 0
        Page.BorderSizePixel = 0
        Page.ScrollBarImageTransparency = 1
        Page.CanvasSize = UDim2.new(0, 0, 0, 0)
        
        Pages[#Pages + 1] = {
            Sidebar_Page = Frame;
            Pages_Page = Page;
		}
        
        local Page_UIListLayout = Instance.new("UIListLayout", Page)
   		Page_UIListLayout.Name = "Page_UIListLayout"
        Page_UIListLayout.Padding = UDim.new(0, 10)
        
        TextButton.MouseButton1Click:Connect(function()
           	for i,v in pairs(Pages) do
				if v.Sidebar_Page.Name == TextButton.Text then
					v.Sidebar_Page.BackgroundTransparency = 0
                	v.Sidebar_Page.TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				else
					v.Sidebar_Page.BackgroundTransparency = 1
                	v.Sidebar_Page.TextButton.TextColor3 = Color3.fromRGB(90, 90, 90)
				end
                    
				if v.Pages_Page.Name == TextButton.Text then
					v.Pages_Page.Visible = true
				else
					v.Pages_Page.Visible = false
				end
			end
		end)
        
        if settings.Focused then
            if settings.Focused == true then
                Frame.BackgroundTransparency = 0
                TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
			elseif settings.Focused == false then
				Frame.BackgroundTransparency = 1
                TextButton.TextColor3 = Color3.fromRGB(90, 90, 90)
			end
		end
        
        function Components.Section(settings)
            local Components = {}
            
            local Section = Instance.new("Frame", Page)
            Section.Name = settings.Title or "Section"
            Section.Size = UDim2.new(1, 0, 0, 30)
            Section.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Section.BorderSizePixel = 0
            Section.ClipsDescendants = true
            
            local Label = Instance.new("TextLabel", Section)
            Label.Text = settings.Title or "Section"
            Label.Size = UDim2.new(1, -10, 0, 30)
            Label.Position = UDim2.new(0, 10, 0, 0)
            Label.BackgroundTransparency = 1
            Label.TextSize = 15
            Label.Font = Enum.Font.GothamSemibold
            Label.TextXAlignment = Enum.TextXAlignment.Left
            Label.TextColor3 = Color3.fromRGB(255, 255, 255)
            
            local Holder = Instance.new("Frame", Section)
            Holder.Name = "Holder"
            Holder.Size = UDim2.new(1, -10, 0, 40)
            Holder.Position = UDim2.new(0, 5, 0, 30)
            Holder.BorderSizePixel = 0
            Holder.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
            
            local Holder_Holder = Instance.new("Frame", Holder)
            Holder_Holder.Size = UDim2.new(1, -10, 1, -10)
            Holder_Holder.Position = UDim2.new(0, 5, 0, 5)
            Holder_Holder.BackgroundTransparency = 1
            
            local Holder_Holder_UIListLayout = Instance.new("UIListLayout", Holder_Holder)
   			Holder_Holder_UIListLayout.Name = "Holder_Holder_UIListLayout"
       	 	Holder_Holder_UIListLayout.Padding = UDim.new(0, 5)
            
            function Components.Button(settings, callback)
                -- if callback then
                    local Frame = Instance.new("Frame", Holder_Holder)
                	
                    Frame.Size = UDim2.new(1, 0, 0, 30)
                    Frame.BackgroundTransparency = 1

                    local Label = Instance.new("TextLabel", Frame)
                	Label.Name = "Label"
                    Label.Text = settings.Title or "Section"
                    Label.Size = UDim2.new(1, -10, 0, 30)
                    Label.Position = UDim2.new(0, 10, 0, 0)
                    Label.BackgroundTransparency = 1
                    Label.TextSize = 14
                    Label.Font = Enum.Font.GothamSemibold
                    Label.TextXAlignment = Enum.TextXAlignment.Left
                    Label.TextColor3 = Color3.fromRGB(255, 255, 255)

                    local Button = Instance.new("Frame", Frame)
                	Button.Name = "Button"
                    Button.Size = UDim2.new(0, 80, 1, 0)
                    Button.Position = UDim2.new(1, 0, 0, 0)
                    Button.AnchorPoint = Vector2.new(1, 0)
                    Button.BorderSizePixel = 0
                	Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
                
                	local Button_Button = Instance.new("TextButton", Button)
                	Button_Button.Text = ""
                    
                	Holder.Size = UDim2.new(1, -10, 0, ((#Holder_Holder:GetChildren() - 1) * 40) - ((#Holder_Holder:GetChildren() - 2) * 5))
                	Section.Size = UDim2.new(1, 0, 0, 35 + Holder.Size.Y.Offset)
				end
            -- end
            
            return Components, Section
        end
        
        return Components, Frame
	end
    
    dragify(Items.MainFrame)
    
    return Functions, Gui
end

return App
