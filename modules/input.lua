local function Chinese()
    hs.keycodes.setMethod("Pinyin - Simplified")
    -- hs.keycodes.currentSourceID("com.apple.inputmethod.SCIM.ITABC")
end

local function English()
    hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
end


hs.hotkey.bind(inputHotkey, 'S', function()
    Chinese()
end)

hs.hotkey.bind(inputHotkey, 'E', function() 
    English()
end)

local function cycleInputMethod()
    if hs.keycodes.currentSourceID() == "com.apple.keylayout.ABC" then
        hs.keycodes.currentSourceID("com.apple.inputmethod.SCIM.ITABC")
    elseif hs.keycodes.currentSourceID() == "com.apple.inputmethod.SCIM.ITABC" then
        hs.keycodes.currentSourceID("com.apple.keylayout.ABC")
    end
end

hs.hotkey.bind(inputHotkey, '.', cycleInputMethod)