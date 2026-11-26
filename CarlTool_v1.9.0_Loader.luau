-- CarlTool_v1.9.0_Loader.luau (Un-obfuscated compatible loader)
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")

local lp = Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui")

local API_VERIFY_URL = "https://ttzgtusevidhswevttpn.supabase.co/functions/v1/verify-key"
local LICENSE_FILE_NAME = "CarlTool_SavedKey.txt"
local PAYLOAD_CACHE_FILE = "CarlTool_Payload_Cache.luau"

local function getDeviceHWID()
    local hwid = nil
    pcall(function()
        if gethwid then
            hwid = gethwid()
        elseif syn and syn.get_hwid then
            hwid = syn.get_hwid()
        elseif get_hwid then
            hwid = get_hwid()
        end
    end)
    if not hwid or tostring(hwid) == "" then
        pcall(function()
            hwid = game:GetService("RbxAnalyticsService"):GetClientId()
        end)
    end
    return tostring(hwid or "UNKNOWN_DEVICE")
end

local function sendHttpRequest(reqData)
    local requestFunc = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if not requestFunc then
        return nil, "您的執行器不支援 HTTP 網路請求"
    end
    local ok, res = pcall(function()
        return requestFunc(reqData)
    end)
    if not ok or not res then
        return nil, "網路連線失敗，請檢查網路狀態"
    end
    return res, nil
end

local function verifyAndLaunch(inputKey)
    inputKey = tostring(inputKey or ""):gsub("%s+", "")
    if inputKey == "" then
        return false, "⚠️ 請輸入有效的卡密！"
    end

    local hwid = getDeviceHWID()
    local nonce = HttpService:GenerateGUID(false)
    local body = HttpService:JSONEncode({
        key = inputKey,
        license_key = inputKey,
        hwid = hwid,
        device_id = hwid,
        userId = lp.UserId,
        nonce = nonce
    })

    local res, err = sendHttpRequest({
        Url = API_VERIFY_URL,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = body
    })

    if not res then
        return false, "❌ " .. tostring(err)
    end
    if res.StatusCode == 401 then
        return false, "❌ 伺服器 401 拒絕連線（請關閉 Verify JWT）"
    end

    local okDecode, data = pcall(function()
        return HttpService:JSONDecode(res.Body)
    end)
    if not okDecode or type(data) ~= "table" then
        return false, "❌ 伺服器回應格式異常 (" .. tostring(res.StatusCode) .. ")"
    end

    local isOk = (data.success == true)
        or (tostring(data.success):lower() == "true")
        or (tostring(data.status or ""):lower() == "success")

    if not isOk then
        return false, tostring(data.message or data.error or "❌ 卡密無效或驗證失敗")
    end

    local payloadCode = data.payload
    if type(payloadCode) ~= "string" or #payloadCode < 50 then
        return false, "❌ 後端未下發主腳本（請確認 Storage 私人檔案已上傳）"
    end

    local fn, compileErr = loadstring(payloadCode)
    if type(fn) ~= "function" then
        return false, "❌ 主腳本編譯失敗: " .. tostring(compileErr)
    end

    if writefile then
        pcall(function()
            writefile(LICENSE_FILE_NAME, inputKey)
            writefile(PAYLOAD_CACHE_FILE, payloadCode)
        end)
    end

    local factor = tonumber(data.session_factor) or 9999
    if factor < 1000 then factor = 9999 end

    task.spawn(function()
        fn({
            auth = "carl",
            factor = factor,
            hwid = hwid,
            expires_text = tostring(data.expires_at or "")
        })
    end)

    return true, "✅ 驗證通過！正在載入雲端主程式..."
end

if readfile and isfile and isfile(LICENSE_FILE_NAME) then
    local saved = ""
    pcall(function() saved = readfile(LICENSE_FILE_NAME) end)
    saved = tostring(saved or ""):gsub("%s+", "")
    if saved ~= "" then
        local autoOk = verifyAndLaunch(saved)
        if autoOk then
            return
        end
    end
end

local authGui = Instance.new("ScreenGui")
authGui.Name = "CarlToolAuth_" .. tostring(math.random(100000, 999999))
authGui.ResetOnSpawn = false
authGui.IgnoreGuiInset = true
pcall(function()
    if gethui then authGui.Parent = gethui() else authGui.Parent = pg end
end)

local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 400, 0, 210)
frame.Position = UDim2.new(0.5, -200, 0.5, -105)
frame.BackgroundColor3 = Color3.fromRGB(255, 240, 246)
frame.Parent = authGui
Instance.new("UICorner", frame).CornerRadius = UDim.new(0, 20)

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -32, 0, 32)
title.Position = UDim2.new(0, 16, 0, 12)
title.BackgroundTransparency = 1
title.Text = "🌸 Carl Tool 雲端授權驗證 🔐"
title.TextColor3 = Color3.fromRGB(180, 50, 110)
title.Font = Enum.Font.GothamBlack
title.TextSize = 17
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = frame

local box = Instance.new("TextBox")
box.Size = UDim2.new(1, -32, 0, 40)
box.Position = UDim2.new(0, 16, 0, 54)
box.BackgroundColor3 = Color3.new(1, 1, 1)
box.PlaceholderText = "輸入卡密..."
box.Text = ""
box.TextColor3 = Color3.fromRGB(70, 55, 65)
box.Font = Enum.Font.Code
box.TextSize = 14
box.ClearTextOnFocus = false
box.Parent = frame
Instance.new("UICorner", box).CornerRadius = UDim.new(0, 10)

local statusLbl = Instance.new("TextLabel")
statusLbl.Size = UDim2.new(1, -32, 0, 24)
statusLbl.Position = UDim2.new(0, 16, 0, 102)
statusLbl.BackgroundTransparency = 1
statusLbl.Text = "💡 輸入卡密後將從雲端動態下發主程式"
statusLbl.TextColor3 = Color3.fromRGB(150, 70, 110)
statusLbl.Font = Enum.Font.GothamMedium
statusLbl.TextSize = 12
statusLbl.TextXAlignment = Enum.TextXAlignment.Left
statusLbl.Parent = frame

local btn = Instance.new("TextButton")
btn.Size = UDim2.new(0.55, 0, 0, 38)
btn.Position = UDim2.new(0, 16, 0, 138)
btn.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
btn.Text = "✅ 驗證並載入"
btn.TextColor3 = Color3.new(1, 1, 1)
btn.Font = Enum.Font.GothamBold
btn.TextSize = 14
btn.Parent = frame
Instance.new("UICorner", btn).CornerRadius = UDim.new(0, 12)

local busy = false
btn.MouseButton1Click:Connect(function()
    if busy then return end
    busy = true
    btn.Text = "⏳ 驗證中..."
    local ok, msg = verifyAndLaunch(box.Text)
    statusLbl.Text = tostring(msg or "")
    if ok then
        task.wait(0.2)
        pcall(function() authGui:Destroy() end)
    else
        busy = false
        btn.Text = "✅ 驗證並載入"
    end
end)
