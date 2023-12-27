return {
  {
    'm4xshen/autoclose.nvim',
    version = '*',
    config = function()
      require('autoclose').setup()
    end
  },
  { 'windwp/nvim-ts-autotag' },
  { 
    'kylechui/nvim-surround',
    version = '*',
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup()
    end
  },
}
