-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- Using lazy.nvim

return {
  {
    'ribru17/bamboo.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('bamboo').setup {
        -- Main options --
        -- NOTE: to use the light theme, set `vim.o.background = 'light'`
        style = 'multiplex', -- Choose between 'vulgaris' (regular), 'multiplex' (greener), and 'light'
        toggle_style_key = nil, -- Keybind to toggle theme style. Leave it nil to disable it, or set it to a string, e.g. "<leader>ts"
        toggle_style_list = { 'vulgaris', 'multiplex', 'light' }, -- List of styles to toggle between
        transparent = false, -- Show/hide background
        dim_inactive = false, -- Dim inactive windows/buffers
        term_colors = true, -- Change terminal color as per the selected theme style
        ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
        cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

        -- Change code style ---
        -- Options are anything that can be passed to the `vim.api.nvim_set_hl` table
        -- You can also configure styles with a string, e.g. keywords = 'italic,bold'
        code_style = {
          comments = { italic = true },
          conditionals = { italic = true },
          keywords = {},
          functions = {},
          namespaces = { italic = true },
          parameters = { italic = true },
          strings = {},
          variables = {},
        },

        -- Lualine options --
        lualine = {
          transparent = false, -- lualine center bar transparency
        },

        -- Custom Highlights --
        colors = {}, -- Override default colors
        highlights = {}, -- Override highlight groups

        -- Plugins Config --
        diagnostics = {
          darker = false, -- darker colors for diagnostic
          undercurl = true, -- use undercurl instead of underline for diagnostics
          background = true, -- use background color for virtual text
        },
      }
      require('bamboo').load()
    end,
  },

  {
    'nvim-telescope/telescope-ui-select.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
    config = function()
      require('telescope').setup {
        extensions = {
          ['ui-select'] = require('telescope.themes').get_dropdown {
            -- Puoi mettere altre opzioni qui, se vuoi
          },
        },
      }

      -- Carica l'estensione dopo la configurazione
      require('telescope').load_extension 'ui-select'
    end,
  },
  {
    'nvimdev/dashboard-nvim',

    event = 'VimEnter',
    config = function()
      require('dashboard').setup {
        -- config
        config = {
          header = {
            [[                                                                       ]],
            [[                                                                     ]],
            [[       ████ ██████           █████      ██                     ]],
            [[      ███████████             █████                             ]],
            [[      █████████ ███████████████████ ███   ███████████   ]],
            [[     █████████  ███    █████████████ █████ ██████████████   ]],
            [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
            [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
            [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
            [[                                                                       ]],
          },
          center = {

            {
              icon = '',
              icon_hl = 'group',
              desc = 'description',
              desc_hl = 'group',
              key = 'shortcut key in dashboard buffer not keymap !!',
              key_hl = 'group',
              key_format = ' [%s]', -- `%s` will be substituted with value of `key`
              action = '',
            },
          },
          footer = {},
          vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
        },
      }
    end,
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
  },
}
