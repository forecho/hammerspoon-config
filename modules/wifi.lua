hs.wifi.watcher.new(function()
    local currentWifi = hs.wifi.currentNetwork()
    local currentOutput = hs.audiodevice.current(false)
    if not currentWifi then return end

    if (currentWifi == workWifi and currentOutput.name == outputDeviceName) then
        -- audio mute 
        hs.audiodevice.findDeviceByName(outputDeviceName):setOutputMuted(true)
        hs.notify.new({title="HS Robot", informativeText="Connect to Company And Audio Mute"}):send()
    end
end):start()