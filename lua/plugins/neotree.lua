return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = true,
        hide_gitignored = false,
        always_show = {
          ".gitignore",
          ".cargo",
        },
      },
    },
  },
}
