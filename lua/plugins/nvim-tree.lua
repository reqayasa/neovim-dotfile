return {
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons'
    },
    keys = {
      { '<leader>ee', '<cmd>NvimTreeToggle<CR>' },
      { '<leader>ef', '<cmd>NvimTreeFindFileToggle<CR>' },
      { '<leader>ec', '<cmd>NvimTreeCollapse<CR>' },
      { '<leader>er', '<cmd>NvimTreeRefresh<CR>' },
    },
    config = function()
      -- Disable netrw
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- Set termguicolors to enable highlight groups
      vim.opt.termguicolors = true

      require('nvim-tree').setup(
        {
          sort = {
            sorter = 'case_sensitive',
          },
          view = {
            width = 30,
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            dotfiles = true,
          },
        }
      )
    end
  },
}
