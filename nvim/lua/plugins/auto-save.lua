return {
  "ymmtmdk/auto-save.nvim",
  lazy = false,
  config = function()
    require("auto-save").setup {
      debounce_delay = 1000,
    }
  end
}
