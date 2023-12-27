return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter.configs').setup({
        auto_install = true,
        ensure_installed = {
          'lua',
          'vim',
          'vimdoc',
          'comment',
          'bash',
          'javascript',
          'typescript',
          'html',
          'css',
          'scss',
          'tsx',
          'dockerfile',
          'json',
          'php',
          'sql',
        },
        highlight = { enable = true },
        indent = { enable = true },
        autotag = { enable = true },
      })
    end,
  }
}
