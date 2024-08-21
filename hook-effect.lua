if hookfunction and not islclosure(hookfunction) then 
    fl { 
        rs.Assets.GUI:GetChildren(),
        function(_, v)
            v.Enabled = false
        end
    }

    hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function() end)
    hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function() end)
end
