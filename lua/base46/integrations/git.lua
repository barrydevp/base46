local theme = require("base46").get_theme_tb "base_16"
local colors = require("base46").get_theme_tb "base_30"

return {

   DiffAdd = {
      bold = true,
      fg = colors.green,
   },

   DiffAdded = {
      bold = true,
      fg = colors.green,
   },

   DiffChange = {
      bold = true,
      fg = colors.blue,
   },

   DiffChangeDelete = {
      bold = true,
      fg = colors.red,
   },

   DiffModified = {
      bold = true,
      fg = colors.orange,
   },

   DiffDelete = {
      bold = true,
      fg = colors.red,
   },

   DiffRemoved = {
      bold = true,
      fg = colors.red,
   },

   DiffText = {
      bold = true,
      fg = colors.purple,
   },

   -- git commits
   gitcommitOverflow = {
      fg = theme.base08,
   },

   gitcommitSummary = {
      fg = theme.base08,
   },

   gitcommitComment = {
      fg = theme.base03,
   },

   gitcommitUntracked = {
      fg = theme.base03,
   },

   gitcommitDiscarded = {
      fg = theme.base03,
   },

   gitcommitSelected = {
      fg = theme.base03,
   },

   gitcommitHeader = {
      fg = theme.base0E,
   },

   gitcommitSelectedType = {
      fg = theme.base0D,
   },

   gitcommitUnmergedType = {
      fg = theme.base0D,
   },

   gitcommitDiscardedType = {
      fg = theme.base0D,
   },

   gitcommitBranch = {
      fg = theme.base09,
      bold = true,
   },

   gitcommitUntrackedFile = {
      fg = theme.base0A,
   },

   gitcommitUnmergedFile = {
      fg = theme.base08,
      bold = true,
   },

   gitcommitDiscardedFile = {
      fg = theme.base08,
      bold = true,
   },

   gitcommitSelectedFile = {
      fg = theme.base0B,
      bold = true,
   },
}
