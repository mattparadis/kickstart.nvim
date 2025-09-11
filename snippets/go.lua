local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  s("iferr", {
    t("if err != nil {"),
    t({"", "\t"}), i(0), -- i(0) è dove il cursore si posiziona alla fine
    t({"", "}"})
  }),
}
