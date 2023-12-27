return {
  -- Main theme:
  {
    'm4xshen/catppuccinight.nvim',
    name = 'catppuccin',
    opts = {
      flavour = 'mocha',
      custome_higlight = function(colors)
        return {
          VertSplit = { fg = colors.surface0 },
        }
      end,
    },
    init = function()
      vim.cmd.colorscheme('catppuccin')
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        icon_enabled = true,
        theme = 'catppuccin',
        globalstatus = true,
      },
      sections = {
        lualine_c = {}
      },
    },
    init = function()
      vim.opt.showmode = false
    end,
  },
}
