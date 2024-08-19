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
      },
    },
  },
  {
    "williamboman/mason.nvim",
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
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")

      opts.mapping["<CR>"] = nil

      table.insert(opts.sources, { name = "vim-dadbod-completion" })

      cmp.setup({
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
      })
    end,
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
        border = "single",
      },
    },
  },
}
