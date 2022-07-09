local M = {}

M.ui = {
   hl_override = {},
   changed_themes = {},
   theme_toggle = { "onedark", "one_light" },
   theme = "radium", -- default theme
   transparency = false,
}

M.get_theme_tb = function(type)
   local name = M.ui.theme
   local default_path = "base46.themes." .. name

   local present1, default_theme = pcall(require, default_path)

   if present1 then
      return default_theme[type]
   else
      error "No such theme bruh >_< "
   end
end

M.get_colors = function(type)
   return M.get_theme_tb(type)
end

M.merge_tb = function(table1, table2)
   return vim.tbl_deep_extend("force", table1, table2)
end

--  credits to https://github.com/max397574 for this function
M.clear_highlights = function(hl_group)
   local highlights_raw = vim.split(vim.api.nvim_exec("filter " .. hl_group .. " hi", true), "\n")
   local highlight_groups = {}

   for _, raw_hi in ipairs(highlights_raw) do
      table.insert(highlight_groups, string.match(raw_hi, hl_group .. "%a+"))
   end

   for _, highlight in ipairs(highlight_groups) do
      vim.cmd([[hi clear ]] .. highlight)
   end
end

M.load_theme = function(theme)
   -- set bg option
   M.ui.theme = theme
   local theme_type = M.get_theme_tb("type") -- dark/light
   vim.opt.bg = theme_type

   -- clear highlights of bufferline (cuz of dynamic devicons hl group on the buffer)
   local highlights_raw = vim.split(vim.api.nvim_exec("filter BufferLine hi", true), "\n")
   local highlight_groups = {}
   M.clear_highlights "BufferLine"
   M.clear_highlights "TS"

   for _, raw_hi in ipairs(highlights_raw) do
      table.insert(highlight_groups, string.match(raw_hi, "BufferLine%a+"))
   end

   for _, highlight in ipairs(highlight_groups) do
      vim.cmd([[hi clear ]] .. highlight)
   end
   -- above highlights clear code by https://github.com/max397574

   -- reload highlights for theme switcher
   require("plenary.reload").reload_module "base46.integrations"
   require("plenary.reload").reload_module "base46.chadlights"

   require "base46.chadlights"
end

M.override_theme = function(default_theme, theme_name)
   local changed_themes = M.ui.changed_themes

   if changed_themes[theme_name] then
      return M.merge_tb(default_theme, changed_themes[theme_name])
   else
      return default_theme
   end
end

return M
