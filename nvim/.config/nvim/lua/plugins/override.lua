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
        colors.border = colors.border_highlight
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
            highlight = "Normal",
            text_align = "center",
            separator = true,
          },
        },
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
    },
  },
}
