spawn(function()
        lp.Idled:Connect(function()
                game:GetService('VirtualUser'):Button2Down(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
                wt(1)
                game:GetService('VirtualUser'):Button2Up(Vector2.new(0,0), workspace.CurrentCamera.CFrame)
        end)
        
        func {
                'rejoin',
                function(v)
                        if v.Name == 'ErrorPrompt' and ffc(v, 'MessageArea') and ffc(v.MessageArea, 'ErrorFrame') and not bounty.hunt.hop then
                                if v.TitleFrame.ErrorTitle.Text ~= 'Teleport Failed' then
                                        game:GetService('TeleportService'):Teleport(game.PlaceId, lp)
                                end
                        end
                end
        }
        
        fl {
                coregui.RobloxPromptGui.promptOverlay:GetChildren(),
                function(_, v)
                        rejoin(v)
                end 
        }
        
        coregui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(rejoin)
end)
