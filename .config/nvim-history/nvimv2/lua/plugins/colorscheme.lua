return{
  -- {
  -- "folke/tokyonight.nvim",
  -- lazy = false,
  -- priority = 1000,
  -- opts = {},
  -- config = function()
  --   vim.cmd([[colorscheme tokyonight]])
  --   end
  -- },
  -- {
  --   "cocopon/iceberg.vim",
  --   enabled = false,
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme iceberg]])
  --     -- vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
  --     -- vim.cmd([[hi Comment gui=italic]])
  --   end,
  -- },
  -- {
  --   "arrow2nd/aqua",
  --   -- dir = "~/workspace/github.com/arrow2nd/aqua",
  --   enabled = false,
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme aqua]])
  --   end,
  -- },
  -- 
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   lazy=false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme catppuccin]])
  --   end,
  -- },
  --
  -- { 
  --   'olivercederborg/poimandres.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('poimandres').setup {
  --       -- leave this setup function empty for default config
  --       -- or refer to the configuration section
  --       -- for configuration options
  --     }
  --   end,
  --
  --   -- optionally set the colorscheme within lazy config
  --   init = function()
  --     vim.cmd("colorscheme poimandres")
  --   end
  -- },
  --
   { 
     'olivercederborg/poimandres.nvim',
     lazy = false,
     priority = 1000,
     config = function()
       vim.cmd("colorscheme poimandres")
     end,
  
     -- optionally set the colorscheme within lazy config
    
   },
  
  -- 
  -- {
  --   "arrow2nd/minai",
  --   -- dir = "~/workspace/github.com/arrow2nd/minai",
  --   enabled = true,
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd([[colorscheme minai]])
  --   end,
  -- },
} 
