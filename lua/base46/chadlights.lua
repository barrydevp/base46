local base46 = require "base46"
local merge_tb = base46.merge_tb
local ui = base46.ui

local highlights = {}
local hl_dir = vim.fn.stdpath "data" .. "/site/pack/packer/opt/base46/lua/base46/integrations"

-- push hl_dir file names to table
local hl_files = require("plenary.scandir").scan_dir(hl_dir, {})

for _, file in ipairs(hl_files) do
  local a = vim.fn.fnamemodify(file, ":t")
  a = vim.fn.fnamemodify(a, ":r")

  local integration = require("base46.integrations." .. a)
  highlights = merge_tb(highlights, integration)
end

-- polish theme specific highlights
local polish_hl = require("base46").get_colors "polish_hl"

if polish_hl then
  highlights = merge_tb(highlights, polish_hl)
end

-- override user highlights if there are any
if ui.hl_override then
  local user_highlights = ui.hl_override
  local colors = require("base46").get_colors "base_30"

  -- fg = "white" set by user becomes fg = colors["white"]
  -- so no need for the user to import colors

  for group, _ in pairs(user_highlights) do
    for key, val in pairs(user_highlights[group]) do
      if key == "fg" or key == "bg" then
        if val:sub(1, 1) == "#" or val == "none" or val == "NONE" then
          user_highlights[group][key] = val
        else
          user_highlights[group][key] = colors[val]
        end
      end
    end
  end

  highlights = merge_tb(highlights, user_highlights)
end

-- local set_transparent = nvchad.load_config().ui.transparency
if ui.transparency then
  highlights = merge_tb(highlights, require "nv_glassy")
end

-- finally set all highlights :D
for hl, col in pairs(highlights) do
  vim.api.nvim_set_hl(0, hl, col)
end
