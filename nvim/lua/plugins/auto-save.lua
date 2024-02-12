return {
  "ymmtmdk/auto-save.nvim",
  lazy = false,
  dev = true,
  config = function()
    require("auto-save").setup {
      debounce_delay = 2000,
    }
  end
}
