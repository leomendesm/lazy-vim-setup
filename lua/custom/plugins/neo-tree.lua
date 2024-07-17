return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    local neo = require 'neo-tree'
    neo.setup {
      window = {
        width = 30,
      },
      close_if_last_window = true,
      popup_border_style = 'rounded',
      enable_git_status = true,
    }
    vim.keymap.set('n', '<c-t>', ':Neotree filesystem reveal toggle left<CR>', {})
  end,
}
