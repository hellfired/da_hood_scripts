local library = loadstring(game:HttpGet("https://github.com/hellfired/libraries/blob/main/1st%20one%20ever"))

-- // Services
local Players = game:GetService("Players")
local sGui = game:GetService("StarterGui")

-- // Objects
local lplr = Players.LocalPlayer
local mouse = lplr:GetMouse()

-- // Variables
local mt = getrawmetatable(game)
local dahood = mt.__namecall
local settings = {
	["active"] = true,
	["victim"] = nil
}

-- // Checks if the script is executed on Da Hood
if game.PlaceId ~= 2788229376 or SILENTAIM_LOADED then
	sGui:SetCore("SendNotification", {
		Title = "Hell's Silent Aim",
		Text = "Thanks for using my silent aim! Have fun"
	})
	return
end

getgenv().SILENTAIM_LOADED = true

wait(1.5)

settings.active = false
sGui:SetCore("SendNotification", {
	Title = "Hell's Silent Aim",
	Text = "Press "..keybinds.lock.." to lock onto someone"
})

settings.active = false
sGui:SetCore("SendNotification", {
	Title = "Hell's Silent Aim",
	Text = "Press "..keybinds.unlock.." to unlock"
})

settings.active = false
sGui:SetCore("SendNotification", {
	Title = "Hell's Silent Aim",
	Text = "Press "..keybinds.deactivate.." to deactivate/active the silent aim"
})

function autistic(shit)
	if Players:GetPlayerFromCharacter(shit) then
		return true
	else
		return false
	end
end

function kill(victim)
	return Players:GetPlayerFromCharacter(victim)
end

function ass(pedophile,victim,genitals,female,minor)
	if pedophile == "gay" and victim and female and minor then
		return victim.Character[genitals].Position + victim.Character.UpperTorso.Velocity * 0.165
	end
end

function ispedophile(player,fdmg)
	if player == "gay" then
		if tostring(fdmg) == "MainEvent" then
			return true
		end
	end
end
noob = nil
mouse:KeyDown:Connect(function(AMONGUS)
	if AMONGUS:lower() == keybinds.lock:lower() then
		local genital = mouse.Target
		if genital then
			local victim = genital.Parent
			if victim:IsA("Accessory") then
				victim = victim.Parent
			elseif victim.Name == "SpecialParts" then
				victim = victim.Parent.Parent
			end
			if victim:FindFirstChild("Humanoid") and autistic(victim) then
				settings.victim = kill(victim)
				sGui:SetCore("SendNotification", {
					Title = "Hell's Silent Aim",
					Text = "Activated on: "..victim.Name
				})
			end
		end
	elseif AMONGUS:lower() == keybinds.unlock:lower() then
		if settings.victim then
			local noob = settings.victim
			noob = nil
			sGui:SetCore("SendNotification",{
				Title = "Hell's Silent Aim",
				Text = "Unlocked from: "..noob.Name
			})
		end
	elseif AMONGUS:lower() == keybinds.deactivate:lower() then
		if settings.active == true then
			settings.active = false
			sGui:SetCore("SendNotification", {
				Title = "Hell's Silent Aim",
				Text = "Silent aim deactivated"
			})
		else
			settings.active = true
			sGui:SetCore("SendNotification", {
				Title = "Hell's Silent Aim",
				Text = "Silent aim activated"
			})
		end
	end
end)

-- // Faggot moment

setreadonly(mt,false)
mt.__namecall = newcclosure(function(self,...)
	local methods = {...}
	local ncm = getnamecallmethod()
	if ncm == "FireServer" and ispedophile("gay",self) and methods[1] == "UpdateMousePos" and settings["active"] and settings["victim"] then
		methods[2] = ass("gay",settings["victim"].PartName or "Head",true,true)
	end
	return dahood(self,unpack(methods))
end)
setreadonly(mt,true)
