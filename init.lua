vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins ={
{
	"bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 }
	
}
local opts = {}

require("lazy").setup(plugins, opts)

-- CUSTOM COLORSCHEME
vim.cmd("colorscheme moonfly")


-- CUSTOM KEYBINDINGS
vim.api.nvim_set_keymap('n', '<C-f>', ":Lexplore<CR> :vertical resize 30<CR>", {noremap=true})
