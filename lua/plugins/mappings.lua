return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },

          -- mappings seen under group name "Test"
          ["<Leader>Ts"] = { function() require('neotest').summary.toggle() end, desc = "Test Summary" },
          ["<Leader>Ta"] = { function() require('neotest').playwright.attachment() end, desc = "Launch test attachment" },
        },
      },
    },
  },
}
