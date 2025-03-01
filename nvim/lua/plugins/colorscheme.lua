return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        transparent = true,
        terminal_colors = false,
      },
      groups = {
        all = {
          NeoTreeFileName = { fg = "#d29922", bold = true },
          NeoTreeDirectoryName = { fg = "#58a6ff" },
          NeoTreeFileNameOpened = { fg = "#ff7b72", bold = true },
          NeoTreeCursorLine = { bg = "#30363d" },
        },
      },
    })
    vim.cmd("colorscheme github_dark_colorblind")
  end,
}
