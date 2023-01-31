local map = require("utils").map

map("", "<A-f>", ":NvimTreeToggle<CR>", { silent = true, noremap = false })
map("", "<A-r>", ":NvimTreeRefresh<CR>", { silent = true, noremap = false })
map("", "<A-c>", ":NvimTreeCollapse<CR>", { silent = true, noremap = false })

-- Copy Pasta (xclip required)
map("v", "cc", '"+y')
map("v", "cv", '"+p')
map("n", "cv", '"+p')

map("", "<S-q>", "q")

-- Buffer
map("n", "q", ":bdelete<CR>")
map("n", "<S-h>", ":bprev<CR>")
map("n", "<S-l>", ":bnext<CR>")

map("n", "<F8>", ":TagbarToggle<CR>")

-- Save
map("n", "s", ":write<CR>")

-- Better Indentation Key
map("v", "<Tab>", ">", { noremap = false, silent = true })
map("v", "<S-Tab>", "<", { noremap = false, silent = true })

-- Move Window
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-j>", "<C-w>j")

-- Comment Line
map("n", "<A-/>", ":CommentToggle<CR>")
map("v", "<A-/>", ":CommentToggle<CR>")

-- Telescope
map("n", "ff", ":Telescope find_files<cr>")
map("n", "fg", ":Telescope live_grep<cr>")
map("n", "ft", ":Telescope help_tags<cr>")
map("n", "fm", ":Telescope media_files<cr>")
map("n", "fa", ":Telescope lsp_code_action<cr>")

-- Fold
map("n", "<A-h>", ":foldclose<cr>")
map("n", "<A-l>", ":foldopen<cr>")

-- Terminal
map("n", "t", ":ToggleTerm direction=float<cr>")
map("t", "<Esc>", " <C-\\><C-n> :quit<cr>")
