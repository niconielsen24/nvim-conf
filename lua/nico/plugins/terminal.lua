return {
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup({
      size = 15,
      open_mapping = [[<C-\>]], -- Use Ctrl+\ to toggle terminal
      shade_terminals = true,
      direction = "tab", -- Can be "horizontal", "vertical", "float", "tab"
      float_opts = {
        border = "curved",
      },
    })

    -- Keymaps
    vim.api.nvim_set_keymap("n", "<C-t>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<C-t>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })
    vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true }) -- Exit terminal mode
  end,
}
