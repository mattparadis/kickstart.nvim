return {
  "akai54/2077.nvim",
  lazy = false, -- caricalo subito
  priority = 1000, -- assicura che venga caricato prima di altri plugin
  config = function()
    vim.cmd.colorscheme("2077")
  end,
}

