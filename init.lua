require "modules.reload"
require "config"
require "modules.window"
require "modules.launcher"

hs.hotkey.bind({'cmd', 'shift'}, 'h', function() 
	hs.alert('Hello World') 
end)

local hyper = {'control', 'option', 'command'}
local hkCmdO = {'option', 'command'}
local hkControlShift = {'control', 'shift'}
local hyperShift = {'control', 'option', 'command', 'shift'}
