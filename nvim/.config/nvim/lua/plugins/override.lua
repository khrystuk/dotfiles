local border = { underline = true, sp = { attribute = "fg", highlight = "WinSeparator" } }

return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
          never_show = {
            ".DS_Store",
            ".git",
          },
        },
      },
    },
  },
  {
    "folke/tokyonight.nvim",
    opts = {
      style = "night",
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_float = "#000000"
        colors.bg_sidebar = "#000000"
      end,
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      sections = {
        lualine_y = {
          { "progress" },
        },
        lualine_z = {
          { "location" },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        show_buffer_close_icons = false,
        always_show_bufferline = true,
        indicator = {
          style = "underline",
        },
        separator_style = "slant",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Neo-tree",
            text_align = "center",
            separator = true,
          },
        },
      },
      highlights = {
        fill = border,
        background = border,
        tab = border,
        tab_separator = border,
        tab_close = border,
        close_button = border,
        close_button_visible = border,
        buffer_visible = border,
        numbers = border,
        numbers_visible = border,
        diagnostic = border,
        diagnostic_visible = border,
        hint = border,
        hint_visible = border,
        hint_diagnostic = border,
        hint_diagnostic_visible = border,
        info = border,
        info_visible = border,
        info_diagnostic = border,
        info_diagnostic_visible = border,
        warning = border,
        warning_visible = border,
        warning_diagnostic = border,
        warning_diagnostic_visible = border,
        error = border,
        error_visible = border,
        error_diagnostic = border,
        error_diagnostic_visible = border,
        modified = border,
        modified_visible = border,
        duplicate = border,
        duplicate_visible = border,
        separator = border,
        separator_visible = border,
        indicator_visible = border,
        pick = border,
        pick_visible = border,
        trunc_marker = border,
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = function()
      require("lspconfig.ui.windows").default_options.border = "rounded"
    end,
  },
  {
    "saghen/blink.cmp",
    opts = {
      completion = {
        menu = {
          border = "rounded",
        },
        documentation = {
          window = {
            border = "rounded",
          },
        },
        ghost_text = { enabled = false },
      },
      signature = { window = { border = "rounded" } },
      keymap = {
        ["<CR>"] = {},
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      opts.presets.lsp_doc_border = true
    end,
  },
  {
    "folke/which-key.nvim",
    opts = {
      win = {
        border = "rounded",
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      win = {
        border = "rounded",
      },
      dashboard = {
        sections = {
          { section = "header" },
          { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
          { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
          { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
          { section = "startup" },
        },
      },
      terminal = {
        win = {
          wo = {
            winbar = "",
          },
        },
      },
    },
  },
  {
    "christoomey/vim-tmux-navigator",
    cmd = {
      "TmuxNavigateLeft",
      "TmuxNavigateDown",
      "TmuxNavigateUp",
      "TmuxNavigateRight",
      "TmuxNavigatePrevious",
      "TmuxNavigatorProcessList",
    },
    keys = {
      { "<c-h>", "<cmd>TmuxNavigateLeft<cr>" },
      { "<c-j>", "<cmd>TmuxNavigateDown<cr>" },
      { "<c-k>", "<cmd>TmuxNavigateUp<cr>" },
      { "<c-l>", "<cmd>TmuxNavigateRight<cr>" },
      { "<c-\\>", "<cmd>TmuxNavigatePrevious<cr>" },
    },
  },
}
