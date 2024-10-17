return {
  "ymmtmdk/auto-save.nvim",
  lazy = false,
  -- dev = true,
  config = function()
    require("auto-save").setup {
      -- debounce_delay = 1000,
      -- trigger_events = { "InsertLeave", "TextChanged", "FocusLost", "TabLeave", "BufLeave" },
    }
  end
}



-- aaa aaaa [[[
