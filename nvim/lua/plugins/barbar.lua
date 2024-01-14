return {
  {'romgrk/barbar.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    lazy = false,
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      gitsigns = {
      added = {enabled = true, icon = '+'},
      changed = {enabled = true, icon = '~'},
      deleted = {enabled = true, icon = '-'},
    },
     sidebar_filetypes = {
        ['neo-tree'] = {event = 'BufWipeout'},
      -- Use the default values: {event = 'BufWinLeave', text = nil}
    },
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
      tabpages = true,
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
