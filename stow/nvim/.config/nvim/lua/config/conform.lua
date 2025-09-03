require("conform").setup({
  formatters_by_ft = {
    javascript         = { "prettierd", "prettier" },
    typescript         = { "prettierd", "prettier" },
    javascriptreact    = { "prettierd", "prettier" },
    typescriptreact    = { "prettierd", "prettier" },
    json               = { "prettierd", "prettier" },
    yaml               = { "prettierd", "prettier" },
    markdown           = { "prettierd", "prettier" },
    python             = { "black" },
  },
  format_on_save = function()
    return { lsp_fallback = true, timeout_ms = 2000 }
  end,
})

