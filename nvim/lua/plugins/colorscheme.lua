return {
  "projekt0n/github-nvim-theme",
  lazy = false, -- Para asegurarte de que el tema esté disponible al inicio
  priority = 1000,
  config = function()
    require("github-theme").setup({
      options = {
        transparent = false, -- Activa fondo transparente si lo deseas
        terminal_colors = true,
      },
    })
  end,
}
