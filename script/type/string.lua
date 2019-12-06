local d = require '_data'
local L = require '_lang'
local t = {}

t.base_type = 'string'
t.edit_type = 1

function t.type_match(od)
    return type(od.obj) == 'string'
end

function t.to_str(od)
    return tostring(od.obj)
end

function t.edit(od)
	if imgui.Button(L.advanced) then
		d.open_popup("adv_text",od)
	end
	imgui.SameLine()
	local w = imgui.GetAvailWidthLua()
	if w < d.tab_w then
		w = d.tab_w
	end

	if d.double_select then
        d.double_select = false
        imgui.SetKeyboardFocusHere()
	end
	local ret = imgui.InputTextSimple(od.k,od.obj,1,w)
	local oldstr = od.obj
    if ret then
	    d.update_value(od, ret)
		if od.desc.cb then
			od.desc.cb(od, oldstr)
		end
    end
end

function t.new(od)
    d.update_value(od, '')
end

function t.save(od, l)
	if type(od.obj) == 'boolean' then 
		table.insert(l, tostring(od.obj))
	elseif type(od.obj) == 'nil' then
		table.insert(l, nil)
	else
		table.insert(l, '[==[' .. od.obj .. ']==]')
	end
end

return t