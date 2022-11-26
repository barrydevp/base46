local colors = require("base46").get_theme_tb "base_30"

-- Scrollbar
return {
    ScrollbarHandle = { fg = colors.none, bg = colors.light_gray },

    ScrollbarCursorHandle = { fg = colors.white, bg = colors.light_gray },
    ScrollbarCursor = { fg = colors.white, bg = colors.none },

    ScrollbarSearchHandle = { fg = colors.orange, bg = colors.light_gray },
    ScrollbarSearch = { fg = colors.orange, bg = colors.none },

    ScrollbarErrorHandle = { fg = colors.error, bg = colors.light_gray },
    ScrollbarError = { fg = colors.error, bg = colors.none },

    ScrollbarWarnHandle = { fg = colors.warning, bg = colors.light_gray },
    ScrollbarWarn = { fg = colors.warning, bg = colors.none },

    ScrollbarInfoHandle = { fg = colors.info, bg = colors.light_gray },
    ScrollbarInfo = { fg = colors.info, bg = colors.none },

    ScrollbarHintHandle = { fg = colors.hint, bg = colors.light_gray },
    ScrollbarHint = { fg = colors.hint, bg = colors.none },

    ScrollbarMiscHandle = { fg = colors.purple, bg = colors.light_gray },
    ScrollbarMisc = { fg = colors.purple, bg = colors.none },
}
