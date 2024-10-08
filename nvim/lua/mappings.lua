require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
--
local opts = { noremap = true, silent = true }
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gi", vim.lsp.buf.implementation, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "gD", vim.lsp.buf.declaration, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>sf", vim.lsp.buf.format, opts)
map("n", "<leader>wa", vim.lsp.buf.workspace_symbol, opts)

map({ "n", "v" }, "K", "5k")
map({ "n", "v" }, "J", "5j")
map({ "n", "v" }, "H", "5h")
map({ "n", "v" }, "L", "5l")

map({ "n", "t" }, "<leader>bx", function()
  local current_bufnr = vim.api.nvim_get_current_buf()
  for _, bufnr in ipairs(vim.t.bufs) do
    if bufnr ~= current_bufnr then
      require("nvchad.tabufline").close_buffer(bufnr)
    end
  end
end, { desc = "Buffer Close all buffers except the current one" })

map("n", "<leader>v", function()
  require("nvchad.term").new { pos = "vsp", size = 0.5, cmd = "neofetch" }
end, { desc = "Terminal new vertical window" })

map({ "n", "t" }, "<A-v>", function()
  require("nvchad.term").toggle { pos = "vsp", id = "vtoggleTerm", size = 0.5, cmd = "neofetch" }
end, { desc = "terminal toggleable vertical term" })
