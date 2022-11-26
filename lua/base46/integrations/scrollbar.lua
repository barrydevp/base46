local colors = require("base46").get_theme_tb "base_30"

-- Scrollbar
return {
    ScrollbarHandle = { fg = colors.none, bg = colors.white },

    ScrollbarCursorHandle = { fg = colors.blue, bg = colors.white },
    ScrollbarCursor = { fg = colors.blue, bg = colors.none },

    ScrollbarSearchHandle = { fg = colors.orange, bg = colors.white },
    ScrollbarSearch = { fg = colors.orange, bg = colors.none },

    ScrollbarErrorHandle = { fg = colors.error, bg = colors.white },
    ScrollbarError = { fg = colors.error, bg = colors.none },

    ScrollbarWarnHandle = { fg = colors.warning, bg = colors.white },
    ScrollbarWarn = { fg = colors.warning, bg = colors.none },

    ScrollbarInfoHandle = { fg = colors.info, bg = colors.white },
    ScrollbarInfo = { fg = colors.info, bg = colors.none },

    ScrollbarHintHandle = { fg = colors.hint, bg = colors.white },
    ScrollbarHint = { fg = colors.hint, bg = colors.none },

    ScrollbarMiscHandle = { fg = colors.purple, bg = colors.white },
    ScrollbarMisc = { fg = colors.purple, bg = colors.none },
}
