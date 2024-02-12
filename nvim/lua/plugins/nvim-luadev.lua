return {
  "bfredl/nvim-luadev",
  lazy = false,
  config = function()
    vim.keymap.set('n', '<Leader>l', '<Plug>(Luadev-RunLine)', { silent = true })
    vim.keymap.set('n', '<Leader>r', '<Plug>(Luadev-Run)', { silent = true })
    vim.keymap.set('v', '<Leader>r', '<Plug>(Luadev-Run)', { silent = true })
    vim.keymap.set('n', '<Leader>e', '<Plug>(Luadev-RunWord)', { silent = true })
  end
}
