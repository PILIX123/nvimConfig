-- if true then
--   return {}
-- end
return {
  "navarasu/onedark.nvim",
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("onedark").setup({
      style = "cool",
      colors = {
        lighter_green = "#7fb285",
        lighter_blue = "#4f88B0",
        light_rose = "#d16d9e",
        coral = "#E06C75",
        light_teal = "#56B6C2",
        brown_orange = "#d19a66",
        custom_purple = "#ca72e4",
      },
      highlights = {
        ["@lsp.type.variable"] = { fg = "$coral" },
        ["@lsp.typemod.parameter.functionScope.c"] = { fg = "$light_rose", fmt = "italic" },
        ["@lsp.typemod.variable.globalScope.c"] = { fg = "$lighter_blue" },
        ["@lsp.typemod.variable.fileScope.c"] = { fg = "$light_teal" },
        ["@type.builtin.c"] = { fg = "$custom_purple" },
        ["@lsp.type.macro.c"] = { fg = "$brown_orange" },
        ["@lsp.type.property"] = { fg = "$lighter_green" },
        ["@variable.python"] = { fg = "$coral" },
        ["@variable.parameter.python"] = { fg = "$light_rose", fmt = "italic" },
        ["@variable.member.python"] = { fg = "$lighter_green" },
        ["@variable.builtin.python"] = { fmt = "italic" },
      },
    })
    -- Enable theme
    require("onedark").load()
  end,
}
