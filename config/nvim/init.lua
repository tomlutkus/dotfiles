-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("config") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- Language support (supports all the languages you asked for)
  { "sheerun/vim-polyglot" },

  -- File navigation
  { "preservim/nerdtree", keys = { "<C-n>" }, config = function()
      vim.api.nvim_set_keymap("n", "<C-n>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })
    end },

  -- Markdown extras
  { "plasticboy/vim-markdown" },
})

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")

