local set = vim.keymap.set

-- Basic movement keybinds, these make navigating splits easy for me
set("n", "<c-j>", "<c-w><c-j>")
set("n", "<c-k>", "<c-w><c-k>")
set("n", "<c-l>", "<c-w><c-l>")
set("n", "<c-h>", "<c-w><c-h>")

set("n", "<leader>x", "<cmd>.lua<CR>", { desc = "Execute the current line" })
set("n", "<leader><leader>x", "<cmd>source %<CR>", { desc = "Execute the current file" })

-- Source the init.lua file
set("n", "<Space>", "<NOP>")

-- Maintain visual mode for shifting < and >
set("v", "<", "<gv", {})
set("v", ">", ">gv", {})

-- Move visual block
set("v", "J", ":m '>+1<CR>gv=gv")
set("v", "K", ":m '<-2<CR>gv=gv")

-- Splitting
set("n", "<leader>h", ":<C-u>split<CR>")
set("n", "<leader>v", ":<C-u>vsplit<CR>")
--
-- There are builtin keymaps for this now, but I like that it shows
-- the float when I navigate to the error - so I override them.
set("n", "]d", vim.diagnostic.goto_next)
set("n", "[d", vim.diagnostic.goto_prev)
--set("n", "<c-w><c-d>", "<cmd> lua vim.diagnostic.open_float() <CR>")

-- Buffers
set("n", "<leader>]", ":bn<CR>") -- next buffer
set("n", "<leader>[", ":bp<CR>") -- previous buffer
--set("n", "<leader>w", ":bn<CR>") -- next buffer
--set("n", "<leader>q", ":bp<CR>") -- previous buffer
--set("n", "<leader>c", ":bp|bd #<CR>") -- close buffer

set("n", "<leader>.", ":noh <CR>") -- :noh

set("n", "<C-d>", "<C-d>zz")
set("n", "<C-u>", "<C-u>zz")
set("n", "n", "nzzzv")
set("n", "N", "Nzzzv")

-- greatest remap ever
set("x", "<leader>p", [["_dP]])

set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
