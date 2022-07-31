settings().Rendering.QualityLevel = 1;

local RunService = game:FindService("RunService")
local Terrain = game:FindService("Workspace"):FindFirstChildOfClass("Terrain");
local Lighting = game:FindService("Lighting");

Terrain.WaterWaveSize = 0;
Terrain.WaterWaveSpeed = 0;
Terrain.WaterReflectance = 0;
Terrain.WaterTransparency = 0;
Lighting.GlobalShadows = false;
Lighting.FogEnd = 9e9;

for _, v in next, game:GetDescendants() do
	if v:IsA("Part") or v:IsA("UnionOperation") or v:IsA("MeshPart") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
		v.Material = "Plastic";
		v.Reflectance = 0;
	elseif v:IsA("Decal") then
		v.Transparency = 1;
	elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
		v.Lifetime = NumberRange.new(0);
	elseif v:IsA("Explosion") then
		v.BlastPressure = 1;
		v.BlastRadius = 1;
	end
end

for _, v in pairs(Lighting:GetDescendants()) do
	if v:IsA("BlurEffect") or v:IsA("SunRaysEffect") or v:IsA("ColorCorrectionEffect") or v:IsA("BloomEffect") or v:IsA("DepthOfFieldEffect") then
		v.Enabled = false;
	end
end

game:FindService("Workspace").DescendantAdded:Connect(function(child)
	spawn(function()
		if child:IsA("ForceField") then
			RunService.Heartbeat:wait();
			child:Destroy();
		elseif child:IsA("Sparkles") then
			RunService.Heartbeat:wait();
			child:Destroy();
		elseif child:IsA("Smoke") or child:IsA("Fire") then
			RunService.Heartbeat:wait()
			child:Destroy();
		end
	end)
end)