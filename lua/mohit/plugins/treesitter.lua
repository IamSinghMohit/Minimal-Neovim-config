-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

-- configure treesitter
treesitter.setup({
  -- enable syntax highlighting
  highlight = {
    enable = false,
  },
  indent = { enable = false },
  -- enable autotagging (w/ nvim-ts-autotag plugin)
  autotag = { enable = true },
  context_commentstring = {
    enable = true
  },
  -- ensure these language parsers are installed
  ensure_installed = {},
  -- auto install above language parsers
  auto_install = false,
})
