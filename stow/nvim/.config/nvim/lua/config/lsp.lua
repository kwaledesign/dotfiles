local lspconfig = require("lspconfig")
local mason = require("mason")
local mason_lsp = require("mason-lspconfig")
local mt_installer = require("mason-tool-installer")

mason.setup()
mason_lsp.setup({
  ensure_installed = {
    "tsserver","eslint","tailwindcss","html","cssls",
    "jsonls","yamlls","pyright",
  }
})

-- formatters/linters for Conform & nvim-lint
mt_installer.setup({
  ensure_installed = {
    -- formatters
    "prettierd", "prettier", "black",
    -- linters
    "eslint_d", "markdownlint",
    -- python lint/format handled by pipx ruff/black too; mason for nvim path
  },
  auto_update = false,
  run_on_start = true,
})

-- nvim-cmp capabilities
local caps = require("cmp_nvim_lsp").default_capabilities()

for _, s in ipairs({ "tsserver","eslint","tailwindcss","html","cssls","jsonls","yamlls","pyright" }) do
  lspconfig[s].setup({ capabilities = caps })
end

-- completion
local cmp = require("cmp")
local lspkind = require("lspkind")
cmp.setup({
  formatting = {
    format = lspkind.cmp_format({ mode = "symbol_text", maxwidth = 50 })
  },
  snippet = {
    expand = function(args) require("luasnip").lsp_expand(args.body) end
  },
  mapping = cmp.mapping.preset.insert({
    ["<CR>"]      = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
  }),
  sources = {
    { name = "nvim_lsp" }, { name = "buffer" }, { name = "path" }
  }
})

