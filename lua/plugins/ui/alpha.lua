return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
      " ", " ", " ", " ", " ", " ",
      "██████╗ ██████╗ ███████╗███████╗███████╗    ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
      "██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝    ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
      "██████╔╝██████╔╝█████╗  ███████╗███████╗    ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
      "██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║    ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      "██║     ██║  ██║███████╗███████║███████║    ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
      "╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝    ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝", " ",
      "                                                       made by Press Start (Ayslan V. Fontes)",
      " ", " ", " ", " ", " ", " ", " ", " ",
    }

    -- Set menu
    dashboard.section.buttons.val = {
      dashboard.button("e", " Create a new file", "<cmd>ene<CR>"),
      dashboard.button("SPC ee", " Toggle file explorer", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("SPC ff", "󰮗 Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC fs", "󰈞 Find Word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC wr", "󰙰 Restore Session From Current Directory", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "󰈆 Exit neovim", "<cmd>qa<CR>")
    }

    -- Send config to alpha
    alpha.setup(dashboard.opts)

    -- Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
