return {
  'akinsho/bufferline.nvim',
  dependencies = {'nvim-tree/nvim-web-devicons'},
  version = '*',
  opts = { 
    -- = require(bufferline).setup(opts)
    options = {
      mode = 'buffers',
      separator_style = 'thin',
      hover = {
        enabled = true,
        delay = 150,
        reveal = {'close'},
      },
      diagnostics = 'nvim_lsp',
      offsets = {
        {
          filetype = 'NvimTree',
          text = 'NVIM Tree',
          -- text_align = 'left',
          hightlight = 'Directory',
          separator = true,
        }
      }
    },
  },
}
