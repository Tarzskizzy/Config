return{
    'numToStr/Comment.nvim',
    opts = {
        -- add any options here
    },
    lazy = false,
  init = function()
    require('Comment').setup()
  end
}

