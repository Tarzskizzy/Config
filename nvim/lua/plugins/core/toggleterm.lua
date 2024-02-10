return {
  {'akinsho/toggleterm.nvim', version = "*", opts = {
    size = 9,
    open_mapping = [[<c-t>]],
    close_on_exit = false,
    shell = vim.o.shell,
    --[[ things you want to change go here]]
    -- comand skecth ToggleTerm size=40 dir=~/Desktop direction=horizontal name=desktop
    shading_factor = 1,
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',
    }},
}
