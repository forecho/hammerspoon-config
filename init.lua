require "modules.reload"
require "config"
require "modules.window"
require "modules.launcher"
require "modules.input"

hs.hotkey.bind({'cmd', 'shift'}, 'h', function() 
	hs.alert('Hello World') 
end)
