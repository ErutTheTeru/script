lp.Idled:Connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        wt(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
end)

func {
        bounty.functions.misc,
        "rejoin",
        function(v)
                if v.Name == "ErrorPrompt" then
                        if v.TitleFrame.ErrorTitle.Text ~= "Teleport Failed" then
                                game:GetService("TeleportService"):Teleport(game.PlaceId, lp)
                        end
                end
        end
}

fl {
        game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren(),
        function(_, v)
                rejoin(v)
        end 
}

CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(rejoin)
