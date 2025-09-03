local neotest = require("neotest")
neotest.setup({
  adapters = {
    require("neotest-jest")({
      jestCommand = "npm test --",
      jestConfigFile = "jest.config.js",
      env = { CI = true },
      cwd = function() return vim.fn.getcwd() end,
    }),
    require("neotest-vitest")({}),
    require("neotest-python")({
      runner = "pytest",
      dap = { justMyCode = false },
    }),
  },
})

