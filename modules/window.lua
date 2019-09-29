hs.hotkey.bind(windowHotkey, 'return', function()
    hs.grid.maximizeWindow()
end)

hs.hotkey.bind(windowHotkey, 'F', function() 
    hs.window.focusedWindow():toggleFullScreen()
end)

hs.hotkey.bind(windowHotkey, 'left', function()
    local w = hs.window.focusedWindow()
    if not w then
        return
    end
    local s = w:screen():toWest()
    if s then
        w:moveToScreen(s)
    end
end)

hs.hotkey.bind(windowHotkey, 'right', function()
    local w = hs.window.focusedWindow()
    if not w then
        return
    end
    local s = w:screen():toEast()
    if s then
        w:moveToScreen(s)
    end
end)
