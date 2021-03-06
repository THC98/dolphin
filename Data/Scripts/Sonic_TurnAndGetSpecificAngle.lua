----- EDIT YOUR ANGLE SET POINT HERE -----
angleSetPoint = 0

local core = require "sonic_core"
local target_angle = require "sonic_target_angle"

function onScriptStart()

	-- set the angleSetPoint as the value read in sonic_target_angle.lua file
	angleSetPoint = target_angle.Y
	MsgBox(string.format("Target angle: %d", angleSetPoint))
	
end

function onScriptCancel()
	
end

function onScriptUpdate()
	
	-- input angleSetPoint with smooth turn to the main stick
	core.angleInput(core.smoothTurn(angleSetPoint))
	
end

function onStateLoaded()
	
end

function onStateSaved()
	
end