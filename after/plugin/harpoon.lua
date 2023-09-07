local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")
vim.keymap.set("n","<leader>m", mark.add_file)
vim.keymap.set("n","<C-e>", ui.toggle_quick_menu)
--
vim.keymap.set("n", "dz>",function() ui.nav_file(1) end)
vim.keymap.set("n", "dx>",function() ui.nav_file(2) end)
vim.keymap.set("n", "dc",function() ui.nav_file(3) end)
vim.keymap.set("n", "dv",function() ui.nav_file(4) end)
vim.keymap.set("n", "db",function() ui.nav_file(5) end)
vim.keymap.set("n", "dn",function() ui.nav_file(6) end)

vim.keymap.set("n", "da",function() ui.nav_next() end)
vim.keymap.set("n", "ds",function() ui.nav_prev() end)
--
--
-- vim.keymap.set("n","tt", term.toggle_quick_menu)
-- vim.keymap.set("n", "t1",function() term.gotoTerminal(1)  end)
-- vim.keymap.set("n", "t2",function() term.gotoTerminal(2)  end)
-- vim.keymap.set("n", "t3",function() term.gotoTerminal(3)  end)
-- vim.keymap.set("n", "t4",function() term.gotoTerminal(4)  end)
--
-- vim.keymap.set("n", "tn",function() term.nav_next() end)
-- vim.keymap.set("n", "tp",function() term.nav_prev() end)
--  
