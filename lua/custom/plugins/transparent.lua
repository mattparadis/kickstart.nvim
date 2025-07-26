
return{
  "xiyaowong/nvim-transparent",
  config = function()
    require("transparent").setup({
      enable = true,
      extra_groups = {
        "Normal", "NormalNC", "EndOfBuffer",
        "NvimTreeNormal", "TelescopeNormal",
      },
      exclude = {}, -- puoi escludere certi plugin
    })
  end
}
