return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
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
