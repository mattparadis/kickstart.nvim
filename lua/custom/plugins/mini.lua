return {

  { -- Collection of various small independent plugins/modules
    'echasnovski/mini.nvim',
    config = function()
      -- Better Around/Inside textobjects
      --
      -- Examples:
      --  - va)  - [V]isually select [A]round [)]paren
      --  - yinq - [Y]ank [I]nside [N]ext [Q]uote
      --  - ci'  - [C]hange [I]nside [']quote
      require('mini.ai').setup { n_lines = 500 }

      -- Add/delete/replace surroundings (brackets, quotes, etc.)
      --
      -- - saiw) - [S]urround [A]dd [I]nner [W]ord [)]Paren
      -- - sd'   - [S]urround [D]elete [']quotes
      -- - sr)'  - [S]urround [R]eplace [)] [']
      require('mini.surround').setup()

      local statusline = require 'mini.statusline'

      statusline.setup { use_icons = vim.g.have_nerd_font }
      ---@diagnostic disable-next-line: duplicate-set-field
      statusline.section_location = function()
        return '%2l:%-2v'
      end
    end,
  },
  { 'echasnovski/mini.icons', version = false,
    config = function()
      require('mini.icons').setup {}
    end
  },
{ 'echasnovski/mini.move', version = false,
    config = function ()
      require('mini.move').setup {
        }
    end},
{ 'echasnovski/mini.files', version = false,
  config = function ()
      require('mini.files').setup {
      	windows = {
		preview = true,
                width_preview = 50
	}
      }
  end},
}
