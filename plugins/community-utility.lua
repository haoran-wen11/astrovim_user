return {
  { import = "astrocommunity.utility.noice-nvim" },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- you can enable a preset for easier configuration
      presets = {
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
      routes = {
        {
          filter = {
            event = "msg_show",
            any = {
              { find = "%d+L, %d+B" },
              { find = "; after #%d+" },
              { find = "; before #%d+" },
            },
          },
          view = "mini",
        },
        { filter = { event = "msg_show", find = "AutoSave: saved at%s" }, opts = { skip = true } },
        { filter = { event = "notify", find = "No information available" }, opts = { skip = true } },
        { filter = { event = "msg_show", find = "DB: Query%s" }, opts = { skip = true } },
      },
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },
      health = {
        checker = true, -- Disable if you don't want health checks to run
      },
    },
  },
}
