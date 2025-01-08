return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["j"] = { "gj" },
          ["k"] = { "gk" },
          -- Moving Lines
          ["<A-j>"] = { "<CMD>m .+1<CR>", desc = "Move line down" },
          ["<A-k>"] = { "<Cmd>m .-2<CR>", desc = "Move line up" },
          ["<C-S-Up>"] = { "<CMD>m .-2<CR>", desc = "Move line up" },
          ["<C-S-Down>"] = { "<CMD>m .+1<CR>", desc = "Move line down" },

          -- Change desCRiption for SudaWrite.
          ["<Leader>W"] = { "<CMD>SudaWrite<CR>", desc = "Write as Admin" },

          -- mappings seen under group name "Buffer"
          ["<Leader>bn"] = { function() require("astrocore.buffer").nav(vim.v.count1) end, desc = "Next buffer" },
          ["<Leader>bp"] = { function() require("astrocore.buffer").nav(-vim.v.count1) end, desc = "Previous buffer" },

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

          ["<Leader>N"] = { desc = "󰏔 Node Packages" },
          ["<Leader>Ni"] = {
            function() require("package-info").install() end,
            desc = "Install new package",
            silent = true,
            noremap = true,
          },
          ["<Leader>Nc"] = {
            function() require("package-info").change_version() end,
            desc = "Change package version",
            silent = true,
            noremap = true,
          },
          ["<Leader>Nu"] = {
            function() require("package-info").update() end,
            desc = "Update package",
            silent = true,
            noremap = true,
          },
          ["<Leader>Nd"] = {
            function() require("package-info").delete() end,
            desc = "Delete package",
            silent = true,
            noremap = true,
          },
          ["<Leader>Nr"] = {
            function() require("package-info").show { force = true } end,
            desc = "Refresh all packages info",
            silent = true,
            noremap = true,
          },
          ["<Leader>Nt"] = {
            function() require("package-info").toggle() end,
            desc = "Toggle package info",
            silent = true,
            noremap = true,
          },
          ["<Leader>No"] = {
            "<CMD>Telescope package_info<CR>",
            desc = "All operations",
            silent = true,
            noremap = true,
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
          ["j"] = { "gj" },
          ["k"] = { "gk" },
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
