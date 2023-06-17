-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
  return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters


null_ls.setup({
  sources = {
    formatting.prettier  -- js/ts formatter
  },

})
