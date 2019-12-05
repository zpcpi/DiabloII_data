--[[4001

]]
local G = require "gf"
local lfs = require "lfs.c"
local L = {}
local t = G.api
local string_存放目录 = string.gsub(G.WritePath('project'), "\\", "/")
local string_版本库地址 = 'http://192.168.112.148:3000/mingchen/loader_test'

t['loader_init'] = function()
    G.start_program('loader_check_local')
end

t['loader_check_local'] = function()
    G.call('update_process_ui', nil, nil, '正在检查本地文件')
    if G.IsDirExist(string_存放目录) then
        if G.IsDirExist(string_存放目录.."/.dh") then
            G.call('loader_update', string_存放目录, string_版本库地址)
            return
        end
    end
    G.call('loader_download', string_存放目录, string_版本库地址)
end

t['loader_download'] = function()
    G.call('update_process_ui', nil, nil, '正在清理下载目录')
    G.RemoveFolder(string_存放目录, 'keepRoot')
    G.call('update_process_ui', nil, nil, '正在下载资源')
    G.add_cmd("", t.git_clone_cb, "clone", string_版本库地址, string_存放目录, nil, nil)
end

t['loader_update'] = function()
    G.call('update_process_ui', nil, nil, '正在检查更新')
    G.add_cmd(string_存放目录.."/.dh", t.git_fetch_cb, "fetch", "origin", "master", nil, nil)
    -- G.add_cmd(string_存放目录.."/.dh", t.git_merge_cb, "merge", "origin/master", nil, nil, nil)
end

t['format_percent'] = function(string_info, string_key)
    local int_pos
    local int_percent = 0
    if not (string_info and string_key) then
        return 0, string_info
    end
    int_pos = string.find(string_info, string_key)
    if int_pos then
        string_info = string.sub(string_info, int_pos)
        int_pos = string.find(string_info, "%%")
        if int_pos then
            int_percent = string.sub(string_info, int_pos - 3, int_pos - 1)
            int_percent = tonumber(int_percent)
        end
    end
    return int_percent
end

function t.git_clone_cb(msg)
    local msg_t
    local int_net_percent
    local int_idx_percent
    local int_chk_percent
    local int_cur_size
    msg_t = G.string_split(msg, "\n")
    for i = 1, #msg_t do
        print(msg_t[i])

        if msg_t[i] ~= "" then
            if string.find(msg_t[i], "libgit error") then

            else
                -- 找当前下载大小
                local pos1, pos2
                pos1 = string.find(msg_t[i], "%(")
                pos2 = string.find(msg_t[i], "kb")
                if pos1 and pos2 then
                    int_cur_size = string.sub(msg_t[i], pos1 + 1, pos2 - 1)
                    int_cur_size = string.gsub(int_cur_size, " ", "")
                end
                -- 找第一个百分比
                int_net_percent = G.call('format_percent', msg_t[i], "net")
                -- 找第二个百分比
                int_idx_percent = G.call('format_percent', msg_t[i], "idx")
                -- 找第三个百分比
                int_chk_percent = G.call('format_percent', msg_t[i], "chk")
                int_net_percent = math.floor((int_net_percent + int_idx_percent) / 2)
            end
        end
        G.call('update_process_ui', int_net_percent, int_cur_size, nil, int_chk_percent)
    end
    if G.get_git_state() == "idle" then
        -- 找到 .git 目录, 将其重命名为 .dh
        if G.IsDirExist(string_存放目录) and G.IsDirExist(string_存放目录.."/.dh") then
            G.Restart('dreamland', string_存放目录)
        else
            G.start_program('loader_download')
        end
        G.cmd_end()
    end
end

function t.git_fetch_cb(msg)
    local msg_t
    msg_t = G.string_split(msg, "\n")
    for i = 1, #msg_t do
        print(msg_t[i])
    end
    if G.get_git_state() == "idle" then
        G.Restart('dreamland', string_存放目录)
        G.cmd_end()
    end
end

function t.git_merge_cb(msg)
    local msg_t
    msg_t = G.string_split(msg, "\n")
    for i = 1, #msg_t do
        print(msg_t[i])
    end
    if G.get_git_state() == "idle" then
        G.cmd_end()
    end
end

function t.update_process_ui(percent, curr_size, tips)
end