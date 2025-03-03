return {
  "jedrzejboczar/nvim-dap-cortex-debug",
  dependencies = {
    "mfussenegger/nvim-dap",
  },
  config = function()
    require("dap-cortex-debug").setup({
      dap_vscode_filetypes = { "c", "cpp", "rs", "rust" },
      extension_path = "C:\\Git\\Testing\\cortex-debug",
    })
    -- local dap = require("dap")
    --
    -- dap.adapters["cortex-debug"] = {
    --   type = "executable",
    --   command = "node",
    --   args = { vim.fn.stdpath("data") .. "/mason/paclages/cortex-debug/extension/dist/debugadapter.js" },
    -- }
  end,
}
