return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false, 
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      -- ハイライトを有効にする
      highlight = {
        enable = true,
      }
    })
  end
}

