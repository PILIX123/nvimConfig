-- require("nvim-web-devicons").setup({
--   default = true,
--   override = {
--     c = {
--       icon = "",
--       name = "C",
--     },
--   },
-- })
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = true,
        hide_gitignored = false,
        always_show = {
          ".gitignore",
          ".cargo",
          ".vscode",
        },
      },
    },
    default_component_configs = {
      git_status = {
        symbols = {
          modified = "󰙏",
          unstaged = "󰄰",
          staged = "󰄴",
        },
      },
    },
  },
}
