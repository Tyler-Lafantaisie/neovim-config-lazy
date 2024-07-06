-- hello
--
return{

   { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {"nvim-treesitter/nvim-treesitter", 
     	build = ":TSUpdate"},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
     "folke/trouble.nvim",
     dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    {
    'numToStr/Comment.nvim',
    lazy = false,
    },
    {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
    'smoka7/hop.nvim',
    version = "*",
    opts = {
        keys = 'etovxqpdygfblzhckisuran'
    }
    },
    {
    "aserowy/tmux.nvim",
    config = function() return require("tmux").setup() end
    },
    {
	"L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!).
	build = "make install_jsregexp"
    },
    {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    },
    {
        'mfussenegger/nvim-lint'
    },
    {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    },
    { "folke/neodev.nvim", opts = {} },
    {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
    },
    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
    },
    {
    'willothy/moveline.nvim',
    build = 'make',
    },
    {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
    },
    { "elentok/format-on-save.nvim" },

}
