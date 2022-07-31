do
	if not game:IsLoaded() then
		game.Loaded:wait();
	end
	
	local LocalPlayer = game:FindService("Players").LocalPlayer;
	if not LocalPlayer.Character or LocalPlayer.Character.Parent == nil then
		LocalPlayer.CharacterAdded:wait();
	end
end