local setup = require("utils").plugins

require("luasnip.loaders.from_snipmate").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load()

setup("luasnip", {})
