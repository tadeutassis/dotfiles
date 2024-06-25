local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local extras = require("luasnip.extras")
local rep = extras.rep
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets("lua", {
  s("hello", {
    t("print('hello, world!')"),
  }),
})

ls.add_snippets("tex", {
  s(
    "\\begin",
    fmt(
      [[
    \begin{{{}}}
      {}
    \end{{{}}}
    ]],
      { i(1, "env"), i(0), rep(1) }
    )
  ),
  s(
    "\\equation",
    fmt(
      [[
    \begin{{equation}}
      {}
    \end{{equation}}
    ]],
      { i(0, "a^2+b^2=c^2") }
    )
  ),
  s(
    "\\eqsplit",
    fmt(
      [[
    \begin{{equation}}\begin{{split}}
      {}
    \end{{split}}\end{{equation}}
    ]],
      { i(0, "a^2+b^2=c^2") }
    )
  ),
  s("\\bigl(", { t("\\bigl( "), i(0), t(" \\bigr)") }),
  s("\\Bigl(", { t("\\Bigl( "), i(0), t(" \\Bigr)") }),
  s("\\biggl(", { t("\\biggl( "), i(0), t(" \\biggr)") }),
  s("\\Biggl(", { t("\\Biggl( "), i(0), t(" \\Biggr)") }),
  s("\\bigl[", { t("\\bigl[ "), i(0), t(" \\bigr]") }),
  s("\\Bigl[", { t("\\Bigl[ "), i(0), t(" \\Bigr]") }),
  s("\\biggl[", { t("\\biggl[ "), i(0), t(" \\biggr]") }),
  s("\\Biggl[", { t("\\Biggl[ "), i(0), t(" \\Biggr]") }),
  s("\\bigl\\{", { t("\\bigl\\{ "), i(0), t(" \\bigr\\}") }),
  s("\\Bigl\\{", { t("\\Bigl\\{ "), i(0), t(" \\Bigr\\}") }),
  s("\\biggl\\{", { t("\\biggl\\{ "), i(0), t(" \\biggr\\}") }),
  s("\\Biggl\\{", { t("\\Biggl\\{ "), i(0), t(" \\Biggr\\}") }),
})
