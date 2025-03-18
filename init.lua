require("nico.core")
require("nico.lazy")

vim.keymap.set("n", "<leader>pv", function()
  vim.lsp.buf.hover()
end, { noremap = true, silent = true, desc = "Show LSP hover preview" })
