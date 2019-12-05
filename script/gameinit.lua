-- local c = require "gcore.c"
-- local lfs = require "lfs.c"
-- local G = require "gf"
-- require 'servershare/gfdream'
-- local co = require "co"
-- local cfg = {}
-- cfg.W = 1280
-- cfg.H = 720
-- cfg.HALF_W = cfg.W  /2
-- cfg.HALF_H = cfg.H  /2
-- Config = cfg
-- c.SetSizeMode(1)
-- c.SetResourceSize(cfg.W, cfg.H)
-- local image_path = c.GetPath(0x06000000)

-- local recur_add,id

-- recur_add = function(pathID)
-- 	local path = c.GetPath(pathID)
-- 	for f in lfs.dir(path) do
-- 		local dot = string.find(f,'%.')
-- 		if dot == nil then --dir
-- 			id = pathID | (c.ToHexUINT(f) << 16)
-- 			recur_add(id)
-- 		elseif dot == 1 then -- ignore
-- 		else -- file
-- 			id = c.ToHexUINT(f) | pathID | 0x50000000
-- 			--print(f, id)
-- 			c.addImage(id,id)
-- 		end
-- 	end
-- end

-- local w = c.imageSize(0x56100001)
-- c.addImage(0x56000001,0x56000001)
-- --if not w then recur_add(0x06000000) end

-- local g9 = require "o_image"
-- G.loadGrid9(g9)
-- local ft = require "o_font"
-- G.loadFont(ft)
-- local fs = require "o_fontstyle"
-- G.loadFontStyle(fs)

-- require 'servershare/require_o_p'
-- c.SetTextRecording(true)
-- G.SetDefaultAnim('prepare')
-- local function ws_callback(msg)
-- 	print("on_msg", msg)
-- end

-- c.SetMainloop(G.main)


local c = require "gcore.c"
local lfs = require "lfs.c"
local G = require "gf"
local project_name
project_name = G.gameMode()
if not project_name or project_name == "test" or project_name == "-test" or project_name == "battletest" then
    project_name = "dreamland"
end
require 'gfdream'
local co = require "co"
local cfg = {}
cfg.W = 1280
cfg.H = 720
cfg.HALF_W = cfg.W  /2
cfg.HALF_H = cfg.H  /2
Config = cfg
c.SetWinName(' 我的侠客')
c.SetSizeMode(1)
c.SetResourceSize(cfg.W, cfg.H)
G.Restart('project/'..project_name)
-- G.Restart('project/dreamland',G.GetWorkDir())