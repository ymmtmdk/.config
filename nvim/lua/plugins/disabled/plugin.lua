-- setup lazy.vim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" if not vim.loop.fs_stat(lazypath) then
vim.fn.system({
  "git",
  "clone",
  "--filter=blob:none",
  "https://github.com/folke/lazy.nvim.git",
  "--branch=stable", -- latest stable release
  lazypath,
})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "folke/neoconf.nvim",
--   {
--     'williamboman/mason.nvim',
--     lazy = true,
--     cmd = {
--       "Mason",
--       "MasonInstall",
--       "MasonUninstall",
--       "MasonUninstallAll",
--       "MasonLog",
--       "MasonUpdate",
--     },
--   },
--  "williamboman/mason-lspconfig.nvim",
--  "hrsh7th/cmp-nvim-lsp",
  --	"hrsh7th/cmp-buffer",
  --	"hrsh7th/cmp-path",
  --	"hrsh7th/cmp-cmdline",
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("tokyonight").setup({
        transparent = true,
        styles = {
          sidebars = "transparent",
          floats = "transparent",
        },
      })
      vim.cmd[[colorscheme tokyonight-moon]]
    end,
  },
  {
    "folke/noice.nvim",
    lazy = true,
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = true,
    cmd = { "Neotree" },
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  },
  "dstein64/vim-startuptime",
})

