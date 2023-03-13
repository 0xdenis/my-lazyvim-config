-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("n", "<leader>wp", "<C-W>p", { desc = "Other window" })
map("n", "<leader>ww", "<cmd>w<cr>", { desc = "Save Current Buffer" })
map("n", "<leader>wa", "<cmd>wa<cr>", { desc = "Save All" })
map("n", "<leader>qq", "<cmd>q<cr>", { desc = "Close Window" })
map("n", "<leader>qa", "<cmd>qa<cr>", { desc = "Close All" })

-- windows
map("n", "<leader>wc", "<C-W>c", { desc = "Delete window" })

-- tabs
require("which-key").register({
  ["<leader>t"] = { name = "tabs" },
  ["<leader><tab>"] = "which_key_ignore",
})
map("n", "<leader>tl", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader>tf", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader>tt", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader>t]", "<cmd>tabnext<cr>", { desc = "Next Tab" })
map("n", "<leader>t[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader>td", "<cmd>tabclose<cr>", { desc = "Close Tab" })
