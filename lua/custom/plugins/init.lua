-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
-- Using lazy.nvim

return {
  
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          }
        }
      }
      require("telescope").load_extension("ui-select")
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

  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap", "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    keys = {
      { "<leader>pe", "<cmd>VenvSelect<cr>" , desc= "Seleziona python venv"},
    },
    ---@type venv-selector.Config
    opts = {
      auto_refresh = true,
      auto_activate_last = true,
    },
  },--[[ {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    config = function()
      require("copilot").setup({
        suggestion = {
          enabled = true,
          auto_trigger = false, -- ❌ no trigger automatico
          debounce = 75,
          keymap = {
            accept = "<Tab>",
            accept_line = "<S-Tab>",    -- ✅ Shift + Tab accetta la riga
            accept_word = false,
            next = "<C-]>",
            prev = "<C-[>",
            dismiss = "<C-e>",
          },
        },
        panel = {
          enabled = false, -- pannello disabilitato per semplicità
        },
        filetypes = {
          markdown = true,
          help = true,
          gitcommit = true,
          ["*"] = true,
        },
      })

      -- ✅ Mappiamo <leader>cp per abilitare Copilot manualmente
      vim.keymap.set("n", "<leader>cp", "<cmd>Copilot enable<CR>", { desc = "Abilita Copilot" })
    end,
  },  ]]
}
