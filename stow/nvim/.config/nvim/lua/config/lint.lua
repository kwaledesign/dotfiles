local lint = require("lint")
lint.linters_by_ft = {
  javascript         = { "eslint_d" },
  typescript         = { "eslint_d" },
  javascriptreact    = { "eslint_d" },
  typescriptreact    = { "eslint_d" },
  markdown           = { "markdownlint" },
  python             = { "ruff" },  -- via pipx or mason path
}
vim.api.nvim_create_autocmd("BufWritePost", { callback = function() lint.try_lint() end })

