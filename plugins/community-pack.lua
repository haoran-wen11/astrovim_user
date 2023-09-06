return {
  (vim.fn.executable "python" == 1 or vim.fn.executable "python3" == 1) and { import = "astrocommunity.pack.python" }
    or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.docker" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.json" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.yaml" } or {},
  vim.fn.executable "npm" == 1 and { import = "astrocommunity.pack.toml" } or {},
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.full-dadbod" },
  {
    "kristijanhusak/vim-dadbod-ui",
    init = function()
      vim.g.db_ui_auto_execute_table_helpers = 1
      vim.g.db_ui_execute_on_save = 0
      vim.g.db_ui_win_position = "right"
      vim.g.db_ui_show_database_icon = 1
      vim.g.db_ui_use_nerd_fonts = 1
      vim.g.db_ui_force_echo_notifications = 1
    end,
  },
}
