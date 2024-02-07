local theme = require("core.utils").load_config().ui.statusline.theme

if theme == "custom" then
  return {}
end

local theme_module = "base46.integrations.statusline." .. theme
return require(theme_module)