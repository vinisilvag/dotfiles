return {
  {
    "goolord/alpha-nvim",
    config = function()
      require("alpha").setup(require("alpha.themes.dashboard").config)
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    "lewis6991/gitsigns.nvim",
    event = "VeryLazy",
    config = function() require("gitsigns").setup() end,
  },
  -- Comment and uncomment
  {
    "numToStr/Comment.nvim",
    lazy = false,
    config = function() require("Comment").setup({}) end,
  },
  -- Ruler
  {
    "xiyaowong/virtcolumn.nvim",
  },
  -- Bufferline
  {
    "akinsho/bufferline.nvim",
    -- version = "*",
    branch = "main",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          offsets = {
            {
              filetype = "NvimTree",
              text = "",
            },
          },
        },
      })
    end,
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
}
