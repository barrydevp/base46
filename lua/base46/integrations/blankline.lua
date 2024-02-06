local colors = require("base46").get_theme_tb "base_30"

return {
  -- IndentBlanklineChar = { fg = colors.line },
  -- IndentBlanklineSpaceChar = { fg = colors.line },
  -- IndentBlanklineContextChar = { fg = colors.grey },
  -- IndentBlanklineContextStart = { bg = colors.one_bg2 },
  IblChar = { fg = colors.line },
  IblScopeChar = { fg = colors.grey }, -- first indenline in scope only
  IblScopeFirstLine = { bg = colors.one_bg2 },
}
