local render = game:FindService("RunService").RenderStepped;

spawn(pcall(function()
    while render:wait() do
        local character = game:FindService("Players").LocalPlayer.Character or game:FindService("Players").LocalPlayer.CharacterAdded:wait();
        if character:WaitForChild("HumanoidRootPart"):FindFirstChild("ProximityPrompt") then
	        character:WaitForChild("HumanoidRootPart"):FindFirstChild("ProximityPrompt"):Destroy();
        end
    end
end))