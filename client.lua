-- The x and y offset (starting at the top left corner) --
-- Default: 0.005, 0.001
offset = {x = 0.003, y = 0.021}

-- Text RGB Color --
-- Default: 64, 64, 64 (gray)
rgb = {r = 255, g = 255, b = 255}

-- Text transparency --
-- Default: 255
alpha = 255

-- Text scale
-- Default: 0.4
-- NOTE: Number needs to be a float (so instead of 1 do 1.0)
scale = 0.5

-- Text Font --
-- 0 - 5 possible
-- Default: 1
font = 4


Citizen.CreateThread(function()
	while true do
		SetTextColour(rgb.r, rgb.g, rgb.b, alpha)

		SetTextFont(font)
		SetTextScale(scale, scale)
		SetTextWrap(0.0, 1.0)
		SetTextCentre(false)
		SetTextDropshadow(2, 2, 0, 0, 0)
		SetTextEdge(1, 0, 0, 0, 205)
		SetTextEntry("STRING")
		AddTextComponentString("ONLINE: " .. getNumOfPlayer() .. "/32")
		DrawText(offset.x, offset.y)

		Citizen.Wait(1)
	end
end)


function getNumOfPlayer()
	local Count = 0
	local nPlayers = GetActivePlayers()

	for Index, Value in pairs(nPlayers) do
	  Count = Count + 1
	end

	return Count;
end