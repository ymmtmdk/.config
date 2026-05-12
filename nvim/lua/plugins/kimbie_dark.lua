return {
  "ellisonleao/gruvbox.nvim", -- We use a flexible base or a simple setup to apply manual highlights
  lazy = false,
  priority = 1000,
  config = function()
    -- Clear existing highlights
    vim.cmd("highlight clear")
    if vim.fn.exists("syntax_on") then
      vim.cmd("syntax reset")
    end

    vim.o.background = "dark"
    vim.o.termguicolors = true
    vim.g.colors_name = "kimbie_dark"

    -- Define Kimbie Dark Palette
    local colors = {
      bg = "#221a0f",
      fg = "#d3af86",
      sidebar_bg = "#362712",
      status_bg = "#423523",
      cursor = "#d3af86",
      selection = "#84613d",
      line_hl = "#5e452b",
      keyword = "#98676a",
      variable = "#dc3958",
      func = "#8ab1b0",
      class = "#f06431",
      string = "#889b4a",
      number = "#f79a32",
      comment = "#a57a4c",
    }

    local groups = {
      -- Standard Highlight Groups
      Normal = { fg = colors.fg, bg = "NONE" },
      NormalFloat = { fg = colors.fg, bg = "NONE" },
      NormalNC = { fg = colors.fg, bg = "NONE" },
      Cursor = { fg = colors.bg, bg = colors.cursor },
      Visual = { bg = colors.selection },
      CursorLine = { bg = colors.line_hl },
      StatusLine = { fg = colors.fg, bg = colors.status_bg },
      LineNr = { fg = colors.comment, bg = "NONE" },
      CursorLineNr = { fg = colors.class, bg = "NONE" },
      SignColumn = { bg = "NONE" },
      FoldColumn = { bg = "NONE" },
      EndOfBuffer = { fg = colors.bg },
      Comment = { fg = colors.comment, italic = true },
      Keyword = { fg = colors.keyword },
      Function = { fg = colors.func },
      String = { fg = colors.string },
      Number = { fg = colors.number },
      Constant = { fg = colors.number },
      Identifier = { fg = colors.variable },
      Type = { fg = colors.class },
      Statement = { fg = colors.keyword },
      PreProc = { fg = colors.keyword },
      Special = { fg = colors.class },
      NonText = { fg = colors.comment },
      Directory = { fg = colors.func },
      Search = { bg = colors.selection, fg = colors.fg },
    }

    for group, settings in pairs(groups) do
      vim.api.nvim_set_hl(0, group, settings)
    end
  end,
}
