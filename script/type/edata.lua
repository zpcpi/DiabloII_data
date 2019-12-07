local d = require '_data'
local L = require '_lang'
local t = d.new_type('string', 1)

function t.edit_type(cur_tp)
	local lst = {}
	for k,v in pairs(t) do
		if string.find(k, 'edata') == 1 then
			table.insert(lst, k)
		end
	end
	table.sort(lst)
	local nv, idx = d.combobox('edatalst',lst,cur_tp,d.tab_w)
	if nv ~= cur_tp then
		return nv
	end
end

function t.is_mod(typestr)
	return string.find(typestr, 'edata') == 1
end

function t.to_str(od)
    if od.obj == nil then return '' end

    local enum = t[od.desc.type]
    return ((enum[od.obj] or {})['name'] or '') .. ':' .. od.obj
end

function t.edit(od, w)
	local w = w or d.tab_w
	local enum = t[od.desc.type]
    local v_idx = d.index(enum, od.obj)
    
    local lst = {}
    local count = 1
    for k, v in pairs(enum or {}) do
        lst[count] = {
            ['name'] = v['name'],
            ['value'] = k,
            ['desc'] = v['desc'],
        }
        count = count + 1
    end
    local f = function()
		return lst
    end 
    table.sort(lst, function(a,b)
        return a['name'] < b['name']
    end)
	local nv,idx = d.combopopup(od.k, f, {'name', 'value', 'desc'}, od.pobj ,w, nil, tostring(od.pobj)..tostring(od.k) )
	if idx then
		d.update_value(od, lst[idx]['value'])
	end
end

return t

















