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
