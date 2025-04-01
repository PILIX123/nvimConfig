return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = {
              allTargets = false,
              extraEnv = {
                CARGO_CFG_NO_BUILD_RS = "0",
              },
            },
            cargo = {
              runBuildScripts = false,
            },
          },
        },
      },
    },
  },
}
