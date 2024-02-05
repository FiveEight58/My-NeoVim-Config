local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

require("lazy").setup({
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    { "hrsh7th/nvim-cmp"},
    { "hrsh7th/cmp-nvim-lsp"},
    { "williamboman/mason.nvim", "williamboman/mason.lspconfig.nvim", "neovim/nvim-lspconfig"},
    { "nvim-treesitter/nvim-treesitter", dependencies = {'nvim-treesitter/nvim-treesitter-textobjects'},build = ':TSUpdate',},
    { "rebelot/kanagawa.nvim"},
    { "nvim-telescope/telescope.nvim",dependencies = { "nvim-lua/plenary.nvim"},
}})

vim.cmd.colorscheme "kanagawa"

