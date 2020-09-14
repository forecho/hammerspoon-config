require "modules.reload"
require "config"
require "modules.window"
require "modules.launcher"
require "modules.input"
require "modules.defaultInput"
require "modules.bluetoothSleep"
require "modules.wifi"

hs.hotkey.bind({'cmd', 'shift'}, 'h', function()
	hs.alert('Hello World') 
	speaker = hs.speech.new()
	speaker:speak("Hammerspoon is online")
	hs.notify.new({title="Hammerspoon launch", informativeText="Boss, at your service"}):send()
end)
