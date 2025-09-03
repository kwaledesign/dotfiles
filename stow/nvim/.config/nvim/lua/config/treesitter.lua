require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "tsx","typescript","javascript","json","css","html","lua",
    "python","markdown","markdown_inline"
  },
  highlight = { enable = true },
  indent = { enable = true },
})

