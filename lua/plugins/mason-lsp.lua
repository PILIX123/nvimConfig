local mason_config = {
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
}
return {
  "mason-org/mason-lspconfig.nvim",
  dependencies = {
    { "mason-org/mason.nvim", opts = mason_config },
    "neovim/nvim-lspconfig",
  },
  ensure_installed = { "pyright" },
}
