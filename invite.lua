local function Invite()
  local req = syn.request or http_request or request or http.request or nil
  if req ~= nil then
    for port=6463, 6472, 1 do
      local inv = "http://127.0.0.1:"..tostring(port).."/rpc?v=1"
      local http = game:GetService("HttpService")
      local t = {cmd = "INVITE_BROWSER", args = {["code"] = "tgh3dtSEW7"}, nonce = string.lower(http:GenerateGUID(false))}
      local post = http:JSONEncode(t)
      req({Url = inv, Method = "POST", Body = post, Headers = {["Content-Type"] = "application/json", ["Origin"] = "https://discord.com"}})
    end
  end
end

local discordinv = "https://discord.gg/tgh3dtSEW7"
game.Players.LocalPlayer:Kick("Probably the wrong game/place | Join Discord for feature list :D link copied. "..discordinv)
Invite()
setclipboard(discordinv)
