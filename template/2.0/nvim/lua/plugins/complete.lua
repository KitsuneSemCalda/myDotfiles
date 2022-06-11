#!/usr/bin/env lua

if extension == "md" then
  require("plugins.tabnine")
else

  require("plugins.lsp")
end
