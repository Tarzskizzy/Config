    -- OBS: CLANG É UM COMPILADOR FUNDAMENTAL POR 90% DOS PROGRAMAS AQUI
    -- require 'nvim-treesitter.install'.compilers = { "/path/to/new/gcc" }
    -- OBS1: CASO NÃO CONSIGA ABRIR SESSÃO DE HELP, INSTALE vim, vimdocs
local config = require("nvim-treesitter.configs")
config.setup({
--ensure_installed = {"lua","c","cpp","python"},
highlight = { enable = true },
indent = { enable = true },})
