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
