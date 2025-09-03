local map, opts = vim.keymap.set, { noremap=true, silent=true }

-- Telescope
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", opts)

-- LSP
map("n", "gd", vim.lsp.buf.definition, opts)
map("n", "gr", vim.lsp.buf.references, opts)
map("n", "K",  vim.lsp.buf.hover, opts)
map("n", "<leader>rn", vim.lsp.buf.rename, opts)
map("n", "<leader>ca", vim.lsp.buf.code_action, opts)

-- Format (Conform)
map("n", "<leader>f", function() require("conform").format({ async = true }) end, opts)

-- Neotest
map("n", "<leader>tn", function() require("neotest").run.run() end, { desc = "Nearest test" })
map("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = "File tests" })
map("n", "<leader>ts", function() require("neotest").summary.toggle() end, { desc = "Test summary" })
map("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end, { desc = "Test output" })

