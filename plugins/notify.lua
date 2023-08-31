return {
  "rcarriga/nvim-notify",
  opts = function(_, opts)
    local newOpt = {
      timeout = 0,
    }
    if vim.g.transparent_background then newOpt.background_colour = "#24273a" end
    return require("astronvim.utils").extend_tbl(opts, newOpt)
  end,
}
