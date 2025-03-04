return {
  "jedrzejboczar/nvim-dap-cortex-debug",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("dap-cortex-debug").setup({
      extension_path = "C:\\Git\\Testing\\cortex-debug",
    })
  end,
}
