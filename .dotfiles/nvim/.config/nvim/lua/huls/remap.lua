vim.g.mapleader = " "
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- moves visual lined
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- -||-

vim.keymap.set("n", "<C-d>", "<C-d>zz") --half page down zz to recenter screen
vim.keymap.set("n", "<C-u>", "<C-u>zz") --half page up zz to recenter screen

vim.keymap.set("n", "n", "nzzzv") -- next search result but recenter
vim.keymap.set("n", "N", "Nzzzv") -- prev search result but recenter
vim.keymap.set("x", "<leader>p", [["_dP]]) --paste without overwriting yank register

vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]]) --yank to system clip
vim.keymap.set("n", "<leader>Y", [["+Y]]) -- Yank whole line into system

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]]) -- delete without yanking. Default puts in latest yank regisetr

vim.keymap.set("i", "<C-c>", "<Esc>") -- ctrl -c == esc

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") --tmux sessionizer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format) --format buffer with lsp

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz") --next quickfix recenter
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz") --next quickfix recenter
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz") --next location list item and recenter
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz") --next location list item and recenter

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]) --search and replcae
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true }) --chmod +x

vim.keymap.set("n", "<leader><leader>", function() --shoutout
    vim.cmd("so")
end)
