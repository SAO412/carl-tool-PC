print("Hello, world!");-- ==============================================================================
-- 🌸✨ Carl Tool - 《一掌轟仙界》自由調整大小旗艦版 v1.9.0 (光波完美一擊99%＆全功能整合版) 🚀💎
-- ==============================================================================
local RAW_ASSET_ID = "135295556334883" -- 💡 您的專屬圖標 ID
local DISCORD_INVITE_URL = "https://discord.gg/XknhQjbE4z" -- 💡 您的 Discord 連結
local CONFIG_FILE_NAME = "CarlTool_YiZhang_Resize_Config.json"
local LICENSE_FILE_NAME = "CarlTool_SavedKey.txt"
local API_VERIFY_URL = "https://ttzgtusevidhswevttpn.supabase.co/functions/v1/verify-key"
local APP_PEPPER = "Carl_9xQ7_mP2vL8_Sakura#2026!zW4n" -- 🔐 需與後端 CARL_APP_PEPPER 一致
local _UPDATE_LOGS_DATA = {
zh = {
"📌 [v1.9.0 - 2026/11/24] 新增防掛機踢出（AFK 不掉線）功能",
"  • 於「⚙️ 參數設定」分頁新增「🛡️ 防掛機踢出（AFK 不掉線）」開關（預設開啟），透過監聽 Idled 事件並模擬虛擬輸入防止 20 分鐘閒置斷線。",
"",
"📌 [v1.8.9 - 2026/11/24] 單次精準釋放鎖定、移除法寶檢測＆全方位防卡頓優化",
"  • 光波完美一擊改為每輪「單次精準觸發」鎖定機制（僅觸發「發！」按鈕，移除畫面中央連點），待進度條重置後自動解鎖下一輪。",
"  • 移除側邊欄「🎒 法寶檢測」分頁與全背包掃描負擔，並為光波條、游標、「發！」與「擺最賺」按鈕加入參考快取以消除每幀重複遍歷。",
"  • 關閉自動孵化／放蛋時停止背景彈窗掃描，進一步節流看板統計與櫻花特效粒子上限，大幅提升長時間掛機流暢度。",
"",
"📌 [v1.8.8 - 2026/11/24] 融合新版光波完美一擊（99.0% 預設＆精準觸發強化）",
"  • 取代舊版光波偵測與釋放邏輯，整合新版光波進度條游標中心百分比（預設 99.0% 即觸發）與數值 20 備援觸發。",
"  • 移除連擊門檻延遲，達標當幀立即觸發「發！」按鈕（預設冷卻 250ms），並完整保留滑桿可調式設定。",
"",
"📌 [v1.8.7 - 2026/11/24] 移除自動賣裝備、補齊完整更新日誌＆版本號升級 v1.8.7",
"  • 移除自動賣裝備開關、間隔滑桿與出售執行，同時完整保留「背景自動擺最賺」與「背景自動孵化／放蛋」邏輯。",
"  • 補齊 v1.8.0 至 v1.8.6 中英雙語更新日誌缺漏項目（含 v1.8.0 擺最賺細節、v1.8.1 初始預設5秒、v1.8.2 絲滑UI元件、v1.8.3 合成雙擊、v1.8.5 孵化放蛋10秒、v1.8.6 光波完美一擊＆絲滑拖動）。",
"",
"📌 [v1.8.6 - 2026/11/23] 光波完美一擊核心整合＆視窗拖動極致絲滑化",
"  • 將光波進度條游標中心百分比、數值偵測與「發！」按鈕精準觸發整合至主掛機循環。",
"  • 拖動期間暫停非必要背景 UI 重排/更新干擾，並以更高跟隨阻尼與次像素 snap 處理主面板、驗證框與懸浮球拖曳。",
"  • 拖動結束時精準對齊最終座標並自動夾取在螢幕安全範圍內，避免拖出視窗外或鬆手回彈。",
"",
"📌 [v1.8.5 - 2026/11/23] 孵化與放蛋初始鎖定 10 秒並支援後續自訂調整",
"  • 「背景自動孵化」與「背景自動放蛋」間隔初始預設 10 秒（10000 ms），後續可透過滑桿自由調高或調低。",
"",
"📌 [v1.8.4 - 2026/11/23] 降頻節流防卡頓與櫻花特效效能最佳化",
"  • 看板統計、系統監控文字、彈窗抑制與抽蛋背景藏圖改為節流更新，降低每幀重複掃描與字串組裝負擔。",
"  • 櫻花特效改為控制同屏數量與降低生成頻率，減輕長時間掛機時的 UI 與動畫負擔。",
"",
"📌 [v1.8.3 - 2026/11/23] 自動合成 5 秒間隔雙擊觸發",
"  • 背景自動一鍵合成在每次觸發時支援點兩下（間隔約 0.15 秒），確保合成確認與觸發更穩定。",
"",
"📌 [v1.8.2 - 2026/11/23] 全面絲滑化可調式 UI 元件",
"  • 滑桿改用 RenderStepped 逐幀內插跟隨（Lerp）與圓形拇指把手，拖曳數值與進度條更跟手絲滑。",
"  • 視窗縮放、視窗拖曳與側邊欄分頁切換加入平滑過渡與逐幀更新，並更新更新日誌日期規則。",
"",
"📌 [v1.8.1 - 2026/11/23] 初始預設 5 秒自動合成與自動擺最賺",
"  • 啟動時預設開啟「⚗️ 背景自動一鍵合成」與「⭐ 背景自動擺最賺」，並將預設間隔統一調整為 5 秒。",
"",
"📌 [v1.8.0 - 2026/11] 背景自動擺最賺＆隱形觸發最佳化",
"  • 新增「⭐ 背景自動擺最賺」開關與獨立間隔調整，支援不開視窗背景隱形觸發與狀態還原。",
"  • 精準鎖定擺最賺按鈕並避開擴充、上限、稀有度篩選、放上台與拿著等無關按鈕，於運行日誌新增擺最賺累計統計。"
},
en = {
"📌 [v1.9.0 - 2026/11/24] Added Anti-AFK Disconnect Protection",
"  • Added '🛡️ Anti-AFK (No Disconnect)' toggle (enabled by default) in the Settings tab, hooking LocalPlayer.Idled with VirtualUser input to prevent 20-minute idle kicks.",
"",
"📌 [v1.8.9 - 2026/11/24] Single-Hit Round Lock, Removed Artifact Tab & Anti-Lag Optimization",
"  • Upgraded Beam Perfect-Hit to single-hit per round locking (fires '發！' once without center-screen double clicks) and auto-unlocks on bar reset.",
"  • Removed '🎒 Artifacts' tab and bag scan overhead, plus cached beam bar, marker, '發！', and 'Place Best' UI references to eliminate per-frame tree scans.",
"  • Disabled idle toast scanning when Auto Hatch/Fill is off and throttled stats & sakura particles for smoother long-session performance.",
"",
"📌 [v1.8.8 - 2026/11/24] Merged New Beam Perfect-Hit (99.0% Default & Precision Trigger)",
"  • Replaced legacy beam logic with cursor center percentage (default 99.0%) and numeric 20 fallback trigger.",
"  • Removed streak delay for instant same-frame firing via '發！' button (250ms default cooldown), preserving adjustable sliders.",
"",
"📌 [v1.8.7 - 2026/11/24] Removed Auto Sell Bag, Completed Changelog & v1.8.7 Upgrade",
"  • Removed Auto Sell Bag toggle, interval slider, and sell execution while keeping Auto Place Best and Auto Hatch/Fill Egg intact.",
"  • Completed missing v1.8.0–v1.8.6 changelog items in English (Place Best, 5s defaults, smooth sliders, double-click merge, 10s hatch/fill, beam & drag).",
"",
"📌 [v1.8.6 - 2026/11/23] Beam Perfect-Hit Integration & Ultra-Smooth Drag",
"  • Integrated beam bar cursor center percentage, numeric detection, and '發！' trigger into the main farm loop.",
"  • Improves drag responsiveness with higher damping, sub-pixel snapping, viewport clamping, and clean release alignment.",
"  • Snaps to final position on release and clamps within safe viewport bounds to prevent off-screen drift or rebound.",
"",
"📌 [v1.8.5 - 2026/11/23] 10s Initial Hatch & Fill Egg Interval with Adjustable Scaling",
"  • Sets initial Auto Hatch and Auto Fill Egg intervals to 10 seconds (10000 ms) while allowing custom adjustment afterward.",
"",
"📌 [v1.8.4 - 2026/11/23] Throttled UI Updates & Sakura Effect Optimization",
"  • Throttled stats/status text updates, toast suppression, and gacha overlay hiding to reduce per-frame overhead.",
"  • Capped active sakura petals and reduced spawn rate for smoother long-session performance.",
"",
"📌 [v1.8.3 - 2026/11/23] Double-Click Trigger on 5s Auto Merge",
"  • Background auto merge performs a double click (~0.15s apart) per trigger for more reliable merge execution.",
"",
"📌 [v1.8.2 - 2026/11/23] Smooth Adjustable UI Components",
"  • Upgraded sliders with RenderStepped interpolation (Lerp) and circular thumb knobs for smoother dragging.",
"  • Added smooth transitions for window resize, drag, and sidebar tab switching, plus updated changelog date rules.",
"",
"📌 [v1.8.1 - 2026/11/23] 5s Default Auto Merge & Auto Place Best",
"  • Enabled background Auto Merge and Auto Place Best by default at startup with a unified 5-second interval.",
"",
"📌 [v1.8.0 - 2026/11] Background Auto Place Best & Stealth Trigger",
"  • Added Auto Place Best toggle and interval slider with hidden background trigger and state restoration.",
"  • Targeted Place Best buttons while excluding expand, cap, rarity filter, equip, and hold actions, plus added Place Best stats."
}
}
local function generateDynamicSignature()
local chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"
local sig = "CarlResize_"
math.randomseed(os.time() + tick())
for i = 1, math.random(12, 24) do
local randIndex = math.random(1, #chars)
sig = sig .. chars:sub(randIndex, randIndex)
end
return sig
end
local _POLY_ID = generateDynamicSignature()
local function _getExecutorName()
if identifyexecutor then return identifyexecutor()
elseif getexecutorname then return getexecutorname()
elseif syn then return "Synapse X"
elseif KRNL_LOADED then return "Krnl"
elseif Fluxus then return "Fluxus"
elseif Solara then return "Solara"
elseif Delta then return "Delta"
elseif Codex then return "Codex"
else return "Universal Executor" end
end
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local _VirtualInputManager = game:GetService("VirtualInputManager")
local _GuiService = game:GetService("GuiService")
local HttpService = game:GetService("HttpService")
local _Stats = game:GetService("Stats")
local TweenService = game:GetService("TweenService")
local lp = Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui")

-- ==============================================================================
-- 🛡️ 緊繃防改核心：影子變數、純 Luau SHA-256、反 Hook 與分散式暗樁
-- ==============================================================================
local function createShadowNumber(initVal)
    local salt = math.random(10000, 99999)
    local raw = tonumber(initVal) or 0
    local encoded = bit32.bxor(math.floor(raw * 1000 + 0.5), salt)
    return {
        set = function(v)
            raw = tonumber(v) or 0
            encoded = bit32.bxor(math.floor(raw * 1000 + 0.5), salt)
        end,
        get = function()
            local check = bit32.bxor(encoded, salt)
            if math.abs((raw * 1000) - check) > 1 then
                return nil
            end
            return raw
        end
    }
end

local sha256
do
    local K = {
        0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
        0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
        0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
        0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
        0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
        0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
        0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
        0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2
    }
    local function rrot(x, n) return bit32.rrotate(x, n) end
    function sha256(msg)
        local len = #msg
        msg = msg .. "\128" .. string.rep("\0", (55 - len) % 64) .. string.pack(">I8", len * 8)
        local h0,h1,h2,h3,h4,h5,h6,h7 =
            0x6a09e667,0xbb67ae85,0x3c6ef372,0xa54ff53a,0x510e527f,0x9b05688c,0x1f83d9ab,0x5be0cd19
        for i = 1, #msg, 64 do
            local w = {}
            for j = 0, 15 do
                w[j] = string.unpack(">I4", msg, i + j * 4)
            end
            for j = 16, 63 do
                local s0 = bit32.bxor(rrot(w[j-15], 7), rrot(w[j-15], 18), bit32.rshift(w[j-15], 3))
                local s1 = bit32.bxor(rrot(w[j-2], 17), rrot(w[j-2], 19), bit32.rshift(w[j-2], 10))
                w[j] = (w[j-16] + s0 + w[j-7] + s1) % 4294967296
            end
            local a,b,c,d,e,f,g,h = h0,h1,h2,h3,h4,h5,h6,h7
            for j = 0, 63 do
                local S1 = bit32.bxor(rrot(e, 6), rrot(e, 11), rrot(e, 25))
                local ch = bit32.bxor(bit32.band(e, f), bit32.band(bit32.bnot(e), g))
                local t1 = (h + S1 + ch + K[j+1] + w[j]) % 4294967296
                local S0 = bit32.bxor(rrot(a, 2), rrot(a, 13), rrot(a, 22))
                local maj = bit32.bxor(bit32.band(a, b), bit32.band(a, c), bit32.band(b, c))
                local t2 = (S0 + maj) % 4294967296
                h,g,f,e,d,c,b,a = g,f,e,(d+t1)%4294967296,c,b,a,(t1+t2)%4294967296
            end
            h0=(h0+a)%4294967296; h1=(h1+b)%4294967296; h2=(h2+c)%4294967296; h3=(h3+d)%4294967296
            h4=(h4+e)%4294967296; h5=(h5+f)%4294967296; h6=(h6+g)%4294967296; h7=(h7+h)%4294967296
        end
        return string.format("%08x%08x%08x%08x%08x%08x%08x%08x", h0,h1,h2,h3,h4,h5,h6,h7)
    end
end

local _tamperShadow = createShadowNumber(0)
local _sessionShadow = createShadowNumber(0)
local _authFlagShadow = createShadowNumber(1337)
local _lastIntegrityCheck = 0

local function _checkIntegrity()
    local reqFn = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
    if type(reqFn) ~= "function" then
        _tamperShadow.set(1)
        return false
    end
    if iscclosure and not iscclosure(reqFn) then
        _tamperShadow.set(1)
        return false
    end
    if iscclosure and loadstring and not iscclosure(loadstring) then
        _tamperShadow.set(1)
        return false
    end
    return true
end

local function _isRuntimeHealthy()
    if _tamperShadow.get() ~= 0 then return false end
    if _authFlagShadow.get() ~= 7919 then return false end
    local sf = _sessionShadow.get()
    if not sf or sf < 1000 then return false end
    local now = os.clock()
    if now - _lastIntegrityCheck > 15 then
        _lastIntegrityCheck = now
        if not _checkIntegrity() then return false end
    end
    return true
end
local function applyCorner(p, r)
local c = Instance.new("UICorner")
c.CornerRadius = UDim.new(0, r or 24)
c.Parent = p
end
local function mountScreenGui(sGui)
local mounted = false
pcall(function()
if gethui then
sGui.Parent = gethui()
mounted = true
elseif syn and syn.protect_gui then
syn.protect_gui(sGui)
sGui.Parent = game:GetService("CoreGui")
mounted = true
end
end)
if not mounted or not sGui.Parent or not sGui:IsDescendantOf(game) then
pcall(function()
sGui.Parent = pg
end)
end
end
-- ==============================================================================
-- 🔐 卡密驗證與一機一碼 (HWID) 綁定模組
-- ==============================================================================
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
local function verifyLicenseKey(inputKey)
inputKey = tostring(inputKey or ""):gsub("%s+", "")
if inputKey == "" then
return false, "⚠️ 請輸入有效的卡密！"
end
    _checkIntegrity()
    if _tamperShadow.get() ~= 0 then
        return false, "❌ 偵測到執行環境異常，已中止驗證"
    end

    local currentHWID = getDeviceHWID()
    local ts = tostring(os.time())
    local nonce = HttpService:GenerateGUID(false)
    local sig = sha256(inputKey .. "|" .. currentHWID .. "|" .. ts .. "|" .. nonce .. "|" .. APP_PEPPER)

    local payload = HttpService:JSONEncode({
        key = inputKey,
        license_key = inputKey,
        hwid = currentHWID,
        device_id = currentHWID,
        userId = lp.UserId,
        ts = ts,
        nonce = nonce,
        sig = sig
    })

    local res, err = sendHttpRequest({
        Url = API_VERIFY_URL,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = payload
    })

    if not res then
        return false, "❌ " .. tostring(err)
    end

    if res.StatusCode == 401 then
        return false, "❌ 伺服器 401 拒絕連線（請在後台關閉 Verify JWT）"
    end

    local ok, data = pcall(function()
        return HttpService:JSONDecode(res.Body)
    end)

    if not ok or type(data) ~= "table" then
        return false, "❌ 伺服器回應格式異常 (" .. tostring(res.StatusCode) .. ")"
    end

    local rawSuccess = data.success
    if rawSuccess == nil then rawSuccess = data.valid end
    if rawSuccess == nil then rawSuccess = data.ok end

    local isAuthOk = (rawSuccess == true)
        or (tostring(rawSuccess):lower() == "true")
        or (tostring(data.status or ""):lower() == "success")
        or (tostring(data.status or ""):lower() == "ok")

    local resultText = tostring(data.message or data.msg or "")
    if not isAuthOk and (resultText:find("驗證通過") or resultText:find("驗證成功")) then
        isAuthOk = true
    end

    if isAuthOk then
        local factor = tonumber(data.session_factor)
        if factor and factor >= 1000 and type(data.ack) == "string" and data.ack ~= "" then
            local expectedAck = sha256(nonce .. "|" .. currentHWID .. "|" .. tostring(factor) .. "|" .. APP_PEPPER)
            if data.ack ~= expectedAck then
                _tamperShadow.set(1)
                return false, "❌ 回應簽章校驗失敗", ""
            end
            _sessionShadow.set(factor)
        else
            _sessionShadow.set(math.random(1000, 9999))
        end
        _authFlagShadow.set(7919)

        local function _getLocalUtcOffsetSec()
            local nowTs = os.time()
            local utcTbl = os.date("!*t", nowTs)
            local localTbl = os.date("*t", nowTs)
            if utcTbl and localTbl then
                utcTbl.isdst = false
                localTbl.isdst = false
                return os.difftime(os.time(localTbl), os.time(utcTbl))
            end
            return 0
        end

        local function _parseIsoToTimestamp(str)
            local s = tostring(str)
            local y, m, d, H, M, S = s:match("(%d%d%d%d)%-(%d%d)%-(%d%d)[T%s](%d%d):(%d%d):(%d%d)")
            if not (y and m and d and H and M and S) then
                return nil, nil
            end

            local baseTs = os.time({
                year = tonumber(y), month = tonumber(m), day = tonumber(d),
                hour = tonumber(H), min = tonumber(M), sec = tonumber(S)
            })

            local tzPart = s:match("(%d%d:%d%d:%d%d)([Zz+-][%d:]+)")
            if tzPart then
                local signStr, tzH, tzM = s:match("(%d%d:%d%d:%d%d)([+-])(%d%d):?(%d*)")
                if signStr and tzH then
                    local offsetFromUtcSec = ((tonumber(tzH) or 0) * 3600 + (tonumber(tzM) or 0) * 60) * (signStr == "-" and -1 or 1)
                    local localUtcOffsetSec = _getLocalUtcOffsetSec()
                    local correctedTs = baseTs - offsetFromUtcSec + localUtcOffsetSec
                    local dt = os.date("*t", correctedTs)
                    local formattedLocal = string.format("%04d-%02d-%02d %02d:%02d:%02d", dt.year, dt.month, dt.day, dt.hour, dt.min, dt.sec)
                    return correctedTs, formattedLocal
                elseif s:match("(%d%d:%d%d:%d%d)[Zz]") then
                    local localUtcOffsetSec = _getLocalUtcOffsetSec()
                    local correctedTs = baseTs + localUtcOffsetSec
                    local dt = os.date("*t", correctedTs)
                    local formattedLocal = string.format("%04d-%02d-%02d %02d:%02d:%02d", dt.year, dt.month, dt.day, dt.hour, dt.min, dt.sec)
                    return correctedTs, formattedLocal
                end
            end

            return baseTs, nil
        end

        local function _formatRemainingFromTs(ts)
            if not ts then return "" end
            local diff = ts - os.time()
            if diff <= 0 then
                return " (已到期)"
            end
            local days = math.floor(diff / 86400)
            local hours = math.floor((diff % 86400) / 3600)
            local mins = math.floor((diff % 3600) / 60)
            if days > 0 then
                return string.format(" (剩 %d天 %d小時)", days, hours)
            elseif hours > 0 then
                return string.format(" (剩 %d小時 %d分)", hours, mins)
            else
                return string.format(" (剩 %d分)", math.max(1, mins))
            end
        end

        local function extractExpiryInfo(tbl, depth)
            if type(tbl) ~= "table" then return "" end
            depth = depth or 0
            if depth > 4 then return "" end

            local candidates = {
                tbl.expires_at, tbl.expiresAt, tbl.expire_at, tbl.expireAt,
                tbl.expiration, tbl.expiry, tbl.valid_until, tbl.validUntil,
                tbl.end_at, tbl.endAt, tbl.expired_at, tbl.expiredAt,
                tbl.due_date, tbl.dueDate, tbl.until_date, tbl.untilDate,
                tbl.remaining_days, tbl.remainingDays, tbl.days_left, tbl.daysLeft,
                tbl.days, tbl.duration_days, tbl.remaining_hours, tbl.remainingHours
            }
            for _, c in ipairs(candidates) do
                if c ~= nil and tostring(c) ~= "" then
                    if type(c) == "number" then
                        local secTs = c
                        if secTs > 100000000000 then
                            secTs = math.floor(secTs / 1000)
                        end
                        if secTs > 1000000000 then
                            local dt = os.date("*t", math.floor(secTs))
                            return string.format("%04d-%02d-%02d %02d:%02d:%02d", dt.year, dt.month, dt.day, dt.hour, dt.min, dt.sec)
                                .. _formatRemainingFromTs(math.floor(secTs))
                        else
                            return tostring(c) .. " 天"
                        end
                    end
                    local s = tostring(c)
                    local ts, convertedStr = _parseIsoToTimestamp(s)
                    local cleanS = convertedStr or s:gsub("(%d%d%d%d%-%d%d%-%d%d)[T%s](%d%d:%d%d:%d%d).*", "%1 %2")
                    if ts then
                        return cleanS .. _formatRemainingFromTs(ts)
                    end
                    return cleanS
                end
            end

            for k, v in pairs(tbl) do
                local lk = tostring(k):lower()
                if (lk:find("exp") or lk:find("valid") or lk:find("end") or lk:find("day") or lk:find("time"))
                    and v ~= nil and tostring(v) ~= "" and type(v) ~= "table" then
                    if type(v) == "number" and v > 1000000000 then
                        local secTs = (v > 100000000000) and math.floor(v / 1000) or math.floor(v)
                        local dt = os.date("*t", secTs)
                        return string.format("%04d-%02d-%02d %02d:%02d:%02d", dt.year, dt.month, dt.day, dt.hour, dt.min, dt.sec)
                            .. _formatRemainingFromTs(secTs)
                    end
                    local s = tostring(v)
                    local ts, convertedStr = _parseIsoToTimestamp(s)
                    local cleanS = convertedStr or s:gsub("(%d%d%d%d%-%d%d%-%d%d)[T%s](%d%d:%d%d:%d%d).*", "%1 %2")
                    if ts then
                        return cleanS .. _formatRemainingFromTs(ts)
                    end
                    return cleanS
                end
            end

            for _, v in pairs(tbl) do
                if type(v) == "table" then
                    local subRes = extractExpiryInfo(v, depth + 1)
                    if subRes ~= "" then
                        return subRes
                    end
                end
            end
            return ""
        end

        local expiresInfo = extractExpiryInfo(data)
        if expiresInfo == "" then
            local baseUrl = API_VERIFY_URL:match("^(https://[^/]+)")
            if baseUrl then
                local candidateTables = { "licenses", "license_keys", "keys", "cards" }
                local encodedKey = HttpService:UrlEncode(inputKey)
                local headersWithApiKey = {
                    ["Accept"] = "application/json"
                }
                if type(data.anon_key) == "string" and data.anon_key ~= "" then
                    headersWithApiKey["apikey"] = data.anon_key
                    headersWithApiKey["Authorization"] = "Bearer " .. data.anon_key
                end
                for _, tblName in ipairs(candidateTables) do
                    local restUrl = string.format("%s/rest/v1/%s?select=expires_at&license_key=eq.%s&limit=1", baseUrl, tblName, encodedKey)
                    local qRes = sendHttpRequest({
                        Url = restUrl,
                        Method = "GET",
                        Headers = headersWithApiKey
                    })
                    if qRes and qRes.StatusCode and qRes.StatusCode >= 200 and qRes.StatusCode < 300 and qRes.Body then
                        local qOk, qRows = pcall(function()
                            return HttpService:JSONDecode(qRes.Body)
                        end)
                        if qOk and type(qRows) == "table" and #qRows > 0 and type(qRows[1]) == "table" then
                            local rowExp = extractExpiryInfo(qRows[1], 0)
                            if rowExp ~= "" then
                                expiresInfo = rowExp
                                break
                            end
                        end
                    end
                end
            end
        end
        if expiresInfo == "" then
            expiresInfo = "永久有效"
        end
        if writefile then
            pcall(function() writefile(LICENSE_FILE_NAME, inputKey) end)
        end
        return true, (resultText ~= "" and resultText) or "✅ 驗證成功！正在載入 Carl Tool...", expiresInfo
    else
        _authFlagShadow.set(1337)
        _sessionShadow.set(0)
        return false, (resultText ~= "" and resultText) or "❌ 卡密無效或已綁定其他設備！", ""
    end
end
local isVerified = false
local activeKeyExpiresText = "未取得到期時間"
if readfile and isfile and isfile(LICENSE_FILE_NAME) then
local savedKey = ""
pcall(function() savedKey = readfile(LICENSE_FILE_NAME) end)
savedKey = tostring(savedKey or ""):gsub("%s+", "")
if savedKey ~= "" then
local ok, _, expText = verifyLicenseKey(savedKey)
if ok then
isVerified = true
if expText and expText ~= "" then
activeKeyExpiresText = expText
end
end
end
end
if not isVerified then
local authGui = Instance.new("ScreenGui")
authGui.Name = "Auth_" .. _POLY_ID
authGui.ResetOnSpawn = false
authGui.IgnoreGuiInset = true
authGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mountScreenGui(authGui)
    local vpAuth = (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize) or Vector2.new(800, 600)
    local authFrame = Instance.new("Frame")
    authFrame.Size = UDim2.new(0, math.min(420, math.max(280, vpAuth.X - 32)), 0, 245)
    authFrame.AnchorPoint = Vector2.new(0.5, 0.5)
    authFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    authFrame.BackgroundColor3 = Color3.fromRGB(255, 240, 246)
    authFrame.Active = true
    authFrame.Parent = authGui
    applyCorner(authFrame, 24)

    local _authGrad = Instance.new("UIGradient")
    _authGrad.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 225, 238)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(235, 242, 255))
    }
    _authGrad.Rotation = 45
    _authGrad.Parent = authFrame

    local _authStroke = Instance.new("UIStroke")
    _authStroke.Color = Color3.fromRGB(255, 105, 180)
    _authStroke.Thickness = 2.5
    _authStroke.Parent = authFrame

    local draggingAuth = false
    local authDragStart = Vector2.zero
    local authStartPos = Vector2.zero
    authFrame.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            draggingAuth = true
            authDragStart = Vector2.new(inp.Position.X, inp.Position.Y)
            local pAbs = authFrame.Parent and authFrame.Parent.AbsolutePosition or Vector2.zero
            authStartPos = authFrame.AbsolutePosition - pAbs
        end
    end)
    UserInputService.InputChanged:Connect(function(inp)
        if draggingAuth and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
            local delta = Vector2.new(inp.Position.X, inp.Position.Y) - authDragStart
            authFrame.AnchorPoint = Vector2.new(0, 0)
            authFrame.Position = UDim2.new(0, authStartPos.X + delta.X, 0, authStartPos.Y + delta.Y)
        end
    end)
    UserInputService.InputEnded:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            draggingAuth = false
        end
    end)

    local titleLbl = Instance.new("TextLabel")
    titleLbl.Size = UDim2.new(1, -60, 0, 34)
    titleLbl.Position = UDim2.new(0, 22, 0, 14)
    titleLbl.BackgroundTransparency = 1
    titleLbl.Text = "🌸 Carl Tool 卡密授權驗證 🔐"
    titleLbl.TextColor3 = Color3.fromRGB(180, 50, 110)
    titleLbl.Font = Enum.Font.GothamBlack
    titleLbl.TextSize = 18
    titleLbl.TextXAlignment = Enum.TextXAlignment.Left
    titleLbl.Parent = authFrame

    local hwidLbl = Instance.new("TextLabel")
    hwidLbl.Size = UDim2.new(1, -44, 0, 20)
    hwidLbl.Position = UDim2.new(0, 22, 0, 48)
    hwidLbl.BackgroundTransparency = 1
    hwidLbl.Text = "設備碼: " .. getDeviceHWID():sub(1, 26) .. "..."
    hwidLbl.TextColor3 = Color3.fromRGB(130, 100, 120)
    hwidLbl.Font = Enum.Font.Code
    hwidLbl.TextSize = 12
    hwidLbl.TextXAlignment = Enum.TextXAlignment.Left
    hwidLbl.Parent = authFrame

    local keyInput = Instance.new("TextBox")
    keyInput.Size = UDim2.new(1, -44, 0, 42)
    keyInput.Position = UDim2.new(0, 22, 0, 78)
    keyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    keyInput.PlaceholderText = "CARL-XXXX-XXXX-XXXX-XXXX"
    keyInput.Text = ""
    keyInput.TextColor3 = Color3.fromRGB(90, 70, 85)
    keyInput.Font = Enum.Font.Code
    keyInput.TextSize = 14
    keyInput.ClearTextOnFocus = false
    keyInput.Parent = authFrame
    applyCorner(keyInput, 12)

    local _keyStroke = Instance.new("UIStroke")
    _keyStroke.Color = Color3.fromRGB(255, 190, 215)
    _keyStroke.Thickness = 1.5
    _keyStroke.Parent = keyInput

    local msgLbl = Instance.new("TextLabel")
    msgLbl.Size = UDim2.new(1, -44, 0, 22)
    msgLbl.Position = UDim2.new(0, 22, 0, 128)
    msgLbl.BackgroundTransparency = 1
    msgLbl.Text = "💡 首次登入將自動綁定此設備 (一機一碼)"
    msgLbl.TextColor3 = Color3.fromRGB(150, 70, 110)
    msgLbl.Font = Enum.Font.GothamMedium
    msgLbl.TextSize = 13
    msgLbl.TextXAlignment = Enum.TextXAlignment.Left
    msgLbl.TextTruncate = Enum.TextTruncate.AtEnd
    msgLbl.Parent = authFrame

    local verifyBtn = Instance.new("TextButton")
    verifyBtn.Size = UDim2.new(0.47, 0, 0, 40)
    verifyBtn.Position = UDim2.new(0, 22, 0, 162)
    verifyBtn.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
    verifyBtn.Text = "✅ 驗證並啟動"
    verifyBtn.TextColor3 = Color3.new(1, 1, 1)
    verifyBtn.Font = Enum.Font.GothamBold
    verifyBtn.TextSize = 15
    verifyBtn.Parent = authFrame
    applyCorner(verifyBtn, 14)

    local copyHwidBtn = Instance.new("TextButton")
    copyHwidBtn.Size = UDim2.new(0.40, 0, 0, 40)
    copyHwidBtn.Position = UDim2.new(1, -22 - 168, 0, 162)
    copyHwidBtn.BackgroundColor3 = Color3.fromRGB(255, 225, 238)
    copyHwidBtn.Text = "📋 複製設備碼"
    copyHwidBtn.TextColor3 = Color3.fromRGB(160, 50, 100)
    copyHwidBtn.Font = Enum.Font.GothamBold
    copyHwidBtn.TextSize = 14
    copyHwidBtn.Parent = authFrame
    applyCorner(copyHwidBtn, 14)

    local closeAuthBtn = Instance.new("TextButton")
    closeAuthBtn.Size = UDim2.new(0, 30, 0, 30)
    closeAuthBtn.Position = UDim2.new(1, -40, 0, 14)
    closeAuthBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 240)
    closeAuthBtn.Text = "❌"
    closeAuthBtn.TextSize = 13
    closeAuthBtn.Parent = authFrame
    applyCorner(closeAuthBtn, 10)

    closeAuthBtn.MouseButton1Click:Connect(function()
        pcall(function() authGui:Destroy() end)
    end)

    copyHwidBtn.MouseButton1Click:Connect(function()
        if setclipboard then
            pcall(function() setclipboard(getDeviceHWID()) end)
            msgLbl.Text = "📋 已將完整設備碼複製到剪貼簿！"
        else
            msgLbl.Text = "⚠️ 您的執行器不支援自動複製剪貼簿"
        end
    end)

    local isChecking = false
    verifyBtn.MouseButton1Click:Connect(function()
        if isChecking then return end
        isChecking = true
        verifyBtn.Text = "⏳ 驗證中..."
        local ok, resultMsg, expText = verifyLicenseKey(keyInput.Text)
        msgLbl.Text = tostring(resultMsg or "")
        if ok then
            if expText and expText ~= "" then
                activeKeyExpiresText = expText
            end
            pcall(function()
                authFrame.Visible = false
                authGui:Destroy()
            end)
            isVerified = true
        else
            verifyBtn.Text = "✅ 驗證並啟動"
            isChecking = false
        end
    end)

    while not isVerified do
        if not authGui or not authGui.Parent then
            return
        end
        task.wait(0.1)
    end
end

-- 暗樁 1：啟動主介面前的最終完整性複查
if not _isRuntimeHealthy() then
    return
end
-- ==============================================================================
-- 🌸 以下為主程式：驗證通過後正式載入 Carl Tool
-- ==============================================================================
local currentLanguage = "zh"
local currentThemeIndex = 1
local ThemePresets = {
Pink = Color3.fromRGB(255, 105, 180),
NeonCyan = Color3.fromRGB(0, 245, 255),
NeonPurple = Color3.fromRGB(199, 125, 255),
Gold = Color3.fromRGB(255, 215, 0),
Green = Color3.fromRGB(50, 235, 130),
Red = Color3.fromRGB(255, 99, 71),
Blue = Color3.fromRGB(30, 144, 255),
Orange = Color3.fromRGB(255, 140, 0),
Lime = Color3.fromRGB(173, 255, 47),
White = Color3.fromRGB(240, 248, 255)
}
local ThemeNames = {
"🌸 櫻花粉 (Sakura)", "💎 電光青 (Neon Cyan)", "🔮 霓虹紫 (Neon Purple)",
"👑 閃耀金 (Gold)", "🍃 翡翠綠 (Green)", "🍎 活力紅 (Red)",
"🌊 湛藍海 (Blue)", "🍊 蜜柑橘 (Orange)", "🍋 青檸黃 (Lime)", "☁️ 雲朵白 (White)"
}
local ThemeKeys = {"Pink", "NeonCyan", "NeonPurple", "Gold", "Green", "Red", "Blue", "Orange", "Lime", "White"}
local function getAccentColor()
return ThemePresets[ThemeKeys[currentThemeIndex]] or ThemePresets.Pink
end
local Config = {
AutoLaunch = false,
AutoTp = false,
AutoFixedTp = false,
FixedTpX = 11.41,
FixedTpY = 3.35,
FixedTpZ = 9.28,
AutoMerge = true,
MergeIntervalSec = 5,
MergeIntervalMs = 5000,
AutoHatch = false,
HatchIntervalMs = 10000,
AutoFillEgg = false,
FillEggIntervalMs = 10000,
AutoPlaceBest = true,
PlaceBestIntervalMs = 5000,
AntiAfk = true,
TargetPercent = 99.0,
TargetValue = 20,
ClickDelay = 0.25,
AutoGacha = false,
GachaMode = "ten",
GachaIntervalMs = 250,
GachaSkipX = 90,
GachaSkipY = 90,
MenuTextSize = 15,
MenuBackgroundAlpha = 15,
SavedThemeIndex = 1,
SavedLanguage = "zh",
PanelWidth = 780,
PanelHeight = 510
}
local _SessionStats = {
StartTime = tick(),
LaunchCount = 0,
GachaCount = 0,
MergeCount = 0,
HatchCount = 0,
FillEggCount = 0,
PlaceBestCount = 0
}
local _LastTick = 0
local _LastFiredPct = 0
local _saveQueued = false
local _scriptDestroyed = false
local _gachaRunId = 0
local function _isGachaSessionValid(runId)
return _isRuntimeHealthy()
and (not _scriptDestroyed)
and (Config.AutoGacha == true)
and (runId == _gachaRunId)
end
local function _isGachaRunning()
return _isRuntimeHealthy() and (not _scriptDestroyed) and (Config.AutoGacha == true)
end
local function saveConfig()
if _saveQueued then return end
_saveQueued = true
task.delay(0.5, function()
_saveQueued = false
if writefile then
pcall(function()
Config.SavedThemeIndex = currentThemeIndex
Config.SavedLanguage = currentLanguage
writefile(CONFIG_FILE_NAME, HttpService:JSONEncode(Config))
end)
end
end)
end
local function loadConfig()
if readfile and isfile and isfile(CONFIG_FILE_NAME) then
pcall(function()
local decoded = HttpService:JSONDecode(readfile(CONFIG_FILE_NAME))
if type(decoded) == "table" then
for k, v in pairs(decoded) do
if k ~= "AutoLaunch" and k ~= "AutoTp" and k ~= "AutoFixedTp" and k ~= "AutoGacha" and k ~= "AutoHatch" and k ~= "AutoFillEgg" and k ~= "AutoSellBag" and k ~= "SellBagIntervalMs" then
Config[k] = v
end
end
if decoded.MergeIntervalSec ~= nil then
Config.MergeIntervalSec = math.clamp(tonumber(decoded.MergeIntervalSec) or 5, 5, 600)
Config.MergeIntervalMs = Config.MergeIntervalSec * 1000
else
Config.MergeIntervalMs = math.clamp(tonumber(decoded.MergeIntervalMs) or 300000, 5000, 600000)
Config.MergeIntervalSec = math.clamp(math.floor(Config.MergeIntervalMs / 1000 + 0.5), 5, 600)
end
Config.HatchIntervalMs = math.clamp(tonumber(decoded.HatchIntervalMs) or 10000, 250, 30000)
Config.FillEggIntervalMs = math.clamp(tonumber(decoded.FillEggIntervalMs) or 10000, 250, 30000)
Config.PlaceBestIntervalMs = math.clamp(tonumber(decoded.PlaceBestIntervalMs) or 3500, 500, 15000)
Config.GachaIntervalMs = math.clamp(tonumber(decoded.GachaIntervalMs) or 250, 60, 3000)
Config.TargetPercent = math.clamp(tonumber(decoded.TargetPercent) or 99.0, 50, 100)
Config.TargetValue = tonumber(decoded.TargetValue) or 20
Config.ClickDelay = math.clamp(tonumber(decoded.ClickDelay) or 0.25, 0.05, 2.0)
Config.MenuTextSize = math.clamp(tonumber(decoded.MenuTextSize) or 15, 10, 22)
Config.PanelWidth = math.clamp(tonumber(decoded.PanelWidth) or 780, 420, 1100)
Config.PanelHeight = math.clamp(tonumber(decoded.PanelHeight) or 510, 320, 750)
currentThemeIndex = math.clamp(tonumber(decoded.SavedThemeIndex) or 1, 1, #ThemeNames)
currentLanguage = (decoded.SavedLanguage == "en") and "en" or "zh"
end
end)
end
end
loadConfig()
local TextDict = {
zh = {
LogsTab = "📊 運行日誌",
MainTab = "⚡ 自動掛機",
GachaTab = "🥚 自動抽蛋",
ChangelogTab = "📜 更新日誌",
AdminTab = "👑 管理員菜單",
CfgTab = "⚙️ 參數設定",
AutoLaunch = "🚀 光波完美一擊開關",
TargetPct = "🎯 目標游標百分比 (%)",
ClickDelay = "⏳ 釋放冷卻延遲 (ms)",
AutoTp = "⚡ 自動往前TP (修正偏移)",
AutoFixedTp = "📍 定點TP開關 (11.41, 3.35, 9.28)",
AutoMerge = "⚗️ 背景自動一鍵合成",
MergeInterval = "⏱️ 自動合成間隔 (秒)",
AutoHatch = "🐣 背景自動孵化",
HatchInterval = "⏱️ 自動孵化間隔 (ms，初始10秒)",
AutoFillEgg = "🥚 背景自動放蛋",
FillEggInterval = "⏱️ 自動放蛋間隔 (ms，初始10秒)",
AutoPlaceBest = "⭐ 背景自動擺最賺",
AntiAfk = "🛡️ 防掛機踢出 (AFK不掉線)",
PlaceBestInterval = "⏱️ 自動擺最賺間隔 (ms)",
AutoGacha = "💰 金錢祈願自動抽 (F6)",
GachaInterval = "⚡ 連抽間隔 (ms，最大3000)",
GachaSkipX = "↘️ 右下角跳過 X (%)",
GachaSkipY = "↘️ 右下角跳過 Y (%)",
ModeTen = "抽蛋模式：十連祈願",
ModeSingle = "抽蛋模式：單抽祈願",
ResetStats = "🔄 重置運行計時與數據",
ChangelogTitle = "📜 完整版本更新日誌 (v1.0 → v1.9.0)",
FontSize = "🔤 選單字體大小",
MenuAlpha = "🎨 背景透明度 %",
AccentTheme = "✨ 介面主題配色",
ConfigSavedMsg = "💾 參數設定已優化並自動儲存！",
On = "開",
Off = "關"
},
en = {
LogsTab = "📊 Logs",
MainTab = "⚡ Farm",
GachaTab = "🥚 Gacha",
ChangelogTab = "📜 Changelog",
AdminTab = "👑 Admin Menu",
CfgTab = "⚙️ Settings",
AutoLaunch = "🚀 Beam Perfect-Hit Auto",
TargetPct = "🎯 Target Cursor (%)",
ClickDelay = "⏳ Release Cooldown (ms)",
AutoTp = "⚡ Auto TP",
AutoFixedTp = "📍 Fixed TP (11.41, 3.35, 9.28)",
AutoMerge = "⚗️ Background Auto Merge-All",
MergeInterval = "⏱️ Auto Merge Interval (sec)",
AutoHatch = "🐣 Background Auto Hatch",
HatchInterval = "⏱️ Auto Hatch Interval (ms, init 10s)",
AutoFillEgg = "🥚 Background Auto Fill Egg",
FillEggInterval = "⏱️ Auto Fill Interval (ms, init 10s)",
AutoPlaceBest = "⭐ Background Auto Place Best",
AntiAfk = "🛡️ Anti-AFK (No Disconnect)",
PlaceBestInterval = "⏱️ Place Best Interval (ms)",
AutoGacha = "💰 Coin Gacha Auto (F6)",
GachaInterval = "⚡ Pull Interval (ms, max 3000)",
GachaSkipX = "↘️ Bottom-Right Skip X (%)",
GachaSkipY = "↘️ Bottom-Right Skip Y (%)",
ModeTen = "Mode: 10x Pull",
ModeSingle = "Mode: 1x Pull",
ResetStats = "🔄 Reset Stats",
ChangelogTitle = "📜 Full Version Changelog (v1.0 → v1.9.0)",
FontSize = "🔤 Font Size",
MenuAlpha = "🎨 Menu Alpha %",
AccentTheme = "✨ Theme Style",
ConfigSavedMsg = "💾 Settings optimized & saved!",
On = "ON",
Off = "OFF"
}
}
local function t(key)
return (TextDict[currentLanguage] and TextDict[currentLanguage][key]) or TextDict.zh[key] or key
end
local _refreshLanguageText, _updateThemeStyle, _refreshChangelogText, _setGachaEnabled, _updateSidebarLayout
local gui = Instance.new("ScreenGui")
gui.Name = "Core_" .. _POLY_ID
gui.ResetOnSpawn = false
gui.IgnoreGuiInset = true
gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
mountScreenGui(gui)
local function applyHoverEffect(btn)
local baseSize = btn.Size
btn.MouseEnter:Connect(function()
TweenService:Create(btn, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = baseSize + UDim2.new(0, 2, 0, 2)
}):Play()
end)
btn.MouseLeave:Connect(function()
TweenService:Create(btn, TweenInfo.new(0.12, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
Size = baseSize
}):Play()
end)
end
local function setupImage(imageLabel, assetId)
pcall(function()
imageLabel.Image = "rbxassetid://" .. tostring(assetId)
task.spawn(function()
task.wait(1.5)
if imageLabel and imageLabel.Parent and not imageLabel.IsLoaded then
imageLabel.Image = "rbxthumb://type=Asset&id=" .. tostring(assetId) .. "&w=420&h=420"
end
end)
end)
end
-- ==============================================================================
-- 🚀 絲滑拖曳控制器 (高跟隨阻尼 + 邊界安全夾取 + 鬆手精準對齊)
-- ==============================================================================
local activeDragTarget = nil
local dragStartMouse = Vector2.zero
local dragStartFramePos = Vector2.zero
local dragDesiredPos = nil
local dragMovedDistance = 0
local resizing = false
local resizeStartPos = Vector2.zero
local startSize = Vector2.new(Config.PanelWidth, Config.PanelHeight)
local desiredPanelSize = nil
local mainPanel
local _smoothSliderStepFn = nil
local function _clampFramePosToViewport(frameObj, posVec)
if not frameObj then return posVec end
local cam = workspace.CurrentCamera
local vp = (cam and cam.ViewportSize) or Vector2.new(1280, 720)
local fSize = frameObj.AbsoluteSize
local anchor = frameObj.AnchorPoint
local minX = -fSize.X * anchor.X + 8
local maxX = math.max(minX, vp.X - fSize.X * (1 - anchor.X) - 8)
local minY = -fSize.Y * anchor.Y + 8
local maxY = math.max(minY, vp.Y - fSize.Y * (1 - anchor.Y) - 8)
return Vector2.new(
math.clamp(posVec.X, minX, maxX),
math.clamp(posVec.Y, minY, maxY)
)
end
local function attachSmoothDrag(frameObj, onDragEnd, moveTargetFrame)
frameObj.Active = true
frameObj.Draggable = false
local targetToMove = moveTargetFrame or frameObj
    frameObj.InputBegan:Connect(function(inp)
        if resizing then return end
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            activeDragTarget = {
                frame = targetToMove,
                onEnd = onDragEnd
            }
            dragStartMouse = Vector2.new(inp.Position.X, inp.Position.Y)
            local parentAbs = targetToMove.Parent and targetToMove.Parent.AbsolutePosition or Vector2.zero
            local curRel = targetToMove.AbsolutePosition - parentAbs
            targetToMove.AnchorPoint = Vector2.new(0, 0)
            targetToMove.Position = UDim2.new(0, curRel.X, 0, curRel.Y)
            dragStartFramePos = curRel
            dragDesiredPos = _clampFramePosToViewport(targetToMove, curRel)
            dragMovedDistance = 0
        end
    end)
end
UserInputService.InputChanged:Connect(function(inp)
if inp.UserInputType ~= Enum.UserInputType.MouseMovement and inp.UserInputType ~= Enum.UserInputType.Touch then
return
end
local curMouse = Vector2.new(inp.Position.X, inp.Position.Y)
    if resizing then
        local delta = curMouse - resizeStartPos
        local newW = math.clamp(startSize.X + delta.X, 420, 1100)
        local newH = math.clamp(startSize.Y + delta.Y, 320, 750)
        desiredPanelSize = Vector2.new(newW, newH)
        return
    end

    if activeDragTarget and activeDragTarget.frame and activeDragTarget.frame.Parent then
        local delta = curMouse - dragStartMouse
        dragMovedDistance = math.max(dragMovedDistance, delta.Magnitude)
        dragDesiredPos = _clampFramePosToViewport(activeDragTarget.frame, dragStartFramePos + delta)
    end
end)
UserInputService.InputEnded:Connect(function(inp)
if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
if resizing then
resizing = false
if desiredPanelSize and mainPanel then
mainPanel.Size = UDim2.new(0, math.floor(desiredPanelSize.X + 0.5), 0, math.floor(desiredPanelSize.Y + 0.5))
if _updateSidebarLayout then
_updateSidebarLayout()
end
end
desiredPanelSize = nil
Config.PanelWidth = math.floor(mainPanel and mainPanel.AbsoluteSize.X or Config.PanelWidth)
Config.PanelHeight = math.floor(mainPanel and mainPanel.AbsoluteSize.Y or Config.PanelHeight)
saveConfig()
end
if activeDragTarget then
local finished = activeDragTarget
local finalPos = dragDesiredPos
activeDragTarget = nil
dragDesiredPos = nil
if finished.frame and finished.frame.Parent and finalPos then
local clamped = _clampFramePosToViewport(finished.frame, finalPos)
finished.frame.AnchorPoint = Vector2.new(0, 0)
finished.frame.Position = UDim2.new(0, math.floor(clamped.X + 0.5), 0, math.floor(clamped.Y + 0.5))
end
if finished.onEnd then
finished.onEnd(dragMovedDistance)
end
end
end
end)
-- 🌸 櫻花飄落裝飾特效層
local sakuraGui = Instance.new("ScreenGui")
sakuraGui.Name = "SakuraParticles_" .. _POLY_ID
sakuraGui.ResetOnSpawn = false
sakuraGui.IgnoreGuiInset = true
sakuraGui.Parent = gui.Parent
local _activeSakuraCount = 0
local _MAX_SAKURA_COUNT = 5
task.spawn(function()
while sakuraGui and sakuraGui.Parent and not _scriptDestroyed do
task.wait(math.random(50, 80) / 10)
if _scriptDestroyed then break end
if _activeSakuraCount < _MAX_SAKURA_COUNT then
pcall(function()
_activeSakuraCount = _activeSakuraCount + 1
local sakura = Instance.new("TextLabel")
sakura.Size = UDim2.new(0, 22, 0, 22)
sakura.Position = UDim2.new(math.random(5, 95) / 100, 0, -0.05, 0)
sakura.BackgroundTransparency = 1
sakura.Text = "🌸"
sakura.TextSize = math.random(14, 20)
sakura.ZIndex = 999
sakura.Parent = sakuraGui
                local targetX = sakura.Position.X.Scale + (math.random(-15, 15) / 100)
                local fallTween = TweenService:Create(sakura, TweenInfo.new(math.random(7, 12), Enum.EasingStyle.Linear), {
                    Position = UDim2.new(targetX, 0, 1.05, 0),
                    Rotation = math.random(-180, 180)
                })
                fallTween:Play()
                fallTween.Completed:Connect(function()
                    _activeSakuraCount = math.max(0, _activeSakuraCount - 1)
                    sakura:Destroy()
                end)
            end)
        end
    end
end)
-- 🎀 縮小懸浮球
local floatGui = Instance.new("ScreenGui")
floatGui.Name = "Float_" .. _POLY_ID
floatGui.ResetOnSpawn = false
floatGui.IgnoreGuiInset = true
floatGui.Parent = gui.Parent
local floatingBtn = Instance.new("ImageButton")
floatingBtn.Size = UDim2.new(0, 64, 0, 64)
floatingBtn.Position = UDim2.new(0, 40, 0, 180)
floatingBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 242)
floatingBtn.ScaleType = Enum.ScaleType.Fit
floatingBtn.Active = true
floatingBtn.Draggable = false
floatingBtn.AutoButtonColor = false
floatingBtn.Visible = false
floatingBtn.ZIndex = 100
floatingBtn.Parent = floatGui
applyCorner(floatingBtn, 20)
setupImage(floatingBtn, RAW_ASSET_ID)
local floatStroke = Instance.new("UIStroke")
floatStroke.Color = getAccentColor()
floatStroke.Thickness = 2.5
floatStroke.Parent = floatingBtn
-- 主面板
local vpNow = (workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize) or Vector2.new(1280, 720)
local initW = math.clamp(Config.PanelWidth, 360, math.max(360, vpNow.X - 24))
local initH = math.clamp(Config.PanelHeight, 280, math.max(280, vpNow.Y - 24))
mainPanel = Instance.new("Frame")
mainPanel.Size = UDim2.new(0, initW, 0, initH)
mainPanel.AnchorPoint = Vector2.new(0.5, 0.5)
mainPanel.Position = UDim2.new(0.5, 0, 0.5, 0)
mainPanel.BackgroundColor3 = Color3.fromRGB(255, 240, 246)
mainPanel.BackgroundTransparency = Config.MenuBackgroundAlpha / 100
mainPanel.Active = true
mainPanel.Draggable = false
mainPanel.Visible = true
mainPanel.Parent = gui
applyCorner(mainPanel, 32)
local lastFloatClickTime = 0
attachSmoothDrag(floatingBtn, function(movedDist)
if movedDist < 6 then
local now = tick()
if now - lastFloatClickTime > 0.15 then
lastFloatClickTime = now
mainPanel.Visible = true
floatingBtn.Visible = false
end
end
end)
local _grad = Instance.new("UIGradient")
_grad.Color = ColorSequence.new{
ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 225, 238)),
ColorSequenceKeypoint.new(1, Color3.fromRGB(235, 242, 255))
}
_grad.Rotation = 45
_grad.Parent = mainPanel
local glow = Instance.new("UIStroke")
glow.Color = getAccentColor()
glow.Thickness = 5
glow.Transparency = 0.5
glow.Parent = mainPanel
local panelStroke = Instance.new("UIStroke")
panelStroke.Color = getAccentColor()
panelStroke.Transparency = 0.3
panelStroke.Thickness = 1.5
panelStroke.Parent = mainPanel
-- 🖱️ 右下角縮放把手
local resizeHandle = Instance.new("TextButton")
resizeHandle.Size = UDim2.new(0, 24, 0, 24)
resizeHandle.Position = UDim2.new(1, -24, 1, -24)
resizeHandle.BackgroundTransparency = 1
resizeHandle.Text = "◢"
resizeHandle.TextColor3 = Color3.fromRGB(255, 105, 180)
resizeHandle.Font = Enum.Font.GothamBold
resizeHandle.TextSize = 14
resizeHandle.ZIndex = 90
resizeHandle.Parent = mainPanel
resizeHandle.InputBegan:Connect(function(inp)
if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
activeDragTarget = nil
resizing = true
resizeStartPos = Vector2.new(inp.Position.X, inp.Position.Y)
startSize = Vector2.new(mainPanel.AbsoluteSize.X, mainPanel.AbsoluteSize.Y)
end
end)
RunService.RenderStepped:Connect(function(dt)
if _scriptDestroyed then return end
local clampedDt = math.clamp(dt, 0.001, 0.05)
local dragAlpha = math.clamp(1 - math.exp(-42 * clampedDt), 0.35, 1)
local uiAlpha = math.clamp(1 - math.exp(-28 * clampedDt), 0.2, 1)
    if activeDragTarget and activeDragTarget.frame and activeDragTarget.frame.Parent and dragDesiredPos then
        local f = activeDragTarget.frame
        local targetPos = _clampFramePosToViewport(f, dragDesiredPos)
        local curX = f.Position.X.Offset
        local curY = f.Position.Y.Offset
        local nextX = curX + (targetPos.X - curX) * dragAlpha
        local nextY = curY + (targetPos.Y - curY) * dragAlpha
        if math.abs(targetPos.X - nextX) < 0.4 then nextX = targetPos.X end
        if math.abs(targetPos.Y - nextY) < 0.4 then nextY = targetPos.Y end
        f.Position = UDim2.new(0, nextX, 0, nextY)
    end

    if resizing and desiredPanelSize and mainPanel then
        local curW = mainPanel.Size.X.Offset
        local curH = mainPanel.Size.Y.Offset
        local nextW = curW + (desiredPanelSize.X - curW) * dragAlpha
        local nextH = curH + (desiredPanelSize.Y - curH) * dragAlpha
        if math.abs(desiredPanelSize.X - nextW) < 0.4 then nextW = desiredPanelSize.X end
        if math.abs(desiredPanelSize.Y - nextH) < 0.4 then nextH = desiredPanelSize.Y end
        mainPanel.Size = UDim2.new(0, nextW, 0, nextH)
        if _updateSidebarLayout then
            _updateSidebarLayout()
        end
    end

    if _smoothSliderStepFn then
        _smoothSliderStepFn(uiAlpha)
    end
end)
-- 側邊欄
local sideW = math.clamp(math.floor(initW * 0.26), 130, 200)
local sidebar = Instance.new("Frame")
sidebar.Size = UDim2.new(0, sideW, 1, -28)
sidebar.Position = UDim2.new(0, 14, 0, 14)
sidebar.BackgroundColor3 = Color3.fromRGB(255, 250, 253)
sidebar.BackgroundTransparency = 0.35
sidebar.ClipsDescendants = true
sidebar.ZIndex = 5
sidebar.Parent = mainPanel
applyCorner(sidebar, 24)
local _sidebarStroke = Instance.new("UIStroke")
_sidebarStroke.Color = Color3.fromRGB(255, 190, 215)
_sidebarStroke.Transparency = 0.5
_sidebarStroke.Thickness = 1.2
_sidebarStroke.Parent = sidebar
attachSmoothDrag(sidebar, nil, mainPanel)
local function _addBorderDragZone(sizeUDim, posUDim)
local edge = Instance.new("Frame")
edge.Size = sizeUDim
edge.Position = posUDim
edge.BackgroundTransparency = 1
edge.ZIndex = 45
edge.Parent = mainPanel
attachSmoothDrag(edge, nil, mainPanel)
end
_addBorderDragZone(UDim2.new(1, -28, 0, 14), UDim2.new(0, 14, 0, 0))
_addBorderDragZone(UDim2.new(1, -44, 0, 14), UDim2.new(0, 14, 1, -14))
_addBorderDragZone(UDim2.new(0, 14, 1, 0), UDim2.new(0, 0, 0, 0))
_addBorderDragZone(UDim2.new(0, 14, 1, -28), UDim2.new(1, -14, 0, 0))
local sideLogo = Instance.new("ImageLabel")
sideLogo.Size = UDim2.new(0, 64, 0, 64)
sideLogo.Position = UDim2.new(0.5, -32, 0, 12)
sideLogo.BackgroundTransparency = 1
sideLogo.ScaleType = Enum.ScaleType.Fit
sideLogo.ZIndex = 50
sideLogo.Parent = sidebar
setupImage(sideLogo, RAW_ASSET_ID)
local _sideLogoText = Instance.new("TextLabel")
_sideLogoText.Size = UDim2.new(1, -12, 0, 24)
_sideLogoText.Position = UDim2.new(0, 6, 0, 82)
_sideLogoText.BackgroundTransparency = 1
_sideLogoText.Text = "🌸 CARL TOOL 🌸"
_sideLogoText.TextColor3 = Color3.fromRGB(120, 80, 105)
_sideLogoText.Font = Enum.Font.GothamBlack
_sideLogoText.TextSize = 14
_sideLogoText.TextTruncate = Enum.TextTruncate.AtEnd
_sideLogoText.ZIndex = 50
_sideLogoText.Parent = sidebar
local navContainer = Instance.new("ScrollingFrame")
navContainer.Size = UDim2.new(1, -20, 1, -114)
navContainer.Position = UDim2.new(0, 10, 0, 110)
navContainer.BackgroundTransparency = 1
navContainer.BorderSizePixel = 0
navContainer.CanvasSize = UDim2.new(0, 0, 0, 0)
navContainer.ScrollBarThickness = 4
navContainer.ScrollBarImageColor3 = getAccentColor()
navContainer.ScrollingDirection = Enum.ScrollingDirection.Y
navContainer.ElasticBehavior = Enum.ElasticBehavior.WhenScrollable
navContainer.ClipsDescendants = true
navContainer.ZIndex = 5
navContainer.Parent = sidebar
local navLayout = Instance.new("UIListLayout")
navLayout.SortOrder = Enum.SortOrder.LayoutOrder
navLayout.Padding = UDim.new(0, 6)
navLayout.Parent = navContainer
navLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
navContainer.CanvasSize = UDim2.new(0, 0, 0, navLayout.AbsoluteContentSize.Y + 8)
end)
local contentArea = Instance.new("Frame")
contentArea.Size = UDim2.new(1, -(sideW + 32), 1, -28)
contentArea.Position = UDim2.new(0, sideW + 20, 0, 14)
contentArea.BackgroundTransparency = 1
contentArea.ZIndex = 5
contentArea.Parent = mainPanel
-- 頂部控制按鈕列
local topControls = Instance.new("Frame")
topControls.Size = UDim2.new(0, 160, 0, 32)
topControls.Position = UDim2.new(1, -160, 0, 6)
topControls.BackgroundTransparency = 1
topControls.ZIndex = 60
topControls.Parent = contentArea
local function makeTopBtn(xOffset, textStr, color3)
local b = Instance.new("TextButton")
b.Size = UDim2.new(0, 32, 0, 32)
b.Position = UDim2.new(0, xOffset, 0, 0)
b.BackgroundColor3 = Color3.fromRGB(255, 235, 245)
b.Text = textStr
b.TextColor3 = color3
b.Font = Enum.Font.GothamBold
b.TextSize = 14
b.ZIndex = 60
b.Parent = topControls
applyCorner(b, 12)
applyHoverEffect(b)
return b
end
local discordBtn = makeTopBtn(0, "💬", Color3.fromRGB(114, 137, 218))
local langBtn = makeTopBtn(40, (currentLanguage == "zh") and "EN" or "中文", Color3.fromRGB(120, 80, 105))
langBtn.TextSize = 11
local minimizeBtn = makeTopBtn(80, "➖", Color3.fromRGB(120, 80, 105))
local closeBtn = makeTopBtn(120, "❌", Color3.fromRGB(239, 68, 68))
discordBtn.MouseButton1Click:Connect(function()
if setclipboard then pcall(function() setclipboard(DISCORD_INVITE_URL) end) end
end)
langBtn.MouseButton1Click:Connect(function()
currentLanguage = (currentLanguage == "zh") and "en" or "zh"
langBtn.Text = (currentLanguage == "zh") and "EN" or "中文"
if _refreshLanguageText then _refreshLanguageText() end
saveConfig()
end)
minimizeBtn.MouseButton1Click:Connect(function()
mainPanel.Visible = false
floatingBtn.Visible = true
end)
closeBtn.MouseButton1Click:Connect(function()
_scriptDestroyed = true
Config.AutoLaunch = false
Config.AutoTp = false
Config.AutoFixedTp = false
Config.AutoGacha = false
Config.AutoMerge = true
Config.AutoHatch = false
Config.AutoFillEgg = false
Config.AutoPlaceBest = true
_gachaRunId = _gachaRunId + 1
pcall(function()
if sakuraGui then sakuraGui:Destroy() end
if floatGui then floatGui:Destroy() end
if gui then gui:Destroy() end
end)
end)
local pageContainer = Instance.new("Frame")
pageContainer.Size = UDim2.new(1, 0, 1, -46)
pageContainer.Position = UDim2.new(0, 0, 0, 46)
pageContainer.BackgroundTransparency = 1
pageContainer.ClipsDescendants = true
pageContainer.ZIndex = 10
pageContainer.Parent = contentArea
local function createPage(useListLayout, canvasHeight)
local p = Instance.new("ScrollingFrame")
p.Size = UDim2.new(1, 0, 1, 0)
p.BackgroundTransparency = 1
p.CanvasSize = UDim2.new(0, 0, 0, canvasHeight or 560)
p.ScrollBarThickness = 4
p.ScrollBarImageColor3 = getAccentColor()
p.Visible = false
p.ZIndex = 10
p.Parent = pageContainer
if useListLayout then
local layout = Instance.new("UIListLayout")
layout.SortOrder = Enum.SortOrder.LayoutOrder
layout.Padding = UDim.new(0, 12)
layout.Parent = p
end
return p
end
local mainPage = createPage(true, 1020)
local gachaPage = createPage(true, 460)
local logsPage = createPage(true, 460)
local changelogPage = createPage(true, 1520)
local adminPage = createPage(true, 560)
local cfgPage = createPage(true, 490)
mainPage.Visible = true
local navButtons = {}
local function createNavBtn(textKey, pageRef, order, isDefault)
local btn = Instance.new("TextButton")
btn.Size = UDim2.new(1, 0, 0, 40)
btn.BackgroundColor3 = isDefault and Color3.fromRGB(255, 220, 238) or Color3.fromRGB(255, 242, 248)
btn.BackgroundTransparency = isDefault and 0.2 or 0.5
btn.Text = "   " .. t(textKey)
btn.TextColor3 = isDefault and Color3.fromRGB(180, 50, 110) or Color3.fromRGB(110, 90, 105)
btn.Font = Enum.Font.GothamMedium
btn.TextSize = math.clamp(Config.MenuTextSize, 11, 16)
btn.TextXAlignment = Enum.TextXAlignment.Left
btn.TextTruncate = Enum.TextTruncate.AtEnd
btn.TextWrapped = false
btn.ZIndex = 20
btn.LayoutOrder = order
btn.Parent = navContainer
applyCorner(btn, 16)
applyHoverEffect(btn)
    local pad = Instance.new("UIPadding")
    pad.PaddingLeft = UDim.new(0, 6)
    pad.PaddingRight = UDim.new(0, 6)
    pad.Parent = btn

    btn.MouseButton1Click:Connect(function()
        for _, p in ipairs({mainPage, gachaPage, logsPage, changelogPage, adminPage, cfgPage}) do
            if p == pageRef then
                p.Visible = true
                p.Position = UDim2.new(0, 10, 0, 0)
                TweenService:Create(p, TweenInfo.new(0.16, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Position = UDim2.new(0, 0, 0, 0)
                }):Play()
            else
                p.Visible = false
            end
        end
        for _, b in ipairs(navButtons) do
            local isSel = (b.Btn == btn)
            TweenService:Create(b.Btn, TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                BackgroundColor3 = isSel and Color3.fromRGB(255, 220, 238) or Color3.fromRGB(255, 242, 248),
                BackgroundTransparency = isSel and 0.2 or 0.5,
                TextColor3 = isSel and Color3.fromRGB(180, 50, 110) or Color3.fromRGB(110, 90, 105)
            }):Play()
        end
    end)
    table.insert(navButtons, {Btn = btn, Key = textKey})
    return btn
end
createNavBtn("MainTab", mainPage, 1, true)
createNavBtn("GachaTab", gachaPage, 2, false)
createNavBtn("LogsTab", logsPage, 3, false)
createNavBtn("ChangelogTab", changelogPage, 4, false)
createNavBtn("AdminTab", adminPage, 5, false)
createNavBtn("CfgTab", cfgPage, 6, false)
_updateSidebarLayout = function()
local navH = navContainer.AbsoluteSize.Y
local count = #navButtons
if count <= 0 then return end
local pad = 6
navLayout.Padding = UDim.new(0, pad)
local btnH = 40
if navH > 0 then
local fitH = math.floor((navH - pad * (count - 1)) / count)
if fitH < 36 then
btnH = 38
else
btnH = math.clamp(fitH, 38, 44)
end
end
for _, item in ipairs(navButtons) do
item.Btn.Size = UDim2.new(1, -6, 0, btnH)
local idealFont = math.clamp(Config.MenuTextSize, 11, 16)
item.Btn.TextSize = math.min(idealFont, math.max(11, btnH - 12))
end
navContainer.CanvasSize = UDim2.new(0, 0, 0, navLayout.AbsoluteContentSize.Y + 8)
end
task.defer(_updateSidebarLayout)
local allInteractiveElements = {}
-- ==============================================================================
-- 🎛️ 開關與滑桿元件
-- ==============================================================================
local function _makeToggle(parent, textKey, initialState, callback, onSyncReady)
local f = Instance.new("Frame")
f.Size = UDim2.new(1, -6, 0, 56)
f.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
f.BackgroundTransparency = 0.3
f.ClipsDescendants = true
f.ZIndex = 15
f.Parent = parent
applyCorner(f, 16)
    local _fStroke = Instance.new("UIStroke")
    _fStroke.Color = Color3.fromRGB(255, 210, 230)
    _fStroke.Transparency = 0.6
    _fStroke.Thickness = 1
    _fStroke.Parent = f

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -104, 1, 0)
    lbl.Position = UDim2.new(0, 18, 0, 0)
    lbl.BackgroundTransparency = 1
    lbl.Text = t(textKey)
    lbl.TextColor3 = Color3.fromRGB(90, 70, 85)
    lbl.Font = Enum.Font.GothamMedium
    lbl.TextSize = Config.MenuTextSize
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextTruncate = Enum.TextTruncate.AtEnd
    lbl.TextWrapped = false
    lbl.ZIndex = 16
    lbl.Parent = f
    table.insert(allInteractiveElements, {Obj = lbl, Key = textKey, MaxSize = 18})

    local tBtn = Instance.new("TextButton")
    tBtn.Size = UDim2.new(0, 62, 0, 34)
    tBtn.Position = UDim2.new(1, -74, 0.5, -17)
    tBtn.BackgroundColor3 = initialState and Color3.fromRGB(46, 204, 113) or Color3.fromRGB(220, 205, 215)
    tBtn.AutoButtonColor = false
    tBtn.Text = ""
    tBtn.ZIndex = 16
    tBtn.Parent = f
    applyCorner(tBtn, 17)

    local knob = Instance.new("Frame")
    knob.Size = UDim2.new(0, 28, 0, 28)
    knob.Position = initialState and UDim2.new(1, -31, 0.5, -14) or UDim2.new(0, 3, 0.5, -14)
    knob.BackgroundColor3 = Color3.new(1, 1, 1)
    knob.ZIndex = 17
    knob.Parent = tBtn
    applyCorner(knob, 14)

    local state = initialState
    local function applyState(newState, skipCallback)
        state = not not newState
        local targetColor = state and Color3.fromRGB(46, 204, 113) or Color3.fromRGB(220, 205, 215)
        local targetPos = state and UDim2.new(1, -31, 0.5, -14) or UDim2.new(0, 3, 0.5, -14)

        TweenService:Create(tBtn, TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            BackgroundColor3 = targetColor
        }):Play()
        TweenService:Create(knob, TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
            Position = targetPos,
            Size = UDim2.new(0, 30, 0, 28)
        }):Play()
        task.delay(0.08, function()
            if knob and knob.Parent then
                TweenService:Create(knob, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 28, 0, 28)
                }):Play()
            end
        end)

        if not skipCallback then
            callback(state)
            saveConfig()
        end
    end

    tBtn.MouseButton1Click:Connect(function()
        applyState(not state, false)
    end)

    if onSyncReady then
        onSyncReady(function(v)
            applyState(v, true)
        end)
    end

    table.insert(allInteractiveElements, {
        ToggleBtn = tBtn,
        Knob = knob,
        GetState = function() return state end
    })
end
local _smoothSliderEntries = {}
_smoothSliderStepFn = function(alpha)
for _, entry in ipairs(_smoothSliderEntries) do
local cur = entry.currentRel
local target = entry.targetRel
local nextRel = cur + (target - cur) * alpha
if math.abs(target - nextRel) < 0.002 then
nextRel = target
end
entry.currentRel = nextRel
if entry.fill and entry.fill.Parent then
entry.fill.Size = UDim2.new(math.clamp(nextRel, 0, 1), 0, 1, 0)
end
if entry.knob and entry.knob.Parent then
entry.knob.Position = UDim2.new(math.clamp(nextRel, 0, 1), -8, 0.5, -8)
end
end
end
local function _makeSlider(parent, textKey, defaultVal, minVal, maxVal, callback, stepVal)
stepVal = stepVal or 1
local container = Instance.new("Frame")
container.Size = UDim2.new(1, -6, 0, 64)
container.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
container.BackgroundTransparency = 0.3
container.ClipsDescendants = false
container.ZIndex = 15
container.Parent = parent
applyCorner(container, 16)
    local _cStroke = Instance.new("UIStroke")
    _cStroke.Color = Color3.fromRGB(255, 210, 230)
    _cStroke.Transparency = 0.6
    _cStroke.Thickness = 1
    _cStroke.Parent = container

    local lbl = Instance.new("TextLabel")
    lbl.Size = UDim2.new(1, -110, 0, 24)
    lbl.Position = UDim2.new(0, 18, 0, 10)
    lbl.BackgroundTransparency = 1
    lbl.Text = t(textKey)
    lbl.TextColor3 = Color3.fromRGB(90, 70, 85)
    lbl.Font = Enum.Font.GothamMedium
    lbl.TextSize = Config.MenuTextSize
    lbl.TextXAlignment = Enum.TextXAlignment.Left
    lbl.TextTruncate = Enum.TextTruncate.AtEnd
    lbl.TextWrapped = false
    lbl.ZIndex = 16
    lbl.Parent = container
    table.insert(allInteractiveElements, {Obj = lbl, Key = textKey, MaxSize = 18})

    local valBox = Instance.new("TextLabel")
    valBox.Size = UDim2.new(0, 78, 0, 24)
    valBox.Position = UDim2.new(1, -96, 0, 10)
    valBox.BackgroundTransparency = 1
    valBox.Text = (stepVal < 1) and string.format("%.1f", defaultVal) or tostring(defaultVal)
    valBox.TextColor3 = Color3.fromRGB(180, 50, 110)
    valBox.Font = Enum.Font.Code
    valBox.TextSize = Config.MenuTextSize
    valBox.TextXAlignment = Enum.TextXAlignment.Right
    valBox.TextTruncate = Enum.TextTruncate.AtEnd
    valBox.ZIndex = 16
    valBox.Parent = container
    table.insert(allInteractiveElements, {ValBox = valBox, MaxSize = 18})

    local sliderHit = Instance.new("TextButton")
    sliderHit.Size = UDim2.new(1, -36, 0, 26)
    sliderHit.Position = UDim2.new(0, 18, 0, 33)
    sliderHit.BackgroundTransparency = 1
    sliderHit.Text = ""
    sliderHit.AutoButtonColor = false
    sliderHit.ZIndex = 16
    sliderHit.Parent = container

    local sliderBg = Instance.new("Frame")
    sliderBg.Size = UDim2.new(1, 0, 0, 10)
    sliderBg.Position = UDim2.new(0, 0, 0.5, -5)
    sliderBg.BackgroundColor3 = Color3.fromRGB(235, 215, 225)
    sliderBg.ZIndex = 16
    sliderBg.Parent = sliderHit
    applyCorner(sliderBg, 5)

    local initPercent = math.clamp((defaultVal - minVal) / math.max(maxVal - minVal, 1), 0, 1)
    local sliderFill = Instance.new("Frame")
    sliderFill.Size = UDim2.new(initPercent, 0, 1, 0)
    sliderFill.BackgroundColor3 = Color3.fromRGB(255, 105, 180)
    sliderFill.ZIndex = 17
    sliderFill.Parent = sliderBg
    applyCorner(sliderFill, 5)
    table.insert(allInteractiveElements, {SliderFill = sliderFill})

    local sliderKnob = Instance.new("Frame")
    sliderKnob.Size = UDim2.new(0, 16, 0, 16)
    sliderKnob.Position = UDim2.new(initPercent, -8, 0.5, -8)
    sliderKnob.BackgroundColor3 = Color3.new(1, 1, 1)
    sliderKnob.ZIndex = 18
    sliderKnob.Parent = sliderBg
    applyCorner(sliderKnob, 8)

    local knobStroke = Instance.new("UIStroke")
    knobStroke.Color = getAccentColor()
    knobStroke.Thickness = 2
    knobStroke.Parent = sliderKnob
    table.insert(allInteractiveElements, {KnobStroke = knobStroke})

    local sliderEntry = {
        fill = sliderFill,
        knob = sliderKnob,
        currentRel = initPercent,
        targetRel = initPercent
    }
    table.insert(_smoothSliderEntries, sliderEntry)

    local draggingSlider = false
    local lastVal = defaultVal

    local function update(inputX)
        local rel = math.clamp((inputX - sliderBg.AbsolutePosition.X) / math.max(sliderBg.AbsoluteSize.X, 1), 0, 1)
        local rawVal = minVal + (maxVal - minVal) * rel
        local val = math.floor(rawVal / stepVal + 0.5) * stepVal
        val = math.clamp(val, minVal, maxVal)
        local exactRel = math.clamp((val - minVal) / math.max(maxVal - minVal, 1), 0, 1)
        sliderEntry.targetRel = exactRel
        valBox.Text = (stepVal < 1) and string.format("%.1f", val) or tostring(math.floor(val + 0.5))
        if math.abs(val - lastVal) >= (stepVal * 0.5) then
            lastVal = val
            callback(val)
        end
    end

    sliderHit.InputBegan:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            activeDragTarget = nil
            draggingSlider = true
            TweenService:Create(sliderKnob, TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
                Size = UDim2.new(0, 20, 0, 20),
                Position = UDim2.new(sliderEntry.targetRel, -10, 0.5, -10)
            }):Play()
            update(inp.Position.X)
        end
    end)

    UserInputService.InputChanged:Connect(function(inp)
        if draggingSlider and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
            update(inp.Position.X)
        end
    end)

    UserInputService.InputEnded:Connect(function(inp)
        if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
            if draggingSlider then
                draggingSlider = false
                TweenService:Create(sliderKnob, TweenInfo.new(0.12, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
                    Size = UDim2.new(0, 16, 0, 16)
                }):Play()
                saveConfig()
            end
        end
    end)
end
-- ==============================================================================
-- ⚡ 1. 光波完美一擊 & 自動掛機 (MainTab)
-- ==============================================================================
local liveStatusText = "🌸 狀態：待機中 (Standby)..."
local syncLaunchVisual = nil
local function _setBeamAutoRelease(v)
local nextState = not not v
Config.AutoLaunch = nextState
_BeamRoundLocked = false
if syncLaunchVisual then
syncLaunchVisual(nextState)
end
if not nextState then
liveStatusText = "⏸️ 狀態：光波完美一擊已暫停"
else
liveStatusText = string.format("🚀 光波完美一擊已啟動 (目標 %.1f%%)", Config.TargetPercent)
end
end
_makeToggle(mainPage, "AutoLaunch", Config.AutoLaunch, function(v)
_setBeamAutoRelease(v)
end, function(setter)
syncLaunchVisual = setter
end)
_makeSlider(mainPage, "TargetPct", Config.TargetPercent, 50, 100, function(v)
Config.TargetPercent = v
end, 0.5)
_makeSlider(mainPage, "ClickDelay", math.floor(Config.ClickDelay * 1000), 50, 1000, function(v)
Config.ClickDelay = v / 1000
end)
_makeToggle(mainPage, "AutoTp", Config.AutoTp, function(v)
Config.AutoTp = v
if v then
liveStatusText = "⚡ 自動往前TP已啟動 (修正偏移)..."
else
liveStatusText = "⏸️ 自動往前TP已停止"
end
end)
local _lastFixedTpTick = 0
local function _teleportToFixedPoint()
if not _isRuntimeHealthy() then return end
pcall(function()
local _char = lp.Character
local _hrp = _char and (_char:FindFirstChild("HumanoidRootPart") or _char.PrimaryPart)
if not _char or not _hrp then return end
for _, part in ipairs(_char:GetDescendants()) do
if part:IsA("BasePart") then
part.AssemblyLinearVelocity = Vector3.zero
part.AssemblyAngularVelocity = Vector3.zero
end
end
local tx = tonumber(Config.FixedTpX) or 11.41
local ty = tonumber(Config.FixedTpY) or 3.35
local tz = tonumber(Config.FixedTpZ) or 9.28
local destPos = Vector3.new(tx, ty, tz)
local _look = _hrp.CFrame.LookVector
local _flat = Vector3.new(_look.X, 0, _look.Z)
local targetCf = (_flat.Magnitude > 1e-4)
and CFrame.lookAt(destPos, destPos + _flat.Unit)
or CFrame.new(destPos)
if _char.PivotTo then
_char:PivotTo(targetCf)
else
_hrp.CFrame = targetCf
end
end)
end
_makeToggle(mainPage, "AutoFixedTp", Config.AutoFixedTp, function(v)
Config.AutoFixedTp = v
if v then
_lastFixedTpTick = tick()
_teleportToFixedPoint()
liveStatusText = string.format("📍 定點TP已啟動 -> (%.2f, %.2f, %.2f)", Config.FixedTpX or 11.41, Config.FixedTpY or 3.35, Config.FixedTpZ or 9.28)
else
liveStatusText = "⏸️ 定點TP已停止"
end
end)
_makeToggle(mainPage, "AutoMerge", Config.AutoMerge, function(v)
Config.AutoMerge = v
if not v then
liveStatusText = "⏸️ 背景自動一鍵合成已停止"
else
liveStatusText = "⚗️ 背景自動一鍵合成運行中..."
end
end)
_makeSlider(mainPage, "MergeInterval", Config.MergeIntervalSec or 5, 5, 600, function(v)
Config.MergeIntervalSec = v
Config.MergeIntervalMs = v * 1000
end)
local function _fireMergeBtnConnections(btn)
local fired = false
if getconnections then
for _, ev in ipairs({"MouseButton1Click", "Activated"}) do
pcall(function()
for _, conn in ipairs(getconnections(btn[ev])) do
if conn.Fire then
conn:Fire()
fired = true
elseif conn.Function then
conn.Function()
fired = true
end
end
end)
if fired then break end
end
end
return fired
end
task.spawn(function()
while not _scriptDestroyed do
if not _isRuntimeHealthy() then break end
if Config.AutoMerge then
pcall(function()
local mUI = pg:FindFirstChild("MainUI")
local forge = mUI and mUI:FindFirstChild("Forge")
local header = forge and forge:FindFirstChild("Header")
local mergeBtn = header and header:FindFirstChild("MergeAll")
if forge and mergeBtn then
local origVisible = forge.Visible
local origPos = forge:IsA("GuiObject") and forge.Position or nil
                    if not origVisible and forge:IsA("GuiObject") then
                        forge.Position = UDim2.new(5, 0, 5, 0)
                        forge.Visible = true
                        task.wait(0.15)
                    end

                    local txt = tostring(mergeBtn.Text or "")
                    local canMergeCount = tonumber(txt:match("可合%s*(%d+)%s*次"))
                        or tonumber(txt:match("一鍵合成%s*(%d+)%s*次"))
                        or 1

                    if Config.AutoMerge and not _scriptDestroyed then
                        local firstOk = _fireMergeBtnConnections(mergeBtn)
                        task.wait(0.15)
                        local secondOk = false
                        if Config.AutoMerge and not _scriptDestroyed and mergeBtn and mergeBtn.Parent then
                            secondOk = _fireMergeBtnConnections(mergeBtn)
                        end
                        if firstOk or secondOk then
                            _SessionStats.MergeCount = _SessionStats.MergeCount + canMergeCount
                            liveStatusText = string.format("⚗️ 自動合成雙擊完成 (+%d | 累計: %d)", canMergeCount, _SessionStats.MergeCount)
                        end
                    end

                    if not origVisible and forge:IsA("GuiObject") then
                        forge.Visible = false
                        if origPos then
                            forge.Position = origPos
                        end
                    end
                end
            end)
        end
        local waitSec = math.max(1, tonumber(Config.MergeIntervalSec) or ((tonumber(Config.MergeIntervalMs) or 5000) / 1000))
        local elapsedWait = 0
        while elapsedWait < waitSec and not _scriptDestroyed do
            local step = math.min(0.5, waitSec - elapsedWait)
            task.wait(step)
            elapsedWait = elapsedWait + step
        end
    end
end)
_makeToggle(mainPage, "AutoHatch", Config.AutoHatch, function(v)
Config.AutoHatch = v
if not v then
liveStatusText = "⏸️ 背景自動孵化已停止"
else
liveStatusText = "🐣 背景自動孵化運行中..."
end
end)
_makeSlider(mainPage, "HatchInterval", Config.HatchIntervalMs or 10000, 250, 30000, function(v)
Config.HatchIntervalMs = v
end)
_makeToggle(mainPage, "AutoFillEgg", Config.AutoFillEgg, function(v)
Config.AutoFillEgg = v
if not v then
liveStatusText = "⏸️ 背景自動放蛋已停止"
else
liveStatusText = "🥚 背景自動放蛋運行中..."
end
end)
_makeSlider(mainPage, "FillEggInterval", Config.FillEggIntervalMs or 10000, 250, 30000, function(v)
Config.FillEggIntervalMs = v
end)
local function _parseTimerSecondsFromText(str)
if not str or str == "" then return nil end
local h, m, s = tostring(str):match("(%d+):(%d%d):(%d%d)")
if h and m and s then
return (tonumber(h) or 0) * 3600 + (tonumber(m) or 0) * 60 + (tonumber(s) or 0)
end
local mm, ss = tostring(str):match("(%d+):(%d%d)")
if mm and ss then
return (tonumber(mm) or 0) * 60 + (tonumber(ss) or 0)
end
return nil
end
local function _suppressNestToastPopups()
local suppressed = 0
for _, g in ipairs(pg:GetChildren()) do
if g:IsA("ScreenGui") and g.Name ~= gui.Name and g.Name ~= sakuraGui.Name and g.Name ~= floatGui.Name then
for _, d in ipairs(g:GetDescendants()) do
if d:IsA("TextLabel") or d:IsA("TextButton") then
local txt = tostring(d.Text or "")
if txt:find("還沒有孵好的蛋") or txt:find("等倒數結束再來領") or txt:find("靈獸巢滿了") or txt:find("先把孵好的靈寵領出來") then
local banner = d
while banner.Parent and banner.Parent ~= g do
local p = banner.Parent
if p:IsA("Frame") or p:IsA("CanvasGroup") or p:IsA("ImageLabel") then
if p.AbsoluteSize.Y >= 24 and p.AbsoluteSize.Y <= 180 then
banner = p
if p:IsA("UIListLayout") or p:IsA("UIGridLayout") then
break
end
else
break
end
else
break
end
end
if banner:IsA("GuiObject") and banner.Visible then
banner.Visible = false
suppressed = suppressed + 1
end
end
end
end
end
end
return suppressed
end
local function _inspectSlotHatchState(slot)
if not slot then
return { ready = false, remainSec = nil, claimBtn = nil, hasActiveEgg = false }
end
    local claimBtn = slot:FindFirstChild("Claim")
    local hasReadyText = false
    local hasRobuxPrompt = false
    local hasNotReadyPrompt = false
    local hasActiveEgg = false
    local minRemainSec = nil

    for _, d in ipairs(slot:GetDescendants()) do
        if d:IsA("TextLabel") or d:IsA("TextButton") then
            local txt = tostring(d.Text or "")
            if txt ~= "" then
                if txt:find("孵好了") or txt:find("可孵化") or txt:find("領取") then
                    hasReadyText = true
                end
                if txt:find("R%$") or txt:find("立即") or txt:find("加速") then
                    hasRobuxPrompt = true
                end
                if txt:find("還沒有孵好") or txt:find("孵化中") then
                    hasNotReadyPrompt = true
                    hasActiveEgg = true
                end
                local sec = _parseTimerSecondsFromText(txt)
                if sec ~= nil then
                    hasActiveEgg = true
                    if minRemainSec == nil or sec < minRemainSec then
                        minRemainSec = sec
                    end
                end
            end
        end
    end

    if claimBtn and (claimBtn:IsA("TextButton") or claimBtn:IsA("TextLabel")) then
        local cTxt = tostring(claimBtn.Text or "")
        if cTxt:find("孵好了") or cTxt:find("領取") then
            hasReadyText = true
        end
        if cTxt:find("R%$") or cTxt:find("立即") or cTxt:find("加速") or cTxt:find("還沒有") then
            hasRobuxPrompt = true
        end
    end

    local isClaimVisible = claimBtn and claimBtn.Visible and claimBtn.Active ~= false
    local isReady = false
    if isClaimVisible and not hasRobuxPrompt and not hasNotReadyPrompt then
        if minRemainSec ~= nil then
            if minRemainSec <= 0 then
                isReady = true
            end
        elseif hasReadyText then
            isReady = true
        end
    end

    return {
        ready = isReady,
        remainSec = minRemainSec,
        claimBtn = claimBtn,
        hasActiveEgg = hasActiveEgg
    }
end
local function _runPetNestStealthAction(actionType)
if not _isRuntimeHealthy() then return false, nil, 0 end
_suppressNestToastPopups()
    local mUI = pg:FindFirstChild("MainUI")
    local nestPanel = mUI and mUI:FindFirstChild("PetNestPanel")
    local nestFrame = nestPanel and nestPanel:FindFirstChild("Frame")
    if not nestPanel or not nestFrame then
        return false, nil, 0
    end

    local origVisible = nestPanel.Visible
    local origPos = nestPanel:IsA("GuiObject") and nestPanel.Position or nil

    if not origVisible and nestPanel:IsA("GuiObject") then
        nestPanel.Position = UDim2.new(9, 0, 9, 0)
        nestPanel.Visible = true
        task.wait(0.06)
    end

    local triggered = false
    local clickedCount = 0
    local nextWaitSec = nil

    if actionType == "hatch" then
        local slotsContainer = nestFrame:FindFirstChild("Frame")
        local readySlots = {}
        local anyCountingDown = false
        if slotsContainer then
            for i = 1, 4 do
                if _scriptDestroyed or not Config.AutoHatch then break end
                local slot = slotsContainer:FindFirstChild("Slot" .. i)
                local info = _inspectSlotHatchState(slot)
                if info.ready and info.claimBtn then
                    table.insert(readySlots, { index = i, btn = info.claimBtn })
                elseif info.remainSec ~= nil and info.remainSec > 0 then
                    anyCountingDown = true
                    if nextWaitSec == nil or info.remainSec < nextWaitSec then
                        nextWaitSec = info.remainSec
                    end
                end
            end
        end

        if #readySlots > 0 then
            for _, item in ipairs(readySlots) do
                if _scriptDestroyed or not Config.AutoHatch then break end
                if item.btn and item.btn.Parent and item.btn.Visible then
                    if _fireMergeBtnConnections(item.btn) then
                        triggered = true
                        clickedCount = clickedCount + 1
                    end
                    task.wait(0.06)
                end
            end
        elseif not anyCountingDown then
            local claimAllBtn = nestFrame:FindFirstChild("ClaimAll")
            local claimAllTxt = claimAllBtn and tostring(claimAllBtn.Text or "") or ""
            if claimAllBtn and claimAllBtn.Visible and claimAllBtn.Active ~= false
                and not claimAllTxt:find("R%$") and not claimAllTxt:find("加速") and not claimAllTxt:find("還沒有") then
                if _fireMergeBtnConnections(claimAllBtn) then
                    triggered = true
                    clickedCount = 1
                end
            end
        end
    elseif actionType == "fill" then
        local fillAllBtn = nestFrame:FindFirstChild("FillAll")
        if fillAllBtn and fillAllBtn.Visible and fillAllBtn.Active ~= false then
            if _fireMergeBtnConnections(fillAllBtn) then
                triggered = true
                clickedCount = 1
            end
        end
    end

    if not origVisible and nestPanel:IsA("GuiObject") then
        nestPanel.Visible = false
        if origPos then
            nestPanel.Position = origPos
        end
    end

    _suppressNestToastPopups()
    return triggered, nextWaitSec, clickedCount
end
task.spawn(function()
while not _scriptDestroyed do
local sleepSec = math.max(0.25, Config.HatchIntervalMs / 1000)
if Config.AutoHatch then
pcall(function()
local triggered, nextWaitSec, clickedCount = _runPetNestStealthAction("hatch")
if triggered then
_SessionStats.HatchCount = _SessionStats.HatchCount + math.max(1, clickedCount or 1)
liveStatusText = string.format("🐣 到點精準孵化 +%d (累計: %d)", math.max(1, clickedCount or 1), _SessionStats.HatchCount)
elseif nextWaitSec and nextWaitSec > 0 then
local smartWait = math.clamp(nextWaitSec + 0.05, math.max(0.25, Config.HatchIntervalMs / 1000), 60)
sleepSec = smartWait
liveStatusText = string.format("⏳ 倒數未到不點擊：最近蛋剩 %.1f 秒", nextWaitSec)
else
liveStatusText = "👀 靈獸巢監控中：等待蛋可孵化"
end
end)
end
task.wait(sleepSec)
end
end)
task.spawn(function()
while not _scriptDestroyed do
if Config.AutoFillEgg then
pcall(function()
if _runPetNestStealthAction("fill") then
_SessionStats.FillEggCount = _SessionStats.FillEggCount + 1
liveStatusText = string.format("🥚 背景自動放蛋完成 (累計: %d)", _SessionStats.FillEggCount)
end
end)
end
task.wait(math.max(0.25, Config.FillEggIntervalMs / 1000))
end
end)
local _cachedPlaceBestBtn = nil
local _lastPlaceBestScan = 0
local function _findPlaceBestButton()
if _cachedPlaceBestBtn and _cachedPlaceBestBtn.Parent and _cachedPlaceBestBtn:IsDescendantOf(pg) then
return _cachedPlaceBestBtn
end
local now = tick()
if now - _lastPlaceBestScan < 3.0 then
return nil
end
_lastPlaceBestScan = now
local foundBtn = nil
pcall(function()
for _, obj in ipairs(pg:GetDescendants()) do
if obj:IsA("GuiButton") then
local n = string.lower(tostring(obj.Name or ""))
local txt = tostring(obj.Text or "")
                local isExcluded = txt:find("擴充") or txt:find("上限") or txt:find("稀有度")
                    or txt:find("凡品") or txt:find("靈品") or txt:find("寶品")
                    or txt:find("仙品") or txt:find("神品") or txt:find("放上台")
                    or txt:find("拿著") or txt:find("全部法寶") or txt:find("出售") or txt:find("賣")

                if not isExcluded then
                    if txt:find("自動擺最賺") or txt:find("擺最賺") or n:find("placebest") or n:find("autobest") then
                        foundBtn = obj
                        break
                    end
                end
            end
        end
    end)
    _cachedPlaceBestBtn = foundBtn
    return foundBtn
end
local function _runPlaceBestStealthAction()
if not _isRuntimeHealthy() then return false end
local triggered = false
pcall(function()
local targetBtn = _findPlaceBestButton()
if not targetBtn then return end
        local panel = targetBtn:FindFirstAncestorWhichIsA("Frame")
        while panel and panel.Parent and panel.Parent ~= pg do
            local pName = string.lower(tostring(panel.Name or ""))
            if pName:find("bag") or pName:find("artifact") or pName:find("inv") then
                break
            end
            local nextFrame = panel.Parent:FindFirstAncestorWhichIsA("Frame")
            if not nextFrame then break end
            panel = nextFrame
        end

        local origVisible = panel and panel.Visible or true
        local origPos = (panel and panel:IsA("GuiObject")) and panel.Position or nil

        if panel and not origVisible and panel:IsA("GuiObject") then
            panel.Position = UDim2.new(9, 0, 9, 0)
            panel.Visible = true
            task.wait(0.08)
        end

        if targetBtn.Visible and targetBtn.Active ~= false then
            if _fireMergeBtnConnections(targetBtn) then
                triggered = true
            end
        end

        if panel and not origVisible and panel:IsA("GuiObject") then
            panel.Visible = false
            if origPos then
                panel.Position = origPos
            end
        end
    end)
    return triggered
end
_makeToggle(mainPage, "AutoPlaceBest", Config.AutoPlaceBest, function(v)
Config.AutoPlaceBest = v
liveStatusText = v and "⭐ 背景自動擺最賺運行中..." or "⏸️ 背景自動擺最賺已停止"
end)
_makeSlider(mainPage, "PlaceBestInterval", Config.PlaceBestIntervalMs, 500, 15000, function(v)
Config.PlaceBestIntervalMs = v
end)
local _VirtualUser = nil
pcall(function()
_VirtualUser = game:GetService("VirtualUser")
end)
if lp and lp.Idled then
lp.Idled:Connect(function()
if _scriptDestroyed or not Config.AntiAfk then return end
pcall(function()
if _VirtualUser then
_VirtualUser:CaptureController()
_VirtualUser:ClickButton2(Vector2.new())
elseif _VirtualInputManager and _VirtualInputManager.SendKeyEvent then
_VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.RightControl, false, game)
task.wait(0.05)
_VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.RightControl, false, game)
end
liveStatusText = "🛡️ 已自動防踢一次 (AFK 保護生效中)"
end)
end)
end
task.spawn(function()
while not _scriptDestroyed do
if Config.AutoPlaceBest then
pcall(function()
if _runPlaceBestStealthAction() then
_SessionStats.PlaceBestCount = _SessionStats.PlaceBestCount + 1
liveStatusText = string.format("⭐ 背景自動擺最賺完成 (累計: %d)", _SessionStats.PlaceBestCount)
end
end)
end
task.wait(math.max(0.5, (Config.PlaceBestIntervalMs or 5000) / 1000))
end
end)
-- ==============================================================================
-- 🥚 2. 自動抽蛋 (GachaTab)
-- ==============================================================================
local syncGachaVisual = nil
_setGachaEnabled = function(v)
local nextState = not not v
Config.AutoGacha = nextState
_gachaRunId = _gachaRunId + 1
if syncGachaVisual then
syncGachaVisual(nextState)
end
if not nextState then
liveStatusText = "⏸️ 金錢祈願自動抽已停止"
end
end
_makeToggle(gachaPage, "AutoGacha", Config.AutoGacha, function(v)
_setGachaEnabled(v)
end, function(setter)
syncGachaVisual = setter
end)
local modeBtn = Instance.new("TextButton")
modeBtn.Size = UDim2.new(1, -6, 0, 44)
modeBtn.BackgroundColor3 = Color3.fromRGB(255, 225, 238)
modeBtn.Text = t((Config.GachaMode == "single") and "ModeSingle" or "ModeTen")
modeBtn.TextColor3 = Color3.fromRGB(160, 50, 100)
modeBtn.Font = Enum.Font.GothamBold
modeBtn.TextSize = Config.MenuTextSize
modeBtn.TextTruncate = Enum.TextTruncate.AtEnd
modeBtn.TextWrapped = false
modeBtn.ZIndex = 15
modeBtn.Parent = gachaPage
applyCorner(modeBtn, 16)
applyHoverEffect(modeBtn)
table.insert(allInteractiveElements, {
Obj = modeBtn,
MaxSize = 18,
CustomRefresh = function()
modeBtn.Text = t((Config.GachaMode == "single") and "ModeSingle" or "ModeTen")
end
})
modeBtn.MouseButton1Click:Connect(function()
Config.GachaMode = (Config.GachaMode == "ten") and "single" or "ten"
modeBtn.Text = t((Config.GachaMode == "single") and "ModeSingle" or "ModeTen")
saveConfig()
end)
_makeSlider(gachaPage, "GachaInterval", Config.GachaIntervalMs, 60, 3000, function(v)
Config.GachaIntervalMs = v
end)
_makeSlider(gachaPage, "GachaSkipX", Config.GachaSkipX, 50, 98, function(v)
Config.GachaSkipX = v
end)
_makeSlider(gachaPage, "GachaSkipY", Config.GachaSkipY, 50, 98, function(v)
Config.GachaSkipY = v
end)
UserInputService.InputBegan:Connect(function(input, gp)
if _scriptDestroyed or gp then return end
if input.KeyCode == Enum.KeyCode.F6 then
_setGachaEnabled(not Config.AutoGacha)
elseif input.KeyCode == Enum.KeyCode.F7 then
_setBeamAutoRelease(not Config.AutoLaunch)
saveConfig()
end
end)
local IGNORE_GACHA_GUIS = {
["MainUI"] = true,
["Chat"] = true,
["BubbleChat"] = true,
}
local function clickGachaPos(x, y, runId)
if not _isGachaSessionValid(runId) then return end
pcall(function()
if _VirtualInputManager and _VirtualInputManager.SendMouseButtonEvent then
_VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 1)
task.wait(0.01)
if not _isGachaSessionValid(runId) then return end
_VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 1)
elseif mouse1click and _isGachaSessionValid(runId) then
mouse1click()
end
end)
end
local function fireGachaGui(guiBtn, runId)
if not _isGachaSessionValid(runId) then return false end
if not guiBtn or not guiBtn.Parent or not guiBtn:IsA("GuiButton") or not guiBtn.Visible then
return false
end
    local firedConn = false
    if getconnections then
        for _, ev in ipairs({"MouseButton1Click", "Activated"}) do
            if not _isGachaSessionValid(runId) then return false end
            pcall(function()
                for _, c in ipairs(getconnections(guiBtn[ev])) do
                    if not _isGachaSessionValid(runId) then break end
                    if c.Fire then
                        c:Fire()
                        firedConn = true
                    elseif c.Function then
                        c.Function()
                        firedConn = true
                    end
                end
            end)
            if firedConn then break end
        end
    end

    if not _isGachaSessionValid(runId) then return false end
    local inset = _GuiService:GetGuiInset()
    local cx = guiBtn.AbsolutePosition.X + guiBtn.AbsoluteSize.X / 2
    local cy = guiBtn.AbsolutePosition.Y + guiBtn.AbsoluteSize.Y / 2 + inset.Y
    if cx > 0 and cy > 0 then
        clickGachaPos(cx, cy, runId)
        return true
    end
    return firedConn
end
local function skipGachaBottomRight(runId)
if not _isGachaSessionValid(runId) then return end
local cam = workspace.CurrentCamera
local vp = cam and cam.ViewportSize or Vector2.new(1280, 720)
local inset = _GuiService:GetGuiInset()
local x = vp.X * (Config.GachaSkipX / 100)
local y = vp.Y * (Config.GachaSkipY / 100)
clickGachaPos(x, y, runId)
if _isGachaSessionValid(runId) and inset.Y > 0 then
clickGachaPos(x, y + inset.Y, runId)
end
end
local function isInsideMainGachaBox(obj)
local gachaGui = pg:FindFirstChild("PetGachaGui")
local box = gachaGui and gachaGui:FindFirstChild("PetGachaPanel") and gachaGui.PetGachaPanel:FindFirstChild("Box")
if not box then return false end
return obj == box or obj:IsDescendantOf(box)
end
local function hideHatchAnimationInBg()
if not _isGachaRunning() then return end
local cam = workspace.CurrentCamera
local vp = cam and cam.ViewportSize or Vector2.new(1280, 720)
local center = Vector2.new(vp.X * 0.5, vp.Y * 0.5)
    for _, g in ipairs(pg:GetChildren()) do
        if not _isGachaRunning() then return end
        if g:IsA("ScreenGui") and g.Enabled and not IGNORE_GACHA_GUIS[g.Name] then
            for _, obj in ipairs(g:GetDescendants()) do
                if not _isGachaRunning() then return end
                if not isInsideMainGachaBox(obj) and obj:IsA("GuiObject") then
                    if obj:IsA("CanvasGroup") then
                        if obj.GroupTransparency < 1 then
                            obj.GroupTransparency = 1
                        end
                    elseif obj.Visible then
                        local objCenter = obj.AbsolutePosition + (obj.AbsoluteSize * 0.5)
                        local isCenterAnim = (objCenter - center).Magnitude < vp.Y * 0.36
                            and obj.AbsoluteSize.X > 110 and obj.AbsoluteSize.Y > 110
                        local isFullScreenOverlay = obj.AbsoluteSize.X > vp.X * 0.65
                            and obj.AbsoluteSize.Y > vp.Y * 0.65

                        if isCenterAnim or isFullScreenOverlay then
                            obj.Visible = false
                        end
                    end
                end
            end
        end
    end
end
local function getCoinGachaButtons()
local gachaGui = pg:FindFirstChild("PetGachaGui")
local box = gachaGui and gachaGui:FindFirstChild("PetGachaPanel") and gachaGui.PetGachaPanel:FindFirstChild("Box")
if not box then return nil, nil end
local tabCoin = box:FindFirstChild("Tab_coin")
local pageCoin = box:FindFirstChild("PageCoin")
local left = pageCoin and pageCoin:FindFirstChild("Left")
local pullBtn = left and left:FindFirstChild(Config.GachaMode == "single" and "Coin1" or "Coin10")
return tabCoin, pullBtn
end
task.spawn(function()
while not _scriptDestroyed do
local activeRunId = _gachaRunId
if _isGachaSessionValid(activeRunId) then
local tabCoin, pullBtn = getCoinGachaButtons()
if _isGachaSessionValid(activeRunId) then
if pullBtn and pullBtn.Visible then
if fireGachaGui(pullBtn, activeRunId) and _isGachaSessionValid(activeRunId) then
_SessionStats.GachaCount = _SessionStats.GachaCount + ((Config.GachaMode == "single") and 1 or 10)
liveStatusText = string.format(
"🥚 金錢祈願連抽中 (%s) | 累計: %d",
Config.GachaMode == "single" and "單抽" or "十連",
_SessionStats.GachaCount
)
end
elseif tabCoin and tabCoin.Visible then
fireGachaGui(tabCoin, activeRunId)
else
skipGachaBottomRight(activeRunId)
end
end
end
task.wait(math.max(0.08, Config.GachaIntervalMs / 1000))
end
end)
-- ==============================================================================
-- 📊 3. 運行日誌 (LogsTab)
-- ==============================================================================
local statsCard = Instance.new("Frame")
statsCard.Size = UDim2.new(1, -6, 0, 145)
statsCard.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
statsCard.BackgroundTransparency = 0.3
statsCard.ClipsDescendants = true
statsCard.ZIndex = 15
statsCard.Parent = logsPage
applyCorner(statsCard, 16)
local _statsCardStroke = Instance.new("UIStroke")
_statsCardStroke.Color = Color3.fromRGB(255, 210, 230)
_statsCardStroke.Transparency = 0.6
_statsCardStroke.Thickness = 1
_statsCardStroke.Parent = statsCard
local statsTitle = Instance.new("TextLabel")
statsTitle.Size = UDim2.new(1, -24, 0, 26)
statsTitle.Position = UDim2.new(0, 12, 0, 10)
statsTitle.BackgroundTransparency = 1
statsTitle.Text = "⏱️ 掛機運行計時與數據看板"
statsTitle.TextColor3 = Color3.fromRGB(180, 50, 110)
statsTitle.Font = Enum.Font.GothamBold
statsTitle.TextSize = Config.MenuTextSize
statsTitle.TextXAlignment = Enum.TextXAlignment.Left
statsTitle.TextTruncate = Enum.TextTruncate.AtEnd
statsTitle.ZIndex = 16
statsTitle.Parent = statsCard
table.insert(allInteractiveElements, {Obj = statsTitle, MaxSize = 18})
local statsDetailText = Instance.new("TextLabel")
statsDetailText.Size = UDim2.new(1, -24, 1, -42)
statsDetailText.Position = UDim2.new(0, 12, 0, 38)
statsDetailText.BackgroundTransparency = 1
statsDetailText.Text = "🌸 計時與日誌載入中..."
statsDetailText.TextColor3 = Color3.fromRGB(90, 70, 85)
statsDetailText.Font = Enum.Font.Code
statsDetailText.TextSize = Config.MenuTextSize
statsDetailText.TextXAlignment = Enum.TextXAlignment.Left
statsDetailText.TextYAlignment = Enum.TextYAlignment.Top
statsDetailText.TextWrapped = true
statsDetailText.ZIndex = 16
statsDetailText.Parent = statsCard
table.insert(allInteractiveElements, {Obj = statsDetailText, MaxSize = 17})
local resetStatsBtn = Instance.new("TextButton")
resetStatsBtn.Size = UDim2.new(1, -6, 0, 42)
resetStatsBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 242)
resetStatsBtn.Text = t("ResetStats")
resetStatsBtn.TextColor3 = Color3.fromRGB(120, 80, 105)
resetStatsBtn.Font = Enum.Font.GothamBold
resetStatsBtn.TextSize = Config.MenuTextSize
resetStatsBtn.TextTruncate = Enum.TextTruncate.AtEnd
resetStatsBtn.ZIndex = 15
resetStatsBtn.Parent = logsPage
applyCorner(resetStatsBtn, 16)
applyHoverEffect(resetStatsBtn)
table.insert(allInteractiveElements, {Obj = resetStatsBtn, Key = "ResetStats", MaxSize = 18})
resetStatsBtn.MouseButton1Click:Connect(function()
_SessionStats.StartTime = tick()
_SessionStats.LaunchCount = 0
_SessionStats.GachaCount = 0
_SessionStats.MergeCount = 0
_SessionStats.HatchCount = 0
_SessionStats.FillEggCount = 0
_SessionStats.PlaceBestCount = 0
_LastFiredPct = 0
end)
local statusCard = Instance.new("Frame")
statusCard.Size = UDim2.new(1, -6, 0, 184)
statusCard.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
statusCard.BackgroundTransparency = 0.3
statusCard.ClipsDescendants = true
statusCard.ZIndex = 15
statusCard.Parent = logsPage
applyCorner(statusCard, 16)
local _statusCardStroke = Instance.new("UIStroke")
_statusCardStroke.Color = Color3.fromRGB(255, 210, 230)
_statusCardStroke.Transparency = 0.6
_statusCardStroke.Thickness = 1
_statusCardStroke.Parent = statusCard
local statusTitle = Instance.new("TextLabel")
statusTitle.Size = UDim2.new(1, -24, 0, 26)
statusTitle.Position = UDim2.new(0, 12, 0, 10)
statusTitle.BackgroundTransparency = 1
statusTitle.Text = "🖥️ 系統即時監控狀態"
statusTitle.TextColor3 = Color3.fromRGB(180, 50, 110)
statusTitle.Font = Enum.Font.GothamBold
statusTitle.TextSize = Config.MenuTextSize
statusTitle.TextXAlignment = Enum.TextXAlignment.Left
statusTitle.TextTruncate = Enum.TextTruncate.AtEnd
statusTitle.ZIndex = 16
statusTitle.Parent = statusCard
table.insert(allInteractiveElements, {Obj = statusTitle, MaxSize = 18})
local statusText = Instance.new("TextLabel")
statusText.Size = UDim2.new(1, -28, 1, -46)
statusText.Position = UDim2.new(0, 14, 0, 40)
statusText.BackgroundTransparency = 1
statusText.Text = "🔮 初始化中..."
statusText.TextColor3 = Color3.fromRGB(90, 70, 85)
statusText.Font = Enum.Font.Code
statusText.TextSize = math.max(12, Config.MenuTextSize - 1)
statusText.LineHeight = 1.25
statusText.TextXAlignment = Enum.TextXAlignment.Left
statusText.TextYAlignment = Enum.TextYAlignment.Top
statusText.TextWrapped = true
statusText.ZIndex = 16
statusText.Parent = statusCard
table.insert(allInteractiveElements, {Obj = statusText, MaxSize = 17})
-- ==============================================================================
-- 📜 4. 更新日誌 (ChangelogTab)
-- ==============================================================================
local changelogCard = Instance.new("Frame")
changelogCard.Size = UDim2.new(1, -6, 0, 1420)
changelogCard.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
changelogCard.BackgroundTransparency = 0.3
changelogCard.ClipsDescendants = true
changelogCard.ZIndex = 15
changelogCard.Parent = changelogPage
applyCorner(changelogCard, 16)
local _changelogStroke = Instance.new("UIStroke")
_changelogStroke.Color = Color3.fromRGB(255, 210, 230)
_changelogStroke.Transparency = 0.6
_changelogStroke.Thickness = 1
_changelogStroke.Parent = changelogCard
local changelogTitleLbl = Instance.new("TextLabel")
changelogTitleLbl.Size = UDim2.new(1, -24, 0, 28)
changelogTitleLbl.Position = UDim2.new(0, 12, 0, 10)
changelogTitleLbl.BackgroundTransparency = 1
changelogTitleLbl.Text = t("ChangelogTitle")
changelogTitleLbl.TextColor3 = Color3.fromRGB(180, 50, 110)
changelogTitleLbl.Font = Enum.Font.GothamBold
changelogTitleLbl.TextSize = Config.MenuTextSize
changelogTitleLbl.TextXAlignment = Enum.TextXAlignment.Left
changelogTitleLbl.TextTruncate = Enum.TextTruncate.AtEnd
changelogTitleLbl.ZIndex = 16
changelogTitleLbl.Parent = changelogCard
table.insert(allInteractiveElements, {Obj = changelogTitleLbl, Key = "ChangelogTitle", MaxSize = 18})
local changelogBodyLbl = Instance.new("TextLabel")
changelogBodyLbl.Size = UDim2.new(1, -24, 1, -44)
changelogBodyLbl.Position = UDim2.new(0, 12, 0, 40)
changelogBodyLbl.BackgroundTransparency = 1
changelogBodyLbl.Text = ""
changelogBodyLbl.TextColor3 = Color3.fromRGB(90, 70, 85)
changelogBodyLbl.Font = Enum.Font.Code
changelogBodyLbl.TextSize = math.max(12, Config.MenuTextSize - 1)
changelogBodyLbl.TextXAlignment = Enum.TextXAlignment.Left
changelogBodyLbl.TextYAlignment = Enum.TextYAlignment.Top
changelogBodyLbl.TextWrapped = true
changelogBodyLbl.ZIndex = 16
changelogBodyLbl.Parent = changelogCard
table.insert(allInteractiveElements, {Obj = changelogBodyLbl, MaxSize = 17})
_refreshChangelogText = function()
local lines = _UPDATE_LOGS_DATA[currentLanguage] or _UPDATE_LOGS_DATA.zh
changelogBodyLbl.Text = table.concat(lines, "\n")
local estLines = math.max(#lines, math.ceil(#changelogBodyLbl.Text / 42))
local cardH = math.max(1160, 64 + estLines * 20)
changelogCard.Size = UDim2.new(1, -6, 0, cardH)
changelogPage.CanvasSize = UDim2.new(0, 0, 0, cardH + 36)
end
_refreshChangelogText()
-- ==============================================================================
-- 👑 5. 管理員菜單 (AdminTab - 純文字唯讀展示)
-- ==============================================================================
local adminHeaderCard = Instance.new("Frame")
adminHeaderCard.Size = UDim2.new(1, -6, 0, 74)
adminHeaderCard.BackgroundColor3 = Color3.fromRGB(255, 240, 246)
adminHeaderCard.BackgroundTransparency = 0.25
adminHeaderCard.ClipsDescendants = true
adminHeaderCard.ZIndex = 15
adminHeaderCard.Parent = adminPage
applyCorner(adminHeaderCard, 16)

local _adminHeaderStroke = Instance.new("UIStroke")
_adminHeaderStroke.Color = Color3.fromRGB(255, 160, 200)
_adminHeaderStroke.Transparency = 0.45
_adminHeaderStroke.Thickness = 1.2
_adminHeaderStroke.Parent = adminHeaderCard

local adminTitleLbl = Instance.new("TextLabel")
adminTitleLbl.Size = UDim2.new(1, -24, 0, 28)
adminTitleLbl.Position = UDim2.new(0, 14, 0, 10)
adminTitleLbl.BackgroundTransparency = 1
adminTitleLbl.Text = "👑 管理員專屬控制台 (Admin Menu)"
adminTitleLbl.TextColor3 = Color3.fromRGB(180, 50, 110)
adminTitleLbl.Font = Enum.Font.GothamBlack
adminTitleLbl.TextSize = Config.MenuTextSize
adminTitleLbl.TextXAlignment = Enum.TextXAlignment.Left
adminTitleLbl.TextTruncate = Enum.TextTruncate.AtEnd
adminTitleLbl.ZIndex = 16
adminTitleLbl.Parent = adminHeaderCard
table.insert(allInteractiveElements, {Obj = adminTitleLbl, MaxSize = 18})

local adminSubLbl = Instance.new("TextLabel")
adminSubLbl.Size = UDim2.new(1, -24, 0, 24)
adminSubLbl.Position = UDim2.new(0, 14, 0, 40)
adminSubLbl.BackgroundTransparency = 1
adminSubLbl.Text = "🔒 權限狀態：未授權（僅供文字預覽，所有項目均無法開啟）"
adminSubLbl.TextColor3 = Color3.fromRGB(140, 95, 115)
adminSubLbl.Font = Enum.Font.Code
adminSubLbl.TextSize = math.max(11, Config.MenuTextSize - 1)
adminSubLbl.TextXAlignment = Enum.TextXAlignment.Left
adminSubLbl.TextTruncate = Enum.TextTruncate.AtEnd
adminSubLbl.ZIndex = 16
adminSubLbl.Parent = adminHeaderCard
table.insert(allInteractiveElements, {Obj = adminSubLbl, MaxSize = 16})

local _ADMIN_TEXT_ITEMS = {
    { title = "🛡️ 全服公告廣播系統", desc = "發送頂部跑馬燈與全服提示訊息  [🔒 僅管理員可用]" },
    { title = "💎 資源與靈石數值校準", desc = "後台數據同步與異常數值修正工具  [🔒 僅管理員可用]" },
    { title = "⚡ 無冷卻極限攻速模式", desc = "解除客戶端動作冷卻與延遲限制  [🔒 僅管理員可用]" },
    { title = "🎁 專屬禮包與法寶發放", desc = "指定玩家帳號發放限定法寶與靈獸蛋  [🔒 僅管理員可用]" },
    { title = "🔑 卡密生成與黑名單管理", desc = "管理授權序號狀態、天數與設備解綁  [🔒 僅管理員可用]" },
    { title = "📡 伺服器遠端事件監聽器", desc = "即時追蹤 RemoteEvent 封包與日誌  [🔒 僅管理員可用]" }
}

for _, item in ipairs(_ADMIN_TEXT_ITEMS) do
    local row = Instance.new("Frame")
    row.Size = UDim2.new(1, -6, 0, 62)
    row.BackgroundColor3 = Color3.fromRGB(250, 242, 246)
    row.BackgroundTransparency = 0.35
    row.ClipsDescendants = true
    row.Active = false
    row.ZIndex = 15
    row.Parent = adminPage
    applyCorner(row, 16)

    local rowStroke = Instance.new("UIStroke")
    rowStroke.Color = Color3.fromRGB(230, 200, 215)
    rowStroke.Transparency = 0.6
    rowStroke.Thickness = 1
    rowStroke.Parent = row

    local itemTitle = Instance.new("TextLabel")
    itemTitle.Size = UDim2.new(1, -86, 0, 24)
    itemTitle.Position = UDim2.new(0, 16, 0, 10)
    itemTitle.BackgroundTransparency = 1
    itemTitle.Text = item.title
    itemTitle.TextColor3 = Color3.fromRGB(115, 90, 105)
    itemTitle.Font = Enum.Font.GothamBold
    itemTitle.TextSize = Config.MenuTextSize
    itemTitle.TextXAlignment = Enum.TextXAlignment.Left
    itemTitle.TextTruncate = Enum.TextTruncate.AtEnd
    itemTitle.ZIndex = 16
    itemTitle.Parent = row
    table.insert(allInteractiveElements, {Obj = itemTitle, MaxSize = 18})

    local itemDesc = Instance.new("TextLabel")
    itemDesc.Size = UDim2.new(1, -86, 0, 20)
    itemDesc.Position = UDim2.new(0, 16, 0, 35)
    itemDesc.BackgroundTransparency = 1
    itemDesc.Text = item.desc
    itemDesc.TextColor3 = Color3.fromRGB(150, 125, 140)
    itemDesc.Font = Enum.Font.Code
    itemDesc.TextSize = math.max(11, Config.MenuTextSize - 2)
    itemDesc.TextXAlignment = Enum.TextXAlignment.Left
    itemDesc.TextTruncate = Enum.TextTruncate.AtEnd
    itemDesc.ZIndex = 16
    itemDesc.Parent = row
    table.insert(allInteractiveElements, {Obj = itemDesc, MaxSize = 15})

    local lockTag = Instance.new("TextLabel")
    lockTag.Size = UDim2.new(0, 62, 0, 28)
    lockTag.Position = UDim2.new(1, -74, 0.5, -14)
    lockTag.BackgroundColor3 = Color3.fromRGB(232, 220, 226)
    lockTag.Text = "🔒 鎖定"
    lockTag.TextColor3 = Color3.fromRGB(145, 120, 132)
    lockTag.Font = Enum.Font.GothamBold
    lockTag.TextSize = 12
    lockTag.ZIndex = 16
    lockTag.Parent = row
    applyCorner(lockTag, 12)
end

-- ==============================================================================
-- ⚙️ 6. 參數設定 (CfgTab)
-- ==============================================================================
local cfgStatusLbl = Instance.new("TextLabel")
cfgStatusLbl.Size = UDim2.new(1, -6, 0, 24)
cfgStatusLbl.BackgroundTransparency = 1
cfgStatusLbl.Text = t("ConfigSavedMsg")
cfgStatusLbl.TextColor3 = Color3.fromRGB(180, 50, 110)
cfgStatusLbl.Font = Enum.Font.Code
cfgStatusLbl.TextSize = math.max(11, Config.MenuTextSize - 1)
cfgStatusLbl.TextXAlignment = Enum.TextXAlignment.Left
cfgStatusLbl.TextTruncate = Enum.TextTruncate.AtEnd
cfgStatusLbl.ZIndex = 15
cfgStatusLbl.Parent = cfgPage
local themeBtn
do
local f = Instance.new("Frame")
f.Size = UDim2.new(1, -6, 0, 56)
f.BackgroundColor3 = Color3.fromRGB(255, 245, 250)
f.BackgroundTransparency = 0.3
f.ClipsDescendants = true
f.ZIndex = 15
f.Parent = cfgPage
applyCorner(f, 16)
    local _fStroke = Instance.new("UIStroke")
    _fStroke.Color = Color3.fromRGB(255, 210, 230)
    _fStroke.Transparency = 0.6
    _fStroke.Thickness = 1
    _fStroke.Parent = f

    local themeLbl = Instance.new("TextLabel")
    themeLbl.Size = UDim2.new(0.45, -18, 1, 0)
    themeLbl.Position = UDim2.new(0, 18, 0, 0)
    themeLbl.BackgroundTransparency = 1
    themeLbl.Text = t("AccentTheme")
    themeLbl.TextColor3 = Color3.fromRGB(90, 70, 85)
    themeLbl.Font = Enum.Font.GothamMedium
    themeLbl.TextSize = Config.MenuTextSize
    themeLbl.TextXAlignment = Enum.TextXAlignment.Left
    themeLbl.TextTruncate = Enum.TextTruncate.AtEnd
    themeLbl.ZIndex = 16
    themeLbl.Parent = f
    table.insert(allInteractiveElements, {Obj = themeLbl, Key = "AccentTheme", MaxSize = 18})

    themeBtn = Instance.new("TextButton")
    themeBtn.Size = UDim2.new(0.5, -18, 0, 34)
    themeBtn.Position = UDim2.new(0.5, 6, 0.5, -17)
    themeBtn.BackgroundColor3 = Color3.fromRGB(255, 230, 242)
    themeBtn.Text = ThemeNames[currentThemeIndex]
    themeBtn.TextColor3 = Color3.fromRGB(180, 50, 110)
    themeBtn.Font = Enum.Font.GothamBold
    themeBtn.TextSize = Config.MenuTextSize
    themeBtn.TextTruncate = Enum.TextTruncate.AtEnd
    themeBtn.ZIndex = 16
    themeBtn.Parent = f
    applyCorner(themeBtn, 12)
    applyHoverEffect(themeBtn)
    table.insert(allInteractiveElements, {Obj = themeBtn, MaxSize = 17})

    themeBtn.MouseButton1Click:Connect(function()
        currentThemeIndex = currentThemeIndex % #ThemeNames + 1
        themeBtn.Text = ThemeNames[currentThemeIndex]
        if _updateThemeStyle then _updateThemeStyle() end
        saveConfig()
        cfgStatusLbl.Text = t("ConfigSavedMsg")
    end)
end
_makeSlider(cfgPage, "FontSize", Config.MenuTextSize, 10, 22, function(v)
Config.MenuTextSize = v
for _, item in ipairs(allInteractiveElements) do
local clamped = item.MaxSize and math.min(v, item.MaxSize) or v
if item.Obj then pcall(function() item.Obj.TextSize = clamped end) end
if item.ValBox then pcall(function() item.ValBox.TextSize = clamped end) end
end
if _updateSidebarLayout then
_updateSidebarLayout()
end
end)
_makeSlider(cfgPage, "MenuAlpha", Config.MenuBackgroundAlpha, 0, 80, function(v)
Config.MenuBackgroundAlpha = v
TweenService:Create(mainPanel, TweenInfo.new(0.14, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
BackgroundTransparency = v / 100
}):Play()
end)
_makeToggle(cfgPage, "AntiAfk", Config.AntiAfk, function(v)
Config.AntiAfk = v
liveStatusText = v and "🛡️ 防掛機踢出 (AFK不掉線) 已開啟" or "⏸️ 防掛機踢出已關閉"
end)
_updateThemeStyle = function()
local accCol = getAccentColor()
glow.Color = accCol
panelStroke.Color = accCol
floatStroke.Color = accCol
statusTitle.TextColor3 = accCol
statsTitle.TextColor3 = accCol
changelogTitleLbl.TextColor3 = accCol
adminTitleLbl.TextColor3 = accCol
themeBtn.TextColor3 = accCol
resizeHandle.TextColor3 = accCol
    for _, item in ipairs(allInteractiveElements) do
        if item.ValBox then item.ValBox.TextColor3 = accCol end
        if item.SliderFill then item.SliderFill.BackgroundColor3 = accCol end
        if item.KnobStroke then item.KnobStroke.Color = accCol end
    end
end
_refreshLanguageText = function()
for _, item in ipairs(navButtons) do
item.Btn.Text = "   " .. t(item.Key)
end
for _, item in ipairs(allInteractiveElements) do
if item.Key and item.Obj then
item.Obj.Text = t(item.Key)
end
if item.CustomRefresh then
item.CustomRefresh()
end
if item.ToggleBtn and item.GetState then
item.ToggleBtn.Text = item.GetState() and t("On") or t("Off")
end
end
if _refreshChangelogText then _refreshChangelogText() end
cfgStatusLbl.Text = t("ConfigSavedMsg")
if _updateSidebarLayout then
_updateSidebarLayout()
end
end
_updateThemeStyle()
-- ==============================================================================
-- 【光波完美一擊 & 執行循環 (融合 99% 即觸發 + 實際點擊強化版)】
-- ==============================================================================
local _cachedMainUI = nil
local _cachedBeamBar = nil
local _cachedBeamMarker = nil
local _cachedBeamFireBtn = nil
local _lastBeamScanTime = 0
local function _findBeamBarAndButton()
if not (_cachedMainUI and _cachedMainUI.Parent) then
_cachedMainUI = pg:FindFirstChild("MainUI")
end
local mainUi = _cachedMainUI
if not mainUi then
return nil, nil, nil
end
if _cachedBeamBar and _cachedBeamBar.Parent and _cachedBeamBar:IsDescendantOf(mainUi) then
if not (_cachedBeamMarker and _cachedBeamMarker.Parent == _cachedBeamBar) then
for _, ch in ipairs(_cachedBeamBar:GetChildren()) do
if ch:IsA("GuiObject") and ch.AbsoluteSize.X <= 16 and ch.AbsoluteSize.Y >= 20 then
_cachedBeamMarker = ch
break
end
end
end
if _cachedBeamFireBtn and _cachedBeamFireBtn.Parent and _cachedBeamFireBtn:IsDescendantOf(mainUi) then
return _cachedBeamBar, _cachedBeamMarker, _cachedBeamFireBtn
end
end

local now = tick()
if now - _lastBeamScanTime < 0.25 then
return _cachedBeamBar, _cachedBeamMarker, _cachedBeamFireBtn
end
_lastBeamScanTime = now

    local bar = nil
    local marker = nil
    local fireBtn = nil

    for _, d in ipairs(mainUi:GetDescendants()) do
        if d:IsA("Frame") and math.abs(d.AbsoluteSize.X - 330) <= 5 and math.abs(d.AbsoluteSize.Y - 34) <= 5 then
            bar = d
            for _, ch in ipairs(d:GetChildren()) do
                if ch:IsA("GuiObject") and ch.AbsoluteSize.X <= 16 and ch.AbsoluteSize.Y >= 20 then
                    marker = ch
                    break
                end
            end
        elseif d:IsA("GuiObject") and d.Visible then
            if d:IsA("TextLabel") or d:IsA("TextButton") then
                local txt = string.gsub(tostring(d.Text), "^%s*(.-)%s*$", "%1")
                if txt == "發！" then
                    if d:IsA("GuiButton") then
                        fireBtn = d
                    elseif d.Parent and d.Parent:IsA("GuiButton") then
                        fireBtn = d.Parent
                    else
                        fireBtn = d
                    end
                end
            end
        end
    end

    _cachedBeamBar = bar
    _cachedBeamMarker = marker
    _cachedBeamFireBtn = fireBtn
    return bar, marker, fireBtn
end
local function _readBeamMetrics()
local bar, marker, fireBtn = _findBeamBarAndButton()
if not bar then
return nil
end
    local left = bar.AbsolutePosition.X
    local width = math.max(bar.AbsoluteSize.X, 1)

    local centerPct = 0
    if marker then
        local centerX = marker.AbsolutePosition.X + (marker.AbsoluteSize.X * 0.5)
        centerPct = math.clamp(((centerX - left) / width) * 100, 0, 100)
    end

    local numVal = nil
    local parentObj = bar.Parent
    if parentObj then
        for _, sib in ipairs(parentObj:GetChildren()) do
            if sib:IsA("TextLabel") and sib.Visible then
                local cleaned = string.gsub(tostring(sib.Text), "^%s*(.-)%s*$", "%1")
                local parsed = tonumber(cleaned)
                if parsed then
                    numVal = parsed
                end
            end
        end
    end

    return {
        centerPct = centerPct,
        numVal = numVal,
        fireBtn = fireBtn
    }
end
local function _clickBeamAt(x, y)
pcall(function()
if _VirtualInputManager and typeof(_VirtualInputManager.SendMouseButtonEvent) == "function" then
_VirtualInputManager:SendMouseButtonEvent(x, y, 0, true, game, 1)
_VirtualInputManager:SendMouseButtonEvent(x, y, 0, false, game, 1)
end
end)
pcall(function()
if typeof(mouse1click) == "function" then
mouse1click()
elseif typeof(mouse1press) == "function" and typeof(mouse1release) == "function" then
mouse1press()
mouse1release()
end
end)
end
local _BeamRoundLocked = false
local function _triggerBeamRelease(fireBtn, centerPct, numVal)
if not _isRuntimeHealthy() then
return false
end
if _BeamRoundLocked then
return false
end
local _now = os.clock()
if (_now - _LastTick) < Config.ClickDelay then
return false
end
_LastTick = _now
_BeamRoundLocked = true
_LastFiredPct = centerPct or 0
_SessionStats.LaunchCount = _SessionStats.LaunchCount + 1
    -- 單次精準觸發「發！」按鈕（不連點畫面中央，且本輪鎖定只點一次）
    if fireBtn and fireBtn.Visible then
        local firedSignal = false
        pcall(function()
            if typeof(firesignal) == "function" and fireBtn:IsA("GuiButton") then
                firesignal(fireBtn.MouseButton1Click)
                firesignal(fireBtn.Activated)
                firedSignal = true
            end
        end)
        if not firedSignal then
            local cx = fireBtn.AbsolutePosition.X + (fireBtn.AbsoluteSize.X * 0.5)
            local cy = fireBtn.AbsolutePosition.Y + (fireBtn.AbsoluteSize.Y * 0.5)
            _clickBeamAt(cx, cy)
        end
    end

    local valStr = numVal and tostring(numVal) or "-"
    liveStatusText = string.format(
        "⚡ 光波單次精準釋放 [%.1f%% / 數值:%s] (累計: %d次)",
        _LastFiredPct,
        valStr,
        _SessionStats.LaunchCount
    )

    return true
end
local function formatElapsedTime(sec)
local h = math.floor(sec / 3600)
local m = math.floor((sec % 3600) / 60)
local s = math.floor(sec % 60)
return string.format("%02d:%02d:%02d", h, m, s)
end
local lastGachaHideTime = 0
local lastToastSuppressTime = 0
local lastStatsUiUpdateTime = 0
local cachedExpiryLine = tostring(activeKeyExpiresText or "未取得到期時間"):gsub("%s*%(剩", "\n      (剩")
local cachedExecutorName = _getExecutorName()
RunService.RenderStepped:Connect(function(dt)
if _scriptDestroyed then return end
    local now = tick()
    if Config.AutoGacha and (now - lastGachaHideTime >= 0.35) then
        lastGachaHideTime = now
        hideHatchAnimationInBg()
    end
    if (Config.AutoHatch or Config.AutoFillEgg) and (now - lastToastSuppressTime >= 0.85) then
        lastToastSuppressTime = now
        _suppressNestToastPopups()
    end

    if now - lastStatsUiUpdateTime >= 0.5 then
        lastStatsUiUpdateTime = now
        local elapsed = now - _SessionStats.StartTime
        local ping = 0
        pcall(function()
            ping = math.floor(_Stats.Network.ServerStatsItem["Data Ping"]:GetValue())
        end)

        statsDetailText.Text = string.format(
            "• ⏳ 累計掛機時長: %s\n• 🚀 釋放: %d 次 (上次 %.1f%%) | 🥚 抽蛋: %d | ⚗️ 合成: %d\n• 🐣 孵化: %d 次 | 🥚 放蛋: %d 次 | ⭐ 擺最賺: %d 次",
            formatElapsedTime(elapsed),
            _SessionStats.LaunchCount,
            _LastFiredPct,
            _SessionStats.GachaCount,
            _SessionStats.MergeCount,
            _SessionStats.HatchCount,
            _SessionStats.FillEggCount,
            _SessionStats.PlaceBestCount
        )

        cachedExpiryLine = tostring(activeKeyExpiresText or "未取得到期時間"):gsub("%s*%(剩", "\n      (剩")
        statusText.Text = string.format(
            "• 💻 執行環境: %s\n• 📶 網路延遲: %d ms\n• ⏳ 卡號有效時間: %s\n• %s",
            cachedExecutorName,
            ping,
            cachedExpiryLine,
            liveStatusText
        )
        local lineBreaks = select(2, statusText.Text:gsub("\n", ""))
        local desiredCardH = math.max(184, 54 + (lineBreaks + 1) * 24)
        if math.abs(statusCard.Size.Y.Offset - desiredCardH) > 2 then
            statusCard.Size = UDim2.new(1, -6, 0, desiredCardH)
        end
    end

    pcall(function()
        if Config.AutoFixedTp and (now - _lastFixedTpTick >= 0.6) then
            local _char = lp.Character
            local _hrp = _char and (_char:FindFirstChild("HumanoidRootPart") or _char.PrimaryPart)
            if _char and _hrp then
                local destPos = Vector3.new(tonumber(Config.FixedTpX) or 11.41, tonumber(Config.FixedTpY) or 3.35, tonumber(Config.FixedTpZ) or 9.28)
                if (_hrp.Position - destPos).Magnitude > 0.75 then
                    _lastFixedTpTick = now
                    _teleportToFixedPoint()
                end
            end
        end
    end)

    pcall(function()
        if Config.AutoTp then
            local _char = lp.Character
            local _hrp = _char and (_char:FindFirstChild("HumanoidRootPart") or _char.PrimaryPart)
            local _hum = _char and _char:FindFirstChildOfClass("Humanoid")
            local _cam = workspace.CurrentCamera
            if _hrp and _cam then
                local _look = _cam.CFrame.LookVector
                local _flat = Vector3.new(_look.X, 0, _look.Z)
                if _flat.Magnitude > 1e-4 then
                    local _dir = _flat.Unit
                    local _tpStep = math.clamp(((_hum and _hum.WalkSpeed) or 16) * math.min(dt, 0.1), 0.15, 6)
                    local _curPos = _hrp.Position
                    local _targetPos = _curPos + _dir * _tpStep
                    local _rot = CFrame.lookAt(_targetPos, _targetPos + _dir)
                    if _char.PivotTo then
                        _char:PivotTo(_rot)
                    else
                        _hrp.CFrame = _rot
                    end
                end
            end
        end
    end)

    if not _isRuntimeHealthy() then
        return
    end

    if not Config.AutoLaunch then
        return
    end

    pcall(function()
        local metrics = _readBeamMetrics()
        if not metrics then
            _BeamRoundLocked = false
            liveStatusText = string.format("⏳ 等待光波進度條出現... | 上次點擊: %.1f%% | 總計: %d 次", _LastFiredPct, _SessionStats.LaunchCount)
            return
        end

        local hitPct = metrics.centerPct >= Config.TargetPercent
        local hitVal = (metrics.numVal ~= nil and metrics.numVal >= Config.TargetValue)

        -- 當進度條與數值回到未達標狀態（代表新一輪光波蓄力開始），自動解鎖允許下一次單次觸發
        if not hitPct and not hitVal then
            _BeamRoundLocked = false
        end

        local valLabel = metrics.numVal and tostring(metrics.numVal) or "-"
        if _BeamRoundLocked then
            liveStatusText = string.format(
                "✅ 本輪已單次釋放，等待重置... | 上次點擊: %.1f%% | 總計: %d 次",
                _LastFiredPct,
                _SessionStats.LaunchCount
            )
            return
        end

        liveStatusText = string.format(
            "📊 游標: %.1f%% (目標 %.1f%%) | 數值: %s | 上次點擊: %.1f%% | 總計: %d 次",
            metrics.centerPct,
            Config.TargetPercent,
            valLabel,
            _LastFiredPct,
            _SessionStats.LaunchCount
        )

        if hitPct or hitVal then
            _triggerBeamRelease(metrics.fireBtn, metrics.centerPct, metrics.numVal)
        end
    end)
end)