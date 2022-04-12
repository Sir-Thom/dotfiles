local awful = require('awful')
local conf = awful.util.getdir('config')
local icon = conf .. '/icons/'

local icons = {}

icons.png = {
   --me = icon .. "me.png",
   desktop = icon .. "desktop.svgg",
   folder = icon .. "folder.svgg",
   --internet = icon .. "internet.svg",
   trashbin = icon .. "trashbin.svg",
--   awesome = icon .. "awesome.png"
}

return icons
