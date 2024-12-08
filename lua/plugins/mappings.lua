return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          -- Moving Lines
          ["<A-j>"] = { "<CMD>m .+1<CR>", desc = "Move line down" },
          ["<A-k>"] = { "<Cmd>m .-2<CR>", desc = "Move line up" },
          ["<C-S-Up>"] = { "<CMD>m .-2<CR>", desc = "Move line up" },
          ["<C-S-Down>"] = { "<CMD>m .+1<CR>", desc = "Move line down" },

          -- Change desCRiption for SudaWrite.
          ["<Leader>W"] = { "<CMD>SudaWrite<CR>", desc = "Write as Admin" },

          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },

          -- mappings for Search/Replace using grug-far.
          ["<Leader>s"] = false,
          ["<Leader>ss"] = false,
          ["<Leader>se"] = false,
          ["<Leader>sw"] = false,
          ["<Leader>sf"] = false,
          ["<Leader>r"] = { desc = "󰛔 Search/Replace" },
          ["<Leader>rs"] = {
            function() require("grug-far").open() end,
            desc = "Search/Replace in workspace",
          },
          ["<Leader>re"] = {
            function()
              local ext = require("astrocore.buffer").is_valid() and vim.fn.expand "%:e" or ""
              require("grug-far").open { prefills = { filesFilter = ext ~= "" and "*." .. ext or nil } }
            end,
            desc = "Search/Replace in filetype",
          },
          ["<Leader>rw"] = {
            function() require("grug-far").open { prefills = { search = vim.fn.expand "<cword>" } } end,
            desc = "Search/Replace word under cursor",
          },
          ["<Leader>rf"] = {
            function() require("grug-far").open { prefills = { paths = vim.fn.expand "%" } } end,
            desc = "Search/Replace in current file",
          },

          -- additional mappings for terminal
          ["<C-`>"] = { '<CMD>execute v:count . "ToggleTerm"<CR>', desc = "Toggle terminal" },

          -- mappings seen under group name "Test"
          ["<Leader>T<CR>"] = false,
          ["<Leader>Ts"] = { function() require("neotest").summary.toggle() end, desc = "Test Summary" },
          ["<Leader>Ta"] = {
            function() require("neotest").playwright.attachment() end,
            desc = "Launch test attachment",
          },

          -- Disable list management
          ["<Leader>x"] = false,
          ["<Leader>xl"] = false,
          ["<Leader>xq"] = false,
        },
        i = {
          ["<C-`>"] = { "<Esc><CMD>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<A-j>"] = { "<CMD>m .+1<CR>", desc = "Move selection down" },
          ["<A-k>"] = { "<CMD>m .-2<CR>", desc = "Move selection up" },
          ["<C-S-Up>"] = { "<CMD>m .-2<CR>", desc = "Move selection up" },
          ["<C-S-Down>"] = { "<CMD>m .+1<CR>", desc = "Move selection down" },
        },
        t = {
          ["<C-`>"] = { "<CMD>ToggleTerm<CR>", desc = "Toggle terminal" },
        },
        v = {
          ["<C-`>"] = { "<CMD>ToggleTerm<CR>", desc = "Toggle terminal" },
          ["<A-j>"] = { "<CMD>m .+1<CR>", desc = "Move selection down" },
          ["<A-k>"] = { "<CMD>m .-2<CR>", desc = "Move selection up" },
          ["<C-S-Up>"] = { "<CMD>m .-2<CR>", desc = "Move selection up" },
          ["<C-S-Down>"] = { "<CMD>m .+1<CR>", desc = "Move selection down" },
        },
      },
    },
  },
}
