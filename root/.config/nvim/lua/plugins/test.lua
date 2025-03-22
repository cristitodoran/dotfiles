return {
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      "nvim-neotest/neotest-jest",
    },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "yarn test --",
          jestConfigFile = function()
            local file = vim.fn.expand("%:p")
            if string.find(file, "/__tests__/") then
              return string.match(file, "(.-/[^/]+/)__tests__") .. "jest.config.js"
            end
            if string.find(file, "/src/") then
              return string.match(file, "(.-/[^/]+/)src") .. "jest.config.js"
            end

            return vim.fn.getcwd() .. "/jest.config.js"
          end,
          env = { CI = true },
          cwd = function()
            local file = vim.fn.expand("%:p")
            if string.find(file, "/__tests__/") then
              return string.match(file, "(.-/[^/]+/)__tests__")
            end
            if string.find(file, "/src/") then
              return string.match(file, "(.-/[^/]+/)src")
            end
            return vim.fn.getcwd()
          end,
        })
      )
    end,
  },
}
