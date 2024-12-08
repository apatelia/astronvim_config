return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        indent = {
          with_expanders = true, -- if nil and file nesting is enabled, will enable expanders
          expander_collapsed = "",
          expander_expanded = "",
          expander_highlight = "NeoTreeExpander",
        },
      },
    },
  },
  {
    "goolord/alpha-nvim",
    opts = function(_, opts)
      local get_icon = require("astroui").get_icon

      -- customize the dashboard header
      opts.section.header.val = {
        " ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗",
        " ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║",
        " ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║",
        " ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║",
        " ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║",
        " ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝",
      }

      -- customize the dashboard buttons
      opts.section.buttons.val = {
        opts.button("SPC n  ", get_icon("FileNew", 2, true) .. "New File  "),
        opts.button("SPC f f", get_icon("Search", 2, true) .. "Find File  "),
        opts.button("SPC f o", get_icon("DefaultFile", 2, true) .. "Recents  "),
        opts.button("SPC f w", get_icon("WordFile", 2, true) .. "Find Word  "),
        opts.button("SPC f a", get_icon("Environment", 2, true) .. "Configuration  "),
        opts.button("SPC S f", get_icon("Session", 2, true) .. "Find Saved Session  "),
        opts.button("SPC q  ", get_icon("BufferClose", 2, true) .. "Quit  "),
      }
    end,
  },
}
