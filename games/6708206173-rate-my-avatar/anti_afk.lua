local UIS = game:FindService("UserInputService");
local ReplicatedStorage = game:FindService("ReplicatedStorage");

for _, connection in next, getconnections(UIS.WindowFocusReleased) do
    connection:Disable();
end

ReplicatedStorage:WaitForChild("AFK"):FireServer(true);