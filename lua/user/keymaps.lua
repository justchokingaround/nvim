-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Clear highlights
keymap("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)

-- Close buffers
keymap("n", "<leader>c", "<cmd>Bdelete!<CR>", opts)

-- Better paste
keymap("v", "p", '"_dP', opts)

-- Insert --
-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Plugins --

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files find_command=rg,--ignore,--hidden,--files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)
keymap("n", "<leader>fc", ":Telescope colorscheme<CR>", opts)

-- Git
keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Comment
keymap("n", "<leader>/", "<cmd>lua require('Comment.api').toggle_current_linewise()<CR>", opts)
keymap("x", "<leader>/", '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')

-- Running code
keymap('n', '<leader>r', ':RunCode<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rf', ':RunFile<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rft', ':RunFile tab<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rp', ':RunProject<CR>', { noremap = true, silent = false })
keymap('n', '<leader>rc', ':RunClose<CR>', { noremap = true, silent = false })
keymap('n', '<leader>crf', ':CRFiletype<CR>', { noremap = true, silent = false })
keymap('n', '<leader>crp', ':CRProjects<CR>', { noremap = true, silent = false })

-- Cinnamon
vim.keymap.set({ 'n', 'x' }, 'k', "<Cmd>lua Scroll('k', 0, 1)<CR>")
vim.keymap.set({ 'n', 'x' }, 'j', "<Cmd>lua Scroll('j', 0, 1)<CR>")
vim.keymap.set({ 'n', 'x' }, 'h', "<Cmd>lua Scroll('h', 0, 1)<CR>")
vim.keymap.set({ 'n', 'x' }, 'l', "<Cmd>lua Scroll('l', 0, 1)<CR>")
keymap({ 'n', 'x' }, '<ScrollWheelUp>', "<Cmd>lua Scroll('<ScrollWheelUp>')<CR>")
keymap({ 'n', 'x' }, '<ScrollWheelDown>', "<Cmd>lua Scroll('<ScrollWheelDown>')<CR>")
keymap('n', 'n', "<Cmd>lua Scroll('n', 1)<CR>")
keymap('n', 'N', "<Cmd>lua Scroll('N', 1)<CR>")
keymap('n', '*', "<Cmd>lua Scroll('*', 1)<CR>")
keymap('n', '#', "<Cmd>lua Scroll('#', 1)<CR>")
keymap('n', 'g*', "<Cmd>lua Scroll('g*', 1)<CR>")
keymap('n', 'g#', "<Cmd>lua Scroll('g#', 1)<CR>")
keymap({ 'n', 'x' }, '0', "<Cmd>lua Scroll('0')<CR>")
keymap({ 'n', 'x' }, '^', "<Cmd>lua Scroll('^')<CR>")
keymap({ 'n', 'x' }, '$', "<Cmd>lua Scroll('$', 0, 1)<CR>")

-- For Neovide clipboard
vim.g.neovide_input_use_logo = 1
keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true })
keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true })
keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true })
keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true })

-- Custom
keymap("n", "<leader>ps", ":PackerSync<CR>", opts)
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("n", "<leader>H", ":!shellcheck %<cr>", opts)
keymap("n", "<leader>a", ":Alpha<CR>", opts)

-- Toggle Transparency
keymap("n", "<leader>T",
  function()
    if vim.g.neovide == nil then
      vim.cmd("TransparentToggle")
    else
      local current_value = vim.api.nvim_get_var("neovide_transparency")
      if current_value == 1 then
        vim.cmd("let g:neovide_transparency=0.7")
      else
        vim.cmd("let g:neovide_transparency=1")
      end
    end
  end,
  opts)
