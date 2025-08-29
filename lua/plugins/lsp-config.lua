return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      clangd = {
        cmd = {
          "clangd",
          "--background-index",
          "--query-driver=c:\\PROGRA~2\\ARMGNU~1\\14EFD8~1.2RE\\bin\\AR19DD~1.EXE",
        },
        keys = {
          {
            "<leader>ch",
            function()
              local params = { uri = vim.uri_from_bufnr(0) }
              vim.lsp.buf_request(0, "textDocument/switchSourceHeader", params, function(err, result)
                if err then
                  vim.notify("Error switching to source/header" .. err.message, vim.log.levels.ERROR)
                  return
                end
                if not result or result == "" then
                  vim.notify("No corresponding file found", vim.log.levels.WARN)
                  return
                end
                vim.cmd("edit " .. vim.uri_to_fname(result))
              end)
            end,
            desc = "Switch to source/header",
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              allTargets = false,
            },
            cargo = {
              features = { "skip-build-script" },
              runBuildScripts = false,
            },
          },
        },
      },
    },
  },
}
