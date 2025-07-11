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
      },
      highlights = {
        ["@lsp.type.variable"] = { fg = "$coral" },
        ["@lsp.typemod.parameter.functionScope.c"] = { fg = "$light_rose", fmt = "italic" },
        ["@lsp.typemod.variable.globalScope.c"] = { fg = "$lighter_blue" },
        ["@lsp.type.property"] = { fg = "$lighter_green" },
      },
    })
    -- Enable theme
    require("onedark").load()
  end,
}
