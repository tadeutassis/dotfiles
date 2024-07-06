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
      { i(0) }
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
      { i(0) }
    )
  ),
  ----------------------------------------------------------
  s("\\eqref", { t("Eq.~\\eqref{"), i(0), t("}") }),
  s("\\fref", { t("Fig.~\\ref{"), i(0), t("}") }),
  s("\\sref", { t("Sec.~\\ref{"), i(0), t("}") }),
  s("\\rref", { t("Ref.~\\cite{"), i(0), t("}") }),
  ----------------------------------------------------------
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
