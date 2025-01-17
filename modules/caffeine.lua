-- 系统休眠控制
function preventSystemSleep()
    -- 获取本地时间
    local date = os.date("*t")
    -- 转换星期显示为更直观的格式
    local weekdays = {"日", "一", "二", "三", "四", "五", "六"}
    print(string.format("本地时间: %02d:%02d (星期%s)", date.hour, date.min, weekdays[date.wday]))
    
    -- 检查是否是工作日 (1=周日, 2=周一, ..., 6=周五, 7=周六)
    if date.wday >= 2 and date.wday <= 6 then
        -- 转换当前时间为分钟
        local currentMinutes = date.hour * 60 + date.min
        -- 定义工作时间 (21:30 - 次日 5:00)
        local startMinutes = 21 * 60 + 30  -- 晚上 9:30
        local endMinutes = 5 * 60          -- 次日凌晨 5:00
        
        print(string.format("当前分钟数: %d, 开始时间: %d, 结束时间: %d", 
            currentMinutes, startMinutes, endMinutes))
        
        -- 由于跨天，需要特殊处理时间判断
        local isWorkTime = false
        if currentMinutes >= startMinutes then
            -- 晚上 9:30 之后
            isWorkTime = true
        elseif currentMinutes <= endMinutes then
            -- 凌晨 5:00 之前
            isWorkTime = true
        end
        
        if isWorkTime then
            print("在工作时间内 - 阻止休眠")
            hs.caffeinate.set("system", true)
        else
            print("不在工作时间内 - 允许休眠")
            hs.caffeinate.set("system", false)
        end
    else
        print("不是工作日 - 允许休眠")
        hs.caffeinate.set("system", false)
    end
end

-- 每分钟检查一次
local timer = hs.timer.doEvery(60, preventSystemSleep)

-- 立即运行一次
preventSystemSleep()

-- 添加菜单栏图标显示状态
local menubar = hs.menubar.new()

function setMenuIcon()
    if hs.caffeinate.get("system") then
        menubar:setTitle("🟢")  -- 系统防休眠开启
    else
        menubar:setTitle("⭕️")  -- 系统防休眠关闭
    end
end

if menubar then
    menubar:setTooltip("系统防休眠状态")
    setMenuIcon()
    -- 每分钟更新图标状态
    hs.timer.doEvery(60, setMenuIcon)
end