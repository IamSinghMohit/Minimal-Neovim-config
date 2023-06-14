-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = true,
  },
  indent = { enable = false },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  -- ensure these language parsers are installed
  ensure_installed = {
    'css','javascript', 'scss', 'tsx', 'typescript'
  },
  -- auto install above language parsers
  auto_install = false,
})
