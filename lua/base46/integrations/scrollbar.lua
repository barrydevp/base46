local colors = require("base46").get_theme_tb "base_30"

-- Scrollbar
return {
    ScrollbarHandle = { fg = colors.none, bg = colors.one_bg3 },

    ScrollbarCursorHandle = { fg = colors.light_grey, bg = colors.one_bg3 },
    ScrollbarCursor = { fg = colors.white, bg = colors.none },

    ScrollbarSearchHandle = { fg = colors.orange, bg = colors.one_bg3 },
    ScrollbarSearch = { fg = colors.orange, bg = colors.none },

    ScrollbarErrorHandle = { fg = colors.error, bg = colors.one_bg3 },
    ScrollbarError = { fg = colors.error, bg = colors.none },

    ScrollbarWarnHandle = { fg = colors.warning, bg = colors.one_bg3 },
    ScrollbarWarn = { fg = colors.warning, bg = colors.none },

    ScrollbarInfoHandle = { fg = colors.info, bg = colors.one_bg3 },
    ScrollbarInfo = { fg = colors.info, bg = colors.none },

    ScrollbarHintHandle = { fg = colors.hint, bg = colors.one_bg3 },
    ScrollbarHint = { fg = colors.hint, bg = colors.none },

    ScrollbarMiscHandle = { fg = colors.purple, bg = colors.one_bg3 },
    ScrollbarMisc = { fg = colors.purple, bg = colors.none },
}
