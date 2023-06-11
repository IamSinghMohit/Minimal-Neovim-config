-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
  return
end

-- enable comment
comment.setup(
  {
   toggler = {
        ---Line-comment toggle keymap
        line = '<leader>/',
        ---Block-comment toggle keymap
        block = 'gbc',
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
        ---Line-comment keymap
        line = '<leader>/',
        ---Block-comment keymap
        block = 'gb',
    },
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
    ---Function to call after (un)comment
    post_hook = nil,
  }
)
