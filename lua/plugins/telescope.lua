local action_state = require 'telescope.actions.state'
require('telescope').setup({
  defaults = {
    mappings = {
      i = {
        ['<C-u>'] = false,
        ['<C-d>'] = false,
      },
    },
  },
   pickers = {
    buffers = {
      mappings = {
        i = {
          ["<C-x>"] = function(prompt_bufnr)
            local current_picker = action_state.get_current_picker(prompt_bufnr)
            current_picker:delete_selection(function(selection)
              local bufnr = selection.bufnr
              -- get associated window(s)
              local winids = vim.fn.win_findbuf(bufnr)
              -- fill winids with new empty buffers
              for _, winid in ipairs(winids) do
                -- check documentation of nvim_create_buf carefully about whether you want a scratch buffer or something else
                local new_buf = vim.api.nvim_create_buf(false, true)
                vim.api.nvim_win_set_buf(winid, new_buf)
              end
              -- remove buffer at last
              vim.api.nvim_buf_delete(bufnr, {force = true})
            end)
          end
        }
      }
    },
  }
})

require('telescope').load_extension('fzf')

vim.keymap.set('n', '<leader><space>', function() require('telescope.builtin').buffers { sort_lastused = true } end)
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files { previewer = false } end)
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').current_buffer_fuzzy_find() end)
vim.keymap.set('n', '<leader>fw', function() require('telescope.builtin').live_grep() end)
