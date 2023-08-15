local lualine_require = require('lualine_require')
local M = lualine_require.require('lualine.component'):extend()

local default_options = {
    style = 'default',
}

function M:init(options)
  M.super.init(self, options)
  self.options = vim.tbl_deep_extend('keep', self.options or {}, default_options)
end

-- This function is taken from the https://github.com/stevearc/vim-arduino
function M:update_status()
    if vim.bo.filetype ~= "arduino" then
        return ""
    end
    local port = vim.fn["arduino#GetPort"]()
    local line = string.format("[%s]", vim.g.arduino_board)
    if vim.g.arduino_programmer ~= "" then
        line = line .. string.format(" [%s]", vim.g.arduino_programmer)
    end
    if port ~= 0 then
        line = line .. string.format(" (%s:%s)", port, vim.g.arduino_serial_baud)
    end
    return line
end

return M
