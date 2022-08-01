local LocalPlayer = game:FindService("Players").LocalPlayer;

for _, connection in next, getconnections(LocalPlayer.Idled) do
    connection:Disable();
end