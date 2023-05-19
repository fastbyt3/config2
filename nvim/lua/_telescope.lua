local map = require('keybindings').map

map("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
map("n", "<leader>fw", ":<c-u>Telescope live_grep search_dirs=.<CR>")

require('telescope').load_extension('coc')
