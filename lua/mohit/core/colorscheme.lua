local status_ok, onedarkpro = pcall(require, "onedarkpro")
if not status_ok then
  return
end


onedarkpro.setup({
  styles = {
    types = "NONE",
    methods = "NONE",
    numbers = "NONE",
    strings = "NONE",
    comments = "italic",
    keywords = "italic",
    constants = "NONE",
    functions = "NONE",
    operators = "NONE",
    variables = "italic",
    parameters = "italic",
    conditionals = "italic",
    virtual_text = "NONE",
  },
})
-- Set the colorscheme directly
vim.g.onedark_transparent_background = false
vim.g.onedark_terminal_italics = 2
vim.cmd("colorscheme onedark")
