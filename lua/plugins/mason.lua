return {
  "williamboman/mason.nvim",
  opts = {
    registries = {
      "github:Crashdummyy/mason-registry",
      "github:mason-org/mason-registry",
    },
    ensure_installed = {
      "autopep8",
      "codelldb",
      "html-lsp",
      "lua-language-server",
      "neocmakelsp",
      "prettierd",
      "pyright",
      "roslyn",
      "rust-analyzer",
      "rzls",
      "shfmt",
      "stylua",
    },
  },
}
