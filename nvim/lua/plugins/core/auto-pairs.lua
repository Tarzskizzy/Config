return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  config = true,
  init = function()
    local M = {}
    function M.setup()
      local npairs = require "nvim-autopairs"
      npairs.setup {
        check_ts = true,
      }
      npairs.add_rules(require "nvim-autopairs.rules.endwise-lua")
    end

    return M
  end
  -- use opts = {} for passing setup options
  -- this is equalent to setup({}) function
}
