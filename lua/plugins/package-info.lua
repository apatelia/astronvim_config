return {
  {
    "vuki656/package-info.nvim",
    ft = "json",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
      colors = {
        invalid = "#db4b4b",
        outdated = "#ff9900",
        up_to_date = "#39e600",
      },
      hide_up_to_date = false,
    },
    config = function(_, opts)
      require("package-info").setup(opts)

      -- manually register color.
      vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. opts.colors.outdated)
      vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. opts.colors.up_to_date)
      vim.cmd([[highlight PackageInfoInvalidVersion guifg=]] .. opts.colors.invalid)
    end,
  },
}
