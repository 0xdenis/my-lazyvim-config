return {
  {
    "folke/which-key.nvim",
    opts = {
      plugins = {
        spelling = true,
        presets = {
          operators = false,
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      defaults = {
        keymaps = false,
      },
    },
  },
}
