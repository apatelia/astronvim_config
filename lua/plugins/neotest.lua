return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "thenbe/neotest-playwright",
      "Issafalcon/neotest-dotnet"
    },
    ft = {
      "typescript",
      "javascript",
    },
    config = function()
      require('neotest').setup({
        adapters = {
          require('neotest-playwright').adapter({
            options = {
              persist_project_selection = true,
              enable_dynamic_test_discovery = true,
            },
          }),
          require('neotest-dotnet')
        },
        consumers = {
          playwright = require('neotest-playwright.consumers').consumers,
        },
      })
    end,
  }
}
