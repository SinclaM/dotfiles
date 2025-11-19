vim.g.mapleader = " "

vim.keymap.set("i", "kj", "<Esc>")

vim.keymap.set({ "n", "v" }, "<leader>v", "<C-q>")
vim.keymap.set("n", "<space>e", "<cmd>lua vim.diagnostic.open_float()<CR>")

vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.rnu = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "H", "gT")
vim.keymap.set("n", "L", "gt")


pcall(function()
    vim.keymap.del({ "t", "v", "i" }, "<C-b>")
end)

vim.keymap.set("t", "<C-b>[", [[<C-\><C-n>]])

vim.keymap.set({ "n", "v" }, "<C-b>c",   ":tabnew | execute 'terminal' | startinsert<CR>")
vim.keymap.set({ "n", "v" }, "<C-b>%",   ":vert new | execute 'terminal' | startinsert<CR>")
vim.keymap.set({ "n", "v" }, [[<C-b>"]], ":new | execute 'terminal' | startinsert<CR>")
vim.keymap.set({ "i", "t" }, "<C-b>c",   [[<C-\><C-n>:tabnew | execute 'terminal' | startinsert<CR>]])
vim.keymap.set({ "i", "t" }, "<C-b>%",   [[<C-\><C-n>:vert new | execute 'terminal' | startinsert<CR>]])
vim.keymap.set({ "i", "t" }, [[<C-b>"]], [[<C-\><C-n>:new | execute 'terminal' | startinsert<CR>]])

-- emulate 'termkey'
vim.keymap.set( "t", "<C-w>", [[<C-\><C-o><C-w>]])

vim.keymap.set({ "n", "v" }, "<C-b>0", "1gt")
vim.keymap.set({ "n", "v" }, "<C-b>1", "2gt")
vim.keymap.set({ "n", "v" }, "<C-b>2", "3gt")
vim.keymap.set({ "n", "v" }, "<C-b>3", "4gt")
vim.keymap.set({ "n", "v" }, "<C-b>4", "5gt")
vim.keymap.set({ "n", "v" }, "<C-b>5", "6gt")
vim.keymap.set({ "n", "v" }, "<C-b>6", "7gt")
vim.keymap.set({ "n", "v" }, "<C-b>7", "8gt")
vim.keymap.set({ "n", "v" }, "<C-b>8", "9gt")
vim.keymap.set({ "n", "v" }, "<C-b>9", "10gt")

vim.keymap.set("t", "<C-b>0", [[<C-\><C-n>1gt]])
vim.keymap.set("t", "<C-b>1", [[<C-\><C-n>2gt]])
vim.keymap.set("t", "<C-b>2", [[<C-\><C-n>3gt]])
vim.keymap.set("t", "<C-b>3", [[<C-\><C-n>4gt]])
vim.keymap.set("t", "<C-b>4", [[<C-\><C-n>5gt]])
vim.keymap.set("t", "<C-b>5", [[<C-\><C-n>6gt]])
vim.keymap.set("t", "<C-b>6", [[<C-\><C-n>7gt]])
vim.keymap.set("t", "<C-b>7", [[<C-\><C-n>8gt]])
vim.keymap.set("t", "<C-b>8", [[<C-\><C-n>9gt]])
vim.keymap.set("t", "<C-b>9", [[<C-\><C-n>10gt]])

vim.keymap.set({ "i", "n", "v" }, "<C-b>h", "<C-w>h")
vim.keymap.set({ "i", "n", "v" }, "<C-b>j", "<C-w>j")
vim.keymap.set({ "i", "n", "v" }, "<C-b>k", "<C-w>k")
vim.keymap.set({ "i", "n", "v" }, "<C-b>l", "<C-w>l")
vim.keymap.set("t",               "<C-b>h", [[<C-\><C-n><C-w>h]])
vim.keymap.set("t",               "<C-b>j", [[<C-\><C-n><C-w>j]])
vim.keymap.set("t",               "<C-b>k", [[<C-\><C-n><C-w>k]])
vim.keymap.set("t",               "<C-b>l", [[<C-\><C-n><C-w>l]])
