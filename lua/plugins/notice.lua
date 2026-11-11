return {
  {
    "folke/noice.nvim",
    opts_extend = { "routes" },
    opts = {
      routes = {
        {
          filter = {
            event = "lsp",
            kind = "progress",
            find = "^%S*%s+pyright%s*$",
          },
          opts = { skip = true },
        },
      },
    },
  },
}
