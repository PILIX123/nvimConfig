return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    { "nvim-telescope/telescope.nvim", version = "*", dependencies = { "nvim-lua/plenary.nvim" } },
  },
  lazy = false,
  keys = {
    { ",v", "<cmd>VenvSelect<cr>" },
  },
  ---@type venv-selector.Config
  opts = {
    -- Your settings go here
    options = {
      log_level = "TRACE",
    },
    search = {
      cwd_windows = {
        command = "$FD bin\\\\python.exe$ $CWD --full-path --color never -HI -a -L",
      },
    },
  },
}
