if hookfunction and not islclosure(hookfunction) then 
        for i,v in game:GetService("ReplicatedStorage").Assets.GUI:GetChildren() do 
            v.Enabled = false 
        end
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)
        task.spawn(function()
                wait(1)
                repeat task.wait(1) until game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool') and game.Players.LocalPlayer.Character:FindFirstChildOfClass('Tool').ToolTip == 'Melee'
                for i,v in pairs(getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))[2].activeController.data) do  
                    if typeof(v) == 'function' then 
                        hookfunction(v,function() end)
                    end
                end 
        end) 
        task.delay(10,function()
                for i,v2 in pairs(game.ReplicatedStorage.Effect.Container:GetDescendants()) do 
                    pcall(function()
                        if v2.ClassName =='ModuleScript' and typeof(require(v2)) == 'function' then 
                            hookfunction(require(v2),function()end)
                        end
                    end)
                end
        end)
end
