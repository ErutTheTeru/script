
        game.Players.LocalPlayer.Idled:connect(function()
            game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
            task.wait(1)
            game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        end)
        function skid(v)
            if v.Name == "ErrorPrompt" then
                if v.Visible then
                    if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                        game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
                    end
                end
                v:GetPropertyChangedSignal("Visible"):Connect(function()
                    if v.Visible then
                        if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                            game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
                        end
                    end
                end)
            end
        end
        for i, v in game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren() do
            skid(v) 
        end
        game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(skid)
