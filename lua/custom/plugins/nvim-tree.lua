return {
  'nvim-tree/nvim-tree.lua',
  config = function()
    -- disable netrw at the very start of your init.lua
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    -- optionally enable 24-bit colour
    vim.opt.termguicolors = true

    -- Setup nvim-tree
    require('nvim-tree').setup {
      sort = {
        sorter = 'case_sensitive',
      },
      view = {
        width = 40,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }

    -- Keybindings
    vim.keymap.set('n', '<leader>tt', '<Cmd>NvimTreeFindFileToggle<CR>', { desc = '[T]oggle Nvim[T]ree' })
  end,
}
