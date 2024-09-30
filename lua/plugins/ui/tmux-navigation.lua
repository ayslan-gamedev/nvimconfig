return {
  'alexghergh/nvim-tmux-navigation',
  config = function()
    local nvim_tmux_nav = require('nvim-tmux-navigation')

    nvim_tmux_nav.setup {
      disable_when_zoomed = true -- defaults to false
    }

    vim.keymap.set('n', "<c-Left>", nvim_tmux_nav.NvimTmuxNavigateLeft)
    vim.keymap.set('n', "<c-Down>", nvim_tmux_nav.NvimTmuxNavigateDown)
    vim.keymap.set('n', "<c-Up>", nvim_tmux_nav.NvimTmuxNavigateUp)
    vim.keymap.set('n', "<c-Right>", nvim_tmux_nav.NvimTmuxNavigateRight)
  end
}
